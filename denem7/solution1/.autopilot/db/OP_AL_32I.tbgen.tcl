set moduleName OP_AL_32I
set isTopModule 0
set isCombinational 1
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {OP_AL_32I}
set C_modelType { int 32 }
set C_modelArgList {
	{ opcode_val int 6 regular  }
	{ func7_val int 7 regular  }
	{ func3_val int 3 regular  }
	{ op1_val int 32 regular  }
	{ op2_val int 32 regular  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "opcode_val", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "func7_val", "interface" : "wire", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "func3_val", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "op1_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "op2_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 7
set portList { 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ opcode_val sc_in sc_lv 6 signal 0 } 
	{ func7_val sc_in sc_lv 7 signal 1 } 
	{ func3_val sc_in sc_lv 3 signal 2 } 
	{ op1_val sc_in sc_lv 32 signal 3 } 
	{ op2_val sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "opcode_val", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "opcode_val", "role": "default" }} , 
 	{ "name": "func7_val", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "func7_val", "role": "default" }} , 
 	{ "name": "func3_val", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "func3_val", "role": "default" }} , 
 	{ "name": "op1_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "op1_val", "role": "default" }} , 
 	{ "name": "op2_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "op2_val", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "op2_val", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	OP_AL_32I {
		opcode_val {Type I LastRead 0 FirstWrite -1}
		func7_val {Type I LastRead 0 FirstWrite -1}
		func3_val {Type I LastRead 0 FirstWrite -1}
		op1_val {Type I LastRead 0 FirstWrite -1}
		op2_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	opcode_val { ap_none {  { opcode_val in_data 0 6 } } }
	func7_val { ap_none {  { func7_val in_data 0 7 } } }
	func3_val { ap_none {  { func3_val in_data 0 3 } } }
	op1_val { ap_none {  { op1_val in_data 0 32 } } }
	op2_val { ap_none {  { op2_val in_data 0 32 } } }
}
