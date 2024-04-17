set moduleName top_module
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {top_module}
set C_modelType { int 32 }
set C_modelArgList {
	{ inst1 int 32 regular  }
	{ inst2 int 32 regular  }
	{ current_pc int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "inst1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inst2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "current_pc", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inst1 sc_in sc_lv 32 signal 0 } 
	{ inst2 sc_in sc_lv 32 signal 1 } 
	{ current_pc sc_in sc_lv 32 signal 2 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inst1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inst1", "role": "default" }} , 
 	{ "name": "inst2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inst2", "role": "default" }} , 
 	{ "name": "current_pc", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "current_pc", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "6", "7", "8"],
		"CDFG" : "top_module",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inst1", "Type" : "None", "Direction" : "I"},
			{"Name" : "inst2", "Type" : "None", "Direction" : "I"},
			{"Name" : "current_pc", "Type" : "None", "Direction" : "I"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "top_module_ap_int_32_ap_int_32_ap_uint_32_rf_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_31", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hart_ret4_hart_fu_20063", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "hart",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inst_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "r1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "r2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pc_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hart_ret4_hart_fu_20063.grp_OP_AL_32I_fu_187", "Parent" : "1",
		"CDFG" : "OP_AL_32I",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "opcode_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "func7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "func3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "op1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hart_ret_hart_fu_20073", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "hart",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inst_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "r1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "r2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pc_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.hart_ret_hart_fu_20073.grp_OP_AL_32I_fu_187", "Parent" : "3",
		"CDFG" : "OP_AL_32I",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "opcode_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "func7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "func3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "op1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "op2_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_65_5_32_1_1_U10", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_65_5_32_1_1_U11", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_65_5_32_1_1_U12", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_65_5_32_1_1_U13", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	top_module {
		inst1 {Type I LastRead 0 FirstWrite -1}
		inst2 {Type I LastRead 0 FirstWrite -1}
		current_pc {Type I LastRead 0 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_1 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_2 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_3 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_4 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_5 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_6 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_7 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_8 {Type IO LastRead -1 FirstWrite -1}
		top_module_ap_int_32_ap_int_32_ap_uint_32_rf_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ10top_module6ap_intILi32EES0_7ap_uintILi32EEE2rf_31 {Type IO LastRead -1 FirstWrite -1}}
	hart {
		inst_val {Type I LastRead 0 FirstWrite -1}
		r1_val {Type I LastRead 0 FirstWrite -1}
		r2_val {Type I LastRead 0 FirstWrite -1}
		pc_val {Type I LastRead 0 FirstWrite -1}}
	OP_AL_32I {
		opcode_val {Type I LastRead 0 FirstWrite -1}
		func7_val {Type I LastRead 0 FirstWrite -1}
		func3_val {Type I LastRead 0 FirstWrite -1}
		op1_val {Type I LastRead 0 FirstWrite -1}
		op2_val {Type I LastRead 0 FirstWrite -1}}
	hart {
		inst_val {Type I LastRead 0 FirstWrite -1}
		r1_val {Type I LastRead 0 FirstWrite -1}
		r2_val {Type I LastRead 0 FirstWrite -1}
		pc_val {Type I LastRead 0 FirstWrite -1}}
	OP_AL_32I {
		opcode_val {Type I LastRead 0 FirstWrite -1}
		func7_val {Type I LastRead 0 FirstWrite -1}
		func3_val {Type I LastRead 0 FirstWrite -1}
		op1_val {Type I LastRead 0 FirstWrite -1}
		op2_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inst1 { ap_none {  { inst1 in_data 0 32 } } }
	inst2 { ap_none {  { inst2 in_data 0 32 } } }
	current_pc { ap_none {  { current_pc in_data 0 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
