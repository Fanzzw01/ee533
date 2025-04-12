VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "virtex2p"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL weight_in(1023:0)
        SIGNAL i(5:0)
        SIGNAL rst
        SIGNAL sum_out(15:0)
        SIGNAL neurons_hidden_out(15:0)
        SIGNAL clk
        SIGNAL en
        SIGNAL image_in(63:0)
        SIGNAL image_i
        SIGNAL weight_i_out(15:0)
        SIGNAL fp16_adder_b_in(15:0)
        SIGNAL image_load
        SIGNAL weight_wen
        PORT Input weight_in(1023:0)
        PORT Output i(5:0)
        PORT Input rst
        PORT Output neurons_hidden_out(15:0)
        PORT Input clk
        PORT Input en
        PORT Input image_in(63:0)
        PORT Output image_i
        PORT Output weight_i_out(15:0)
        PORT Output fp16_adder_b_in(15:0)
        PORT Input image_load
        PORT Input weight_wen
        BEGIN BLOCKDEF weight_Reg
            TIMESTAMP 2025 3 24 21 29 43
            RECTANGLE N 64 -320 464 0 
            RECTANGLE N 464 -300 528 -276 
            LINE N 464 -288 528 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF fp16_adder
            TIMESTAMP 2025 3 24 21 30 10
            RECTANGLE N 64 -320 320 0 
            RECTANGLE N 320 -300 384 -276 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF counter
            TIMESTAMP 2025 3 24 21 34 37
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -32 0 -32 
            LINE N 64 -160 0 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF sum_temp
            TIMESTAMP 2025 3 24 21 34 24
            RECTANGLE N 64 -256 320 0 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
        END BLOCKDEF
        BEGIN BLOCKDEF image_Reg
            TIMESTAMP 2025 3 24 21 44 33
            RECTANGLE N 64 -320 320 0 
            LINE N 320 -288 384 -288 
            RECTANGLE N 0 -300 64 -276 
            LINE N 64 -288 0 -288 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            LINE N 64 -160 0 -160 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF weight_MUX
            TIMESTAMP 2025 3 24 21 51 50
            RECTANGLE N 64 -192 400 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            RECTANGLE N 400 -172 464 -148 
            LINE N 400 -160 464 -160 
        END BLOCKDEF
        BEGIN BLOCK XLXI_2 fp16_adder
            PIN sum(15:0) sum_out(15:0)
            PIN a(15:0) fp16_adder_b_in(15:0)
            PIN b(15:0) neurons_hidden_out(15:0)
            PIN en en
            PIN rst rst
            PIN clk clk
        END BLOCK
        BEGIN BLOCK XLXI_1 weight_Reg
            PIN weight_out(15:0) weight_i_out(15:0)
            PIN weight_in(1023:0) weight_in(1023:0)
            PIN weight_addr(5:0) i(5:0)
            PIN wen weight_wen
            PIN rst rst
            PIN clk clk
        END BLOCK
        BEGIN BLOCK XLXI_4 counter
            PIN rst rst
            PIN i_out(5:0) i(5:0)
            PIN clk clk
            PIN en en
        END BLOCK
        BEGIN BLOCK XLXI_5 sum_temp
            PIN fp16_adder_out(15:0) sum_out(15:0)
            PIN en en
            PIN rst rst
            PIN clk clk
            PIN sum_out(15:0) neurons_hidden_out(15:0)
        END BLOCK
        BEGIN BLOCK XLXI_6 image_Reg
            PIN image_i image_i
            PIN image_in(63:0) image_in(63:0)
            PIN image_addr(5:0) i(5:0)
            PIN wen image_load
            PIN rst rst
            PIN clk clk
        END BLOCK
        BEGIN BLOCK XLXI_7 weight_MUX
            PIN image_i image_i
            PIN weight(15:0) weight_i_out(15:0)
            PIN MUX_out(15:0) fp16_adder_b_in(15:0)
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 3520 2720
        BEGIN INSTANCE XLXI_2 1824 992 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_1 1152 992 R0
        END INSTANCE
        BEGIN BRANCH weight_in(1023:0)
            WIRE 608 704 1152 704
        END BRANCH
        BEGIN BRANCH i(5:0)
            WIRE 928 1216 976 1216
            WIRE 976 1216 976 1472
            WIRE 976 1472 976 1680
            WIRE 976 1680 1216 1680
            WIRE 976 1472 1104 1472
            WIRE 976 768 976 1216
            WIRE 976 768 1152 768
        END BRANCH
        BEGIN INSTANCE XLXI_4 544 1376 R0
        END INSTANCE
        BEGIN INSTANCE XLXI_5 2272 928 R0
        END INSTANCE
        BEGIN BRANCH sum_out(15:0)
            WIRE 2208 704 2272 704
        END BRANCH
        BEGIN BRANCH neurons_hidden_out(15:0)
            WIRE 1744 768 1824 768
            WIRE 1744 768 1744 1296
            WIRE 1744 1296 2832 1296
            WIRE 2656 768 2832 768
            WIRE 2832 768 2832 1296
            WIRE 2832 768 3024 768
        END BRANCH
        BEGIN BRANCH clk
            WIRE 400 960 432 960
            WIRE 432 960 1152 960
            WIRE 432 960 432 1344
            WIRE 432 1344 432 1392
            WIRE 432 1392 1696 1392
            WIRE 1696 1392 2240 1392
            WIRE 432 1392 432 1872
            WIRE 432 1872 1216 1872
            WIRE 432 1344 544 1344
            WIRE 1696 960 1824 960
            WIRE 1696 960 1696 1392
            WIRE 2240 896 2240 1392
            WIRE 2240 896 2272 896
        END BRANCH
        BEGIN BRANCH en
            WIRE 384 1216 512 1216
            WIRE 512 1216 544 1216
            WIRE 512 1104 512 1216
            WIRE 512 1104 1776 1104
            WIRE 1776 1104 2224 1104
            WIRE 1776 832 1776 1104
            WIRE 1776 832 1824 832
            WIRE 2224 768 2224 1104
            WIRE 2224 768 2272 768
        END BRANCH
        BEGIN INSTANCE XLXI_6 1216 1904 R0
        END INSTANCE
        BEGIN BRANCH image_in(63:0)
            WIRE 384 1616 1216 1616
        END BRANCH
        BEGIN INSTANCE XLXI_7 1696 1776 R0
        END INSTANCE
        BEGIN BRANCH image_i
            WIRE 1600 1616 1664 1616
            WIRE 1664 1616 1696 1616
            WIRE 1664 1456 1664 1616
            WIRE 1664 1456 1840 1456
        END BRANCH
        BEGIN BRANCH weight_i_out(15:0)
            WIRE 1632 1056 1760 1056
            WIRE 1632 1056 1632 1680
            WIRE 1632 1680 1696 1680
            WIRE 1680 704 1712 704
            WIRE 1712 704 1760 704
            WIRE 1760 704 1760 1056
            WIRE 1712 224 1712 704
            WIRE 1712 224 1856 224
        END BRANCH
        BEGIN BRANCH fp16_adder_b_in(15:0)
            WIRE 1776 608 1776 704
            WIRE 1776 704 1824 704
            WIRE 1776 608 1824 608
            WIRE 1824 608 2704 608
            WIRE 2704 608 2704 1616
            WIRE 1824 480 1824 608
            WIRE 1824 480 1952 480
            WIRE 2160 1616 2704 1616
        END BRANCH
        BEGIN BRANCH image_load
            WIRE 384 1744 1216 1744
        END BRANCH
        BEGIN BRANCH rst
            WIRE 400 896 464 896
            WIRE 464 896 464 1280
            WIRE 464 1280 544 1280
            WIRE 464 1280 464 1808
            WIRE 464 1808 1216 1808
            WIRE 464 896 1056 896
            WIRE 1056 896 1152 896
            WIRE 1056 896 1056 1248
            WIRE 1056 1248 1728 1248
            WIRE 1728 1248 2256 1248
            WIRE 1728 896 1728 1248
            WIRE 1728 896 1824 896
            WIRE 2256 832 2256 1248
            WIRE 2256 832 2272 832
        END BRANCH
        IOMARKER 608 704 weight_in(1023:0) R180 28
        BEGIN BRANCH weight_wen
            WIRE 400 832 1152 832
        END BRANCH
        IOMARKER 400 832 weight_wen R180 28
        IOMARKER 400 896 rst R180 28
        IOMARKER 400 960 clk R180 28
        IOMARKER 384 1216 en R180 28
        IOMARKER 384 1616 image_in(63:0) R180 28
        IOMARKER 384 1744 image_load R180 28
        IOMARKER 3024 768 neurons_hidden_out(15:0) R0 28
        IOMARKER 1856 224 weight_i_out(15:0) R0 28
        IOMARKER 1104 1472 i(5:0) R0 28
        IOMARKER 1840 1456 image_i R0 28
        IOMARKER 1952 480 fp16_adder_b_in(15:0) R0 28
    END SHEET
END SCHEMATIC
