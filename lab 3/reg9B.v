////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : reg9B.vf
// /___/   /\     Timestamp : 01/29/2025 16:24:52
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/reg9B.sch" reg9B.vf
//Design Name: reg9B
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_reg9B(Q, C, CE, CLR, D);

   
   output [7:0]       Q;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
          Q <= D;
     end
   
   
endmodule
`timescale 1ns / 1ps

module reg9B(CE, 
             CLK, 
             CLR, 
             D, 
             Q);

    input CE;
    input CLK;
    input CLR;
    input [71:0] D;
   output [71:0] Q;
   
   
   FD8CE_HXILINX_reg9B XLXI_1 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[71:64]), 
                               .Q(Q[71:64]));
   // synthesis attribute HU_SET of XLXI_1 is "XLXI_1_0"
   FD8CE_HXILINX_reg9B XLXI_2 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[63:56]), 
                               .Q(Q[63:56]));
   // synthesis attribute HU_SET of XLXI_2 is "XLXI_2_1"
   FD8CE_HXILINX_reg9B XLXI_3 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[55:48]), 
                               .Q(Q[55:48]));
   // synthesis attribute HU_SET of XLXI_3 is "XLXI_3_2"
   FD8CE_HXILINX_reg9B XLXI_4 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[47:40]), 
                               .Q(Q[47:40]));
   // synthesis attribute HU_SET of XLXI_4 is "XLXI_4_3"
   FD8CE_HXILINX_reg9B XLXI_5 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[39:32]), 
                               .Q(Q[39:32]));
   // synthesis attribute HU_SET of XLXI_5 is "XLXI_5_4"
   FD8CE_HXILINX_reg9B XLXI_6 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[31:24]), 
                               .Q(Q[31:24]));
   // synthesis attribute HU_SET of XLXI_6 is "XLXI_6_5"
   FD8CE_HXILINX_reg9B XLXI_7 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[23:16]), 
                               .Q(Q[23:16]));
   // synthesis attribute HU_SET of XLXI_7 is "XLXI_7_6"
   FD8CE_HXILINX_reg9B XLXI_8 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[15:8]), 
                               .Q(Q[15:8]));
   // synthesis attribute HU_SET of XLXI_8 is "XLXI_8_7"
   FD8CE_HXILINX_reg9B XLXI_9 (.C(CLK), 
                               .CE(CE), 
                               .CLR(CLR), 
                               .D(D[7:0]), 
                               .Q(Q[7:0]));
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_8"
endmodule
