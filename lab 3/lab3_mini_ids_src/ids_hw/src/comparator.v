////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comparator.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:50
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/comparator.sch" comparator.vf
//Design Name: comparator
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale  100 ps / 10 ps

module AND7_HXILINX_comparator (O, I0, I1, I2, I3, I4, I5, I6);
    

   output O;

   input I0;
   input I1;
   input I2;
   input I3;
   input I4;
   input I5;
   input I6;

assign O = I0 && I1 && I2 && I3 && I4 && I5 && I6;

endmodule
`timescale 1ns / 1ps

module comp8_MUSER_comparator(A, 
                              B, 
                              EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire AB0;
   wire AB1;
   wire AB2;
   wire AB3;
   wire AB4;
   wire AB5;
   wire AB6;
   wire AB7;
   wire AB03;
   wire AB47;
   
   AND4 I_36_32 (.I0(AB7), 
                 .I1(AB6), 
                 .I2(AB5), 
                 .I3(AB4), 
                 .O(AB47));
   XNOR2 I_36_33 (.I0(B[6]), 
                  .I1(A[6]), 
                  .O(AB6));
   XNOR2 I_36_34 (.I0(B[7]), 
                  .I1(A[7]), 
                  .O(AB7));
   XNOR2 I_36_35 (.I0(B[5]), 
                  .I1(A[5]), 
                  .O(AB5));
   XNOR2 I_36_36 (.I0(B[4]), 
                  .I1(A[4]), 
                  .O(AB4));
   AND4 I_36_41 (.I0(AB3), 
                 .I1(AB2), 
                 .I2(AB1), 
                 .I3(AB0), 
                 .O(AB03));
   XNOR2 I_36_42 (.I0(B[2]), 
                  .I1(A[2]), 
                  .O(AB2));
   XNOR2 I_36_43 (.I0(B[3]), 
                  .I1(A[3]), 
                  .O(AB3));
   XNOR2 I_36_44 (.I0(B[1]), 
                  .I1(A[1]), 
                  .O(AB1));
   XNOR2 I_36_45 (.I0(B[0]), 
                  .I1(A[0]), 
                  .O(AB0));
   AND2 I_36_50 (.I0(AB47), 
                 .I1(AB03), 
                 .O(EQ));
endmodule
`timescale 1ns / 1ps

module comparator(A, 
                  amask, 
                  B, 
                  match);

    input [55:0] A;
    input [6:0] amask;
    input [55:0] B;
   output match;
   
   wire XLXN_1;
   wire XLXN_2;
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   wire XLXN_34;
   wire XLXN_35;
   wire XLXN_36;
   wire XLXN_37;
   wire XLXN_38;
   wire XLXN_39;
   wire XLXN_40;
   
   comp8_MUSER_comparator XLXI_1 (.A(A[55:48]), 
                                  .B(B[55:48]), 
                                  .EQ(XLXN_1));
   comp8_MUSER_comparator XLXI_2 (.A(A[47:40]), 
                                  .B(B[47:40]), 
                                  .EQ(XLXN_2));
   comp8_MUSER_comparator XLXI_3 (.A(A[39:32]), 
                                  .B(B[39:32]), 
                                  .EQ(XLXN_3));
   comp8_MUSER_comparator XLXI_4 (.A(A[31:24]), 
                                  .B(B[31:24]), 
                                  .EQ(XLXN_4));
   comp8_MUSER_comparator XLXI_5 (.A(A[23:16]), 
                                  .B(B[23:16]), 
                                  .EQ(XLXN_5));
   comp8_MUSER_comparator XLXI_6 (.A(A[15:8]), 
                                  .B(B[15:8]), 
                                  .EQ(XLXN_6));
   comp8_MUSER_comparator XLXI_7 (.A(A[7:0]), 
                                  .B(B[7:0]), 
                                  .EQ(XLXN_7));
   OR2B1 XLXI_8 (.I0(amask[6]), 
                 .I1(XLXN_1), 
                 .O(XLXN_34));
   OR2B1 XLXI_9 (.I0(amask[5]), 
                 .I1(XLXN_2), 
                 .O(XLXN_35));
   OR2B1 XLXI_10 (.I0(amask[4]), 
                  .I1(XLXN_3), 
                  .O(XLXN_36));
   OR2B1 XLXI_11 (.I0(amask[3]), 
                  .I1(XLXN_4), 
                  .O(XLXN_37));
   OR2B1 XLXI_12 (.I0(amask[2]), 
                  .I1(XLXN_5), 
                  .O(XLXN_38));
   OR2B1 XLXI_13 (.I0(amask[1]), 
                  .I1(XLXN_6), 
                  .O(XLXN_39));
   OR2B1 XLXI_14 (.I0(amask[0]), 
                  .I1(XLXN_7), 
                  .O(XLXN_40));
   AND7_HXILINX_comparator XLXI_15 (.I0(XLXN_40), 
                                    .I1(XLXN_39), 
                                    .I2(XLXN_38), 
                                    .I3(XLXN_37), 
                                    .I4(XLXN_36), 
                                    .I5(XLXN_35), 
                                    .I6(XLXN_34), 
                                    .O(match));
   // synthesis attribute HU_SET of XLXI_15 is "XLXI_15_0"
endmodule
