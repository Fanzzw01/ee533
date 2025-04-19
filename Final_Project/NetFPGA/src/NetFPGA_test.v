////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : NetFPGA_test.vf
// /___/   /\     Timestamp : 04/18/2025 14:57:18
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/Final_Project/NetFPGA_test.sch" NetFPGA_test.vf
//Design Name: NetFPGA_test
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module NetFPGA_test
#(
    parameter UDP_REG_SRC_WIDTH = 2
)
(
    input clk, 
    input rst,

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
    output  [UDP_REG_SRC_WIDTH-1:0]     reg_src_out
    
);
   
    wire [31:0] BRAM_in;
    wire [31:0] BRAM_out;
    wire [8:0] PC;
    wire wea;

    // Software Reg
    wire [31:0] IP_Core_wdata_din;
    wire [31:0] IP_Core_wea;
    wire [31:0] IP_Core_addr;

    // Hardware Reg
    reg [31:0] IP_Core_rdata_dout;
    wire [31:0] IP_Core_rdata_wire;

   
   Adder XLXI_1 (.IP_Core_rdata(BRAM_out[31:0]), 
                 .IP_Core_wdata(BRAM_in[31:0]));
   PC XLXI_2 (.clk(clk), 
              .rst(rst), 
              .PC(PC[8:0]), 
              .wea(wea));
   IP_Core ip_core (.addra(PC[8:0]), 
                   .addrb(IP_Core_addr[8:0]), 
                   .clka(clk), 
                   .clkb(clk), 
                   .dina(BRAM_in[31:0]), 
                   .dinb(IP_Core_wdata_din[31:0]), 
                   .wea(wea), 
                   .web(IP_Core_wea[0]), 
                   .douta(BRAM_out[31:0]), 
                   .doutb(IP_Core_rdata_wire[31:0]));

    generic_regs
   #( 
      .UDP_REG_SRC_WIDTH   (UDP_REG_SRC_WIDTH),
      .NUM_COUNTERS        (0),                 // Number of counters
      .NUM_SOFTWARE_REGS   (3),                 // Number of sw regs
      .NUM_HARDWARE_REGS   (1)                  // Number of hw regs
   ) module_regs (
      .reg_req_in       (reg_req_in),
      .reg_ack_in       (reg_ack_in),
      .reg_rd_wr_L_in   (reg_rd_wr_L_in),
      .reg_addr_in      (reg_addr_in),
      .reg_data_in      (reg_data_in),
      .reg_src_in       (reg_src_in),

      .reg_req_out      (reg_req_out),
      .reg_ack_out      (reg_ack_out),
      .reg_rd_wr_L_out  (reg_rd_wr_L_out),
      .reg_addr_out     (reg_addr_out),
      .reg_data_out     (reg_data_out),
      .reg_src_out      (reg_src_out),

      // --- counters interface
      .counter_updates  (),
      .counter_decrement(),

      // --- SW regs interface
      .software_regs    ({
        IP_Core_wdata_din,
        IP_Core_wea,
        IP_Core_addr
      }),

      // --- HW regs interface
      .hardware_regs    ({
        IP_Core_rdata_dout
      }),

      .clk              (clk),
      .reset            (rst)
    );

    always @(posedge clk) begin
        if (rst) begin
            IP_Core_rdata_dout <= 32'd0;
        end
        else begin
            IP_Core_rdata_dout <= IP_Core_rdata_wire;
        end
    end
endmodule
