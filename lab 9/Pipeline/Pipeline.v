////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Pipeline.vf
// /___/   /\     Timestamp : 03/14/2025 15:40:43
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lab9/Pipeline.sch" Pipeline.vf
//Design Name: Pipeline
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Pipeline(clk, 
                HLEN, 
                Instr_IN, 
                Instr_IN_addr, 
                Instr_IN_en, 
                mode_code, 
                pkt_in, 
                rst, 
                rst_FIFO, 
                thread_IF, 
                FIFO_EMPTY, 
                FIFO_FULL, 
                pkt_out);

    input clk;
    input [63:0] HLEN;
    input [31:0] Instr_IN;
    input [8:0] Instr_IN_addr;
    input Instr_IN_en;
    input [1:0] mode_code;
    input [63:0] pkt_in;
    input rst;
    input rst_FIFO;
    input [1:0] thread_IF;
   output FIFO_EMPTY;
   output FIFO_FULL;
   output [63:0] pkt_out;
   
   wire ADDI_EX;
   wire ADDI_ID;
   wire ADDI_M;
   wire ADDI_WB;
   wire [3:0] ALU_OP_EX;
   wire [3:0] ALU_OP_ID;
   wire [63:0] ALU_result_M;
   wire [63:0] ALU_result_WB;
   wire BEQ_ID;
   wire BGT_ID;
   wire BLT_ID;
   wire [6:0] BTA;
   wire [7:0] depth;
   wire [7:0] D_addr_src_MUX_out;
   wire [63:0] D_out_WB;
   wire [7:0] D_raddr;
   wire [7:0] D_waddr;
   wire [63:0] D_wdata;
   wire FIFO_almost_EMPTY;
   wire FIFO_almost_FULL;
   wire [31:0] Instruction;
   wire J_ID;
   wire LW_EX;
   wire LW_ID;
   wire LW_M;
   wire LW_WB;
   wire MOVI_EX;
   wire MOVI_ID;
   wire MOVI_M;
   wire MOVI_WB;
   wire NOOP_EX;
   wire NOOP_ID;
   wire NOOP_M;
   wire [63:0] Offset_EX;
   wire [63:0] Offset_ID;
   wire [63:0] Offset_M;
   wire [63:0] Offset_WB;
   wire [6:0] ONE;
   wire [5:0] OP_CODE_ID;
   wire [8:0] PC;
   wire PC_ctrl;
   wire [6:0] PC0;
   wire [6:0] PC1;
   wire [6:0] PC2;
   wire [6:0] PC3;
   wire [63:0] RF_WB_Din;
   wire [63:0] RF0_rs_data;
   wire [63:0] RF0_rt_data;
   wire [63:0] RF1_rs_data;
   wire [63:0] RF1_rt_data;
   wire [63:0] RF2_rs_data;
   wire [63:0] RF2_rt_data;
   wire [63:0] RF3_rs_data;
   wire [63:0] RF3_rt_data;
   wire [7:0] RP;
   wire RP_en;
   wire [7:0] RP_next;
   wire [63:0] rs_data_EX;
   wire [63:0] rs_data_ID;
   wire [63:0] rs_data_M;
   wire [4:0] rs_ID;
   wire [63:0] rt_data_EX;
   wire [63:0] rt_data_ID;
   wire [63:0] rt_data_M;
   wire [4:0] rt_EX;
   wire [4:0] rt_ID;
   wire [4:0] rt_M;
   wire [2:0] rt_WB;
   wire [7:0] SRAM_addr;
   wire SUBI_EX;
   wire SUBI_ID;
   wire SUBI_M;
   wire SUBI_WB;
   wire SW_EX;
   wire SW_ID;
   wire SW_M;
   wire [1:0] thread_EX;
   wire [1:0] thread_ID;
   wire [1:0] thread_M;
   wire [1:0] thread_WB;
   wire [2:0] waddr_DEMUX_out;
   wire [63:0] wdata_DEMUX_out;
   wire WME_EX;
   wire WME_ID;
   wire WME_M;
   wire WME_OR_out;
   wire [7:0] WP;
   wire WP_en;
   wire [7:0] WP_next;
   wire WRE_EX;
   wire WRE_ID;
   wire WRE_M;
   wire WRE_WB;
   wire [15:0] XLXN_76;
   wire XLXN_130;
   wire XLXN_131;
   wire XLXN_134;
   wire XLXN_135;
   wire [63:0] XLXN_171;
   wire [63:0] XLXN_173;
   wire [63:0] XLXN_175;
   wire [63:0] XLXN_177;
   wire [63:0] XLXN_179;
   wire FIFO_FULL_DUMMY;
   wire FIFO_EMPTY_DUMMY;
   wire [63:0] pkt_out_DUMMY;
   
   assign FIFO_EMPTY = FIFO_EMPTY_DUMMY;
   assign FIFO_FULL = FIFO_FULL_DUMMY;
   assign pkt_out[63:0] = pkt_out_DUMMY[63:0];
   I_MEM XLXI_14 (.addra(PC[8:0]), 
                  .addrb(Instr_IN_addr[8:0]), 
                  .clka(clk), 
                  .clkb(clk), 
                  .dinb(Instr_IN[31:0]), 
                  .web(Instr_IN_en), 
                  .douta(Instruction[31:0]));
   IF_ID_Reg XLXI_15 (.clk(clk), 
                      .Instruction(Instruction[31:0]), 
                      .rst(rst), 
                      .thread_IF(thread_IF[1:0]), 
                      .Offset_ID(XLXN_76[15:0]), 
                      .OP_CODE_ID(OP_CODE_ID[5:0]), 
                      .rs_ID(rs_ID[4:0]), 
                      .rt_ID(rt_ID[4:0]), 
                      .thread_ID(thread_ID[1:0]));
   RF XLXI_16 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_130), 
               .r0data(RF0_rs_data[63:0]), 
               .r1data(RF0_rt_data[63:0]));
   RF XLXI_17 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_131), 
               .r0data(RF1_rs_data[63:0]), 
               .r1data(RF1_rt_data[63:0]));
   RF XLXI_18 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_134), 
               .r0data(RF2_rs_data[63:0]), 
               .r1data(RF2_rt_data[63:0]));
   RF XLXI_19 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_135), 
               .r0data(RF3_rs_data[63:0]), 
               .r1data(RF3_rt_data[63:0]));
   RF_DEMUX XLXI_29 (.thread_WB(thread_WB[1:0]), 
                     .waddr(rt_WB[2:0]), 
                     .wdata(RF_WB_Din[63:0]), 
                     .WRE_WB(WRE_WB), 
                     .RF0_WRE_WB(XLXN_130), 
                     .RF1_WRE_WB(XLXN_131), 
                     .RF2_WRE_WB(XLXN_134), 
                     .RF3_WRE_WB(XLXN_135), 
                     .waddr_DEMUX_out(waddr_DEMUX_out[2:0]), 
                     .wdata_DEMUX_out(wdata_DEMUX_out[63:0]));
   RF_MUX XLXI_30 (.RF0_r0data(RF0_rs_data[63:0]), 
                   .RF0_r1data(RF0_rt_data[63:0]), 
                   .RF1_r0data(RF1_rs_data[63:0]), 
                   .RF1_r1data(RF1_rt_data[63:0]), 
                   .RF2_r0data(RF2_rs_data[63:0]), 
                   .RF2_r1data(RF2_rt_data[63:0]), 
                   .RF3_r0data(RF3_rs_data[63:0]), 
                   .RF3_r1data(RF3_rt_data[63:0]), 
                   .thread_ID(thread_ID[1:0]), 
                   .r0data(rs_data_ID[63:0]), 
                   .r1data(rt_data_ID[63:0]));
   Control_Unit XLXI_31 (.OP_CODE(OP_CODE_ID[5:0]), 
                         .ADDI_ID(ADDI_ID), 
                         .ALU_OP_ID(ALU_OP_ID[3:0]), 
                         .BEQ_ID(BEQ_ID), 
                         .BGT_ID(BGT_ID), 
                         .BLT_ID(BLT_ID), 
                         .J_ID(J_ID), 
                         .LW_ID(LW_ID), 
                         .MOVI_ID(MOVI_ID), 
                         .NOOP_ID(NOOP_ID), 
                         .SUBI_ID(SUBI_ID), 
                         .SW_ID(SW_ID), 
                         .WME_ID(WME_ID), 
                         .WRE_ID(WRE_ID));
   Branch_Detection_Unit XLXI_32 (.BEQ_ID(BEQ_ID), 
                                  .BGT_ID(BGT_ID), 
                                  .BLT_ID(BLT_ID), 
                                  .J_ID(J_ID), 
                                  .rs_data(rs_data_ID[63:0]), 
                                  .rt_data(rt_data_ID[63:0]), 
                                  .PC_ctrl(PC_ctrl));
   ID_EX_Reg XLXI_37 (.ADDI_ID(ADDI_ID), 
                      .ALU_OP_ID(ALU_OP_ID[3:0]), 
                      .clk(clk), 
                      .LW_ID(LW_ID), 
                      .MOVI_ID(MOVI_ID), 
                      .NOOP_ID(NOOP_ID), 
                      .Offset_ID(Offset_ID[63:0]), 
                      .rst(rst), 
                      .rs_data_ID(rs_data_ID[63:0]), 
                      .rt_data_ID(rt_data_ID[63:0]), 
                      .rt_ID(rt_ID[4:0]), 
                      .SUBI_ID(SUBI_ID), 
                      .SW_ID(SW_ID), 
                      .thread_ID(thread_ID[1:0]), 
                      .WME_ID(WME_ID), 
                      .WRE_ID(WRE_ID), 
                      .ADDI_EX(ADDI_EX), 
                      .ALU_OP_EX(ALU_OP_EX[3:0]), 
                      .LW_EX(LW_EX), 
                      .MOVI_EX(MOVI_EX), 
                      .NOOP_EX(NOOP_EX), 
                      .Offset_EX(Offset_EX[63:0]), 
                      .rs_data_EX(rs_data_EX[63:0]), 
                      .rt_data_EX(rt_data_EX[63:0]), 
                      .rt_EX(rt_EX[4:0]), 
                      .SUBI_EX(SUBI_EX), 
                      .SW_EX(SW_EX), 
                      .thread_EX(thread_EX[1:0]), 
                      .WME_EX(WME_EX), 
                      .WRE_EX(WRE_EX));
   ALU XLXI_38 (.A(rs_data_EX[63:0]), 
                .ALU_OP(ALU_OP_EX[3:0]), 
                .B(XLXN_177[63:0]), 
                .ALU_Out(XLXN_179[63:0]), 
                .Overflow(), 
                .Zero_Flag());
   HELN_Reg XLXI_39 (.clk(clk), 
                     .HLEN_in(HLEN[63:0]), 
                     .HLEN_Reg_write_en(WP_en), 
                     .rst_FIFO(rst_FIFO), 
                     .HLEN_out(XLXN_171[63:0]));
   HLEN_Offset_Adder XLXI_40 (.HLEN(XLXN_171[63:0]), 
                              .Offset(Offset_EX[63:0]), 
                              .result(XLXN_173[63:0]));
   ALU_src_MUX XLXI_41 (.ADDI_EX(ADDI_EX), 
                        .LW_EX(LW_EX), 
                        .Offset_EX(XLXN_175[63:0]), 
                        .rt_data(rt_data_EX[63:0]), 
                        .SUBI_EX(SUBI_EX), 
                        .SW_EX(SW_EX), 
                        .ALU_B(XLXN_177[63:0]));
   Offset_MUX XLXI_42 (.HLEN_Offset_Adder_result(XLXN_173[63:0]), 
                       .LW_EX(LW_EX), 
                       .Offset_EX(Offset_EX[63:0]), 
                       .SW_EX(SW_EX), 
                       .ALU_src_MUX_in(XLXN_175[63:0]));
   Offset_Extend XLXI_43 (.Offset(XLXN_76[15:0]), 
                          .Offset_ID(Offset_ID[63:0]));
   EX_M_Reg XLXI_44 (.ADDI_EX(ADDI_EX), 
                     .ALU_result_EX(XLXN_179[63:0]), 
                     .clk(clk), 
                     .LW_EX(LW_EX), 
                     .MOVI_EX(MOVI_EX), 
                     .NOOP_EX(NOOP_EX), 
                     .Offset_EX(Offset_EX[63:0]), 
                     .rst(rst), 
                     .rs_data_EX(rs_data_EX[63:0]), 
                     .rt_data_EX(rt_data_EX[63:0]), 
                     .rt_EX(rt_EX[4:0]), 
                     .SUBI_EX(SUBI_EX), 
                     .SW_EX(SW_EX), 
                     .thread_EX(thread_EX[1:0]), 
                     .WME_EX(WME_EX), 
                     .WRE_EX(WRE_EX), 
                     .ADDI_M(ADDI_M), 
                     .ALU_result_M(ALU_result_M[63:0]), 
                     .LW_M(LW_M), 
                     .MOVI_M(MOVI_M), 
                     .NOOP_M(NOOP_M), 
                     .Offset_M(Offset_M[63:0]), 
                     .rs_data_M(rs_data_M[63:0]), 
                     .rt_data_M(rt_data_M[63:0]), 
                     .rt_M(rt_M[4:0]), 
                     .SUBI_M(SUBI_M), 
                     .SW_M(SW_M), 
                     .thread_M(thread_M[1:0]), 
                     .WME_M(WME_M), 
                     .WRE_M(WRE_M));
   WP_Reg XLXI_51 (.clk(clk), 
                   .FIFO_FULL(FIFO_FULL_DUMMY), 
                   .rst(rst_FIFO), 
                   .WP_en(WP_en), 
                   .WP_next(WP_next[7:0]), 
                   .WP(WP[7:0]));
   RP_Reg XLXI_52 (.clk(clk), 
                   .FIFO_EMPTY(FIFO_EMPTY_DUMMY), 
                   .RP_en(RP_en), 
                   .RP_next(RP_next[7:0]), 
                   .rst(rst_FIFO), 
                   .RP(RP[7:0]));
   RP_Controller XLXI_53 (.mode_code(mode_code[1:0]), 
                          .RP_en(RP_en));
   WP_Controller XLXI_54 (.mode_code(mode_code[1:0]), 
                          .WP_en(WP_en));
   WP_Adder XLXI_58 (.WP(WP[7:0]), 
                     .WP_next(WP_next[7:0]));
   RP_Adder XLXI_59 (.RP(RP[7:0]), 
                     .RP_next(RP_next[7:0]));
   D_addr_src_MUX XLXI_60 (.ALU_result_M(ALU_result_M[63:0]), 
                           .LW_M(LW_M), 
                           .rt_M(rt_M[4:0]), 
                           .SW_M(SW_M), 
                           .D_addr(D_addr_src_MUX_out[7:0]));
   SRAM_addr_Adder XLXI_61 (.D_addr(D_addr_src_MUX_out[7:0]), 
                            .RP(RP[7:0]), 
                            .D_addr_in(SRAM_addr[7:0]));
   D_MEM XLXI_62 (.addra(D_waddr[7:0]), 
                  .addrb(D_raddr[7:0]), 
                  .clka(clk), 
                  .clkb(clk), 
                  .dina(D_wdata[63:0]), 
                  .wea(WME_OR_out), 
                  .doutb(pkt_out_DUMMY[63:0]));
   WME_OR XLXI_63 (.WME_M(WME_M), 
                   .WP_en(WP_en), 
                   .WME(WME_OR_out));
   RF_WB_data_src_MUX XLXI_65 (.ADDI_WB(ADDI_WB), 
                               .ALU_out_WB(ALU_result_WB[63:0]), 
                               .D_out_WB(D_out_WB[63:0]), 
                               .LW_WB(LW_WB), 
                               .MOVI_WB(MOVI_WB), 
                               .Offset_WB(Offset_WB[63:0]), 
                               .SUBI_WB(SUBI_WB), 
                               .RF_WB_Din(RF_WB_Din[63:0]));
   RP_addr_MUX XLXI_66 (.RP(RP[7:0]), 
                        .RP_ctrl(RP_en), 
                        .SRAM_addr(SRAM_addr[7:0]), 
                        .D_raddr(D_raddr[7:0]));
   WP_addr_MUX XLXI_67 (.SRAM_addr(SRAM_addr[7:0]), 
                        .WP(WP[7:0]), 
                        .WP_ctrl(WP_en), 
                        .D_waddr(D_waddr[7:0]));
   WP_Data_MUX XLXI_68 (.FIFO_Din(pkt_in[63:0]), 
                        .SRAM_Din(rt_data_M[63:0]), 
                        .WP_ctrl(WP_en), 
                        .D_MEM_Din(D_wdata[63:0]));
   FIFO_state_controller XLXI_69 (.clk(clk), 
                                  .RP(RP[7:0]), 
                                  .rst_FIFO(rst_FIFO), 
                                  .WP(WP[7:0]), 
                                  .depth(depth[7:0]), 
                                  .FIFO_almost_empty(FIFO_almost_EMPTY), 
                                  .FIFO_almost_full(FIFO_almost_FULL), 
                                  .FIFO_EMPTY(FIFO_EMPTY_DUMMY), 
                                  .FIFO_FULL(FIFO_FULL_DUMMY));
   VCC XLXI_70 (.P(ONE[0]));
   GND XLXI_71 (.G(ONE[1]));
   GND XLXI_72 (.G(ONE[2]));
   GND XLXI_73 (.G(ONE[3]));
   GND XLXI_74 (.G(ONE[4]));
   GND XLXI_75 (.G(ONE[5]));
   GND XLXI_76 (.G(ONE[6]));
   M_WB_Reg XLXI_80 (.ADDI_M(ADDI_M), 
                     .ALU_result_M(ALU_result_M[63:0]), 
                     .clk(clk), 
                     .D_out_M(pkt_out_DUMMY[63:0]), 
                     .LW_M(LW_M), 
                     .MOVI_M(MOVI_M), 
                     .NOOP_M(NOOP_M), 
                     .Offset_M(Offset_M[63:0]), 
                     .rst(rst), 
                     .rs_data_M(rs_data_M[63:0]), 
                     .rt_data_M(rt_data_M[63:0]), 
                     .rt_M(rt_M[4:0]), 
                     .SUBI_M(SUBI_M), 
                     .SW_M(SW_M), 
                     .thread_M(thread_M[1:0]), 
                     .WRE_M(WRE_M), 
                     .ADDI_WB(ADDI_WB), 
                     .ALU_result_WB(ALU_result_WB[63:0]), 
                     .D_out_WB(D_out_WB[63:0]), 
                     .LW_WB(LW_WB), 
                     .MOVI_WB(MOVI_WB), 
                     .NOOP_WB(), 
                     .Offset_WB(Offset_WB[63:0]), 
                     .rs_data_WB(), 
                     .rt_data_WB(), 
                     .rt_WB(rt_WB[2:0]), 
                     .SUBI_WB(SUBI_WB), 
                     .SW_WB(), 
                     .thread_WB(thread_WB[1:0]), 
                     .WRE_WB(WRE_WB));
   Offset_ID_to_BTA XLXI_81 (.Offset_ID(Offset_ID[63:0]), 
                             .BTA(BTA[6:0]));
   PC_part_debug XLXI_82 (.BTA(BTA[6:0]), 
                          .clk(clk), 
                          .ONE(ONE[6:0]), 
                          .PC_ctrl(PC_ctrl), 
                          .rst(rst), 
                          .thread_ID(thread_ID[1:0]), 
                          .thread_IF(thread_IF[1:0]), 
                          .PC(PC[8:0]), 
                          .PC0(PC0[6:0]), 
                          .PC1(PC1[6:0]), 
                          .PC2(PC2[6:0]), 
                          .PC3(PC3[6:0]));
endmodule
