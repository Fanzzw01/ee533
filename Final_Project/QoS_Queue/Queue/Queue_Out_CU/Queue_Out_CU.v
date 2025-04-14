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
    wire [3:0] queue_0_weight_addr_start, queue_0_weight_addr_end, queue_1_weight_addr_start, queue_1_weight_addr_end;

    assign queue_0_weight_addr_end = queue_0_weight_addr_start + 4'd3;
    assign queue_1_weight_addr_end = queue_1_weight_addr_start + 4'd3;

    assign queue_0_weight_addr_start = (depth_outer_0 == 3'd0) ? 4'd0 :
                                       (depth_outer_0 == 3'd1) ? 4'd4 :
                                       (depth_outer_0 == 3'd2) ? 4'd8 :
                                       (depth_outer_0 == 3'd3) ? 4'd12 :
                                       (depth_outer_0 == 3'd4) ? 4'd16 :
                                        4'd0;
    
    assign queue_1_weight_addr_start = (depth_outer_1 == 3'd0) ? 4'd20 :
                                       (depth_outer_1 == 3'd1) ? 4'd24 :
                                       (depth_outer_1 == 3'd2) ? 4'd28 :
                                       (depth_outer_1 == 3'd3) ? 4'd32 :
                                       (depth_outer_1 == 3'd4) ? 4'd36 :
                                        4'd20;

    assign queue_0_weight = weight[queue_0_weight_addr_end : queue_0_weight_addr_start];
    assign queue_1_weight = weight[queue_1_weight_addr_end : queue_1_weight_addr_start];

    assign queue_out_en[0] = total_queue_out_en && (queue_0_weight >= queue_1_weight) ? 1 : 0;
    assign queue_out_en[1] = total_queue_out_en && (queue_0_weight < queue_1_weight) ? 1 : 0;

    always @(posedge clk) begin
        if (rst) begin
            weight <= 40'd0;
        end
        else if (weight_in_wen) begin
            weight <= weight_in;
        end
    end

endmodule