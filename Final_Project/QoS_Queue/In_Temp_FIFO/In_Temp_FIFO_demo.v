////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : In_Temp_FIFO_demo.vf
// /___/   /\     Timestamp : 04/13/2025 01:06:01
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/Final_Project/In_Temp_FIFO_demo.sch" In_Temp_FIFO_demo.vf
//Design Name: In_Temp_FIFO_demo
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module In_Temp_FIFO_demo(clk, 
                         pkt_begin, 
                         pkt_end, 
                         pkt_in, 
                         rst, 
                         depth, 
                         FIFO_OUT, 
                         pkt_out, 
                         source_IP);

    input clk;
    input pkt_begin;
    input pkt_end;
    input [31:0] pkt_in;
    input rst;
   output [7:0] depth;
   output FIFO_OUT;
   output [31:0] pkt_out;
   output [31:0] source_IP;
   
   wire FIFO_EMPTY;
   wire FIFO_FULL;
   wire FIFO_IN;
   wire [7:0] RP;
   wire [7:0] RP_plus_3;
   wire [7:0] WP;
   wire FIFO_OUT_DUMMY;
   
   assign FIFO_OUT = FIFO_OUT_DUMMY;
   In_Temp_FIFO_CU XLXI_2 (.clk(clk), 
                           .RP(RP[7:0]), 
                           .rst(rst), 
                           .WP(WP[7:0]), 
                           .depth(depth[7:0]), 
                           .FIFO_EMPTY(FIFO_EMPTY), 
                           .FIFO_FULL(FIFO_FULL));
   In_Temp_FIFO_RP XLXI_3 (.clk(clk), 
                           .FIFO_EMPTY(FIFO_EMPTY), 
                           .RP_en(FIFO_OUT_DUMMY), 
                           .rst(rst), 
                           .RP(RP[7:0]));
   In_Temp_FIFO_WP XLXI_4 (.clk(clk), 
                           .FIFO_FULL(FIFO_FULL), 
                           .rst(rst), 
                           .WP_en(FIFO_IN), 
                           .WP(WP[7:0]));
   In_Temp_FIFO_state_machine XLXI_5 (.clk(clk), 
                                      .pkt_begin(pkt_begin), 
                                      .pkt_end(pkt_end), 
                                      .RP(RP[7:0]), 
                                      .rst(rst), 
                                      .FIFO_IN(FIFO_IN), 
                                      .FIFO_OUT(FIFO_OUT_DUMMY), 
                                      .RP_plus_3(RP_plus_3[7:0]));
   In_Temp_FIFO_Reg XLXI_6 (.clk(clk), 
                            .pkt_in(pkt_in[31:0]), 
                            .RP(RP[7:0]), 
                            .RP_plus_3(RP_plus_3[7:0]), 
                            .rst(rst), 
                            .WP(WP[7:0]), 
                            .pkt_out(pkt_out[31:0]), 
                            .source_IP(source_IP[31:0]));
endmodule