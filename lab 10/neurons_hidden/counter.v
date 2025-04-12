`timescale 1ns / 1ps

module counter #
(
    parameter WEIGHT_DEPTH = 64
)
(
    input clk,
    input rst,
    input en,

    output [5:0] i_out
);
    reg [5:0] i;

    always @(posedge clk) begin
        if (rst) begin
            i <= 6'd0;
        end
        else if (en) begin
            i <= (i < WEIGHT_DEPTH - 1) ? i + 1 : 6'd0;
        end
    end

    assign i_out = i;

endmodule