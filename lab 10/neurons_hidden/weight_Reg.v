`timescale 1ns / 1ps

module weight_Reg # (
    parameter WEIGHT_LENGTH = 16,
    parameter WEIGHT_DEPTH = 64
)
(
    input clk,
    input rst,
    input wen,
    input [WEIGHT_LENGTH * WEIGHT_DEPTH - 1 : 0] weight_in,
    input [5:0] weight_addr,

    output [WEIGHT_LENGTH - 1 : 0] weight_out
);

    reg [WEIGHT_LENGTH - 1 : 0] weight [WEIGHT_DEPTH - 1 : 0];
    integer i;

    assign weight_out = weight[weight_addr];

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < WEIGHT_DEPTH; i = i + 1) begin
                weight[i] <= 16'b0;
            end
        end
        else if (wen) begin
            for (i = 0; i < WEIGHT_DEPTH; i = i + 1) begin
                weight[i] <= weight_in[i * WEIGHT_LENGTH +: WEIGHT_LENGTH];
            end
        end
    end

endmodule