////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 9.2.04i
//  \   \         Application : sch2verilog
//  /   /         Filename : clkcntrl4.vf
// /___/   /\     Timestamp : 05/17/2013 15:37:42
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx92i\bin\nt\sch2verilog.exe -intstyle ise -family spartan3e -w C:/Users/martine/Desktop/popeye/clkcntrl4.sch clkcntrl4.vf
//Design Name: clkcntrl4
//Device: spartan3e
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module FTCE_MXILINX_clkcntrl4(C, 
                              CE, 
                              CLR, 
                              T, 
                              Q);

    input C;
    input CE;
    input CLR;
    input T;
   output Q;
   
   wire TQ;
   wire Q_DUMMY;
   
   assign Q = Q_DUMMY;
   XOR2 I_36_32 (.I0(T), 
                 .I1(Q_DUMMY), 
                 .O(TQ));
   FDCE I_36_35 (.C(C), 
                 .CE(CE), 
                 .CLR(CLR), 
                 .D(TQ), 
                 .Q(Q_DUMMY));
   // synthesis attribute RLOC of I_36_35 is "X0Y0"
   defparam I_36_35.INIT = 1'b0;
endmodule
`timescale 1ns / 1ps

module CB4CE_MXILINX_clkcntrl4(C, 
                               CE, 
                               CLR, 
                               CEO, 
                               Q0, 
                               Q1, 
                               Q2, 
                               Q3, 
                               TC);

    input C;
    input CE;
    input CLR;
   output CEO;
   output Q0;
   output Q1;
   output Q2;
   output Q3;
   output TC;
   
   wire T2;
   wire T3;
   wire XLXN_1;
   wire Q0_DUMMY;
   wire Q1_DUMMY;
   wire Q2_DUMMY;
   wire Q3_DUMMY;
   wire TC_DUMMY;
   
   assign Q0 = Q0_DUMMY;
   assign Q1 = Q1_DUMMY;
   assign Q2 = Q2_DUMMY;
   assign Q3 = Q3_DUMMY;
   assign TC = TC_DUMMY;
   FTCE_MXILINX_clkcntrl4 I_Q0 (.C(C), 
                                .CE(CE), 
                                .CLR(CLR), 
                                .T(XLXN_1), 
                                .Q(Q0_DUMMY));
   // synthesis attribute HU_SET of I_Q0 is "I_Q0_0"
   FTCE_MXILINX_clkcntrl4 I_Q1 (.C(C), 
                                .CE(CE), 
                                .CLR(CLR), 
                                .T(Q0_DUMMY), 
                                .Q(Q1_DUMMY));
   // synthesis attribute HU_SET of I_Q1 is "I_Q1_1"
   FTCE_MXILINX_clkcntrl4 I_Q2 (.C(C), 
                                .CE(CE), 
                                .CLR(CLR), 
                                .T(T2), 
                                .Q(Q2_DUMMY));
   // synthesis attribute HU_SET of I_Q2 is "I_Q2_2"
   FTCE_MXILINX_clkcntrl4 I_Q3 (.C(C), 
                                .CE(CE), 
                                .CLR(CLR), 
                                .T(T3), 
                                .Q(Q3_DUMMY));
   // synthesis attribute HU_SET of I_Q3 is "I_Q3_3"
   AND4 I_36_31 (.I0(Q3_DUMMY), 
                 .I1(Q2_DUMMY), 
                 .I2(Q1_DUMMY), 
                 .I3(Q0_DUMMY), 
                 .O(TC_DUMMY));
   AND3 I_36_32 (.I0(Q2_DUMMY), 
                 .I1(Q1_DUMMY), 
                 .I2(Q0_DUMMY), 
                 .O(T3));
   AND2 I_36_33 (.I0(Q1_DUMMY), 
                 .I1(Q0_DUMMY), 
                 .O(T2));
   VCC I_36_58 (.P(XLXN_1));
   AND2 I_36_67 (.I0(CE), 
                 .I1(TC_DUMMY), 
                 .O(CEO));
endmodule
`timescale 1ns / 1ps

module clkcntrl4(clkin, 
                 clkb2, 
                 seldig);

    input clkin;
   output clkb2;
   output seldig;
   
   wire XLXN_38;
   wire XLXN_39;
   wire XLXN_44;
   wire XLXN_47;
   wire XLXN_70;
   wire XLXN_71;
   wire XLXN_72;
   wire XLXN_73;
   wire XLXN_75;
   wire XLXN_76;
   wire clkb2_DUMMY;
   
   assign clkb2 = clkb2_DUMMY;
   BUFG XLXI_20 (.I(XLXN_39), 
                 .O(XLXN_38));
   GND XLXI_24 (.G(XLXN_44));
   DCM_SP XLXI_36 (.CLKFB(XLXN_38), 
                   .CLKIN(clkin), 
                   .DSSEN(), 
                   .PSCLK(), 
                   .PSEN(), 
                   .PSINCDEC(), 
                   .RST(XLXN_44), 
                   .CLKDV(XLXN_47), 
                   .CLKFX(), 
                   .CLKFX180(), 
                   .CLK0(XLXN_39), 
                   .CLK2X(), 
                   .CLK2X180(), 
                   .CLK90(), 
                   .CLK180(), 
                   .CLK270(), 
                   .LOCKED(), 
                   .PSDONE(), 
                   .STATUS());
   defparam XLXI_36.CLKFX_DIVIDE = 1;
   defparam XLXI_36.CLKDV_DIVIDE = 2.0;
   defparam XLXI_36.CLKIN_PERIOD = 20.0;
   defparam XLXI_36.CLK_FEEDBACK = "1X";
   defparam XLXI_36.CLKFX_MULTIPLY = 4;
   defparam XLXI_36.CLKIN_DIVIDE_BY_2 = "FALSE";
   defparam XLXI_36.CLKOUT_PHASE_SHIFT = "NONE";
   defparam XLXI_36.DESKEW_ADJUST = "SYSTEM_SYNCHRONOUS";
   defparam XLXI_36.DFS_FREQUENCY_MODE = "LOW";
   defparam XLXI_36.DLL_FREQUENCY_MODE = "LOW";
   defparam XLXI_36.DSS_MODE = "NONE";
   defparam XLXI_36.DUTY_CYCLE_CORRECTION = "TRUE";
   defparam XLXI_36.PHASE_SHIFT = 0;
   defparam XLXI_36.STARTUP_WAIT = "FALSE";
   defparam XLXI_36.FACTORY_JF = 16'hC080;
   CB4CE_MXILINX_clkcntrl4 XLXI_37 (.C(clkb2_DUMMY), 
                                    .CE(XLXN_73), 
                                    .CLR(XLXN_76), 
                                    .CEO(XLXN_72), 
                                    .Q0(), 
                                    .Q1(), 
                                    .Q2(), 
                                    .Q3(), 
                                    .TC());
   // synthesis attribute HU_SET of XLXI_37 is "XLXI_37_4"
   CB4CE_MXILINX_clkcntrl4 XLXI_38 (.C(clkb2_DUMMY), 
                                    .CE(XLXN_72), 
                                    .CLR(XLXN_76), 
                                    .CEO(XLXN_70), 
                                    .Q0(), 
                                    .Q1(), 
                                    .Q2(), 
                                    .Q3(), 
                                    .TC());
   // synthesis attribute HU_SET of XLXI_38 is "XLXI_38_5"
   CB4CE_MXILINX_clkcntrl4 XLXI_39 (.C(clkb2_DUMMY), 
                                    .CE(XLXN_70), 
                                    .CLR(XLXN_76), 
                                    .CEO(XLXN_71), 
                                    .Q0(), 
                                    .Q1(), 
                                    .Q2(), 
                                    .Q3(), 
                                    .TC());
   // synthesis attribute HU_SET of XLXI_39 is "XLXI_39_6"
   CB4CE_MXILINX_clkcntrl4 XLXI_40 (.C(clkb2_DUMMY), 
                                    .CE(XLXN_71), 
                                    .CLR(XLXN_76), 
                                    .CEO(XLXN_75), 
                                    .Q0(), 
                                    .Q1(), 
                                    .Q2(), 
                                    .Q3(), 
                                    .TC());
   // synthesis attribute HU_SET of XLXI_40 is "XLXI_40_7"
   VCC XLXI_41 (.P(XLXN_73));
   GND XLXI_43 (.G(XLXN_76));
   BUFG XLXI_328 (.I(XLXN_47), 
                  .O(clkb2_DUMMY));
   BUF XLXI_336 (.I(XLXN_75), 
                 .O(seldig));
endmodule
