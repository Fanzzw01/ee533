`timescale 1ns / 1ps

module image_Reg
(
    input clk,
    input rst,
    input wen,
    input [63:0] image_in,
    input [5:0] image_addr,

    output image_i
);

    reg [63:0] image;

    always @(posedge clk) begin
        if (rst) begin
            image <= 64'b0;
        end
        else if (wen) begin
            image <= image_in;
        end
    end

    assign image_i = image[image_addr];

endmodule