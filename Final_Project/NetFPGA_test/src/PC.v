`timescale 1ns / 1ps

module PC
(
    input clk,
    input rst,

    output reg [8:0] PC,
    output wea
);

    assign wea = 1'b1;

    always @(posedge clk) begin
        if (rst) begin
            PC <= 9'd0;
        end
        else begin
            PC <= PC + 9'd1;
        end
    end

endmodule