////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : dropfifo.vf
// /___/   /\     Timestamp : 01/29/2025 16:54:58
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family spartan3a -w "C:/Documents and Settings/student/EE533_Lab3/dropfifo.sch" dropfifo.vf
//Design Name: dropfifo
//Device: spartan3a
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 100 ps / 10 ps

module FD8CE_HXILINX_dropfifo(Q, C, CE, CLR, D);

   
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
`timescale 100 ps / 10 ps

module CB8CLE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR, D, L);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   input  [7:0]       D;
   input              L;
   
   reg    [7:0]       Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
        else if (L)
          Q <= D;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 100 ps / 10 ps

module CB8CE_HXILINX_dropfifo(CEO, Q, TC, C, CE, CLR);
   
   parameter TERMINAL_COUNT = 8'b1111_1111;
   
   output             CEO;
   output [7:0]       Q;
   output             TC;

   input 	      C;	
   input 	      CE;	
   input 	      CLR;	
   
   reg   [7:0]        Q;
   
   always @(posedge C or posedge CLR)
     begin
	if (CLR)
	  Q <= 8'b0000_0000;
	else if (CE)
	  Q <= Q + 1;
     end
   
   assign CEO = TC & CE;
   assign TC = Q == TERMINAL_COUNT;
   
endmodule
`timescale 1ns / 1ps

module comp8_MUSER_dropfifo(A, 
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

module dropfifo(CLK, 
                drop_pkt, 
                fiforead, 
                fifowrite, 
                firstword, 
                in_fifo, 
                lastword, 
                rst, 
                out_fifo, 
                valid_data);

    input CLK;
    input drop_pkt;
    input fiforead;
    input fifowrite;
    input firstword;
    input [71:0] in_fifo;
    input lastword;
    input rst;
   output [71:0] out_fifo;
   output valid_data;
   
   wire XLXN_7;
   wire XLXN_8;
   wire XLXN_9;
   wire XLXN_14;
   wire [7:0] XLXN_15;
   wire XLXN_18;
   wire [7:0] XLXN_21;
   wire [7:0] XLXN_23;
   wire XLXN_30;
   wire XLXN_31;
   wire XLXN_32;
   wire XLXN_37;
   wire [71:0] XLXN_39;
   wire XLXN_76;
   
   FD XLXI_1 (.C(CLK), 
              .D(firstword), 
              .Q(XLXN_7));
   defparam XLXI_1.INIT = 1'b0;
   FD XLXI_2 (.C(CLK), 
              .D(lastword), 
              .Q(XLXN_8));
   defparam XLXI_2.INIT = 1'b0;
   FD XLXI_3 (.C(CLK), 
              .D(fifowrite), 
              .Q(XLXN_14));
   defparam XLXI_3.INIT = 1'b0;
   FD XLXI_4 (.C(CLK), 
              .D(drop_pkt), 
              .Q(XLXN_37));
   defparam XLXI_4.INIT = 1'b0;
   FD8CE_HXILINX_dropfifo XLXI_5 (.C(CLK), 
                                  .CE(XLXN_18), 
                                  .CLR(rst), 
                                  .D(XLXN_21[7:0]), 
                                  .Q(XLXN_15[7:0]));
   // synthesis attribute HU_SET of XLXI_5 is "XLXI_5_0"
   comp8_MUSER_dropfifo XLXI_6 (.A(XLXN_21[7:0]), 
                                .B(XLXN_23[7:0]), 
                                .EQ(XLXN_30));
   comp8_MUSER_dropfifo XLXI_7 (.A(XLXN_23[7:0]), 
                                .B(XLXN_15[7:0]), 
                                .EQ(XLXN_31));
   reg9B XLXI_8 (.CE(XLXN_76), 
                 .CLK(CLK), 
                 .CLR(rst), 
                 .D(in_fifo[71:0]), 
                 .Q(XLXN_39[71:0]));
   CB8CLE_HXILINX_dropfifo XLXI_9 (.C(CLK), 
                                   .CE(XLXN_14), 
                                   .CLR(rst), 
                                   .D(XLXN_15[7:0]), 
                                   .L(XLXN_37), 
                                   .CEO(), 
                                   .Q(XLXN_21[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_9 is "XLXI_9_1"
   CB8CE_HXILINX_dropfifo XLXI_10 (.C(CLK), 
                                   .CE(XLXN_32), 
                                   .CLR(rst), 
                                   .CEO(), 
                                   .Q(XLXN_23[7:0]), 
                                   .TC());
   // synthesis attribute HU_SET of XLXI_10 is "XLXI_10_2"
   FDC XLXI_11 (.C(CLK), 
                .CLR(rst), 
                .D(XLXN_32), 
                .Q(valid_data));
   defparam XLXI_11.INIT = 1'b0;
   OR2 XLXI_12 (.I0(XLXN_8), 
                .I1(XLXN_7), 
                .O(XLXN_9));
   AND2B1 XLXI_13 (.I0(XLXN_37), 
                   .I1(XLXN_9), 
                   .O(XLXN_18));
   AND3B2 XLXI_14 (.I0(XLXN_31), 
                   .I1(XLXN_30), 
                   .I2(fiforead), 
                   .O(XLXN_32));
   dual9Bmen XLXI_15 (.addra(XLXN_21[7:0]), 
                      .addrb(XLXN_23[7:0]), 
                      .clka(CLK), 
                      .clkb(CLK), 
                      .dina(XLXN_39[71:0]), 
                      .wea(XLXN_14), 
                      .out_fifo(out_fifo[71:0]));
   VCC XLXI_31 (.P(XLXN_76));
endmodule
