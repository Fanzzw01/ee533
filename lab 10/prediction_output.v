`timescale 1ns / 1ps

module prediction_output
(
    input [15:0] neurons_output0,
    input [15:0] neurons_output1,
    input [15:0] neurons_output2,
    input [15:0] neurons_output3,
    input [15:0] neurons_output4,
    input [15:0] neurons_output5,
    input [15:0] neurons_output6,
    input [15:0] neurons_output7,
    input [15:0] neurons_output8,
    input [15:0] neurons_output9,

    output [15:0] prediction_score,
    output [3:0] prediction_class
);

    wire [15:0] max_0_1, max_2_3, max_4_5, max_6_7, max_8_9, max0123, max4567, max01234567;
    wire [3:0] max_0_1_class, max_2_3_class, max_4_5_class, max_6_7_class, max_8_9_class, max0123_class, max4567_class, max01234567_class;

    assign {max_0_1, max_0_1_class} = (neurons_output0 > neurons_output1) ? {neurons_output0, 4'd0} : {neurons_output1, 4'd1};
    assign {max_2_3, max_2_3_class} = (neurons_output2 > neurons_output3) ? {neurons_output2, 4'd2} : {neurons_output3, 4'd3};
    assign {max_4_5, max_4_5_class} = (neurons_output4 > neurons_output5) ? {neurons_output4, 4'd4} : {neurons_output5, 4'd5};
    assign {max_6_7, max_6_7_class} = (neurons_output6 > neurons_output7) ? {neurons_output6, 4'd6} : {neurons_output7, 4'd7};
    assign {max_8_9, max_8_9_class} = (neurons_output8 > neurons_output9) ? {neurons_output8, 4'd8} : {neurons_output9, 4'd9};
    assign {max0123, max0123_class} = (max_0_1 > max_2_3) ? {max_0_1, max_0_1_class} : {max_2_3, max_2_3_class};
    assign {max4567, max4567_class} = (max_4_5 > max_6_7) ? {max_4_5, max_4_5_class} : {max_6_7, max_6_7_class};
    assign {max01234567, max01234567_class} = (max0123 > max4567) ? {max0123, max0123_class} : {max4567, max4567_class};
    assign {prediction_score, prediction_class} = (max01234567 > max_8_9) ? {max01234567, max01234567_class} : {max_8_9, max_8_9_class};

endmodule