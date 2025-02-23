////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : comp8.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:49
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/comp8.sch" comp8.vf
//Design Name: comp8
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module comp8(A, 
             B, 
             EQ);

    input [7:0] A;
    input [7:0] B;
   output EQ;
   
   wire XLXN_3;
   wire XLXN_4;
   wire XLXN_5;
   wire XLXN_6;
   wire XLXN_7;
   wire XLXN_8;
   wire XLXN_9;
   wire XLXN_10;
   wire XLXN_11;
   wire XLXN_12;
   
   XNOR2 XLXI_1 (.I0(B[0]), 
                 .I1(A[0]), 
                 .O(XLXN_3));
   XNOR2 XLXI_2 (.I0(B[1]), 
                 .I1(A[1]), 
                 .O(XLXN_4));
   XNOR2 XLXI_3 (.I0(B[2]), 
                 .I1(A[2]), 
                 .O(XLXN_5));
   XNOR2 XLXI_4 (.I0(B[3]), 
                 .I1(A[3]), 
                 .O(XLXN_6));
   XNOR2 XLXI_5 (.I0(B[4]), 
                 .I1(A[4]), 
                 .O(XLXN_7));
   XNOR2 XLXI_6 (.I0(B[5]), 
                 .I1(A[5]), 
                 .O(XLXN_8));
   XNOR2 XLXI_7 (.I0(B[6]), 
                 .I1(A[6]), 
                 .O(XLXN_9));
   XNOR2 XLXI_8 (.I0(B[7]), 
                 .I1(A[7]), 
                 .O(XLXN_10));
   AND4 XLXI_9 (.I0(XLXN_6), 
                .I1(XLXN_5), 
                .I2(XLXN_4), 
                .I3(XLXN_3), 
                .O(XLXN_11));
   AND4 XLXI_10 (.I0(XLXN_10), 
                 .I1(XLXN_9), 
                 .I2(XLXN_8), 
                 .I3(XLXN_7), 
                 .O(XLXN_12));
   AND2 XLXI_11 (.I0(XLXN_12), 
                 .I1(XLXN_11), 
                 .O(EQ));
endmodule
