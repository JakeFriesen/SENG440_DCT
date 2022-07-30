// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul 30 15:44:56 2022
// Host        : DESKTOP-V98EE8P running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Git/SENG440_DCT/Hardware/Vivado
//               Projects/Butterfly/project_1/project_1.sim/sim_1/synth/timing/xsim/butterfly_testbench_time_synth.v}
// Design      : butterfly
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module butterfly
   (I1,
    I2,
    C1,
    C2,
    O);
  input [15:0]I1;
  input [15:0]I2;
  input [15:0]C1;
  input [15:0]C2;
  output [31:0]O;

  wire [15:0]C1;
  wire [15:0]C1_IBUF;
  wire [15:0]C2;
  wire [15:0]C2_IBUF;
  wire [15:0]I1;
  wire [15:0]I1_IBUF;
  wire [15:0]I2;
  wire [15:0]I2_IBUF;
  wire [31:0]O;
  wire [31:0]O_OBUF;
  wire [15:0]temp1__0;
  wire temp1_n_74;
  wire temp1_n_75;
  wire temp1_n_76;
  wire temp1_n_77;
  wire temp1_n_78;
  wire temp1_n_79;
  wire temp1_n_80;
  wire temp1_n_81;
  wire temp1_n_82;
  wire temp1_n_83;
  wire temp1_n_84;
  wire temp1_n_85;
  wire temp1_n_86;
  wire temp1_n_87;
  wire temp1_n_88;
  wire temp1_n_89;
  wire [15:0]temp4__0;
  wire temp4_n_74;
  wire temp4_n_75;
  wire temp4_n_76;
  wire temp4_n_77;
  wire temp4_n_78;
  wire temp4_n_79;
  wire temp4_n_80;
  wire temp4_n_81;
  wire temp4_n_82;
  wire temp4_n_83;
  wire temp4_n_84;
  wire temp4_n_85;
  wire temp4_n_86;
  wire temp4_n_87;
  wire temp4_n_88;
  wire temp4_n_89;
  wire NLW_temp1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp1_OVERFLOW_UNCONNECTED;
  wire NLW_temp1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp1_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp1_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp1_P_UNCONNECTED;
  wire [47:0]NLW_temp1_PCOUT_UNCONNECTED;
  wire NLW_temp4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp4_OVERFLOW_UNCONNECTED;
  wire NLW_temp4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp4_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp4_CARRYOUT_UNCONNECTED;
  wire [47:32]NLW_temp4_P_UNCONNECTED;
  wire [47:0]NLW_temp4_PCOUT_UNCONNECTED;
  wire NLW_temp5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp5_OVERFLOW_UNCONNECTED;
  wire NLW_temp5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp5_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp5_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_temp5_P_UNCONNECTED;
  wire [47:0]NLW_temp5_PCOUT_UNCONNECTED;
  wire NLW_temp6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_temp6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_temp6_OVERFLOW_UNCONNECTED;
  wire NLW_temp6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_temp6_PATTERNDETECT_UNCONNECTED;
  wire NLW_temp6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_temp6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_temp6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_temp6_CARRYOUT_UNCONNECTED;
  wire [47:16]NLW_temp6_P_UNCONNECTED;
  wire [47:0]NLW_temp6_PCOUT_UNCONNECTED;

initial begin
 $sdf_annotate("butterfly_testbench_time_synth.sdf",,,,"tool_control");
end
  IBUF \C1_IBUF[0]_inst 
       (.I(C1[0]),
        .O(C1_IBUF[0]));
  IBUF \C1_IBUF[10]_inst 
       (.I(C1[10]),
        .O(C1_IBUF[10]));
  IBUF \C1_IBUF[11]_inst 
       (.I(C1[11]),
        .O(C1_IBUF[11]));
  IBUF \C1_IBUF[12]_inst 
       (.I(C1[12]),
        .O(C1_IBUF[12]));
  IBUF \C1_IBUF[13]_inst 
       (.I(C1[13]),
        .O(C1_IBUF[13]));
  IBUF \C1_IBUF[14]_inst 
       (.I(C1[14]),
        .O(C1_IBUF[14]));
  IBUF \C1_IBUF[15]_inst 
       (.I(C1[15]),
        .O(C1_IBUF[15]));
  IBUF \C1_IBUF[1]_inst 
       (.I(C1[1]),
        .O(C1_IBUF[1]));
  IBUF \C1_IBUF[2]_inst 
       (.I(C1[2]),
        .O(C1_IBUF[2]));
  IBUF \C1_IBUF[3]_inst 
       (.I(C1[3]),
        .O(C1_IBUF[3]));
  IBUF \C1_IBUF[4]_inst 
       (.I(C1[4]),
        .O(C1_IBUF[4]));
  IBUF \C1_IBUF[5]_inst 
       (.I(C1[5]),
        .O(C1_IBUF[5]));
  IBUF \C1_IBUF[6]_inst 
       (.I(C1[6]),
        .O(C1_IBUF[6]));
  IBUF \C1_IBUF[7]_inst 
       (.I(C1[7]),
        .O(C1_IBUF[7]));
  IBUF \C1_IBUF[8]_inst 
       (.I(C1[8]),
        .O(C1_IBUF[8]));
  IBUF \C1_IBUF[9]_inst 
       (.I(C1[9]),
        .O(C1_IBUF[9]));
  IBUF \C2_IBUF[0]_inst 
       (.I(C2[0]),
        .O(C2_IBUF[0]));
  IBUF \C2_IBUF[10]_inst 
       (.I(C2[10]),
        .O(C2_IBUF[10]));
  IBUF \C2_IBUF[11]_inst 
       (.I(C2[11]),
        .O(C2_IBUF[11]));
  IBUF \C2_IBUF[12]_inst 
       (.I(C2[12]),
        .O(C2_IBUF[12]));
  IBUF \C2_IBUF[13]_inst 
       (.I(C2[13]),
        .O(C2_IBUF[13]));
  IBUF \C2_IBUF[14]_inst 
       (.I(C2[14]),
        .O(C2_IBUF[14]));
  IBUF \C2_IBUF[15]_inst 
       (.I(C2[15]),
        .O(C2_IBUF[15]));
  IBUF \C2_IBUF[1]_inst 
       (.I(C2[1]),
        .O(C2_IBUF[1]));
  IBUF \C2_IBUF[2]_inst 
       (.I(C2[2]),
        .O(C2_IBUF[2]));
  IBUF \C2_IBUF[3]_inst 
       (.I(C2[3]),
        .O(C2_IBUF[3]));
  IBUF \C2_IBUF[4]_inst 
       (.I(C2[4]),
        .O(C2_IBUF[4]));
  IBUF \C2_IBUF[5]_inst 
       (.I(C2[5]),
        .O(C2_IBUF[5]));
  IBUF \C2_IBUF[6]_inst 
       (.I(C2[6]),
        .O(C2_IBUF[6]));
  IBUF \C2_IBUF[7]_inst 
       (.I(C2[7]),
        .O(C2_IBUF[7]));
  IBUF \C2_IBUF[8]_inst 
       (.I(C2[8]),
        .O(C2_IBUF[8]));
  IBUF \C2_IBUF[9]_inst 
       (.I(C2[9]),
        .O(C2_IBUF[9]));
  IBUF \I1_IBUF[0]_inst 
       (.I(I1[0]),
        .O(I1_IBUF[0]));
  IBUF \I1_IBUF[10]_inst 
       (.I(I1[10]),
        .O(I1_IBUF[10]));
  IBUF \I1_IBUF[11]_inst 
       (.I(I1[11]),
        .O(I1_IBUF[11]));
  IBUF \I1_IBUF[12]_inst 
       (.I(I1[12]),
        .O(I1_IBUF[12]));
  IBUF \I1_IBUF[13]_inst 
       (.I(I1[13]),
        .O(I1_IBUF[13]));
  IBUF \I1_IBUF[14]_inst 
       (.I(I1[14]),
        .O(I1_IBUF[14]));
  IBUF \I1_IBUF[15]_inst 
       (.I(I1[15]),
        .O(I1_IBUF[15]));
  IBUF \I1_IBUF[1]_inst 
       (.I(I1[1]),
        .O(I1_IBUF[1]));
  IBUF \I1_IBUF[2]_inst 
       (.I(I1[2]),
        .O(I1_IBUF[2]));
  IBUF \I1_IBUF[3]_inst 
       (.I(I1[3]),
        .O(I1_IBUF[3]));
  IBUF \I1_IBUF[4]_inst 
       (.I(I1[4]),
        .O(I1_IBUF[4]));
  IBUF \I1_IBUF[5]_inst 
       (.I(I1[5]),
        .O(I1_IBUF[5]));
  IBUF \I1_IBUF[6]_inst 
       (.I(I1[6]),
        .O(I1_IBUF[6]));
  IBUF \I1_IBUF[7]_inst 
       (.I(I1[7]),
        .O(I1_IBUF[7]));
  IBUF \I1_IBUF[8]_inst 
       (.I(I1[8]),
        .O(I1_IBUF[8]));
  IBUF \I1_IBUF[9]_inst 
       (.I(I1[9]),
        .O(I1_IBUF[9]));
  IBUF \I2_IBUF[0]_inst 
       (.I(I2[0]),
        .O(I2_IBUF[0]));
  IBUF \I2_IBUF[10]_inst 
       (.I(I2[10]),
        .O(I2_IBUF[10]));
  IBUF \I2_IBUF[11]_inst 
       (.I(I2[11]),
        .O(I2_IBUF[11]));
  IBUF \I2_IBUF[12]_inst 
       (.I(I2[12]),
        .O(I2_IBUF[12]));
  IBUF \I2_IBUF[13]_inst 
       (.I(I2[13]),
        .O(I2_IBUF[13]));
  IBUF \I2_IBUF[14]_inst 
       (.I(I2[14]),
        .O(I2_IBUF[14]));
  IBUF \I2_IBUF[15]_inst 
       (.I(I2[15]),
        .O(I2_IBUF[15]));
  IBUF \I2_IBUF[1]_inst 
       (.I(I2[1]),
        .O(I2_IBUF[1]));
  IBUF \I2_IBUF[2]_inst 
       (.I(I2[2]),
        .O(I2_IBUF[2]));
  IBUF \I2_IBUF[3]_inst 
       (.I(I2[3]),
        .O(I2_IBUF[3]));
  IBUF \I2_IBUF[4]_inst 
       (.I(I2[4]),
        .O(I2_IBUF[4]));
  IBUF \I2_IBUF[5]_inst 
       (.I(I2[5]),
        .O(I2_IBUF[5]));
  IBUF \I2_IBUF[6]_inst 
       (.I(I2[6]),
        .O(I2_IBUF[6]));
  IBUF \I2_IBUF[7]_inst 
       (.I(I2[7]),
        .O(I2_IBUF[7]));
  IBUF \I2_IBUF[8]_inst 
       (.I(I2[8]),
        .O(I2_IBUF[8]));
  IBUF \I2_IBUF[9]_inst 
       (.I(I2[9]),
        .O(I2_IBUF[9]));
  OBUF \O_OBUF[0]_inst 
       (.I(O_OBUF[0]),
        .O(O[0]));
  OBUF \O_OBUF[10]_inst 
       (.I(O_OBUF[10]),
        .O(O[10]));
  OBUF \O_OBUF[11]_inst 
       (.I(O_OBUF[11]),
        .O(O[11]));
  OBUF \O_OBUF[12]_inst 
       (.I(O_OBUF[12]),
        .O(O[12]));
  OBUF \O_OBUF[13]_inst 
       (.I(O_OBUF[13]),
        .O(O[13]));
  OBUF \O_OBUF[14]_inst 
       (.I(O_OBUF[14]),
        .O(O[14]));
  OBUF \O_OBUF[15]_inst 
       (.I(O_OBUF[15]),
        .O(O[15]));
  OBUF \O_OBUF[16]_inst 
       (.I(O_OBUF[16]),
        .O(O[16]));
  OBUF \O_OBUF[17]_inst 
       (.I(O_OBUF[17]),
        .O(O[17]));
  OBUF \O_OBUF[18]_inst 
       (.I(O_OBUF[18]),
        .O(O[18]));
  OBUF \O_OBUF[19]_inst 
       (.I(O_OBUF[19]),
        .O(O[19]));
  OBUF \O_OBUF[1]_inst 
       (.I(O_OBUF[1]),
        .O(O[1]));
  OBUF \O_OBUF[20]_inst 
       (.I(O_OBUF[20]),
        .O(O[20]));
  OBUF \O_OBUF[21]_inst 
       (.I(O_OBUF[21]),
        .O(O[21]));
  OBUF \O_OBUF[22]_inst 
       (.I(O_OBUF[22]),
        .O(O[22]));
  OBUF \O_OBUF[23]_inst 
       (.I(O_OBUF[23]),
        .O(O[23]));
  OBUF \O_OBUF[24]_inst 
       (.I(O_OBUF[24]),
        .O(O[24]));
  OBUF \O_OBUF[25]_inst 
       (.I(O_OBUF[25]),
        .O(O[25]));
  OBUF \O_OBUF[26]_inst 
       (.I(O_OBUF[26]),
        .O(O[26]));
  OBUF \O_OBUF[27]_inst 
       (.I(O_OBUF[27]),
        .O(O[27]));
  OBUF \O_OBUF[28]_inst 
       (.I(O_OBUF[28]),
        .O(O[28]));
  OBUF \O_OBUF[29]_inst 
       (.I(O_OBUF[29]),
        .O(O[29]));
  OBUF \O_OBUF[2]_inst 
       (.I(O_OBUF[2]),
        .O(O[2]));
  OBUF \O_OBUF[30]_inst 
       (.I(O_OBUF[30]),
        .O(O[30]));
  OBUF \O_OBUF[31]_inst 
       (.I(O_OBUF[31]),
        .O(O[31]));
  OBUF \O_OBUF[3]_inst 
       (.I(O_OBUF[3]),
        .O(O[3]));
  OBUF \O_OBUF[4]_inst 
       (.I(O_OBUF[4]),
        .O(O[4]));
  OBUF \O_OBUF[5]_inst 
       (.I(O_OBUF[5]),
        .O(O[5]));
  OBUF \O_OBUF[6]_inst 
       (.I(O_OBUF[6]),
        .O(O[6]));
  OBUF \O_OBUF[7]_inst 
       (.I(O_OBUF[7]),
        .O(O[7]));
  OBUF \O_OBUF[8]_inst 
       (.I(O_OBUF[8]),
        .O(O[8]));
  OBUF \O_OBUF[9]_inst 
       (.I(O_OBUF[9]),
        .O(O[9]));
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
    temp1
       (.A({C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({I1_IBUF[15],I1_IBUF[15],I1_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp1_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_temp1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp1_OVERFLOW_UNCONNECTED),
        .P({NLW_temp1_P_UNCONNECTED[47:32],temp1_n_74,temp1_n_75,temp1_n_76,temp1_n_77,temp1_n_78,temp1_n_79,temp1_n_80,temp1_n_81,temp1_n_82,temp1_n_83,temp1_n_84,temp1_n_85,temp1_n_86,temp1_n_87,temp1_n_88,temp1_n_89,temp1__0}),
        .PATTERNBDETECT(NLW_temp1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_temp1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_temp1_UNDERFLOW_UNCONNECTED));
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
    temp4
       (.A({C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF[15],C1_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({I2_IBUF[15],I2_IBUF[15],I2_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp4_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_temp4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp4_OVERFLOW_UNCONNECTED),
        .P({NLW_temp4_P_UNCONNECTED[47:32],temp4_n_74,temp4_n_75,temp4_n_76,temp4_n_77,temp4_n_78,temp4_n_79,temp4_n_80,temp4_n_81,temp4_n_82,temp4_n_83,temp4_n_84,temp4_n_85,temp4_n_86,temp4_n_87,temp4_n_88,temp4_n_89,temp4__0}),
        .PATTERNBDETECT(NLW_temp4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_temp4_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_temp4_UNDERFLOW_UNCONNECTED));
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
    .CREG(0),
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
    temp5
       (.A({C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({I2_IBUF[15],I2_IBUF[15],I2_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp5_BCOUT_UNCONNECTED[17:0]),
        .C({temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0[15],temp1__0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp5_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_temp5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp5_OVERFLOW_UNCONNECTED),
        .P({NLW_temp5_P_UNCONNECTED[47:16],O_OBUF[31:16]}),
        .PATTERNBDETECT(NLW_temp5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_temp5_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_temp5_UNDERFLOW_UNCONNECTED));
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
    .CREG(0),
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
    temp6
       (.A({C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF[15],C2_IBUF}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_temp6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b1,1'b1}),
        .B({I1_IBUF[15],I1_IBUF[15],I1_IBUF}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_temp6_BCOUT_UNCONNECTED[17:0]),
        .C({temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0[15],temp4__0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_temp6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_temp6_CARRYOUT_UNCONNECTED[3:0]),
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
        .MULTSIGNOUT(NLW_temp6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_temp6_OVERFLOW_UNCONNECTED),
        .P({NLW_temp6_P_UNCONNECTED[47:16],O_OBUF[15:0]}),
        .PATTERNBDETECT(NLW_temp6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_temp6_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_temp6_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_temp6_UNDERFLOW_UNCONNECTED));
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
