set moduleName singleGUV
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {singleGUV}
set C_modelType { float 32 }
set C_modelArgList {
	{ subimg float 32 regular {array 64 { 1 3 } 1 1 }  }
	{ u int 4 regular  }
	{ v int 4 regular  }
	{ inv int 32 regular  }
	{ cosMat float 32 regular {array 64 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "subimg", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "v", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "inv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cosMat", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ subimg_address0 sc_out sc_lv 6 signal 0 } 
	{ subimg_ce0 sc_out sc_logic 1 signal 0 } 
	{ subimg_q0 sc_in sc_lv 32 signal 0 } 
	{ u sc_in sc_lv 4 signal 1 } 
	{ v sc_in sc_lv 4 signal 2 } 
	{ inv sc_in sc_lv 32 signal 3 } 
	{ cosMat_address0 sc_out sc_lv 6 signal 4 } 
	{ cosMat_ce0 sc_out sc_logic 1 signal 4 } 
	{ cosMat_q0 sc_in sc_lv 32 signal 4 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "subimg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "subimg", "role": "address0" }} , 
 	{ "name": "subimg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "subimg", "role": "ce0" }} , 
 	{ "name": "subimg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "subimg", "role": "q0" }} , 
 	{ "name": "u", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u", "role": "default" }} , 
 	{ "name": "v", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v", "role": "default" }} , 
 	{ "name": "inv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inv", "role": "default" }} , 
 	{ "name": "cosMat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cosMat", "role": "address0" }} , 
 	{ "name": "cosMat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cosMat", "role": "ce0" }} , 
 	{ "name": "cosMat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cosMat", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "singleGUV",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "subimg", "Type" : "Memory", "Direction" : "I"},
		{"Name" : "u", "Type" : "None", "Direction" : "I"},
		{"Name" : "v", "Type" : "None", "Direction" : "I"},
		{"Name" : "inv", "Type" : "None", "Direction" : "I"},
		{"Name" : "cosMat", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DCT_8x8_2D_fptrunbkb_U0", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DCT_8x8_2D_fpext_cud_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DCT_8x8_2D_dadd_6dEe_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DCT_8x8_2D_dmul_6eOg_U3", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1437", "Max" : "1437"}
	, {"Name" : "Interval", "Min" : "1437", "Max" : "1437"}
]}

set Spec2ImplPortList { 
	subimg { ap_memory {  { subimg_address0 mem_address 1 6 }  { subimg_ce0 mem_ce 1 1 }  { subimg_q0 mem_dout 0 32 } } }
	u { ap_none {  { u in_data 0 4 } } }
	v { ap_none {  { v in_data 0 4 } } }
	inv { ap_none {  { inv in_data 0 32 } } }
	cosMat { ap_memory {  { cosMat_address0 mem_address 1 6 }  { cosMat_ce0 mem_ce 1 1 }  { cosMat_q0 mem_dout 0 32 } } }
}
