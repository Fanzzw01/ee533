`timescale 1ns / 1ps

module fp16_adder_pipeline(
    input clk,
    input en,         // When high, new inputs are latched into the pipeline.
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] sum  // Final fp16 sum (available after 5 clock cycles)
);

    // -----------------------------------
    // Stage 1: Field Extraction & Mantissa Formation
    // -----------------------------------
    reg        a_sign_s1, b_sign_s1;
    reg [4:0]  a_exp_s1,  b_exp_s1;
    reg [9:0]  a_frac_s1, b_frac_s1;
    reg [10:0] a_mant_s1, b_mant_s1;
    
    always @(posedge clk) begin
        if(en) begin
            a_sign_s1  <= a[15];
            a_exp_s1   <= a[14:10];
            a_frac_s1  <= a[9:0];
            b_sign_s1  <= b[15];
            b_exp_s1   <= b[14:10];
            b_frac_s1  <= b[9:0];
            
            a_mant_s1  <= (a_exp_s1 != 0) ? {1'b1, a_frac_s1} : {1'b0, a_frac_s1};
            b_mant_s1  <= (b_exp_s1 != 0) ? {1'b1, b_frac_s1} : {1'b0, b_frac_s1};
        end
    end

    // -----------------------------------
    // Stage 2: Exponent Alignment
    // -----------------------------------
    reg [4:0]  aligned_exp_s2;
    reg [10:0] a_mant_aligned_s2, b_mant_aligned_s2;
    reg [4:0]  exp_diff_s2;
    
    always @(posedge clk) begin
        if(en) begin
            if(a_exp_s1 >= b_exp_s1) begin
                aligned_exp_s2    <= a_exp_s1;
                exp_diff_s2       <= a_exp_s1 - b_exp_s1;
                a_mant_aligned_s2 <= a_mant_s1;
                b_mant_aligned_s2 <= b_mant_s1 >> (a_exp_s1 - b_exp_s1);
            end else begin
                aligned_exp_s2    <= b_exp_s1;
                exp_diff_s2       <= b_exp_s1 - a_exp_s1;
                a_mant_aligned_s2 <= a_mant_s1 >> (b_exp_s1 - a_exp_s1);
                b_mant_aligned_s2 <= b_mant_s1;
            end
        end
    end

    // -----------------------------------
    // Stage 3: Mantissa Addition/Subtraction
    // -----------------------------------
    reg op_add_s3;
    reg [11:0] mant_sum_s3;
    always @(posedge clk) begin
        if(en) begin
            // Use Stage1 sign fields to decide the operation.
            op_add_s3 <= (a_sign_s1 == b_sign_s1);
            if(op_add_s3)
                mant_sum_s3 <= a_mant_aligned_s2 + b_mant_aligned_s2;
            else
                mant_sum_s3 <= a_mant_aligned_s2 - b_mant_aligned_s2;
        end
    end

    // -----------------------------------
    // Stage 4: Normalization
    // -----------------------------------
    reg [11:0] norm_mant_s4;
    reg [4:0]  norm_exp_s4;
    integer k;
    always @(posedge clk) begin
        if(en) begin
            norm_mant_s4 <= mant_sum_s3;
            norm_exp_s4  <= aligned_exp_s2;
            // Normalize: shift left until the MSB is 1 (if result is nonzero).
            // Note: This loop is unrolled combinationally within one clock cycle.
            for (k = 0; k < 12; k = k + 1) begin
                if (norm_mant_s4[11] == 0 && norm_mant_s4 != 0) begin
                    norm_mant_s4 <= norm_mant_s4 << 1;
                    norm_exp_s4  <= norm_exp_s4 - 1;
                end
            end
        end
    end

    // -----------------------------------
    // Stage 5: Output Assembly
    // -----------------------------------
    reg result_sign_s5;
    reg [9:0] result_frac_s5;
    reg [15:0] sum_s5;
    always @(posedge clk) begin
        if(en) begin
            // For sign, we choose the sign of the operand with the larger exponent.
            result_sign_s5 <= (a_exp_s1 >= b_exp_s1) ? a_sign_s1 : b_sign_s1;
            result_frac_s5 <= norm_mant_s4[10:1];  // Take the top 10 bits (ignoring guard/sticky)
            sum_s5 <= {result_sign_s5, norm_exp_s4, result_frac_s5};
            sum <= sum_s5;
        end
    end

endmodule
