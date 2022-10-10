#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("agg_result_steps", 8, hls_out, 0, "ap_vld", "out_data", 1),
	Port_Property("agg_result_steps_ap_vld", 1, hls_out, 0, "ap_vld", "out_vld", 1),
	Port_Property("agg_result_greatest", 8, hls_out, 1, "ap_vld", "out_data", 1),
	Port_Property("agg_result_greatest_ap_vld", 1, hls_out, 1, "ap_vld", "out_vld", 1),
	Port_Property("x", 8, hls_in, 2, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "Collatz";
