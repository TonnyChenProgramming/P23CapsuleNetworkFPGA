from capsulenet import CapsNet, load_mnist

(x_train, y_train), (x_test, y_test) = load_mnist()

model, eval_model, manipulate_model = CapsNet(
    input_shape=x_test.shape[1:],
    n_class=10,
    routings=3
)

eval_model.load_weights("./models/trained_model.h5")

print("=== eval_model layers ===")
for i, layer in enumerate(eval_model.layers):
    try:
        print(i, layer.name, layer.output_shape)
    except Exception:
        print(i, layer.name)