
log_wave [get_objects -filter {type == in_port || type == out_port || type == inout_port || type == port} /apatb_hart_top/AESL_inst_hart/*]
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_hart_top/AESL_inst_hart/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_hart_top/AESL_inst_hart/pc -into $return_group -radix hex
add_wave /apatb_hart_top/AESL_inst_hart/inst -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_hart_top/AESL_inst_hart/ap_start -into $blocksiggroup
add_wave /apatb_hart_top/AESL_inst_hart/ap_done -into $blocksiggroup
add_wave /apatb_hart_top/AESL_inst_hart/ap_idle -into $blocksiggroup
add_wave /apatb_hart_top/AESL_inst_hart/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_hart_top/AESL_inst_hart/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_hart_top/AESL_inst_hart/ap_clk -into $clockgroup
save_wave_config hart.wcfg
run all

