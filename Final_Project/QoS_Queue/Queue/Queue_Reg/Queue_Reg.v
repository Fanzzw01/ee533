`timescale 1ns / 1ps

module Queue_Reg
(
    input clk,
    input rst,
    input [9:0] WP_total,
    input [9:0] RP_total,
    input fifo_wen,
    input [31:0] fifo_in,

    output [31:0] fifo_out
);

    integer i;
    reg [31:0] queue_reg [1023:0];

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < 1024; i = i + 1) begin
                queue_reg[i] <= 32'b0;
            end
            else if (fifo_wen) begin
                queue_reg[WP_total] <= fifo_in;
            end
        end
    end

endmodule