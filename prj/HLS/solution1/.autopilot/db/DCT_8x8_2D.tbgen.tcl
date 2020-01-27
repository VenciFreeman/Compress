set C_TypeInfoList {{ 
"DCT_8x8_2D" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"G": [[], {"array": [ {"array": [ {"scalar": "float"}, [8]]}, [8]]}] }, {"subimg": [[], {"array": [ {"array": [ {"scalar": "float"}, [8]]}, [8]]}] }, {"shift": [[], {"scalar": "int"}] }, {"inv": [[], {"scalar": "int"}] }, {"cosMat": [[], {"array": [ {"array": [ {"scalar": "float"}, [8]]}, [8]]}] }],[],""]
}}
set moduleName DCT_8x8_2D
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {DCT_8x8_2D}
set C_modelType { void 0 }
set C_modelArgList {
	{ G float 32 regular {array 64 { 0 3 } 0 1 }  }
	{ subimg float 32 regular {array 64 { 2 3 } 1 1 }  }
	{ shift int 32 regular  }
	{ inv int 32 regular  }
	{ cosMat float 32 regular {array 64 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "G", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "G","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "subimg", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "subimg","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}]} , 
 	{ "Name" : "shift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "shift","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "inv", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "inv","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "cosMat", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cosMat","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 7,"step" : 1},{"low" : 0,"up" : 7,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ G_address0 sc_out sc_lv 6 signal 0 } 
	{ G_ce0 sc_out sc_logic 1 signal 0 } 
	{ G_we0 sc_out sc_logic 1 signal 0 } 
	{ G_d0 sc_out sc_lv 32 signal 0 } 
	{ subimg_address0 sc_out sc_lv 6 signal 1 } 
	{ subimg_ce0 sc_out sc_logic 1 signal 1 } 
	{ subimg_we0 sc_out sc_logic 1 signal 1 } 
	{ subimg_d0 sc_out sc_lv 32 signal 1 } 
	{ subimg_q0 sc_in sc_lv 32 signal 1 } 
	{ shift sc_in sc_lv 32 signal 2 } 
	{ inv sc_in sc_lv 32 signal 3 } 
	{ cosMat_address0 sc_out sc_lv 6 signal 4 } 
	{ cosMat_ce0 sc_out sc_logic 1 signal 4 } 
	{ cosMat_q0 sc_in sc_lv 32 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "G_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "G", "role": "address0" }} , 
 	{ "name": "G_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G", "role": "ce0" }} , 
 	{ "name": "G_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "G", "role": "we0" }} , 
 	{ "name": "G_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "G", "role": "d0" }} , 
 	{ "name": "subimg_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "subimg", "role": "address0" }} , 
 	{ "name": "subimg_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "subimg", "role": "ce0" }} , 
 	{ "name": "subimg_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "subimg", "role": "we0" }} , 
 	{ "name": "subimg_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "subimg", "role": "d0" }} , 
 	{ "name": "subimg_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "subimg", "role": "q0" }} , 
 	{ "name": "shift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "shift", "role": "default" }} , 
 	{ "name": "inv", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "inv", "role": "default" }} , 
 	{ "name": "cosMat_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "cosMat", "role": "address0" }} , 
 	{ "name": "cosMat_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cosMat", "role": "ce0" }} , 
 	{ "name": "cosMat_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cosMat", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6"],
		"CDFG" : "DCT_8x8_2D",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "G", "Type" : "Memory", "Direction" : "O"},
		{"Name" : "subimg", "Type" : "Memory", "Direction" : "IO",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_singleGUV_fu_121", "Port" : "subimg"}]},
		{"Name" : "shift", "Type" : "None", "Direction" : "I"},
		{"Name" : "inv", "Type" : "None", "Direction" : "I"},
		{"Name" : "cosMat", "Type" : "Memory", "Direction" : "I",
			"SubConnect" : [
			{"ID" : "1", "SubInstance" : "grp_singleGUV_fu_121", "Port" : "cosMat"}]}],
		"WaitState" : [
		{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_singleGUV_fu_121"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_singleGUV_fu_121", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_singleGUV_fu_121.DCT_8x8_2D_fptrunbkb_U0", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_singleGUV_fu_121.DCT_8x8_2D_fpext_cud_U1", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_singleGUV_fu_121.DCT_8x8_2D_dadd_6dEe_U2", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_singleGUV_fu_121.DCT_8x8_2D_dmul_6eOg_U3", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.DCT_8x8_2D_fadd_3fYi_U9", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "92114", "Max" : "92450"}
	, {"Name" : "Interval", "Min" : "92115", "Max" : "92451"}
]}

set Spec2ImplPortList { 
	G { ap_memory {  { G_address0 mem_address 1 6 }  { G_ce0 mem_ce 1 1 }  { G_we0 mem_we 1 1 }  { G_d0 mem_din 1 32 } } }
	subimg { ap_memory {  { subimg_address0 mem_address 1 6 }  { subimg_ce0 mem_ce 1 1 }  { subimg_we0 mem_we 1 1 }  { subimg_d0 mem_din 1 32 }  { subimg_q0 mem_dout 0 32 } } }
	shift { ap_none {  { shift in_data 0 32 } } }
	inv { ap_none {  { inv in_data 0 32 } } }
	cosMat { ap_memory {  { cosMat_address0 mem_address 1 6 }  { cosMat_ce0 mem_ce 1 1 }  { cosMat_q0 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

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
