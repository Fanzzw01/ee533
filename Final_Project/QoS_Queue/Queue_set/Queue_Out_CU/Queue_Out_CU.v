`timescale 1ns / 1ps

module Queue_Out_CU
(
    input clk,
    input rst,
    input [2:0] depth_outer_0, depth_outer_1,
    input [39:0] weight_in,
    input weight_in_wen,
    input total_queue_out_en,

    output [1:0] queue_out_en
);

    integer i;

    reg [39:0] weight;

    wire [3:0] queue_0_weight, queue_1_weight;

    assign queue_0_weight = (depth_outer_0 == 3'd0) ? weight[3:0] :
                            (depth_outer_0 == 3'd1) ? weight[7:4] :
                            (depth_outer_0 == 3'd2) ? weight[11:8] :
                            (depth_outer_0 == 3'd3) ? weight[15:12] : weight[19:16];

    assign queue_1_weight = (depth_outer_1 == 3'd0) ? weight[23:20] :
                            (depth_outer_1 == 3'd1) ? weight[27:24] :
                            (depth_outer_1 == 3'd2) ? weight[31:28] :
                            (depth_outer_1 == 3'd3) ? weight[35:32] : weight[39:36];

    assign queue_out_en[0] = total_queue_out_en && (queue_0_weight > queue_1_weight) ? 1 : 0;
    assign queue_out_en[1] = total_queue_out_en && (queue_0_weight <= queue_1_weight) ? 1 : 0;

    always @(posedge clk) begin
        if (rst) begin
            weight <= 40'd0;
        end
        else if (weight_in_wen) begin
            weight <= weight_in;
        end
    end

endmodule