// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 11 07:38:56 2022
// Host        : DESKTOP-51HCLKD running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/source/Github/INF01175_Sistemas_Digitais/Projeto2_PCPO/Collatz_PCPO/Collatz_PCPO.sim/sim_1/synth/timing/xsim/tb_Collatz_VHDL_time_synth.v
// Design      : Collatz_VHDL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7vx485tffg1157-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module Collatz_VHDL
   (start,
    rst,
    clk,
    inputX,
    done,
    greatest,
    steps);
  input start;
  input rst;
  input clk;
  input [7:0]inputX;
  output done;
  output [15:0]greatest;
  output [7:0]steps;

  wire [15:1]A;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire done;
  wire done_OBUF;
  wire [15:0]greatest;
  wire [15:0]greatest_OBUF;
  wire [7:0]inputX;
  wire [7:0]inputX_IBUF;
  wire [15:0]multOp;
  wire [3:0]nextState;
  wire \outputCOUNT[4]_i_2_n_0 ;
  wire \outputCOUNT[5]_i_2_n_0 ;
  wire \outputCOUNT[7]_i_1_n_0 ;
  wire \outputCOUNT[7]_i_3_n_0 ;
  wire [0:0]outputRA;
  wire \outputRA[0]_i_3_n_0 ;
  wire \outputRA[0]_i_4_n_0 ;
  wire \outputRA[0]_i_5_n_0 ;
  wire \outputRA[12]_i_4_n_0 ;
  wire \outputRA[12]_i_5_n_0 ;
  wire \outputRA[12]_i_6_n_0 ;
  wire \outputRA[12]_i_7_n_0 ;
  wire \outputRA[15]_i_1_n_0 ;
  wire \outputRA[15]_i_5_n_0 ;
  wire \outputRA[15]_i_6_n_0 ;
  wire \outputRA[15]_i_7_n_0 ;
  wire \outputRA[15]_i_8_n_0 ;
  wire \outputRA[8]_i_4_n_0 ;
  wire \outputRA[8]_i_5_n_0 ;
  wire \outputRA[8]_i_6_n_0 ;
  wire \outputRA[8]_i_7_n_0 ;
  wire \outputRA_reg[0]_i_2_n_0 ;
  wire \outputRA_reg[0]_i_2_n_1 ;
  wire \outputRA_reg[0]_i_2_n_2 ;
  wire \outputRA_reg[0]_i_2_n_3 ;
  wire \outputRA_reg[12]_i_2_n_0 ;
  wire \outputRA_reg[12]_i_2_n_1 ;
  wire \outputRA_reg[12]_i_2_n_2 ;
  wire \outputRA_reg[12]_i_2_n_3 ;
  wire \outputRA_reg[12]_i_3_n_0 ;
  wire \outputRA_reg[12]_i_3_n_1 ;
  wire \outputRA_reg[12]_i_3_n_2 ;
  wire \outputRA_reg[12]_i_3_n_3 ;
  wire \outputRA_reg[15]_i_3_n_2 ;
  wire \outputRA_reg[15]_i_3_n_3 ;
  wire \outputRA_reg[15]_i_4_n_1 ;
  wire \outputRA_reg[15]_i_4_n_2 ;
  wire \outputRA_reg[15]_i_4_n_3 ;
  wire \outputRA_reg[4]_i_2_n_0 ;
  wire \outputRA_reg[4]_i_2_n_1 ;
  wire \outputRA_reg[4]_i_2_n_2 ;
  wire \outputRA_reg[4]_i_2_n_3 ;
  wire \outputRA_reg[8]_i_2_n_0 ;
  wire \outputRA_reg[8]_i_2_n_1 ;
  wire \outputRA_reg[8]_i_2_n_2 ;
  wire \outputRA_reg[8]_i_2_n_3 ;
  wire \outputRA_reg[8]_i_3_n_0 ;
  wire \outputRA_reg[8]_i_3_n_1 ;
  wire \outputRA_reg[8]_i_3_n_2 ;
  wire \outputRA_reg[8]_i_3_n_3 ;
  wire \outputRB[0]_i_1_n_0 ;
  wire \outputRB[10]_i_1_n_0 ;
  wire \outputRB[11]_i_1_n_0 ;
  wire \outputRB[12]_i_1_n_0 ;
  wire \outputRB[13]_i_1_n_0 ;
  wire \outputRB[14]_i_1_n_0 ;
  wire \outputRB[15]_i_1_n_0 ;
  wire \outputRB[15]_i_2_n_0 ;
  wire \outputRB[1]_i_1_n_0 ;
  wire \outputRB[2]_i_1_n_0 ;
  wire \outputRB[3]_i_1_n_0 ;
  wire \outputRB[4]_i_1_n_0 ;
  wire \outputRB[5]_i_1_n_0 ;
  wire \outputRB[6]_i_1_n_0 ;
  wire \outputRB[7]_i_1_n_0 ;
  wire \outputRB[8]_i_1_n_0 ;
  wire \outputRB[9]_i_1_n_0 ;
  wire outputT4;
  wire [7:0]p_0_in;
  wire [15:0]p_1_in;
  wire [15:1]plusOp;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire start_IBUF;
  wire [3:0]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[0]_i_3_n_0 ;
  wire \state[0]_i_4_n_0 ;
  wire \state[0]_i_5_n_0 ;
  wire \state[0]_i_6_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_10_n_0 ;
  wire \state[2]_i_11_n_0 ;
  wire \state[2]_i_12_n_0 ;
  wire \state[2]_i_13_n_0 ;
  wire \state[2]_i_14_n_0 ;
  wire \state[2]_i_15_n_0 ;
  wire \state[2]_i_16_n_0 ;
  wire \state[2]_i_17_n_0 ;
  wire \state[2]_i_18_n_0 ;
  wire \state[2]_i_19_n_0 ;
  wire \state[2]_i_20_n_0 ;
  wire \state[2]_i_21_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[2]_i_6_n_0 ;
  wire \state[2]_i_7_n_0 ;
  wire \state[2]_i_8_n_0 ;
  wire \state[2]_i_9_n_0 ;
  wire \state_reg[2]_i_2_n_1 ;
  wire \state_reg[2]_i_2_n_2 ;
  wire \state_reg[2]_i_2_n_3 ;
  wire \state_reg[2]_i_4_n_0 ;
  wire \state_reg[2]_i_4_n_1 ;
  wire \state_reg[2]_i_4_n_2 ;
  wire \state_reg[2]_i_4_n_3 ;
  wire [7:0]steps;
  wire [7:0]steps_OBUF;
  wire [3:2]\NLW_outputRA_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_outputRA_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_outputRA_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_state_reg[2]_i_4_O_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_Collatz_VHDL_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    done_OBUF_inst_i_1
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[3]),
        .I3(state[2]),
        .O(done_OBUF));
  OBUF \greatest_OBUF[0]_inst 
       (.I(greatest_OBUF[0]),
        .O(greatest[0]));
  OBUF \greatest_OBUF[10]_inst 
       (.I(greatest_OBUF[10]),
        .O(greatest[10]));
  OBUF \greatest_OBUF[11]_inst 
       (.I(greatest_OBUF[11]),
        .O(greatest[11]));
  OBUF \greatest_OBUF[12]_inst 
       (.I(greatest_OBUF[12]),
        .O(greatest[12]));
  OBUF \greatest_OBUF[13]_inst 
       (.I(greatest_OBUF[13]),
        .O(greatest[13]));
  OBUF \greatest_OBUF[14]_inst 
       (.I(greatest_OBUF[14]),
        .O(greatest[14]));
  OBUF \greatest_OBUF[15]_inst 
       (.I(greatest_OBUF[15]),
        .O(greatest[15]));
  OBUF \greatest_OBUF[1]_inst 
       (.I(greatest_OBUF[1]),
        .O(greatest[1]));
  OBUF \greatest_OBUF[2]_inst 
       (.I(greatest_OBUF[2]),
        .O(greatest[2]));
  OBUF \greatest_OBUF[3]_inst 
       (.I(greatest_OBUF[3]),
        .O(greatest[3]));
  OBUF \greatest_OBUF[4]_inst 
       (.I(greatest_OBUF[4]),
        .O(greatest[4]));
  OBUF \greatest_OBUF[5]_inst 
       (.I(greatest_OBUF[5]),
        .O(greatest[5]));
  OBUF \greatest_OBUF[6]_inst 
       (.I(greatest_OBUF[6]),
        .O(greatest[6]));
  OBUF \greatest_OBUF[7]_inst 
       (.I(greatest_OBUF[7]),
        .O(greatest[7]));
  OBUF \greatest_OBUF[8]_inst 
       (.I(greatest_OBUF[8]),
        .O(greatest[8]));
  OBUF \greatest_OBUF[9]_inst 
       (.I(greatest_OBUF[9]),
        .O(greatest[9]));
  IBUF \inputX_IBUF[0]_inst 
       (.I(inputX[0]),
        .O(inputX_IBUF[0]));
  IBUF \inputX_IBUF[1]_inst 
       (.I(inputX[1]),
        .O(inputX_IBUF[1]));
  IBUF \inputX_IBUF[2]_inst 
       (.I(inputX[2]),
        .O(inputX_IBUF[2]));
  IBUF \inputX_IBUF[3]_inst 
       (.I(inputX[3]),
        .O(inputX_IBUF[3]));
  IBUF \inputX_IBUF[4]_inst 
       (.I(inputX[4]),
        .O(inputX_IBUF[4]));
  IBUF \inputX_IBUF[5]_inst 
       (.I(inputX[5]),
        .O(inputX_IBUF[5]));
  IBUF \inputX_IBUF[6]_inst 
       (.I(inputX[6]),
        .O(inputX_IBUF[6]));
  IBUF \inputX_IBUF[7]_inst 
       (.I(inputX[7]),
        .O(inputX_IBUF[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \outputCOUNT[0]_i_1 
       (.I0(state[2]),
        .I1(steps_OBUF[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \outputCOUNT[1]_i_1 
       (.I0(state[2]),
        .I1(steps_OBUF[0]),
        .I2(steps_OBUF[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \outputCOUNT[2]_i_1 
       (.I0(state[2]),
        .I1(steps_OBUF[1]),
        .I2(steps_OBUF[0]),
        .I3(steps_OBUF[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h7F00000080000000)) 
    \outputCOUNT[3]_i_1 
       (.I0(steps_OBUF[1]),
        .I1(steps_OBUF[0]),
        .I2(steps_OBUF[2]),
        .I3(state[2]),
        .I4(\outputRA[15]_i_1_n_0 ),
        .I5(steps_OBUF[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \outputCOUNT[4]_i_1 
       (.I0(steps_OBUF[2]),
        .I1(steps_OBUF[0]),
        .I2(steps_OBUF[1]),
        .I3(steps_OBUF[3]),
        .I4(\outputCOUNT[4]_i_2_n_0 ),
        .I5(steps_OBUF[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \outputCOUNT[4]_i_2 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[2]),
        .O(\outputCOUNT[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \outputCOUNT[5]_i_1 
       (.I0(\outputCOUNT[5]_i_2_n_0 ),
        .I1(state[2]),
        .I2(steps_OBUF[5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \outputCOUNT[5]_i_2 
       (.I0(steps_OBUF[3]),
        .I1(steps_OBUF[1]),
        .I2(steps_OBUF[0]),
        .I3(steps_OBUF[2]),
        .I4(steps_OBUF[4]),
        .O(\outputCOUNT[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \outputCOUNT[6]_i_1 
       (.I0(\outputCOUNT[7]_i_3_n_0 ),
        .I1(state[2]),
        .I2(steps_OBUF[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h000D)) 
    \outputCOUNT[7]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[3]),
        .O(\outputCOUNT[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \outputCOUNT[7]_i_2 
       (.I0(\outputCOUNT[7]_i_3_n_0 ),
        .I1(steps_OBUF[6]),
        .I2(state[2]),
        .I3(steps_OBUF[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \outputCOUNT[7]_i_3 
       (.I0(steps_OBUF[4]),
        .I1(steps_OBUF[2]),
        .I2(steps_OBUF[0]),
        .I3(steps_OBUF[1]),
        .I4(steps_OBUF[3]),
        .I5(steps_OBUF[5]),
        .O(\outputCOUNT[7]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[0]),
        .Q(steps_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[1]),
        .Q(steps_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[2]),
        .Q(steps_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[3]),
        .Q(steps_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[4]),
        .Q(steps_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[5]),
        .Q(steps_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[6]),
        .Q(steps_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \outputCOUNT_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputCOUNT[7]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_0_in[7]),
        .Q(steps_OBUF[7]));
  LUT5 #(
    .INIT(32'h33F0AA00)) 
    \outputRA[0]_i_1 
       (.I0(A[1]),
        .I1(multOp[0]),
        .I2(inputX_IBUF[0]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[0]_i_3 
       (.I0(A[1]),
        .I1(A[3]),
        .O(\outputRA[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[0]_i_4 
       (.I0(outputRA),
        .I1(A[2]),
        .O(\outputRA[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \outputRA[0]_i_5 
       (.I0(A[1]),
        .O(\outputRA[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[10]_i_1 
       (.I0(plusOp[10]),
        .I1(A[11]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[10]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[11]_i_1 
       (.I0(plusOp[11]),
        .I1(A[12]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[11]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[12]_i_1 
       (.I0(plusOp[12]),
        .I1(A[13]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[12]));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[12]_i_4 
       (.I0(A[9]),
        .I1(A[11]),
        .O(\outputRA[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[12]_i_5 
       (.I0(A[8]),
        .I1(A[10]),
        .O(\outputRA[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[12]_i_6 
       (.I0(A[7]),
        .I1(A[9]),
        .O(\outputRA[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[12]_i_7 
       (.I0(A[6]),
        .I1(A[8]),
        .O(\outputRA[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[13]_i_1 
       (.I0(plusOp[13]),
        .I1(A[14]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[14]_i_1 
       (.I0(plusOp[14]),
        .I1(A[15]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h1)) 
    \outputRA[15]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .O(\outputRA[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \outputRA[15]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(plusOp[15]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[15]_i_5 
       (.I0(A[15]),
        .I1(A[13]),
        .O(\outputRA[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[15]_i_6 
       (.I0(A[12]),
        .I1(A[14]),
        .O(\outputRA[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[15]_i_7 
       (.I0(A[11]),
        .I1(A[13]),
        .O(\outputRA[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[15]_i_8 
       (.I0(A[10]),
        .I1(A[12]),
        .O(\outputRA[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[1]_i_1 
       (.I0(A[2]),
        .I1(inputX_IBUF[1]),
        .I2(plusOp[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[2]_i_1 
       (.I0(A[3]),
        .I1(inputX_IBUF[2]),
        .I2(plusOp[2]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[3]_i_1 
       (.I0(A[4]),
        .I1(inputX_IBUF[3]),
        .I2(plusOp[3]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[4]_i_1 
       (.I0(A[5]),
        .I1(inputX_IBUF[4]),
        .I2(plusOp[4]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[5]_i_1 
       (.I0(A[6]),
        .I1(inputX_IBUF[5]),
        .I2(plusOp[5]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[6]_i_1 
       (.I0(A[7]),
        .I1(inputX_IBUF[6]),
        .I2(plusOp[6]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[6]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \outputRA[7]_i_1 
       (.I0(A[8]),
        .I1(inputX_IBUF[7]),
        .I2(plusOp[7]),
        .I3(state[2]),
        .I4(state[0]),
        .O(p_1_in[7]));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[8]_i_1 
       (.I0(plusOp[8]),
        .I1(A[9]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[8]_i_4 
       (.I0(A[5]),
        .I1(A[7]),
        .O(\outputRA[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[8]_i_5 
       (.I0(A[4]),
        .I1(A[6]),
        .O(\outputRA[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[8]_i_6 
       (.I0(A[3]),
        .I1(A[5]),
        .O(\outputRA[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \outputRA[8]_i_7 
       (.I0(A[2]),
        .I1(A[4]),
        .O(\outputRA[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hA0C0)) 
    \outputRA[9]_i_1 
       (.I0(plusOp[9]),
        .I1(A[10]),
        .I2(state[2]),
        .I3(state[0]),
        .O(p_1_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[0]),
        .Q(outputRA));
  CARRY4 \outputRA_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\outputRA_reg[0]_i_2_n_0 ,\outputRA_reg[0]_i_2_n_1 ,\outputRA_reg[0]_i_2_n_2 ,\outputRA_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({A[1],outputRA,1'b0,1'b1}),
        .O(multOp[3:0]),
        .S({\outputRA[0]_i_3_n_0 ,\outputRA[0]_i_4_n_0 ,\outputRA[0]_i_5_n_0 ,outputRA}));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[10]),
        .Q(A[10]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[11]),
        .Q(A[11]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[12]),
        .Q(A[12]));
  CARRY4 \outputRA_reg[12]_i_2 
       (.CI(\outputRA_reg[8]_i_2_n_0 ),
        .CO({\outputRA_reg[12]_i_2_n_0 ,\outputRA_reg[12]_i_2_n_1 ,\outputRA_reg[12]_i_2_n_2 ,\outputRA_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[12:9]),
        .S(multOp[12:9]));
  CARRY4 \outputRA_reg[12]_i_3 
       (.CI(\outputRA_reg[8]_i_3_n_0 ),
        .CO({\outputRA_reg[12]_i_3_n_0 ,\outputRA_reg[12]_i_3_n_1 ,\outputRA_reg[12]_i_3_n_2 ,\outputRA_reg[12]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(A[9:6]),
        .O(multOp[11:8]),
        .S({\outputRA[12]_i_4_n_0 ,\outputRA[12]_i_5_n_0 ,\outputRA[12]_i_6_n_0 ,\outputRA[12]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[13]),
        .Q(A[13]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[14]),
        .Q(A[14]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[15]),
        .Q(A[15]));
  CARRY4 \outputRA_reg[15]_i_3 
       (.CI(\outputRA_reg[12]_i_2_n_0 ),
        .CO({\NLW_outputRA_reg[15]_i_3_CO_UNCONNECTED [3:2],\outputRA_reg[15]_i_3_n_2 ,\outputRA_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_outputRA_reg[15]_i_3_O_UNCONNECTED [3],plusOp[15:13]}),
        .S({1'b0,multOp[15:13]}));
  CARRY4 \outputRA_reg[15]_i_4 
       (.CI(\outputRA_reg[12]_i_3_n_0 ),
        .CO({\NLW_outputRA_reg[15]_i_4_CO_UNCONNECTED [3],\outputRA_reg[15]_i_4_n_1 ,\outputRA_reg[15]_i_4_n_2 ,\outputRA_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A[12:10]}),
        .O(multOp[15:12]),
        .S({\outputRA[15]_i_5_n_0 ,\outputRA[15]_i_6_n_0 ,\outputRA[15]_i_7_n_0 ,\outputRA[15]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[1]),
        .Q(A[1]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[2]),
        .Q(A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[3]),
        .Q(A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[4]),
        .Q(A[4]));
  CARRY4 \outputRA_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\outputRA_reg[4]_i_2_n_0 ,\outputRA_reg[4]_i_2_n_1 ,\outputRA_reg[4]_i_2_n_2 ,\outputRA_reg[4]_i_2_n_3 }),
        .CYINIT(multOp[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[4:1]),
        .S(multOp[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[5]),
        .Q(A[5]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[6]),
        .Q(A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[7]),
        .Q(A[7]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[8]),
        .Q(A[8]));
  CARRY4 \outputRA_reg[8]_i_2 
       (.CI(\outputRA_reg[4]_i_2_n_0 ),
        .CO({\outputRA_reg[8]_i_2_n_0 ,\outputRA_reg[8]_i_2_n_1 ,\outputRA_reg[8]_i_2_n_2 ,\outputRA_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(plusOp[8:5]),
        .S(multOp[8:5]));
  CARRY4 \outputRA_reg[8]_i_3 
       (.CI(\outputRA_reg[0]_i_2_n_0 ),
        .CO({\outputRA_reg[8]_i_3_n_0 ,\outputRA_reg[8]_i_3_n_1 ,\outputRA_reg[8]_i_3_n_2 ,\outputRA_reg[8]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(A[5:2]),
        .O(multOp[7:4]),
        .S({\outputRA[8]_i_4_n_0 ,\outputRA[8]_i_5_n_0 ,\outputRA[8]_i_6_n_0 ,\outputRA[8]_i_7_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \outputRA_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRA[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(p_1_in[9]),
        .Q(A[9]));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[0]_i_1 
       (.I0(inputX_IBUF[0]),
        .I1(outputRA),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[10]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[10]),
        .O(\outputRB[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[11]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[11]),
        .O(\outputRB[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[12]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[12]),
        .O(\outputRB[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[13]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[13]),
        .O(\outputRB[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[14]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[14]),
        .O(\outputRB[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0321)) 
    \outputRB[15]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[2]),
        .I3(state[0]),
        .O(\outputRB[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[15]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[15]),
        .O(\outputRB[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[1]_i_1 
       (.I0(inputX_IBUF[1]),
        .I1(A[1]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[2]_i_1 
       (.I0(inputX_IBUF[2]),
        .I1(A[2]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[3]_i_1 
       (.I0(inputX_IBUF[3]),
        .I1(A[3]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[4]_i_1 
       (.I0(inputX_IBUF[4]),
        .I1(A[4]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[5]_i_1 
       (.I0(inputX_IBUF[5]),
        .I1(A[5]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[6]_i_1 
       (.I0(inputX_IBUF[6]),
        .I1(A[6]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00CAC000)) 
    \outputRB[7]_i_1 
       (.I0(inputX_IBUF[7]),
        .I1(A[7]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .O(\outputRB[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[8]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[8]),
        .O(\outputRB[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6000)) 
    \outputRB[9]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .I3(A[9]),
        .O(\outputRB[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[0]_i_1_n_0 ),
        .Q(greatest_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[10]_i_1_n_0 ),
        .Q(greatest_OBUF[10]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[11]_i_1_n_0 ),
        .Q(greatest_OBUF[11]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[12]_i_1_n_0 ),
        .Q(greatest_OBUF[12]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[13]_i_1_n_0 ),
        .Q(greatest_OBUF[13]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[14]_i_1_n_0 ),
        .Q(greatest_OBUF[14]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[15]_i_2_n_0 ),
        .Q(greatest_OBUF[15]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[1]_i_1_n_0 ),
        .Q(greatest_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[2]_i_1_n_0 ),
        .Q(greatest_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[3]_i_1_n_0 ),
        .Q(greatest_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[4]_i_1_n_0 ),
        .Q(greatest_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[5]_i_1_n_0 ),
        .Q(greatest_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[6]_i_1_n_0 ),
        .Q(greatest_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[7]_i_1_n_0 ),
        .Q(greatest_OBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[8]_i_1_n_0 ),
        .Q(greatest_OBUF[8]));
  FDCE #(
    .INIT(1'b0)) 
    \outputRB_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\outputRB[15]_i_1_n_0 ),
        .CLR(rst_IBUF),
        .D(\outputRB[9]_i_1_n_0 ),
        .Q(greatest_OBUF[9]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \state[0]_i_1 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\state[0]_i_3_n_0 ),
        .I2(\state[0]_i_4_n_0 ),
        .I3(\state[0]_i_5_n_0 ),
        .O(nextState[0]));
  LUT6 #(
    .INIT(64'h0008CF030008CF00)) 
    \state[0]_i_2 
       (.I0(outputRA),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[3]),
        .I5(start_IBUF),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[0]_i_3 
       (.I0(A[4]),
        .I1(A[5]),
        .I2(A[2]),
        .I3(A[3]),
        .I4(A[7]),
        .I5(A[6]),
        .O(\state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \state[0]_i_4 
       (.I0(\state[0]_i_6_n_0 ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(A[1]),
        .I4(A[13]),
        .I5(A[15]),
        .O(\state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state[0]_i_5 
       (.I0(A[10]),
        .I1(A[11]),
        .I2(A[8]),
        .I3(A[9]),
        .I4(A[14]),
        .I5(A[12]),
        .O(\state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \state[0]_i_6 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBBBBBAEE)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(state[3]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(state[2]),
        .O(nextState[1]));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \state[1]_i_2 
       (.I0(\state[0]_i_3_n_0 ),
        .I1(\state[2]_i_13_n_0 ),
        .I2(state[2]),
        .I3(outputRA),
        .I4(A[1]),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40684060)) 
    \state[2]_i_1 
       (.I0(state[3]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(outputT4),
        .I5(\state[2]_i_3_n_0 ),
        .O(nextState[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_10 
       (.I0(greatest_OBUF[13]),
        .I1(A[13]),
        .I2(greatest_OBUF[12]),
        .I3(A[12]),
        .O(\state[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_11 
       (.I0(greatest_OBUF[11]),
        .I1(A[11]),
        .I2(greatest_OBUF[10]),
        .I3(A[10]),
        .O(\state[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_12 
       (.I0(greatest_OBUF[9]),
        .I1(A[9]),
        .I2(greatest_OBUF[8]),
        .I3(A[8]),
        .O(\state[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \state[2]_i_13 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(A[15]),
        .I3(A[13]),
        .O(\state[2]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_14 
       (.I0(A[7]),
        .I1(greatest_OBUF[7]),
        .I2(A[6]),
        .I3(greatest_OBUF[6]),
        .O(\state[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_15 
       (.I0(A[5]),
        .I1(greatest_OBUF[5]),
        .I2(A[4]),
        .I3(greatest_OBUF[4]),
        .O(\state[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_16 
       (.I0(A[3]),
        .I1(greatest_OBUF[3]),
        .I2(A[2]),
        .I3(greatest_OBUF[2]),
        .O(\state[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_17 
       (.I0(A[1]),
        .I1(greatest_OBUF[1]),
        .I2(outputRA),
        .I3(greatest_OBUF[0]),
        .O(\state[2]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_18 
       (.I0(greatest_OBUF[7]),
        .I1(A[7]),
        .I2(greatest_OBUF[6]),
        .I3(A[6]),
        .O(\state[2]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_19 
       (.I0(greatest_OBUF[5]),
        .I1(A[5]),
        .I2(greatest_OBUF[4]),
        .I3(A[4]),
        .O(\state[2]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_20 
       (.I0(greatest_OBUF[3]),
        .I1(A[3]),
        .I2(greatest_OBUF[2]),
        .I3(A[2]),
        .O(\state[2]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_21 
       (.I0(greatest_OBUF[1]),
        .I1(A[1]),
        .I2(greatest_OBUF[0]),
        .I3(outputRA),
        .O(\state[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \state[2]_i_3 
       (.I0(\state[0]_i_3_n_0 ),
        .I1(\state[2]_i_13_n_0 ),
        .I2(state[2]),
        .I3(outputRA),
        .I4(A[1]),
        .I5(\state[0]_i_5_n_0 ),
        .O(\state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_5 
       (.I0(A[15]),
        .I1(greatest_OBUF[15]),
        .I2(A[14]),
        .I3(greatest_OBUF[14]),
        .O(\state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_6 
       (.I0(A[13]),
        .I1(greatest_OBUF[13]),
        .I2(A[12]),
        .I3(greatest_OBUF[12]),
        .O(\state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_7 
       (.I0(A[11]),
        .I1(greatest_OBUF[11]),
        .I2(A[10]),
        .I3(greatest_OBUF[10]),
        .O(\state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \state[2]_i_8 
       (.I0(A[9]),
        .I1(greatest_OBUF[9]),
        .I2(A[8]),
        .I3(greatest_OBUF[8]),
        .O(\state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \state[2]_i_9 
       (.I0(greatest_OBUF[15]),
        .I1(A[15]),
        .I2(greatest_OBUF[14]),
        .I3(A[14]),
        .O(\state[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h1012)) 
    \state[3]_i_1 
       (.I0(state[1]),
        .I1(state[3]),
        .I2(state[0]),
        .I3(state[2]),
        .O(nextState[3]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextState[0]),
        .Q(state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextState[1]),
        .Q(state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextState[2]),
        .Q(state[2]));
  CARRY4 \state_reg[2]_i_2 
       (.CI(\state_reg[2]_i_4_n_0 ),
        .CO({outputT4,\state_reg[2]_i_2_n_1 ,\state_reg[2]_i_2_n_2 ,\state_reg[2]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\state[2]_i_5_n_0 ,\state[2]_i_6_n_0 ,\state[2]_i_7_n_0 ,\state[2]_i_8_n_0 }),
        .O(\NLW_state_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_9_n_0 ,\state[2]_i_10_n_0 ,\state[2]_i_11_n_0 ,\state[2]_i_12_n_0 }));
  CARRY4 \state_reg[2]_i_4 
       (.CI(1'b0),
        .CO({\state_reg[2]_i_4_n_0 ,\state_reg[2]_i_4_n_1 ,\state_reg[2]_i_4_n_2 ,\state_reg[2]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\state[2]_i_14_n_0 ,\state[2]_i_15_n_0 ,\state[2]_i_16_n_0 ,\state[2]_i_17_n_0 }),
        .O(\NLW_state_reg[2]_i_4_O_UNCONNECTED [3:0]),
        .S({\state[2]_i_18_n_0 ,\state[2]_i_19_n_0 ,\state[2]_i_20_n_0 ,\state[2]_i_21_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(nextState[3]),
        .Q(state[3]));
  OBUF \steps_OBUF[0]_inst 
       (.I(steps_OBUF[0]),
        .O(steps[0]));
  OBUF \steps_OBUF[1]_inst 
       (.I(steps_OBUF[1]),
        .O(steps[1]));
  OBUF \steps_OBUF[2]_inst 
       (.I(steps_OBUF[2]),
        .O(steps[2]));
  OBUF \steps_OBUF[3]_inst 
       (.I(steps_OBUF[3]),
        .O(steps[3]));
  OBUF \steps_OBUF[4]_inst 
       (.I(steps_OBUF[4]),
        .O(steps[4]));
  OBUF \steps_OBUF[5]_inst 
       (.I(steps_OBUF[5]),
        .O(steps[5]));
  OBUF \steps_OBUF[6]_inst 
       (.I(steps_OBUF[6]),
        .O(steps[6]));
  OBUF \steps_OBUF[7]_inst 
       (.I(steps_OBUF[7]),
        .O(steps[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
