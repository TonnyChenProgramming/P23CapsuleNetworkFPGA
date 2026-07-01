/*
 * Copyright 2019 Xilinx Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <assert.h>
#include <dirent.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>

#include <algorithm>
#include <cstdint>

#include <cassert>
#include <cmath>
#include <cstdio>
#include <filesystem>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <queue>
#include <string>
#include <vector>

#include "DigitCaps.h"
#include "common.h"
#include "experimental/xrt_xclbin.h"
#include "vart/runner.hpp"
#include "vart/runner_ext.hpp"

// C++ Header
#include "accel_wrapper.hpp"

using namespace std;
using namespace cv;
using namespace std::chrono;

GraphInfo shapes;

int correct_classification = 0;
int total_images = 0;
const string wordsPath = "./";

// ---------------- PRIVATE FUNCTION DECLARATIONS ----------------
void runCapsuleNetwork(vart::RunnerExt *runner, uint32_t num_images, const xir::Subgraph *subgraph, int digitcaps_sw_imp, const string image_path, string label_path, const string weight_path, int verbose);
static void load_mnist_images(string const &image_path, uint32_t num_images, float* images);
static void load_mnist_labels(string const &label_path, uint32_t num_images, vector<uint8_t> *labels);
static void get_data(string const &file_name, uint32_t start_index, vector<float> *output);
static void convert_to_magnitude(float *vector, float *output);
static uint16_t get_max_prediction(float *prediction);
int32_t bytes_to_int(const unsigned char *bytes);
// ---------------------------------------------------------------

/**
 * @brief Load MNIST images
 *
 * @param image_path - const string to image ubyte file
 * @param num_images - num images to extract
 * @param images - output image vector<vector> (2d)
 *
 * @return none
 */
static void load_mnist_images(string const &image_path, uint32_t num_images, float* images)
{
	ifstream img_file(image_path, std::ios::binary);

	// Read headers
	unsigned char header[16];
	img_file.read(reinterpret_cast<char *>(header), 16);

	// Read number of images, rows, and columns
	int32_t total_images = bytes_to_int(header + 4);
	int32_t num_rows = bytes_to_int(header + 8);
	int32_t num_cols = bytes_to_int(header + 12);

	if (num_images > total_images)
	{
		throw runtime_error("Too large of a batch " + image_path);
	}

	// images->resize(num_images);

	for (int i = 0; i < num_images; ++i)
	{
		vector<uint8_t> temp_image(num_rows * num_cols);
		img_file.read(reinterpret_cast<char *>(temp_image.data()), num_rows * num_cols);

		// (*images)[i].resize(num_rows * num_cols);
		for (int j = 0; j < num_rows * num_cols; ++j)
		{
			images[i * num_cols * num_rows + j] = static_cast<float>(temp_image[j]) / 255.0f;
		}
	}

	img_file.close();
}

/**
 * @brief Load MNIST labels
 *
 * @param label_path - const string to ubyte label file
 * @param num_images - num labels to extract
 * @param labels - output vector
 *
 * @return none
 */
static void load_mnist_labels(string const &label_path, uint32_t num_images, vector<uint8_t> *labels)
{
	ifstream label_file(label_path, std::ios::binary);

	// // Read headers
	unsigned char header[8];
	label_file.read(reinterpret_cast<char *>(header), 8);

	int32_t num_labels = bytes_to_int(header + 4);

	if (num_images > num_labels)
	{
		throw runtime_error("Too large of a batch " + label_path);
	}

	labels->resize(num_images);

	for (int i = 0; i < num_images; ++i)
	{
		uint8_t label_entry;
		label_file.read(reinterpret_cast<char *>(&label_entry), 1);
		(*labels)[i] = static_cast<uint8_t>(label_entry);
	}

	label_file.close();
}

/**
 * @brief Get general txt file data for weights
 *
 * @param file_name - path to the file
 * @param start_index - at what point in the array to start placing data
 * @param output - output weight vector
 *
 * @return none
 */
static void get_data(string const &file_name, uint32_t start_index, vector<float> *output)
{
	ifstream file(file_name);
	float entry;

	output->resize(DIGIT_CAPS_INPUT_CAPSULES * DIGIT_CAPS_INPUT_DIM_CAPSULE * DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE);

	uint32_t i = 0;
	while (file >> entry)
	{
		(*output)[start_index + i++] = entry;
	}
	file.close();
}

/**
 * @brief Get prediction magnitudes
 *
 * @param vector - pointer to prediction data (10x16 vector)
 * @param output - prediction vector magnitudes (0-9)
 *
 * @return none
 */
static void convert_to_magnitude(float *vector, float *output)
{
	float sum = 0.0;

	for (uint8_t i = 0; i < DIGIT_CAPS_NUM_DIGITS; ++i)
	{
		sum = 0.0;
		for (uint8_t j = 0; j < DIGIT_CAPS_DIM_CAPSULE; ++j)
		{
			float value = vector[i * DIGIT_CAPS_DIM_CAPSULE + j];
			sum += value * value;
		}
		output[i] = sqrt(sum);
	}
}

/**
 * @brief Returns the max prediction vector
 *
 * @param prediction - the output of digitcaps
 *
 * @return the max prediction
 */
static uint16_t get_max_prediction(float *prediction)
{
	uint16_t digit;
	float currentLargest = 0.0;
	for (uint16_t i = 0; i < DIGIT_CAPS_NUM_DIGITS; ++i)
	{
		if (prediction[i] > currentLargest)
		{
			digit = i;
			currentLargest = prediction[i];
		}
	}
	return digit;
}

/**
 * @brief Convert bytes into integer form
 *
 * @param bytes - an array of separate bytes
 *
 * @return none
 */
int32_t bytes_to_int(const unsigned char *bytes)
{
	return (int32_t)(((uint32_t)bytes[0] << 24) | ((uint32_t)bytes[1] << 16) | ((uint32_t)bytes[2] << 8) | ((uint32_t)bytes[3]));
}

static std::string g_dump_root = "dump_capsnet";

static void setup_dump_root(bool digitcaps_sw_imp)
{
    g_dump_root = digitcaps_sw_imp ? "dump_capsnet_sw" : "dump_capsnet_hw";

    std::filesystem::remove_all(g_dump_root);
    std::filesystem::create_directories(g_dump_root);

    std::cout << "[DUMP] dump root = " << g_dump_root << std::endl;
}

static std::string make_image_dump_dir(unsigned int image_index)
{
    std::string dir = g_dump_root + "/img" + std::to_string(image_index);
    std::filesystem::create_directories(dir);
    return dir;
}

static std::string make_dump_name(unsigned int image_index,
                                  const std::string& tensor_name)
{
    return make_image_dump_dir(image_index) + "/" + tensor_name + ".txt";
}

static void dump_float_array_to_txt(const std::string& filename,
                                    const float* data,
                                    int size)
{
    if (data == nullptr) {
        std::cerr << "[DUMP][ERROR] null pointer for "
                  << filename << std::endl;
        return;
    }

    if (size <= 0) {
        std::cerr << "[DUMP][ERROR] invalid size "
                  << size << " for "
                  << filename << std::endl;
        return;
    }

    std::ofstream f(filename);

    if (!f.is_open()) {
        std::cerr << "[DUMP][ERROR] failed to open "
                  << filename << std::endl;
        return;
    }

    f << std::setprecision(10);

    for (int i = 0; i < size; ++i) {
        f << data[i] << "\n";
    }

    f.close();

    std::cout << "[DUMP] wrote " << size
              << " floats to " << filename << std::endl;
}

static void squash_primary_capsules(float* data, int num_capsules, int dim_capsule)
{
    const float epsilon = 1e-7f;

    for (int cap = 0; cap < num_capsules; ++cap) {
        float* capsule = &data[cap * dim_capsule];

        float norm_sq = 0.0f;
        for (int d = 0; d < dim_capsule; ++d) {
            float v = capsule[d];
            norm_sq += v * v;
        }

        float norm = std::sqrt(norm_sq + epsilon);

        // CapsNet squash:
        // v = (||s||^2 / (1 + ||s||^2)) * (s / ||s||)
        float scale = norm_sq / (1.0f + norm_sq) / norm;

        for (int d = 0; d < dim_capsule; ++d) {
            capsule[d] *= scale;
        }
    }
}



/**
 * @brief Run DPU Task for CapsuleNetwork
 *
 * @param runner - pointer to partial capsule network task
 * @param num_images - number of images to test
 * @param subgraph - dpu model ctx
 * @param digitcaps_sw_imp - if 0, run the hardware accelerator
 * @param image_path - path to the MNIST images
 * @param label_path - path to the MNIST labels
 * @param verbose - output predictions
 *
 * @return none
 */
void runCapsuleNetwork(vart::RunnerExt *runner, uint32_t num_images, const xir::Subgraph *subgraph, int digitcaps_sw_imp, const string image_path, string label_path, const string weight_path, int verbose)
{
	vector<vector<float>> images;
	vector<uint8_t> labels;
	vector<float> weights;

	long imread_time = 0, dpu_latency = 0, post_time = 0;

	 /* get in/out tensors and dims*/
	auto outputTensors = runner->get_output_tensors();
	auto inputTensors = runner->get_input_tensors();
	auto out_dims = outputTensors[0]->get_shape();
	auto in_dims = inputTensors[0]->get_shape();


	setup_dump_root(digitcaps_sw_imp); // setup the dump root for later parameters

	/*get shape info*/
	int outSize = shapes.outTensorList[0].size;
	int inSize = shapes.inTensorList[0].size;
	int inHeight = shapes.inTensorList[0].height;
	int inWidth = shapes.inTensorList[0].width;

	int batchSize = in_dims[0];


	std::vector<std::unique_ptr<vart::TensorBuffer>> inputs, outputs;

	vector<Mat> imageList;
	float* imageInputs = new float[inSize * num_images];

	float* primcaps_output = new float[batchSize * outSize];
	std::vector<vart::TensorBuffer*> inputsPtr, outputsPtr;
	std::vector<std::shared_ptr<xir::Tensor>> batchTensors;

	auto imread_start = std::chrono::system_clock::now();

    std::cout << "before load the image" << std::endl;

	// Load MNIST images and labels
	load_mnist_images(image_path, num_images, imageInputs);
	if (label_path != "")
		load_mnist_labels(label_path, num_images, &labels);
	for (unsigned int image_index = 0; image_index < num_images; ++image_index)
	{
		dump_float_array_to_txt(
			make_dump_name(image_index, "00_input_image_after_mnist_load"),
			&imageInputs[image_index * inSize],
			inSize
		);
	}

	auto imread_end = std::chrono::system_clock::now();
	auto imread_duration = std::chrono::duration_cast<std::chrono::microseconds>(imread_end - imread_start);
	imread_time += imread_duration.count();

	get_data(weight_path, 0, &weights);

	DigitcapsAcceleratorType *digitcaps_accelerator = nullptr;
	//if (!digitcaps_sw_imp)
		//digitcaps_accelerator = init_digitcaps_accelerator(weights.data());

	int count = num_images;

	auto start = std::chrono::system_clock::now();
    std::cout << "before run with batch" << std::endl;
	/*run with batch*/
	for (unsigned int n = 0; n < num_images; n += batchSize)
	{
		inputs.clear();
		outputs.clear();
		batchTensors.clear();

		unsigned int runSize = (num_images < (n + batchSize)) ? (num_images - n) : batchSize;

		total_images += runSize;
		auto dpu_start = std::chrono::system_clock::now();

		/* in/out tensor refactory for batch inout/output */
		batchTensors.push_back(std::shared_ptr<xir::Tensor>(
			xir::Tensor::create(inputTensors[0]->get_name(),
			in_dims,
			xir::DataType{xir::DataType::FLOAT, 32u})));

		inputs.push_back(std::make_unique<CpuFlatTensorBuffer>( //////set all image to zero
			&imageInputs[n * inSize],
			batchTensors.back().get()));

		batchTensors.push_back(std::shared_ptr<xir::Tensor>(
			xir::Tensor::create(outputTensors[0]->get_name(),
			out_dims,
			xir::DataType{xir::DataType::FLOAT, 32u})));

		outputs.push_back(std::make_unique<CpuFlatTensorBuffer>(
			primcaps_output,
			batchTensors.back().get()));

		/*tensor buffer input/output */
		inputsPtr.clear();
		outputsPtr.clear();
		inputsPtr.push_back(inputs[0].get());
		outputsPtr.push_back(outputs[0].get());

		std::fill(
			primcaps_output,
			primcaps_output + batchSize * outSize,
			0.0f
		);


		// Run DPU
        std::cout << "before execute_async" << std::endl;

		auto job_id = runner->execute_async(inputsPtr, outputsPtr);
		runner->wait(job_id.first, -1);


		for (unsigned int i = 0; i < runSize; ++i)
		{
			const unsigned int image_index = n + i;

			dump_float_array_to_txt(
				make_dump_name(image_index, "01_primarycap_dpu_output_before_squash"),
				&primcaps_output[i * outSize],
				outSize
			);
		}

        std::cout << "after execute_async" << std::endl;
		
		std::cout << "before CPU primarycap_squash" << std::endl;


		squash_primary_capsules(primcaps_output, 1152, 8);

		for (unsigned int i = 0; i < runSize; ++i)
		{
			const unsigned int image_index = n + i;

			dump_float_array_to_txt(
				make_dump_name(image_index, "02_primarycap_after_cpu_squash_digitcaps_input"),
				&primcaps_output[i * outSize],
				outSize
			);
		}


		std::cout << "after CPU primarycap_squash" << std::endl;

		auto dpu_end = std::chrono::system_clock::now();
		auto dpu_duration = std::chrono::duration_cast<std::chrono::microseconds>(dpu_end - dpu_start);
		dpu_latency += dpu_duration.count();

		auto post_start = std::chrono::system_clock::now();

		float prediction_data[DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE] = {0.0};
		float prediction_magnitude[DIGIT_CAPS_NUM_DIGITS] = {0.0};
        
        std::cout << "enter dynamic routing" << std::endl;

		for (unsigned int i = 0; i < runSize; i++)
		{
			const unsigned int image_index = n + i;

			std::cout << "\n========== DigitCaps inference for image "
					<< image_index << " ==========" << std::endl;

			// Current PrimaryCaps output slice for this image in the current batch.
			float *current_primcaps = &primcaps_output[i * outSize];

			// Clear output buffers before each image.
			std::fill(
				prediction_data,
				prediction_data + DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE,
				0.0f
			);

			std::fill(
				prediction_magnitude,
				prediction_magnitude + DIGIT_CAPS_NUM_DIGITS,
				0.0f
			);

			dump_float_array_to_txt(
				make_dump_name(image_index, "04_prediction_before_digitcaps"),
				prediction_data,
				DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE
			);
			dump_float_array_to_txt(
				make_dump_name(image_index, "03_digitcaps_input_current_primcaps"),
				current_primcaps,
				outSize
			);

			if (digitcaps_sw_imp)
			{
				std::cout << "[CapsNet] Running software DigitCaps dynamic routing"
						<< std::endl;

				dynamic_routing(
					current_primcaps,
					weights.data(),
					prediction_data
				);
			}
			else
			{
				std::cout << "[CapsNet] Running hardware DigitCaps accelerator"
						<< std::endl;

				if (!digitcaps_sw_imp)
					digitcaps_accelerator = init_digitcaps_accelerator(weights.data());
				
				if (digitcaps_accelerator == nullptr)
				{
					std::cerr << "[CapsNet][ERROR] digitcaps_accelerator is null"
							<< std::endl;
					return;
				}

				int status = run_digitcaps_accelerator(
					digitcaps_accelerator,
					current_primcaps
				);
				if (status != 0)
				{
					std::cerr << "[CapsNet][ERROR] run_digitcaps_accelerator failed with status "
							<< status << std::endl;
					return;
				}


				float *out_prediction =
					static_cast<float *>(digitcaps_accelerator->prediction_m);

				if (out_prediction == nullptr)
				{
					std::cerr << "[CapsNet][ERROR] digitcaps_accelerator->prediction_m is null"
							<< std::endl;
					return;
				}

				std::memcpy(
					prediction_data,
					out_prediction,
					DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE * sizeof(float)
				);

				dump_float_array_to_txt(
					make_dump_name(image_index, "05_prediction_after_hw_digitcaps"),
					prediction_data,
					DIGIT_CAPS_NUM_DIGITS * DIGIT_CAPS_DIM_CAPSULE
				);
			}

			convert_to_magnitude(
				prediction_data,
				prediction_magnitude
			);


			dump_float_array_to_txt(
				make_dump_name(image_index, "06_digitcaps_lengths_after_magnitude"),
				prediction_magnitude,
				DIGIT_CAPS_NUM_DIGITS
			);

			uint16_t final_answer = get_max_prediction(prediction_magnitude);

			uint16_t true_label = 999;
			bool has_label = !labels.empty() && image_index < labels.size();

			if (has_label)
			{
				true_label = static_cast<uint16_t>(labels[image_index]);
			}

			std::cout << "Image " << image_index
					<< " Final Answer -> " << final_answer
					<< ": " << prediction_magnitude[final_answer];

			if (has_label)
			{
				std::cout << " | True Label = " << true_label;

				if (final_answer == true_label)
				{
					correct_classification++;
					std::cout << " | CORRECT";
				}
				else
				{
					std::cout << " | WRONG";
				}
			}

			std::cout << std::endl;

			std::cout << "========== End DigitCaps inference for image "
					<< image_index << " ==========\n" << std::endl;
		}

		auto post_end = std::chrono::system_clock::now();
		auto post_duration = std::chrono::duration_cast<std::chrono::microseconds>(post_end - post_start);
		post_time += post_duration.count();

		imageList.clear();
	}

	auto end = std::chrono::system_clock::now();
	auto value_t1 = std::chrono::duration_cast<std::chrono::microseconds>(end - start);
	long e2e_time = value_t1.count();

	if (!verbose)
	{
		if (digitcaps_sw_imp)
			cout << "Profiling result with software digit caps: " << endl;
		else
			cout << "Profiling result with hardware digit caps " << endl;
		std::cout << "   Performance: " << 1000000.0 / ((float)((e2e_time) / count)) << " fps\n";
		std::cout << "   Image Read Latency: " << (float)(imread_time / count) / 1000 << " ms\n";
		std::cout << "   DPU Latency: " << (float)(dpu_latency / count) / 1000 << " ms\n";
		std::cout << "   DigitCaps Latency: " << (float)(post_time / count) / 1000 << " ms\n";
	}

	if (labels.size() != 0)
	{
		if (num_images == 0)
		{
			cout << "There are no images to calculate accuracy" << endl;
		}
		else
		{
			cout << correct_classification << " out of " << num_images << " images have been classified correctly" << endl;
			float accuracy = float(correct_classification) / float(num_images) * 100;
			cout << "The accuracy of the network is " << accuracy << " %" << endl;
		}
	}
}

int main(int argc, char *argv[])
{
    std::cout << "main successfully start" << std::endl;
	if (argc < 7 || argc > 8)
	{
		cout << "Usage: ./CapsuleNetwork.exe <model> <image directory> <sw/hw dynamic routing (1 for sw imp / 0 for hw imp)> <weight_path> <verbose> <num images> <label_file <path> (OPTIONAL)>" << endl;
		return -1;
	}

	auto graph = xir::Graph::deserialize(argv[1]);
	string image_path = argv[2];
	int digitcaps_sw_imp = atoi(argv[3]);
	string weight_path = argv[4];
	auto attrs = xir::Attrs::create();
	int verbose = atoi(argv[5]);
	uint32_t num_images = atoi(argv[6]);

	string label_path = "";
	if (argv[7])
		label_path = argv[7];

	auto subgraph = get_dpu_subgraph(graph.get());

	LOG(INFO) << "create running for subgraph: " << subgraph[0]->get_name();

	// create DPU task
	std::unique_ptr<vart::RunnerExt> runner = vart::RunnerExt::create_runner(subgraph[0], attrs.get());

	/*get in/out tensor*/
	auto inputTensors = runner->get_input_tensors();
	auto outputTensors = runner->get_output_tensors();

	/*get in/out tensor shape*/
	int inputCnt = inputTensors.size();
	int outputCnt = outputTensors.size();
	TensorShape inshapes[inputCnt];
	TensorShape outshapes[outputCnt];
	shapes.inTensorList = inshapes;
	shapes.outTensorList = outshapes;
	getTensorShape(runner.get(), &shapes, inputCnt, outputCnt);

	runCapsuleNetwork(runner.get(), num_images, subgraph[0], digitcaps_sw_imp, image_path, label_path, weight_path, verbose);
	return 0;
}