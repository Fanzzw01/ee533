////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : neurons_hidden.vf
// /___/   /\     Timestamp : 03/24/2025 14:37:26
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lab10/EE533_Lab_10/neurons_hidden.sch" neurons_hidden.vf
//Design Name: neurons_hidden
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module neurons_hidden(clk, 
                      en, 
                      image_in, 
                      image_load, 
                      rst, 
                      weight_in, 
                      weight_wen, 
                      fp16_adder_b_in, 
                      i, 
                      image_i, 
                      neurons_hidden_out, 
                      weight_i_out);

    input clk;
    input en;
    input [63:0] image_in;
    input image_load;
    input rst;
    input [1023:0] weight_in;
    input weight_wen;
   output [15:0] fp16_adder_b_in;
   output [5:0] i;
   output image_i;
   output [15:0] neurons_hidden_out;
   output [15:0] weight_i_out;
   
   wire [15:0] neurons_hidden_out_DUMMY;
   wire [15:0] fp16_adder_b_in_DUMMY;
   wire image_i_DUMMY;
   wire [5:0] i_DUMMY;
   wire [15:0] weight_i_out_DUMMY;
   
   assign fp16_adder_b_in[15:0] = fp16_adder_b_in_DUMMY[15:0];
   assign i[5:0] = i_DUMMY[5:0];
   assign image_i = image_i_DUMMY;
   assign neurons_hidden_out[15:0] = neurons_hidden_out_DUMMY[15:0];
   assign weight_i_out[15:0] = weight_i_out_DUMMY[15:0];
   weight_Reg XLXI_1 (.clk(clk), 
                      .rst(rst), 
                      .weight_addr(i_DUMMY[5:0]), 
                      .weight_in(weight_in[1023:0]), 
                      .wen(weight_wen), 
                      .weight_out(weight_i_out_DUMMY[15:0]));
   fp16_adder XLXI_2 (.a(fp16_adder_b_in_DUMMY[15:0]), 
                      .clk(clk), 
                      .en(en), 
                      .rst(rst), 
                      .sum(neurons_hidden_out_DUMMY[15:0]));
   counter XLXI_4 (.clk(clk), 
                   .en(en), 
                   .rst(rst), 
                   .i_out(i_DUMMY[5:0]));
   image_Reg XLXI_6 (.clk(clk), 
                     .image_addr(i_DUMMY[5:0]), 
                     .image_in(image_in[63:0]), 
                     .rst(rst), 
                     .wen(image_load), 
                     .image_i(image_i_DUMMY));
   weight_MUX XLXI_7 (.image_i(image_i_DUMMY), 
                      .weight(weight_i_out_DUMMY[15:0]), 
                      .MUX_out(fp16_adder_b_in_DUMMY[15:0]));
endmodule
