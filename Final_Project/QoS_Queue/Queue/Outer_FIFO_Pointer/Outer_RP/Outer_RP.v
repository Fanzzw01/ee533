`timescale 1ns / 1ps

module Outer_RP
(
    input clk,
    input rst,
    input RP_en,

    output reg [1:0] RP
);

    always @(posedge clk) begin
        if (rst) begin
            RP <= 2'd0;
        end
        else if (RP_en) begin
            RP <= RP + 2'd1;
        end
    end

endmodule