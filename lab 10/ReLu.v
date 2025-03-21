`timescale 1ns / 1ps

module ReLu
(
    input [15:0] neurons_1,
    input [15:0] neurons_2.
    input [15:0] neurons_3

    output [15:0] neurons_1_out,
    output [15:0] neurons_2_out,
    output [15:0] neurons_3_out
);

    assign neurons_1_out = (neurons_1[15]) ? 16'b0 : neurons_1;
    assign neurons_2_out = (neurons_2[15]) ? 16'b0 : neurons_2;
    assign neurons_3_out = (neurons_3[15]) ? 16'b0 : neurons_3;

endmodule