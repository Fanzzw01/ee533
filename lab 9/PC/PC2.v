`timescale 1ns / 1ps

module PC
(
    input clk,
    input rst,
    input [8:0] PC_next,
    input [1:0] thread,

    output reg [8:0] PC
);

    always @(posedge clk) begin
        if (rst)
            PC <= 9'b0;
        else if (thread == 2'b10)
            PC <= PC_next;
    end

endmodule