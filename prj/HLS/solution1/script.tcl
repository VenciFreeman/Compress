############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project new
set_top DCT_8x8_2D
add_files imageExpand.cpp
add_files header.hpp
add_files definition.cpp
add_files Convert.cpp
add_files -tb testbench.cpp
open_solution "solution1"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 18 -name default
#source "./new/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
