`timescale 1ns / 1ps

module PC_Thread_MUX
(
    input [1:0] thread,

    input [8:0] PC0,
    input [8:0] PC1,
    input [8:0] PC2,
    input [8:0] PC3,

    output [8:0] PC
);

    case (thread)
        2'b00: begin
            assign PC = PC0;
        end
        2'b01: begin
            assign PC = PC1;
        end
        2'b10: begin
            assign PC = PC2;
        end
        2'b11: begin
            assign PC = PC3;
        end
    endcase

endmodule