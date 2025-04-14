`timescale 1ns / 1ps

module Inner_RP
(
    input clk,
    input rst,
    input RP_en,

    output reg [7:0] RP
);

    always @(posedge clk) begin
        if (rst) begin
            RP <= 8'd0;
        end
        else if (RP_en) begin
            RP <= RP + 8'd1;
        end
    end

endmodule