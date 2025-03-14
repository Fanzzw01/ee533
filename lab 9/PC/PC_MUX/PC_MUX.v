`timescale 1ns / 1ps

module PC_MUX
(
    input [6:0] PC_next_in,
    input [6:0] BTA,
    input PC_ctrl,

    output [6:0] PC_next_out
);

    assign PC_next_out = PC_ctrl ? BTA : PC_next_in;

endmodule