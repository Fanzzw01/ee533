`timescale 1ns / 1ps

module PC2
(
    input clk,
    input rst,
    input PC_ctrl,
    input [6:0] PC_next,
    input [1:0] thread,
    input [1:0] thread_ID,

    output reg [6:0] PC
);

    always @(posedge clk) begin
        if (rst)
            PC <= 0;
        else if ((thread == 2'b10) || ((thread_ID == 2'b10) && PC_ctrl))
            PC <= PC_next;
    end

endmodule