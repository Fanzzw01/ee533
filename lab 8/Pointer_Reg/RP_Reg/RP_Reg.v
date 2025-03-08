`timescale 1ns / 1ps

module RP_Reg
(
    input clk,
    input rst,
    input RP_en,
    input [63:0] RP_next,

    output reg [63:0] RP
);

    always @(posedge clk) begin
        if (rst) begin
            RP <= 0;
        end
        else if(WP_en) begin
            RP <= RP_next;
        end
    end

endmodule