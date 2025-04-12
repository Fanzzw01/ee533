`timescale 1ns / 1ps

module neurons_hidden
(
    input clk,
    input rst,
    input wen,
    input en,
    input [15:0] weight_in,
    input [5:0] weight_addr,
    input [63:0] image,

    output reg [15:0] neurons_output
);

    reg [15:0] weight [63:0];
    reg [15:0] sum;
    integer i;

    wire [15:0] weight_to_adder, sum_to_adder;

    fp16_adder fp_adder
    (
        .clk(clk),
        .rst(rst),
        .en(en),
        .a(weight_to_adder),
        .b(sum_to_adder)
    );

    always @(posedge clk) begin
        if (rst) begin
            sum <= 16'b0;
            neurons_output <= 16'b0;
            for (i = 0; i < 64; i = i + 1) begin
                weight[i] <= 16'b0;
            end
        end
        else if (wen) begin
            weight[weight_addr] <= weight_in;
        end
        else if (en) begin
            sum <= 16'b0;
            for (i = 0; i < 64; i = i + 1) begin
                sum = sum + ((image[i]) ? weight[i] : 16'b0); 
            end
            neurons_output <= sum;
        end
    end

endmodule