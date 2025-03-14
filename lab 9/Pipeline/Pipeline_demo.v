////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Pipeline_demo.vf
// /___/   /\     Timestamp : 03/13/2025 22:03:02
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lab9/Pipeline_demo.sch" Pipeline_demo.vf
//Design Name: Pipeline_demo
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Pipeline_demo(clk, 
                     HLEN, 
                     Instr_IN, 
                     Instr_IN_addr, 
                     Instr_IN_en, 
                     mode_code, 
                     pkt_in, 
                     rst, 
                     rst_FIFO, 
                     thread_IF, 
                     ADDI_ID, 
                     ALU_OP_ID, 
                     BEQ_ID, 
                     BGT_ID, 
                     BLT_ID, 
                     BTA, 
                     depth, 
                     FIFO_almost_EMPTY, 
                     FIFO_almost_FULL, 
                     Instruction, 
                     J_ID, 
                     LW_ID, 
                     MOVI_ID, 
                     NOOP_ID, 
                     Offset_ID, 
                     ONE, 
                     PC, 
                     PC0, 
                     PC0_next, 
                     PC0_plus_1, 
                     PC1, 
                     PC1_next, 
                     PC1_plus_1, 
                     PC2, 
                     PC2_next_out, 
                     PC2_plus_1, 
                     PC3, 
                     PC3_next_out, 
                     PC3_plus_1, 
                     pkt_out, 
                     RF_WB_Din, 
                     rs_data_ID, 
                     rt_data_ID, 
                     rt_ID, 
                     rt_WB, 
                     SUBI_ID, 
                     SW_ID, 
                     WME_ID, 
                     WRE_ID);

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
   output ADDI_ID;
   output [3:0] ALU_OP_ID;
   output BEQ_ID;
   output BGT_ID;
   output BLT_ID;
   output [6:0] BTA;
   output [7:0] depth;
   output FIFO_almost_EMPTY;
   output FIFO_almost_FULL;
   output [31:0] Instruction;
   output J_ID;
   output LW_ID;
   output MOVI_ID;
   output NOOP_ID;
   output [63:0] Offset_ID;
   output [6:0] ONE;
   output [8:0] PC;
   output [6:0] PC0;
   output [6:0] PC0_next;
   output [6:0] PC0_plus_1;
   output [6:0] PC1;
   output [6:0] PC1_next;
   output [6:0] PC1_plus_1;
   output [6:0] PC2;
   output [6:0] PC2_next_out;
   output [6:0] PC2_plus_1;
   output [6:0] PC3;
   output [6:0] PC3_next_out;
   output [6:0] PC3_plus_1;
   output [63:0] pkt_out;
   output [63:0] RF_WB_Din;
   output [63:0] rs_data_ID;
   output [63:0] rt_data_ID;
   output [4:0] rt_ID;
   output [2:0] rt_WB;
   output SUBI_ID;
   output SW_ID;
   output WME_ID;
   output WRE_ID;
   
   wire ADDI_EX;
   wire ADDI_M;
   wire ADDI_WB;
   wire [3:0] ALU_OP_EX;
   wire [63:0] ALU_result_M;
   wire [63:0] ALU_result_WB;
   wire [7:0] D_addr_src_MUX_out;
   wire [63:0] D_out_WB;
   wire [7:0] D_raddr;
   wire [7:0] D_waddr;
   wire [63:0] D_wdata;
   wire LW_EX;
   wire LW_M;
   wire LW_WB;
   wire MOVI_EX;
   wire MOVI_M;
   wire MOVI_WB;
   wire NOOP_EX;
   wire NOOP_M;
   wire [63:0] Offset_EX;
   wire [63:0] Offset_M;
   wire [63:0] Offset_WB;
   wire [5:0] OP_CODE_ID;
   wire PC_ctrl;
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
   wire [63:0] rs_data_M;
   wire [4:0] rs_ID;
   wire [63:0] rt_data_EX;
   wire [63:0] rt_data_M;
   wire [4:0] rt_EX;
   wire [4:0] rt_M;
   wire [7:0] SRAM_addr;
   wire SUBI_EX;
   wire SUBI_M;
   wire SUBI_WB;
   wire SW_EX;
   wire SW_M;
   wire [1:0] thread_EX;
   wire [1:0] thread_ID;
   wire [1:0] thread_M;
   wire [1:0] thread_WB;
   wire [2:0] waddr_DEMUX_out;
   wire [63:0] wdata_DEMUX_out;
   wire WME_EX;
   wire WME_M;
   wire [7:0] WP;
   wire WP_en;
   wire [7:0] WP_next;
   wire WRE_EX;
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
   wire XLXN_211;
   wire XLXN_234;
   wire XLXN_235;
   wire NOOP_ID_DUMMY;
   wire [6:0] PC0_next_DUMMY;
   wire [6:0] PC2_next_out_DUMMY;
   wire [3:0] ALU_OP_ID_DUMMY;
   wire [6:0] PC1_next_DUMMY;
   wire SUBI_ID_DUMMY;
   wire [63:0] rs_data_ID_DUMMY;
   wire [2:0] rt_WB_DUMMY;
   wire [63:0] RF_WB_Din_DUMMY;
   wire SW_ID_DUMMY;
   wire [8:0] PC_DUMMY;
   wire [6:0] PC2_plus_1_DUMMY;
   wire [6:0] PC0_plus_1_DUMMY;
   wire BGT_ID_DUMMY;
   wire ADDI_ID_DUMMY;
   wire BEQ_ID_DUMMY;
   wire [6:0] PC0_DUMMY;
   wire [6:0] BTA_DUMMY;
   wire [6:0] PC1_DUMMY;
   wire [6:0] PC2_DUMMY;
   wire [6:0] PC3_DUMMY;
   wire LW_ID_DUMMY;
   wire [6:0] PC3_next_out_DUMMY;
   wire WME_ID_DUMMY;
   wire [63:0] Offset_ID_DUMMY;
   wire [6:0] PC3_plus_1_DUMMY;
   wire BLT_ID_DUMMY;
   wire [31:0] Instruction_DUMMY;
   wire [63:0] pkt_out_DUMMY;
   wire [63:0] rt_data_ID_DUMMY;
   wire [4:0] rt_ID_DUMMY;
   wire [6:0] PC1_plus_1_DUMMY;
   wire [6:0] ONE_DUMMY;
   wire J_ID_DUMMY;
   wire WRE_ID_DUMMY;
   wire MOVI_ID_DUMMY;
   
   assign ADDI_ID = ADDI_ID_DUMMY;
   assign ALU_OP_ID[3:0] = ALU_OP_ID_DUMMY[3:0];
   assign BEQ_ID = BEQ_ID_DUMMY;
   assign BGT_ID = BGT_ID_DUMMY;
   assign BLT_ID = BLT_ID_DUMMY;
   assign BTA[6:0] = BTA_DUMMY[6:0];
   assign Instruction[31:0] = Instruction_DUMMY[31:0];
   assign J_ID = J_ID_DUMMY;
   assign LW_ID = LW_ID_DUMMY;
   assign MOVI_ID = MOVI_ID_DUMMY;
   assign NOOP_ID = NOOP_ID_DUMMY;
   assign Offset_ID[63:0] = Offset_ID_DUMMY[63:0];
   assign ONE[6:0] = ONE_DUMMY[6:0];
   assign PC[8:0] = PC_DUMMY[8:0];
   assign PC0[6:0] = PC0_DUMMY[6:0];
   assign PC0_next[6:0] = PC0_next_DUMMY[6:0];
   assign PC0_plus_1[6:0] = PC0_plus_1_DUMMY[6:0];
   assign PC1[6:0] = PC1_DUMMY[6:0];
   assign PC1_next[6:0] = PC1_next_DUMMY[6:0];
   assign PC1_plus_1[6:0] = PC1_plus_1_DUMMY[6:0];
   assign PC2[6:0] = PC2_DUMMY[6:0];
   assign PC2_next_out[6:0] = PC2_next_out_DUMMY[6:0];
   assign PC2_plus_1[6:0] = PC2_plus_1_DUMMY[6:0];
   assign PC3[6:0] = PC3_DUMMY[6:0];
   assign PC3_next_out[6:0] = PC3_next_out_DUMMY[6:0];
   assign PC3_plus_1[6:0] = PC3_plus_1_DUMMY[6:0];
   assign pkt_out[63:0] = pkt_out_DUMMY[63:0];
   assign RF_WB_Din[63:0] = RF_WB_Din_DUMMY[63:0];
   assign rs_data_ID[63:0] = rs_data_ID_DUMMY[63:0];
   assign rt_data_ID[63:0] = rt_data_ID_DUMMY[63:0];
   assign rt_ID[4:0] = rt_ID_DUMMY[4:0];
   assign rt_WB[2:0] = rt_WB_DUMMY[2:0];
   assign SUBI_ID = SUBI_ID_DUMMY;
   assign SW_ID = SW_ID_DUMMY;
   assign WME_ID = WME_ID_DUMMY;
   assign WRE_ID = WRE_ID_DUMMY;
   PC0 XLXI_1 (.clk(clk), 
               .PC_ctrl(PC_ctrl), 
               .PC_next(PC0_next_DUMMY[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC0_DUMMY[6:0]));
   PC1 XLXI_2 (.clk(clk), 
               .PC_ctrl(PC_ctrl), 
               .PC_next(PC1_next_DUMMY[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC1_DUMMY[6:0]));
   PC2 XLXI_3 (.clk(clk), 
               .PC_ctrl(PC_ctrl), 
               .PC_next(PC2_next_out_DUMMY[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC2_DUMMY[6:0]));
   PC3 XLXI_4 (.clk(clk), 
               .PC_ctrl(PC_ctrl), 
               .PC_next(PC3_next_out_DUMMY[6:0]), 
               .rst(rst), 
               .thread(thread_IF[1:0]), 
               .thread_ID(thread_ID[1:0]), 
               .PC(PC3_DUMMY[6:0]));
   PC_Thread_MUX XLXI_5 (.PC0(PC0_DUMMY[6:0]), 
                         .PC1(PC1_DUMMY[6:0]), 
                         .PC2(PC2_DUMMY[6:0]), 
                         .PC3(PC3_DUMMY[6:0]), 
                         .thread(thread_IF[1:0]), 
                         .PC(PC_DUMMY[8:0]));
   PC_plus_1 XLXI_6 (.ONE(ONE_DUMMY[6:0]), 
                     .PC(PC0_DUMMY[6:0]), 
                     .PC_next(PC0_plus_1_DUMMY[6:0]));
   PC_plus_1 XLXI_7 (.ONE(ONE_DUMMY[6:0]), 
                     .PC(PC1_DUMMY[6:0]), 
                     .PC_next(PC1_plus_1_DUMMY[6:0]));
   PC_plus_1 XLXI_8 (.ONE(ONE_DUMMY[6:0]), 
                     .PC(PC2_DUMMY[6:0]), 
                     .PC_next(PC2_plus_1_DUMMY[6:0]));
   PC_plus_1 XLXI_9 (.ONE(ONE_DUMMY[6:0]), 
                     .PC(PC3_DUMMY[6:0]), 
                     .PC_next(PC3_plus_1_DUMMY[6:0]));
   PC_MUX XLXI_10 (.BTA(BTA_DUMMY[6:0]), 
                   .PC_ctrl(PC_ctrl), 
                   .PC_next_in(PC0_plus_1_DUMMY[6:0]), 
                   .PC_next_out(PC0_next_DUMMY[6:0]));
   PC_MUX XLXI_11 (.BTA(BTA_DUMMY[6:0]), 
                   .PC_ctrl(PC_ctrl), 
                   .PC_next_in(PC1_plus_1_DUMMY[6:0]), 
                   .PC_next_out(PC1_next_DUMMY[6:0]));
   PC_MUX XLXI_12 (.BTA(BTA_DUMMY[6:0]), 
                   .PC_ctrl(PC_ctrl), 
                   .PC_next_in(PC2_plus_1_DUMMY[6:0]), 
                   .PC_next_out(PC2_next_out_DUMMY[6:0]));
   PC_MUX XLXI_13 (.BTA(BTA_DUMMY[6:0]), 
                   .PC_ctrl(PC_ctrl), 
                   .PC_next_in(PC3_plus_1_DUMMY[6:0]), 
                   .PC_next_out(PC3_next_out_DUMMY[6:0]));
   I_MEM XLXI_14 (.addra(PC_DUMMY[8:0]), 
                  .addrb(Instr_IN_addr[8:0]), 
                  .clka(clk), 
                  .clkb(clk), 
                  .dinb(Instr_IN[31:0]), 
                  .web(Instr_IN_en), 
                  .douta(Instruction_DUMMY[31:0]));
   IF_ID_Reg XLXI_15 (.clk(clk), 
                      .Instruction(Instruction_DUMMY[31:0]), 
                      .rst(rst), 
                      .thread_IF(thread_IF[1:0]), 
                      .Offset_ID(XLXN_76[15:0]), 
                      .OP_CODE_ID(OP_CODE_ID[5:0]), 
                      .rs_ID(rs_ID[4:0]), 
                      .rt_ID(rt_ID_DUMMY[4:0]), 
                      .thread_ID(thread_ID[1:0]));
   RF XLXI_16 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID_DUMMY[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_130), 
               .r0data(RF0_rs_data[63:0]), 
               .r1data(RF0_rt_data[63:0]));
   RF XLXI_17 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID_DUMMY[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_131), 
               .r0data(RF1_rs_data[63:0]), 
               .r1data(RF1_rt_data[63:0]));
   RF XLXI_18 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID_DUMMY[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_134), 
               .r0data(RF2_rs_data[63:0]), 
               .r1data(RF2_rt_data[63:0]));
   RF XLXI_19 (.clk(clk), 
               .rst(rst), 
               .r0addr(rs_ID[2:0]), 
               .r1addr(rt_ID_DUMMY[2:0]), 
               .waddr(waddr_DEMUX_out[2:0]), 
               .wdata(wdata_DEMUX_out[63:0]), 
               .wena(XLXN_135), 
               .r0data(RF3_rs_data[63:0]), 
               .r1data(RF3_rt_data[63:0]));
   RF_DEMUX XLXI_29 (.thread_WB(thread_WB[1:0]), 
                     .waddr(rt_WB_DUMMY[2:0]), 
                     .wdata(RF_WB_Din_DUMMY[63:0]), 
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
                   .r0data(rs_data_ID_DUMMY[63:0]), 
                   .r1data(rt_data_ID_DUMMY[63:0]));
   Control_Unit XLXI_31 (.OP_CODE(OP_CODE_ID[5:0]), 
                         .ADDI_ID(ADDI_ID_DUMMY), 
                         .ALU_OP_ID(ALU_OP_ID_DUMMY[3:0]), 
                         .BEQ_ID(BEQ_ID_DUMMY), 
                         .BGT_ID(BGT_ID_DUMMY), 
                         .BLT_ID(BLT_ID_DUMMY), 
                         .J_ID(J_ID_DUMMY), 
                         .LW_ID(LW_ID_DUMMY), 
                         .MOVI_ID(MOVI_ID_DUMMY), 
                         .NOOP_ID(NOOP_ID_DUMMY), 
                         .SUBI_ID(SUBI_ID_DUMMY), 
                         .SW_ID(SW_ID_DUMMY), 
                         .WME_ID(WME_ID_DUMMY), 
                         .WRE_ID(WRE_ID_DUMMY));
   Branch_Detection_Unit XLXI_32 (.BEQ_ID(BEQ_ID_DUMMY), 
                                  .BGT_ID(BGT_ID_DUMMY), 
                                  .BLT_ID(BLT_ID_DUMMY), 
                                  .J_ID(J_ID_DUMMY), 
                                  .rs_data(rs_data_ID_DUMMY[63:0]), 
                                  .rt_data(rt_data_ID_DUMMY[63:0]), 
                                  .PC_ctrl(PC_ctrl));
   ID_EX_Reg XLXI_37 (.ADDI_ID(ADDI_ID_DUMMY), 
                      .ALU_OP_ID(ALU_OP_ID_DUMMY[3:0]), 
                      .clk(clk), 
                      .LW_ID(LW_ID_DUMMY), 
                      .MOVI_ID(MOVI_ID_DUMMY), 
                      .NOOP_ID(NOOP_ID_DUMMY), 
                      .Offset_ID(Offset_ID_DUMMY[63:0]), 
                      .rst(rst), 
                      .rs_data_ID(rs_data_ID_DUMMY[63:0]), 
                      .rt_data_ID(rt_data_ID_DUMMY[63:0]), 
                      .rt_ID(rt_ID_DUMMY[4:0]), 
                      .SUBI_ID(SUBI_ID_DUMMY), 
                      .SW_ID(SW_ID_DUMMY), 
                      .thread_ID(thread_ID[1:0]), 
                      .WME_ID(WME_ID_DUMMY), 
                      .WRE_ID(WRE_ID_DUMMY), 
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
                          .Offset_ID(Offset_ID_DUMMY[63:0]));
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
                   .FIFO_FULL(XLXN_235), 
                   .rst(rst_FIFO), 
                   .WP_en(WP_en), 
                   .WP_next(WP_next[7:0]), 
                   .WP(WP[7:0]));
   RP_Reg XLXI_52 (.clk(clk), 
                   .FIFO_EMPTY(XLXN_234), 
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
                  .wea(XLXN_211), 
                  .doutb(pkt_out_DUMMY[63:0]));
   WME_OR XLXI_63 (.WME_M(WME_M), 
                   .WP_en(WP_en), 
                   .WME(XLXN_211));
   RF_WB_data_src_MUX XLXI_65 (.ADDI_WB(ADDI_WB), 
                               .ALU_out_WB(ALU_result_WB[63:0]), 
                               .D_out_WB(D_out_WB[63:0]), 
                               .LW_WB(LW_WB), 
                               .MOVI_WB(MOVI_WB), 
                               .Offset_WB(Offset_WB[63:0]), 
                               .SUBI_WB(SUBI_WB), 
                               .RF_WB_Din(RF_WB_Din_DUMMY[63:0]));
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
                                  .FIFO_EMPTY(XLXN_234), 
                                  .FIFO_FULL(XLXN_235));
   VCC XLXI_70 (.P(ONE_DUMMY[0]));
   GND XLXI_71 (.G(ONE_DUMMY[1]));
   GND XLXI_72 (.G(ONE_DUMMY[2]));
   GND XLXI_73 (.G(ONE_DUMMY[3]));
   GND XLXI_74 (.G(ONE_DUMMY[4]));
   GND XLXI_75 (.G(ONE_DUMMY[5]));
   GND XLXI_76 (.G(ONE_DUMMY[6]));
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
                     .rt_WB(rt_WB_DUMMY[2:0]), 
                     .SUBI_WB(SUBI_WB), 
                     .SW_WB(), 
                     .thread_WB(thread_WB[1:0]), 
                     .WRE_WB(WRE_WB));
   Offset_ID_to_BTA XLXI_81 (.Offset_ID(Offset_ID_DUMMY[63:0]), 
                             .BTA(BTA_DUMMY[6:0]));
endmodule
