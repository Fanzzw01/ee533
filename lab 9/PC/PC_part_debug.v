////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : PC_part_debug.vf
// /___/   /\     Timestamp : 03/14/2025 12:52:50
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lab9/PC_part_debug.sch" PC_part_debug.vf
//Design Name: PC_part_debug
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module PC_part_debug(BTA, 
                     clk, 
                     ONE, 
                     PC_ctrl, 
                     rst, 
                     thread_ID, 
                     thread_IF, 
                     PC, 
                     PC0, 
                     PC1, 
                     PC2, 
                     PC3);

    input [6:0] BTA;
    input clk;
    input [6:0] ONE;
    input PC_ctrl;
    input rst;
    input [1:0] thread_ID;
    input [1:0] thread_IF;
   output [8:0] PC;
   output [6:0] PC0;
   output [6:0] PC1;
   output [6:0] PC2;
   output [6:0] PC3;
   
   wire PC0_ctrl;
   wire PC1_ctrl;
   wire PC2_ctrl;
   wire PC3_ctrl;
   wire [6:0] XLXN_5;
   wire [6:0] XLXN_6;
   wire [6:0] XLXN_7;
   wire [6:0] XLXN_8;
   wire [6:0] XLXN_17;
   wire [6:0] XLXN_18;
   wire [6:0] XLXN_19;
   wire [6:0] XLXN_20;
   wire [6:0] PC0_DUMMY;
   wire [6:0] PC1_DUMMY;
   wire [6:0] PC2_DUMMY;
   wire [6:0] PC3_DUMMY;
   
   assign PC0[6:0] = PC0_DUMMY[6:0];
   assign PC1[6:0] = PC1_DUMMY[6:0];
   assign PC2[6:0] = PC2_DUMMY[6:0];
   assign PC3[6:0] = PC3_DUMMY[6:0];
   PC0 XLXI_1 (.clk(clk), 
               .PC_ctrl(PC0_ctrl), 
               .PC_next(XLXN_17[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC0_DUMMY[6:0]));
   PC1 XLXI_2 (.clk(clk), 
               .PC_ctrl(PC1_ctrl), 
               .PC_next(XLXN_18[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC1_DUMMY[6:0]));
   PC2 XLXI_3 (.clk(clk), 
               .PC_ctrl(PC2_ctrl), 
               .PC_next(XLXN_19[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC2_DUMMY[6:0]));
   PC3 XLXI_4 (.clk(clk), 
               .PC_ctrl(PC3_ctrl), 
               .PC_next(XLXN_20[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC3_DUMMY[6:0]));
   PC_plus_1 XLXI_5 (.ONE(ONE[6:0]), 
                     .PC(PC0_DUMMY[6:0]), 
                     .PC_next(XLXN_8[6:0]));
   PC_plus_1 XLXI_6 (.ONE(ONE[6:0]), 
                     .PC(PC1_DUMMY[6:0]), 
                     .PC_next(XLXN_7[6:0]));
   PC_plus_1 XLXI_7 (.ONE(ONE[6:0]), 
                     .PC(PC2_DUMMY[6:0]), 
                     .PC_next(XLXN_6[6:0]));
   PC_plus_1 XLXI_8 (.ONE(ONE[6:0]), 
                     .PC(PC3_DUMMY[6:0]), 
                     .PC_next(XLXN_5[6:0]));
   PC_MUX XLXI_9 (.BTA(BTA[6:0]), 
                  .PC_ctrl(PC0_ctrl), 
                  .PC_next_in(XLXN_8[6:0]), 
                  .PC_next_out(XLXN_17[6:0]));
   PC_MUX XLXI_10 (.BTA(BTA[6:0]), 
                   .PC_ctrl(PC1_ctrl), 
                   .PC_next_in(XLXN_7[6:0]), 
                   .PC_next_out(XLXN_18[6:0]));
   PC_MUX XLXI_11 (.BTA(BTA[6:0]), 
                   .PC_ctrl(PC2_ctrl), 
                   .PC_next_in(XLXN_6[6:0]), 
                   .PC_next_out(XLXN_19[6:0]));
   PC_MUX XLXI_12 (.BTA(BTA[6:0]), 
                   .PC_ctrl(PC3_ctrl), 
                   .PC_next_in(XLXN_5[6:0]), 
                   .PC_next_out(XLXN_20[6:0]));
   PC_Thread_MUX XLXI_13 (.PC0(PC0_DUMMY[6:0]), 
                          .PC1(PC1_DUMMY[6:0]), 
                          .PC2(PC2_DUMMY[6:0]), 
                          .PC3(PC3_DUMMY[6:0]), 
                          .thread(thread_IF[1:0]), 
                          .PC(PC[8:0]));
   Thread_control_unit XLXI_14 (.PC_ctrl(PC_ctrl), 
                                .thread_ID(thread_ID[1:0]), 
                                .PC0_ctrl(PC0_ctrl), 
                                .PC1_ctrl(PC1_ctrl), 
                                .PC2_ctrl(PC2_ctrl), 
                                .PC3_ctrl(PC3_ctrl));
endmodule
