`timescale 1ns / 1ps

module In_Temp_FIFO_RP
(
    input clk,
    input rst,
    input RP_en,
    input FIFO_EMPTY,

    output reg [7:0] RP
);

    always @(posedge clk) begin
        if (rst) begin
            RP <= 8'b0;
        end
        else if (RP_en && ~FIFO_EMPTY) begin
            RP <= RP + 1;
        end
    end

endmodule