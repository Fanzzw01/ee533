`timescale 1ns / 1ps

module RP_Adder
(
    input [63:0] RP,

    output [63:0] RP_next
);

    assign RP_next = RP + 1;

endmodule