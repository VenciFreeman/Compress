vlib work
vlib msim

vlib msim/processing_system7_bfm_v2_0_5
vlib msim/xil_defaultlib

vmap processing_system7_bfm_v2_0_5 msim/processing_system7_bfm_v2_0_5
vmap xil_defaultlib msim/xil_defaultlib

vlog -work processing_system7_bfm_v2_0_5 -64 "+incdir+../../../../x.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../x.srcs/sources_1/bd/system/ipshared/7dd0/hdl" \
"../../../../x.srcs/sources_1/bd/system/ipshared/7dd0/hdl/processing_system7_bfm_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../x.srcs/sources_1/bd/system/ipshared/7dd0/hdl" "+incdir+../../../../x.srcs/sources_1/bd/system/ipshared/7dd0/hdl" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/hdl/system.vhd" \


vlog -work xil_defaultlib "glbl.v"

