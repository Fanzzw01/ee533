`timescale 1ns / 1ps

module In_Temp_FIFO_WP
(
    input clk,
    input rst,
    input WP_en,
    input FIFO_FULL,

    output reg [7:0] WP
);

    always @(posedge clk) begin
        if (rst) begin
            WP <= 8'b0;
        end
        else if (WP_en && ~FIFO_FULL) begin
            WP <= WP + 1;
        end
    end

endmodule