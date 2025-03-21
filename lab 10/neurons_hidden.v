`timescale 1ns / 1ps

module neurons_hidden
(
    input clk,
    input rst,
    input [63:0] image,

    output reg [15:0] neurons_output
);

    reg [15:0] weight [63:0];
    reg [15:0] sum;
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            sum <= 16'b0;
            neurons_output <= 16'b0;
            for (i = 0; i < 64; i++) begin
                weight[i] <= 16'b0;
            end
        end
        else begin
            sum = 16'b0;
            for (i = 0; i < 64; i++) begin
                sum = sum + ((image[i]) ? weight[i] : 16'b0); 
            end
            neurons_output <= sum;
        end
    end

endmodule