`timescale 1ns / 1ps

module PC_Thread_MUX
(
    input [1:0] thread,

    input [6:0] PC0,
    input [6:0] PC1,
    input [6:0] PC2,
    input [6:0] PC3,

    output [8:0] PC
);

    assign PC = (thread == 2'b00) ? {thread, PC0} :
                (thread == 2'b01) ? {thread, PC1} :
                (thread == 2'b10) ? {thread, PC2} :
                {thread, PC3};

endmodule