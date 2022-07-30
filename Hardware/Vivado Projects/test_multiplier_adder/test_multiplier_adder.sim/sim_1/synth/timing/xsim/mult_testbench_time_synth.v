// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul 30 15:38:54 2022
// Host        : DESKTOP-V98EE8P running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Git/SENG440_DCT/Hardware/Vivado
//               Projects/test_multiplier_adder/test_multiplier_adder.sim/sim_1/synth/timing/xsim/mult_testbench_time_synth.v}
// Design      : mult
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module mult
   (I1,
    I2,
    O);
  input [31:0]I1;
  input [31:0]I2;
  output [31:0]O;

  wire [31:0]I1;
  wire [31:0]I1_IBUF;
  wire [31:0]I2;
  wire [31:0]I2_IBUF;
  wire [31:0]O;
  wire [31:0]O_OBUF;
  wire \O_OBUF[11]_inst_i_1_n_0 ;
  wire \O_OBUF[11]_inst_i_1_n_1 ;
  wire \O_OBUF[11]_inst_i_1_n_2 ;
  wire \O_OBUF[11]_inst_i_1_n_3 ;
  wire \O_OBUF[11]_inst_i_2_n_0 ;
  wire \O_OBUF[11]_inst_i_3_n_0 ;
  wire \O_OBUF[11]_inst_i_4_n_0 ;
  wire \O_OBUF[11]_inst_i_5_n_0 ;
  wire \O_OBUF[15]_inst_i_1_n_0 ;
  wire \O_OBUF[15]_inst_i_1_n_1 ;
  wire \O_OBUF[15]_inst_i_1_n_2 ;
  wire \O_OBUF[15]_inst_i_1_n_3 ;
  wire \O_OBUF[15]_inst_i_2_n_0 ;
  wire \O_OBUF[15]_inst_i_3_n_0 ;
  wire \O_OBUF[15]_inst_i_4_n_0 ;
  wire \O_OBUF[15]_inst_i_5_n_0 ;
  wire \O_OBUF[19]_inst_i_1_n_0 ;
  wire \O_OBUF[19]_inst_i_1_n_1 ;
  wire \O_OBUF[19]_inst_i_1_n_2 ;
  wire \O_OBUF[19]_inst_i_1_n_3 ;
  wire \O_OBUF[19]_inst_i_2_n_0 ;
  wire \O_OBUF[19]_inst_i_3_n_0 ;
  wire \O_OBUF[19]_inst_i_4_n_0 ;
  wire \O_OBUF[19]_inst_i_5_n_0 ;
  wire \O_OBUF[23]_inst_i_1_n_0 ;
  wire \O_OBUF[23]_inst_i_1_n_1 ;
  wire \O_OBUF[23]_inst_i_1_n_2 ;
  wire \O_OBUF[23]_inst_i_1_n_3 ;
  wire \O_OBUF[23]_inst_i_2_n_0 ;
  wire \O_OBUF[23]_inst_i_3_n_0 ;
  wire \O_OBUF[23]_inst_i_4_n_0 ;
  wire \O_OBUF[23]_inst_i_5_n_0 ;
  wire \O_OBUF[27]_inst_i_1_n_0 ;
  wire \O_OBUF[27]_inst_i_1_n_1 ;
  wire \O_OBUF[27]_inst_i_1_n_2 ;
  wire \O_OBUF[27]_inst_i_1_n_3 ;
  wire \O_OBUF[27]_inst_i_2_n_0 ;
  wire \O_OBUF[27]_inst_i_3_n_0 ;
  wire \O_OBUF[27]_inst_i_4_n_0 ;
  wire \O_OBUF[27]_inst_i_5_n_0 ;
  wire \O_OBUF[31]_inst_i_1_n_1 ;
  wire \O_OBUF[31]_inst_i_1_n_2 ;
  wire \O_OBUF[31]_inst_i_1_n_3 ;
  wire \O_OBUF[31]_inst_i_2_n_0 ;
  wire \O_OBUF[31]_inst_i_3_n_0 ;
  wire \O_OBUF[31]_inst_i_4_n_0 ;
  wire \O_OBUF[31]_inst_i_5_n_0 ;
  wire \O_OBUF[3]_inst_i_1_n_0 ;
  wire \O_OBUF[3]_inst_i_1_n_1 ;
  wire \O_OBUF[3]_inst_i_1_n_2 ;
  wire \O_OBUF[3]_inst_i_1_n_3 ;
  wire \O_OBUF[3]_inst_i_2_n_0 ;
  wire \O_OBUF[3]_inst_i_3_n_0 ;
  wire \O_OBUF[3]_inst_i_4_n_0 ;
  wire \O_OBUF[3]_inst_i_5_n_0 ;
  wire \O_OBUF[7]_inst_i_1_n_0 ;
  wire \O_OBUF[7]_inst_i_1_n_1 ;
  wire \O_OBUF[7]_inst_i_1_n_2 ;
  wire \O_OBUF[7]_inst_i_1_n_3 ;
  wire \O_OBUF[7]_inst_i_2_n_0 ;
  wire \O_OBUF[7]_inst_i_3_n_0 ;
  wire \O_OBUF[7]_inst_i_4_n_0 ;
  wire \O_OBUF[7]_inst_i_5_n_0 ;
  wire [3:3]\NLW_O_OBUF[31]_inst_i_1_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("mult_testbench_time_synth.sdf",,,,"tool_control");
end
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
  IBUF \I1_IBUF[16]_inst 
       (.I(I1[16]),
        .O(I1_IBUF[16]));
  IBUF \I1_IBUF[17]_inst 
       (.I(I1[17]),
        .O(I1_IBUF[17]));
  IBUF \I1_IBUF[18]_inst 
       (.I(I1[18]),
        .O(I1_IBUF[18]));
  IBUF \I1_IBUF[19]_inst 
       (.I(I1[19]),
        .O(I1_IBUF[19]));
  IBUF \I1_IBUF[1]_inst 
       (.I(I1[1]),
        .O(I1_IBUF[1]));
  IBUF \I1_IBUF[20]_inst 
       (.I(I1[20]),
        .O(I1_IBUF[20]));
  IBUF \I1_IBUF[21]_inst 
       (.I(I1[21]),
        .O(I1_IBUF[21]));
  IBUF \I1_IBUF[22]_inst 
       (.I(I1[22]),
        .O(I1_IBUF[22]));
  IBUF \I1_IBUF[23]_inst 
       (.I(I1[23]),
        .O(I1_IBUF[23]));
  IBUF \I1_IBUF[24]_inst 
       (.I(I1[24]),
        .O(I1_IBUF[24]));
  IBUF \I1_IBUF[25]_inst 
       (.I(I1[25]),
        .O(I1_IBUF[25]));
  IBUF \I1_IBUF[26]_inst 
       (.I(I1[26]),
        .O(I1_IBUF[26]));
  IBUF \I1_IBUF[27]_inst 
       (.I(I1[27]),
        .O(I1_IBUF[27]));
  IBUF \I1_IBUF[28]_inst 
       (.I(I1[28]),
        .O(I1_IBUF[28]));
  IBUF \I1_IBUF[29]_inst 
       (.I(I1[29]),
        .O(I1_IBUF[29]));
  IBUF \I1_IBUF[2]_inst 
       (.I(I1[2]),
        .O(I1_IBUF[2]));
  IBUF \I1_IBUF[30]_inst 
       (.I(I1[30]),
        .O(I1_IBUF[30]));
  IBUF \I1_IBUF[31]_inst 
       (.I(I1[31]),
        .O(I1_IBUF[31]));
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
  IBUF \I2_IBUF[16]_inst 
       (.I(I2[16]),
        .O(I2_IBUF[16]));
  IBUF \I2_IBUF[17]_inst 
       (.I(I2[17]),
        .O(I2_IBUF[17]));
  IBUF \I2_IBUF[18]_inst 
       (.I(I2[18]),
        .O(I2_IBUF[18]));
  IBUF \I2_IBUF[19]_inst 
       (.I(I2[19]),
        .O(I2_IBUF[19]));
  IBUF \I2_IBUF[1]_inst 
       (.I(I2[1]),
        .O(I2_IBUF[1]));
  IBUF \I2_IBUF[20]_inst 
       (.I(I2[20]),
        .O(I2_IBUF[20]));
  IBUF \I2_IBUF[21]_inst 
       (.I(I2[21]),
        .O(I2_IBUF[21]));
  IBUF \I2_IBUF[22]_inst 
       (.I(I2[22]),
        .O(I2_IBUF[22]));
  IBUF \I2_IBUF[23]_inst 
       (.I(I2[23]),
        .O(I2_IBUF[23]));
  IBUF \I2_IBUF[24]_inst 
       (.I(I2[24]),
        .O(I2_IBUF[24]));
  IBUF \I2_IBUF[25]_inst 
       (.I(I2[25]),
        .O(I2_IBUF[25]));
  IBUF \I2_IBUF[26]_inst 
       (.I(I2[26]),
        .O(I2_IBUF[26]));
  IBUF \I2_IBUF[27]_inst 
       (.I(I2[27]),
        .O(I2_IBUF[27]));
  IBUF \I2_IBUF[28]_inst 
       (.I(I2[28]),
        .O(I2_IBUF[28]));
  IBUF \I2_IBUF[29]_inst 
       (.I(I2[29]),
        .O(I2_IBUF[29]));
  IBUF \I2_IBUF[2]_inst 
       (.I(I2[2]),
        .O(I2_IBUF[2]));
  IBUF \I2_IBUF[30]_inst 
       (.I(I2[30]),
        .O(I2_IBUF[30]));
  IBUF \I2_IBUF[31]_inst 
       (.I(I2[31]),
        .O(I2_IBUF[31]));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[11]_inst_i_1 
       (.CI(\O_OBUF[7]_inst_i_1_n_0 ),
        .CO({\O_OBUF[11]_inst_i_1_n_0 ,\O_OBUF[11]_inst_i_1_n_1 ,\O_OBUF[11]_inst_i_1_n_2 ,\O_OBUF[11]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[11:8]),
        .O(O_OBUF[11:8]),
        .S({\O_OBUF[11]_inst_i_2_n_0 ,\O_OBUF[11]_inst_i_3_n_0 ,\O_OBUF[11]_inst_i_4_n_0 ,\O_OBUF[11]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[11]_inst_i_2 
       (.I0(I1_IBUF[11]),
        .I1(I2_IBUF[11]),
        .O(\O_OBUF[11]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[11]_inst_i_3 
       (.I0(I1_IBUF[10]),
        .I1(I2_IBUF[10]),
        .O(\O_OBUF[11]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[11]_inst_i_4 
       (.I0(I1_IBUF[9]),
        .I1(I2_IBUF[9]),
        .O(\O_OBUF[11]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[11]_inst_i_5 
       (.I0(I1_IBUF[8]),
        .I1(I2_IBUF[8]),
        .O(\O_OBUF[11]_inst_i_5_n_0 ));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[15]_inst_i_1 
       (.CI(\O_OBUF[11]_inst_i_1_n_0 ),
        .CO({\O_OBUF[15]_inst_i_1_n_0 ,\O_OBUF[15]_inst_i_1_n_1 ,\O_OBUF[15]_inst_i_1_n_2 ,\O_OBUF[15]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[15:12]),
        .O(O_OBUF[15:12]),
        .S({\O_OBUF[15]_inst_i_2_n_0 ,\O_OBUF[15]_inst_i_3_n_0 ,\O_OBUF[15]_inst_i_4_n_0 ,\O_OBUF[15]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[15]_inst_i_2 
       (.I0(I1_IBUF[15]),
        .I1(I2_IBUF[15]),
        .O(\O_OBUF[15]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[15]_inst_i_3 
       (.I0(I1_IBUF[14]),
        .I1(I2_IBUF[14]),
        .O(\O_OBUF[15]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[15]_inst_i_4 
       (.I0(I1_IBUF[13]),
        .I1(I2_IBUF[13]),
        .O(\O_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[15]_inst_i_5 
       (.I0(I1_IBUF[12]),
        .I1(I2_IBUF[12]),
        .O(\O_OBUF[15]_inst_i_5_n_0 ));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[19]_inst_i_1 
       (.CI(\O_OBUF[15]_inst_i_1_n_0 ),
        .CO({\O_OBUF[19]_inst_i_1_n_0 ,\O_OBUF[19]_inst_i_1_n_1 ,\O_OBUF[19]_inst_i_1_n_2 ,\O_OBUF[19]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[19:16]),
        .O(O_OBUF[19:16]),
        .S({\O_OBUF[19]_inst_i_2_n_0 ,\O_OBUF[19]_inst_i_3_n_0 ,\O_OBUF[19]_inst_i_4_n_0 ,\O_OBUF[19]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[19]_inst_i_2 
       (.I0(I1_IBUF[19]),
        .I1(I2_IBUF[19]),
        .O(\O_OBUF[19]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[19]_inst_i_3 
       (.I0(I1_IBUF[18]),
        .I1(I2_IBUF[18]),
        .O(\O_OBUF[19]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[19]_inst_i_4 
       (.I0(I1_IBUF[17]),
        .I1(I2_IBUF[17]),
        .O(\O_OBUF[19]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[19]_inst_i_5 
       (.I0(I1_IBUF[16]),
        .I1(I2_IBUF[16]),
        .O(\O_OBUF[19]_inst_i_5_n_0 ));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[23]_inst_i_1 
       (.CI(\O_OBUF[19]_inst_i_1_n_0 ),
        .CO({\O_OBUF[23]_inst_i_1_n_0 ,\O_OBUF[23]_inst_i_1_n_1 ,\O_OBUF[23]_inst_i_1_n_2 ,\O_OBUF[23]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[23:20]),
        .O(O_OBUF[23:20]),
        .S({\O_OBUF[23]_inst_i_2_n_0 ,\O_OBUF[23]_inst_i_3_n_0 ,\O_OBUF[23]_inst_i_4_n_0 ,\O_OBUF[23]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[23]_inst_i_2 
       (.I0(I1_IBUF[23]),
        .I1(I2_IBUF[23]),
        .O(\O_OBUF[23]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[23]_inst_i_3 
       (.I0(I1_IBUF[22]),
        .I1(I2_IBUF[22]),
        .O(\O_OBUF[23]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[23]_inst_i_4 
       (.I0(I1_IBUF[21]),
        .I1(I2_IBUF[21]),
        .O(\O_OBUF[23]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[23]_inst_i_5 
       (.I0(I1_IBUF[20]),
        .I1(I2_IBUF[20]),
        .O(\O_OBUF[23]_inst_i_5_n_0 ));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[27]_inst_i_1 
       (.CI(\O_OBUF[23]_inst_i_1_n_0 ),
        .CO({\O_OBUF[27]_inst_i_1_n_0 ,\O_OBUF[27]_inst_i_1_n_1 ,\O_OBUF[27]_inst_i_1_n_2 ,\O_OBUF[27]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[27:24]),
        .O(O_OBUF[27:24]),
        .S({\O_OBUF[27]_inst_i_2_n_0 ,\O_OBUF[27]_inst_i_3_n_0 ,\O_OBUF[27]_inst_i_4_n_0 ,\O_OBUF[27]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[27]_inst_i_2 
       (.I0(I1_IBUF[27]),
        .I1(I2_IBUF[27]),
        .O(\O_OBUF[27]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[27]_inst_i_3 
       (.I0(I1_IBUF[26]),
        .I1(I2_IBUF[26]),
        .O(\O_OBUF[27]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[27]_inst_i_4 
       (.I0(I1_IBUF[25]),
        .I1(I2_IBUF[25]),
        .O(\O_OBUF[27]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[27]_inst_i_5 
       (.I0(I1_IBUF[24]),
        .I1(I2_IBUF[24]),
        .O(\O_OBUF[27]_inst_i_5_n_0 ));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[31]_inst_i_1 
       (.CI(\O_OBUF[27]_inst_i_1_n_0 ),
        .CO({\NLW_O_OBUF[31]_inst_i_1_CO_UNCONNECTED [3],\O_OBUF[31]_inst_i_1_n_1 ,\O_OBUF[31]_inst_i_1_n_2 ,\O_OBUF[31]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,I1_IBUF[30:28]}),
        .O(O_OBUF[31:28]),
        .S({\O_OBUF[31]_inst_i_2_n_0 ,\O_OBUF[31]_inst_i_3_n_0 ,\O_OBUF[31]_inst_i_4_n_0 ,\O_OBUF[31]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[31]_inst_i_2 
       (.I0(I1_IBUF[31]),
        .I1(I2_IBUF[31]),
        .O(\O_OBUF[31]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[31]_inst_i_3 
       (.I0(I1_IBUF[30]),
        .I1(I2_IBUF[30]),
        .O(\O_OBUF[31]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[31]_inst_i_4 
       (.I0(I1_IBUF[29]),
        .I1(I2_IBUF[29]),
        .O(\O_OBUF[31]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[31]_inst_i_5 
       (.I0(I1_IBUF[28]),
        .I1(I2_IBUF[28]),
        .O(\O_OBUF[31]_inst_i_5_n_0 ));
  OBUF \O_OBUF[3]_inst 
       (.I(O_OBUF[3]),
        .O(O[3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({\O_OBUF[3]_inst_i_1_n_0 ,\O_OBUF[3]_inst_i_1_n_1 ,\O_OBUF[3]_inst_i_1_n_2 ,\O_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[3:0]),
        .O(O_OBUF[3:0]),
        .S({\O_OBUF[3]_inst_i_2_n_0 ,\O_OBUF[3]_inst_i_3_n_0 ,\O_OBUF[3]_inst_i_4_n_0 ,\O_OBUF[3]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[3]_inst_i_2 
       (.I0(I1_IBUF[3]),
        .I1(I2_IBUF[3]),
        .O(\O_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[3]_inst_i_3 
       (.I0(I1_IBUF[2]),
        .I1(I2_IBUF[2]),
        .O(\O_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[3]_inst_i_4 
       (.I0(I1_IBUF[1]),
        .I1(I2_IBUF[1]),
        .O(\O_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[3]_inst_i_5 
       (.I0(I1_IBUF[0]),
        .I1(I2_IBUF[0]),
        .O(\O_OBUF[3]_inst_i_5_n_0 ));
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \O_OBUF[7]_inst_i_1 
       (.CI(\O_OBUF[3]_inst_i_1_n_0 ),
        .CO({\O_OBUF[7]_inst_i_1_n_0 ,\O_OBUF[7]_inst_i_1_n_1 ,\O_OBUF[7]_inst_i_1_n_2 ,\O_OBUF[7]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(I1_IBUF[7:4]),
        .O(O_OBUF[7:4]),
        .S({\O_OBUF[7]_inst_i_2_n_0 ,\O_OBUF[7]_inst_i_3_n_0 ,\O_OBUF[7]_inst_i_4_n_0 ,\O_OBUF[7]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[7]_inst_i_2 
       (.I0(I1_IBUF[7]),
        .I1(I2_IBUF[7]),
        .O(\O_OBUF[7]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[7]_inst_i_3 
       (.I0(I1_IBUF[6]),
        .I1(I2_IBUF[6]),
        .O(\O_OBUF[7]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[7]_inst_i_4 
       (.I0(I1_IBUF[5]),
        .I1(I2_IBUF[5]),
        .O(\O_OBUF[7]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \O_OBUF[7]_inst_i_5 
       (.I0(I1_IBUF[4]),
        .I1(I2_IBUF[4]),
        .O(\O_OBUF[7]_inst_i_5_n_0 ));
  OBUF \O_OBUF[8]_inst 
       (.I(O_OBUF[8]),
        .O(O[8]));
  OBUF \O_OBUF[9]_inst 
       (.I(O_OBUF[9]),
        .O(O[9]));
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
