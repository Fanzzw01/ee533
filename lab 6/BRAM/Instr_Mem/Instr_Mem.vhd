--------------------------------------------------------------------------------
--     This file is owned and controlled by Xilinx and must be used           --
--     solely for design, simulation, implementation and creation of          --
--     design files limited to Xilinx devices or technologies. Use            --
--     with non-Xilinx devices or technologies is expressly prohibited        --
--     and immediately terminates your license.                               --
--                                                                            --
--     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"          --
--     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                --
--     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION        --
--     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION            --
--     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS              --
--     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                --
--     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE       --
--     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY               --
--     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                --
--     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR         --
--     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF        --
--     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS        --
--     FOR A PARTICULAR PURPOSE.                                              --
--                                                                            --
--     Xilinx products are not intended for use in life support               --
--     appliances, devices, or systems. Use in such applications are          --
--     expressly prohibited.                                                  --
--                                                                            --
--     (c) Copyright 1995-2007 Xilinx, Inc.                                   --
--     All rights reserved.                                                   --
--------------------------------------------------------------------------------
-- You must compile the wrapper file Instr_Mem.vhd when simulating
-- the core, Instr_Mem. When compiling the wrapper file, be sure to
-- reference the XilinxCoreLib VHDL simulation library. For detailed
-- instructions, please refer to the "CORE Generator Help".

-- The synthesis directives "translate_off/translate_on" specified
-- below are supported by Xilinx, Mentor Graphics and Synplicity
-- synthesis tools. Ensure they are correct for your synthesis tool(s).

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
-- synthesis translate_off
Library XilinxCoreLib;
-- synthesis translate_on
ENTITY Instr_Mem IS
	port (
	addr: IN std_logic_VECTOR(8 downto 0);
	clk: IN std_logic;
	dout: OUT std_logic_VECTOR(31 downto 0));
END Instr_Mem;

ARCHITECTURE Instr_Mem_a OF Instr_Mem IS
-- synthesis translate_off
component wrapped_Instr_Mem
	port (
	addr: IN std_logic_VECTOR(8 downto 0);
	clk: IN std_logic;
	dout: OUT std_logic_VECTOR(31 downto 0));
end component;

-- Configuration specification 
	for all : wrapped_Instr_Mem use entity XilinxCoreLib.blkmemsp_v6_2(behavioral)
		generic map(
			c_sinit_value => "0",
			c_has_en => 0,
			c_reg_inputs => 0,
			c_yclk_is_rising => 1,
			c_ysinit_is_high => 1,
			c_ywe_is_high => 1,
			c_yprimitive_type => "16kx1",
			c_ytop_addr => "1024",
			c_yhierarchy => "hierarchy1",
			c_has_limit_data_pitch => 0,
			c_has_rdy => 0,
			c_write_mode => 0,
			c_width => 32,
			c_yuse_single_primitive => 0,
			c_has_nd => 0,
			c_has_we => 0,
			c_enable_rlocs => 0,
			c_has_rfd => 0,
			c_has_din => 0,
			c_ybottom_addr => "0",
			c_pipe_stages => 0,
			c_yen_is_high => 1,
			c_depth => 512,
			c_has_default_data => 0,
			c_limit_data_pitch => 18,
			c_has_sinit => 0,
			c_mem_init_file => "Instr_Mem.mif",
			c_yydisable_warnings => 1,
			c_default_data => "0",
			c_ymake_bmm => 0,
			c_addr_width => 9);
-- synthesis translate_on
BEGIN
-- synthesis translate_off
U0 : wrapped_Instr_Mem
		port map (
			addr => addr,
			clk => clk,
			dout => dout);
-- synthesis translate_on

END Instr_Mem_a;

