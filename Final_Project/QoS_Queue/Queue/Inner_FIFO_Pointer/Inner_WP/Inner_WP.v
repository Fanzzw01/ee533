`timescale 1ns / 1ps

module Inner_WP
(
    input clk,
    input rst,
    input WP_en,

    output reg [7:0] WP
);

    always @(posedge clk) begin
        if (rst) begin
            WP <= 8'b0;
        end
        else if (WP_en) begin
            WP <= WP + 8'd1;
        end
    end

endmodule