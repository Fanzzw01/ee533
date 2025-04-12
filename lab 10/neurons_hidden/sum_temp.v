`timescale 1ns / 1ps

module sum_temp
(
    input clk,
    input rst,
    input en,
    input [15:0] fp16_adder_out,

    output [15:0] sum_out
);

    reg [15:0] sum_temp;

    always @(posedge clk) begin
        if (rst) begin
            sum_temp <= 16'b0;
        end
        else if (en) begin
            sum_temp <= fp16_adder_out;
        end
    end

    assign sum_out = sum_temp;

endmodule