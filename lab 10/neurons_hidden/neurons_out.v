`timescale 1ns / 1ps

module neurons_out
(
    input clk,
    input en,
    input sum_temp,

    output [15:0] neurons_out
);

    assign neurons_out = en ? neurons_out : 16'd0;

endmodule