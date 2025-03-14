`timescale 1ns / 1ps

module Offset_ID_to_BTA
(
    input [63:0] Offset_ID,

    output [6:0] BTA
);

    assign BTA = Offset_ID[6:0];

endmodule