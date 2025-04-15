`timescale 1ns / 1ps

module Queue_state_machine
# (
    parameter INNER_STALL_STATE = 2'd0,
    parameter INNER_IN_STATE = 2'd1,
    parameter INNER_OUT_STATE = 2'd2,
    parameter OUTER_STALL_STATE = 2'd0,
    parameter OUTER_IN_STATE = 2'd1,
    parameter OUTER_OUT_STATE = 2'd2
)
(
    input clk,
    input rst,
    input FIFO_out_state,
    input match,
    input pkt_end,
    input queue_out_en,
    input [1:0] WP_outer, RP_outer,
    input [3:0] inner_FIFO_empty,


    output reg Outer_FIFO_CU_in_en, Outer_FIFO_CU_out_en,
    output reg [3:0] Inner_FIFO_CU_in_en, Inner_FIFO_CU_out_en,
    output [3:0] inner_next_state_is_input,
    output [3:0] inner_next_state_is_output
);

    integer i;

    reg [1:0] outer_current_state;
    reg [1:0] outer_next_state;
    reg [1:0] inner_current_state [3:0];
    reg [1:0] inner_next_state [3:0];

    assign inner_next_state_is_input[3] = (inner_next_state[3] == INNER_IN_STATE) ? 1 : 0;
    assign inner_next_state_is_input[2] = (inner_next_state[2] == INNER_IN_STATE) ? 1 : 0;
    assign inner_next_state_is_input[1] = (inner_next_state[1] == INNER_IN_STATE) ? 1 : 0;
    assign inner_next_state_is_input[0] = (inner_next_state[0] == INNER_IN_STATE) ? 1 : 0;

    assign inner_next_state_is_output[3] = (inner_next_state[3] == INNER_OUT_STATE) ? 1 : 0;
    assign inner_next_state_is_output[2] = (inner_next_state[2] == INNER_OUT_STATE) ? 1 : 0;
    assign inner_next_state_is_output[1] = (inner_next_state[1] == INNER_OUT_STATE) ? 1 : 0;
    assign inner_next_state_is_output[0] = (inner_next_state[0] == INNER_OUT_STATE) ? 1 : 0;

    always @(posedge clk) begin
        if (rst) begin
            outer_current_state <= OUTER_STALL_STATE;
            outer_next_state <= OUTER_STALL_STATE;
            for (i = 0; i < 4; i = i + 1) begin
                inner_current_state[i] <= INNER_STALL_STATE;
                inner_next_state[i] <= INNER_STALL_STATE;
            end
        end
        else begin
            outer_current_state <= outer_next_state;
            for (i = 0; i < 4; i = i + 1) begin
                inner_current_state[i] <= inner_next_state[i];
            end
        end
    end

    always @(*) begin
        case(inner_current_state[0])
            INNER_STALL_STATE: begin
                Inner_FIFO_CU_in_en[0] = (FIFO_out_state && (WP_outer == 2'd0) && match) ? 1 : 0;
                Inner_FIFO_CU_out_en[0] = (queue_out_en && (RP_outer == 2'd0)) ? 1 : 0;
                if (FIFO_out_state && (WP_outer == 2'd0) && match) begin
                    inner_next_state[0] = INNER_IN_STATE;
                end
                else if (queue_out_en && (RP_outer == 2'd0)) begin
                    inner_next_state[0] = INNER_OUT_STATE;
                end
                else begin
                    inner_next_state[0] = INNER_STALL_STATE;
                end
            end
            INNER_IN_STATE: begin
                Inner_FIFO_CU_in_en[0] = ~pkt_end ? 1 : 0;
                Inner_FIFO_CU_out_en[0] = 0;
                if (pkt_end) begin
                    inner_next_state[0] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[0] = INNER_IN_STATE;
                end
            end
            INNER_OUT_STATE: begin
                Inner_FIFO_CU_in_en[0] = 0;
                Inner_FIFO_CU_out_en[0] = ~inner_FIFO_empty[0] ? 1 : 0;
                if (inner_FIFO_empty[0]) begin
                    inner_next_state[0] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[0] = INNER_OUT_STATE;
                end
            end
        endcase
    end

    always @(*) begin
        case(inner_current_state[1])
            INNER_STALL_STATE: begin
                Inner_FIFO_CU_in_en[1] = (FIFO_out_state && (WP_outer == 2'd1) && match) ? 1 : 0;
                Inner_FIFO_CU_out_en[1] = (queue_out_en && (RP_outer == 2'd1)) ? 1 : 0;
                if (FIFO_out_state && (WP_outer == 2'd1) && match) begin
                    inner_next_state[1] = INNER_IN_STATE;
                end
                else if (queue_out_en && (RP_outer == 2'd1)) begin
                    inner_next_state[1] = INNER_OUT_STATE;
                end
                else begin
                    inner_next_state[1] = INNER_STALL_STATE;
                end
            end
            INNER_IN_STATE: begin
                Inner_FIFO_CU_in_en[1] = ~pkt_end ? 1 : 0;
                Inner_FIFO_CU_out_en[1] = 0;
                if (pkt_end) begin
                    inner_next_state[1] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[1] = INNER_IN_STATE;
                end
            end
            INNER_OUT_STATE: begin
                Inner_FIFO_CU_in_en[1] = 0;
                Inner_FIFO_CU_out_en[1] = ~inner_FIFO_empty[1] ? 1 : 0;
                if (inner_FIFO_empty[1]) begin
                    inner_next_state[1] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[1] = INNER_OUT_STATE;
                end
            end
        endcase
    end

    always @(*) begin
        case(inner_current_state[2])
            INNER_STALL_STATE: begin
                Inner_FIFO_CU_in_en[2] = (FIFO_out_state && (WP_outer == 2'd2) && match) ? 1 : 0;
                Inner_FIFO_CU_out_en[2] = (queue_out_en && (RP_outer == 2'd2)) ? 1 : 0;
                if (FIFO_out_state && (WP_outer == 2'd2) && match) begin
                    inner_next_state[2] = INNER_IN_STATE;
                end
                else if (queue_out_en && (RP_outer == 2'd2)) begin
                    inner_next_state[2] = INNER_OUT_STATE;
                end
                else begin
                    inner_next_state[2] = INNER_STALL_STATE;
                end
            end
            INNER_IN_STATE: begin
                Inner_FIFO_CU_in_en[2] = ~pkt_end ? 1 : 0;
                Inner_FIFO_CU_out_en[2] = 0;
                if (pkt_end) begin
                    inner_next_state[2] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[2] = INNER_IN_STATE;
                end
            end
            INNER_OUT_STATE: begin
                Inner_FIFO_CU_in_en[2] = 0;
                Inner_FIFO_CU_out_en[2] = ~inner_FIFO_empty[2] ? 1 : 0;
                if (inner_FIFO_empty[2]) begin
                    inner_next_state[2] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[2] = INNER_OUT_STATE;
                end
            end
        endcase
    end

    always @(*) begin
        case(inner_current_state[3])
            INNER_STALL_STATE: begin
                Inner_FIFO_CU_in_en[3] = (FIFO_out_state && (WP_outer == 2'd3) && match) ? 1 : 0;
                Inner_FIFO_CU_out_en[3] = (queue_out_en && (RP_outer == 2'd3)) ? 1 : 0;
                if (FIFO_out_state && (WP_outer == 2'd3) && match) begin
                    inner_next_state[3] = INNER_IN_STATE;
                end
                else if (queue_out_en && (RP_outer == 2'd3)) begin
                    inner_next_state[3] = INNER_OUT_STATE;
                end
                else begin
                    inner_next_state[3] = INNER_STALL_STATE;
                end
            end
            INNER_IN_STATE: begin
                Inner_FIFO_CU_in_en[3] = ~pkt_end ? 1 : 0;
                Inner_FIFO_CU_out_en[3] = 0;
                if (pkt_end) begin
                    inner_next_state[3] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[3] = INNER_IN_STATE;
                end
            end
            INNER_OUT_STATE: begin
                Inner_FIFO_CU_in_en[3] = 0;
                Inner_FIFO_CU_out_en[3] = ~inner_FIFO_empty[3] ? 1 : 0;
                if (inner_FIFO_empty[3]) begin
                    inner_next_state[3] = INNER_STALL_STATE;
                end
                else begin
                    inner_next_state[3] = INNER_OUT_STATE;
                end
            end
        endcase
    end

    always @(*) begin
        case(outer_current_state)
            OUTER_STALL_STATE: begin
                Outer_FIFO_CU_in_en = (inner_current_state[WP_outer] == INNER_IN_STATE && pkt_end) ? 1 : 0;
                Outer_FIFO_CU_out_en = (inner_current_state[RP_outer] == INNER_OUT_STATE && inner_FIFO_empty[RP_outer]) ? 1 : 0;
                if (inner_current_state[WP_outer] == INNER_IN_STATE && pkt_end) begin
                    outer_next_state = OUTER_IN_STATE;
                end
                else if (inner_current_state[RP_outer] == INNER_OUT_STATE && inner_FIFO_empty[RP_outer]) begin
                    outer_next_state = OUTER_OUT_STATE;
                end
                else begin
                    outer_next_state = OUTER_STALL_STATE;
                end
            end
            OUTER_IN_STATE: begin
                Outer_FIFO_CU_in_en = 0;
                Outer_FIFO_CU_out_en = 0;
                outer_next_state = OUTER_STALL_STATE;
            end
            OUTER_OUT_STATE: begin
                Outer_FIFO_CU_in_en = 0;
                Outer_FIFO_CU_out_en = 0;
                outer_next_state = OUTER_STALL_STATE;
            end
        endcase
    end

endmodule