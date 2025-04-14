`timescale 1ns / 1ps

module Outer_WP
(
    input clk,
    input rst,
    input WP_en,

    output reg [1:0] WP
);

    always @(posedge clk) begin
        if (rst) begin
            WP <= 2'd0;
        end
        else if (WP_en) begin
            WP <= WP + 2'd1;
        end
    end

endmodule