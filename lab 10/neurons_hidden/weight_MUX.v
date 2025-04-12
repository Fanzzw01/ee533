`timescale 1ns / 1ps

module weight_MUX
(
    input [15:0] weight,
    input image_i,

    output [15:0] MUX_out
);

    assign MUX_out = image_i ? weight : 16'b0;

endmodule