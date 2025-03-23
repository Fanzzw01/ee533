`timescale 1ns / 1ps

module fp16_adder(
    input clk,
    input en,         
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] sum
);

    reg a_sign, b_sign;
    reg [4:0] a_exp, b_exp;
    reg [9:0] a_frac, b_frac;
    reg [10:0] a_mant, b_mant;
    
    always @(posedge clk) begin
        if (en) begin
            a_sign <= a[15];
            a_exp  <= a[14:10];
            a_frac <= a[9:0];
            b_sign <= b[15];
            b_exp  <= b[14:10];
            b_frac <= b[9:0];
            
            a_mant <= (a_exp != 0) ? {1'b1, a_frac} : {1'b0, a_frac};
            b_mant <= (b_exp != 0) ? {1'b1, b_frac} : {1'b0, b_frac};
        end
    end

    reg [4:0] aligned_exp;
    reg [10:0] a_mant_aligned, b_mant_aligned;
    reg [4:0] exp_diff;
    
    always @(posedge clk) begin
        if (en) begin
            if(a_exp >= b_exp) begin
                aligned_exp <= a_exp;
                exp_diff <= a_exp - b_exp;
                a_mant_aligned <= a_mant;
                b_mant_aligned <= b_mant >> (a_exp - b_exp);
            end else begin
                aligned_exp <= b_exp;
                exp_diff <= b_exp - a_exp;
                a_mant_aligned <= a_mant >> (b_exp - a_exp);
                b_mant_aligned <= b_mant;
            end
        end
    end

    reg op_add;
    reg [11:0] mant_sum;
    always @(posedge clk) begin
        if (en) begin
            op_add <= (a_sign == b_sign);
            if (op_add)
                mant_sum <= a_mant_aligned + b_mant_aligned;
            else
                mant_sum <= a_mant_aligned - b_mant_aligned;
        end
    end

    reg [11:0] norm_mant;
    reg [4:0] norm_exp;
    integer i;
    always @(posedge clk) begin
        if (en) begin
            norm_mant <= mant_sum;
            norm_exp  <= aligned_exp;
            for (i = 0; i < 12; i = i + 1) begin
                if (norm_mant[11] == 0 && norm_mant != 0) begin
                    norm_mant <= norm_mant << 1;
                    norm_exp  <= norm_exp - 1;
                end
            end
        end
    end

    wire [9:0] result_frac = norm_mant[10:1];
    reg result_sign;
    always @(posedge clk) begin
        if (en) begin
            result_sign <= (a_exp >= b_exp) ? a_sign : b_sign;
            sum <= {result_sign, norm_exp, result_frac};
        end
    end

endmodule