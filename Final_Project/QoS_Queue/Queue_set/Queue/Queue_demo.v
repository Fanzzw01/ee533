////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Queue_demo.vf
// /___/   /\     Timestamp : 04/14/2025 14:31:55
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/Final_Project/Queue_demo.sch" Queue_demo.vf
//Design Name: Queue_demo
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Queue_demo(clk, 
                  defined_source_ip_in, 
                  defined_source_ip_wen, 
                  pkt_end, 
                  Queue_in, 
                  rst, 
                  temp_fifo_out, 
                  temp_fifo_source_ip, 
                  total_queue_out_en, 
                  Queue_out,
                  depth_outer_out);

    input clk;
    input [127:0] defined_source_ip_in;
    input defined_source_ip_wen;
    input pkt_end;
    input [31:0] Queue_in;
    input rst;
    input temp_fifo_out;
    input [31:0] temp_fifo_source_ip;
    input total_queue_out_en;
   output [31:0] Queue_out;
   output [2:0] depth_outer_out;
   
   wire [8:0] depth_inner_0;
   wire [8:0] depth_inner_1;
   wire [8:0] depth_inner_2;
   wire [8:0] depth_inner_3;
   wire [2:0] depth_outer;
   wire [3:0] inner_FIFO_empty;
   wire [3:0] inner_FIFO_in_en;
   wire [3:0] inner_FIFO_out_en;
   wire match;
   wire outer_FIFO_in_en;
   wire outer_FIFO_out_en;
   wire Queue_wen;
   wire [3:0] RP_inner_X_out_en;
   wire [7:0] RP_inner_0;
   wire RP_inner_0_en;
   wire [7:0] RP_inner_1;
   wire RP_inner_1_en;
   wire [7:0] RP_inner_2;
   wire RP_inner_2_en;
   wire [7:0] RP_inner_3;
   wire RP_inner_3_en;
   wire [1:0] RP_outer;
   wire RP_outer_en;
   wire [9:0] RP_total;
   wire [3:0] WP_inner_X_in_en;
   wire [7:0] WP_inner_0;
   wire WP_inner_0_en;
   wire [7:0] WP_inner_1;
   wire WP_inner_1_en;
   wire [7:0] WP_inner_2;
   wire WP_inner_2_en;
   wire [7:0] WP_inner_3;
   wire WP_inner_3_en;
   wire [1:0] WP_outer;
   wire WP_outer_en;
   wire [9:0] WP_total;

   assign depth_outer_out = depth_outer;
   
   Inner_CU Inner_CU_0 (.clk(clk), 
                        .inner_queue_in(inner_FIFO_in_en[0]), 
                        .inner_queue_out(inner_FIFO_out_en[0]), 
                        .RP(RP_inner_0[7:0]), 
                        .rst(rst), 
                        .WP(WP_inner_0[7:0]), 
                        .depth(depth_inner_0[8:0]), 
                        .FIFO_EMPTY_out(inner_FIFO_empty[0]), 
                        .RP_en(RP_inner_0_en), 
                        .WP_en(WP_inner_0_en));
   Inner_CU Inner_CU_1 (.clk(clk), 
                        .inner_queue_in(inner_FIFO_in_en[1]), 
                        .inner_queue_out(inner_FIFO_out_en[1]), 
                        .RP(RP_inner_1[7:0]), 
                        .rst(rst), 
                        .WP(WP_inner_1[7:0]), 
                        .depth(depth_inner_1[8:0]), 
                        .FIFO_EMPTY_out(inner_FIFO_empty[1]), 
                        .RP_en(RP_inner_1_en), 
                        .WP_en(WP_inner_1_en));
   Inner_CU Inner_CU_2 (.clk(clk), 
                        .inner_queue_in(inner_FIFO_in_en[2]), 
                        .inner_queue_out(inner_FIFO_out_en[2]), 
                        .RP(RP_inner_2[7:0]), 
                        .rst(rst), 
                        .WP(WP_inner_2[7:0]), 
                        .depth(depth_inner_2[8:0]), 
                        .FIFO_EMPTY_out(inner_FIFO_empty[2]), 
                        .RP_en(RP_inner_2_en), 
                        .WP_en(WP_inner_2_en));
   Inner_CU Inner_CU_3 (.clk(clk), 
                        .inner_queue_in(inner_FIFO_in_en[3]), 
                        .inner_queue_out(inner_FIFO_out_en[3]), 
                        .RP(RP_inner_3[7:0]), 
                        .rst(rst), 
                        .WP(WP_inner_3[7:0]), 
                        .depth(depth_inner_3[8:0]), 
                        .FIFO_EMPTY_out(inner_FIFO_empty[3]), 
                        .RP_en(RP_inner_3_en), 
                        .WP_en(WP_inner_3_en));
   Inner_RP Inner_RP_0 (.clk(clk), 
                        .RP_en(RP_inner_0_en), 
                        .rst(rst), 
                        .RP(RP_inner_0[7:0]));
   Inner_RP Inner_RP_1 (.clk(clk), 
                        .RP_en(RP_inner_1_en), 
                        .rst(rst), 
                        .RP(RP_inner_1[7:0]));
   Inner_RP Inner_RP_2 (.clk(clk), 
                        .RP_en(RP_inner_2_en), 
                        .rst(rst), 
                        .RP(RP_inner_2[7:0]));
   Inner_RP Inner_RP_3 (.clk(clk), 
                        .RP_en(RP_inner_3_en), 
                        .rst(rst), 
                        .RP(RP_inner_3[7:0]));
   Inner_WP Inner_WP_0 (.clk(clk), 
                        .rst(rst), 
                        .WP_en(WP_inner_0_en), 
                        .WP(WP_inner_0[7:0]));
   Inner_WP Inner_WP_1 (.clk(clk), 
                        .rst(rst), 
                        .WP_en(WP_inner_1_en), 
                        .WP(WP_inner_1[7:0]));
   Inner_WP Inner_WP_2 (.clk(clk), 
                        .rst(rst), 
                        .WP_en(WP_inner_2_en), 
                        .WP(WP_inner_2[7:0]));
   Inner_WP Inner_WP_3 (.clk(clk), 
                        .rst(rst), 
                        .WP_en(WP_inner_3_en), 
                        .WP(WP_inner_3[7:0]));
   Queue_state_machine IN1 (.clk(clk), 
                            .FIFO_out_state(temp_fifo_out), 
                            .inner_FIFO_empty(inner_FIFO_empty[3:0]), 
                            .match(match), 
                            .pkt_end(pkt_end), 
                            .queue_out_en(total_queue_out_en), 
                            .RP_outer(RP_outer[1:0]), 
                            .rst(rst), 
                            .WP_outer(WP_outer[1:0]), 
                            .Inner_FIFO_CU_in_en(inner_FIFO_in_en[3:0]), 
                            .Inner_FIFO_CU_out_en(inner_FIFO_out_en[3:0]), 
                            .inner_next_state_is_input(WP_inner_X_in_en[3:0]), 
                            
         .inner_next_state_is_output(RP_inner_X_out_en[3:0]), 
                            .Outer_FIFO_CU_in_en(outer_FIFO_in_en), 
                            .Outer_FIFO_CU_out_en(outer_FIFO_out_en));
   Queue_Matcher IN2 (.clk(clk), 
                      .defined_source_ip_in(defined_source_ip_in[127:0]), 
                      .defined_source_ip_wen(defined_source_ip_wen), 
                      .fifo_out(temp_fifo_out), 
                      .fifo_temp_source_ip(temp_fifo_source_ip[31:0]), 
                      .rst(rst), 
                      .match(match));
   Outer_CU IN3 (.clk(clk), 
                 .outer_queue_in(outer_FIFO_in_en), 
                 .outer_queue_out(outer_FIFO_out_en), 
                 .RP(RP_outer[1:0]), 
                 .rst(rst), 
                 .WP(WP_outer[1:0]), 
                 .outer_depth(depth_outer[2:0]), 
                 .RP_en(RP_outer_en), 
                 .WP_en(WP_outer_en));
   Outer_WP IN4 (.clk(clk), 
                 .rst(rst), 
                 .WP_en(WP_outer_en), 
                 .WP(WP_outer[1:0]));
   Outer_RP IN5 (.clk(clk), 
                 .RP_en(RP_outer_en), 
                 .rst(rst), 
                 .RP(RP_outer[1:0]));
   Queue_Reg XLXI_10 (.clk(clk), 
                      .fifo_in(Queue_in[31:0]), 
                      .fifo_wen(Queue_wen), 
                      .RP_total(RP_total[9:0]), 
                      .rst(rst), 
                      .WP_total(WP_total[9:0]), 
                      .fifo_out(Queue_out[31:0]));
   Queue_Pointer_Merge XLXI_11 (.match(match),
                                .RP_inner_X_out_en(inner_FIFO_out_en[3:0]), 
                                .RP_inner_0(RP_inner_0[7:0]), 
                                .RP_inner_1(RP_inner_1[7:0]), 
                                .RP_inner_2(RP_inner_2[7:0]), 
                                .RP_inner_3(RP_inner_3[7:0]), 
                                .RP_outer(RP_outer[1:0]), 
                                .WP_inner_X_in_en({WP_inner_3_en, WP_inner_2_en, WP_inner_1_en, WP_inner_0_en}), 
                                .WP_inner_0(WP_inner_0[7:0]), 
                                .WP_inner_1(WP_inner_1[7:0]), 
                                .WP_inner_2(WP_inner_2[7:0]), 
                                .WP_inner_3(WP_inner_3[7:0]), 
                                .WP_outer(WP_outer[1:0]), 
                                .temp_fifo_out(temp_fifo_out),
                                .queue_out_en(total_queue_out_en),
                                .queue_wen(Queue_wen), 
                                .RP_total(RP_total[9:0]), 
                                .WP_total(WP_total[9:0]));
endmodule
