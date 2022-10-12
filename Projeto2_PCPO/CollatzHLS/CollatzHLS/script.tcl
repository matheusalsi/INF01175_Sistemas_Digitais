############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project CollatzHLS
set_top Collatz
add_files CollatzHLS/CollatzC/Collatz.h
add_files CollatzHLS/CollatzC/Collatz.cpp
add_files -tb CollatzHLS/CollatzC/Collatztb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "CollatzHLS"
set_part {xc7vx485t-ffg1157-1}
create_clock -period 10 -name default
source "./CollatzHLS/CollatzHLS/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
