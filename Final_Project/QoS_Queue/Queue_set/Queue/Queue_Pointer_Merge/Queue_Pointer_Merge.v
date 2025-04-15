`timescale 1ns / 1ps

module Queue_Pointer_Merge
(
    input match,
    input [1:0] WP_outer,
    input [1:0] RP_outer,

    input [7:0] WP_inner_3, WP_inner_2, WP_inner_1, WP_inner_0,
    input [7:0] RP_inner_3, RP_inner_2, RP_inner_1, RP_inner_0,

    input [3:0] WP_inner_X_in_en,
    input [3:0] RP_inner_X_out_en,

    input temp_fifo_out,
    input queue_out_en,
    input pkt_end,
    
    output queue_wen,
    output [9:0] WP_total,
    output [9:0] RP_total
);

    wire [7:0] WP_inner_actual, RP_inner_actual;

    assign WP_inner_actual = WP_outer == 2'd3 ? WP_inner_3 :
                             WP_outer == 2'd2 ? WP_inner_2 :
                             WP_outer == 2'd1 ? WP_inner_1 :
                             WP_inner_0;
    
    assign RP_inner_actual = RP_outer == 2'd3 ? RP_inner_3 :
                             RP_outer == 2'd2 ? RP_inner_2 :
                             RP_outer == 2'd1 ? RP_inner_1 :
                             RP_inner_0;

    assign WP_total = {WP_outer, WP_inner_actual};
    assign RP_total = {RP_outer, RP_inner_actual};

    assign queue_wen = temp_fifo_out || match;

endmodule