`timescale 1ns/1ps

`define UDP_REG_ADDR_WIDTH 16
`define CPCI_NF2_DATA_WIDTH 16
`define IDS_BLOCK_TAG 1
`define IDS_REG_ADDR_WIDTH 16

module ids 
   #(
      parameter DATA_WIDTH = 64,
      parameter CTRL_WIDTH = DATA_WIDTH/8,
      parameter UDP_REG_SRC_WIDTH = 2
   )
   (
      input  [DATA_WIDTH-1:0]             in_data,
      input  [CTRL_WIDTH-1:0]             in_ctrl,
      input                               in_wr,
      output                              in_rdy,

      output [DATA_WIDTH-1:0]             out_data,
      output [CTRL_WIDTH-1:0]             out_ctrl,
      output                              out_wr,
      input                               out_rdy,
      
      // --- Register interface
      input                               reg_req_in,
      input                               reg_ack_in,
      input                               reg_rd_wr_L_in,
      input  [`UDP_REG_ADDR_WIDTH-1:0]    reg_addr_in,
      input  [`CPCI_NF2_DATA_WIDTH-1:0]   reg_data_in,
      input  [UDP_REG_SRC_WIDTH-1:0]      reg_src_in,

      output                              reg_req_out,
      output                              reg_ack_out,
      output                              reg_rd_wr_L_out,
      output  [`UDP_REG_ADDR_WIDTH-1:0]   reg_addr_out,
      output  [`CPCI_NF2_DATA_WIDTH-1:0]  reg_data_out,
      output  [UDP_REG_SRC_WIDTH-1:0]     reg_src_out,

      // Logic Analyzer BRAM Interface
      output reg [71:0]                   bram_data_in,
      output reg                           bram_wr_en,
      output reg [7:0]                     bram_addr,
      
      // misc
      input                                reset,
      input                                clk
   );

   //------------------------- Signals-------------------------------
   wire [DATA_WIDTH-1:0]         in_fifo_data;
   wire [CTRL_WIDTH-1:0]         in_fifo_ctrl;
   wire                          in_fifo_nearly_full;
   wire                          in_fifo_empty;
   reg                           in_fifo_rd_en;
   reg                           out_wr_int;

   // Software registers 
   wire [31:0]                   pattern_high;
   wire [31:0]                   pattern_low;
   wire [31:0]                   ids_cmd;
   // Hardware registers
   reg [31:0]                    matches;
   reg [31:0]                    packet_count;

   // FSM state
   reg [1:0]                     state, state_next;
   reg [31:0]                    matches_next;
   reg                           in_pkt_body, in_pkt_body_next;
   reg                           end_of_pkt, end_of_pkt_next;
   reg                           begin_pkt, begin_pkt_next;
   reg [2:0]                     header_counter, header_counter_next;
   reg                           counter;

   // Logic Analyzer Signals
   reg                           capture_trigger;
   reg [7:0]                     bram_write_addr;

   // local parameter
   parameter                     START = 2'b00;
   parameter                     HEADER = 2'b01;
   parameter                     PAYLOAD = 2'b10;

   assign in_rdy     = !in_fifo_nearly_full;
   assign matcher_en = in_pkt_body;
   assign matcher_ce = (!in_fifo_empty && out_rdy);
   assign matcher_reset = (reset || ids_cmd[0] || end_of_pkt);

   //------------------------- Pattern Matching -------------------------------
   detect7B matcher (
      .ce            (matcher_ce),
      .match_en      (matcher_en),
      .clk           (clk),
      .pipe1         ({in_ctrl, in_data}),
      .hwregA        ({pattern_high, pattern_low}),
      .match         (matcher_match),
      .mrst          (matcher_reset)
   );

   //------------------------- Logic Analyzer BRAM Control -------------------------------
   always @(posedge clk) begin
      if (reset) begin
         capture_trigger <= 0;
         bram_write_addr <= 0;
         bram_wr_en <= 0;
      end else if (matcher_match && in_pkt_body) begin
         capture_trigger <= 1;
         bram_data_in <= {in_ctrl, in_data};
         bram_addr <= bram_write_addr;
         bram_wr_en <= 1;
         bram_write_addr <= bram_write_addr + 1;
      end else begin
         bram_wr_en <= 0;
      end
   end

   //------------------------- FSM -------------------------------
   always @(posedge clk) begin
      if (reset) begin
         matches <= 0;
         packet_count <= 0;
         state <= START;
         begin_pkt <= 0;
         end_of_pkt <= 0;
         in_pkt_body <= 0;
      end else begin
         if (ids_cmd[0]) matches <= 0;
         else matches <= matches_next;
         packet_count <= packet_count + 1;
         state <= state_next;
         begin_pkt <= begin_pkt_next;
         end_of_pkt <= end_of_pkt_next;
         in_pkt_body <= in_pkt_body_next;
      end
   end

endmodule
