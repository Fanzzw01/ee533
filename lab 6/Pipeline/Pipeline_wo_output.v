////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 10.1
//  \   \         Application : sch2verilog
//  /   /         Filename : Pipeline_wo_output.vf
// /___/   /\     Timestamp : 02/24/2025 16:55:09
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: C:\Xilinx\10.1\ISE\bin\nt\unwrapped\sch2verilog.exe -intstyle ise -family virtex2p -w "E:/Documents and Settings/student/EE533_Lsb6/Pipeline_wo_output.sch" Pipeline_wo_output.vf
//Design Name: Pipeline_wo_output
//Device: virtex2p
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Pipeline_wo_output(ALU_OP, 
                          clk, 
                          ONE, 
                          rst);

    input [3:0] ALU_OP;
    input clk;
    input [63:0] ONE;
    input rst;
   
   wire [63:0] Dout_M;
   wire [63:0] Dout_WB;
   wire [31:0] Instr;
   wire [63:0] PC;
   wire [63:0] PC_next;
   wire [2:0] Reg1_ID;
   wire [2:0] Reg2_ID;
   wire [63:0] R1_out_EX;
   wire [63:0] R1_out_ID;
   wire [7:0] R1_out_M;
   wire [63:0] R2_out_EX;
   wire [63:0] R2_out_ID;
   wire [63:0] R2_out_M;
   wire WMemEn_EX;
   wire WMemEn_ID;
   wire WMemEn_M;
   wire WRegEn_EX;
   wire WRegEn_ID;
   wire WRegEn_M;
   wire WRegEn_WB;
   wire [2:0] WReg1_EX;
   wire [2:0] WReg1_ID;
   wire [2:0] WReg1_M;
   wire [2:0] WReg1_WB;
   
   ALU XLXI_1 (.A(PC[63:0]), 
               .ALU_OP(ALU_OP[3:0]), 
               .B(ONE[63:0]), 
               .ALU_Out(PC_next[63:0]), 
               .Overflow(), 
               .Zero_Flag());
   Instr_Mem XLXI_2 (.addr(PC[8:0]), 
                     .clk(clk), 
                     .dout(Instr[31:0]));
   IF_ID_Reg XLXI_3 (.Reg1_IF(Instr[29:27]), 
                     .Reg2_IF(Instr[26:24]), 
                     .Unused_IF(Instr[20:0]), 
                     .WMemEn_IF(Instr[31]), 
                     .WRegEn_IF(Instr[30]), 
                     .WReg1_IF(Instr[23:21]), 
                     .Reg1_ID(Reg1_ID[2:0]), 
                     .Reg2_ID(Reg2_ID[2:0]), 
                     .Unused_ID(), 
                     .WMemEn_ID(WMemEn_ID), 
                     .WRegEn_ID(WRegEn_ID), 
                     .WReg1_ID(WReg1_ID[2:0]));
   PC XLXI_4 (.clk(clk), 
              .PC_next(PC_next[63:0]), 
              .rst(rst), 
              .PC(PC[63:0]));
   RF XLXI_5 (.clk(clk), 
              .rst(rst), 
              .r0addr(Reg1_ID[2:0]), 
              .r1addr(Reg2_ID[2:0]), 
              .waddr(WReg1_WB[2:0]), 
              .wdata(Dout_WB[63:0]), 
              .wena(WRegEn_WB), 
              .r0data(R1_out_ID[63:0]), 
              .r1data(R2_out_ID[63:0]));
   ID_EX_Reg XLXI_6 (.clk(clk), 
                     .rst(rst), 
                     .R1_out_ID(R1_out_ID[63:0]), 
                     .R2_out_ID(R2_out_ID[63:0]), 
                     .WMemEn_ID(WMemEn_ID), 
                     .WRegEn_ID(WRegEn_ID), 
                     .WReg1_ID(WReg1_ID[2:0]), 
                     .R1_out_EX(R1_out_EX[63:0]), 
                     .R2_out_EX(R2_out_EX[63:0]), 
                     .WMemEn_EX(WMemEn_EX), 
                     .WRegEn_EX(WRegEn_EX), 
                     .WReg1_EX(WReg1_EX[2:0]));
   EX_M_Reg XLXI_7 (.clk(clk), 
                    .rst(rst), 
                    .R1_out_EX(R1_out_EX[63:0]), 
                    .R2_out_EX(R2_out_EX[63:0]), 
                    .WMemEn_EX(WMemEn_EX), 
                    .WRegEn_EX(WRegEn_EX), 
                    .WReg1_EX(WReg1_EX[2:0]), 
                    .R1_out_M(R1_out_M[7:0]), 
                    .R2_out_M(R2_out_M[63:0]), 
                    .WMemEn_M(WMemEn_M), 
                    .WRegEn_M(WRegEn_M), 
                    .WReg1_M(WReg1_M[2:0]));
   Data_Mem XLXI_8 (.addra(R1_out_M[7:0]), 
                    .addrb(R1_out_M[7:0]), 
                    .clka(clk), 
                    .clkb(clk), 
                    .dina(R2_out_M[63:0]), 
                    .wea(WMemEn_M), 
                    .doutb(Dout_M[63:0]));
   M_WB_Reg XLXI_9 (.clk(clk), 
                    .Dout_M(Dout_M[63:0]), 
                    .rst(rst), 
                    .WRegEn_M(WRegEn_M), 
                    .WReg1_M(WReg1_M[2:0]), 
                    .Dout_WB(Dout_WB[63:0]), 
                    .WRegEn_WB(WRegEn_WB), 
                    .WReg1_WB(WReg1_WB[2:0]));
endmodule
