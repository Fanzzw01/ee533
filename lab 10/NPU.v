////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : NPU.vf
// /___/   /\     Timestamp : 03/22/2025 14:41:15
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lab10/NPU.sch" NPU.vf
//Design Name: NPU
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module NPU(clk, 
           en,
           image, 
           neurons_hidden_weight_addr, 
           neurons_hidden_wen, 
           neurons_hidden_0_weight_in, 
           neurons_hidden_1_weight_in, 
           neurons_hidden_2_weight_in, 
           neurons_output_weight_addr, 
           neurons_output_wen, 
           neurons_output_0_weight_in, 
           neurons_output_1_weight_in, 
           neurons_output_2_weight_in, 
           neurons_output_3_weight_in, 
           neurons_output_4_weight_in, 
           neurons_output_5_weight_in, 
           neurons_output_6_weight_in, 
           neurons_output_7_weight_in, 
           neurons_output_8_weight_in, 
           neurons_output_9_weight_in, 
           rst, 
           prediction_class, 
           prediction_score);

    input clk;
    input en;
    input [63:0] image;
    input [5:0] neurons_hidden_weight_addr;
    input neurons_hidden_wen;
    input [15:0] neurons_hidden_0_weight_in;
    input [15:0] neurons_hidden_1_weight_in;
    input [15:0] neurons_hidden_2_weight_in;
    input [1:0] neurons_output_weight_addr;
    input neurons_output_wen;
    input [15:0] neurons_output_0_weight_in;
    input [15:0] neurons_output_1_weight_in;
    input [15:0] neurons_output_2_weight_in;
    input [15:0] neurons_output_3_weight_in;
    input [15:0] neurons_output_4_weight_in;
    input [15:0] neurons_output_5_weight_in;
    input [15:0] neurons_output_6_weight_in;
    input [15:0] neurons_output_7_weight_in;
    input [15:0] neurons_output_8_weight_in;
    input [15:0] neurons_output_9_weight_in;
    input rst;
   output [3:0] prediction_class;
   output [15:0] prediction_score;
   
   wire [15:0] class_0_value;
   wire [15:0] class_1_value;
   wire [15:0] class_2_value;
   wire [15:0] class_3_value;
   wire [15:0] class_4_value;
   wire [15:0] class_5_value;
   wire [15:0] class_6_value;
   wire [15:0] class_7_value;
   wire [15:0] class_8_value;
   wire [15:0] class_9_value;
   wire [15:0] neurons_hidden_0_out;
   wire [15:0] neurons_hidden_1_out;
   wire [15:0] neurons_hidden_2_out;
   wire [15:0] ReLu_1;
   wire [15:0] ReLu_2;
   wire [15:0] ReLu_3;
   
   neurons_hidden neurons_hidden_0 (.clk(clk), 
                                    .en(en),
                                    .image(image[63:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_hidden_weight_addr[5:0]), 
                                    
         .weight_in(neurons_hidden_0_weight_in[15:0]), 
                                    .wen(neurons_hidden_wen), 
                                    
         .neurons_output(neurons_hidden_0_out[15:0]));
   neurons_hidden neurons_hidden_1 (.clk(clk), 
                                    .en(en),
                                    .image(image[63:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_hidden_weight_addr[5:0]), 
                                    
         .weight_in(neurons_hidden_1_weight_in[15:0]), 
                                    .wen(neurons_hidden_wen), 
                                    
         .neurons_output(neurons_hidden_1_out[15:0]));
   neurons_hidden neurons_hidden_2 (.clk(clk), 
                                    .en(en),
                                    .image(image[63:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_hidden_weight_addr[5:0]), 
                                    
         .weight_in(neurons_hidden_2_weight_in[15:0]), 
                                    .wen(neurons_hidden_wen), 
                                    
         .neurons_output(neurons_hidden_2_out[15:0]));
   neurons_output neurons_output_0 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_0_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_0_value[15:0]));
   neurons_output neurons_output_1 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_1_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_1_value[15:0]));
   neurons_output neurons_output_2 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_2_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_2_value[15:0]));
   neurons_output neurons_output_3 (.clk(clk),
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_3_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_3_value[15:0]));
   neurons_output neurons_output_4 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_4_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_4_value[15:0]));
   neurons_output neurons_output_5 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_5_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_5_value[15:0]));
   neurons_output neurons_output_6 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_6_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_6_value[15:0]));
   neurons_output neurons_output_7 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_7_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_7_value[15:0]));
   neurons_output neurons_output_8 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_8_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_8_value[15:0]));
   neurons_output neurons_output_9 (.clk(clk), 
                                    .en(en),
                                    .ReLu_1(ReLu_1[15:0]), 
                                    .ReLu_2(ReLu_2[15:0]), 
                                    .ReLu_3(ReLu_3[15:0]), 
                                    .rst(rst), 
                                    
         .weight_addr(neurons_output_weight_addr[1:0]), 
                                    
         .weight_in(neurons_output_9_weight_in[15:0]), 
                                    .wen(neurons_output_wen), 
                                    .Prediction_score(class_9_value[15:0]));
   prediction_output prediction_result (.neurons_output0(class_0_value[15:0]), 
                                        .neurons_output1(class_1_value[15:0]), 
                                        .neurons_output2(class_2_value[15:0]), 
                                        .neurons_output3(class_3_value[15:0]), 
                                        .neurons_output4(class_4_value[15:0]), 
                                        .neurons_output5(class_5_value[15:0]), 
                                        .neurons_output6(class_6_value[15:0]), 
                                        .neurons_output7(class_7_value[15:0]), 
                                        .neurons_output8(class_8_value[15:0]), 
                                        .neurons_output9(class_9_value[15:0]), 
                                        
         .prediction_class(prediction_class[3:0]), 
                                        
         .prediction_score(prediction_score[15:0]));
   ReLu ReLU_MUX (.neurons_1(neurons_hidden_0_out[15:0]), 
                  .neurons_2(neurons_hidden_1_out[15:0]), 
                  .neurons_3(neurons_hidden_2_out[15:0]), 
                  .neurons_1_out(ReLu_1[15:0]), 
                  .neurons_2_out(ReLu_2[15:0]), 
                  .neurons_3_out(ReLu_3[15:0]));
endmodule
