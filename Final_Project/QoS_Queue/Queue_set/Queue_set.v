////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Queue_set.vf
// /___/   /\     Timestamp : 04/14/2025 21:17:06
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/Final_Project/Queue_set.sch" Queue_set.vf
//Design Name: Queue_set
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Queue_set(clk, 
                 defined_source_ip_in_0, 
                 defined_source_ip_in_1, 
                 defined_source_ip_wen, 
                 pkt_end, 
                 queue_in, 
                 queue_set_out_en, 
                 rst, 
                 temp_fifo_out, 
                 temp_fifo_source_ip, 
                 weight_in, 
                 weight_in_wen, 
                 queue_set_out);

    input clk;
    input [127:0] defined_source_ip_in_0;
    input [127:0] defined_source_ip_in_1;
    input defined_source_ip_wen;
    input pkt_end;
    input [31:0] queue_in;
    input queue_set_out_en;
    input rst;
    input temp_fifo_out;
    input [31:0] temp_fifo_source_ip;
    input [39:0] weight_in;
    input weight_in_wen;
   output [31:0] queue_set_out;
   
   wire [2:0] queue_out_depth_0;
   wire [2:0] queue_out_depth_1;
   wire [1:0] queue_out_en;
   wire [31:0] queue_out_0;
   wire [31:0] queue_out_1;
   
   Queue_demo XLXI_1 (.clk(clk), 
                      .defined_source_ip_in(defined_source_ip_in_1[127:0]), 
                      .defined_source_ip_wen(defined_source_ip_wen), 
                      .pkt_end(pkt_end), 
                      .Queue_in(queue_in[31:0]), 
                      .rst(rst), 
                      .temp_fifo_out(temp_fifo_out), 
                      .temp_fifo_source_ip(temp_fifo_source_ip[31:0]), 
                      .total_queue_out_en(queue_out_en[1]), 
                      .depth_outer_out(queue_out_depth_1[2:0]), 
                      .Queue_out(queue_out_1[31:0]));
   Queue_Out_CU XLXI_2 (.clk(clk), 
                        .depth_outer_0(queue_out_depth_0[2:0]), 
                        .depth_outer_1(queue_out_depth_1[2:0]), 
                        .rst(rst), 
                        .total_queue_out_en(queue_set_out_en), 
                        .weight_in(weight_in[39:0]), 
                        .weight_in_wen(weight_in_wen), 
                        .queue_out_en(queue_out_en[1:0]));
   Queue_Out_MUX XLXI_3 (.queue_out_en(queue_out_en[1:0]), 
                         .queue_0_out(queue_out_0[31:0]), 
                         .queue_1_out(queue_out_1[31:0]), 
                         .total_queue_out_en(queue_set_out_en), 
                         .total_queue_out(queue_set_out[31:0]));
   Queue_demo XLXI_4 (.clk(clk), 
                      .defined_source_ip_in(defined_source_ip_in_0[127:0]), 
                      .defined_source_ip_wen(defined_source_ip_wen), 
                      .pkt_end(pkt_end), 
                      .Queue_in(queue_in[31:0]), 
                      .rst(rst), 
                      .temp_fifo_out(temp_fifo_out), 
                      .temp_fifo_source_ip(temp_fifo_source_ip[31:0]), 
                      .total_queue_out_en(queue_out_en[0]), 
                      .depth_outer_out(queue_out_depth_0[2:0]), 
                      .Queue_out(queue_out_0[31:0]));
endmodule
