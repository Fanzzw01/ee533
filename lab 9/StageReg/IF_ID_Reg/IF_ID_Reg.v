`timescale 1ns / 1ps

module IF_ID_Reg
(
    input clk,
    input rst,

    input [31:0] Instruction,
    input [1:0] thread_IF,

    output [5:0] OP_CODE_ID,
    output [4:0] rs_ID,
    output [4:0] rt_ID,
    output [15:0] Offset_ID,
    output reg [1:0] thread_ID
);

    assign OP_CODE_ID = Instruction[31:26];
    assign rs_ID = Instruction[25:21];
    assign rt_ID = Instruction[20:16];
    assign Offset_ID = Instruction[15:0];

    always @(posedge clk) begin
        if (rst) begin
            thread_ID <= 0;
        end
        else begin
            thread_ID <= thread_IF;
        end
    end

endmodule