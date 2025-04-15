`timescale 1ns / 1ps

module Outer_CU # (
    parameter FIFO_SIZE = 4,
    parameter FIFO_FULL_THREAD = 2,
    parameter FIFO_EMPTY_THREAD = 1
)
(
    input clk,
    input rst,
    input [1:0] WP,
    input [1:0] RP,
    input outer_queue_in,
    input outer_queue_out,

    output [2:0] outer_depth,
    output WP_en,
    output RP_en
);

    reg Outer_Queue_almost_full;
    reg Outer_Queue_almost_empty;
    wire OUTER_FIFO_FULL;
    wire OUTER_FIFO_EMPTY;

    assign OUTER_FIFO_EMPTY = (WP == RP) && Outer_Queue_almost_empty;
    assign OUTER_FIFO_FULL = (WP == RP) && Outer_Queue_almost_full;
    assign outer_depth = (WP >= RP) ? (WP - RP) : (WP - RP + FIFO_SIZE);

    assign WP_en = outer_queue_in && ~OUTER_FIFO_FULL;
    assign RP_en = outer_queue_out && ~OUTER_FIFO_EMPTY;

    always @(posedge clk) begin
        if (rst) begin
            Outer_Queue_almost_full <= 1'b0;
            Outer_Queue_almost_empty <= 1'b0;
        end
        else begin
            Outer_Queue_almost_full <= (outer_depth >= FIFO_FULL_THREAD) ? 1 : 0;
            Outer_Queue_almost_empty <= (outer_depth <= FIFO_EMPTY_THREAD) ? 1 : 0;
        end
    end

endmodule