// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Jun 10 15:07:50 2022
// Host        : LAPTOP-A9HQ5RJJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               {C:/Users/jakef/OneDrive/Documents/uvic/Summer
//               2022/SENG440/test_multiplier_adder/test_multiplier_adder.sim/sim_1/synth/timing/xsim/adder_multiplier_test_time_synth.v}
// Design      : adder_multiplier
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module adder_multiplier
   (A,
    B,
    C,
    SUM,
    MUL,
    L1,
    L2);
  input [31:0]A;
  input [31:0]B;
  input [15:0]C;
  output [31:0]SUM;
  output [31:0]MUL;
  output [31:0]L1;
  output [31:0]L2;

  wire [31:0]A;
  wire [31:0]A_IBUF;
  wire [31:0]B;
  wire [31:0]B_IBUF;
  wire [15:0]C;
  wire [15:0]C_IBUF;
  wire [31:0]L1;
  wire [31:0]L1_OBUF;
  wire L1_i_10_n_0;
  wire L1_i_11_n_0;
  wire L1_i_12_n_0;
  wire L1_i_13_n_0;
  wire L1_i_14_n_0;
  wire L1_i_15_n_0;
  wire L1_i_16_n_0;
  wire L1_i_17_n_0;
  wire L1_i_18_n_0;
  wire L1_i_19_n_0;
  wire L1_i_1_n_1;
  wire L1_i_1_n_2;
  wire L1_i_1_n_3;
  wire L1_i_1_n_4;
  wire L1_i_1_n_5;
  wire L1_i_1_n_6;
  wire L1_i_1_n_7;
  wire L1_i_20_n_0;
  wire L1_i_21_n_0;
  wire L1_i_2_n_0;
  wire L1_i_2_n_1;
  wire L1_i_2_n_2;
  wire L1_i_2_n_3;
  wire L1_i_2_n_4;
  wire L1_i_2_n_5;
  wire L1_i_2_n_6;
  wire L1_i_2_n_7;
  wire L1_i_3_n_0;
  wire L1_i_3_n_1;
  wire L1_i_3_n_2;
  wire L1_i_3_n_3;
  wire L1_i_3_n_4;
  wire L1_i_3_n_5;
  wire L1_i_3_n_6;
  wire L1_i_3_n_7;
  wire L1_i_4_n_0;
  wire L1_i_4_n_1;
  wire L1_i_4_n_2;
  wire L1_i_4_n_3;
  wire L1_i_4_n_4;
  wire L1_i_4_n_5;
  wire L1_i_4_n_6;
  wire L1_i_5_n_0;
  wire L1_i_6_n_0;
  wire L1_i_7_n_0;
  wire L1_i_8_n_0;
  wire L1_i_9_n_0;
  wire [31:0]L2;
  wire [31:0]L2_OBUF;
  wire L2_i_10_n_0;
  wire L2_i_11_n_0;
  wire L2_i_12_n_0;
  wire L2_i_13_n_0;
  wire L2_i_14_n_0;
  wire L2_i_15_n_0;
  wire L2_i_16_n_0;
  wire L2_i_17_n_0;
  wire L2_i_18_n_0;
  wire L2_i_19_n_0;
  wire L2_i_1_n_1;
  wire L2_i_1_n_2;
  wire L2_i_1_n_3;
  wire L2_i_1_n_4;
  wire L2_i_1_n_5;
  wire L2_i_1_n_6;
  wire L2_i_1_n_7;
  wire L2_i_20_n_0;
  wire L2_i_2_n_0;
  wire L2_i_2_n_1;
  wire L2_i_2_n_2;
  wire L2_i_2_n_3;
  wire L2_i_2_n_4;
  wire L2_i_2_n_5;
  wire L2_i_2_n_6;
  wire L2_i_2_n_7;
  wire L2_i_3_n_0;
  wire L2_i_3_n_1;
  wire L2_i_3_n_2;
  wire L2_i_3_n_3;
  wire L2_i_3_n_4;
  wire L2_i_3_n_5;
  wire L2_i_3_n_6;
  wire L2_i_3_n_7;
  wire L2_i_4_n_0;
  wire L2_i_4_n_1;
  wire L2_i_4_n_2;
  wire L2_i_4_n_3;
  wire L2_i_4_n_4;
  wire L2_i_4_n_5;
  wire L2_i_4_n_6;
  wire L2_i_4_n_7;
  wire L2_i_5_n_0;
  wire L2_i_6_n_0;
  wire L2_i_7_n_0;
  wire L2_i_8_n_0;
  wire L2_i_9_n_0;
  wire [31:0]MUL;
  wire [31:0]MUL_OBUF;
  wire [31:0]SUM;
  wire [31:0]SUM_OBUF;
  wire \SUM_OBUF[11]_inst_i_1_n_0 ;
  wire \SUM_OBUF[11]_inst_i_1_n_1 ;
  wire \SUM_OBUF[11]_inst_i_1_n_2 ;
  wire \SUM_OBUF[11]_inst_i_1_n_3 ;
  wire \SUM_OBUF[11]_inst_i_2_n_0 ;
  wire \SUM_OBUF[11]_inst_i_3_n_0 ;
  wire \SUM_OBUF[11]_inst_i_4_n_0 ;
  wire \SUM_OBUF[11]_inst_i_5_n_0 ;
  wire \SUM_OBUF[15]_inst_i_1_n_0 ;
  wire \SUM_OBUF[15]_inst_i_1_n_1 ;
  wire \SUM_OBUF[15]_inst_i_1_n_2 ;
  wire \SUM_OBUF[15]_inst_i_1_n_3 ;
  wire \SUM_OBUF[15]_inst_i_2_n_0 ;
  wire \SUM_OBUF[15]_inst_i_3_n_0 ;
  wire \SUM_OBUF[15]_inst_i_4_n_0 ;
  wire \SUM_OBUF[15]_inst_i_5_n_0 ;
  wire \SUM_OBUF[19]_inst_i_1_n_0 ;
  wire \SUM_OBUF[19]_inst_i_1_n_1 ;
  wire \SUM_OBUF[19]_inst_i_1_n_2 ;
  wire \SUM_OBUF[19]_inst_i_1_n_3 ;
  wire \SUM_OBUF[19]_inst_i_2_n_0 ;
  wire \SUM_OBUF[19]_inst_i_3_n_0 ;
  wire \SUM_OBUF[19]_inst_i_4_n_0 ;
  wire \SUM_OBUF[19]_inst_i_5_n_0 ;
  wire \SUM_OBUF[23]_inst_i_1_n_0 ;
  wire \SUM_OBUF[23]_inst_i_1_n_1 ;
  wire \SUM_OBUF[23]_inst_i_1_n_2 ;
  wire \SUM_OBUF[23]_inst_i_1_n_3 ;
  wire \SUM_OBUF[23]_inst_i_2_n_0 ;
  wire \SUM_OBUF[23]_inst_i_3_n_0 ;
  wire \SUM_OBUF[23]_inst_i_4_n_0 ;
  wire \SUM_OBUF[23]_inst_i_5_n_0 ;
  wire \SUM_OBUF[27]_inst_i_1_n_0 ;
  wire \SUM_OBUF[27]_inst_i_1_n_1 ;
  wire \SUM_OBUF[27]_inst_i_1_n_2 ;
  wire \SUM_OBUF[27]_inst_i_1_n_3 ;
  wire \SUM_OBUF[27]_inst_i_2_n_0 ;
  wire \SUM_OBUF[27]_inst_i_3_n_0 ;
  wire \SUM_OBUF[27]_inst_i_4_n_0 ;
  wire \SUM_OBUF[27]_inst_i_5_n_0 ;
  wire \SUM_OBUF[31]_inst_i_1_n_1 ;
  wire \SUM_OBUF[31]_inst_i_1_n_2 ;
  wire \SUM_OBUF[31]_inst_i_1_n_3 ;
  wire \SUM_OBUF[31]_inst_i_2_n_0 ;
  wire \SUM_OBUF[31]_inst_i_3_n_0 ;
  wire \SUM_OBUF[31]_inst_i_4_n_0 ;
  wire \SUM_OBUF[31]_inst_i_5_n_0 ;
  wire \SUM_OBUF[3]_inst_i_1_n_0 ;
  wire \SUM_OBUF[3]_inst_i_1_n_1 ;
  wire \SUM_OBUF[3]_inst_i_1_n_2 ;
  wire \SUM_OBUF[3]_inst_i_1_n_3 ;
  wire \SUM_OBUF[3]_inst_i_2_n_0 ;
  wire \SUM_OBUF[3]_inst_i_3_n_0 ;
  wire \SUM_OBUF[3]_inst_i_4_n_0 ;
  wire \SUM_OBUF[3]_inst_i_5_n_0 ;
  wire \SUM_OBUF[7]_inst_i_1_n_0 ;
  wire \SUM_OBUF[7]_inst_i_1_n_1 ;
  wire \SUM_OBUF[7]_inst_i_1_n_2 ;
  wire \SUM_OBUF[7]_inst_i_1_n_3 ;
  wire \SUM_OBUF[7]_inst_i_2_n_0 ;
  wire \SUM_OBUF[7]_inst_i_3_n_0 ;
  wire \SUM_OBUF[7]_inst_i_4_n_0 ;
  wire \SUM_OBUF[7]_inst_i_5_n_0 ;
  wire NLW_L1__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_L1__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_L1__0_OVERFLOW_UNCONNECTED;
  wire NLW_L1__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_L1__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_L1__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_L1__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_L1__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_L1__0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_L1__0_P_UNCONNECTED;
  wire [47:0]NLW_L1__0_PCOUT_UNCONNECTED;
  wire [3:3]NLW_L1_i_1_CO_UNCONNECTED;
  wire [0:0]NLW_L1_i_4_O_UNCONNECTED;
  wire NLW_L2__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_L2__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_L2__0_OVERFLOW_UNCONNECTED;
  wire NLW_L2__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_L2__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_L2__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_L2__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_L2__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_L2__0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_L2__0_P_UNCONNECTED;
  wire [47:0]NLW_L2__0_PCOUT_UNCONNECTED;
  wire [3:3]NLW_L2_i_1_CO_UNCONNECTED;
  wire NLW_MUL__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_MUL__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_MUL__0_OVERFLOW_UNCONNECTED;
  wire NLW_MUL__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_MUL__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_MUL__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_MUL__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_MUL__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_MUL__0_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_MUL__0_P_UNCONNECTED;
  wire [47:0]NLW_MUL__0_PCOUT_UNCONNECTED;
  wire [3:3]\NLW_SUM_OBUF[31]_inst_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("adder_multiplier_test_time_synth.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[10]_inst 
       (.I(A[10]),
        .O(A_IBUF[10]));
  IBUF \A_IBUF[11]_inst 
       (.I(A[11]),
        .O(A_IBUF[11]));
  IBUF \A_IBUF[12]_inst 
       (.I(A[12]),
        .O(A_IBUF[12]));
  IBUF \A_IBUF[13]_inst 
       (.I(A[13]),
        .O(A_IBUF[13]));
  IBUF \A_IBUF[14]_inst 
       (.I(A[14]),
        .O(A_IBUF[14]));
  IBUF \A_IBUF[15]_inst 
       (.I(A[15]),
        .O(A_IBUF[15]));
  IBUF \A_IBUF[16]_inst 
       (.I(A[16]),
        .O(A_IBUF[16]));
  IBUF \A_IBUF[17]_inst 
       (.I(A[17]),
        .O(A_IBUF[17]));
  IBUF \A_IBUF[18]_inst 
       (.I(A[18]),
        .O(A_IBUF[18]));
  IBUF \A_IBUF[19]_inst 
       (.I(A[19]),
        .O(A_IBUF[19]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[20]_inst 
       (.I(A[20]),
        .O(A_IBUF[20]));
  IBUF \A_IBUF[21]_inst 
       (.I(A[21]),
        .O(A_IBUF[21]));
  IBUF \A_IBUF[22]_inst 
       (.I(A[22]),
        .O(A_IBUF[22]));
  IBUF \A_IBUF[23]_inst 
       (.I(A[23]),
        .O(A_IBUF[23]));
  IBUF \A_IBUF[24]_inst 
       (.I(A[24]),
        .O(A_IBUF[24]));
  IBUF \A_IBUF[25]_inst 
       (.I(A[25]),
        .O(A_IBUF[25]));
  IBUF \A_IBUF[26]_inst 
       (.I(A[26]),
        .O(A_IBUF[26]));
  IBUF \A_IBUF[27]_inst 
       (.I(A[27]),
        .O(A_IBUF[27]));
  IBUF \A_IBUF[28]_inst 
       (.I(A[28]),
        .O(A_IBUF[28]));
  IBUF \A_IBUF[29]_inst 
       (.I(A[29]),
        .O(A_IBUF[29]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[30]_inst 
       (.I(A[30]),
        .O(A_IBUF[30]));
  IBUF \A_IBUF[31]_inst 
       (.I(A[31]),
        .O(A_IBUF[31]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \A_IBUF[8]_inst 
       (.I(A[8]),
        .O(A_IBUF[8]));
  IBUF \A_IBUF[9]_inst 
       (.I(A[9]),
        .O(A_IBUF[9]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[10]_inst 
       (.I(B[10]),
        .O(B_IBUF[10]));
  IBUF \B_IBUF[11]_inst 
       (.I(B[11]),
        .O(B_IBUF[11]));
  IBUF \B_IBUF[12]_inst 
       (.I(B[12]),
        .O(B_IBUF[12]));
  IBUF \B_IBUF[13]_inst 
       (.I(B[13]),
        .O(B_IBUF[13]));
  IBUF \B_IBUF[14]_inst 
       (.I(B[14]),
        .O(B_IBUF[14]));
  IBUF \B_IBUF[15]_inst 
       (.I(B[15]),
        .O(B_IBUF[15]));
  IBUF \B_IBUF[16]_inst 
       (.I(B[16]),
        .O(B_IBUF[16]));
  IBUF \B_IBUF[17]_inst 
       (.I(B[17]),
        .O(B_IBUF[17]));
  IBUF \B_IBUF[18]_inst 
       (.I(B[18]),
        .O(B_IBUF[18]));
  IBUF \B_IBUF[19]_inst 
       (.I(B[19]),
        .O(B_IBUF[19]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[20]_inst 
       (.I(B[20]),
        .O(B_IBUF[20]));
  IBUF \B_IBUF[21]_inst 
       (.I(B[21]),
        .O(B_IBUF[21]));
  IBUF \B_IBUF[22]_inst 
       (.I(B[22]),
        .O(B_IBUF[22]));
  IBUF \B_IBUF[23]_inst 
       (.I(B[23]),
        .O(B_IBUF[23]));
  IBUF \B_IBUF[24]_inst 
       (.I(B[24]),
        .O(B_IBUF[24]));
  IBUF \B_IBUF[25]_inst 
       (.I(B[25]),
        .O(B_IBUF[25]));
  IBUF \B_IBUF[26]_inst 
       (.I(B[26]),
        .O(B_IBUF[26]));
  IBUF \B_IBUF[27]_inst 
       (.I(B[27]),
        .O(B_IBUF[27]));
  IBUF \B_IBUF[28]_inst 
       (.I(B[28]),
        .O(B_IBUF[28]));
  IBUF \B_IBUF[29]_inst 
       (.I(B[29]),
        .O(B_IBUF[29]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[30]_inst 
       (.I(B[30]),
        .O(B_IBUF[30]));
  IBUF \B_IBUF[31]_inst 
       (.I(B[31]),
        .O(B_IBUF[31]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF \B_IBUF[8]_inst 
       (.I(B[8]),
        .O(B_IBUF[8]));
  IBUF \B_IBUF[9]_inst 
       (.I(B[9]),
        .O(B_IBUF[9]));
  IBUF \C_IBUF[0]_inst 
       (.I(C[0]),
        .O(C_IBUF[0]));
  IBUF \C_IBUF[10]_inst 
       (.I(C[10]),
        .O(C_IBUF[10]));
  IBUF \C_IBUF[11]_inst 
       (.I(C[11]),
        .O(C_IBUF[11]));
  IBUF \C_IBUF[12]_inst 
       (.I(C[12]),
        .O(C_IBUF[12]));
  IBUF \C_IBUF[13]_inst 
       (.I(C[13]),
        .O(C_IBUF[13]));
  IBUF \C_IBUF[14]_inst 
       (.I(C[14]),
        .O(C_IBUF[14]));
  IBUF \C_IBUF[15]_inst 
       (.I(C[15]),
        .O(C_IBUF[15]));
  IBUF \C_IBUF[1]_inst 
       (.I(C[1]),
        .O(C_IBUF[1]));
  IBUF \C_IBUF[2]_inst 
       (.I(C[2]),
        .O(C_IBUF[2]));
  IBUF \C_IBUF[3]_inst 
       (.I(C[3]),
        .O(C_IBUF[3]));
  IBUF \C_IBUF[4]_inst 
       (.I(C[4]),
        .O(C_IBUF[4]));
  IBUF \C_IBUF[5]_inst 
       (.I(C[5]),
        .O(C_IBUF[5]));
  IBUF \C_IBUF[6]_inst 
       (.I(C[6]),
        .O(C_IBUF[6]));
  IBUF \C_IBUF[7]_inst 
       (.I(C[7]),
        .O(C_IBUF[7]));
  IBUF \C_IBUF[8]_inst 
       (.I(C[8]),
        .O(C_IBUF[8]));
  IBUF \C_IBUF[9]_inst 
       (.I(C[9]),
        .O(C_IBUF[9]));
  OBUF \L1_OBUF[0]_inst 
       (.I(L1_OBUF[0]),
        .O(L1[0]));
  OBUF \L1_OBUF[10]_inst 
       (.I(L1_OBUF[10]),
        .O(L1[10]));
  OBUF \L1_OBUF[11]_inst 
       (.I(L1_OBUF[11]),
        .O(L1[11]));
  OBUF \L1_OBUF[12]_inst 
       (.I(L1_OBUF[12]),
        .O(L1[12]));
  OBUF \L1_OBUF[13]_inst 
       (.I(L1_OBUF[13]),
        .O(L1[13]));
  OBUF \L1_OBUF[14]_inst 
       (.I(L1_OBUF[14]),
        .O(L1[14]));
  OBUF \L1_OBUF[15]_inst 
       (.I(L1_OBUF[15]),
        .O(L1[15]));
  OBUF \L1_OBUF[16]_inst 
       (.I(L1_OBUF[16]),
        .O(L1[16]));
  OBUF \L1_OBUF[17]_inst 
       (.I(L1_OBUF[17]),
        .O(L1[17]));
  OBUF \L1_OBUF[18]_inst 
       (.I(L1_OBUF[18]),
        .O(L1[18]));
  OBUF \L1_OBUF[19]_inst 
       (.I(L1_OBUF[19]),
        .O(L1[19]));
  OBUF \L1_OBUF[1]_inst 
       (.I(L1_OBUF[1]),
        .O(L1[1]));
  OBUF \L1_OBUF[20]_inst 
       (.I(L1_OBUF[20]),
        .O(L1[20]));
  OBUF \L1_OBUF[21]_inst 
       (.I(L1_OBUF[21]),
        .O(L1[21]));
  OBUF \L1_OBUF[22]_inst 
       (.I(L1_OBUF[22]),
        .O(L1[22]));
  OBUF \L1_OBUF[23]_inst 
       (.I(L1_OBUF[23]),
        .O(L1[23]));
  OBUF \L1_OBUF[24]_inst 
       (.I(L1_OBUF[24]),
        .O(L1[24]));
  OBUF \L1_OBUF[25]_inst 
       (.I(L1_OBUF[25]),
        .O(L1[25]));
  OBUF \L1_OBUF[26]_inst 
       (.I(L1_OBUF[26]),
        .O(L1[26]));
  OBUF \L1_OBUF[27]_inst 
       (.I(L1_OBUF[27]),
        .O(L1[27]));
  OBUF \L1_OBUF[28]_inst 
       (.I(L1_OBUF[28]),
        .O(L1[28]));
  OBUF \L1_OBUF[29]_inst 
       (.I(L1_OBUF[29]),
        .O(L1[29]));
  OBUF \L1_OBUF[2]_inst 
       (.I(L1_OBUF[2]),
        .O(L1[2]));
  OBUF \L1_OBUF[30]_inst 
       (.I(L1_OBUF[30]),
        .O(L1[30]));
  OBUF \L1_OBUF[31]_inst 
       (.I(L1_OBUF[31]),
        .O(L1[31]));
  OBUF \L1_OBUF[3]_inst 
       (.I(L1_OBUF[3]),
        .O(L1[3]));
  OBUF \L1_OBUF[4]_inst 
       (.I(L1_OBUF[4]),
        .O(L1[4]));
  OBUF \L1_OBUF[5]_inst 
       (.I(L1_OBUF[5]),
        .O(L1[5]));
  OBUF \L1_OBUF[6]_inst 
       (.I(L1_OBUF[6]),
        .O(L1[6]));
  OBUF \L1_OBUF[7]_inst 
       (.I(L1_OBUF[7]),
        .O(L1[7]));
  OBUF \L1_OBUF[8]_inst 
       (.I(L1_OBUF[8]),
        .O(L1[8]));
  OBUF \L1_OBUF[9]_inst 
       (.I(L1_OBUF[9]),
        .O(L1[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    L1__0
       (.A({L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_4,L1_i_1_n_5,L1_i_1_n_6,L1_i_1_n_7,L1_i_2_n_4,L1_i_2_n_5,L1_i_2_n_6,L1_i_2_n_7,L1_i_3_n_4,L1_i_3_n_5,L1_i_3_n_6,L1_i_3_n_7,L1_i_4_n_4,L1_i_4_n_5,L1_i_4_n_6,L1_i_5_n_0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_L1__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({C_IBUF[15],C_IBUF[15],C_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_L1__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_L1__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_L1__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_L1__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_L1__0_OVERFLOW_UNCONNECTED),
        .P({NLW_L1__0_P_UNCONNECTED[47:32],L1_OBUF}),
        .PATTERNBDETECT(NLW_L1__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_L1__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_L1__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_L1__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L1_i_1
       (.CI(L1_i_2_n_0),
        .CO({NLW_L1_i_1_CO_UNCONNECTED[3],L1_i_1_n_1,L1_i_1_n_2,L1_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A_IBUF[14:12]}),
        .O({L1_i_1_n_4,L1_i_1_n_5,L1_i_1_n_6,L1_i_1_n_7}),
        .S({L1_i_6_n_0,L1_i_7_n_0,L1_i_8_n_0,L1_i_9_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_10
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .O(L1_i_10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_11
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .O(L1_i_11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_12
       (.I0(A_IBUF[9]),
        .I1(B_IBUF[9]),
        .O(L1_i_12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_13
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .O(L1_i_13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_14
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(L1_i_14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_15
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(L1_i_15_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_16
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(L1_i_16_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_17
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(L1_i_17_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_18
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(L1_i_18_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_19
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(L1_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L1_i_2
       (.CI(L1_i_3_n_0),
        .CO({L1_i_2_n_0,L1_i_2_n_1,L1_i_2_n_2,L1_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(A_IBUF[11:8]),
        .O({L1_i_2_n_4,L1_i_2_n_5,L1_i_2_n_6,L1_i_2_n_7}),
        .S({L1_i_10_n_0,L1_i_11_n_0,L1_i_12_n_0,L1_i_13_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_20
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(L1_i_20_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_21
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(L1_i_21_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L1_i_3
       (.CI(L1_i_4_n_0),
        .CO({L1_i_3_n_0,L1_i_3_n_1,L1_i_3_n_2,L1_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O({L1_i_3_n_4,L1_i_3_n_5,L1_i_3_n_6,L1_i_3_n_7}),
        .S({L1_i_14_n_0,L1_i_15_n_0,L1_i_16_n_0,L1_i_17_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L1_i_4
       (.CI(1'b0),
        .CO({L1_i_4_n_0,L1_i_4_n_1,L1_i_4_n_2,L1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI(A_IBUF[3:0]),
        .O({L1_i_4_n_4,L1_i_4_n_5,L1_i_4_n_6,NLW_L1_i_4_O_UNCONNECTED[0]}),
        .S({L1_i_18_n_0,L1_i_19_n_0,L1_i_20_n_0,L1_i_21_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_5
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(L1_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_6
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .O(L1_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_7
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .O(L1_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_8
       (.I0(A_IBUF[13]),
        .I1(B_IBUF[13]),
        .O(L1_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    L1_i_9
       (.I0(A_IBUF[12]),
        .I1(B_IBUF[12]),
        .O(L1_i_9_n_0));
  OBUF \L2_OBUF[0]_inst 
       (.I(L2_OBUF[0]),
        .O(L2[0]));
  OBUF \L2_OBUF[10]_inst 
       (.I(L2_OBUF[10]),
        .O(L2[10]));
  OBUF \L2_OBUF[11]_inst 
       (.I(L2_OBUF[11]),
        .O(L2[11]));
  OBUF \L2_OBUF[12]_inst 
       (.I(L2_OBUF[12]),
        .O(L2[12]));
  OBUF \L2_OBUF[13]_inst 
       (.I(L2_OBUF[13]),
        .O(L2[13]));
  OBUF \L2_OBUF[14]_inst 
       (.I(L2_OBUF[14]),
        .O(L2[14]));
  OBUF \L2_OBUF[15]_inst 
       (.I(L2_OBUF[15]),
        .O(L2[15]));
  OBUF \L2_OBUF[16]_inst 
       (.I(L2_OBUF[16]),
        .O(L2[16]));
  OBUF \L2_OBUF[17]_inst 
       (.I(L2_OBUF[17]),
        .O(L2[17]));
  OBUF \L2_OBUF[18]_inst 
       (.I(L2_OBUF[18]),
        .O(L2[18]));
  OBUF \L2_OBUF[19]_inst 
       (.I(L2_OBUF[19]),
        .O(L2[19]));
  OBUF \L2_OBUF[1]_inst 
       (.I(L2_OBUF[1]),
        .O(L2[1]));
  OBUF \L2_OBUF[20]_inst 
       (.I(L2_OBUF[20]),
        .O(L2[20]));
  OBUF \L2_OBUF[21]_inst 
       (.I(L2_OBUF[21]),
        .O(L2[21]));
  OBUF \L2_OBUF[22]_inst 
       (.I(L2_OBUF[22]),
        .O(L2[22]));
  OBUF \L2_OBUF[23]_inst 
       (.I(L2_OBUF[23]),
        .O(L2[23]));
  OBUF \L2_OBUF[24]_inst 
       (.I(L2_OBUF[24]),
        .O(L2[24]));
  OBUF \L2_OBUF[25]_inst 
       (.I(L2_OBUF[25]),
        .O(L2[25]));
  OBUF \L2_OBUF[26]_inst 
       (.I(L2_OBUF[26]),
        .O(L2[26]));
  OBUF \L2_OBUF[27]_inst 
       (.I(L2_OBUF[27]),
        .O(L2[27]));
  OBUF \L2_OBUF[28]_inst 
       (.I(L2_OBUF[28]),
        .O(L2[28]));
  OBUF \L2_OBUF[29]_inst 
       (.I(L2_OBUF[29]),
        .O(L2[29]));
  OBUF \L2_OBUF[2]_inst 
       (.I(L2_OBUF[2]),
        .O(L2[2]));
  OBUF \L2_OBUF[30]_inst 
       (.I(L2_OBUF[30]),
        .O(L2[30]));
  OBUF \L2_OBUF[31]_inst 
       (.I(L2_OBUF[31]),
        .O(L2[31]));
  OBUF \L2_OBUF[3]_inst 
       (.I(L2_OBUF[3]),
        .O(L2[3]));
  OBUF \L2_OBUF[4]_inst 
       (.I(L2_OBUF[4]),
        .O(L2[4]));
  OBUF \L2_OBUF[5]_inst 
       (.I(L2_OBUF[5]),
        .O(L2[5]));
  OBUF \L2_OBUF[6]_inst 
       (.I(L2_OBUF[6]),
        .O(L2[6]));
  OBUF \L2_OBUF[7]_inst 
       (.I(L2_OBUF[7]),
        .O(L2[7]));
  OBUF \L2_OBUF[8]_inst 
       (.I(L2_OBUF[8]),
        .O(L2[8]));
  OBUF \L2_OBUF[9]_inst 
       (.I(L2_OBUF[9]),
        .O(L2[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    L2__0
       (.A({L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_4,L2_i_1_n_5,L2_i_1_n_6,L2_i_1_n_7,L2_i_2_n_4,L2_i_2_n_5,L2_i_2_n_6,L2_i_2_n_7,L2_i_3_n_4,L2_i_3_n_5,L2_i_3_n_6,L2_i_3_n_7,L2_i_4_n_4,L2_i_4_n_5,L2_i_4_n_6,L2_i_4_n_7}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_L2__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({C_IBUF[15],C_IBUF[15],C_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_L2__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_L2__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_L2__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_L2__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_L2__0_OVERFLOW_UNCONNECTED),
        .P({NLW_L2__0_P_UNCONNECTED[47:32],L2_OBUF}),
        .PATTERNBDETECT(NLW_L2__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_L2__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_L2__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_L2__0_UNDERFLOW_UNCONNECTED));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L2_i_1
       (.CI(L2_i_2_n_0),
        .CO({NLW_L2_i_1_CO_UNCONNECTED[3],L2_i_1_n_1,L2_i_1_n_2,L2_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A_IBUF[14:12]}),
        .O({L2_i_1_n_4,L2_i_1_n_5,L2_i_1_n_6,L2_i_1_n_7}),
        .S({L2_i_5_n_0,L2_i_6_n_0,L2_i_7_n_0,L2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_10
       (.I0(B_IBUF[10]),
        .I1(A_IBUF[10]),
        .O(L2_i_10_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_11
       (.I0(B_IBUF[9]),
        .I1(A_IBUF[9]),
        .O(L2_i_11_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_12
       (.I0(B_IBUF[8]),
        .I1(A_IBUF[8]),
        .O(L2_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_13
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .O(L2_i_13_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_14
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .O(L2_i_14_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_15
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .O(L2_i_15_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_16
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(L2_i_16_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_17
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .O(L2_i_17_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_18
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .O(L2_i_18_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_19
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .O(L2_i_19_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L2_i_2
       (.CI(L2_i_3_n_0),
        .CO({L2_i_2_n_0,L2_i_2_n_1,L2_i_2_n_2,L2_i_2_n_3}),
        .CYINIT(1'b0),
        .DI(A_IBUF[11:8]),
        .O({L2_i_2_n_4,L2_i_2_n_5,L2_i_2_n_6,L2_i_2_n_7}),
        .S({L2_i_9_n_0,L2_i_10_n_0,L2_i_11_n_0,L2_i_12_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_20
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(L2_i_20_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L2_i_3
       (.CI(L2_i_4_n_0),
        .CO({L2_i_3_n_0,L2_i_3_n_1,L2_i_3_n_2,L2_i_3_n_3}),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O({L2_i_3_n_4,L2_i_3_n_5,L2_i_3_n_6,L2_i_3_n_7}),
        .S({L2_i_13_n_0,L2_i_14_n_0,L2_i_15_n_0,L2_i_16_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 L2_i_4
       (.CI(1'b0),
        .CO({L2_i_4_n_0,L2_i_4_n_1,L2_i_4_n_2,L2_i_4_n_3}),
        .CYINIT(1'b1),
        .DI(A_IBUF[3:0]),
        .O({L2_i_4_n_4,L2_i_4_n_5,L2_i_4_n_6,L2_i_4_n_7}),
        .S({L2_i_17_n_0,L2_i_18_n_0,L2_i_19_n_0,L2_i_20_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_5
       (.I0(B_IBUF[15]),
        .I1(A_IBUF[15]),
        .O(L2_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_6
       (.I0(B_IBUF[14]),
        .I1(A_IBUF[14]),
        .O(L2_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_7
       (.I0(B_IBUF[13]),
        .I1(A_IBUF[13]),
        .O(L2_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_8
       (.I0(B_IBUF[12]),
        .I1(A_IBUF[12]),
        .O(L2_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    L2_i_9
       (.I0(B_IBUF[11]),
        .I1(A_IBUF[11]),
        .O(L2_i_9_n_0));
  OBUF \MUL_OBUF[0]_inst 
       (.I(MUL_OBUF[0]),
        .O(MUL[0]));
  OBUF \MUL_OBUF[10]_inst 
       (.I(MUL_OBUF[10]),
        .O(MUL[10]));
  OBUF \MUL_OBUF[11]_inst 
       (.I(MUL_OBUF[11]),
        .O(MUL[11]));
  OBUF \MUL_OBUF[12]_inst 
       (.I(MUL_OBUF[12]),
        .O(MUL[12]));
  OBUF \MUL_OBUF[13]_inst 
       (.I(MUL_OBUF[13]),
        .O(MUL[13]));
  OBUF \MUL_OBUF[14]_inst 
       (.I(MUL_OBUF[14]),
        .O(MUL[14]));
  OBUF \MUL_OBUF[15]_inst 
       (.I(MUL_OBUF[15]),
        .O(MUL[15]));
  OBUF \MUL_OBUF[16]_inst 
       (.I(MUL_OBUF[16]),
        .O(MUL[16]));
  OBUF \MUL_OBUF[17]_inst 
       (.I(MUL_OBUF[17]),
        .O(MUL[17]));
  OBUF \MUL_OBUF[18]_inst 
       (.I(MUL_OBUF[18]),
        .O(MUL[18]));
  OBUF \MUL_OBUF[19]_inst 
       (.I(MUL_OBUF[19]),
        .O(MUL[19]));
  OBUF \MUL_OBUF[1]_inst 
       (.I(MUL_OBUF[1]),
        .O(MUL[1]));
  OBUF \MUL_OBUF[20]_inst 
       (.I(MUL_OBUF[20]),
        .O(MUL[20]));
  OBUF \MUL_OBUF[21]_inst 
       (.I(MUL_OBUF[21]),
        .O(MUL[21]));
  OBUF \MUL_OBUF[22]_inst 
       (.I(MUL_OBUF[22]),
        .O(MUL[22]));
  OBUF \MUL_OBUF[23]_inst 
       (.I(MUL_OBUF[23]),
        .O(MUL[23]));
  OBUF \MUL_OBUF[24]_inst 
       (.I(MUL_OBUF[24]),
        .O(MUL[24]));
  OBUF \MUL_OBUF[25]_inst 
       (.I(MUL_OBUF[25]),
        .O(MUL[25]));
  OBUF \MUL_OBUF[26]_inst 
       (.I(MUL_OBUF[26]),
        .O(MUL[26]));
  OBUF \MUL_OBUF[27]_inst 
       (.I(MUL_OBUF[27]),
        .O(MUL[27]));
  OBUF \MUL_OBUF[28]_inst 
       (.I(MUL_OBUF[28]),
        .O(MUL[28]));
  OBUF \MUL_OBUF[29]_inst 
       (.I(MUL_OBUF[29]),
        .O(MUL[29]));
  OBUF \MUL_OBUF[2]_inst 
       (.I(MUL_OBUF[2]),
        .O(MUL[2]));
  OBUF \MUL_OBUF[30]_inst 
       (.I(MUL_OBUF[30]),
        .O(MUL[30]));
  OBUF \MUL_OBUF[31]_inst 
       (.I(MUL_OBUF[31]),
        .O(MUL[31]));
  OBUF \MUL_OBUF[3]_inst 
       (.I(MUL_OBUF[3]),
        .O(MUL[3]));
  OBUF \MUL_OBUF[4]_inst 
       (.I(MUL_OBUF[4]),
        .O(MUL[4]));
  OBUF \MUL_OBUF[5]_inst 
       (.I(MUL_OBUF[5]),
        .O(MUL[5]));
  OBUF \MUL_OBUF[6]_inst 
       (.I(MUL_OBUF[6]),
        .O(MUL[6]));
  OBUF \MUL_OBUF[7]_inst 
       (.I(MUL_OBUF[7]),
        .O(MUL[7]));
  OBUF \MUL_OBUF[8]_inst 
       (.I(MUL_OBUF[8]),
        .O(MUL[8]));
  OBUF \MUL_OBUF[9]_inst 
       (.I(MUL_OBUF[9]),
        .O(MUL[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    MUL__0
       (.A({A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15],A_IBUF[15:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_MUL__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B_IBUF[15],B_IBUF[15],B_IBUF[15:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_MUL__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_MUL__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_MUL__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_MUL__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_MUL__0_OVERFLOW_UNCONNECTED),
        .P({NLW_MUL__0_P_UNCONNECTED[47:32],MUL_OBUF}),
        .PATTERNBDETECT(NLW_MUL__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_MUL__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_MUL__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_MUL__0_UNDERFLOW_UNCONNECTED));
  OBUF \SUM_OBUF[0]_inst 
       (.I(SUM_OBUF[0]),
        .O(SUM[0]));
  OBUF \SUM_OBUF[10]_inst 
       (.I(SUM_OBUF[10]),
        .O(SUM[10]));
  OBUF \SUM_OBUF[11]_inst 
       (.I(SUM_OBUF[11]),
        .O(SUM[11]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[11]_inst_i_1 
       (.CI(\SUM_OBUF[7]_inst_i_1_n_0 ),
        .CO({\SUM_OBUF[11]_inst_i_1_n_0 ,\SUM_OBUF[11]_inst_i_1_n_1 ,\SUM_OBUF[11]_inst_i_1_n_2 ,\SUM_OBUF[11]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[11:8]),
        .O(SUM_OBUF[11:8]),
        .S({\SUM_OBUF[11]_inst_i_2_n_0 ,\SUM_OBUF[11]_inst_i_3_n_0 ,\SUM_OBUF[11]_inst_i_4_n_0 ,\SUM_OBUF[11]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[11]_inst_i_2 
       (.I0(A_IBUF[11]),
        .I1(B_IBUF[11]),
        .O(\SUM_OBUF[11]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[11]_inst_i_3 
       (.I0(A_IBUF[10]),
        .I1(B_IBUF[10]),
        .O(\SUM_OBUF[11]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[11]_inst_i_4 
       (.I0(A_IBUF[9]),
        .I1(B_IBUF[9]),
        .O(\SUM_OBUF[11]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[11]_inst_i_5 
       (.I0(A_IBUF[8]),
        .I1(B_IBUF[8]),
        .O(\SUM_OBUF[11]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[12]_inst 
       (.I(SUM_OBUF[12]),
        .O(SUM[12]));
  OBUF \SUM_OBUF[13]_inst 
       (.I(SUM_OBUF[13]),
        .O(SUM[13]));
  OBUF \SUM_OBUF[14]_inst 
       (.I(SUM_OBUF[14]),
        .O(SUM[14]));
  OBUF \SUM_OBUF[15]_inst 
       (.I(SUM_OBUF[15]),
        .O(SUM[15]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[15]_inst_i_1 
       (.CI(\SUM_OBUF[11]_inst_i_1_n_0 ),
        .CO({\SUM_OBUF[15]_inst_i_1_n_0 ,\SUM_OBUF[15]_inst_i_1_n_1 ,\SUM_OBUF[15]_inst_i_1_n_2 ,\SUM_OBUF[15]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[15:12]),
        .O(SUM_OBUF[15:12]),
        .S({\SUM_OBUF[15]_inst_i_2_n_0 ,\SUM_OBUF[15]_inst_i_3_n_0 ,\SUM_OBUF[15]_inst_i_4_n_0 ,\SUM_OBUF[15]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[15]_inst_i_2 
       (.I0(A_IBUF[15]),
        .I1(B_IBUF[15]),
        .O(\SUM_OBUF[15]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[15]_inst_i_3 
       (.I0(A_IBUF[14]),
        .I1(B_IBUF[14]),
        .O(\SUM_OBUF[15]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[15]_inst_i_4 
       (.I0(A_IBUF[13]),
        .I1(B_IBUF[13]),
        .O(\SUM_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[15]_inst_i_5 
       (.I0(A_IBUF[12]),
        .I1(B_IBUF[12]),
        .O(\SUM_OBUF[15]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[16]_inst 
       (.I(SUM_OBUF[16]),
        .O(SUM[16]));
  OBUF \SUM_OBUF[17]_inst 
       (.I(SUM_OBUF[17]),
        .O(SUM[17]));
  OBUF \SUM_OBUF[18]_inst 
       (.I(SUM_OBUF[18]),
        .O(SUM[18]));
  OBUF \SUM_OBUF[19]_inst 
       (.I(SUM_OBUF[19]),
        .O(SUM[19]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[19]_inst_i_1 
       (.CI(\SUM_OBUF[15]_inst_i_1_n_0 ),
        .CO({\SUM_OBUF[19]_inst_i_1_n_0 ,\SUM_OBUF[19]_inst_i_1_n_1 ,\SUM_OBUF[19]_inst_i_1_n_2 ,\SUM_OBUF[19]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[19:16]),
        .O(SUM_OBUF[19:16]),
        .S({\SUM_OBUF[19]_inst_i_2_n_0 ,\SUM_OBUF[19]_inst_i_3_n_0 ,\SUM_OBUF[19]_inst_i_4_n_0 ,\SUM_OBUF[19]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[19]_inst_i_2 
       (.I0(A_IBUF[19]),
        .I1(B_IBUF[19]),
        .O(\SUM_OBUF[19]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[19]_inst_i_3 
       (.I0(A_IBUF[18]),
        .I1(B_IBUF[18]),
        .O(\SUM_OBUF[19]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[19]_inst_i_4 
       (.I0(A_IBUF[17]),
        .I1(B_IBUF[17]),
        .O(\SUM_OBUF[19]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[19]_inst_i_5 
       (.I0(A_IBUF[16]),
        .I1(B_IBUF[16]),
        .O(\SUM_OBUF[19]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[1]_inst 
       (.I(SUM_OBUF[1]),
        .O(SUM[1]));
  OBUF \SUM_OBUF[20]_inst 
       (.I(SUM_OBUF[20]),
        .O(SUM[20]));
  OBUF \SUM_OBUF[21]_inst 
       (.I(SUM_OBUF[21]),
        .O(SUM[21]));
  OBUF \SUM_OBUF[22]_inst 
       (.I(SUM_OBUF[22]),
        .O(SUM[22]));
  OBUF \SUM_OBUF[23]_inst 
       (.I(SUM_OBUF[23]),
        .O(SUM[23]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[23]_inst_i_1 
       (.CI(\SUM_OBUF[19]_inst_i_1_n_0 ),
        .CO({\SUM_OBUF[23]_inst_i_1_n_0 ,\SUM_OBUF[23]_inst_i_1_n_1 ,\SUM_OBUF[23]_inst_i_1_n_2 ,\SUM_OBUF[23]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[23:20]),
        .O(SUM_OBUF[23:20]),
        .S({\SUM_OBUF[23]_inst_i_2_n_0 ,\SUM_OBUF[23]_inst_i_3_n_0 ,\SUM_OBUF[23]_inst_i_4_n_0 ,\SUM_OBUF[23]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[23]_inst_i_2 
       (.I0(A_IBUF[23]),
        .I1(B_IBUF[23]),
        .O(\SUM_OBUF[23]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[23]_inst_i_3 
       (.I0(A_IBUF[22]),
        .I1(B_IBUF[22]),
        .O(\SUM_OBUF[23]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[23]_inst_i_4 
       (.I0(A_IBUF[21]),
        .I1(B_IBUF[21]),
        .O(\SUM_OBUF[23]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[23]_inst_i_5 
       (.I0(A_IBUF[20]),
        .I1(B_IBUF[20]),
        .O(\SUM_OBUF[23]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[24]_inst 
       (.I(SUM_OBUF[24]),
        .O(SUM[24]));
  OBUF \SUM_OBUF[25]_inst 
       (.I(SUM_OBUF[25]),
        .O(SUM[25]));
  OBUF \SUM_OBUF[26]_inst 
       (.I(SUM_OBUF[26]),
        .O(SUM[26]));
  OBUF \SUM_OBUF[27]_inst 
       (.I(SUM_OBUF[27]),
        .O(SUM[27]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[27]_inst_i_1 
       (.CI(\SUM_OBUF[23]_inst_i_1_n_0 ),
        .CO({\SUM_OBUF[27]_inst_i_1_n_0 ,\SUM_OBUF[27]_inst_i_1_n_1 ,\SUM_OBUF[27]_inst_i_1_n_2 ,\SUM_OBUF[27]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[27:24]),
        .O(SUM_OBUF[27:24]),
        .S({\SUM_OBUF[27]_inst_i_2_n_0 ,\SUM_OBUF[27]_inst_i_3_n_0 ,\SUM_OBUF[27]_inst_i_4_n_0 ,\SUM_OBUF[27]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[27]_inst_i_2 
       (.I0(A_IBUF[27]),
        .I1(B_IBUF[27]),
        .O(\SUM_OBUF[27]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[27]_inst_i_3 
       (.I0(A_IBUF[26]),
        .I1(B_IBUF[26]),
        .O(\SUM_OBUF[27]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[27]_inst_i_4 
       (.I0(A_IBUF[25]),
        .I1(B_IBUF[25]),
        .O(\SUM_OBUF[27]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[27]_inst_i_5 
       (.I0(A_IBUF[24]),
        .I1(B_IBUF[24]),
        .O(\SUM_OBUF[27]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[28]_inst 
       (.I(SUM_OBUF[28]),
        .O(SUM[28]));
  OBUF \SUM_OBUF[29]_inst 
       (.I(SUM_OBUF[29]),
        .O(SUM[29]));
  OBUF \SUM_OBUF[2]_inst 
       (.I(SUM_OBUF[2]),
        .O(SUM[2]));
  OBUF \SUM_OBUF[30]_inst 
       (.I(SUM_OBUF[30]),
        .O(SUM[30]));
  OBUF \SUM_OBUF[31]_inst 
       (.I(SUM_OBUF[31]),
        .O(SUM[31]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[31]_inst_i_1 
       (.CI(\SUM_OBUF[27]_inst_i_1_n_0 ),
        .CO({\NLW_SUM_OBUF[31]_inst_i_1_CO_UNCONNECTED [3],\SUM_OBUF[31]_inst_i_1_n_1 ,\SUM_OBUF[31]_inst_i_1_n_2 ,\SUM_OBUF[31]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,A_IBUF[30:28]}),
        .O(SUM_OBUF[31:28]),
        .S({\SUM_OBUF[31]_inst_i_2_n_0 ,\SUM_OBUF[31]_inst_i_3_n_0 ,\SUM_OBUF[31]_inst_i_4_n_0 ,\SUM_OBUF[31]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[31]_inst_i_2 
       (.I0(A_IBUF[31]),
        .I1(B_IBUF[31]),
        .O(\SUM_OBUF[31]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[31]_inst_i_3 
       (.I0(A_IBUF[30]),
        .I1(B_IBUF[30]),
        .O(\SUM_OBUF[31]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[31]_inst_i_4 
       (.I0(A_IBUF[29]),
        .I1(B_IBUF[29]),
        .O(\SUM_OBUF[31]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[31]_inst_i_5 
       (.I0(A_IBUF[28]),
        .I1(B_IBUF[28]),
        .O(\SUM_OBUF[31]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[3]_inst 
       (.I(SUM_OBUF[3]),
        .O(SUM[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({\SUM_OBUF[3]_inst_i_1_n_0 ,\SUM_OBUF[3]_inst_i_1_n_1 ,\SUM_OBUF[3]_inst_i_1_n_2 ,\SUM_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[3:0]),
        .O(SUM_OBUF[3:0]),
        .S({\SUM_OBUF[3]_inst_i_2_n_0 ,\SUM_OBUF[3]_inst_i_3_n_0 ,\SUM_OBUF[3]_inst_i_4_n_0 ,\SUM_OBUF[3]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\SUM_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[3]_inst_i_3 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\SUM_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[3]_inst_i_4 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\SUM_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[3]_inst_i_5 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\SUM_OBUF[3]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[4]_inst 
       (.I(SUM_OBUF[4]),
        .O(SUM[4]));
  OBUF \SUM_OBUF[5]_inst 
       (.I(SUM_OBUF[5]),
        .O(SUM[5]));
  OBUF \SUM_OBUF[6]_inst 
       (.I(SUM_OBUF[6]),
        .O(SUM[6]));
  OBUF \SUM_OBUF[7]_inst 
       (.I(SUM_OBUF[7]),
        .O(SUM[7]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \SUM_OBUF[7]_inst_i_1 
       (.CI(\SUM_OBUF[3]_inst_i_1_n_0 ),
        .CO({\SUM_OBUF[7]_inst_i_1_n_0 ,\SUM_OBUF[7]_inst_i_1_n_1 ,\SUM_OBUF[7]_inst_i_1_n_2 ,\SUM_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O(SUM_OBUF[7:4]),
        .S({\SUM_OBUF[7]_inst_i_2_n_0 ,\SUM_OBUF[7]_inst_i_3_n_0 ,\SUM_OBUF[7]_inst_i_4_n_0 ,\SUM_OBUF[7]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[7]_inst_i_2 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\SUM_OBUF[7]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[7]_inst_i_3 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\SUM_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[7]_inst_i_4 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\SUM_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SUM_OBUF[7]_inst_i_5 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(\SUM_OBUF[7]_inst_i_5_n_0 ));
  OBUF \SUM_OBUF[8]_inst 
       (.I(SUM_OBUF[8]),
        .O(SUM[8]));
  OBUF \SUM_OBUF[9]_inst 
       (.I(SUM_OBUF[9]),
        .O(SUM[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
