`timescale 1ns / 1ps

module neurons_output
(
    input clk,
    input rst,

    input [15:0] ReLu_1,
    input [15:0] ReLu_2,
    input [15:0] ReLu_3,

    output reg [15:0] Prediction_score
);

    reg [15:0] weight [2:0];
    integer i;

    always @(posedge clk) begin
        if (rst) begin
            Prediction_score <= 16'b0;
            for (i = 0; i < 3; i++) begin
                weight[i] <= 16'b0;
            end
        end
        else begin
            Prediction_score <= ReLu_1 * weight[0] + ReLu_2 * weight[1] + ReLu_3 * weight[2];
        end
    end

endmodule