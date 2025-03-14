VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL PC0(6:0)
        SIGNAL PC0_plus_1(6:0)
        SIGNAL PC1_plus_1(6:0)
        SIGNAL PC2(6:0)
        SIGNAL XLXN_240(6:0)
        SIGNAL PC2_plus_1(6:0)
        SIGNAL PC0_next(6:0)
        SIGNAL PC1_next(6:0)
        SIGNAL XLXN_244(6:0)
        SIGNAL PC3_next_out(6:0)
        SIGNAL XLXN_246(6:0)
        SIGNAL thread_IF(1:0)
        SIGNAL PC(8:0)
        SIGNAL Instruction(31:0)
        SIGNAL OP_CODE_ID(5:0)
        SIGNAL XLXN_50
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL XLXN_53
        SIGNAL NOOP_ID
        SIGNAL ADDI_ID
        SIGNAL SUBI_ID
        SIGNAL MOVI_ID
        SIGNAL LW_ID
        SIGNAL SW_ID
        SIGNAL RF0_rs_data(63:0)
        SIGNAL RF0_rt_data(63:0)
        SIGNAL RF1_rs_data(63:0)
        SIGNAL RF1_rt_data(63:0)
        SIGNAL RF2_rs_data(63:0)
        SIGNAL RF2_rt_data(63:0)
        SIGNAL RF3_rs_data(63:0)
        SIGNAL RF3_rt_data(63:0)
        SIGNAL XLXN_76(15:0)
        SIGNAL rt_data_ID(63:0)
        SIGNAL XLXN_271(63:0)
        SIGNAL rs_data_ID(63:0)
        SIGNAL WME_ID
        SIGNAL WRE_ID
        SIGNAL ALU_OP_ID(3:0)
        SIGNAL PC3(6:0)
        SIGNAL XLXN_277(6:0)
        SIGNAL PC2_next_out(6:0)
        SIGNAL XLXN_279(6:0)
        SIGNAL thread_ID(1:0)
        SIGNAL ONE(6:0)
        SIGNAL XLXN_282(6:0)
        SIGNAL ONE(0)
        SIGNAL ONE(1)
        SIGNAL ONE(2)
        SIGNAL ONE(3)
        SIGNAL ONE(4)
        SIGNAL ONE(5)
        SIGNAL ONE(6)
        SIGNAL PC3_plus_1(6:0)
        SIGNAL Offset_ID(63:0)
        SIGNAL XLXN_292(63:0)
        SIGNAL Offset_ID(6:0)
        SIGNAL XLXN_294(6:0)
        SIGNAL XLXN_295
        SIGNAL XLXN_296
        SIGNAL XLXN_297
        SIGNAL XLXN_298
        SIGNAL XLXN_299
        SIGNAL clk
        SIGNAL XLXN_301
        SIGNAL rst
        SIGNAL PC1(6:0)
        SIGNAL XLXN_130
        SIGNAL XLXN_131
        SIGNAL XLXN_306
        SIGNAL XLXN_134
        SIGNAL XLXN_135
        SIGNAL waddr_DEMUX_out(2:0)
        SIGNAL XLXN_310(2:0)
        SIGNAL wdata_DEMUX_out(63:0)
        SIGNAL XLXN_312(63:0)
        SIGNAL Instr_IN_addr(8:0)
        SIGNAL XLXN_314(8:0)
        SIGNAL Instr_IN(31:0)
        SIGNAL XLXN_316(31:0)
        SIGNAL XLXN_317
        SIGNAL Instr_IN_en
        SIGNAL XLXN_319
        SIGNAL PC_ctrl
        SIGNAL thread_EX(1:0)
        SIGNAL XLXN_322(1:0)
        SIGNAL XLXN_170(63:0)
        SIGNAL XLXN_171(63:0)
        SIGNAL XLXN_325(63:0)
        SIGNAL Offset_EX(63:0)
        SIGNAL XLXN_327(63:0)
        SIGNAL XLXN_173(63:0)
        SIGNAL XLXN_175(63:0)
        SIGNAL XLXN_177(63:0)
        SIGNAL XLXN_331(63:0)
        SIGNAL XLXN_179(63:0)
        SIGNAL XLXN_333
        SIGNAL NOOP_EX
        SIGNAL XLXN_335
        SIGNAL ADDI_EX
        SIGNAL XLXN_337
        SIGNAL SUBI_EX
        SIGNAL XLXN_339
        SIGNAL MOVI_EX
        SIGNAL XLXN_341
        SIGNAL LW_EX
        SIGNAL XLXN_343
        SIGNAL SW_EX
        SIGNAL XLXN_345
        SIGNAL WME_EX
        SIGNAL XLXN_347
        SIGNAL WRE_EX
        SIGNAL ALU_OP_EX(3:0)
        SIGNAL XLXN_350(3:0)
        SIGNAL XLXN_351(63:0)
        SIGNAL rs_data_EX(63:0)
        SIGNAL XLXN_353(63:0)
        SIGNAL rt_data_EX(63:0)
        SIGNAL XLXN_355(63:0)
        SIGNAL XLXN_356(63:0)
        SIGNAL rt_EX(4:0)
        SIGNAL XLXN_358(4:0)
        SIGNAL XLXN_359
        SIGNAL rst_FIFO
        SIGNAL thread_M(1:0)
        SIGNAL XLXN_362(1:0)
        SIGNAL XLXN_363
        SIGNAL NOOP_M
        SIGNAL XLXN_365
        SIGNAL ADDI_M
        SIGNAL XLXN_367
        SIGNAL MOVI_M
        SIGNAL XLXN_369
        SIGNAL SUBI_M
        SIGNAL XLXN_371
        SIGNAL WME_M
        SIGNAL XLXN_373
        SIGNAL WRE_M
        SIGNAL ALU_result_M(63:0)
        SIGNAL XLXN_376(63:0)
        SIGNAL rs_data_M(63:0)
        SIGNAL XLXN_378(63:0)
        SIGNAL rt_data_M(63:0)
        SIGNAL XLXN_380(63:0)
        SIGNAL rt_M(4:0)
        SIGNAL XLXN_382(4:0)
        SIGNAL mode_code(1:0)
        SIGNAL WP(7:0)
        SIGNAL WP_next(7:0)
        SIGNAL XLXN_386(7:0)
        SIGNAL RP_next(7:0)
        SIGNAL XLXN_388(7:0)
        SIGNAL XLXN_389
        SIGNAL WP_en
        SIGNAL XLXN_391
        SIGNAL RP_en
        SIGNAL XLXN_393
        SIGNAL LW_M
        SIGNAL XLXN_395
        SIGNAL SW_M
        SIGNAL XLXN_397
        SIGNAL XLXN_211
        SIGNAL D_addr_src_MUX_out(7:0)
        SIGNAL XLXN_400(7:0)
        SIGNAL SRAM_addr(7:0)
        SIGNAL XLXN_402(7:0)
        SIGNAL pkt_in(63:0)
        SIGNAL D_waddr(7:0)
        SIGNAL D_wdata(63:0)
        SIGNAL D_raddr(7:0)
        SIGNAL RP(7:0)
        SIGNAL Offset_M(63:0)
        SIGNAL XLXN_409(63:0)
        SIGNAL pkt_out(63:0)
        SIGNAL XLXN_234
        SIGNAL XLXN_235
        SIGNAL depth(7:0)
        SIGNAL FIFO_almost_EMPTY
        SIGNAL FIFO_almost_FULL
        SIGNAL LW_WB
        SIGNAL ADDI_WB
        SIGNAL SUBI_WB
        SIGNAL MOVI_WB
        SIGNAL D_out_WB(63:0)
        SIGNAL ALU_result_WB(63:0)
        SIGNAL Offset_WB(63:0)
        SIGNAL rt_WB(2:0)
        SIGNAL RF_WB_Din(63:0)
        SIGNAL thread_WB(1:0)
        SIGNAL WRE_WB
        SIGNAL rs_ID(4:0)
        SIGNAL rt_ID(4:0)
        SIGNAL rs_ID(2:0)
        SIGNAL rt_ID(2:0)
        PORT Input thread_IF(1:0)
        PORT Input clk
        PORT Input rst
        PORT Input Instr_IN_addr(8:0)
        PORT Input Instr_IN(31:0)
        PORT Input Instr_IN_en
        PORT Input rst_FIFO
        PORT Input mode_code(1:0)
        PORT Input pkt_in(63:0)
        PORT Output pkt_out(63:0)
        PORT Output depth(7:0)
        PORT Output FIFO_almost_EMPTY
        PORT Output FIFO_almost_FULL
        BEGIN BLOCKDEF PC0
            TIMESTAMP 2025 3 14 3 39 15
            LINE N 64 -48 0 -48 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            LINE N 64 -144 0 -144 
            LINE N 64 -96 0 -96 
            RECTANGLE N 64 -320 320 -20 
        END BLOCKDEF
        BEGIN BLOCKDEF PC1
            TIMESTAMP 2025 3 14 3 39 18
            LINE N 64 -48 0 -48 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -144 0 -144 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 64 -320 320 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF PC2
            TIMESTAMP 2025 3 14 3 39 20
            LINE N 64 -48 0 -48 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -144 0 -144 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 64 -320 320 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF PC3
            TIMESTAMP 2025 3 14 3 39 24
            LINE N 64 -48 0 -48 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -144 0 -144 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 64 -320 320 -16 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_Thread_MUX
            TIMESTAMP 2025 3 14 3 39 28
            RECTANGLE N 64 -320 320 -64 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -204 64 -180 
            LINE N 64 -192 0 -192 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_plus_1
            TIMESTAMP 2025 3 14 3 39 30
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF PC_MUX
            TIMESTAMP 2025 3 14 3 39 33
            RECTANGLE N 64 -192 448 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 448 -172 512 -148 
            LINE N 448 -160 512 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF I_MEM
            TIMESTAMP 2025 3 13 20 36 36
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            BEGIN LINE W 0 304 32 304 
            END LINE
            LINE N 0 336 32 336 
            LINE N 0 464 32 464 
            BEGIN LINE W 256 48 288 48 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF IF_ID_Reg
            TIMESTAMP 2025 3 14 3 39 38
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 464 -236 528 -212 
            LINE N 464 -224 528 -224 
            RECTANGLE N 464 -172 528 -148 
            LINE N 464 -160 528 -160 
            RECTANGLE N 464 -108 528 -84 
            LINE N 464 -96 528 -96 
            RECTANGLE N 464 -44 528 -20 
            LINE N 464 -32 528 -32 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 464 -300 528 -276 
            LINE N 464 -288 528 -288 
            RECTANGLE N 64 -320 464 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF RF
            TIMESTAMP 2025 3 14 3 39 41
            RECTANGLE N 64 -448 352 -132 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 352 -428 416 -404 
            LINE N 352 -416 416 -416 
            RECTANGLE N 0 -380 64 -356 
            LINE N 64 -368 0 -368 
            RECTANGLE N 352 -380 416 -356 
            LINE N 352 -368 416 -368 
            RECTANGLE N 0 -332 64 -308 
            LINE N 64 -320 0 -320 
            RECTANGLE N 0 -284 64 -260 
            LINE N 64 -272 0 -272 
            LINE N 64 -192 0 -192 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF RF_DEMUX
            TIMESTAMP 2025 3 14 3 39 45
            RECTANGLE N 64 -384 544 0 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -268 64 -244 
            LINE N 64 -256 0 -256 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -76 64 -52 
            LINE N 64 -64 0 -64 
            LINE N 544 -352 608 -352 
            LINE N 544 -288 608 -288 
            LINE N 544 -224 608 -224 
            LINE N 544 -160 608 -160 
            RECTANGLE N 544 -108 608 -84 
            LINE N 544 -96 608 -96 
            RECTANGLE N 544 -44 608 -20 
            LINE N 544 -32 608 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF RF_MUX
            TIMESTAMP 2025 3 14 3 39 47
            RECTANGLE N 64 -576 416 0 
            RECTANGLE N 0 -556 64 -532 
            LINE N 64 -544 0 -544 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 416 -556 480 -532 
            LINE N 416 -544 480 -544 
            RECTANGLE N 416 -44 480 -20 
            LINE N 416 -32 480 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF Control_Unit
            TIMESTAMP 2025 3 14 3 39 50
            RECTANGLE N 0 -812 64 -788 
            LINE N 64 -800 0 -800 
            LINE N 432 -800 496 -800 
            LINE N 432 -768 496 -768 
            RECTANGLE N 64 -832 432 -384 
            LINE N 432 -480 496 -480 
            LINE N 432 -448 496 -448 
            RECTANGLE N 432 -428 496 -404 
            LINE N 432 -416 496 -416 
            LINE N 432 -704 496 -704 
            LINE N 432 -672 496 -672 
            LINE N 432 -640 496 -640 
            LINE N 432 -608 496 -608 
            LINE N 432 -576 496 -576 
            LINE N 432 -544 496 -544 
            LINE N 432 -512 496 -512 
            LINE N 432 -736 496 -736 
        END BLOCKDEF
        BEGIN BLOCKDEF Branch_Detection_Unit
            TIMESTAMP 2025 3 14 3 39 52
            RECTANGLE N 64 -384 320 -112 
            LINE N 64 -352 0 -352 
            LINE N 320 -352 384 -352 
            LINE N 64 -320 0 -320 
            LINE N 64 -288 0 -288 
            LINE N 64 -256 0 -256 
            RECTANGLE N 0 -220 64 -196 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
        END BLOCKDEF
        BEGIN BLOCKDEF ID_EX_Reg
            TIMESTAMP 2025 3 14 3 39 55
            LINE N 464 -928 528 -928 
            LINE N 464 -864 528 -864 
            LINE N 464 -544 528 -544 
            LINE N 464 -480 528 -480 
            RECTANGLE N 464 -428 528 -404 
            LINE N 464 -416 528 -416 
            RECTANGLE N 464 -364 528 -340 
            LINE N 464 -352 528 -352 
            RECTANGLE N 464 -300 528 -276 
            LINE N 464 -288 528 -288 
            RECTANGLE N 464 -236 528 -212 
            LINE N 464 -224 528 -224 
            RECTANGLE N 464 -172 528 -148 
            LINE N 464 -160 528 -160 
            LINE N 64 -928 0 -928 
            LINE N 64 -864 0 -864 
            LINE N 64 -544 0 -544 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -1004 64 -980 
            LINE N 64 -992 0 -992 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 64 -1024 464 0 
            RECTANGLE N 464 -1004 528 -980 
            LINE N 464 -992 528 -992 
            LINE N 64 -736 0 -736 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -800 0 -800 
            LINE N 464 -736 528 -736 
            LINE N 464 -672 528 -672 
            LINE N 464 -608 528 -608 
            LINE N 464 -800 528 -800 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2025 3 14 3 39 57
            RECTANGLE N 64 -192 400 0 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 400 -160 464 -160 
            LINE N 400 -96 464 -96 
            RECTANGLE N 400 -44 464 -20 
            LINE N 400 -32 464 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF HELN_Reg
            TIMESTAMP 2025 3 14 3 39 59
            RECTANGLE N 64 -256 512 -56 
            RECTANGLE N 512 -236 576 -212 
            LINE N 512 -224 576 -224 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -176 0 -176 
            LINE N 64 -128 0 -128 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF HLEN_Offset_Adder
            TIMESTAMP 2025 3 14 3 40 2
            RECTANGLE N 64 -128 320 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU_src_MUX
            TIMESTAMP 2025 3 14 3 40 5
            RECTANGLE N 64 -384 416 0 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 416 -364 480 -340 
            LINE N 416 -352 480 -352 
        END BLOCKDEF
        BEGIN BLOCKDEF Offset_MUX
            TIMESTAMP 2025 3 14 3 40 7
            RECTANGLE N 64 -256 544 -48 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -176 0 -176 
            LINE N 64 -128 0 -128 
            LINE N 64 -80 0 -80 
            RECTANGLE N 544 -236 608 -212 
            LINE N 544 -224 608 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF Offset_Extend
            TIMESTAMP 2025 3 14 3 40 10
            RECTANGLE N 64 -64 400 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 400 -44 464 -20 
            LINE N 400 -32 464 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF EX_M_Reg
            TIMESTAMP 2025 3 14 3 40 12
            RECTANGLE N 544 -364 608 -340 
            LINE N 544 -352 608 -352 
            RECTANGLE N 544 -300 608 -276 
            LINE N 544 -288 608 -288 
            RECTANGLE N 544 -236 608 -212 
            LINE N 544 -224 608 -224 
            RECTANGLE N 544 -172 608 -148 
            LINE N 544 -160 608 -160 
            RECTANGLE N 0 -1004 64 -980 
            LINE N 64 -992 0 -992 
            RECTANGLE N 64 -1024 544 0 
            RECTANGLE N 544 -1004 608 -980 
            LINE N 544 -992 608 -992 
            LINE N 64 -928 0 -928 
            LINE N 64 -864 0 -864 
            LINE N 64 -800 0 -800 
            LINE N 64 -736 0 -736 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 544 -928 608 -928 
            LINE N 544 -864 608 -864 
            LINE N 544 -800 608 -800 
            LINE N 544 -736 608 -736 
            LINE N 544 -672 608 -672 
            LINE N 544 -608 608 -608 
            LINE N 544 -544 608 -544 
            LINE N 64 -480 0 -480 
            LINE N 544 -480 608 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 544 -428 608 -404 
            LINE N 544 -416 608 -416 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF WP_Reg
            TIMESTAMP 2025 3 14 3 40 14
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF RP_Reg
            TIMESTAMP 2025 3 14 3 40 17
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF RP_Controller
            TIMESTAMP 2025 3 14 3 40 19
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF WP_Controller
            TIMESTAMP 2025 3 14 3 40 21
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF WP_Adder
            TIMESTAMP 2025 3 14 3 40 30
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF RP_Adder
            TIMESTAMP 2025 3 14 3 40 33
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF D_addr_src_MUX
            TIMESTAMP 2025 3 14 3 40 36
            RECTANGLE N 64 -256 432 0 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 432 -236 496 -212 
            LINE N 432 -224 496 -224 
        END BLOCKDEF
        BEGIN BLOCKDEF SRAM_addr_Adder
            TIMESTAMP 2025 3 14 3 40 38
            RECTANGLE N 64 -128 384 0 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 384 -108 448 -84 
            LINE N 384 -96 448 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF D_MEM
            TIMESTAMP 2025 3 13 20 37 0
            RECTANGLE N 32 0 256 496 
            BEGIN LINE W 0 48 32 48 
            END LINE
            BEGIN LINE W 0 80 32 80 
            END LINE
            LINE N 0 112 32 112 
            LINE N 0 240 32 240 
            BEGIN LINE W 0 272 32 272 
            END LINE
            LINE N 0 464 32 464 
            BEGIN LINE W 256 272 288 272 
            END LINE
        END BLOCKDEF
        BEGIN BLOCKDEF WME_OR
            TIMESTAMP 2025 3 14 3 40 41
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF RF_WB_data_src_MUX
            TIMESTAMP 2025 3 14 3 40 43
            RECTANGLE N 64 -448 512 0 
            LINE N 64 -416 0 -416 
            LINE N 64 -352 0 -352 
            LINE N 64 -288 0 -288 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 512 -428 576 -404 
            LINE N 512 -416 576 -416 
        END BLOCKDEF
        BEGIN BLOCKDEF RP_addr_MUX
            TIMESTAMP 2025 3 14 3 40 46
            RECTANGLE N 64 -192 416 0 
            RECTANGLE N 416 -172 480 -148 
            LINE N 416 -160 480 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF WP_addr_MUX
            TIMESTAMP 2025 3 14 3 40 49
            RECTANGLE N 64 -192 416 0 
            RECTANGLE N 416 -172 480 -148 
            LINE N 416 -160 480 -160 
            LINE N 64 -32 0 -32 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF WP_Data_MUX
            TIMESTAMP 2025 3 14 3 40 52
            RECTANGLE N 64 -192 464 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 464 -172 528 -148 
            LINE N 464 -160 528 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF FIFO_state_controller
            TIMESTAMP 2025 3 14 3 40 56
            RECTANGLE N 64 -320 416 0 
            LINE N 416 -288 480 -288 
            LINE N 416 -224 480 -224 
            LINE N 416 -160 480 -160 
            LINE N 416 -96 480 -96 
            RECTANGLE N 416 -44 480 -20 
            LINE N 416 -32 480 -32 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -220 64 -196 
            LINE N 64 -208 0 -208 
            LINE N 64 -144 0 -144 
            LINE N 64 -80 0 -80 
        END BLOCKDEF
        BEGIN BLOCKDEF vcc
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -32 64 -64 
            LINE N 64 0 64 -32 
            LINE N 96 -64 32 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF gnd
            TIMESTAMP 2000 1 1 10 10 10
            LINE N 64 -64 64 -96 
            LINE N 76 -48 52 -48 
            LINE N 68 -32 60 -32 
            LINE N 88 -64 40 -64 
            LINE N 64 -64 64 -80 
            LINE N 64 -128 64 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF M_WB_Reg
            TIMESTAMP 2025 3 14 3 41 0
            RECTANGLE N 64 -1024 544 0 
            RECTANGLE N 544 -492 608 -468 
            LINE N 544 -480 608 -480 
            RECTANGLE N 544 -428 608 -404 
            LINE N 544 -416 608 -416 
            RECTANGLE N 544 -364 608 -340 
            LINE N 544 -352 608 -352 
            RECTANGLE N 544 -300 608 -276 
            LINE N 544 -288 608 -288 
            RECTANGLE N 544 -236 608 -212 
            LINE N 544 -224 608 -224 
            RECTANGLE N 544 -172 608 -148 
            LINE N 544 -160 608 -160 
            RECTANGLE N 0 -492 64 -468 
            LINE N 64 -480 0 -480 
            RECTANGLE N 0 -428 64 -404 
            LINE N 64 -416 0 -416 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            LINE N 544 -928 608 -928 
            LINE N 544 -864 608 -864 
            LINE N 544 -544 608 -544 
            LINE N 64 -928 0 -928 
            LINE N 64 -864 0 -864 
            LINE N 64 -800 0 -800 
            LINE N 64 -736 0 -736 
            LINE N 64 -672 0 -672 
            LINE N 64 -608 0 -608 
            LINE N 64 -544 0 -544 
            LINE N 544 -800 608 -800 
            LINE N 544 -736 608 -736 
            LINE N 544 -672 608 -672 
            LINE N 544 -608 608 -608 
            RECTANGLE N 544 -1004 608 -980 
            LINE N 544 -992 608 -992 
            RECTANGLE N 0 -1004 64 -980 
            LINE N 64 -992 0 -992 
        END BLOCKDEF
        BEGIN BLOCK XLXI_1 PC0
            PIN clk clk
            PIN rst rst
            PIN PC_ctrl PC_ctrl
            PIN PC_next(6:0) PC0_next(6:0)
            PIN thread(1:0) thread_IF(1:0)
            PIN thread_ID(1:0) thread_ID(1:0)
            PIN PC(6:0) PC0(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_3 PC2
            PIN clk clk
            PIN rst rst
            PIN PC_ctrl PC_ctrl
            PIN PC_next(6:0) PC2_next_out(6:0)
            PIN thread(1:0) thread_IF(1:0)
            PIN thread_ID(1:0) thread_ID(1:0)
            PIN PC(6:0) PC2(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_4 PC3
            PIN clk clk
            PIN rst rst
            PIN PC_ctrl PC_ctrl
            PIN PC_next(6:0) PC3_next_out(6:0)
            PIN thread(1:0) thread_IF(1:0)
            PIN thread_ID(1:0) thread_ID(1:0)
            PIN PC(6:0) PC3(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_5 PC_Thread_MUX
            PIN thread(1:0) thread_IF(1:0)
            PIN PC0(6:0) PC0(6:0)
            PIN PC1(6:0) PC1(6:0)
            PIN PC2(6:0) PC2(6:0)
            PIN PC3(6:0) PC3(6:0)
            PIN PC(8:0) PC(8:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 PC_plus_1
            PIN PC(6:0) PC0(6:0)
            PIN ONE(6:0) ONE(6:0)
            PIN PC_next(6:0) PC0_plus_1(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_7 PC_plus_1
            PIN PC(6:0) PC1(6:0)
            PIN ONE(6:0) ONE(6:0)
            PIN PC_next(6:0) PC1_plus_1(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_8 PC_plus_1
            PIN PC(6:0) PC2(6:0)
            PIN ONE(6:0) ONE(6:0)
            PIN PC_next(6:0) PC2_plus_1(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_14 I_MEM
            PIN addra(8:0) PC(8:0)
            PIN clka clk
            PIN addrb(8:0) Instr_IN_addr(8:0)
            PIN dinb(31:0) Instr_IN(31:0)
            PIN web Instr_IN_en
            PIN clkb clk
            PIN douta(31:0) Instruction(31:0)
        END BLOCK
        BEGIN BLOCK XLXI_16 RF
            PIN clk clk
            PIN rst rst
            PIN wena XLXN_130
            PIN wdata(63:0) wdata_DEMUX_out(63:0)
            PIN waddr(2:0) waddr_DEMUX_out(2:0)
            PIN r0addr(2:0) rs_ID(2:0)
            PIN r1addr(2:0) rt_ID(2:0)
            PIN r0data(63:0) RF0_rs_data(63:0)
            PIN r1data(63:0) RF0_rt_data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_30 RF_MUX
            PIN thread_ID(1:0) thread_ID(1:0)
            PIN RF0_r0data(63:0) RF0_rs_data(63:0)
            PIN RF0_r1data(63:0) RF0_rt_data(63:0)
            PIN RF1_r0data(63:0) RF1_rs_data(63:0)
            PIN RF1_r1data(63:0) RF1_rt_data(63:0)
            PIN RF2_r0data(63:0) RF2_rs_data(63:0)
            PIN RF2_r1data(63:0) RF2_rt_data(63:0)
            PIN RF3_r0data(63:0) RF3_rs_data(63:0)
            PIN RF3_r1data(63:0) RF3_rt_data(63:0)
            PIN r0data(63:0) rs_data_ID(63:0)
            PIN r1data(63:0) rt_data_ID(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_31 Control_Unit
            PIN OP_CODE(5:0) OP_CODE_ID(5:0)
            PIN NOOP_ID NOOP_ID
            PIN ADDI_ID ADDI_ID
            PIN MOVI_ID MOVI_ID
            PIN LW_ID LW_ID
            PIN SW_ID SW_ID
            PIN BEQ_ID XLXN_50
            PIN BGT_ID XLXN_51
            PIN BLT_ID XLXN_52
            PIN J_ID XLXN_53
            PIN SUBI_ID SUBI_ID
            PIN WME_ID WME_ID
            PIN WRE_ID WRE_ID
            PIN ALU_OP_ID(3:0) ALU_OP_ID(3:0)
        END BLOCK
        BEGIN BLOCK XLXI_39 HELN_Reg
            PIN clk clk
            PIN rst_FIFO rst_FIFO
            PIN HLEN_Reg_write_en
            PIN HLEN_in(63:0) XLXN_170(63:0)
            PIN HLEN_out(63:0) XLXN_171(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_51 WP_Reg
            PIN clk clk
            PIN rst rst_FIFO
            PIN WP_en WP_en
            PIN FIFO_FULL XLXN_235
            PIN WP_next(7:0) WP_next(7:0)
            PIN WP(7:0) WP(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_52 RP_Reg
            PIN clk clk
            PIN rst rst_FIFO
            PIN RP_en RP_en
            PIN FIFO_EMPTY XLXN_234
            PIN RP_next(7:0) RP_next(7:0)
            PIN RP(7:0) RP(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_53 RP_Controller
            PIN mode_code(1:0) mode_code(1:0)
            PIN RP_en RP_en
        END BLOCK
        BEGIN BLOCK XLXI_54 WP_Controller
            PIN mode_code(1:0) mode_code(1:0)
            PIN WP_en WP_en
        END BLOCK
        BEGIN BLOCK XLXI_65 RF_WB_data_src_MUX
            PIN LW_WB LW_WB
            PIN ADDI_WB ADDI_WB
            PIN SUBI_WB SUBI_WB
            PIN MOVI_WB MOVI_WB
            PIN D_out_WB(63:0) D_out_WB(63:0)
            PIN ALU_out_WB(63:0) ALU_result_WB(63:0)
            PIN Offset_WB(63:0) Offset_WB(63:0)
            PIN RF_WB_Din(63:0) RF_WB_Din(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_58 WP_Adder
            PIN WP(7:0) WP(7:0)
            PIN WP_next(7:0) WP_next(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_59 RP_Adder
            PIN RP(7:0) RP(7:0)
            PIN RP_next(7:0) RP_next(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_67 WP_addr_MUX
            PIN WP_ctrl WP_en
            PIN SRAM_addr(7:0) SRAM_addr(7:0)
            PIN WP(7:0) WP(7:0)
            PIN D_waddr(7:0) D_waddr(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_66 RP_addr_MUX
            PIN RP_ctrl RP_en
            PIN SRAM_addr(7:0) SRAM_addr(7:0)
            PIN RP(7:0) RP(7:0)
            PIN D_raddr(7:0) D_raddr(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_68 WP_Data_MUX
            PIN WP_ctrl WP_en
            PIN SRAM_Din(63:0) rt_data_M(63:0)
            PIN FIFO_Din(63:0) pkt_in(63:0)
            PIN D_MEM_Din(63:0) D_wdata(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_62 D_MEM
            PIN addra(7:0) D_waddr(7:0)
            PIN dina(63:0) D_wdata(63:0)
            PIN wea XLXN_211
            PIN clka clk
            PIN addrb(7:0) D_raddr(7:0)
            PIN clkb clk
            PIN doutb(63:0) pkt_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_63 WME_OR
            PIN WME_M WME_M
            PIN WP_en WP_en
            PIN WME XLXN_211
        END BLOCK
        BEGIN BLOCK XLXI_61 SRAM_addr_Adder
            PIN D_addr(7:0) D_addr_src_MUX_out(7:0)
            PIN RP(7:0) RP(7:0)
            PIN D_addr_in(7:0) SRAM_addr(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_60 D_addr_src_MUX
            PIN LW_M LW_M
            PIN SW_M SW_M
            PIN ALU_result_M(63:0) ALU_result_M(63:0)
            PIN rt_M(4:0) rt_M(4:0)
            PIN D_addr(7:0) D_addr_src_MUX_out(7:0)
        END BLOCK
        BEGIN BLOCK XLXI_10 PC_MUX
            PIN PC_ctrl PC_ctrl
            PIN PC_next_in(6:0) PC0_plus_1(6:0)
            PIN BTA(6:0) Offset_ID(6:0)
            PIN PC_next_out(6:0) PC0_next(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_11 PC_MUX
            PIN PC_ctrl PC_ctrl
            PIN PC_next_in(6:0) PC1_plus_1(6:0)
            PIN BTA(6:0) Offset_ID(6:0)
            PIN PC_next_out(6:0) PC1_next(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_13 PC_MUX
            PIN PC_ctrl PC_ctrl
            PIN PC_next_in(6:0) PC3_plus_1(6:0)
            PIN BTA(6:0) Offset_ID(6:0)
            PIN PC_next_out(6:0) PC3_next_out(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_12 PC_MUX
            PIN PC_ctrl PC_ctrl
            PIN PC_next_in(6:0) PC2_plus_1(6:0)
            PIN BTA(6:0) Offset_ID(6:0)
            PIN PC_next_out(6:0) PC2_next_out(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_15 IF_ID_Reg
            PIN clk clk
            PIN rst rst
            PIN Instruction(31:0) Instruction(31:0)
            PIN thread_IF(1:0) thread_IF(1:0)
            PIN OP_CODE_ID(5:0) OP_CODE_ID(5:0)
            PIN rs_ID(4:0) rs_ID(4:0)
            PIN rt_ID(4:0) rt_ID(4:0)
            PIN Offset_ID(15:0) XLXN_76(15:0)
            PIN thread_ID(1:0) thread_ID(1:0)
        END BLOCK
        BEGIN BLOCK XLXI_17 RF
            PIN clk clk
            PIN rst rst
            PIN wena XLXN_131
            PIN wdata(63:0) wdata_DEMUX_out(63:0)
            PIN waddr(2:0) waddr_DEMUX_out(2:0)
            PIN r0addr(2:0) rs_ID(2:0)
            PIN r1addr(2:0) rt_ID(2:0)
            PIN r0data(63:0) RF1_rs_data(63:0)
            PIN r1data(63:0) RF1_rt_data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_18 RF
            PIN clk clk
            PIN rst rst
            PIN wena XLXN_134
            PIN wdata(63:0) wdata_DEMUX_out(63:0)
            PIN waddr(2:0) waddr_DEMUX_out(2:0)
            PIN r0addr(2:0) rs_ID(2:0)
            PIN r1addr(2:0) rt_ID(2:0)
            PIN r0data(63:0) RF2_rs_data(63:0)
            PIN r1data(63:0) RF2_rt_data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_19 RF
            PIN clk clk
            PIN rst rst
            PIN wena XLXN_135
            PIN wdata(63:0) wdata_DEMUX_out(63:0)
            PIN waddr(2:0) waddr_DEMUX_out(2:0)
            PIN r0addr(2:0) rs_ID(2:0)
            PIN r1addr(2:0) rt_ID(2:0)
            PIN r0data(63:0) RF3_rs_data(63:0)
            PIN r1data(63:0) RF3_rt_data(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_37 ID_EX_Reg
            PIN clk clk
            PIN rst rst
            PIN NOOP_ID NOOP_ID
            PIN ADDI_ID ADDI_ID
            PIN MOVI_ID MOVI_ID
            PIN LW_ID LW_ID
            PIN SW_ID SW_ID
            PIN SUBI_ID SUBI_ID
            PIN WME_ID WME_ID
            PIN WRE_ID WRE_ID
            PIN thread_ID(1:0) thread_ID(1:0)
            PIN ALU_OP_ID(3:0) ALU_OP_ID(3:0)
            PIN rs_data_ID(63:0) rs_data_ID(63:0)
            PIN rt_data_ID(63:0) rt_data_ID(63:0)
            PIN rt_ID(4:0) rt_ID(4:0)
            PIN Offset_ID(63:0) Offset_ID(63:0)
            PIN NOOP_EX NOOP_EX
            PIN ADDI_EX ADDI_EX
            PIN MOVI_EX MOVI_EX
            PIN LW_EX LW_EX
            PIN SW_EX SW_EX
            PIN SUBI_EX SUBI_EX
            PIN WME_EX WME_EX
            PIN WRE_EX WRE_EX
            PIN thread_EX(1:0) thread_EX(1:0)
            PIN ALU_OP_EX(3:0) ALU_OP_EX(3:0)
            PIN rs_data_EX(63:0) rs_data_EX(63:0)
            PIN rt_data_EX(63:0) rt_data_EX(63:0)
            PIN rt_EX(4:0) rt_EX(4:0)
            PIN Offset_EX(63:0) Offset_EX(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_32 Branch_Detection_Unit
            PIN BEQ_ID XLXN_50
            PIN BGT_ID XLXN_51
            PIN BLT_ID XLXN_52
            PIN J_ID XLXN_53
            PIN rs_data(63:0) rs_data_ID(63:0)
            PIN rt_data(63:0) rt_data_ID(63:0)
            PIN PC_ctrl PC_ctrl
        END BLOCK
        BEGIN BLOCK XLXI_43 Offset_Extend
            PIN Offset(15:0) XLXN_76(15:0)
            PIN Offset_ID(63:0) Offset_ID(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_2 PC1
            PIN clk clk
            PIN rst rst
            PIN PC_ctrl PC_ctrl
            PIN PC_next(6:0) PC1_next(6:0)
            PIN thread(1:0) thread_IF(1:0)
            PIN thread_ID(1:0) thread_ID(1:0)
            PIN PC(6:0) PC1(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_9 PC_plus_1
            PIN PC(6:0) PC3(6:0)
            PIN ONE(6:0) ONE(6:0)
            PIN PC_next(6:0) PC3_plus_1(6:0)
        END BLOCK
        BEGIN BLOCK XLXI_70 vcc
            PIN P ONE(0)
        END BLOCK
        BEGIN BLOCK XLXI_71 gnd
            PIN G ONE(1)
        END BLOCK
        BEGIN BLOCK XLXI_72 gnd
            PIN G ONE(2)
        END BLOCK
        BEGIN BLOCK XLXI_73 gnd
            PIN G ONE(3)
        END BLOCK
        BEGIN BLOCK XLXI_74 gnd
            PIN G ONE(4)
        END BLOCK
        BEGIN BLOCK XLXI_75 gnd
            PIN G ONE(5)
        END BLOCK
        BEGIN BLOCK XLXI_76 gnd
            PIN G ONE(6)
        END BLOCK
        BEGIN BLOCK XLXI_29 RF_DEMUX
            PIN WRE_WB WRE_WB
            PIN thread_WB(1:0) thread_WB(1:0)
            PIN waddr(2:0) rt_WB(2:0)
            PIN wdata(63:0) RF_WB_Din(63:0)
            PIN RF0_WRE_WB XLXN_130
            PIN RF1_WRE_WB XLXN_131
            PIN RF2_WRE_WB XLXN_134
            PIN RF3_WRE_WB XLXN_135
            PIN waddr_DEMUX_out(2:0) waddr_DEMUX_out(2:0)
            PIN wdata_DEMUX_out(63:0) wdata_DEMUX_out(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_44 EX_M_Reg
            PIN clk clk
            PIN rst rst
            PIN NOOP_EX NOOP_EX
            PIN ADDI_EX ADDI_EX
            PIN MOVI_EX MOVI_EX
            PIN LW_EX LW_EX
            PIN SW_EX SW_EX
            PIN SUBI_EX SUBI_EX
            PIN WME_EX WME_EX
            PIN WRE_EX WRE_EX
            PIN thread_EX(1:0) thread_EX(1:0)
            PIN ALU_result_EX(63:0) XLXN_179(63:0)
            PIN rs_data_EX(63:0) rs_data_EX(63:0)
            PIN rt_data_EX(63:0) rt_data_EX(63:0)
            PIN rt_EX(4:0) rt_EX(4:0)
            PIN Offset_EX(63:0) Offset_EX(63:0)
            PIN NOOP_M NOOP_M
            PIN ADDI_M ADDI_M
            PIN MOVI_M MOVI_M
            PIN LW_M LW_M
            PIN SW_M SW_M
            PIN SUBI_M SUBI_M
            PIN WME_M WME_M
            PIN WRE_M WRE_M
            PIN thread_M(1:0) thread_M(1:0)
            PIN ALU_result_M(63:0) ALU_result_M(63:0)
            PIN rs_data_M(63:0) rs_data_M(63:0)
            PIN rt_data_M(63:0) rt_data_M(63:0)
            PIN rt_M(4:0) rt_M(4:0)
            PIN Offset_M(63:0) Offset_M(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_40 HLEN_Offset_Adder
            PIN Offset(63:0) Offset_EX(63:0)
            PIN HLEN(63:0) XLXN_171(63:0)
            PIN result(63:0) XLXN_173(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_42 Offset_MUX
            PIN LW_EX LW_EX
            PIN SW_EX SW_EX
            PIN HLEN_Offset_Adder_result(63:0) XLXN_173(63:0)
            PIN Offset_EX(63:0) Offset_EX(63:0)
            PIN ALU_src_MUX_in(63:0) XLXN_175(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_38 ALU
            PIN A(63:0) rs_data_EX(63:0)
            PIN B(63:0) XLXN_177(63:0)
            PIN ALU_OP(3:0) ALU_OP_EX(3:0)
            PIN Zero_Flag
            PIN Overflow
            PIN ALU_Out(63:0) XLXN_179(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_41 ALU_src_MUX
            PIN ADDI_EX ADDI_EX
            PIN SUBI_EX SUBI_EX
            PIN LW_EX LW_EX
            PIN SW_EX SW_EX
            PIN rt_data(63:0) rt_data_EX(63:0)
            PIN Offset_EX(63:0) XLXN_175(63:0)
            PIN ALU_B(63:0) XLXN_177(63:0)
        END BLOCK
        BEGIN BLOCK XLXI_80 M_WB_Reg
            PIN clk clk
            PIN rst rst
            PIN NOOP_M NOOP_M
            PIN ADDI_M ADDI_M
            PIN MOVI_M MOVI_M
            PIN LW_M LW_M
            PIN SW_M SW_M
            PIN SUBI_M SUBI_M
            PIN WRE_M WRE_M
            PIN thread_M(1:0) thread_M(1:0)
            PIN D_out_M(63:0) pkt_out(63:0)
            PIN rs_data_M(63:0) rs_data_M(63:0)
            PIN rt_data_M(63:0) rt_data_M(63:0)
            PIN ALU_result_M(63:0) ALU_result_M(63:0)
            PIN Offset_M(63:0) Offset_M(63:0)
            PIN rt_M(4:0) rt_M(4:0)
            PIN NOOP_WB
            PIN ADDI_WB ADDI_WB
            PIN MOVI_WB MOVI_WB
            PIN LW_WB LW_WB
            PIN SW_WB
            PIN SUBI_WB SUBI_WB
            PIN WRE_WB WRE_WB
            PIN thread_WB(1:0) thread_WB(1:0)
            PIN D_out_WB(63:0) D_out_WB(63:0)
            PIN rs_data_WB(63:0)
            PIN rt_data_WB(63:0)
            PIN ALU_result_WB(63:0) ALU_result_WB(63:0)
            PIN Offset_WB(63:0) Offset_WB(63:0)
            PIN rt_WB(2:0) rt_WB(2:0)
        END BLOCK
        BEGIN BLOCK XLXI_69 FIFO_state_controller
            PIN clk clk
            PIN rst_FIFO rst_FIFO
            PIN WP(7:0) WP(7:0)
            PIN RP(7:0) RP(7:0)
            PIN FIFO_EMPTY XLXN_234
            PIN FIFO_FULL XLXN_235
            PIN FIFO_almost_full FIFO_almost_FULL
            PIN FIFO_almost_empty FIFO_almost_EMPTY
            PIN depth(7:0) depth(7:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 7040 5440
        BEGIN INSTANCE XLXI_1 688 752 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_3 672 1488 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_4 672 1840 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 2352 1168 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_6 1168 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_7 1136 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_8 1136 1296 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_14 2928 832 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_16 3968 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_30 4624 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_31 4560 1344 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_39 528 2720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_51 512 4384 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_52 512 4976 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_53 512 3856 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_54 528 3648 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_65 4416 4736 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_58 960 4128 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_59 960 4720 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_67 1472 4256 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_66 1456 4848 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_68 1440 4560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_62 2448 4208 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_63 2400 4032 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_61 1488 3856 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_60 1472 3600 R0
        END INSTANCE
        BEGIN BRANCH PC0(6:0)
            WIRE 1072 464 1104 464
            WIRE 1104 464 1168 464
            WIRE 1104 464 1104 608
            WIRE 1104 608 2192 608
            WIRE 2192 608 2192 928
            WIRE 2192 928 2352 928
        END BRANCH
        BEGIN INSTANCE XLXI_10 1616 560 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_11 1616 912 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_13 1616 1648 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_12 1616 1296 R0
        END INSTANCE
        BEGIN BRANCH PC0_plus_1(6:0)
            WIRE 1552 464 1616 464
        END BRANCH
        BEGIN BRANCH PC1_plus_1(6:0)
            WIRE 1520 816 1616 816
        END BRANCH
        BEGIN BRANCH PC2(6:0)
            WIRE 1056 1200 1088 1200
            WIRE 1088 1200 1136 1200
            WIRE 1088 1024 2352 1024
            WIRE 1088 1024 1088 1200
        END BRANCH
        BEGIN BRANCH PC2_plus_1(6:0)
            WIRE 1520 1200 1616 1200
        END BRANCH
        BEGIN BRANCH PC0_next(6:0)
            WIRE 560 224 560 464
            WIRE 560 464 688 464
            WIRE 560 224 2144 224
            WIRE 2144 224 2144 400
            WIRE 2128 400 2144 400
        END BRANCH
        BEGIN BRANCH PC1_next(6:0)
            WIRE 624 816 672 816
            WIRE 624 816 624 1872
            WIRE 624 1872 2144 1872
            WIRE 2128 752 2144 752
            WIRE 2144 752 2144 1872
        END BRANCH
        BEGIN BRANCH PC3_next_out(6:0)
            WIRE 608 1552 672 1552
            WIRE 608 1552 608 1840
            WIRE 608 1840 2208 1840
            WIRE 2128 1488 2208 1488
            WIRE 2208 1488 2208 1840
        END BRANCH
        BEGIN BRANCH thread_IF(1:0)
            WIRE 400 560 448 560
            WIRE 448 560 688 560
            WIRE 448 560 448 912
            WIRE 448 912 448 1296
            WIRE 448 1296 672 1296
            WIRE 448 1296 448 1648
            WIRE 448 1648 672 1648
            WIRE 448 912 672 912
            WIRE 448 64 448 560
            WIRE 448 64 2224 64
            WIRE 2224 64 2224 608
            WIRE 2224 608 2224 880
            WIRE 2224 880 2352 880
            WIRE 2224 608 2736 608
            WIRE 2736 608 2736 816
            WIRE 2736 816 3264 816
        END BRANCH
        BEGIN BRANCH PC(8:0)
            WIRE 2736 880 2928 880
        END BRANCH
        BEGIN INSTANCE XLXI_15 3264 1104 R0
        END INSTANCE
        BEGIN BRANCH Instruction(31:0)
            WIRE 3216 880 3264 880
        END BRANCH
        BEGIN INSTANCE XLXI_17 3968 1328 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_18 3968 1760 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_19 3968 2192 R0
        END INSTANCE
        BEGIN BRANCH OP_CODE_ID(5:0)
            WIRE 3792 880 3824 880
            WIRE 3824 320 3824 880
            WIRE 3824 320 4544 320
            WIRE 4544 320 4544 544
            WIRE 4544 544 4560 544
        END BRANCH
        BEGIN BRANCH XLXN_50
            WIRE 5056 736 5280 736
        END BRANCH
        BEGIN BRANCH XLXN_51
            WIRE 5056 768 5280 768
        END BRANCH
        BEGIN BRANCH XLXN_52
            WIRE 5056 800 5280 800
        END BRANCH
        BEGIN BRANCH XLXN_53
            WIRE 5056 832 5280 832
        END BRANCH
        BEGIN BRANCH NOOP_ID
            WIRE 5056 544 6048 544
            WIRE 6048 544 6048 1072
            WIRE 6048 1072 6096 1072
        END BRANCH
        BEGIN INSTANCE XLXI_37 6096 2000 R0
        END INSTANCE
        BEGIN BRANCH ADDI_ID
            WIRE 5056 576 6016 576
            WIRE 6016 576 6016 1136
            WIRE 6016 1136 6096 1136
        END BRANCH
        BEGIN INSTANCE XLXI_32 5280 1088 R0
        END INSTANCE
        BEGIN BRANCH SUBI_ID
            WIRE 5056 608 5968 608
            WIRE 5968 608 5968 1200
            WIRE 5968 1200 6096 1200
        END BRANCH
        BEGIN BRANCH MOVI_ID
            WIRE 5056 640 5120 640
            WIRE 5120 448 5120 640
            WIRE 5120 448 5936 448
            WIRE 5936 448 5936 1264
            WIRE 5936 1264 6096 1264
        END BRANCH
        BEGIN BRANCH LW_ID
            WIRE 5056 672 5104 672
            WIRE 5104 368 5104 672
            WIRE 5104 368 5904 368
            WIRE 5904 368 5904 1328
            WIRE 5904 1328 6096 1328
        END BRANCH
        BEGIN BRANCH SW_ID
            WIRE 5056 704 5088 704
            WIRE 5088 256 5088 704
            WIRE 5088 256 6080 256
            WIRE 6080 256 6080 1392
            WIRE 6080 1392 6096 1392
        END BRANCH
        BEGIN BRANCH RF0_rs_data(63:0)
            WIRE 4384 496 4512 496
            WIRE 4512 496 4512 1280
            WIRE 4512 1280 4624 1280
        END BRANCH
        BEGIN BRANCH RF0_rt_data(63:0)
            WIRE 4384 544 4480 544
            WIRE 4480 544 4480 1344
            WIRE 4480 1344 4624 1344
        END BRANCH
        BEGIN BRANCH RF1_rs_data(63:0)
            WIRE 4384 912 4448 912
            WIRE 4448 912 4448 1408
            WIRE 4448 1408 4624 1408
        END BRANCH
        BEGIN BRANCH RF1_rt_data(63:0)
            WIRE 4384 960 4560 960
            WIRE 4560 960 4560 1472
            WIRE 4560 1472 4624 1472
        END BRANCH
        BEGIN BRANCH RF2_rs_data(63:0)
            WIRE 4384 1344 4432 1344
            WIRE 4432 1344 4432 1536
            WIRE 4432 1536 4624 1536
        END BRANCH
        BEGIN BRANCH RF2_rt_data(63:0)
            WIRE 4384 1392 4400 1392
            WIRE 4400 1392 4400 1600
            WIRE 4400 1600 4624 1600
        END BRANCH
        BEGIN BRANCH RF3_rs_data(63:0)
            WIRE 4384 1776 4496 1776
            WIRE 4496 1664 4496 1776
            WIRE 4496 1664 4624 1664
        END BRANCH
        BEGIN BRANCH RF3_rt_data(63:0)
            WIRE 4384 1824 4608 1824
            WIRE 4608 1728 4608 1824
            WIRE 4608 1728 4624 1728
        END BRANCH
        BEGIN INSTANCE XLXI_43 4512 2080 R0
        END INSTANCE
        BEGIN BRANCH XLXN_76(15:0)
            WIRE 3792 1072 3840 1072
            WIRE 3840 1072 3840 2112
            WIRE 3840 2112 4448 2112
            WIRE 4448 2048 4448 2112
            WIRE 4448 2048 4512 2048
        END BRANCH
        BEGIN BRANCH rt_data_ID(63:0)
            WIRE 5104 1728 5200 1728
            WIRE 5200 944 5280 944
            WIRE 5200 944 5200 1712
            WIRE 5200 1712 5200 1728
            WIRE 5200 1712 6096 1712
        END BRANCH
        BEGIN BRANCH rs_data_ID(63:0)
            WIRE 5104 1216 5184 1216
            WIRE 5184 1216 5184 1648
            WIRE 5184 1648 6096 1648
            WIRE 5184 880 5184 1216
            WIRE 5184 880 5280 880
        END BRANCH
        BEGIN BRANCH WME_ID
            WIRE 5056 864 5168 864
            WIRE 5168 864 5168 1456
            WIRE 5168 1456 6096 1456
        END BRANCH
        BEGIN BRANCH WRE_ID
            WIRE 5056 896 5152 896
            WIRE 5152 896 5152 1520
            WIRE 5152 1520 6096 1520
        END BRANCH
        BEGIN BRANCH ALU_OP_ID(3:0)
            WIRE 5056 928 5136 928
            WIRE 5136 928 5136 1584
            WIRE 5136 1584 6096 1584
        END BRANCH
        BEGIN INSTANCE XLXI_2 672 1104 R0
        END INSTANCE
        BEGIN BRANCH PC3(6:0)
            WIRE 1056 1552 1088 1552
            WIRE 1088 1552 1136 1552
            WIRE 1088 1344 1088 1552
            WIRE 1088 1344 2288 1344
            WIRE 2288 1072 2352 1072
            WIRE 2288 1072 2288 1344
        END BRANCH
        BEGIN BRANCH PC2_next_out(6:0)
            WIRE 496 1200 496 1904
            WIRE 496 1904 2224 1904
            WIRE 496 1200 672 1200
            WIRE 2128 1136 2224 1136
            WIRE 2224 1136 2224 1904
        END BRANCH
        BEGIN BRANCH thread_ID(1:0)
            WIRE 512 96 3792 96
            WIRE 3792 96 4464 96
            WIRE 4464 96 6096 96
            WIRE 6096 96 6096 1008
            WIRE 4464 96 4464 1216
            WIRE 4464 1216 4624 1216
            WIRE 3792 96 3792 112
            WIRE 3792 112 3792 816
            WIRE 512 96 512 512
            WIRE 512 512 688 512
            WIRE 512 512 512 864
            WIRE 512 864 512 1248
            WIRE 512 1248 672 1248
            WIRE 512 1248 512 1600
            WIRE 512 1600 672 1600
            WIRE 512 864 672 864
        END BRANCH
        BEGIN INSTANCE XLXI_9 1136 1648 R0
        END INSTANCE
        BEGIN BRANCH ONE(6:0)
            WIRE 704 1968 1120 1968
            WIRE 1120 528 1120 880
            WIRE 1120 880 1136 880
            WIRE 1120 880 1120 1264
            WIRE 1120 1264 1136 1264
            WIRE 1120 1264 1120 1616
            WIRE 1120 1616 1136 1616
            WIRE 1120 1616 1120 1968
            WIRE 1120 528 1168 528
        END BRANCH
        INSTANCE XLXI_70 2560 320 R0
        INSTANCE XLXI_71 2784 384 R0
        BEGIN BRANCH ONE(0)
            WIRE 2624 320 2624 384
        END BRANCH
        INSTANCE XLXI_72 2848 384 R0
        INSTANCE XLXI_73 2912 384 R0
        INSTANCE XLXI_74 2976 384 R0
        INSTANCE XLXI_75 3040 384 R0
        INSTANCE XLXI_76 3104 384 R0
        BEGIN BRANCH ONE(1)
            WIRE 2848 224 2848 256
        END BRANCH
        BEGIN BRANCH ONE(2)
            WIRE 2912 224 2912 256
        END BRANCH
        BEGIN BRANCH ONE(3)
            WIRE 2976 224 2976 256
        END BRANCH
        BEGIN BRANCH ONE(4)
            WIRE 3040 224 3040 256
        END BRANCH
        BEGIN BRANCH ONE(5)
            WIRE 3104 224 3104 256
        END BRANCH
        BEGIN BRANCH ONE(6)
            WIRE 3168 224 3168 256
        END BRANCH
        BEGIN BRANCH PC3_plus_1(6:0)
            WIRE 1520 1552 1616 1552
        END BRANCH
        BEGIN BRANCH Offset_ID(63:0)
            WIRE 4976 2048 5040 2048
            WIRE 5040 2048 5072 2048
            WIRE 5040 1840 6096 1840
            WIRE 5040 1840 5040 2048
        END BRANCH
        BEGIN BRANCH Offset_ID(6:0)
            WIRE 1552 528 1552 880
            WIRE 1552 880 1616 880
            WIRE 1552 880 1552 1264
            WIRE 1552 1264 1616 1264
            WIRE 1552 1264 1552 1616
            WIRE 1552 1616 1616 1616
            WIRE 1552 1616 1552 2160
            WIRE 1552 2160 5584 2160
            WIRE 1552 528 1616 528
            WIRE 5456 2048 5584 2048
            WIRE 5584 2048 5584 2160
        END BRANCH
        BEGIN BRANCH clk
            WIRE 384 608 416 608
            WIRE 416 608 544 608
            WIRE 544 608 688 608
            WIRE 544 608 544 960
            WIRE 544 960 672 960
            WIRE 544 960 544 1344
            WIRE 544 1344 672 1344
            WIRE 544 1344 544 1696
            WIRE 544 1696 672 1696
            WIRE 416 608 416 2064
            WIRE 416 2064 2816 2064
            WIRE 2816 2064 3728 2064
            WIRE 3728 2064 3728 2192
            WIRE 3728 2192 4992 2192
            WIRE 416 2064 416 2592
            WIRE 416 2592 464 2592
            WIRE 464 2592 528 2592
            WIRE 464 2592 464 3248
            WIRE 464 3248 480 3248
            WIRE 480 3248 2752 3248
            WIRE 2752 3248 2752 3504
            WIRE 2752 3504 3440 3504
            WIRE 480 3248 480 4288
            WIRE 480 4288 512 4288
            WIRE 480 4288 480 4880
            WIRE 480 4880 512 4880
            WIRE 480 4880 480 4992
            WIRE 480 4992 480 5328
            WIRE 480 5328 1344 5328
            WIRE 1344 5328 1520 5328
            WIRE 480 4992 1344 4992
            WIRE 1344 4992 1984 4992
            WIRE 1344 4944 3296 4944
            WIRE 1344 4944 1344 5328
            WIRE 1984 4672 1984 4992
            WIRE 1984 4672 2352 4672
            WIRE 2352 4672 2448 4672
            WIRE 2352 4448 2448 4448
            WIRE 2352 4448 2352 4672
            WIRE 2816 1072 2928 1072
            WIRE 2816 1072 2816 1296
            WIRE 2816 1296 2928 1296
            WIRE 2816 1296 2816 1392
            WIRE 2816 1392 2816 2064
            WIRE 2816 1392 3248 1392
            WIRE 3248 1008 3248 1392
            WIRE 3248 1008 3264 1008
            WIRE 3728 1136 3728 1568
            WIRE 3728 1568 3968 1568
            WIRE 3728 1568 3728 2000
            WIRE 3728 2000 3968 2000
            WIRE 3728 2000 3728 2064
            WIRE 3728 1136 3920 1136
            WIRE 3920 1136 3968 1136
            WIRE 3920 720 3968 720
            WIRE 3920 720 3920 1136
            WIRE 4992 1904 4992 2192
            WIRE 4992 1904 6096 1904
        END BRANCH
        BEGIN BRANCH rst
            WIRE 384 656 576 656
            WIRE 576 656 688 656
            WIRE 576 656 576 1008
            WIRE 576 1008 672 1008
            WIRE 576 1008 576 1392
            WIRE 576 1392 672 1392
            WIRE 576 1392 576 1744
            WIRE 576 1744 672 1744
            WIRE 576 1744 576 2032
            WIRE 576 2032 1152 2032
            WIRE 1152 2032 2704 2032
            WIRE 2704 2032 3760 2032
            WIRE 3760 2032 3936 2032
            WIRE 3936 2032 3968 2032
            WIRE 3760 2032 3760 2240
            WIRE 3760 2240 5008 2240
            WIRE 1152 2032 1152 2944
            WIRE 1152 2944 2256 2944
            WIRE 2256 2944 2256 3568
            WIRE 2256 3568 3040 3568
            WIRE 3040 3568 3440 3568
            WIRE 3040 3568 3040 3584
            WIRE 3040 3584 3040 5008
            WIRE 3040 5008 3296 5008
            WIRE 2704 1456 2704 2032
            WIRE 2704 1456 3232 1456
            WIRE 3232 1072 3232 1456
            WIRE 3232 1072 3264 1072
            WIRE 3936 752 3968 752
            WIRE 3936 752 3936 1168
            WIRE 3936 1168 3968 1168
            WIRE 3936 1168 3936 1600
            WIRE 3936 1600 3968 1600
            WIRE 3936 1600 3936 2032
            WIRE 5008 1968 5008 2240
            WIRE 5008 1968 6096 1968
        END BRANCH
        BEGIN BRANCH PC1(6:0)
            WIRE 1056 816 1088 816
            WIRE 1088 816 1136 816
            WIRE 1088 816 1088 976
            WIRE 1088 976 2352 976
        END BRANCH
        BEGIN INSTANCE XLXI_29 3040 1904 R0
        END INSTANCE
        BEGIN BRANCH XLXN_130
            WIRE 3648 1552 3808 1552
            WIRE 3808 688 3808 1552
            WIRE 3808 688 3968 688
        END BRANCH
        BEGIN BRANCH XLXN_131
            WIRE 3648 1616 3824 1616
            WIRE 3824 1104 3824 1616
            WIRE 3824 1104 3968 1104
        END BRANCH
        BEGIN BRANCH XLXN_134
            WIRE 3648 1680 3664 1680
            WIRE 3664 1536 3968 1536
            WIRE 3664 1536 3664 1680
        END BRANCH
        BEGIN BRANCH XLXN_135
            WIRE 3648 1744 3808 1744
            WIRE 3808 1744 3808 1968
            WIRE 3808 1968 3968 1968
        END BRANCH
        BEGIN BRANCH waddr_DEMUX_out(2:0)
            WIRE 2848 592 2848 1952
            WIRE 2848 1952 3744 1952
            WIRE 2848 592 3968 592
            WIRE 3648 1808 3696 1808
            WIRE 3696 1808 3696 1904
            WIRE 3696 1904 3952 1904
            WIRE 3696 1808 3744 1808
            WIRE 3744 1808 3792 1808
            WIRE 3792 1808 3792 1872
            WIRE 3792 1872 3968 1872
            WIRE 3744 1808 3744 1952
            WIRE 3792 1440 3792 1808
            WIRE 3792 1440 3968 1440
            WIRE 3952 1008 3952 1904
            WIRE 3952 1008 3968 1008
        END BRANCH
        BEGIN BRANCH wdata_DEMUX_out(63:0)
            WIRE 2864 640 2864 1968
            WIRE 2864 1968 3680 1968
            WIRE 2864 640 3968 640
            WIRE 3648 1872 3680 1872
            WIRE 3680 1872 3712 1872
            WIRE 3712 1872 3776 1872
            WIRE 3776 1872 3776 1920
            WIRE 3776 1920 3968 1920
            WIRE 3680 1872 3680 1968
            WIRE 3712 1824 3712 1872
            WIRE 3712 1824 3856 1824
            WIRE 3776 1488 3776 1872
            WIRE 3776 1488 3968 1488
            WIRE 3856 1056 3856 1824
            WIRE 3856 1056 3968 1056
        END BRANCH
        BEGIN BRANCH Instr_IN_addr(8:0)
            WIRE 2480 1200 2736 1200
            WIRE 2736 1104 2928 1104
            WIRE 2736 1104 2736 1200
        END BRANCH
        BEGIN BRANCH Instr_IN(31:0)
            WIRE 2480 1232 2752 1232
            WIRE 2752 1136 2928 1136
            WIRE 2752 1136 2752 1232
        END BRANCH
        BEGIN BRANCH Instr_IN_en
            WIRE 2480 1264 2768 1264
            WIRE 2768 1168 2928 1168
            WIRE 2768 1168 2768 1264
        END BRANCH
        BEGIN BRANCH PC_ctrl
            WIRE 592 1440 608 1440
            WIRE 608 1440 672 1440
            WIRE 592 1440 592 1792
            WIRE 592 1792 672 1792
            WIRE 608 160 608 704
            WIRE 608 704 688 704
            WIRE 608 704 608 1056
            WIRE 608 1056 672 1056
            WIRE 608 1056 608 1440
            WIRE 608 160 1568 160
            WIRE 1568 160 1568 400
            WIRE 1568 400 1616 400
            WIRE 1568 400 1568 752
            WIRE 1568 752 1616 752
            WIRE 1568 752 1568 1136
            WIRE 1568 1136 1616 1136
            WIRE 1568 1136 1568 1488
            WIRE 1568 1488 1616 1488
            WIRE 1568 160 5712 160
            WIRE 5712 160 5712 736
            WIRE 5664 736 5712 736
        END BRANCH
        BEGIN INSTANCE XLXI_44 3440 3600 R0
        END INSTANCE
        BEGIN BRANCH thread_EX(1:0)
            WIRE 3360 2496 3360 2608
            WIRE 3360 2608 3440 2608
            WIRE 3360 2496 6704 2496
            WIRE 6624 1008 6704 1008
            WIRE 6704 1008 6704 2496
        END BRANCH
        BEGIN BRANCH XLXN_170(63:0)
            WIRE 320 2496 528 2496
        END BRANCH
        BEGIN INSTANCE XLXI_40 1168 2528 R0
        END INSTANCE
        BEGIN BRANCH XLXN_171(63:0)
            WIRE 1104 2496 1168 2496
        END BRANCH
        BEGIN BRANCH Offset_EX(63:0)
            WIRE 1056 2256 1616 2256
            WIRE 1616 2256 6688 2256
            WIRE 1616 2256 1616 2384
            WIRE 1616 2384 1664 2384
            WIRE 1056 2256 1056 2432
            WIRE 1056 2432 1168 2432
            WIRE 3328 3440 3440 3440
            WIRE 3328 3440 3328 3696
            WIRE 3328 3696 6864 3696
            WIRE 6624 1840 6688 1840
            WIRE 6688 1840 6688 2256
            WIRE 6688 1840 6864 1840
            WIRE 6864 1840 6864 3696
        END BRANCH
        BEGIN INSTANCE XLXI_42 1664 2608 R0
        END INSTANCE
        BEGIN BRANCH XLXN_173(63:0)
            WIRE 1552 2432 1664 2432
        END BRANCH
        BEGIN INSTANCE XLXI_38 2400 3136 R0
        END INSTANCE
        BEGIN BRANCH XLXN_175(63:0)
            WIRE 2272 2384 2288 2384
            WIRE 2288 2384 2288 2768
            WIRE 2288 2768 2448 2768
        END BRANCH
        BEGIN BRANCH XLXN_177(63:0)
            WIRE 2384 3040 2400 3040
            WIRE 2384 3040 2384 3200
            WIRE 2384 3200 3008 3200
            WIRE 2928 2448 3008 2448
            WIRE 3008 2448 3008 3200
        END BRANCH
        BEGIN BRANCH XLXN_179(63:0)
            WIRE 2864 3104 3152 3104
            WIRE 3152 3104 3152 3184
            WIRE 3152 3184 3440 3184
        END BRANCH
        BEGIN BRANCH NOOP_EX
            WIRE 3376 2512 3376 2672
            WIRE 3376 2672 3440 2672
            WIRE 3376 2512 6672 2512
            WIRE 6624 1072 6672 1072
            WIRE 6672 1072 6672 2512
        END BRANCH
        BEGIN BRANCH ADDI_EX
            WIRE 2400 2352 2400 2448
            WIRE 2400 2448 2448 2448
            WIRE 2400 2352 2944 2352
            WIRE 2944 2352 2944 2736
            WIRE 2944 2736 3424 2736
            WIRE 3424 2736 3440 2736
            WIRE 3424 2528 3424 2736
            WIRE 3424 2528 6656 2528
            WIRE 6624 1136 6656 1136
            WIRE 6656 1136 6656 2528
        END BRANCH
        BEGIN BRANCH SUBI_EX
            WIRE 2432 2368 2432 2512
            WIRE 2432 2512 2448 2512
            WIRE 2432 2368 2992 2368
            WIRE 2992 2368 2992 2992
            WIRE 2992 2992 3408 2992
            WIRE 3408 2992 3440 2992
            WIRE 3408 2480 3408 2992
            WIRE 3408 2480 6640 2480
            WIRE 6624 1200 6640 1200
            WIRE 6640 1200 6640 2480
        END BRANCH
        BEGIN BRANCH MOVI_EX
            WIRE 3376 2800 3440 2800
            WIRE 3376 2800 3376 3680
            WIRE 3376 3680 6768 3680
            WIRE 6624 1264 6768 1264
            WIRE 6768 1264 6768 3680
        END BRANCH
        BEGIN BRANCH LW_EX
            WIRE 1648 2480 1664 2480
            WIRE 1648 2480 1648 2576
            WIRE 1648 2576 2224 2576
            WIRE 2224 2576 2448 2576
            WIRE 2224 2576 2224 2864
            WIRE 2224 2864 3392 2864
            WIRE 3392 2864 3440 2864
            WIRE 3392 2864 3392 3664
            WIRE 3392 3664 6784 3664
            WIRE 6624 1328 6784 1328
            WIRE 6784 1328 6784 3664
        END BRANCH
        BEGIN BRANCH SW_EX
            WIRE 1600 2528 1664 2528
            WIRE 1600 2528 1600 2640
            WIRE 1600 2640 2400 2640
            WIRE 2400 2640 2448 2640
            WIRE 2400 2640 2400 2928
            WIRE 2400 2928 3360 2928
            WIRE 3360 2928 3440 2928
            WIRE 3360 2928 3360 3616
            WIRE 3360 3616 6752 3616
            WIRE 6624 1392 6752 1392
            WIRE 6752 1392 6752 3616
        END BRANCH
        BEGIN BRANCH WME_EX
            WIRE 3408 3056 3440 3056
            WIRE 3408 3056 3408 3648
            WIRE 3408 3648 6736 3648
            WIRE 6624 1456 6736 1456
            WIRE 6736 1456 6736 3648
        END BRANCH
        BEGIN BRANCH WRE_EX
            WIRE 3424 3120 3440 3120
            WIRE 3424 3120 3424 3632
            WIRE 3424 3632 6720 3632
            WIRE 6624 1520 6720 1520
            WIRE 6720 1520 6720 3632
        END BRANCH
        BEGIN BRANCH ALU_OP_EX(3:0)
            WIRE 2336 2272 2336 3104
            WIRE 2336 3104 2400 3104
            WIRE 2336 2272 6816 2272
            WIRE 6624 1584 6816 1584
            WIRE 6816 1584 6816 2272
        END BRANCH
        BEGIN BRANCH rs_data_EX(63:0)
            WIRE 2384 2304 2384 2976
            WIRE 2384 2976 2400 2976
            WIRE 2384 2304 6800 2304
            WIRE 3296 3248 3440 3248
            WIRE 3296 3248 3296 3744
            WIRE 3296 3744 5424 3744
            WIRE 5424 2816 5424 3744
            WIRE 5424 2816 6880 2816
            WIRE 6624 1648 6800 1648
            WIRE 6800 1648 6800 2304
            WIRE 6800 1648 6880 1648
            WIRE 6880 1648 6880 2816
        END BRANCH
        BEGIN BRANCH rt_data_EX(63:0)
            WIRE 2368 2384 2368 2704
            WIRE 2368 2704 2448 2704
            WIRE 2368 2384 6848 2384
            WIRE 3312 3312 3440 3312
            WIRE 3312 3312 3312 3728
            WIRE 3312 3728 7008 3728
            WIRE 6624 1712 6848 1712
            WIRE 6848 1712 7008 1712
            WIRE 7008 1712 7008 3728
            WIRE 6848 1712 6848 2384
        END BRANCH
        BEGIN BRANCH rt_EX(4:0)
            WIRE 3280 3376 3440 3376
            WIRE 3280 3376 3280 3760
            WIRE 3280 3760 6928 3760
            WIRE 6624 1776 6928 1776
            WIRE 6928 1776 6928 3760
        END BRANCH
        BEGIN INSTANCE XLXI_41 2448 2800 R0
        END INSTANCE
        BEGIN BRANCH rst_FIFO
            WIRE 368 3488 368 4352
            WIRE 368 4352 464 4352
            WIRE 464 4352 512 4352
            WIRE 464 4352 464 4608
            WIRE 368 3488 448 3488
            WIRE 368 4608 464 4608
            WIRE 368 4608 368 4944
            WIRE 368 4944 512 4944
            WIRE 368 4944 368 5264
            WIRE 368 5264 1520 5264
            WIRE 416 2640 448 2640
            WIRE 448 2640 528 2640
            WIRE 448 2640 448 3488
        END BRANCH
        BEGIN INSTANCE XLXI_80 3296 5040 R0
        END INSTANCE
        BEGIN BRANCH thread_M(1:0)
            WIRE 3216 4048 3296 4048
            WIRE 3216 4048 3216 5104
            WIRE 3216 5104 4128 5104
            WIRE 4048 2608 4128 2608
            WIRE 4128 2608 4128 5104
        END BRANCH
        BEGIN BRANCH NOOP_M
            WIRE 3232 3952 3232 4112
            WIRE 3232 4112 3296 4112
            WIRE 3232 3952 4112 3952
            WIRE 4048 2672 4112 2672
            WIRE 4112 2672 4112 3952
        END BRANCH
        BEGIN BRANCH ADDI_M
            WIRE 3280 3968 3280 4176
            WIRE 3280 4176 3296 4176
            WIRE 3280 3968 4096 3968
            WIRE 4048 2736 4096 2736
            WIRE 4096 2736 4096 3968
        END BRANCH
        BEGIN BRANCH MOVI_M
            WIRE 3232 4304 3296 4304
            WIRE 3232 4304 3232 5088
            WIRE 3232 5088 4080 5088
            WIRE 4048 2800 4080 2800
            WIRE 4080 2800 4080 5088
        END BRANCH
        BEGIN BRANCH SUBI_M
            WIRE 3152 3888 3152 4240
            WIRE 3152 4240 3296 4240
            WIRE 3152 3888 4144 3888
            WIRE 4048 2992 4144 2992
            WIRE 4144 2992 4144 3888
        END BRANCH
        BEGIN BRANCH WME_M
            WIRE 2336 3824 2336 3936
            WIRE 2336 3936 2400 3936
            WIRE 2336 3824 4192 3824
            WIRE 4048 3056 4192 3056
            WIRE 4192 3056 4192 3824
        END BRANCH
        BEGIN BRANCH WRE_M
            WIRE 3248 4496 3296 4496
            WIRE 3248 4496 3248 5056
            WIRE 3248 5056 4224 5056
            WIRE 4048 3120 4224 3120
            WIRE 4224 3120 4224 5056
        END BRANCH
        BEGIN BRANCH ALU_result_M(63:0)
            WIRE 1424 3504 1472 3504
            WIRE 1424 3504 1424 3664
            WIRE 1424 3664 2000 3664
            WIRE 2000 3664 2000 4752
            WIRE 2000 4752 3264 4752
            WIRE 3264 4752 3296 4752
            WIRE 3264 4752 3264 5072
            WIRE 3264 5072 4208 5072
            WIRE 4048 3184 4208 3184
            WIRE 4208 3184 4208 5072
        END BRANCH
        BEGIN BRANCH rs_data_M(63:0)
            WIRE 3152 4624 3296 4624
            WIRE 3152 4624 3152 5200
            WIRE 3152 5200 4176 5200
            WIRE 4048 3248 4176 3248
            WIRE 4176 3248 4176 5200
        END BRANCH
        BEGIN BRANCH rt_data_M(63:0)
            WIRE 496 3872 496 4464
            WIRE 496 4464 1440 4464
            WIRE 496 3872 3168 3872
            WIRE 3168 3872 3168 4688
            WIRE 3168 4688 3296 4688
            WIRE 3168 4688 3168 5184
            WIRE 3168 5184 4304 5184
            WIRE 4048 3312 4304 3312
            WIRE 4304 3312 4304 5184
        END BRANCH
        BEGIN BRANCH rt_M(4:0)
            WIRE 1360 3568 1472 3568
            WIRE 1360 3568 1360 4880
            WIRE 1360 4880 3184 4880
            WIRE 3184 4880 3296 4880
            WIRE 3184 4880 3184 5168
            WIRE 3184 5168 4288 5168
            WIRE 4048 3376 4288 3376
            WIRE 4288 3376 4288 5168
        END BRANCH
        BEGIN BRANCH mode_code(1:0)
            WIRE 352 3616 384 3616
            WIRE 384 3616 528 3616
            WIRE 384 3616 384 3824
            WIRE 384 3824 512 3824
        END BRANCH
        BEGIN BRANCH WP(7:0)
            WIRE 896 4096 928 4096
            WIRE 928 4096 960 4096
            WIRE 928 4096 928 4160
            WIRE 928 4160 1472 4160
            WIRE 928 4160 928 4480
            WIRE 928 4480 1392 4480
            WIRE 1392 4480 1392 5120
            WIRE 1392 5120 1520 5120
        END BRANCH
        BEGIN BRANCH WP_next(7:0)
            WIRE 448 4096 512 4096
            WIRE 448 4096 448 4448
            WIRE 448 4448 1376 4448
            WIRE 1344 4096 1376 4096
            WIRE 1376 4096 1376 4448
        END BRANCH
        BEGIN BRANCH RP_next(7:0)
            WIRE 432 4688 512 4688
            WIRE 432 4688 432 5040
            WIRE 432 5040 1376 5040
            WIRE 1344 4688 1376 4688
            WIRE 1376 4688 1376 5040
        END BRANCH
        BEGIN BRANCH WP_en
            WIRE 464 4000 464 4224
            WIRE 464 4224 512 4224
            WIRE 464 4000 1008 4000
            WIRE 912 3616 1008 3616
            WIRE 1008 3616 1008 4000
            WIRE 1008 3616 1392 3616
            WIRE 1392 3616 2304 3616
            WIRE 2304 3616 2304 4000
            WIRE 2304 4000 2400 4000
            WIRE 1392 3616 1392 4224
            WIRE 1392 4224 1472 4224
            WIRE 1392 4224 1392 4400
            WIRE 1392 4400 1440 4400
        END BRANCH
        BEGIN BRANCH RP_en
            WIRE 448 4816 512 4816
            WIRE 448 4816 448 5024
            WIRE 448 5024 944 5024
            WIRE 896 3824 944 3824
            WIRE 944 3824 944 4816
            WIRE 944 4816 944 5024
            WIRE 944 4816 1456 4816
        END BRANCH
        BEGIN BRANCH LW_M
            WIRE 1408 3280 1408 3376
            WIRE 1408 3376 1472 3376
            WIRE 1408 3280 2816 3280
            WIRE 2816 3280 2816 4368
            WIRE 2816 4368 3280 4368
            WIRE 3280 4368 3296 4368
            WIRE 3280 4368 3280 5120
            WIRE 3280 5120 4064 5120
            WIRE 4048 2864 4064 2864
            WIRE 4064 2864 4064 5120
        END BRANCH
        BEGIN BRANCH SW_M
            WIRE 1408 3440 1472 3440
            WIRE 1408 3440 1408 3680
            WIRE 1408 3680 2800 3680
            WIRE 2800 3680 2800 4432
            WIRE 2800 4432 3264 4432
            WIRE 3264 4432 3296 4432
            WIRE 3264 3984 3264 4432
            WIRE 3264 3984 4160 3984
            WIRE 4048 2928 4160 2928
            WIRE 4160 2928 4160 3984
        END BRANCH
        BEGIN BRANCH XLXN_211
            WIRE 2384 4128 2384 4320
            WIRE 2384 4320 2448 4320
            WIRE 2384 4128 2848 4128
            WIRE 2784 3936 2848 3936
            WIRE 2848 3936 2848 4128
        END BRANCH
        BEGIN BRANCH D_addr_src_MUX_out(7:0)
            WIRE 1440 3648 1440 3760
            WIRE 1440 3760 1488 3760
            WIRE 1440 3648 2032 3648
            WIRE 1968 3376 2032 3376
            WIRE 2032 3376 2032 3648
        END BRANCH
        BEGIN BRANCH SRAM_addr(7:0)
            WIRE 1408 4000 1984 4000
            WIRE 1408 4000 1408 4096
            WIRE 1408 4096 1472 4096
            WIRE 1408 4096 1408 4688
            WIRE 1408 4688 1456 4688
            WIRE 1936 3760 1984 3760
            WIRE 1984 3760 1984 4000
        END BRANCH
        BEGIN BRANCH pkt_in(63:0)
            WIRE 448 4528 1440 4528
        END BRANCH
        BEGIN BRANCH D_waddr(7:0)
            WIRE 1952 4096 2192 4096
            WIRE 2192 4096 2192 4256
            WIRE 2192 4256 2448 4256
        END BRANCH
        BEGIN BRANCH D_wdata(63:0)
            WIRE 1968 4400 2208 4400
            WIRE 2208 4288 2208 4400
            WIRE 2208 4288 2448 4288
        END BRANCH
        BEGIN BRANCH D_raddr(7:0)
            WIRE 1936 4688 2192 4688
            WIRE 2192 4480 2192 4688
            WIRE 2192 4480 2448 4480
        END BRANCH
        BEGIN BRANCH RP(7:0)
            WIRE 896 4688 928 4688
            WIRE 928 4688 960 4688
            WIRE 928 4688 928 5200
            WIRE 928 5200 1520 5200
            WIRE 928 4576 928 4688
            WIRE 928 4576 1424 4576
            WIRE 1424 4576 1424 4752
            WIRE 1424 4752 1456 4752
            WIRE 1424 3824 1424 4576
            WIRE 1424 3824 1488 3824
        END BRANCH
        BEGIN BRANCH Offset_M(63:0)
            WIRE 3200 4816 3296 4816
            WIRE 3200 4816 3200 5152
            WIRE 3200 5152 4272 5152
            WIRE 4048 3440 4272 3440
            WIRE 4272 3440 4272 5152
        END BRANCH
        BEGIN BRANCH pkt_out(63:0)
            WIRE 2736 4480 2848 4480
            WIRE 2848 4480 3008 4480
            WIRE 3008 4480 3008 4560
            WIRE 3008 4560 3296 4560
            WIRE 2848 4480 2848 5312
            WIRE 2848 5312 2992 5312
        END BRANCH
        BEGIN INSTANCE XLXI_69 1520 5408 R0
        END INSTANCE
        BEGIN BRANCH XLXN_234
            WIRE 448 4592 448 4752
            WIRE 448 4752 512 4752
            WIRE 448 4592 2016 4592
            WIRE 2016 4592 2016 5120
            WIRE 2000 5120 2016 5120
        END BRANCH
        BEGIN BRANCH XLXN_235
            WIRE 384 4048 384 4160
            WIRE 384 4160 512 4160
            WIRE 384 4048 2096 4048
            WIRE 2096 4048 2096 5184
            WIRE 2000 5184 2096 5184
        END BRANCH
        BEGIN BRANCH depth(7:0)
            WIRE 2000 5376 2176 5376
        END BRANCH
        BEGIN BRANCH FIFO_almost_EMPTY
            WIRE 2000 5312 2176 5312
        END BRANCH
        BEGIN BRANCH FIFO_almost_FULL
            WIRE 2000 5248 2176 5248
        END BRANCH
        BEGIN BRANCH LW_WB
            WIRE 3904 4368 4160 4368
            WIRE 4160 4320 4160 4368
            WIRE 4160 4320 4416 4320
        END BRANCH
        BEGIN BRANCH ADDI_WB
            WIRE 3904 4176 4144 4176
            WIRE 4144 4176 4144 4384
            WIRE 4144 4384 4416 4384
        END BRANCH
        BEGIN BRANCH SUBI_WB
            WIRE 3904 4240 4112 4240
            WIRE 4112 4240 4112 4448
            WIRE 4112 4448 4416 4448
        END BRANCH
        BEGIN BRANCH MOVI_WB
            WIRE 3904 4304 4192 4304
            WIRE 4192 4304 4192 4512
            WIRE 4192 4512 4416 4512
        END BRANCH
        BEGIN BRANCH D_out_WB(63:0)
            WIRE 3904 4560 4160 4560
            WIRE 4160 4560 4160 4576
            WIRE 4160 4576 4416 4576
        END BRANCH
        BEGIN BRANCH ALU_result_WB(63:0)
            WIRE 3904 4752 4160 4752
            WIRE 4160 4640 4160 4752
            WIRE 4160 4640 4416 4640
        END BRANCH
        BEGIN BRANCH Offset_WB(63:0)
            WIRE 3904 4816 4192 4816
            WIRE 4192 4704 4192 4816
            WIRE 4192 4704 4416 4704
        END BRANCH
        BEGIN BRANCH rt_WB(2:0)
            WIRE 2992 1744 3040 1744
            WIRE 2992 1744 2992 2144
            WIRE 2992 2144 4256 2144
            WIRE 4256 2144 4256 4880
            WIRE 3904 4880 4256 4880
        END BRANCH
        BEGIN BRANCH RF_WB_Din(63:0)
            WIRE 2960 1840 3040 1840
            WIRE 2960 1840 2960 2128
            WIRE 2960 2128 5056 2128
            WIRE 5056 2128 5056 4320
            WIRE 4992 4320 5056 4320
        END BRANCH
        BEGIN BRANCH thread_WB(1:0)
            WIRE 2976 1648 3040 1648
            WIRE 2976 1648 2976 2080
            WIRE 2976 2080 4240 2080
            WIRE 4240 2080 4240 4048
            WIRE 3904 4048 4240 4048
        END BRANCH
        BEGIN BRANCH WRE_WB
            WIRE 3024 1552 3040 1552
            WIRE 3024 1552 3024 2224
            WIRE 3024 2224 4352 2224
            WIRE 4352 2224 4352 4496
            WIRE 3904 4496 4352 4496
        END BRANCH
        BEGIN BRANCH rs_ID(4:0)
            WIRE 3792 944 3840 944
        END BRANCH
        BEGIN BRANCH rt_ID(4:0)
            WIRE 3792 1008 3904 1008
            WIRE 3904 800 3904 1008
            WIRE 3904 800 4544 800
            WIRE 4544 800 4544 1776
            WIRE 4544 1776 6096 1776
        END BRANCH
        BEGIN BRANCH rs_ID(2:0)
            WIRE 3888 496 3904 496
            WIRE 3904 496 3968 496
            WIRE 3888 496 3888 912
            WIRE 3888 912 3968 912
            WIRE 3888 912 3888 1344
            WIRE 3888 1344 3968 1344
            WIRE 3888 1344 3888 1776
            WIRE 3888 1776 3968 1776
        END BRANCH
        BEGIN BRANCH rt_ID(2:0)
            WIRE 3872 544 3968 544
            WIRE 3872 544 3872 960
            WIRE 3872 960 3872 1392
            WIRE 3872 1392 3920 1392
            WIRE 3920 1392 3968 1392
            WIRE 3920 1392 3920 1824
            WIRE 3920 1824 3968 1824
            WIRE 3872 960 3968 960
        END BRANCH
        IOMARKER 384 608 clk R180 28
        IOMARKER 384 656 rst R180 28
        IOMARKER 2480 1200 Instr_IN_addr(8:0) R180 28
        IOMARKER 2480 1232 Instr_IN(31:0) R180 28
        IOMARKER 2480 1264 Instr_IN_en R180 28
        IOMARKER 416 2640 rst_FIFO R180 28
        IOMARKER 352 3616 mode_code(1:0) R180 28
        IOMARKER 2992 5312 pkt_out(63:0) R0 28
        IOMARKER 448 4528 pkt_in(63:0) R180 28
        IOMARKER 2176 5248 FIFO_almost_FULL R0 28
        IOMARKER 2176 5312 FIFO_almost_EMPTY R0 28
        IOMARKER 2176 5376 depth(7:0) R0 28
        IOMARKER 400 560 thread_IF(1:0) R180 28
    END SHEET
END SCHEMATIC
