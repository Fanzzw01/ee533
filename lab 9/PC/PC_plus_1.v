`timescale 1ns / 1ps

module PC_plus_1
(
    input [6:0] PC,
    input [6:0] ONE,

    output [6:0] PC_next
);

    assign PC_next = PC + ONE;

endmodule