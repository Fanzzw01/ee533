`timescale 1ns / 1ps

module neurons
(
    input clk,
    input rst,
    input [63:0] image,

    output [15:0] neurons_output
);

    reg [63:0] weight [15:0];

    always @(posedge clk) begin
        if (rst) begin
            
        end
    end

endmodule