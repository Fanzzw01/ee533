`timescale 1ns / 1ps

module In_Temp_FIFO_state_machine
# (
    parameter FIFO_STALL_STATE = 2'd0,
    parameter FIFO_IN_STATE = 2'd1,
    parameter FIFO_OUT_STATE = 2'd2,
)
(
    input clk,
    input rst,
    input [7:0] RP,
    input pkt_begin,
    input pkt_end,
    input [7:0] depth,

    output reg [7:0] RP_plus_3,
    output FIFO_IN,
    output FIFO_OUT
);

    reg [1:0] current_state;
    reg [1:0] next_state;

    assign FIFO_IN = (next_state == FIFO_IN_STATE);
    assign FIFO_OUT = (next_state == FIFO_OUT_STATE);

    always @(posedge clk) begin
        if (rst) begin
            current_state <= FIFO_STALL_STATE;
            next_state <= FIFO_STALL_STATE;
            RP_plus_3 <= 8'd0;
        end
        else begin
            current_state <= next_state;
            if (current_state == FIFO_IN_STATE && depth == 8'd3) begin
                RP_plus_3 <= RP + 8'd3;
            end
        end
    end

    always @(*) begin
        case(current_state)
            FIFO_STALL_STATE: begin
                if (pkt_begin) begin
                    next_state = FIFO_IN_STATE;
                end
            end
            FIFO_IN_STATE: begin
                if (pkt_end) begin
                    next_state = FIFO_STALL_STATE;
                end
            end
            FIFO_OUT_STATE: begin
                if (pkt_begin) begin
                    next_state = FIFO_IN_STATE;
                end
                else begin
                    next_state = FIFO_STALL_STATE;
                end
            end
            default: begin
                next_state = FIFO_STALL_STATE;
            end
        endcase
    end

endmodule