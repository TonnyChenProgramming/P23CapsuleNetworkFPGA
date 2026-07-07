

#---------------------------
# Constant blocks
#---------------------------

#---------------------------
# Platform Parameters for xilinx_zcu102_base_dfx_202210_1
#---------------------------
set axi_interconnect_0 [get_bd_cell /axi_interconnect_0]
    
set_property -dict [ list \
  CONFIG.NUM_SI 2 \
  CONFIG.NUM_MI 1 \
  CONFIG.S01_HAS_REGSLICE 1 \
  CONFIG.S01_HAS_DATA_FIFO 2 \
  ] $axi_interconnect_0
set axi_interconnect_1 [get_bd_cell /axi_interconnect_1]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $axi_interconnect_1
set interconnect_axifull_1_user_slr1 [get_bd_cell /interconnect_axifull_1_user_slr1]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 1 \
  ] $interconnect_axifull_1_user_slr1
set interconnect_axifull_2_user_slr1 [get_bd_cell /interconnect_axifull_2_user_slr1]
    
set_property -dict [ list \
  CONFIG.NUM_SI 3 \
  CONFIG.NUM_MI 1 \
  CONFIG.S01_HAS_REGSLICE 1 \
  CONFIG.S01_HAS_DATA_FIFO 2 \
  CONFIG.S02_HAS_REGSLICE 1 \
  CONFIG.S02_HAS_DATA_FIFO 2 \
  ] $interconnect_axifull_2_user_slr1
set interconnect_axilite_user_slr1 [get_bd_cell /interconnect_axilite_user_slr1]
    
set_property -dict [ list \
  CONFIG.NUM_SI 1 \
  CONFIG.NUM_MI 2 \
  CONFIG.M01_HAS_REGSLICE 1 \
  ] $interconnect_axilite_user_slr1

#---------------------------
# Instantiating digitcaps_accel_1
#---------------------------
set digitcaps_accel_1 [create_bd_cell -type ip -vlnv xilinx.com:hls:digitcaps_accel:1.0 digitcaps_accel_1]
  

#---------------------------
# Connectivity Phase 1
#---------------------------
connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /interconnect_axilite_user_slr1/M01_AXI] \
  [get_bd_intf_pins -auto_enable /digitcaps_accel_1/s_axi_control] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /digitcaps_accel_1/m_axi_gmem0] \
  [get_bd_intf_pins -auto_enable /interconnect_axifull_2_user_slr1/S01_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /digitcaps_accel_1/m_axi_gmem1] \
  [get_bd_intf_pins -auto_enable /interconnect_axifull_2_user_slr1/S02_AXI] \

connect_bd_intf_net \
  [get_bd_intf_pins -auto_enable /digitcaps_accel_1/m_axi_gmem2] \
  [get_bd_intf_pins -auto_enable /axi_interconnect_0/S01_AXI] \


#---------------------------
# Clock/Reset Annotation
#---------------------------

set_property HDL_ATTRIBUTE.ap_clk.FREQ_HZ {150000000} $digitcaps_accel_1
set_property HDL_ATTRIBUTE.ap_clk.FREQ_HZ_TOLERANCE {7500000} $digitcaps_accel_1



#---------------------------
# Invoke clock automation
#---------------------------

set_param bd.clkrstautomationv2 1
::bd::clkrst::apply_clk_rst_automation



#---------------------------
# Connectivity Phase 2
#---------------------------

#---------------------------
# Create Stream Map file
#---------------------------
set stream_subsystems [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}]
if {[string length $stream_subsystems] > 0} {    
  set xmlFile $vpl_output_dir/qdma_stream_map.xml
  set fp [open ${xmlFile} w]
  puts $fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"
  puts $fp "<xd:streamMap xmlns:xd=\"http://www.xilinx.com/xd\">"
  foreach streamSS [get_bd_cells * -hierarchical -quiet -filter {VLNV =~ "*:*:sdx_stream_subsystem:*"}] {
    set ssInstance [string trimleft $streamSS /]
    set ssRegion [get_property CONFIG.SLR_ASSIGNMENTS $streamSS]
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"S??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
    foreach ssIntf [get_bd_intf_pins $streamSS/* -quiet -filter {NAME=~"M??_AXIS"}] {
      set pinName [get_property NAME $ssIntf]
      set routeId [sdx_stream_subsystem::get_routeid $ssIntf]
      set flowId [sdx_stream_subsystem::get_flowid $ssIntf]
      puts $fp "  <xd:streamRoute xd:instanceRef=\"$ssInstance\" xd:portRef=\"$pinName\" xd:route=\"$routeId\" xd:flow=\"$flowId\" xd:region=\"$ssRegion\">"
      foreach connection [find_bd_objs -relation connected_to $ssIntf -thru_hier] {
        set connectedRegion [get_property CONFIG.SLR_ASSIGNMENTS [bd::utils::get_parent $connection]]
        set connectedPort [bd::utils::get_short_name $connection]
        set connectedInst [string trimleft [bd::utils::get_parent $connection] /]
        puts $fp "    <xd:connection xd:instanceRef=\"$connectedInst\" xd:portRef=\"$connectedPort\" xd:region=\"$connectedRegion\"/>"
      }
      puts $fp "  </xd:streamRoute>"
    }
  }
  puts $fp "</xd:streamMap>"
  close $fp
}


