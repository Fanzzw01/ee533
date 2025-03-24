module fp16_adder(
    input clk,
    input rst,    // Active-high reset
    input en,
    input [15:0] a,
    input [15:0] b,
    output reg [15:0] result
);
  // Declare registers for internal signals.
  reg         sign_a, sign_b;
  reg  [4:0]  exp_a, exp_b;
  reg  [9:0]  frac_a, frac_b;
  
  reg  [10:0] mant_a, mant_b;
  reg  [4:0]  exp_diff, exp_max;
  reg  [10:0] aligned_mant_a, aligned_mant_b;
  reg         add_op;
  reg  [11:0] mant_sum;
  reg         result_sign;
  
  reg  [10:0] norm_mant;
  reg  [4:0]  norm_exp;
  integer     i;
  
  always @(posedge clk) begin
    if (rst) begin
      result <= 16'b0;
    end
    else if (en) begin
      // Step 1: Decompose the FP16 inputs
      sign_a = a[15];
      exp_a  = a[14:10];
      frac_a = a[9:0];
      
      sign_b = b[15];
      exp_b  = b[14:10];
      frac_b = b[9:0];
      
      // For normalized numbers (exp ≠ 0), add the implicit '1'
      mant_a = (exp_a != 0) ? {1'b1, frac_a} : {1'b0, frac_a};
      mant_b = (exp_b != 0) ? {1'b1, frac_b} : {1'b0, frac_b};
      
      // Step 2: Align exponents by shifting the smaller mantissa
      if (exp_a >= exp_b) begin
        exp_diff       = exp_a - exp_b;
        aligned_mant_a = mant_a;
        aligned_mant_b = mant_b >> exp_diff;
        exp_max        = exp_a;
      end else begin
        exp_diff       = exp_b - exp_a;
        aligned_mant_a = mant_a >> exp_diff;
        aligned_mant_b = mant_b;
        exp_max        = exp_b;
      end
      
      // Step 3: Determine operation (addition or subtraction)
      add_op = (sign_a == sign_b);
      if (add_op) begin
        mant_sum   = aligned_mant_a + aligned_mant_b;
        result_sign = sign_a;
      end else begin
        if (aligned_mant_a >= aligned_mant_b) begin
          mant_sum   = aligned_mant_a - aligned_mant_b;
          result_sign = sign_a;
        end else begin
          mant_sum   = aligned_mant_b - aligned_mant_a;
          result_sign = sign_b;
        end
      end
      
      // Step 4: Normalization
      // Check for carry-out in addition: if mant_sum[11] is set, shift right and increment exponent.
      if (mant_sum[11]) begin
        norm_mant = mant_sum[11:1];
        norm_exp  = exp_max + 1;
      end else begin
        norm_mant = mant_sum[10:0];
        norm_exp  = exp_max;
        // For subtraction results, shift left until the most-significant bit is 1 (if nonzero).
        for (i = 0; i < 11; i = i + 1) begin
          if (norm_mant[10] == 0 && norm_mant != 0) begin
            norm_mant = norm_mant << 1;
            norm_exp  = norm_exp - 1;
          end
        end
      end
      
      // Step 5: Pack the result (truncate norm_mant to 10 bits for the fraction)
      result <= {result_sign, norm_exp, norm_mant[9:0]};
    end
  end
endmodule