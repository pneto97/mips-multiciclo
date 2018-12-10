-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "12/10/2018 19:12:55"

-- 
-- Device: Altera EP2C70F896C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Multiciclo IS
    PORT (
	clk : IN std_logic;
	clk_rom : IN std_logic;
	rst : IN std_logic;
	debug : IN std_logic_vector(1 DOWNTO 0);
	data : OUT std_logic_vector(31 DOWNTO 0)
	);
END Multiciclo;

-- Design Ports Information
-- data[0]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[3]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[4]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[5]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[6]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[7]	=>  Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[8]	=>  Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[9]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[10]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[11]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[12]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[13]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[14]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[15]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[16]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[17]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[18]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[19]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[20]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[21]	=>  Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[22]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[23]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[24]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[25]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[26]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[27]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[28]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[29]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[30]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- data[31]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- debug[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- debug[0]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_rom	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Multiciclo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clk_rom : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_debug : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_data : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_rom~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|tmp[1]~2_combout\ : std_logic;
SIGNAL \alu|tmp[7]~14_combout\ : std_logic;
SIGNAL \alu|tmp[8]~16_combout\ : std_logic;
SIGNAL \alu|tmp[10]~20_combout\ : std_logic;
SIGNAL \alu|tmp[13]~26_combout\ : std_logic;
SIGNAL \alu|tmp[19]~38_combout\ : std_logic;
SIGNAL \alu|tmp[21]~42_combout\ : std_logic;
SIGNAL \alu|tmp[23]~46_combout\ : std_logic;
SIGNAL \alu|tmp[29]~58_combout\ : std_logic;
SIGNAL \alu|Add1~10_combout\ : std_logic;
SIGNAL \alu|Add1~26_combout\ : std_logic;
SIGNAL \pc|sr_out[16]~3_combout\ : std_logic;
SIGNAL \pc|sr_out[24]~7_combout\ : std_logic;
SIGNAL \pc|sr_out[17]~14_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \mux_shift|m_out[16]~5_combout\ : std_logic;
SIGNAL \mux_shift|m_out[29]~11_combout\ : std_logic;
SIGNAL \mux_shift|m_out[28]~13_combout\ : std_logic;
SIGNAL \mux_shift|m_out[26]~19_combout\ : std_logic;
SIGNAL \mux_shift|m_out[24]~25_combout\ : std_logic;
SIGNAL \mux_shift|m_out[23]~29_combout\ : std_logic;
SIGNAL \mux_shift|m_out[22]~31_combout\ : std_logic;
SIGNAL \mux_shift|m_out[21]~35_combout\ : std_logic;
SIGNAL \mux_shift|m_out[20]~38_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \mux_shift|m_out[14]~52_combout\ : std_logic;
SIGNAL \mux_shift|m_out[13]~56_combout\ : std_logic;
SIGNAL \mux_shift|m_out[12]~59_combout\ : std_logic;
SIGNAL \mux_shift|m_out[11]~61_combout\ : std_logic;
SIGNAL \mux_shift|m_out[10]~64_combout\ : std_logic;
SIGNAL \mux_shift|m_out[8]~71_combout\ : std_logic;
SIGNAL \mux_shift|m_out[7]~74_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~42_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~43_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~44_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[5]~11_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~46_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[14]~19_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[10]~27_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~53_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.logic_imm_st~regout\ : std_logic;
SIGNAL \mux_ulaB|m_out[20]~47_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \alu|Mux31~7_combout\ : std_logic;
SIGNAL \alu|Mux31~8_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~71_combout\ : std_logic;
SIGNAL \alu|Mux30~10_combout\ : std_logic;
SIGNAL \alu|Mux30~13_combout\ : std_logic;
SIGNAL \alu|Mux29~17_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~83_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~84_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~85_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~86_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~84_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~88_combout\ : std_logic;
SIGNAL \alu|Mux27~2_combout\ : std_logic;
SIGNAL \alu|Mux27~10_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~90_combout\ : std_logic;
SIGNAL \alu|Mux26~6_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \alu|Mux25~0_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~98_combout\ : std_logic;
SIGNAL \alu|Mux25~6_combout\ : std_logic;
SIGNAL \alu|a32~16_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~102_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~103_combout\ : std_logic;
SIGNAL \alu|Mux24~6_combout\ : std_logic;
SIGNAL \alu|Mux23~6_combout\ : std_logic;
SIGNAL \alu|a32~18_combout\ : std_logic;
SIGNAL \alu|Mux22~0_combout\ : std_logic;
SIGNAL \alu|Mux22~9_combout\ : std_logic;
SIGNAL \alu|Mux21~0_combout\ : std_logic;
SIGNAL \alu|Mux21~5_combout\ : std_logic;
SIGNAL \alu|Mux20~0_combout\ : std_logic;
SIGNAL \alu|Mux20~1_combout\ : std_logic;
SIGNAL \alu|a32~20_combout\ : std_logic;
SIGNAL \alu|Mux20~2_combout\ : std_logic;
SIGNAL \alu|Mux19~0_combout\ : std_logic;
SIGNAL \alu|Mux19~8_combout\ : std_logic;
SIGNAL \alu|Mux18~0_combout\ : std_logic;
SIGNAL \alu|a32~22_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~110_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~111_combout\ : std_logic;
SIGNAL \alu|Mux16~2_combout\ : std_logic;
SIGNAL \alu|Mux16~3_combout\ : std_logic;
SIGNAL \alu|Mux16~4_combout\ : std_logic;
SIGNAL \alu|Mux16~6_combout\ : std_logic;
SIGNAL \alu|Mux15~1_combout\ : std_logic;
SIGNAL \alu|Mux15~2_combout\ : std_logic;
SIGNAL \alu|Mux14~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \alu|Mux14~7_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \alu|Mux13~4_combout\ : std_logic;
SIGNAL \alu|Mux12~4_combout\ : std_logic;
SIGNAL \alu|Mux11~0_combout\ : std_logic;
SIGNAL \alu|Mux11~4_combout\ : std_logic;
SIGNAL \alu|Mux10~4_combout\ : std_logic;
SIGNAL \alu|Mux9~1_combout\ : std_logic;
SIGNAL \alu|Mux8~14_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \alu|Mux7~2_combout\ : std_logic;
SIGNAL \alu|Mux6~0_combout\ : std_logic;
SIGNAL \alu|Mux6~1_combout\ : std_logic;
SIGNAL \alu|Mux6~7_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~140_combout\ : std_logic;
SIGNAL \alu|Mux4~5_combout\ : std_logic;
SIGNAL \alu|Mux3~9_combout\ : std_logic;
SIGNAL \alu|Mux2~7_combout\ : std_logic;
SIGNAL \alu|Mux1~3_combout\ : std_logic;
SIGNAL \alu|Mux1~4_combout\ : std_logic;
SIGNAL \alu|Mux1~5_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~151_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~152_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~153_combout\ : std_logic;
SIGNAL \alu|Mux0~5_combout\ : std_logic;
SIGNAL \alu|Mux0~6_combout\ : std_logic;
SIGNAL \alu|Mux0~7_combout\ : std_logic;
SIGNAL \ctr_mips|Mux5~1_combout\ : std_logic;
SIGNAL \alu|Equal0~5_combout\ : std_logic;
SIGNAL \alu|Equal0~6_combout\ : std_logic;
SIGNAL \bcoreg|regA[28]~3_combout\ : std_logic;
SIGNAL \bcoreg|regA[26]~5_combout\ : std_logic;
SIGNAL \bcoreg|regA[24]~7_combout\ : std_logic;
SIGNAL \bcoreg|regA[22]~9_combout\ : std_logic;
SIGNAL \bcoreg|regA[14]~16_combout\ : std_logic;
SIGNAL \bcoreg|regA[11]~19_combout\ : std_logic;
SIGNAL \bcoreg|regA[10]~20_combout\ : std_logic;
SIGNAL \bcoreg|regA[6]~24_combout\ : std_logic;
SIGNAL \bcoreg|regA[5]~25_combout\ : std_logic;
SIGNAL \bcoreg|breg32~42_combout\ : std_logic;
SIGNAL \ctr_mips|WideNor0~1_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.logic_imm_st~0_combout\ : std_logic;
SIGNAL \bcoreg|regA[31]~31_combout\ : std_logic;
SIGNAL \alu|Mux30~15_combout\ : std_logic;
SIGNAL \alu|Mux30~16_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~104_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~116_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~118_combout\ : std_logic;
SIGNAL \alu|Mux14~12_combout\ : std_logic;
SIGNAL \alu|a32~24_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~174_combout\ : std_logic;
SIGNAL \alu|a32~27_combout\ : std_logic;
SIGNAL \alu|Mux1~13_combout\ : std_logic;
SIGNAL \alu|a32~28_combout\ : std_logic;
SIGNAL \alu|Mux0~9_combout\ : std_logic;
SIGNAL \alu|Mux0~10_combout\ : std_logic;
SIGNAL \rdm|sr_out[9]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[36]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[13]~feeder_combout\ : std_logic;
SIGNAL \clk_rom~combout\ : std_logic;
SIGNAL \clk_rom~clkctrl_outclk\ : std_logic;
SIGNAL \ctr_mips|pstate.decode_st~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \ctr_mips|pstate.decode_st~regout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \ctr_mips|WideNor0~0_combout\ : std_logic;
SIGNAL \pc|sr_out[6]~24_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[31]~31_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.rtype_ex_st~3_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.rtype_ex_st~regout\ : std_logic;
SIGNAL \actr|alu_ctr~24_combout\ : std_logic;
SIGNAL \mux_ulaB|Equal2~2_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.writereg_st~regout\ : std_logic;
SIGNAL \ctr_mips|nstate.arith_imm_st~1_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.arith_imm_st~2_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.arith_imm_st~regout\ : std_logic;
SIGNAL \ctr_mips|WideOr1~0_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0_bypass[0]~feeder_combout\ : std_logic;
SIGNAL \rdm|sr_out[20]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[20]~11_combout\ : std_logic;
SIGNAL \bcoreg|regB[20]~27_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[2]~30_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[3]~29_combout\ : std_logic;
SIGNAL \rdm|sr_out[4]~feeder_combout\ : std_logic;
SIGNAL \mux_shift|m_out[0]~93_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[16]~34_combout\ : std_logic;
SIGNAL \rdm|sr_out[16]~feeder_combout\ : std_logic;
SIGNAL \actr|alu_ctr[0]~10_combout\ : std_logic;
SIGNAL \actr|alu_ctr[0]~32_combout\ : std_logic;
SIGNAL \actr|alu_ctr~25_combout\ : std_logic;
SIGNAL \pc|sr_out[26]~5_combout\ : std_logic;
SIGNAL \pc_wr_s~0_combout\ : std_logic;
SIGNAL \ctr_mips|Equal0~0_combout\ : std_logic;
SIGNAL \alu|Equal0~11_combout\ : std_logic;
SIGNAL \pc|sr_out~33_combout\ : std_logic;
SIGNAL \pc|sr_out[31]~28_combout\ : std_logic;
SIGNAL \ctr_mips|WideOr0~combout\ : std_logic;
SIGNAL \actr|alu_ctr~30_combout\ : std_logic;
SIGNAL \mux_shift|m_out[31]~92_combout\ : std_logic;
SIGNAL \alu|Mux0~0_combout\ : std_logic;
SIGNAL \alu|Mux0~3_combout\ : std_logic;
SIGNAL \alu|Mux0~2_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[2]~3_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[31]~36_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[30]~37_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[29]~38_combout\ : std_logic;
SIGNAL \actr|alu_ctr[2]~19_combout\ : std_logic;
SIGNAL \actr|alu_ctr[2]~33_combout\ : std_logic;
SIGNAL \alu|Mux3~18_combout\ : std_logic;
SIGNAL \alu|Mux2~5_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[7]~23_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[9]~21_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[10]~28_combout\ : std_logic;
SIGNAL \pc|sr_out[10]~20_combout\ : std_logic;
SIGNAL \mux_shift|m_out[10]~65_combout\ : std_logic;
SIGNAL \mux_shift|m_out[10]~66_combout\ : std_logic;
SIGNAL \alu|a32~19_combout\ : std_logic;
SIGNAL \alu|Mux29~14_combout\ : std_logic;
SIGNAL \ir|sr_out[21]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32~38_combout\ : std_logic;
SIGNAL \rdm|sr_out[27]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[27]~4_combout\ : std_logic;
SIGNAL \bcoreg|regB[27]~16_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[17]~32_combout\ : std_logic;
SIGNAL \mux_shift|m_out[0]~83_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~76_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~110_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~99_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~64_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~106_combout\ : std_logic;
SIGNAL \alu|Mux17~8_combout\ : std_logic;
SIGNAL \alu|Mux17~9_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[14]~20_combout\ : std_logic;
SIGNAL \mux_shift|m_out[14]~53_combout\ : std_logic;
SIGNAL \mux_shift|m_out[14]~54_combout\ : std_logic;
SIGNAL \alu|a32~23_combout\ : std_logic;
SIGNAL \alu|Mux17~5_combout\ : std_logic;
SIGNAL \alu|Mux29~5_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[26]~feeder_combout\ : std_logic;
SIGNAL \rdm|sr_out[17]~feeder_combout\ : std_logic;
SIGNAL \rdm|sr_out[31]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[31]~31_combout\ : std_logic;
SIGNAL \mux_shift|m_out[18]~44_combout\ : std_logic;
SIGNAL \mux_shift|m_out[19]~41_combout\ : std_logic;
SIGNAL \rdm|sr_out[21]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[21]~10_combout\ : std_logic;
SIGNAL \rdm|sr_out[24]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[24]~7_combout\ : std_logic;
SIGNAL \bcoreg|Equal0~0_combout\ : std_logic;
SIGNAL \bcoreg|Equal0~1_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[28]~39_combout\ : std_logic;
SIGNAL \pc|sr_out~30_combout\ : std_logic;
SIGNAL \mux_shift|m_out[28]~14_combout\ : std_logic;
SIGNAL \mux_shift|m_out[28]~15_combout\ : std_logic;
SIGNAL \alu|Mux3~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[6]~9_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[6]~10_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[8]~29_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[8]~30_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~162_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[9]~25_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[9]~26_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[11]~23_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[11]~24_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[12]~21_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[12]~22_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~166_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \mux_ulaB|Equal2~1_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[0]~1_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[1]~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[2]~5_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[2]~6_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~155_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~142_combout\ : std_logic;
SIGNAL \alu|Mux29~21_combout\ : std_logic;
SIGNAL \alu|Mux3~6_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[15]~15_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[15]~16_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~170_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~171_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \alu|tmp[30]~60_combout\ : std_logic;
SIGNAL \alu|Mux1~11_combout\ : std_logic;
SIGNAL \alu|Mux1~8_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[4]~26_combout\ : std_logic;
SIGNAL \pc|sr_out[4]~2_combout\ : std_logic;
SIGNAL \mux_shift|m_out[4]~78_combout\ : std_logic;
SIGNAL \mux_shift|m_out[4]~79_combout\ : std_logic;
SIGNAL \mux_shift|m_out[5]~77_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[20]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[9]~21_combout\ : std_logic;
SIGNAL \mux_shift|m_out[9]~67_combout\ : std_logic;
SIGNAL \mux_shift|m_out[9]~68_combout\ : std_logic;
SIGNAL \mux_shift|m_out[9]~69_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[7]~23_combout\ : std_logic;
SIGNAL \mux_shift|m_out[7]~73_combout\ : std_logic;
SIGNAL \mux_shift|m_out[7]~75_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \bcoreg|regA[8]~22_combout\ : std_logic;
SIGNAL \mux_shift|m_out[8]~70_combout\ : std_logic;
SIGNAL \mux_shift|m_out[8]~72_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \bcoreg|regA[12]~18_combout\ : std_logic;
SIGNAL \mux_shift|m_out[12]~58_combout\ : std_logic;
SIGNAL \mux_shift|m_out[12]~60_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \bcoreg|regA[13]~17_combout\ : std_logic;
SIGNAL \mux_shift|m_out[13]~55_combout\ : std_logic;
SIGNAL \mux_shift|m_out[13]~57_combout\ : std_logic;
SIGNAL \pc|sr_out[11]~19_combout\ : std_logic;
SIGNAL \mux_shift|m_out[11]~62_combout\ : std_logic;
SIGNAL \mux_shift|m_out[11]~63_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~58_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~143_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \bcoreg|regB[29]~21_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~146_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~147_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~139_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~173_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~148_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~149_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~157_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[7]~7_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[7]~8_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~164_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~168_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~145_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~150_combout\ : std_logic;
SIGNAL \alu|Mux1~9_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~108_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~70_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~71_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~119_combout\ : std_logic;
SIGNAL \alu|Mux1~6_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \bcoreg|regA[30]~1_combout\ : std_logic;
SIGNAL \mux_shift|m_out[30]~7_combout\ : std_logic;
SIGNAL \pc|sr_out~27_combout\ : std_logic;
SIGNAL \mux_shift|m_out[30]~8_combout\ : std_logic;
SIGNAL \mux_shift|m_out[30]~9_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[27]~40_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[25]~42_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[24]~43_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[23]~44_combout\ : std_logic;
SIGNAL \pc|sr_out[22]~9_combout\ : std_logic;
SIGNAL \mux_shift|m_out[22]~32_combout\ : std_logic;
SIGNAL \mux_shift|m_out[22]~33_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \bcoreg|regA[21]~10_combout\ : std_logic;
SIGNAL \mux_shift|m_out[21]~34_combout\ : std_logic;
SIGNAL \mux_shift|m_out[21]~36_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \bcoreg|regA[20]~11_combout\ : std_logic;
SIGNAL \mux_shift|m_out[20]~37_combout\ : std_logic;
SIGNAL \mux_shift|m_out[20]~39_combout\ : std_logic;
SIGNAL \mux_shift|m_out[17]~47_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[28]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regA[17]~14_combout\ : std_logic;
SIGNAL \mux_shift|m_out[17]~46_combout\ : std_logic;
SIGNAL \mux_shift|m_out[17]~48_combout\ : std_logic;
SIGNAL \mux_shift|m_out[6]~76_combout\ : std_logic;
SIGNAL \alu|Add1~1\ : std_logic;
SIGNAL \alu|Add1~3\ : std_logic;
SIGNAL \alu|Add1~5\ : std_logic;
SIGNAL \alu|Add1~7\ : std_logic;
SIGNAL \alu|Add1~9\ : std_logic;
SIGNAL \alu|Add1~11\ : std_logic;
SIGNAL \alu|Add1~13\ : std_logic;
SIGNAL \alu|Add1~15\ : std_logic;
SIGNAL \alu|Add1~17\ : std_logic;
SIGNAL \alu|Add1~19\ : std_logic;
SIGNAL \alu|Add1~21\ : std_logic;
SIGNAL \alu|Add1~23\ : std_logic;
SIGNAL \alu|Add1~25\ : std_logic;
SIGNAL \alu|Add1~27\ : std_logic;
SIGNAL \alu|Add1~29\ : std_logic;
SIGNAL \alu|Add1~31\ : std_logic;
SIGNAL \alu|Add1~33\ : std_logic;
SIGNAL \alu|Add1~35\ : std_logic;
SIGNAL \alu|Add1~37\ : std_logic;
SIGNAL \alu|Add1~39\ : std_logic;
SIGNAL \alu|Add1~41\ : std_logic;
SIGNAL \alu|Add1~43\ : std_logic;
SIGNAL \alu|Add1~45\ : std_logic;
SIGNAL \alu|Add1~47\ : std_logic;
SIGNAL \alu|Add1~49\ : std_logic;
SIGNAL \alu|Add1~51\ : std_logic;
SIGNAL \alu|Add1~53\ : std_logic;
SIGNAL \alu|Add1~55\ : std_logic;
SIGNAL \alu|Add1~57\ : std_logic;
SIGNAL \alu|Add1~59\ : std_logic;
SIGNAL \alu|Add1~60_combout\ : std_logic;
SIGNAL \alu|Mux1~7_combout\ : std_logic;
SIGNAL \alu|Mux1~10_combout\ : std_logic;
SIGNAL \alu|Mux1~12_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[30]~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \bcoreg|regB[17]~28_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \alu|Mux3~7_combout\ : std_logic;
SIGNAL \alu|Mux3~8_combout\ : std_logic;
SIGNAL \alu|Mux3~11_combout\ : std_logic;
SIGNAL \alu|Mux3~17_combout\ : std_logic;
SIGNAL \alu|Mux3~4_combout\ : std_logic;
SIGNAL \alu|Mux3~5_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~49_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \bcoreg|regB[30]~22_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~50_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~108_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~70_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~109_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~132_combout\ : std_logic;
SIGNAL \alu|Mux8~6_combout\ : std_logic;
SIGNAL \alu|Mux3~12_combout\ : std_logic;
SIGNAL \alu|Add1~56_combout\ : std_logic;
SIGNAL \alu|Mux3~13_combout\ : std_logic;
SIGNAL \alu|Mux4~12_combout\ : std_logic;
SIGNAL \alu|Mux4~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~141_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~169_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \alu|Mux4~3_combout\ : std_logic;
SIGNAL \alu|Mux4~4_combout\ : std_logic;
SIGNAL \alu|Mux4~10_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~78_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~51_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~112_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~107_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~131_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[26]~41_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[22]~45_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[19]~48_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[18]~49_combout\ : std_logic;
SIGNAL \alu|tmp[14]~29\ : std_logic;
SIGNAL \alu|tmp[15]~31\ : std_logic;
SIGNAL \alu|tmp[16]~33\ : std_logic;
SIGNAL \alu|tmp[17]~35\ : std_logic;
SIGNAL \alu|tmp[18]~37\ : std_logic;
SIGNAL \alu|tmp[19]~39\ : std_logic;
SIGNAL \alu|tmp[20]~41\ : std_logic;
SIGNAL \alu|tmp[21]~43\ : std_logic;
SIGNAL \alu|tmp[22]~45\ : std_logic;
SIGNAL \alu|tmp[23]~47\ : std_logic;
SIGNAL \alu|tmp[24]~49\ : std_logic;
SIGNAL \alu|tmp[25]~51\ : std_logic;
SIGNAL \alu|tmp[26]~53\ : std_logic;
SIGNAL \alu|tmp[27]~54_combout\ : std_logic;
SIGNAL \alu|Add1~54_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~56_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~79_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~80_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~98_combout\ : std_logic;
SIGNAL \alu|Mux4~6_combout\ : std_logic;
SIGNAL \alu|Mux4~7_combout\ : std_logic;
SIGNAL \alu|Mux4~8_combout\ : std_logic;
SIGNAL \alu|Mux4~9_combout\ : std_logic;
SIGNAL \alu|Mux4~11_combout\ : std_logic;
SIGNAL \alu|Mux4~combout\ : std_logic;
SIGNAL \pc|sr_out[27]~4_combout\ : std_logic;
SIGNAL \mux_shift|m_out[27]~17_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \bcoreg|regA[27]~4_combout\ : std_logic;
SIGNAL \mux_shift|m_out[27]~16_combout\ : std_logic;
SIGNAL \mux_shift|m_out[27]~18_combout\ : std_logic;
SIGNAL \alu|tmp[27]~55\ : std_logic;
SIGNAL \alu|tmp[28]~56_combout\ : std_logic;
SIGNAL \alu|Mux3~14_combout\ : std_logic;
SIGNAL \alu|Mux3~15_combout\ : std_logic;
SIGNAL \alu|Mux3~16_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[28]~3_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \bcoreg|regA[25]~6_combout\ : std_logic;
SIGNAL \mux_shift|m_out[25]~22_combout\ : std_logic;
SIGNAL \pc|sr_out[25]~6_combout\ : std_logic;
SIGNAL \mux_shift|m_out[25]~23_combout\ : std_logic;
SIGNAL \mux_shift|m_out[25]~24_combout\ : std_logic;
SIGNAL \alu|a32~25_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~105_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~129_combout\ : std_logic;
SIGNAL \alu|Mux6~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~47_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~50_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~57_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~58_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~103_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~59_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~60_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~101_combout\ : std_logic;
SIGNAL \alu|Add1~50_combout\ : std_logic;
SIGNAL \alu|Mux6~3_combout\ : std_logic;
SIGNAL \alu|tmp[25]~50_combout\ : std_logic;
SIGNAL \alu|Mux6~4_combout\ : std_logic;
SIGNAL \alu|Mux6~5_combout\ : std_logic;
SIGNAL \alu|Mux6~6_combout\ : std_logic;
SIGNAL \alu|Mux6~8_combout\ : std_logic;
SIGNAL \alu|Mux6~combout\ : std_logic;
SIGNAL \rdm|sr_out[25]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[25]~6_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \bcoreg|regA[19]~12_combout\ : std_logic;
SIGNAL \mux_shift|m_out[19]~40_combout\ : std_logic;
SIGNAL \mux_shift|m_out[19]~42_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \alu|Mux8~8_combout\ : std_logic;
SIGNAL \alu|Mux8~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~62_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~66_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~115_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~81_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~67_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~113_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~48_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~114_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~82_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~81_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~82_combout\ : std_logic;
SIGNAL \alu|Add1~38_combout\ : std_logic;
SIGNAL \alu|Mux12~5_combout\ : std_logic;
SIGNAL \alu|Mux12~6_combout\ : std_logic;
SIGNAL \alu|Mux12~7_combout\ : std_logic;
SIGNAL \alu|Mux12~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~161_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~165_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[3]~2_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[3]~4_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \alu|Mux8~20_combout\ : std_logic;
SIGNAL \alu|Mux12~1_combout\ : std_logic;
SIGNAL \alu|Mux12~2_combout\ : std_logic;
SIGNAL \alu|Mux12~3_combout\ : std_logic;
SIGNAL \alu|Mux12~8_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[19]~12_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \bcoreg|regA[18]~13_combout\ : std_logic;
SIGNAL \mux_shift|m_out[18]~43_combout\ : std_logic;
SIGNAL \mux_shift|m_out[18]~45_combout\ : std_logic;
SIGNAL \alu|Mux13~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~154_combout\ : std_logic;
SIGNAL \alu|Mux8~9_combout\ : std_logic;
SIGNAL \alu|Mux13~1_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \alu|Mux13~2_combout\ : std_logic;
SIGNAL \alu|Mux13~3_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~63_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~107_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~77_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~78_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~124_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~63_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~68_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~69_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~72_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~73_combout\ : std_logic;
SIGNAL \alu|Add1~36_combout\ : std_logic;
SIGNAL \alu|Mux13~5_combout\ : std_logic;
SIGNAL \alu|tmp[18]~36_combout\ : std_logic;
SIGNAL \alu|Mux13~6_combout\ : std_logic;
SIGNAL \alu|Mux13~7_combout\ : std_logic;
SIGNAL \alu|Mux13~8_combout\ : std_logic;
SIGNAL \rdm|sr_out[18]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[18]~13_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \bcoreg|regB[31]~20_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~135_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~118_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~136_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~67_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~134_combout\ : std_logic;
SIGNAL \alu|Add1~34_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~61_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~64_combout\ : std_logic;
SIGNAL \alu|Mux14~3_combout\ : std_logic;
SIGNAL \alu|tmp[17]~34_combout\ : std_logic;
SIGNAL \alu|Mux14~4_combout\ : std_logic;
SIGNAL \alu|Mux14~5_combout\ : std_logic;
SIGNAL \alu|Mux14~6_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~172_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~167_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~163_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \alu|Mux8~19_combout\ : std_logic;
SIGNAL \alu|Mux14~8_combout\ : std_logic;
SIGNAL \alu|Mux14~9_combout\ : std_logic;
SIGNAL \alu|Mux14~11_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[17]~14_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \bcoreg|regA[15]~15_combout\ : std_logic;
SIGNAL \mux_shift|m_out[15]~49_combout\ : std_logic;
SIGNAL \mux_shift|m_out[15]~50_combout\ : std_logic;
SIGNAL \mux_shift|m_out[15]~51_combout\ : std_logic;
SIGNAL \alu|tmp[15]~30_combout\ : std_logic;
SIGNAL \alu|Mux16~9_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~160_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \alu|Mux16~11_combout\ : std_logic;
SIGNAL \alu|Mux16~12_combout\ : std_logic;
SIGNAL \alu|Mux1~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~100_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~113_combout\ : std_logic;
SIGNAL \alu|Mux16~1_combout\ : std_logic;
SIGNAL \alu|Add1~30_combout\ : std_logic;
SIGNAL \alu|Mux16~5_combout\ : std_logic;
SIGNAL \alu|Mux16~7_combout\ : std_logic;
SIGNAL \alu|Mux16~8_combout\ : std_logic;
SIGNAL \alu|Mux16~10_combout\ : std_logic;
SIGNAL \rdm|sr_out[15]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[15]~15_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \bcoreg|regB[15]~8_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[13]~17_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[13]~18_combout\ : std_logic;
SIGNAL \alu|tmp[0]~1\ : std_logic;
SIGNAL \alu|tmp[1]~3\ : std_logic;
SIGNAL \alu|tmp[2]~5\ : std_logic;
SIGNAL \alu|tmp[3]~7\ : std_logic;
SIGNAL \alu|tmp[4]~9\ : std_logic;
SIGNAL \alu|tmp[5]~11\ : std_logic;
SIGNAL \alu|tmp[6]~13\ : std_logic;
SIGNAL \alu|tmp[7]~15\ : std_logic;
SIGNAL \alu|tmp[8]~17\ : std_logic;
SIGNAL \alu|tmp[9]~19\ : std_logic;
SIGNAL \alu|tmp[10]~21\ : std_logic;
SIGNAL \alu|tmp[11]~23\ : std_logic;
SIGNAL \alu|tmp[12]~25\ : std_logic;
SIGNAL \alu|tmp[13]~27\ : std_logic;
SIGNAL \alu|tmp[14]~28_combout\ : std_logic;
SIGNAL \alu|Mux17~0_combout\ : std_logic;
SIGNAL \alu|Add1~28_combout\ : std_logic;
SIGNAL \alu|Mux17~1_combout\ : std_logic;
SIGNAL \alu|Mux17~2_combout\ : std_logic;
SIGNAL \alu|Mux16~0_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~112_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~133_combout\ : std_logic;
SIGNAL \alu|Mux17~3_combout\ : std_logic;
SIGNAL \alu|Mux17~4_combout\ : std_logic;
SIGNAL \alu|Mux17~6_combout\ : std_logic;
SIGNAL \alu|Mux17~7_combout\ : std_logic;
SIGNAL \alu|Mux17~10_combout\ : std_logic;
SIGNAL \rdm|sr_out[14]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[14]~16_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \bcoreg|regB[28]~23_combout\ : std_logic;
SIGNAL \rgB|sr_out[28]~feeder_combout\ : std_logic;
SIGNAL \ir|sr_out[25]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32~40_combout\ : std_logic;
SIGNAL \bcoreg|breg32~39_combout\ : std_logic;
SIGNAL \bcoreg|breg32~41_combout\ : std_logic;
SIGNAL \bcoreg|regA[0]~27_combout\ : std_logic;
SIGNAL \mux_shift|m_out[0]~80_combout\ : std_logic;
SIGNAL \mux_shift|m_out[0]~81_combout\ : std_logic;
SIGNAL \mux_shift|m_out[0]~82_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~65_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~105_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~75_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~76_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~106_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~130_combout\ : std_logic;
SIGNAL \alu|Mux29~6_combout\ : std_logic;
SIGNAL \alu|Mux29~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~97_combout\ : std_logic;
SIGNAL \alu|Add1~20_combout\ : std_logic;
SIGNAL \alu|Mux21~1_combout\ : std_logic;
SIGNAL \alu|Mux21~2_combout\ : std_logic;
SIGNAL \alu|Mux21~3_combout\ : std_logic;
SIGNAL \alu|Mux21~4_combout\ : std_logic;
SIGNAL \alu|Mux21~6_combout\ : std_logic;
SIGNAL \alu|Mux21~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~77_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~54_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~111_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~79_combout\ : std_logic;
SIGNAL \alu|Mux21~8_combout\ : std_logic;
SIGNAL \alu|Mux21~9_combout\ : std_logic;
SIGNAL \alu|Mux21~10_combout\ : std_logic;
SIGNAL \rdm|sr_out[10]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[10]~20_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[25]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[14]~10_combout\ : std_logic;
SIGNAL \mux_shift|m_out[1]~94_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~156_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~144_combout\ : std_logic;
SIGNAL \alu|Mux2~12_combout\ : std_logic;
SIGNAL \alu|Mux2~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \alu|Mux2~3_combout\ : std_logic;
SIGNAL \alu|Mux2~4_combout\ : std_logic;
SIGNAL \alu|Mux2~6_combout\ : std_logic;
SIGNAL \alu|Add1~58_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~100_combout\ : std_logic;
SIGNAL \alu|Mux2~8_combout\ : std_logic;
SIGNAL \alu|Mux2~9_combout\ : std_logic;
SIGNAL \alu|Mux2~10_combout\ : std_logic;
SIGNAL \alu|Mux2~11_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[29]~2_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \bcoreg|regA[29]~2_combout\ : std_logic;
SIGNAL \mux_shift|m_out[29]~10_combout\ : std_logic;
SIGNAL \mux_shift|m_out[29]~12_combout\ : std_logic;
SIGNAL \alu|tmp[28]~57\ : std_logic;
SIGNAL \alu|tmp[29]~59\ : std_logic;
SIGNAL \alu|tmp[30]~61\ : std_logic;
SIGNAL \alu|tmp[31]~62_combout\ : std_logic;
SIGNAL \alu|Add1~61\ : std_logic;
SIGNAL \alu|Add1~62_combout\ : std_logic;
SIGNAL \alu|Mux0~1_combout\ : std_logic;
SIGNAL \alu|Mux0~4_combout\ : std_logic;
SIGNAL \alu|Mux0~8_combout\ : std_logic;
SIGNAL \alu|Equal0~1_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~46_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~45_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~116_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~43_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~115_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~47_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~48_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~117_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~51_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~52_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~61_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~49_combout\ : std_logic;
SIGNAL \alu|Mux31~2_combout\ : std_logic;
SIGNAL \alu|Mux31~10_combout\ : std_logic;
SIGNAL \alu|Add1~0_combout\ : std_logic;
SIGNAL \alu|Mux31~3_combout\ : std_logic;
SIGNAL \alu|Mux31~4_combout\ : std_logic;
SIGNAL \alu|tmp[0]~0_combout\ : std_logic;
SIGNAL \alu|Mux31~5_combout\ : std_logic;
SIGNAL \alu|Mux31~6_combout\ : std_logic;
SIGNAL \alu|Mux31~9_combout\ : std_logic;
SIGNAL \alu|Equal0~0_combout\ : std_logic;
SIGNAL \alu|Equal0~2_combout\ : std_logic;
SIGNAL \alu|Equal0~3_combout\ : std_logic;
SIGNAL \alu|a32~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \alu|Mux30~11_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~123_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~53_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~72_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~73_combout\ : std_logic;
SIGNAL \alu|Mux30~8_combout\ : std_logic;
SIGNAL \alu|Add1~2_combout\ : std_logic;
SIGNAL \alu|Mux30~7_combout\ : std_logic;
SIGNAL \alu|Mux30~9_combout\ : std_logic;
SIGNAL \alu|Mux30~12_combout\ : std_logic;
SIGNAL \alu|Mux30~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~68_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~52_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~122_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~69_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~74_combout\ : std_logic;
SIGNAL \alu|Mux30~5_combout\ : std_logic;
SIGNAL \alu|Mux30~6_combout\ : std_logic;
SIGNAL \alu|Mux30~14_combout\ : std_logic;
SIGNAL \alu|Equal0~4_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \alu|Mux11~1_combout\ : std_logic;
SIGNAL \alu|Mux11~2_combout\ : std_logic;
SIGNAL \alu|Mux11~3_combout\ : std_logic;
SIGNAL \alu|tmp[20]~40_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~87_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~89_combout\ : std_logic;
SIGNAL \alu|Add1~40_combout\ : std_logic;
SIGNAL \alu|Mux11~5_combout\ : std_logic;
SIGNAL \alu|Mux11~6_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~85_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~87_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~88_combout\ : std_logic;
SIGNAL \alu|Mux11~7_combout\ : std_logic;
SIGNAL \alu|Mux11~8_combout\ : std_logic;
SIGNAL \alu|Equal0~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~101_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~127_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~158_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~94_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~95_combout\ : std_logic;
SIGNAL \alu|Add1~46_combout\ : std_logic;
SIGNAL \alu|Mux8~15_combout\ : std_logic;
SIGNAL \alu|Mux8~16_combout\ : std_logic;
SIGNAL \alu|Mux8~17_combout\ : std_logic;
SIGNAL \bcoreg|regA[23]~8_combout\ : std_logic;
SIGNAL \mux_shift|m_out[23]~28_combout\ : std_logic;
SIGNAL \mux_shift|m_out[23]~30_combout\ : std_logic;
SIGNAL \alu|Mux8~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \alu|Mux8~11_combout\ : std_logic;
SIGNAL \alu|Mux8~12_combout\ : std_logic;
SIGNAL \alu|Mux8~13_combout\ : std_logic;
SIGNAL \alu|Mux8~18_combout\ : std_logic;
SIGNAL \alu|Equal0~8_combout\ : std_logic;
SIGNAL \alu|Equal0~9_combout\ : std_logic;
SIGNAL \alu|Equal0~10_combout\ : std_logic;
SIGNAL \alu|Equal0~12_combout\ : std_logic;
SIGNAL \pc_wr_s~1_combout\ : std_logic;
SIGNAL \pc|sr_out[0]~26_combout\ : std_logic;
SIGNAL \mux_shift|m_out[26]~20_combout\ : std_logic;
SIGNAL \mux_shift|m_out[26]~21_combout\ : std_logic;
SIGNAL \alu|a32~26_combout\ : std_logic;
SIGNAL \alu|Mux5~0_combout\ : std_logic;
SIGNAL \alu|Mux5~1_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \alu|Mux5~2_combout\ : std_logic;
SIGNAL \alu|Mux5~8_combout\ : std_logic;
SIGNAL \alu|tmp[26]~52_combout\ : std_logic;
SIGNAL \alu|Mux5~3_combout\ : std_logic;
SIGNAL \alu|Add1~52_combout\ : std_logic;
SIGNAL \alu|Mux5~4_combout\ : std_logic;
SIGNAL \alu|Mux5~5_combout\ : std_logic;
SIGNAL \alu|Mux5~6_combout\ : std_logic;
SIGNAL \alu|Mux5~7_combout\ : std_logic;
SIGNAL \alu|Mux5~9_combout\ : std_logic;
SIGNAL \alu|Mux5~combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[26]~5_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[37]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[26]~18_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \bcoreg|regA[16]~0_combout\ : std_logic;
SIGNAL \mux_shift|m_out[16]~4_combout\ : std_logic;
SIGNAL \mux_shift|m_out[16]~6_combout\ : std_logic;
SIGNAL \alu|tmp[16]~32_combout\ : std_logic;
SIGNAL \alu|Mux15~5_combout\ : std_logic;
SIGNAL \alu|Add1~32_combout\ : std_logic;
SIGNAL \alu|Mux15~0_combout\ : std_logic;
SIGNAL \alu|Mux15~3_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \alu|Mux15~7_combout\ : std_logic;
SIGNAL \alu|Mux15~8_combout\ : std_logic;
SIGNAL \alu|Mux15~4_combout\ : std_logic;
SIGNAL \alu|Mux15~6_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[16]~0_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[16]~29_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[16]~33_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[16]~35_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~102_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~121_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~62_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~93_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~94_combout\ : std_logic;
SIGNAL \alu|Mux18~1_combout\ : std_logic;
SIGNAL \alu|Mux18~7_combout\ : std_logic;
SIGNAL \alu|Mux18~2_combout\ : std_logic;
SIGNAL \alu|Mux18~3_combout\ : std_logic;
SIGNAL \alu|Mux18~4_combout\ : std_logic;
SIGNAL \alu|Mux18~5_combout\ : std_logic;
SIGNAL \alu|Mux18~6_combout\ : std_logic;
SIGNAL \alu|Mux18~8_combout\ : std_logic;
SIGNAL \alu|Mux18~9_combout\ : std_logic;
SIGNAL \alu|Mux18~10_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[13]~17_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[24]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \bcoreg|regB[13]~9_combout\ : std_logic;
SIGNAL \rdm|sr_out[6]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[6]~24_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \bcoreg|regB[25]~17_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \bcoreg|regA[1]~28_combout\ : std_logic;
SIGNAL \mux_shift|m_out[1]~84_combout\ : std_logic;
SIGNAL \mux_shift|m_out[1]~85_combout\ : std_logic;
SIGNAL \mux_shift|m_out[1]~86_combout\ : std_logic;
SIGNAL \mux_shift|m_out[1]~87_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~54_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~86_combout\ : std_logic;
SIGNAL \alu|Mux19~9_combout\ : std_logic;
SIGNAL \alu|a32~21_combout\ : std_logic;
SIGNAL \alu|Mux19~5_combout\ : std_logic;
SIGNAL \alu|tmp[12]~24_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~99_combout\ : std_logic;
SIGNAL \alu|Add1~24_combout\ : std_logic;
SIGNAL \alu|Mux19~1_combout\ : std_logic;
SIGNAL \alu|Mux19~2_combout\ : std_logic;
SIGNAL \alu|Mux19~3_combout\ : std_logic;
SIGNAL \alu|Mux19~4_combout\ : std_logic;
SIGNAL \alu|Mux19~6_combout\ : std_logic;
SIGNAL \alu|Mux19~7_combout\ : std_logic;
SIGNAL \alu|Mux19~10_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[12]~18_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \bcoreg|regB[12]~11_combout\ : std_logic;
SIGNAL \alu|a32~13_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~42_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~114_combout\ : std_logic;
SIGNAL \alu|Mux27~0_combout\ : std_logic;
SIGNAL \alu|Mux27~6_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~57_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~56_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~59_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~89_combout\ : std_logic;
SIGNAL \alu|tmp[4]~8_combout\ : std_logic;
SIGNAL \alu|Add1~8_combout\ : std_logic;
SIGNAL \alu|Mux27~3_combout\ : std_logic;
SIGNAL \alu|Mux27~4_combout\ : std_logic;
SIGNAL \alu|Mux27~5_combout\ : std_logic;
SIGNAL \alu|Mux27~8_combout\ : std_logic;
SIGNAL \alu|Mux27~9_combout\ : std_logic;
SIGNAL \alu|Mux27~11_combout\ : std_logic;
SIGNAL \alu|Mux27~combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[4]~26_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \bcoreg|regB[24]~19_combout\ : std_logic;
SIGNAL \rdm|sr_out[23]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[23]~8_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[34]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[23]~24_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \bcoreg|regA[3]~30_combout\ : std_logic;
SIGNAL \mux_shift|m_out[3]~90_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~55_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \alu|Mux20~7_combout\ : std_logic;
SIGNAL \alu|tmp[11]~22_combout\ : std_logic;
SIGNAL \alu|Add1~22_combout\ : std_logic;
SIGNAL \alu|Mux20~3_combout\ : std_logic;
SIGNAL \alu|Mux20~4_combout\ : std_logic;
SIGNAL \alu|Mux20~5_combout\ : std_logic;
SIGNAL \alu|Mux20~6_combout\ : std_logic;
SIGNAL \alu|Mux20~8_combout\ : std_logic;
SIGNAL \alu|Mux20~9_combout\ : std_logic;
SIGNAL \alu|Mux20~10_combout\ : std_logic;
SIGNAL \rdm|sr_out[11]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[11]~19_combout\ : std_logic;
SIGNAL \bcoreg|regB[11]~12_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~27_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~28_combout\ : std_logic;
SIGNAL \actr|alu_ctr[1]~31_combout\ : std_logic;
SIGNAL \alu|Mux29~4_combout\ : std_logic;
SIGNAL \alu|Mux14~10_combout\ : std_logic;
SIGNAL \alu|Mux9~0_combout\ : std_logic;
SIGNAL \alu|Mux9~2_combout\ : std_logic;
SIGNAL \alu|Mux9~3_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~95_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~96_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~97_combout\ : std_logic;
SIGNAL \alu|Mux9~4_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~92_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~93_combout\ : std_logic;
SIGNAL \alu|Add1~44_combout\ : std_logic;
SIGNAL \alu|Mux9~5_combout\ : std_logic;
SIGNAL \alu|tmp[22]~44_combout\ : std_logic;
SIGNAL \alu|Mux9~6_combout\ : std_logic;
SIGNAL \alu|Mux9~7_combout\ : std_logic;
SIGNAL \alu|Mux9~8_combout\ : std_logic;
SIGNAL \rdm|sr_out[22]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[22]~9_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \bcoreg|regB[22]~26_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \bcoreg|regB[10]~14_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \bcoreg|regB[9]~13_combout\ : std_logic;
SIGNAL \rdm|sr_out[8]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[8]~22_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \bcoreg|regB[8]~15_combout\ : std_logic;
SIGNAL \ir|sr_out[15]~feeder_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[4]~4_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \bcoreg|regB[7]~4_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[3]~3_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \bcoreg|regB[6]~5_combout\ : std_logic;
SIGNAL \rdm|sr_out[5]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[5]~25_combout\ : std_logic;
SIGNAL \bcoreg|regB[5]~6_combout\ : std_logic;
SIGNAL \ir|sr_out[18]~feeder_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[2]~2_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \bcoreg|regB[3]~2_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[1]~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \bcoreg|regB[19]~30_combout\ : std_logic;
SIGNAL \bcoreg|breg32~44_combout\ : std_logic;
SIGNAL \bcoreg|breg32~43_combout\ : std_logic;
SIGNAL \bcoreg|breg32~45_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \bcoreg|regB[2]~3_combout\ : std_logic;
SIGNAL \rdm|sr_out[1]~feeder_combout\ : std_logic;
SIGNAL \breg_data_mux|m_out[1]~27_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \bcoreg|regB[1]~0_combout\ : std_logic;
SIGNAL \mux_reg_add|m_out[0]~0_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \bcoreg|regB[21]~25_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~65_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~119_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~120_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~66_combout\ : std_logic;
SIGNAL \alu|Mux22~10_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~159_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \alu|Mux22~6_combout\ : std_logic;
SIGNAL \alu|tmp[9]~18_combout\ : std_logic;
SIGNAL \alu|Add1~18_combout\ : std_logic;
SIGNAL \alu|Mux22~1_combout\ : std_logic;
SIGNAL \alu|Mux22~2_combout\ : std_logic;
SIGNAL \alu|Mux22~3_combout\ : std_logic;
SIGNAL \alu|Mux22~4_combout\ : std_logic;
SIGNAL \alu|Mux22~5_combout\ : std_logic;
SIGNAL \alu|Mux22~7_combout\ : std_logic;
SIGNAL \alu|Mux22~8_combout\ : std_logic;
SIGNAL \alu|Mux22~11_combout\ : std_logic;
SIGNAL \pc|sr_out[9]~21_combout\ : std_logic;
SIGNAL \mux_mem|m_out[9]~7_combout\ : std_logic;
SIGNAL \bcoreg|Equal1~0_combout\ : std_logic;
SIGNAL \bcoreg|Equal1~1_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \bcoreg|regB[4]~7_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[4]~13_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[4]~14_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~45_combout\ : std_logic;
SIGNAL \alu|Mux29~18_combout\ : std_logic;
SIGNAL \alu|a32~11_combout\ : std_logic;
SIGNAL \alu|Mux29~13_combout\ : std_logic;
SIGNAL \alu|tmp[2]~4_combout\ : std_logic;
SIGNAL \alu|Add1~4_combout\ : std_logic;
SIGNAL \alu|Mux29~8_combout\ : std_logic;
SIGNAL \alu|Mux29~9_combout\ : std_logic;
SIGNAL \alu|Mux29~10_combout\ : std_logic;
SIGNAL \alu|Mux29~11_combout\ : std_logic;
SIGNAL \alu|Mux29~12_combout\ : std_logic;
SIGNAL \alu|Mux29~15_combout\ : std_logic;
SIGNAL \alu|Mux29~16_combout\ : std_logic;
SIGNAL \alu|Mux29~20_combout\ : std_logic;
SIGNAL \pc|sr_out[2]~0_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \bcoreg|regA[2]~29_combout\ : std_logic;
SIGNAL \mux_shift|m_out[2]~88_combout\ : std_logic;
SIGNAL \mux_shift|m_out[2]~89_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~55_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~60_combout\ : std_logic;
SIGNAL \alu|Mux23~0_combout\ : std_logic;
SIGNAL \alu|a32~17_combout\ : std_logic;
SIGNAL \alu|Mux23~1_combout\ : std_logic;
SIGNAL \alu|Add1~16_combout\ : std_logic;
SIGNAL \alu|Mux23~2_combout\ : std_logic;
SIGNAL \alu|Mux23~3_combout\ : std_logic;
SIGNAL \alu|Mux23~4_combout\ : std_logic;
SIGNAL \alu|Mux23~5_combout\ : std_logic;
SIGNAL \alu|Mux23~7_combout\ : std_logic;
SIGNAL \alu|Mux23~8_combout\ : std_logic;
SIGNAL \alu|Mux23~9_combout\ : std_logic;
SIGNAL \pc|sr_out[8]~22_combout\ : std_logic;
SIGNAL \mux_mem|m_out[8]~6_combout\ : std_logic;
SIGNAL \mux_shift|m_out[3]~91_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~44_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~117_combout\ : std_logic;
SIGNAL \alu|Mux27~1_combout\ : std_logic;
SIGNAL \alu|Mux27~7_combout\ : std_logic;
SIGNAL \alu|Add1~14_combout\ : std_logic;
SIGNAL \alu|Mux24~0_combout\ : std_logic;
SIGNAL \alu|Mux24~1_combout\ : std_logic;
SIGNAL \alu|Mux24~2_combout\ : std_logic;
SIGNAL \alu|Mux24~3_combout\ : std_logic;
SIGNAL \alu|Mux24~4_combout\ : std_logic;
SIGNAL \alu|Mux24~5_combout\ : std_logic;
SIGNAL \alu|Mux24~7_combout\ : std_logic;
SIGNAL \alu|Mux24~combout\ : std_logic;
SIGNAL \pc|sr_out[7]~23_combout\ : std_logic;
SIGNAL \mux_mem|m_out[7]~5_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.rtype_ex_st~2_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.jump_ex_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.jump_ex_st~regout\ : std_logic;
SIGNAL \mux_mem|m_out[6]~4_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[5]~12_combout\ : std_logic;
SIGNAL \alu|a32~14_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~91_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~92_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~126_combout\ : std_logic;
SIGNAL \alu|tmp[5]~10_combout\ : std_logic;
SIGNAL \alu|Mux26~0_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~90_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~91_combout\ : std_logic;
SIGNAL \alu|Mux26~1_combout\ : std_logic;
SIGNAL \alu|Mux26~2_combout\ : std_logic;
SIGNAL \alu|Mux26~3_combout\ : std_logic;
SIGNAL \alu|Mux26~4_combout\ : std_logic;
SIGNAL \alu|Mux26~5_combout\ : std_logic;
SIGNAL \alu|Mux26~7_combout\ : std_logic;
SIGNAL \alu|Mux26~combout\ : std_logic;
SIGNAL \pc|sr_out[5]~25_combout\ : std_logic;
SIGNAL \mux_mem|m_out[5]~3_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.arith_imm_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.branch_ex_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.branch_ex_st~regout\ : std_logic;
SIGNAL \actr|alu_ctr[2]~26_combout\ : std_logic;
SIGNAL \alu|Mux29~2_combout\ : std_logic;
SIGNAL \alu|Mux29~3_combout\ : std_logic;
SIGNAL \alu|a32~15_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~75_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~74_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~109_combout\ : std_logic;
SIGNAL \alu|Add1~12_combout\ : std_logic;
SIGNAL \alu|Mux25~1_combout\ : std_logic;
SIGNAL \alu|tmp[6]~12_combout\ : std_logic;
SIGNAL \alu|Mux25~2_combout\ : std_logic;
SIGNAL \alu|Mux25~3_combout\ : std_logic;
SIGNAL \alu|Mux25~4_combout\ : std_logic;
SIGNAL \alu|Mux25~5_combout\ : std_logic;
SIGNAL \alu|Mux25~7_combout\ : std_logic;
SIGNAL \alu|Mux25~combout\ : std_logic;
SIGNAL \mux_mem|m_out[4]~2_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~34_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~35_combout\ : std_logic;
SIGNAL \actr|alu_ctr[3]~29_combout\ : std_logic;
SIGNAL \alu|Mux29~19_combout\ : std_logic;
SIGNAL \alu|Mux28~8_combout\ : std_logic;
SIGNAL \alu|Mux28~9_combout\ : std_logic;
SIGNAL \alu|a32~12_combout\ : std_logic;
SIGNAL \alu|Mux28~5_combout\ : std_logic;
SIGNAL \alu|tmp[3]~6_combout\ : std_logic;
SIGNAL \alu|Mux28~0_combout\ : std_logic;
SIGNAL \alu|Add1~6_combout\ : std_logic;
SIGNAL \alu|Mux28~1_combout\ : std_logic;
SIGNAL \alu|Mux28~2_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~80_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~83_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~125_combout\ : std_logic;
SIGNAL \alu|Mux28~3_combout\ : std_logic;
SIGNAL \alu|Mux28~4_combout\ : std_logic;
SIGNAL \alu|Mux28~6_combout\ : std_logic;
SIGNAL \alu|Mux28~7_combout\ : std_logic;
SIGNAL \alu|Mux28~10_combout\ : std_logic;
SIGNAL \pc|sr_out[3]~1_combout\ : std_logic;
SIGNAL \mux_mem|m_out[3]~1_combout\ : std_logic;
SIGNAL \ctr_mips|Mux7~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.writemem_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.writemem_st~regout\ : std_logic;
SIGNAL \mux_mem|m_out[2]~0_combout\ : std_logic;
SIGNAL \ctr_mips|Mux6~0_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.readmem_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.readmem_st~regout\ : std_logic;
SIGNAL \ctr_mips|pstate.ldreg_st~feeder_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.ldreg_st~regout\ : std_logic;
SIGNAL \breg_data_mux|m_out[0]~28_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass[29]~feeder_combout\ : std_logic;
SIGNAL \bcoreg|regB[18]~31_combout\ : std_logic;
SIGNAL \ir|sr_out[31]~feeder_combout\ : std_logic;
SIGNAL \ctr_mips|Mux5~0_combout\ : std_logic;
SIGNAL \ctr_mips|Mux5~2_combout\ : std_logic;
SIGNAL \ctr_mips|nstate.c_mem_add_st~0_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.c_mem_add_st~regout\ : std_logic;
SIGNAL \ctr_mips|Mux0~0_combout\ : std_logic;
SIGNAL \ctr_mips|Mux0~1_combout\ : std_logic;
SIGNAL \ctr_mips|Selector0~0_combout\ : std_logic;
SIGNAL \ctr_mips|Selector0~1_combout\ : std_logic;
SIGNAL \ctr_mips|Selector0~2_combout\ : std_logic;
SIGNAL \ctr_mips|pstate.fetch_st~regout\ : std_logic;
SIGNAL \ctr_mips|pstate.fetch_st~_wirecell_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \bcoreg|regB[0]~1_combout\ : std_logic;
SIGNAL \pc|sr_out~31_combout\ : std_logic;
SIGNAL \data~0_combout\ : std_logic;
SIGNAL \data~1_combout\ : std_logic;
SIGNAL \pc|sr_out~32_combout\ : std_logic;
SIGNAL \data~2_combout\ : std_logic;
SIGNAL \data~3_combout\ : std_logic;
SIGNAL \data~4_combout\ : std_logic;
SIGNAL \data~5_combout\ : std_logic;
SIGNAL \data~6_combout\ : std_logic;
SIGNAL \data~7_combout\ : std_logic;
SIGNAL \data~8_combout\ : std_logic;
SIGNAL \data~9_combout\ : std_logic;
SIGNAL \data~10_combout\ : std_logic;
SIGNAL \data~11_combout\ : std_logic;
SIGNAL \data~12_combout\ : std_logic;
SIGNAL \data~13_combout\ : std_logic;
SIGNAL \data~14_combout\ : std_logic;
SIGNAL \data~15_combout\ : std_logic;
SIGNAL \data~16_combout\ : std_logic;
SIGNAL \data~17_combout\ : std_logic;
SIGNAL \data~18_combout\ : std_logic;
SIGNAL \data~19_combout\ : std_logic;
SIGNAL \data~20_combout\ : std_logic;
SIGNAL \data~21_combout\ : std_logic;
SIGNAL \data~22_combout\ : std_logic;
SIGNAL \data~23_combout\ : std_logic;
SIGNAL \pc|sr_out[12]~18_combout\ : std_logic;
SIGNAL \data~24_combout\ : std_logic;
SIGNAL \data~25_combout\ : std_logic;
SIGNAL \pc|sr_out[13]~17_combout\ : std_logic;
SIGNAL \data~26_combout\ : std_logic;
SIGNAL \data~27_combout\ : std_logic;
SIGNAL \pc|sr_out[14]~16_combout\ : std_logic;
SIGNAL \data~28_combout\ : std_logic;
SIGNAL \data~29_combout\ : std_logic;
SIGNAL \pc|sr_out[15]~15_combout\ : std_logic;
SIGNAL \data~30_combout\ : std_logic;
SIGNAL \data~31_combout\ : std_logic;
SIGNAL \data~32_combout\ : std_logic;
SIGNAL \data~33_combout\ : std_logic;
SIGNAL \data~34_combout\ : std_logic;
SIGNAL \data~35_combout\ : std_logic;
SIGNAL \pc|sr_out[18]~13_combout\ : std_logic;
SIGNAL \data~36_combout\ : std_logic;
SIGNAL \data~37_combout\ : std_logic;
SIGNAL \pc|sr_out[19]~12_combout\ : std_logic;
SIGNAL \data~38_combout\ : std_logic;
SIGNAL \data~39_combout\ : std_logic;
SIGNAL \pc|sr_out[20]~11_combout\ : std_logic;
SIGNAL \data~40_combout\ : std_logic;
SIGNAL \data~41_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \mux_ulaB|m_out[21]~46_combout\ : std_logic;
SIGNAL \alu|Mux10~0_combout\ : std_logic;
SIGNAL \alu|Mux10~1_combout\ : std_logic;
SIGNAL \alu|Mux10~2_combout\ : std_logic;
SIGNAL \alu|Mux10~3_combout\ : std_logic;
SIGNAL \alu|Add1~42_combout\ : std_logic;
SIGNAL \alu|Mux10~5_combout\ : std_logic;
SIGNAL \alu|Mux10~6_combout\ : std_logic;
SIGNAL \alu|Mux10~7_combout\ : std_logic;
SIGNAL \alu|Mux10~8_combout\ : std_logic;
SIGNAL \pc|sr_out[21]~10_combout\ : std_logic;
SIGNAL \data~42_combout\ : std_logic;
SIGNAL \data~43_combout\ : std_logic;
SIGNAL \data~44_combout\ : std_logic;
SIGNAL \data~45_combout\ : std_logic;
SIGNAL \pc|sr_out[23]~8_combout\ : std_logic;
SIGNAL \data~46_combout\ : std_logic;
SIGNAL \data~47_combout\ : std_logic;
SIGNAL \mux_shift|m_out[24]~26_combout\ : std_logic;
SIGNAL \mux_shift|m_out[24]~27_combout\ : std_logic;
SIGNAL \alu|Mux7~7_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~104_combout\ : std_logic;
SIGNAL \alu|ShiftRight0~128_combout\ : std_logic;
SIGNAL \alu|tmp[24]~48_combout\ : std_logic;
SIGNAL \alu|ShiftRight1~96_combout\ : std_logic;
SIGNAL \alu|Add1~48_combout\ : std_logic;
SIGNAL \alu|Mux7~3_combout\ : std_logic;
SIGNAL \alu|Mux7~4_combout\ : std_logic;
SIGNAL \alu|Mux7~5_combout\ : std_logic;
SIGNAL \alu|Mux7~6_combout\ : std_logic;
SIGNAL \alu|Mux7~8_combout\ : std_logic;
SIGNAL \alu|Mux7~0_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \alu|Mux7~1_combout\ : std_logic;
SIGNAL \alu|Mux7~combout\ : std_logic;
SIGNAL \data~48_combout\ : std_logic;
SIGNAL \data~49_combout\ : std_logic;
SIGNAL \data~50_combout\ : std_logic;
SIGNAL \data~51_combout\ : std_logic;
SIGNAL \data~52_combout\ : std_logic;
SIGNAL \data~53_combout\ : std_logic;
SIGNAL \data~54_combout\ : std_logic;
SIGNAL \data~55_combout\ : std_logic;
SIGNAL \data~56_combout\ : std_logic;
SIGNAL \data~57_combout\ : std_logic;
SIGNAL \pc|sr_out~29_combout\ : std_logic;
SIGNAL \data~58_combout\ : std_logic;
SIGNAL \data~59_combout\ : std_logic;
SIGNAL \data~60_combout\ : std_logic;
SIGNAL \data~61_combout\ : std_logic;
SIGNAL \data~62_combout\ : std_logic;
SIGNAL \data~63_combout\ : std_logic;
SIGNAL \bcoreg|breg32_rtl_1_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \bcoreg|breg32_rtl_0_bypass\ : std_logic_vector(0 TO 42);
SIGNAL \ir|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rgA|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rgB|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \regULA|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pc|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \mem|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rdm|sr_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debug~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\ : std_logic;
SIGNAL \ctr_mips|ALT_INV_pstate.fetch_st~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_clk_rom <= clk_rom;
ww_rst <= rst;
ww_debug <= debug;
data <= ww_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\rgB|sr_out\(17) & \rgB|sr_out\(16) & \rgB|sr_out\(15) & \rgB|sr_out\(14) & \rgB|sr_out\(13) & \rgB|sr_out\(12) & \rgB|sr_out\(11) & \rgB|sr_out\(10) & \rgB|sr_out\(9) & 
\rgB|sr_out\(8) & \rgB|sr_out\(7) & \rgB|sr_out\(6) & \rgB|sr_out\(5) & \rgB|sr_out\(4) & \rgB|sr_out\(3) & \rgB|sr_out\(2) & \rgB|sr_out\(1) & \rgB|sr_out\(0));

\mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_mem|m_out[9]~7_combout\ & \mux_mem|m_out[8]~6_combout\ & \mux_mem|m_out[7]~5_combout\ & \mux_mem|m_out[6]~4_combout\ & \mux_mem|m_out[5]~3_combout\ & 
\mux_mem|m_out[4]~2_combout\ & \mux_mem|m_out[3]~1_combout\ & \mux_mem|m_out[2]~0_combout\);

\mem|altsyncram_component|auto_generated|q_a\(0) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(1) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(2) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(3) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(4) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(5) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(6) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(7) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\mem|altsyncram_component|auto_generated|q_a\(8) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\mem|altsyncram_component|auto_generated|q_a\(9) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\mem|altsyncram_component|auto_generated|q_a\(10) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\mem|altsyncram_component|auto_generated|q_a\(11) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\mem|altsyncram_component|auto_generated|q_a\(12) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\mem|altsyncram_component|auto_generated|q_a\(13) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\mem|altsyncram_component|auto_generated|q_a\(14) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\mem|altsyncram_component|auto_generated|q_a\(15) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\mem|altsyncram_component|auto_generated|q_a\(16) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\mem|altsyncram_component|auto_generated|q_a\(17) <= \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ <= (\rgB|sr_out\(31) & \rgB|sr_out\(30) & \rgB|sr_out\(29) & \rgB|sr_out\(28) & \rgB|sr_out\(27) & \rgB|sr_out\(26) & \rgB|sr_out\(25) & \rgB|sr_out\(24) & \rgB|sr_out\(23)
& \rgB|sr_out\(22) & \rgB|sr_out\(21) & \rgB|sr_out\(20) & \rgB|sr_out\(19) & \rgB|sr_out\(18));

\mem|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\mux_mem|m_out[9]~7_combout\ & \mux_mem|m_out[8]~6_combout\ & \mux_mem|m_out[7]~5_combout\ & \mux_mem|m_out[6]~4_combout\ & \mux_mem|m_out[5]~3_combout\ & 
\mux_mem|m_out[4]~2_combout\ & \mux_mem|m_out[3]~1_combout\ & \mux_mem|m_out[2]~0_combout\);

\mem|altsyncram_component|auto_generated|q_a\(18) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\mem|altsyncram_component|auto_generated|q_a\(19) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\mem|altsyncram_component|auto_generated|q_a\(20) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\mem|altsyncram_component|auto_generated|q_a\(21) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\mem|altsyncram_component|auto_generated|q_a\(22) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\mem|altsyncram_component|auto_generated|q_a\(23) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\mem|altsyncram_component|auto_generated|q_a\(24) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\mem|altsyncram_component|auto_generated|q_a\(25) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\mem|altsyncram_component|auto_generated|q_a\(26) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);
\mem|altsyncram_component|auto_generated|q_a\(27) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(9);
\mem|altsyncram_component|auto_generated|q_a\(28) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(10);
\mem|altsyncram_component|auto_generated|q_a\(29) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(11);
\mem|altsyncram_component|auto_generated|q_a\(30) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(12);
\mem|altsyncram_component|auto_generated|q_a\(31) <= \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(13);

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\breg_data_mux|m_out[31]~31_combout\ & \breg_data_mux|m_out[30]~1_combout\ & \breg_data_mux|m_out[29]~2_combout\ & \breg_data_mux|m_out[28]~3_combout\ & 
\breg_data_mux|m_out[27]~4_combout\ & \breg_data_mux|m_out[26]~5_combout\ & \breg_data_mux|m_out[25]~6_combout\ & \breg_data_mux|m_out[24]~7_combout\ & \breg_data_mux|m_out[23]~8_combout\ & \breg_data_mux|m_out[22]~9_combout\ & 
\breg_data_mux|m_out[21]~10_combout\ & \breg_data_mux|m_out[20]~11_combout\ & \breg_data_mux|m_out[19]~12_combout\ & \breg_data_mux|m_out[18]~13_combout\ & \breg_data_mux|m_out[17]~14_combout\ & \breg_data_mux|m_out[16]~0_combout\ & 
\breg_data_mux|m_out[15]~15_combout\ & \breg_data_mux|m_out[14]~16_combout\ & \breg_data_mux|m_out[13]~17_combout\ & \breg_data_mux|m_out[12]~18_combout\ & \breg_data_mux|m_out[11]~19_combout\ & \breg_data_mux|m_out[10]~20_combout\ & 
\breg_data_mux|m_out[9]~21_combout\ & \breg_data_mux|m_out[8]~22_combout\ & \breg_data_mux|m_out[7]~23_combout\ & \breg_data_mux|m_out[6]~24_combout\ & \breg_data_mux|m_out[5]~25_combout\ & \breg_data_mux|m_out[4]~26_combout\ & 
\breg_data_mux|m_out[3]~29_combout\ & \breg_data_mux|m_out[2]~30_combout\ & \breg_data_mux|m_out[1]~27_combout\ & \breg_data_mux|m_out[0]~28_combout\);

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_reg_add|m_out[4]~4_combout\ & \mux_reg_add|m_out[3]~3_combout\ & \mux_reg_add|m_out[2]~2_combout\ & \mux_reg_add|m_out[1]~1_combout\ & \mux_reg_add|m_out[0]~0_combout\);

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mem|altsyncram_component|auto_generated|q_a\(20) & \mem|altsyncram_component|auto_generated|q_a\(19) & \mem|altsyncram_component|auto_generated|q_a\(18) & 
\mem|altsyncram_component|auto_generated|q_a\(17) & \mem|altsyncram_component|auto_generated|q_a\(16));

\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\ <= \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\breg_data_mux|m_out[31]~31_combout\ & \breg_data_mux|m_out[30]~1_combout\ & \breg_data_mux|m_out[29]~2_combout\ & \breg_data_mux|m_out[28]~3_combout\ & 
\breg_data_mux|m_out[27]~4_combout\ & \breg_data_mux|m_out[26]~5_combout\ & \breg_data_mux|m_out[25]~6_combout\ & \breg_data_mux|m_out[24]~7_combout\ & \breg_data_mux|m_out[23]~8_combout\ & \breg_data_mux|m_out[22]~9_combout\ & 
\breg_data_mux|m_out[21]~10_combout\ & \breg_data_mux|m_out[20]~11_combout\ & \breg_data_mux|m_out[19]~12_combout\ & \breg_data_mux|m_out[18]~13_combout\ & \breg_data_mux|m_out[17]~14_combout\ & \breg_data_mux|m_out[16]~0_combout\ & 
\breg_data_mux|m_out[15]~15_combout\ & \breg_data_mux|m_out[14]~16_combout\ & \breg_data_mux|m_out[13]~17_combout\ & \breg_data_mux|m_out[12]~18_combout\ & \breg_data_mux|m_out[11]~19_combout\ & \breg_data_mux|m_out[10]~20_combout\ & 
\breg_data_mux|m_out[9]~21_combout\ & \breg_data_mux|m_out[8]~22_combout\ & \breg_data_mux|m_out[7]~23_combout\ & \breg_data_mux|m_out[6]~24_combout\ & \breg_data_mux|m_out[5]~25_combout\ & \breg_data_mux|m_out[4]~26_combout\ & 
\breg_data_mux|m_out[3]~29_combout\ & \breg_data_mux|m_out[2]~30_combout\ & \breg_data_mux|m_out[1]~27_combout\ & \breg_data_mux|m_out[0]~28_combout\);

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mux_reg_add|m_out[4]~4_combout\ & \mux_reg_add|m_out[3]~3_combout\ & \mux_reg_add|m_out[2]~2_combout\ & \mux_reg_add|m_out[1]~1_combout\ & \mux_reg_add|m_out[0]~0_combout\);

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\mem|altsyncram_component|auto_generated|q_a\(25) & \mem|altsyncram_component|auto_generated|q_a\(24) & \mem|altsyncram_component|auto_generated|q_a\(23) & 
\mem|altsyncram_component|auto_generated|q_a\(22) & \mem|altsyncram_component|auto_generated|q_a\(21));

\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\ <= \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\clk_rom~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_rom~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\ <= NOT \ctr_mips|pstate.fetch_st~_wirecell_combout\;
\ctr_mips|ALT_INV_pstate.fetch_st~regout\ <= NOT \ctr_mips|pstate.fetch_st~regout\;

-- Location: LCFF_X63_Y34_N1
\pc|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[16]~3_combout\,
	sdata => \ir|sr_out\(14),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(16));

-- Location: LCFF_X60_Y36_N17
\pc|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[24]~7_combout\,
	sdata => \ir|sr_out\(22),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(24));

-- Location: LCFF_X60_Y37_N13
\pc|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[17]~14_combout\,
	sdata => \ir|sr_out\(15),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(17));

-- Location: LCCOMB_X58_Y36_N2
\alu|tmp[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[1]~2_combout\ = (\mux_ulaB|m_out[1]~0_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (!\alu|tmp[0]~1\)) # (!\mux_shift|m_out[1]~87_combout\ & ((\alu|tmp[0]~1\) # (GND))))) # (!\mux_ulaB|m_out[1]~0_combout\ & ((\mux_shift|m_out[1]~87_combout\ & 
-- (\alu|tmp[0]~1\ & VCC)) # (!\mux_shift|m_out[1]~87_combout\ & (!\alu|tmp[0]~1\))))
-- \alu|tmp[1]~3\ = CARRY((\mux_ulaB|m_out[1]~0_combout\ & ((!\alu|tmp[0]~1\) # (!\mux_shift|m_out[1]~87_combout\))) # (!\mux_ulaB|m_out[1]~0_combout\ & (!\mux_shift|m_out[1]~87_combout\ & !\alu|tmp[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datad => VCC,
	cin => \alu|tmp[0]~1\,
	combout => \alu|tmp[1]~2_combout\,
	cout => \alu|tmp[1]~3\);

-- Location: LCCOMB_X58_Y36_N14
\alu|tmp[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[7]~14_combout\ = (\mux_shift|m_out[7]~75_combout\ & ((\mux_ulaB|m_out[7]~8_combout\ & (!\alu|tmp[6]~13\)) # (!\mux_ulaB|m_out[7]~8_combout\ & (\alu|tmp[6]~13\ & VCC)))) # (!\mux_shift|m_out[7]~75_combout\ & ((\mux_ulaB|m_out[7]~8_combout\ & 
-- ((\alu|tmp[6]~13\) # (GND))) # (!\mux_ulaB|m_out[7]~8_combout\ & (!\alu|tmp[6]~13\))))
-- \alu|tmp[7]~15\ = CARRY((\mux_shift|m_out[7]~75_combout\ & (\mux_ulaB|m_out[7]~8_combout\ & !\alu|tmp[6]~13\)) # (!\mux_shift|m_out[7]~75_combout\ & ((\mux_ulaB|m_out[7]~8_combout\) # (!\alu|tmp[6]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[7]~75_combout\,
	datab => \mux_ulaB|m_out[7]~8_combout\,
	datad => VCC,
	cin => \alu|tmp[6]~13\,
	combout => \alu|tmp[7]~14_combout\,
	cout => \alu|tmp[7]~15\);

-- Location: LCCOMB_X58_Y36_N16
\alu|tmp[8]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[8]~16_combout\ = ((\mux_ulaB|m_out[8]~30_combout\ $ (\mux_shift|m_out[8]~72_combout\ $ (\alu|tmp[7]~15\)))) # (GND)
-- \alu|tmp[8]~17\ = CARRY((\mux_ulaB|m_out[8]~30_combout\ & (\mux_shift|m_out[8]~72_combout\ & !\alu|tmp[7]~15\)) # (!\mux_ulaB|m_out[8]~30_combout\ & ((\mux_shift|m_out[8]~72_combout\) # (!\alu|tmp[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[8]~30_combout\,
	datab => \mux_shift|m_out[8]~72_combout\,
	datad => VCC,
	cin => \alu|tmp[7]~15\,
	combout => \alu|tmp[8]~16_combout\,
	cout => \alu|tmp[8]~17\);

-- Location: LCCOMB_X58_Y36_N20
\alu|tmp[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[10]~20_combout\ = ((\mux_shift|m_out[10]~66_combout\ $ (\mux_ulaB|m_out[10]~28_combout\ $ (\alu|tmp[9]~19\)))) # (GND)
-- \alu|tmp[10]~21\ = CARRY((\mux_shift|m_out[10]~66_combout\ & ((!\alu|tmp[9]~19\) # (!\mux_ulaB|m_out[10]~28_combout\))) # (!\mux_shift|m_out[10]~66_combout\ & (!\mux_ulaB|m_out[10]~28_combout\ & !\alu|tmp[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[10]~66_combout\,
	datab => \mux_ulaB|m_out[10]~28_combout\,
	datad => VCC,
	cin => \alu|tmp[9]~19\,
	combout => \alu|tmp[10]~20_combout\,
	cout => \alu|tmp[10]~21\);

-- Location: LCCOMB_X58_Y36_N26
\alu|tmp[13]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[13]~26_combout\ = (\mux_shift|m_out[13]~57_combout\ & ((\mux_ulaB|m_out[13]~18_combout\ & (!\alu|tmp[12]~25\)) # (!\mux_ulaB|m_out[13]~18_combout\ & (\alu|tmp[12]~25\ & VCC)))) # (!\mux_shift|m_out[13]~57_combout\ & 
-- ((\mux_ulaB|m_out[13]~18_combout\ & ((\alu|tmp[12]~25\) # (GND))) # (!\mux_ulaB|m_out[13]~18_combout\ & (!\alu|tmp[12]~25\))))
-- \alu|tmp[13]~27\ = CARRY((\mux_shift|m_out[13]~57_combout\ & (\mux_ulaB|m_out[13]~18_combout\ & !\alu|tmp[12]~25\)) # (!\mux_shift|m_out[13]~57_combout\ & ((\mux_ulaB|m_out[13]~18_combout\) # (!\alu|tmp[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[13]~57_combout\,
	datab => \mux_ulaB|m_out[13]~18_combout\,
	datad => VCC,
	cin => \alu|tmp[12]~25\,
	combout => \alu|tmp[13]~26_combout\,
	cout => \alu|tmp[13]~27\);

-- Location: LCCOMB_X58_Y35_N6
\alu|tmp[19]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[19]~38_combout\ = (\mux_shift|m_out[19]~42_combout\ & ((\mux_ulaB|m_out[19]~48_combout\ & (!\alu|tmp[18]~37\)) # (!\mux_ulaB|m_out[19]~48_combout\ & (\alu|tmp[18]~37\ & VCC)))) # (!\mux_shift|m_out[19]~42_combout\ & 
-- ((\mux_ulaB|m_out[19]~48_combout\ & ((\alu|tmp[18]~37\) # (GND))) # (!\mux_ulaB|m_out[19]~48_combout\ & (!\alu|tmp[18]~37\))))
-- \alu|tmp[19]~39\ = CARRY((\mux_shift|m_out[19]~42_combout\ & (\mux_ulaB|m_out[19]~48_combout\ & !\alu|tmp[18]~37\)) # (!\mux_shift|m_out[19]~42_combout\ & ((\mux_ulaB|m_out[19]~48_combout\) # (!\alu|tmp[18]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[19]~42_combout\,
	datab => \mux_ulaB|m_out[19]~48_combout\,
	datad => VCC,
	cin => \alu|tmp[18]~37\,
	combout => \alu|tmp[19]~38_combout\,
	cout => \alu|tmp[19]~39\);

-- Location: LCCOMB_X58_Y35_N10
\alu|tmp[21]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[21]~42_combout\ = (\mux_ulaB|m_out[21]~46_combout\ & ((\mux_shift|m_out[21]~36_combout\ & (!\alu|tmp[20]~41\)) # (!\mux_shift|m_out[21]~36_combout\ & ((\alu|tmp[20]~41\) # (GND))))) # (!\mux_ulaB|m_out[21]~46_combout\ & 
-- ((\mux_shift|m_out[21]~36_combout\ & (\alu|tmp[20]~41\ & VCC)) # (!\mux_shift|m_out[21]~36_combout\ & (!\alu|tmp[20]~41\))))
-- \alu|tmp[21]~43\ = CARRY((\mux_ulaB|m_out[21]~46_combout\ & ((!\alu|tmp[20]~41\) # (!\mux_shift|m_out[21]~36_combout\))) # (!\mux_ulaB|m_out[21]~46_combout\ & (!\mux_shift|m_out[21]~36_combout\ & !\alu|tmp[20]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[21]~46_combout\,
	datab => \mux_shift|m_out[21]~36_combout\,
	datad => VCC,
	cin => \alu|tmp[20]~41\,
	combout => \alu|tmp[21]~42_combout\,
	cout => \alu|tmp[21]~43\);

-- Location: LCCOMB_X58_Y35_N14
\alu|tmp[23]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[23]~46_combout\ = (\mux_shift|m_out[23]~30_combout\ & ((\mux_ulaB|m_out[23]~44_combout\ & (!\alu|tmp[22]~45\)) # (!\mux_ulaB|m_out[23]~44_combout\ & (\alu|tmp[22]~45\ & VCC)))) # (!\mux_shift|m_out[23]~30_combout\ & 
-- ((\mux_ulaB|m_out[23]~44_combout\ & ((\alu|tmp[22]~45\) # (GND))) # (!\mux_ulaB|m_out[23]~44_combout\ & (!\alu|tmp[22]~45\))))
-- \alu|tmp[23]~47\ = CARRY((\mux_shift|m_out[23]~30_combout\ & (\mux_ulaB|m_out[23]~44_combout\ & !\alu|tmp[22]~45\)) # (!\mux_shift|m_out[23]~30_combout\ & ((\mux_ulaB|m_out[23]~44_combout\) # (!\alu|tmp[22]~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[23]~30_combout\,
	datab => \mux_ulaB|m_out[23]~44_combout\,
	datad => VCC,
	cin => \alu|tmp[22]~45\,
	combout => \alu|tmp[23]~46_combout\,
	cout => \alu|tmp[23]~47\);

-- Location: LCCOMB_X58_Y35_N26
\alu|tmp[29]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[29]~58_combout\ = (\mux_ulaB|m_out[29]~38_combout\ & ((\mux_shift|m_out[29]~12_combout\ & (!\alu|tmp[28]~57\)) # (!\mux_shift|m_out[29]~12_combout\ & ((\alu|tmp[28]~57\) # (GND))))) # (!\mux_ulaB|m_out[29]~38_combout\ & 
-- ((\mux_shift|m_out[29]~12_combout\ & (\alu|tmp[28]~57\ & VCC)) # (!\mux_shift|m_out[29]~12_combout\ & (!\alu|tmp[28]~57\))))
-- \alu|tmp[29]~59\ = CARRY((\mux_ulaB|m_out[29]~38_combout\ & ((!\alu|tmp[28]~57\) # (!\mux_shift|m_out[29]~12_combout\))) # (!\mux_ulaB|m_out[29]~38_combout\ & (!\mux_shift|m_out[29]~12_combout\ & !\alu|tmp[28]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[29]~38_combout\,
	datab => \mux_shift|m_out[29]~12_combout\,
	datad => VCC,
	cin => \alu|tmp[28]~57\,
	combout => \alu|tmp[29]~58_combout\,
	cout => \alu|tmp[29]~59\);

-- Location: LCCOMB_X59_Y37_N10
\alu|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~10_combout\ = (\mux_ulaB|m_out[5]~12_combout\ & ((\mux_shift|m_out[5]~77_combout\ & (\alu|Add1~9\ & VCC)) # (!\mux_shift|m_out[5]~77_combout\ & (!\alu|Add1~9\)))) # (!\mux_ulaB|m_out[5]~12_combout\ & ((\mux_shift|m_out[5]~77_combout\ & 
-- (!\alu|Add1~9\)) # (!\mux_shift|m_out[5]~77_combout\ & ((\alu|Add1~9\) # (GND)))))
-- \alu|Add1~11\ = CARRY((\mux_ulaB|m_out[5]~12_combout\ & (!\mux_shift|m_out[5]~77_combout\ & !\alu|Add1~9\)) # (!\mux_ulaB|m_out[5]~12_combout\ & ((!\alu|Add1~9\) # (!\mux_shift|m_out[5]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~12_combout\,
	datab => \mux_shift|m_out[5]~77_combout\,
	datad => VCC,
	cin => \alu|Add1~9\,
	combout => \alu|Add1~10_combout\,
	cout => \alu|Add1~11\);

-- Location: LCCOMB_X59_Y37_N26
\alu|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~26_combout\ = (\mux_ulaB|m_out[13]~18_combout\ & ((\mux_shift|m_out[13]~57_combout\ & (\alu|Add1~25\ & VCC)) # (!\mux_shift|m_out[13]~57_combout\ & (!\alu|Add1~25\)))) # (!\mux_ulaB|m_out[13]~18_combout\ & ((\mux_shift|m_out[13]~57_combout\ & 
-- (!\alu|Add1~25\)) # (!\mux_shift|m_out[13]~57_combout\ & ((\alu|Add1~25\) # (GND)))))
-- \alu|Add1~27\ = CARRY((\mux_ulaB|m_out[13]~18_combout\ & (!\mux_shift|m_out[13]~57_combout\ & !\alu|Add1~25\)) # (!\mux_ulaB|m_out[13]~18_combout\ & ((!\alu|Add1~25\) # (!\mux_shift|m_out[13]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[13]~18_combout\,
	datab => \mux_shift|m_out[13]~57_combout\,
	datad => VCC,
	cin => \alu|Add1~25\,
	combout => \alu|Add1~26_combout\,
	cout => \alu|Add1~27\);

-- Location: LCCOMB_X63_Y34_N0
\pc|sr_out[16]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[16]~3_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(16))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(16),
	datad => \alu|Mux15~6_combout\,
	combout => \pc|sr_out[16]~3_combout\);

-- Location: LCCOMB_X60_Y36_N16
\pc|sr_out[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[24]~7_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(24))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(24),
	datab => \alu|Mux7~combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[24]~7_combout\);

-- Location: LCCOMB_X60_Y37_N12
\pc|sr_out[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[17]~14_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(17))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux14~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(17),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux14~11_combout\,
	combout => \pc|sr_out[17]~14_combout\);

-- Location: M4K_X64_Y36
\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "breg:bcoreg|altsyncram:breg32_rtl_1|altsyncram_bnd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|WideOr1~0_combout\,
	portbrewe => VCC,
	portbaddrstall => \ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X64_Y35
\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "breg:bcoreg|altsyncram:breg32_rtl_0|altsyncram_bnd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 32,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 5,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 32,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 32,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|WideOr1~0_combout\,
	portbrewe => VCC,
	portbaddrstall => \ctr_mips|ALT_INV_pstate.fetch_st~_wirecell_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X62_Y35_N4
\mux_shift|m_out[16]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[16]~5_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (\pc|sr_out\(16) & !\ctr_mips|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \pc|sr_out\(16),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[16]~5_combout\);

-- Location: LCCOMB_X62_Y35_N8
\mux_shift|m_out[29]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[29]~11_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & \pc|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \pc|sr_out\(29),
	combout => \mux_shift|m_out[29]~11_combout\);

-- Location: LCFF_X62_Y35_N25
\rgA|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[28]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(28));

-- Location: LCCOMB_X62_Y35_N24
\mux_shift|m_out[28]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[28]~13_combout\ = (\rgA|sr_out\(28) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(28),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[28]~13_combout\);

-- Location: LCFF_X61_Y34_N13
\rgA|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[26]~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(26));

-- Location: LCCOMB_X61_Y34_N12
\mux_shift|m_out[26]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[26]~19_combout\ = (\rgA|sr_out\(26) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(26),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[26]~19_combout\);

-- Location: LCFF_X62_Y36_N29
\rgA|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[24]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(24));

-- Location: LCCOMB_X62_Y36_N28
\mux_shift|m_out[24]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[24]~25_combout\ = (\rgA|sr_out\(24) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \rgA|sr_out\(24),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[24]~25_combout\);

-- Location: LCCOMB_X60_Y35_N24
\mux_shift|m_out[23]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[23]~29_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & (\pc|sr_out\(23) & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \pc|sr_out\(23),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[23]~29_combout\);

-- Location: LCFF_X61_Y35_N17
\rgA|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[22]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(22));

-- Location: LCCOMB_X61_Y35_N16
\mux_shift|m_out[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[22]~31_combout\ = (\rgA|sr_out\(22) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(22),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[22]~31_combout\);

-- Location: LCCOMB_X60_Y35_N20
\mux_shift|m_out[21]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[21]~35_combout\ = (\pc|sr_out\(21) & (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(21),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[21]~35_combout\);

-- Location: LCCOMB_X60_Y35_N16
\mux_shift|m_out[20]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[20]~38_combout\ = (\pc|sr_out\(20) & (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(20),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[20]~38_combout\);

-- Location: LCCOMB_X60_Y35_N0
\alu|ShiftLeft0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~46_combout\ = (\mux_shift|m_out[21]~36_combout\) # ((\mux_shift|m_out[23]~30_combout\) # ((\mux_shift|m_out[22]~33_combout\) # (\mux_shift|m_out[20]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[21]~36_combout\,
	datab => \mux_shift|m_out[23]~30_combout\,
	datac => \mux_shift|m_out[22]~33_combout\,
	datad => \mux_shift|m_out[20]~39_combout\,
	combout => \alu|ShiftLeft0~46_combout\);

-- Location: LCFF_X61_Y37_N17
\rgA|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[14]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(14));

-- Location: LCCOMB_X61_Y37_N16
\mux_shift|m_out[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[14]~52_combout\ = (\rgA|sr_out\(14) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(14),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[14]~52_combout\);

-- Location: LCCOMB_X61_Y36_N12
\mux_shift|m_out[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[13]~56_combout\ = (\pc|sr_out\(13) & (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(13),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[13]~56_combout\);

-- Location: LCCOMB_X61_Y36_N24
\mux_shift|m_out[12]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[12]~59_combout\ = (!\ctr_mips|pstate.branch_ex_st~regout\ & (\pc|sr_out\(12) & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \pc|sr_out\(12),
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[12]~59_combout\);

-- Location: LCFF_X62_Y36_N3
\rgA|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[11]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(11));

-- Location: LCCOMB_X62_Y36_N2
\mux_shift|m_out[11]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[11]~61_combout\ = (\rgA|sr_out\(11) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \rgA|sr_out\(11),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[11]~61_combout\);

-- Location: LCFF_X62_Y34_N21
\rgA|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[10]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(10));

-- Location: LCCOMB_X62_Y34_N20
\mux_shift|m_out[10]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[10]~64_combout\ = (\rgA|sr_out\(10) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(10),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[10]~64_combout\);

-- Location: LCCOMB_X62_Y34_N6
\mux_shift|m_out[8]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[8]~71_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\pc|sr_out\(8) & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \pc|sr_out\(8),
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[8]~71_combout\);

-- Location: LCCOMB_X62_Y34_N16
\mux_shift|m_out[7]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[7]~74_combout\ = (\pc|sr_out\(7) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(7),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[7]~74_combout\);

-- Location: LCFF_X58_Y37_N17
\rgA|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(6));

-- Location: LCFF_X62_Y40_N25
\rgA|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(5));

-- Location: LCCOMB_X56_Y37_N4
\alu|ShiftRight1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~42_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[1]~0_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_ulaB|m_out[0]~1_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftRight1~42_combout\);

-- Location: LCCOMB_X62_Y37_N24
\alu|ShiftRight1~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~43_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\mux_ulaB|m_out[3]~4_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\mux_ulaB|m_out[3]~4_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\mux_ulaB|m_out[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_ulaB|m_out[3]~4_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \mux_ulaB|m_out[2]~6_combout\,
	combout => \alu|ShiftRight1~43_combout\);

-- Location: LCCOMB_X57_Y41_N28
\alu|ShiftRight1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~44_combout\ = (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~42_combout\) # ((\alu|ShiftRight1~43_combout\ & \mux_shift|m_out[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~43_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftRight1~42_combout\,
	combout => \alu|ShiftRight1~44_combout\);

-- Location: LCCOMB_X62_Y37_N12
\mux_ulaB|m_out[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[5]~11_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(5))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & ((\ir|sr_out\(5)))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- (\rgB|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(5),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ir|sr_out\(5),
	combout => \mux_ulaB|m_out[5]~11_combout\);

-- Location: LCCOMB_X57_Y41_N6
\alu|ShiftRight1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~46_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight1~44_combout\) # ((\alu|ShiftRight0~114_combout\ & \mux_shift|m_out[2]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~114_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~44_combout\,
	combout => \alu|ShiftRight1~46_combout\);

-- Location: LCCOMB_X63_Y36_N6
\mux_ulaB|m_out[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[14]~19_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(14))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & ((\ir|sr_out\(14)))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- (\rgB|sr_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(14),
	datab => \ir|sr_out\(14),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[14]~19_combout\);

-- Location: LCCOMB_X63_Y36_N24
\mux_ulaB|m_out[10]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[10]~27_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(10))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(10))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- ((\rgB|sr_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(10),
	datab => \rgB|sr_out\(10),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[10]~27_combout\);

-- Location: LCCOMB_X56_Y37_N18
\alu|ShiftRight0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~53_combout\ = (\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(23)))) # (!\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(21),
	datab => \rgB|sr_out\(23),
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftRight0~53_combout\);

-- Location: LCFF_X63_Y37_N27
\ctr_mips|pstate.logic_imm_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.logic_imm_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.logic_imm_st~regout\);

-- Location: LCFF_X58_Y37_N7
\rgA|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[31]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(31));

-- Location: LCCOMB_X62_Y39_N8
\mux_ulaB|m_out[20]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[20]~47_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(20) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(20),
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \mux_ulaB|m_out[20]~47_combout\);

-- Location: LCCOMB_X59_Y34_N26
\alu|ShiftLeft0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~54_combout\ = (\alu|ShiftLeft0~51_combout\) # ((\alu|ShiftLeft0~48_combout\) # ((\mux_shift|m_out[4]~79_combout\) # (!\alu|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~51_combout\,
	datab => \alu|ShiftLeft0~48_combout\,
	datac => \mux_shift|m_out[4]~79_combout\,
	datad => \alu|Mux16~0_combout\,
	combout => \alu|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X60_Y42_N8
\alu|Mux31~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~7_combout\ = (\actr|alu_ctr[2]~26_combout\ & (!\mux_shift|m_out[0]~83_combout\ & ((!\mux_ulaB|m_out[0]~1_combout\)))) # (!\actr|alu_ctr[2]~26_combout\ & (((!\alu|ShiftLeft0~54_combout\ & \mux_ulaB|m_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \alu|ShiftLeft0~54_combout\,
	datad => \mux_ulaB|m_out[0]~1_combout\,
	combout => \alu|Mux31~7_combout\);

-- Location: LCCOMB_X60_Y42_N6
\alu|Mux31~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~8_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|Mux31~7_combout\)) # (!\actr|alu_ctr[0]~32_combout\ & (((\alu|Add1~0_combout\ & !\actr|alu_ctr[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \alu|Mux31~7_combout\,
	datac => \alu|Add1~0_combout\,
	datad => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux31~8_combout\);

-- Location: LCCOMB_X56_Y37_N12
\alu|ShiftRight0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~71_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[2]~6_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~6_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \mux_ulaB|m_out[1]~0_combout\,
	combout => \alu|ShiftRight0~71_combout\);

-- Location: LCCOMB_X54_Y37_N10
\alu|Mux30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~10_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[3]~29_combout\) # ((\mux_ulaB|m_out[1]~0_combout\ & \mux_shift|m_out[1]~87_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & 
-- ((\mux_ulaB|m_out[1]~0_combout\) # (\mux_shift|m_out[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux30~10_combout\);

-- Location: LCCOMB_X56_Y35_N16
\alu|Mux30~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~13_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|tmp[1]~2_combout\ & !\actr|alu_ctr[3]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|tmp[1]~2_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux30~13_combout\);

-- Location: LCCOMB_X57_Y41_N12
\alu|Mux29~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~17_combout\ = (\alu|ShiftRight0~70_combout\ & (\alu|ShiftRight1~43_combout\ & ((!\alu|Mux29~21_combout\)))) # (!\alu|ShiftRight0~70_combout\ & (((\alu|ShiftRight1~109_combout\) # (\alu|Mux29~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~43_combout\,
	datab => \alu|ShiftRight0~70_combout\,
	datac => \alu|ShiftRight1~109_combout\,
	datad => \alu|Mux29~21_combout\,
	combout => \alu|Mux29~17_combout\);

-- Location: LCCOMB_X54_Y38_N28
\alu|ShiftRight1~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~83_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[16]~35_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[15]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \mux_ulaB|m_out[15]~16_combout\,
	combout => \alu|ShiftRight1~83_combout\);

-- Location: LCCOMB_X54_Y38_N14
\alu|ShiftRight1~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~84_combout\ = (!\mux_ulaB|Equal2~2_combout\ & (\rgB|sr_out\(18) & ((\mux_shift|m_out[0]~82_combout\) # (\mux_shift|m_out[0]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \rgB|sr_out\(18),
	datad => \mux_shift|m_out[0]~93_combout\,
	combout => \alu|ShiftRight1~84_combout\);

-- Location: LCCOMB_X54_Y38_N12
\alu|ShiftRight1~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~85_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & (\rgB|sr_out\(17) & !\mux_shift|m_out[0]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \rgB|sr_out\(17),
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftRight1~85_combout\);

-- Location: LCCOMB_X54_Y38_N22
\alu|ShiftRight1~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~86_combout\ = (\alu|ShiftRight1~83_combout\) # ((\mux_shift|m_out[1]~87_combout\ & ((\alu|ShiftRight1~85_combout\) # (\alu|ShiftRight1~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~85_combout\,
	datab => \alu|ShiftRight1~84_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftRight1~83_combout\,
	combout => \alu|ShiftRight1~86_combout\);

-- Location: LCCOMB_X56_Y34_N24
\alu|ShiftRight0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~84_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~86_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight1~86_combout\,
	datad => \alu|ShiftRight1~117_combout\,
	combout => \alu|ShiftRight0~84_combout\);

-- Location: LCCOMB_X57_Y38_N6
\alu|ShiftRight1~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~88_combout\ = (\mux_ulaB|m_out[31]~31_combout\ & ((!\mux_shift|m_out[2]~89_combout\) # (!\mux_shift|m_out[3]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \mux_shift|m_out[2]~89_combout\,
	combout => \alu|ShiftRight1~88_combout\);

-- Location: LCCOMB_X57_Y40_N20
\alu|Mux27~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~2_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_ulaB|m_out[4]~14_combout\ & \mux_shift|m_out[4]~79_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_ulaB|m_out[4]~14_combout\) # (\mux_shift|m_out[4]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_ulaB|m_out[4]~14_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \mux_shift|m_out[4]~79_combout\,
	combout => \alu|Mux27~2_combout\);

-- Location: LCCOMB_X56_Y37_N26
\alu|Mux27~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~10_combout\ = (\mux_shift|m_out[4]~79_combout\) # (((\actr|alu_ctr[1]~31_combout\) # (\mux_ulaB|m_out[4]~14_combout\)) # (!\actr|alu_ctr[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \mux_ulaB|m_out[4]~14_combout\,
	combout => \alu|Mux27~10_combout\);

-- Location: LCCOMB_X61_Y39_N12
\alu|ShiftRight0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~90_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[2]~89_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[1]~87_combout\ & ((\alu|ShiftRight1~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \rgB|sr_out\(31),
	datac => \alu|ShiftRight1~51_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~90_combout\);

-- Location: LCCOMB_X62_Y40_N6
\alu|Mux26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~6_combout\ = (\mux_ulaB|m_out[5]~12_combout\) # ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[5]~77_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~12_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_shift|m_out[5]~77_combout\,
	combout => \alu|Mux26~6_combout\);

-- Location: LCCOMB_X54_Y37_N6
\alu|ShiftLeft0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~70_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~59_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~157_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftLeft0~59_combout\,
	datac => \alu|ShiftLeft0~157_combout\,
	datad => \mux_shift|m_out[3]~91_combout\,
	combout => \alu|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X60_Y41_N4
\alu|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[6]~76_combout\ & \mux_ulaB|m_out[6]~10_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[6]~76_combout\) # (\mux_ulaB|m_out[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[6]~76_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_ulaB|m_out[6]~10_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux25~0_combout\);

-- Location: LCCOMB_X57_Y41_N10
\alu|ShiftRight0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~98_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight1~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight1~107_combout\,
	combout => \alu|ShiftRight0~98_combout\);

-- Location: LCCOMB_X60_Y41_N10
\alu|Mux25~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~6_combout\ = (\mux_shift|m_out[6]~76_combout\) # (((\mux_ulaB|m_out[6]~10_combout\) # (\actr|alu_ctr[1]~31_combout\)) # (!\actr|alu_ctr[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[6]~76_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_ulaB|m_out[6]~10_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux25~6_combout\);

-- Location: LCCOMB_X62_Y41_N24
\alu|a32~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~16_combout\ = \mux_shift|m_out[7]~75_combout\ $ (\mux_ulaB|m_out[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[7]~75_combout\,
	datad => \mux_ulaB|m_out[7]~8_combout\,
	combout => \alu|a32~16_combout\);

-- Location: LCCOMB_X54_Y38_N8
\alu|ShiftRight0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~102_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight1~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftRight1~113_combout\,
	datad => \mux_shift|m_out[2]~89_combout\,
	combout => \alu|ShiftRight0~102_combout\);

-- Location: LCCOMB_X54_Y38_N10
\alu|ShiftRight0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~103_combout\ = (\alu|ShiftRight0~102_combout\) # ((!\mux_shift|m_out[2]~89_combout\ & \alu|ShiftRight1~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~102_combout\,
	datad => \alu|ShiftRight1~86_combout\,
	combout => \alu|ShiftRight0~103_combout\);

-- Location: LCCOMB_X62_Y41_N6
\alu|Mux24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~6_combout\ = ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[7]~75_combout\) # (\mux_ulaB|m_out[7]~8_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \mux_shift|m_out[7]~75_combout\,
	datad => \mux_ulaB|m_out[7]~8_combout\,
	combout => \alu|Mux24~6_combout\);

-- Location: LCCOMB_X62_Y38_N24
\alu|Mux23~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~6_combout\ = ((\mux_shift|m_out[8]~72_combout\) # ((\mux_ulaB|m_out[8]~30_combout\) # (\actr|alu_ctr[1]~31_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[8]~72_combout\,
	datac => \mux_ulaB|m_out[8]~30_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux23~6_combout\);

-- Location: LCCOMB_X58_Y34_N10
\alu|a32~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~18_combout\ = \mux_shift|m_out[9]~69_combout\ $ (\mux_ulaB|m_out[9]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[9]~69_combout\,
	datad => \mux_ulaB|m_out[9]~26_combout\,
	combout => \alu|a32~18_combout\);

-- Location: LCCOMB_X58_Y34_N12
\alu|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[9]~69_combout\ & \mux_ulaB|m_out[9]~26_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[9]~69_combout\) # (\mux_ulaB|m_out[9]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[9]~69_combout\,
	datab => \mux_ulaB|m_out[9]~26_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux22~0_combout\);

-- Location: LCCOMB_X58_Y34_N6
\alu|Mux22~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~9_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~121_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight0~123_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~123_combout\,
	datad => \alu|ShiftRight0~121_combout\,
	combout => \alu|Mux22~9_combout\);

-- Location: LCCOMB_X59_Y40_N6
\alu|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[10]~66_combout\ & \mux_ulaB|m_out[10]~28_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[10]~66_combout\) # (\mux_ulaB|m_out[10]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[10]~66_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_ulaB|m_out[10]~28_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux21~0_combout\);

-- Location: LCCOMB_X59_Y40_N12
\alu|Mux21~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~5_combout\ = (\mux_shift|m_out[10]~66_combout\) # ((\mux_ulaB|m_out[10]~28_combout\) # ((\actr|alu_ctr[1]~31_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[10]~66_combout\,
	datab => \mux_ulaB|m_out[10]~28_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux21~5_combout\);

-- Location: LCCOMB_X57_Y34_N14
\alu|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~0_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftRight0~82_combout\,
	datad => \mux_shift|m_out[3]~91_combout\,
	combout => \alu|Mux20~0_combout\);

-- Location: LCCOMB_X57_Y34_N20
\alu|Mux20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~1_combout\ = (!\alu|Mux29~19_combout\ & ((\alu|Mux20~0_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight0~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux20~0_combout\,
	datad => \alu|ShiftRight0~84_combout\,
	combout => \alu|Mux20~1_combout\);

-- Location: LCCOMB_X57_Y34_N16
\alu|a32~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~20_combout\ = \mux_ulaB|m_out[11]~24_combout\ $ (\mux_shift|m_out[11]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[11]~24_combout\,
	datad => \mux_shift|m_out[11]~63_combout\,
	combout => \alu|a32~20_combout\);

-- Location: LCCOMB_X57_Y34_N30
\alu|Mux20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~2_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_shift|m_out[11]~63_combout\ & ((\mux_ulaB|m_out[11]~24_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_shift|m_out[11]~63_combout\ & (\mux_ulaB|m_out[11]~24_combout\ & !\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[11]~63_combout\,
	datab => \mux_ulaB|m_out[11]~24_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux20~2_combout\);

-- Location: LCCOMB_X60_Y42_N30
\alu|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[12]~60_combout\ & \mux_ulaB|m_out[12]~22_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[12]~60_combout\) # (\mux_ulaB|m_out[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[12]~60_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \mux_ulaB|m_out[12]~22_combout\,
	combout => \alu|Mux19~0_combout\);

-- Location: LCCOMB_X53_Y39_N8
\alu|Mux19~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~8_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~59_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~115_combout\,
	datad => \alu|ShiftRight0~59_combout\,
	combout => \alu|Mux19~8_combout\);

-- Location: LCCOMB_X57_Y41_N18
\alu|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~0_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~91_combout\,
	combout => \alu|Mux18~0_combout\);

-- Location: LCCOMB_X57_Y36_N10
\alu|a32~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~22_combout\ = \mux_shift|m_out[13]~57_combout\ $ (\mux_ulaB|m_out[13]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[13]~57_combout\,
	datac => \mux_ulaB|m_out[13]~18_combout\,
	combout => \alu|a32~22_combout\);

-- Location: LCCOMB_X58_Y42_N0
\alu|ShiftRight0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~110_combout\ = (\alu|ShiftRight0~70_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[1]~87_combout\ & ((\alu|ShiftRight1~51_combout\))))) # (!\alu|ShiftRight0~70_combout\ & (\rgB|sr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \alu|ShiftRight1~51_combout\,
	datac => \alu|ShiftRight0~70_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~110_combout\);

-- Location: LCCOMB_X58_Y42_N6
\alu|ShiftRight0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~111_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \alu|ShiftRight0~110_combout\,
	combout => \alu|ShiftRight0~111_combout\);

-- Location: LCCOMB_X54_Y34_N28
\alu|Mux16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~2_combout\ = (\mux_ulaB|m_out[31]~36_combout\ & (!\actr|alu_ctr[3]~29_combout\ & !\alu|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux16~2_combout\);

-- Location: LCCOMB_X54_Y34_N26
\alu|Mux16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~3_combout\ = (\alu|Mux16~2_combout\) # ((!\mux_shift|m_out[15]~51_combout\ & (\actr|alu_ctr[3]~29_combout\ & !\mux_ulaB|m_out[15]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[15]~51_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \mux_ulaB|m_out[15]~16_combout\,
	datad => \alu|Mux16~2_combout\,
	combout => \alu|Mux16~3_combout\);

-- Location: LCCOMB_X54_Y34_N24
\alu|Mux16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~4_combout\ = (\alu|Mux16~1_combout\ & (\actr|alu_ctr[0]~32_combout\ $ ((!\actr|alu_ctr[3]~29_combout\)))) # (!\alu|Mux16~1_combout\ & (\alu|Mux16~3_combout\ & (\actr|alu_ctr[0]~32_combout\ $ (!\actr|alu_ctr[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \alu|Mux16~1_combout\,
	datad => \alu|Mux16~3_combout\,
	combout => \alu|Mux16~4_combout\);

-- Location: LCCOMB_X59_Y34_N28
\alu|Mux16~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~6_combout\ = (\alu|Mux30~16_combout\ & (\mux_ulaB|m_out[31]~36_combout\ & (\mux_shift|m_out[4]~79_combout\ & \alu|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~16_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \mux_shift|m_out[4]~79_combout\,
	datad => \alu|Mux16~0_combout\,
	combout => \alu|Mux16~6_combout\);

-- Location: LCCOMB_X56_Y34_N10
\alu|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~1_combout\ = (\alu|Mux16~2_combout\) # ((!\mux_shift|m_out[16]~6_combout\ & (\actr|alu_ctr[3]~29_combout\ & !\mux_ulaB|m_out[16]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[16]~6_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \alu|Mux16~2_combout\,
	combout => \alu|Mux15~1_combout\);

-- Location: LCCOMB_X56_Y34_N20
\alu|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~2_combout\ = (\alu|Mux15~1_combout\ & (\actr|alu_ctr[3]~29_combout\ $ ((!\actr|alu_ctr[0]~32_combout\)))) # (!\alu|Mux15~1_combout\ & (\alu|Mux15~0_combout\ & (\actr|alu_ctr[3]~29_combout\ $ (!\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux15~1_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux15~0_combout\,
	combout => \alu|Mux15~2_combout\);

-- Location: LCCOMB_X56_Y39_N10
\alu|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~2_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_ulaB|m_out[17]~32_combout\ & ((\mux_shift|m_out[17]~48_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_ulaB|m_out[17]~32_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_shift|m_out[17]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \mux_ulaB|m_out[17]~32_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_shift|m_out[17]~48_combout\,
	combout => \alu|Mux14~2_combout\);

-- Location: LCCOMB_X56_Y36_N6
\alu|ShiftLeft0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~105_combout\ = (\mux_shift|m_out[1]~86_combout\ & (\mux_ulaB|m_out[15]~16_combout\)) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[15]~16_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\mux_ulaB|m_out[17]~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_ulaB|m_out[15]~16_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_ulaB|m_out[17]~32_combout\,
	combout => \alu|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X56_Y40_N12
\alu|Mux14~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~7_combout\ = (\alu|Mux8~20_combout\ & ((\alu|Mux8~9_combout\ & ((\alu|Mux14~6_combout\))) # (!\alu|Mux8~9_combout\ & (\alu|ShiftLeft0~56_combout\)))) # (!\alu|Mux8~20_combout\ & (((\alu|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~20_combout\,
	datab => \alu|ShiftLeft0~56_combout\,
	datac => \alu|Mux8~9_combout\,
	datad => \alu|Mux14~6_combout\,
	combout => \alu|Mux14~7_combout\);

-- Location: LCCOMB_X53_Y39_N24
\alu|ShiftLeft0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~108_combout\ = (!\mux_ulaB|Equal2~2_combout\ & (\rgB|sr_out\(17) & ((\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \rgB|sr_out\(17),
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X56_Y39_N12
\alu|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~4_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_shift|m_out[18]~45_combout\ & ((\mux_ulaB|m_out[18]~49_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_shift|m_out[18]~45_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_ulaB|m_out[18]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \mux_shift|m_out[18]~45_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_ulaB|m_out[18]~49_combout\,
	combout => \alu|Mux13~4_combout\);

-- Location: LCCOMB_X61_Y39_N26
\alu|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~4_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_ulaB|m_out[19]~48_combout\ & ((\mux_shift|m_out[19]~42_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_ulaB|m_out[19]~48_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_shift|m_out[19]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[19]~48_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_shift|m_out[19]~42_combout\,
	combout => \alu|Mux12~4_combout\);

-- Location: LCCOMB_X56_Y41_N10
\alu|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~0_combout\ = (\mux_ulaB|m_out[20]~47_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_shift|m_out[20]~39_combout\))) # (!\mux_ulaB|m_out[20]~47_combout\ & ((\mux_shift|m_out[20]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \mux_ulaB|m_out[20]~47_combout\,
	datac => \mux_shift|m_out[20]~39_combout\,
	combout => \alu|Mux11~0_combout\);

-- Location: LCCOMB_X56_Y35_N14
\alu|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~4_combout\ = (\actr|alu_ctr[1]~31_combout\ & (\actr|alu_ctr[0]~32_combout\)) # (!\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[0]~32_combout\ & (\mux_ulaB|m_out[20]~47_combout\ & \mux_shift|m_out[20]~39_combout\)) # 
-- (!\actr|alu_ctr[0]~32_combout\ & ((\mux_ulaB|m_out[20]~47_combout\) # (\mux_shift|m_out[20]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_ulaB|m_out[20]~47_combout\,
	datad => \mux_shift|m_out[20]~39_combout\,
	combout => \alu|Mux11~4_combout\);

-- Location: LCCOMB_X57_Y40_N24
\alu|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~4_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[21]~36_combout\ & \mux_ulaB|m_out[21]~46_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[21]~36_combout\) # (\mux_ulaB|m_out[21]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[21]~36_combout\,
	datac => \mux_ulaB|m_out[21]~46_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux10~4_combout\);

-- Location: LCCOMB_X56_Y38_N24
\alu|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~1_combout\ = (\alu|Mux8~9_combout\ & ((\alu|Mux9~0_combout\) # ((!\alu|Mux8~20_combout\)))) # (!\alu|Mux8~9_combout\ & (((\alu|ShiftLeft0~70_combout\ & \alu|Mux8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~9_combout\,
	datab => \alu|Mux9~0_combout\,
	datac => \alu|ShiftLeft0~70_combout\,
	datad => \alu|Mux8~20_combout\,
	combout => \alu|Mux9~1_combout\);

-- Location: LCCOMB_X56_Y35_N20
\alu|Mux8~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~14_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_ulaB|m_out[23]~44_combout\ & ((\mux_shift|m_out[23]~30_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_ulaB|m_out[23]~44_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_shift|m_out[23]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \mux_ulaB|m_out[23]~44_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_shift|m_out[23]~30_combout\,
	combout => \alu|Mux8~14_combout\);

-- Location: LCCOMB_X58_Y40_N10
\alu|ShiftLeft0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~131_combout\ = (!\mux_shift|m_out[3]~91_combout\ & !\mux_shift|m_out[4]~79_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datad => \mux_shift|m_out[4]~79_combout\,
	combout => \alu|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X60_Y36_N20
\alu|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~2_combout\ = (\actr|alu_ctr[1]~31_combout\ & (\actr|alu_ctr[0]~32_combout\)) # (!\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[0]~32_combout\ & (\mux_shift|m_out[24]~27_combout\ & \mux_ulaB|m_out[24]~43_combout\)) # 
-- (!\actr|alu_ctr[0]~32_combout\ & ((\mux_shift|m_out[24]~27_combout\) # (\mux_ulaB|m_out[24]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_shift|m_out[24]~27_combout\,
	datad => \mux_ulaB|m_out[24]~43_combout\,
	combout => \alu|Mux7~2_combout\);

-- Location: LCCOMB_X58_Y34_N8
\alu|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~0_combout\ = (\alu|Mux4~2_combout\ & (((!\alu|ShiftLeft0~131_combout\)))) # (!\alu|Mux4~2_combout\ & ((\alu|ShiftLeft0~131_combout\ & (\alu|ShiftLeft0~137_combout\)) # (!\alu|ShiftLeft0~131_combout\ & ((\alu|ShiftLeft0~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~137_combout\,
	datab => \alu|Mux4~2_combout\,
	datac => \alu|ShiftLeft0~131_combout\,
	datad => \alu|ShiftLeft0~106_combout\,
	combout => \alu|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y34_N18
\alu|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~1_combout\ = (\alu|Mux4~2_combout\ & ((\alu|Mux6~0_combout\ & ((\alu|ShiftLeft0~78_combout\))) # (!\alu|Mux6~0_combout\ & (\alu|ShiftLeft0~121_combout\)))) # (!\alu|Mux4~2_combout\ & (((\alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~121_combout\,
	datab => \alu|Mux4~2_combout\,
	datac => \alu|Mux6~0_combout\,
	datad => \alu|ShiftLeft0~78_combout\,
	combout => \alu|Mux6~1_combout\);

-- Location: LCCOMB_X60_Y34_N24
\alu|Mux6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~7_combout\ = (\mux_shift|m_out[25]~24_combout\) # ((\actr|alu_ctr[1]~31_combout\) # ((\mux_ulaB|m_out[25]~42_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[25]~24_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_ulaB|m_out[25]~42_combout\,
	combout => \alu|Mux6~7_combout\);

-- Location: LCCOMB_X60_Y41_N24
\alu|ShiftLeft0~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~140_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(25))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(25)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \rgB|sr_out\(27),
	datac => \mux_shift|m_out[1]~86_combout\,
	datad => \rgB|sr_out\(25),
	combout => \alu|ShiftLeft0~140_combout\);

-- Location: LCCOMB_X59_Y35_N16
\alu|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~5_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[27]~18_combout\ & \mux_ulaB|m_out[27]~40_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[27]~18_combout\) # (\mux_ulaB|m_out[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[27]~18_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_ulaB|m_out[27]~40_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux4~5_combout\);

-- Location: LCCOMB_X58_Y42_N24
\alu|Mux3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~9_combout\ = (\actr|alu_ctr[2]~26_combout\) # ((\actr|alu_ctr[0]~32_combout\ & \mux_shift|m_out[4]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[4]~79_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux3~9_combout\);

-- Location: LCCOMB_X58_Y42_N16
\alu|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~7_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[29]~12_combout\ & \mux_ulaB|m_out[29]~38_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[29]~12_combout\) # (\mux_ulaB|m_out[29]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[29]~12_combout\,
	datac => \mux_ulaB|m_out[29]~38_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux2~7_combout\);

-- Location: LCCOMB_X58_Y41_N26
\alu|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~3_combout\ = (\alu|ShiftLeft0~52_combout\ & ((\alu|Mux16~0_combout\ & ((\rgB|sr_out\(30)))) # (!\alu|Mux16~0_combout\ & (\rgB|sr_out\(31))))) # (!\alu|ShiftLeft0~52_combout\ & (\rgB|sr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \rgB|sr_out\(30),
	datac => \alu|ShiftLeft0~52_combout\,
	datad => \alu|Mux16~0_combout\,
	combout => \alu|Mux1~3_combout\);

-- Location: LCCOMB_X58_Y41_N28
\alu|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~4_combout\ = (!\actr|alu_ctr[3]~29_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|Mux1~3_combout\,
	combout => \alu|Mux1~4_combout\);

-- Location: LCCOMB_X57_Y41_N2
\alu|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~5_combout\ = (\actr|alu_ctr[3]~29_combout\ & (\actr|alu_ctr[0]~32_combout\ & ((\alu|Mux1~13_combout\) # (\alu|Mux1~4_combout\)))) # (!\actr|alu_ctr[3]~29_combout\ & (((!\actr|alu_ctr[0]~32_combout\ & \alu|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~29_combout\,
	datab => \alu|Mux1~13_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux1~4_combout\,
	combout => \alu|Mux1~5_combout\);

-- Location: LCCOMB_X54_Y34_N10
\alu|ShiftLeft0~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~151_combout\ = (\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftLeft0~96_combout\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftLeft0~96_combout\,
	datac => \alu|ShiftLeft0~98_combout\,
	combout => \alu|ShiftLeft0~151_combout\);

-- Location: LCCOMB_X58_Y41_N10
\alu|ShiftLeft0~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~152_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(30)))) # (!\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \rgB|sr_out\(30),
	combout => \alu|ShiftLeft0~152_combout\);

-- Location: LCCOMB_X58_Y41_N12
\alu|ShiftLeft0~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~153_combout\ = (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~152_combout\) # ((\alu|ShiftLeft0~144_combout\ & \mux_shift|m_out[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~152_combout\,
	datab => \alu|ShiftLeft0~144_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~153_combout\);

-- Location: LCCOMB_X57_Y41_N8
\alu|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~5_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftLeft0~153_combout\) # ((\alu|ShiftLeft0~174_combout\ & \mux_shift|m_out[2]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~174_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftLeft0~153_combout\,
	combout => \alu|Mux0~5_combout\);

-- Location: LCCOMB_X56_Y39_N8
\alu|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~6_combout\ = (\mux_shift|m_out[3]~91_combout\ & (((\alu|ShiftLeft0~130_combout\)))) # (!\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \alu|ShiftLeft0~130_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|Mux0~5_combout\,
	combout => \alu|Mux0~6_combout\);

-- Location: LCCOMB_X56_Y35_N26
\alu|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~7_combout\ = (!\alu|ShiftLeft0~53_combout\ & ((\mux_shift|m_out[4]~79_combout\ & (\alu|ShiftLeft0~151_combout\)) # (!\mux_shift|m_out[4]~79_combout\ & ((\alu|Mux0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \alu|ShiftLeft0~53_combout\,
	datac => \alu|ShiftLeft0~151_combout\,
	datad => \alu|Mux0~6_combout\,
	combout => \alu|Mux0~7_combout\);

-- Location: LCFF_X65_Y39_N17
\bcoreg|breg32_rtl_0_bypass[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux_reg_add|m_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(1));

-- Location: LCFF_X65_Y36_N3
\bcoreg|breg32_rtl_0_bypass[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(5));

-- Location: LCCOMB_X66_Y37_N24
\ctr_mips|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux5~1_combout\ = (\ir|sr_out\(28) & ((\ir|sr_out\(29) $ (\ir|sr_out\(31))))) # (!\ir|sr_out\(28) & ((\ir|sr_out\(31)) # ((!\ir|sr_out\(26) & \ir|sr_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(26),
	datab => \ir|sr_out\(28),
	datac => \ir|sr_out\(29),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|Mux5~1_combout\);

-- Location: LCCOMB_X61_Y38_N22
\alu|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~5_combout\ = (!\alu|Mux10~8_combout\ & !\alu|Mux9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|Mux10~8_combout\,
	datad => \alu|Mux9~8_combout\,
	combout => \alu|Equal0~5_combout\);

-- Location: LCCOMB_X61_Y38_N12
\alu|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~6_combout\ = (!\alu|Mux7~combout\ & (!\alu|Mux4~combout\ & (!\alu|Mux20~10_combout\ & \alu|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux7~combout\,
	datab => \alu|Mux4~combout\,
	datac => \alu|Mux20~10_combout\,
	datad => \alu|Equal0~5_combout\,
	combout => \alu|Equal0~6_combout\);

-- Location: LCCOMB_X65_Y35_N22
\bcoreg|regA[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[28]~3_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(39)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a28\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(39),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[28]~3_combout\);

-- Location: LCCOMB_X61_Y34_N16
\bcoreg|regA[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[26]~5_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(37))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(37),
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a26\,
	combout => \bcoreg|regA[26]~5_combout\);

-- Location: LCFF_X60_Y34_N15
\bcoreg|breg32_rtl_1_bypass[36]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[36]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(36));

-- Location: LCCOMB_X62_Y36_N8
\bcoreg|regA[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[24]~7_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(35))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(35),
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a24\,
	combout => \bcoreg|regA[24]~7_combout\);

-- Location: LCFF_X60_Y36_N15
\regULA|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(24));

-- Location: LCFF_X60_Y35_N3
\regULA|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux8~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(23));

-- Location: LCCOMB_X61_Y35_N26
\bcoreg|regA[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[22]~9_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(33))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(33),
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a22\,
	combout => \bcoreg|regA[22]~9_combout\);

-- Location: LCFF_X65_Y35_N11
\bcoreg|breg32_rtl_1_bypass[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[19]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(30));

-- Location: LCCOMB_X62_Y36_N10
\bcoreg|regA[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[14]~16_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(25))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(25),
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a14\,
	combout => \bcoreg|regA[14]~16_combout\);

-- Location: LCCOMB_X62_Y36_N6
\bcoreg|regA[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[11]~19_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(22))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(22),
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a11\,
	combout => \bcoreg|regA[11]~19_combout\);

-- Location: LCFF_X65_Y34_N7
\bcoreg|breg32_rtl_1_bypass[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[10]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(21));

-- Location: LCCOMB_X61_Y34_N4
\bcoreg|regA[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[10]~20_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(21)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a10\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(21),
	combout => \bcoreg|regA[10]~20_combout\);

-- Location: LCFF_X65_Y36_N23
\bcoreg|breg32_rtl_1_bypass[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[6]~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(17));

-- Location: LCCOMB_X58_Y37_N16
\bcoreg|regA[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[6]~24_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(17))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(17),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a6\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[6]~24_combout\);

-- Location: LCFF_X62_Y38_N29
\regULA|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux25~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(6));

-- Location: LCCOMB_X62_Y40_N24
\bcoreg|regA[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[5]~25_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(16)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a5\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(16),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[5]~25_combout\);

-- Location: LCFF_X63_Y38_N13
\regULA|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(5));

-- Location: LCCOMB_X65_Y39_N22
\bcoreg|breg32~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~42_combout\ = (\bcoreg|breg32_rtl_0_bypass\(1) & (\ir|sr_out\(16) & (\bcoreg|breg32_rtl_0_bypass\(3) $ (!\ir|sr_out\(17))))) # (!\bcoreg|breg32_rtl_0_bypass\(1) & (!\ir|sr_out\(16) & (\bcoreg|breg32_rtl_0_bypass\(3) $ (!\ir|sr_out\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(1),
	datab => \bcoreg|breg32_rtl_0_bypass\(3),
	datac => \ir|sr_out\(17),
	datad => \ir|sr_out\(16),
	combout => \bcoreg|breg32~42_combout\);

-- Location: LCCOMB_X62_Y36_N22
\ctr_mips|WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideNor0~1_combout\ = (\ctr_mips|pstate.fetch_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.decode_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \ctr_mips|WideNor0~1_combout\);

-- Location: LCFF_X62_Y40_N11
\bcoreg|breg32_rtl_1_bypass[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[3]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(14));

-- Location: LCFF_X61_Y40_N11
\bcoreg|breg32_rtl_1_bypass[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(13));

-- Location: LCCOMB_X63_Y37_N26
\ctr_mips|nstate.logic_imm_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.logic_imm_st~0_combout\ = (\ir|sr_out\(28) & (\ctr_mips|pstate.c_mem_add_st~regout\ & \ctr_mips|nstate.arith_imm_st~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(28),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|nstate.arith_imm_st~1_combout\,
	combout => \ctr_mips|nstate.logic_imm_st~0_combout\);

-- Location: LCCOMB_X58_Y37_N6
\bcoreg|regA[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[31]~31_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(42))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(42),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a31\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[31]~31_combout\);

-- Location: LCFF_X56_Y35_N9
\regULA|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(31));

-- Location: LCFF_X65_Y37_N23
\rdm|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(9));

-- Location: LCFF_X63_Y37_N11
\rdm|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(7));

-- Location: LCFF_X63_Y37_N31
\rdm|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(0));

-- Location: LCFF_X63_Y40_N19
\rdm|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(2));

-- Location: LCCOMB_X56_Y35_N30
\alu|Mux30~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~15_combout\ = (!\mux_ulaB|m_out[1]~0_combout\ & (!\mux_shift|m_out[1]~94_combout\ & (!\mux_shift|m_out[1]~86_combout\ & \actr|alu_ctr[3]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_shift|m_out[1]~86_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux30~15_combout\);

-- Location: LCCOMB_X59_Y34_N6
\alu|Mux30~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~16_combout\ = (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & (!\alu|ShiftLeft0~51_combout\ & !\alu|ShiftLeft0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \alu|ShiftLeft0~51_combout\,
	datad => \alu|ShiftLeft0~48_combout\,
	combout => \alu|Mux30~16_combout\);

-- Location: LCCOMB_X60_Y40_N20
\alu|ShiftRight1~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~104_combout\ = (!\mux_shift|m_out[1]~86_combout\ & (\alu|ShiftRight1~51_combout\ & (!\mux_shift|m_out[1]~94_combout\ & !\mux_ulaB|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \alu|ShiftRight1~51_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \alu|ShiftRight1~104_combout\);

-- Location: LCCOMB_X56_Y37_N6
\alu|ShiftRight1~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~116_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftRight0~46_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\alu|ShiftRight0~46_combout\))) # (!\mux_shift|m_out[0]~93_combout\ & 
-- (\alu|ShiftRight1~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight1~75_combout\,
	datad => \alu|ShiftRight0~46_combout\,
	combout => \alu|ShiftRight1~116_combout\);

-- Location: LCCOMB_X61_Y40_N28
\alu|ShiftRight1~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~118_combout\ = (\mux_shift|m_out[2]~89_combout\ & (!\mux_shift|m_out[1]~94_combout\ & !\mux_shift|m_out[1]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~118_combout\);

-- Location: LCCOMB_X59_Y42_N14
\alu|Mux14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~12_combout\ = (\ctr_mips|pstate.rtype_ex_st~regout\ & (!\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[3]~35_combout\) # (\ir|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \actr|alu_ctr[3]~35_combout\,
	datac => \ir|sr_out\(4),
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux14~12_combout\);

-- Location: LCCOMB_X60_Y36_N24
\alu|a32~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~24_combout\ = \mux_shift|m_out[24]~27_combout\ $ (((\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(24) & !\mux_ulaB|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \rgB|sr_out\(24),
	datac => \mux_shift|m_out[24]~27_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \alu|a32~24_combout\);

-- Location: LCCOMB_X60_Y41_N22
\alu|ShiftLeft0~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~174_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~139_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~139_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~140_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftLeft0~139_combout\,
	combout => \alu|ShiftLeft0~174_combout\);

-- Location: LCCOMB_X59_Y35_N24
\alu|a32~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~27_combout\ = \mux_shift|m_out[27]~18_combout\ $ (((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[27]~18_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \rgB|sr_out\(27),
	combout => \alu|a32~27_combout\);

-- Location: LCCOMB_X58_Y41_N14
\alu|Mux1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~13_combout\ = (!\mux_shift|m_out[30]~9_combout\ & (!\mux_ulaB|m_out[31]~31_combout\ & ((\mux_ulaB|Equal2~2_combout\) # (!\rgB|sr_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[30]~9_combout\,
	datab => \rgB|sr_out\(30),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \alu|Mux1~13_combout\);

-- Location: LCCOMB_X54_Y39_N10
\alu|a32~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~28_combout\ = \mux_shift|m_out[30]~9_combout\ $ (((\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(30) & !\mux_ulaB|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_shift|m_out[30]~9_combout\,
	combout => \alu|a32~28_combout\);

-- Location: LCCOMB_X56_Y35_N24
\alu|Mux0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~9_combout\ = (\mux_shift|m_out[31]~92_combout\ & (!\actr|alu_ctr[2]~26_combout\ & !\mux_ulaB|m_out[31]~36_combout\)) # (!\mux_shift|m_out[31]~92_combout\ & (\actr|alu_ctr[2]~26_combout\ $ (\mux_ulaB|m_out[31]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[31]~92_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \mux_ulaB|m_out[31]~36_combout\,
	combout => \alu|Mux0~9_combout\);

-- Location: LCCOMB_X56_Y35_N6
\alu|Mux0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~10_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[2]~26_combout\ & (\alu|Mux0~9_combout\)) # (!\actr|alu_ctr[2]~26_combout\ & ((\alu|Mux0~7_combout\))))) # (!\actr|alu_ctr[0]~32_combout\ & (\alu|Mux0~9_combout\ & 
-- (!\actr|alu_ctr[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux0~9_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \alu|Mux0~7_combout\,
	combout => \alu|Mux0~10_combout\);

-- Location: LCCOMB_X65_Y37_N22
\rdm|sr_out[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[9]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(9),
	combout => \rdm|sr_out[9]~feeder_combout\);

-- Location: LCCOMB_X65_Y36_N2
\bcoreg|breg32_rtl_0_bypass[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\ = \mux_reg_add|m_out[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mux_reg_add|m_out[2]~2_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[5]~feeder_combout\);

-- Location: LCCOMB_X60_Y34_N14
\bcoreg|breg32_rtl_1_bypass[36]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[36]~feeder_combout\ = \breg_data_mux|m_out[25]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \breg_data_mux|m_out[25]~6_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[36]~feeder_combout\);

-- Location: LCCOMB_X61_Y40_N10
\bcoreg|breg32_rtl_1_bypass[13]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[13]~feeder_combout\ = \breg_data_mux|m_out[2]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \breg_data_mux|m_out[2]~30_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[13]~feeder_combout\);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_rom~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_rom,
	combout => \clk_rom~combout\);

-- Location: CLKCTRL_G1
\clk_rom~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_rom~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_rom~clkctrl_outclk\);

-- Location: LCCOMB_X61_Y38_N10
\ctr_mips|pstate.decode_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|pstate.decode_st~0_combout\ = !\ctr_mips|pstate.fetch_st~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr_mips|pstate.fetch_st~regout\,
	combout => \ctr_mips|pstate.decode_st~0_combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G2
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X62_Y37_N13
\ctr_mips|pstate.decode_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|pstate.decode_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.decode_st~regout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X62_Y37_N14
\ctr_mips|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideNor0~0_combout\ = (!\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \ctr_mips|WideNor0~0_combout\);

-- Location: LCCOMB_X62_Y38_N4
\pc|sr_out[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[6]~24_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(6))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux25~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(6),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux25~combout\,
	combout => \pc|sr_out[6]~24_combout\);

-- Location: LCCOMB_X62_Y39_N2
\mux_ulaB|m_out[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[31]~31_combout\ = (\ir|sr_out\(15) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[31]~31_combout\);

-- Location: LCCOMB_X66_Y37_N14
\ctr_mips|nstate.rtype_ex_st~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.rtype_ex_st~3_combout\ = (!\ir|sr_out\(27) & (!\ir|sr_out\(31) & (!\ir|sr_out\(30) & \ctr_mips|nstate.rtype_ex_st~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(27),
	datab => \ir|sr_out\(31),
	datac => \ir|sr_out\(30),
	datad => \ctr_mips|nstate.rtype_ex_st~2_combout\,
	combout => \ctr_mips|nstate.rtype_ex_st~3_combout\);

-- Location: LCFF_X61_Y37_N29
\ctr_mips|pstate.rtype_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|nstate.rtype_ex_st~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.rtype_ex_st~regout\);

-- Location: LCFF_X63_Y37_N25
\ir|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(0));

-- Location: LCCOMB_X61_Y37_N14
\actr|alu_ctr~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~24_combout\ = (!\ir|sr_out\(3) & (\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ir|sr_out\(4) & !\ir|sr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(3),
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ir|sr_out\(4),
	datad => \ir|sr_out\(0),
	combout => \actr|alu_ctr~24_combout\);

-- Location: LCCOMB_X63_Y37_N10
\mux_ulaB|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|Equal2~2_combout\ = (\ctr_mips|pstate.decode_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (!\ctr_mips|pstate.fetch_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|Equal2~2_combout\);

-- Location: LCFF_X63_Y35_N1
\ctr_mips|pstate.writereg_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|pstate.rtype_ex_st~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.writereg_st~regout\);

-- Location: LCCOMB_X66_Y37_N18
\ctr_mips|nstate.arith_imm_st~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.arith_imm_st~1_combout\ = (\ir|sr_out\(29) & (!\ir|sr_out\(30) & (!\ir|sr_out\(27) & !\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(30),
	datac => \ir|sr_out\(27),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|nstate.arith_imm_st~1_combout\);

-- Location: LCCOMB_X66_Y37_N30
\ctr_mips|nstate.arith_imm_st~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.arith_imm_st~2_combout\ = (!\ir|sr_out\(26) & (!\ir|sr_out\(28) & (\ctr_mips|pstate.c_mem_add_st~regout\ & \ctr_mips|nstate.arith_imm_st~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(26),
	datab => \ir|sr_out\(28),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|nstate.arith_imm_st~1_combout\,
	combout => \ctr_mips|nstate.arith_imm_st~2_combout\);

-- Location: LCFF_X66_Y37_N31
\ctr_mips|pstate.arith_imm_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.arith_imm_st~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.arith_imm_st~regout\);

-- Location: LCCOMB_X66_Y37_N12
\ctr_mips|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideOr1~0_combout\ = (\ctr_mips|pstate.logic_imm_st~regout\) # ((\ctr_mips|pstate.writereg_st~regout\) # ((\ctr_mips|pstate.ldreg_st~regout\) # (\ctr_mips|pstate.arith_imm_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.logic_imm_st~regout\,
	datab => \ctr_mips|pstate.writereg_st~regout\,
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \ctr_mips|pstate.arith_imm_st~regout\,
	combout => \ctr_mips|WideOr1~0_combout\);

-- Location: LCCOMB_X62_Y34_N10
\bcoreg|breg32_rtl_0_bypass[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_0_bypass[0]~feeder_combout\ = \ctr_mips|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctr_mips|WideOr1~0_combout\,
	combout => \bcoreg|breg32_rtl_0_bypass[0]~feeder_combout\);

-- Location: LCFF_X62_Y34_N11
\bcoreg|breg32_rtl_0_bypass[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_0_bypass[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(0));

-- Location: LCFF_X62_Y38_N31
\regULA|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux23~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(8));

-- Location: LCCOMB_X63_Y38_N0
\rdm|sr_out[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[20]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(20),
	combout => \rdm|sr_out[20]~feeder_combout\);

-- Location: LCFF_X63_Y38_N1
\rdm|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(20));

-- Location: LCCOMB_X62_Y35_N16
\breg_data_mux|m_out[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[20]~11_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(20)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(20),
	datab => \rdm|sr_out\(20),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[20]~11_combout\);

-- Location: LCFF_X62_Y35_N17
\bcoreg|breg32_rtl_1_bypass[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[20]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(31));

-- Location: LCCOMB_X61_Y35_N28
\bcoreg|regB[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[20]~27_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(31)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a20\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(31),
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[20]~27_combout\);

-- Location: LCFF_X61_Y35_N29
\rgB|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[20]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(20));

-- Location: LCCOMB_X65_Y36_N26
\~QUARTUS_CREATED_GND~I\ : cycloneii_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X61_Y40_N24
\breg_data_mux|m_out[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[2]~30_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(2))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdm|sr_out\(2),
	datab => \regULA|sr_out\(2),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[2]~30_combout\);

-- Location: LCFF_X63_Y37_N13
\rdm|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(3));

-- Location: LCCOMB_X58_Y39_N6
\breg_data_mux|m_out[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[3]~29_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(3))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdm|sr_out\(3),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \regULA|sr_out\(3),
	combout => \breg_data_mux|m_out[3]~29_combout\);

-- Location: LCCOMB_X65_Y37_N28
\rdm|sr_out[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[4]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(4),
	combout => \rdm|sr_out[4]~feeder_combout\);

-- Location: LCFF_X65_Y37_N29
\rdm|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(4));

-- Location: LCFF_X61_Y37_N11
\ir|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(6));

-- Location: LCCOMB_X61_Y37_N10
\mux_shift|m_out[0]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[0]~93_combout\ = (!\ir|sr_out\(5) & (!\ir|sr_out\(2) & (\ir|sr_out\(6) & \actr|alu_ctr~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(5),
	datab => \ir|sr_out\(2),
	datac => \ir|sr_out\(6),
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[0]~93_combout\);

-- Location: LCCOMB_X63_Y37_N18
\mux_ulaB|m_out[16]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[16]~34_combout\ = (\ir|sr_out\(14) & ((\ctr_mips|pstate.decode_st~regout\) # ((!\ctr_mips|pstate.fetch_st~regout\ & \ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datac => \ir|sr_out\(14),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[16]~34_combout\);

-- Location: LCCOMB_X65_Y37_N4
\rdm|sr_out[16]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[16]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(16),
	combout => \rdm|sr_out[16]~feeder_combout\);

-- Location: LCFF_X65_Y37_N5
\rdm|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(16));

-- Location: LCFF_X63_Y37_N7
\ir|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(1));

-- Location: LCFF_X61_Y37_N25
\ir|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(5));

-- Location: LCCOMB_X61_Y40_N30
\actr|alu_ctr[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[0]~10_combout\ = (\ir|sr_out\(1) & (\ir|sr_out\(5) & (\ir|sr_out\(0) $ (!\ir|sr_out\(2))))) # (!\ir|sr_out\(1) & (!\ir|sr_out\(0) & ((\ir|sr_out\(5)) # (!\ir|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \ir|sr_out\(1),
	datac => \ir|sr_out\(2),
	datad => \ir|sr_out\(5),
	combout => \actr|alu_ctr[0]~10_combout\);

-- Location: LCCOMB_X61_Y40_N8
\actr|alu_ctr[0]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[0]~32_combout\ = ((!\ir|sr_out\(4) & (!\ir|sr_out\(3) & \actr|alu_ctr[0]~10_combout\))) # (!\ctr_mips|pstate.rtype_ex_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \ir|sr_out\(4),
	datac => \ir|sr_out\(3),
	datad => \actr|alu_ctr[0]~10_combout\,
	combout => \actr|alu_ctr[0]~32_combout\);

-- Location: LCCOMB_X61_Y37_N24
\actr|alu_ctr~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~25_combout\ = (!\ir|sr_out\(5) & !\ir|sr_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir|sr_out\(5),
	datad => \ir|sr_out\(2),
	combout => \actr|alu_ctr~25_combout\);

-- Location: LCCOMB_X61_Y41_N20
\pc|sr_out[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[26]~5_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(26))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(26),
	datad => \alu|Mux5~combout\,
	combout => \pc|sr_out[26]~5_combout\);

-- Location: LCFF_X65_Y39_N19
\ir|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(24),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(24));

-- Location: LCCOMB_X61_Y38_N18
\pc_wr_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_wr_s~0_combout\ = (!\ctr_mips|pstate.jump_ex_st~regout\ & \ctr_mips|pstate.fetch_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \ctr_mips|pstate.fetch_st~regout\,
	combout => \pc_wr_s~0_combout\);

-- Location: LCCOMB_X65_Y38_N14
\ctr_mips|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Equal0~0_combout\ = (\ir|sr_out\(29)) # ((\ir|sr_out\(26)) # ((!\ctr_mips|nstate.arith_imm_st~0_combout\) # (!\ir|sr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(26),
	datac => \ir|sr_out\(28),
	datad => \ctr_mips|nstate.arith_imm_st~0_combout\,
	combout => \ctr_mips|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y36_N18
\alu|Equal0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~11_combout\ = (!\alu|Mux18~1_combout\ & (!\alu|Mux19~10_combout\ & ((!\alu|Mux29~19_combout\) # (!\alu|Mux18~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux18~9_combout\,
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux18~1_combout\,
	datad => \alu|Mux19~10_combout\,
	combout => \alu|Equal0~11_combout\);

-- Location: LCCOMB_X66_Y38_N22
\pc|sr_out~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~33_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(31))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(31))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & 
-- ((\alu|Mux0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(31),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \alu|Mux0~8_combout\,
	datad => \ctr_mips|pstate.jump_ex_st~regout\,
	combout => \pc|sr_out~33_combout\);

-- Location: LCCOMB_X66_Y38_N4
\pc|sr_out[31]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[31]~28_combout\ = (\rst~combout\) # ((!\ctr_mips|pstate.jump_ex_st~regout\ & !\pc_wr_s~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datad => \pc_wr_s~1_combout\,
	combout => \pc|sr_out[31]~28_combout\);

-- Location: LCFF_X66_Y38_N23
\pc|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~33_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(31));

-- Location: LCCOMB_X61_Y37_N28
\ctr_mips|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|WideOr0~combout\ = (\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \ctr_mips|WideOr0~combout\);

-- Location: LCCOMB_X58_Y37_N18
\actr|alu_ctr~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr~30_combout\ = (!\ir|sr_out\(5) & (!\ir|sr_out\(2) & \actr|alu_ctr~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(5),
	datac => \ir|sr_out\(2),
	datad => \actr|alu_ctr~24_combout\,
	combout => \actr|alu_ctr~30_combout\);

-- Location: LCCOMB_X58_Y37_N24
\mux_shift|m_out[31]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[31]~92_combout\ = (!\actr|alu_ctr~30_combout\ & ((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(31))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(31),
	datab => \pc|sr_out\(31),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \actr|alu_ctr~30_combout\,
	combout => \mux_shift|m_out[31]~92_combout\);

-- Location: LCCOMB_X56_Y35_N28
\alu|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~0_combout\ = (\actr|alu_ctr[2]~26_combout\ & (\actr|alu_ctr[1]~31_combout\)) # (!\actr|alu_ctr[2]~26_combout\ & (!\actr|alu_ctr[1]~31_combout\ & \mux_shift|m_out[31]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \mux_shift|m_out[31]~92_combout\,
	combout => \alu|Mux0~0_combout\);

-- Location: LCCOMB_X56_Y35_N22
\alu|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~3_combout\ = (\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[0]~32_combout\) # ((\mux_ulaB|m_out[31]~36_combout\ & !\alu|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux0~0_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux0~3_combout\);

-- Location: LCCOMB_X56_Y35_N4
\alu|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~2_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_ulaB|m_out[31]~36_combout\ & ((\alu|Mux0~0_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_ulaB|m_out[31]~36_combout\ & (\alu|Mux0~0_combout\ & !\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux0~0_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux0~2_combout\);

-- Location: LCCOMB_X62_Y37_N0
\mux_ulaB|m_out[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[2]~3_combout\ = (!\ctr_mips|pstate.decode_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[2]~3_combout\);

-- Location: LCCOMB_X58_Y38_N8
\mux_ulaB|m_out[31]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[31]~36_combout\ = (\rgB|sr_out\(31) & (((\ir|sr_out\(15) & !\mux_ulaB|m_out[2]~3_combout\)) # (!\mux_ulaB|Equal2~2_combout\))) # (!\rgB|sr_out\(31) & (\ir|sr_out\(15) & (!\mux_ulaB|m_out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \ir|sr_out\(15),
	datac => \mux_ulaB|m_out[2]~3_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \mux_ulaB|m_out[31]~36_combout\);

-- Location: LCCOMB_X58_Y39_N8
\mux_ulaB|m_out[30]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[30]~37_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(30) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	combout => \mux_ulaB|m_out[30]~37_combout\);

-- Location: LCCOMB_X62_Y39_N16
\mux_ulaB|m_out[29]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[29]~38_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(29) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(29),
	datab => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[29]~38_combout\);

-- Location: LCCOMB_X62_Y41_N0
\actr|alu_ctr[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[2]~19_combout\ = (\ir|sr_out\(2) & (((\ir|sr_out\(1) & \ir|sr_out\(0))) # (!\ir|sr_out\(5)))) # (!\ir|sr_out\(2) & ((\ir|sr_out\(0)) # ((\ir|sr_out\(1) & \ir|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(2),
	datab => \ir|sr_out\(1),
	datac => \ir|sr_out\(5),
	datad => \ir|sr_out\(0),
	combout => \actr|alu_ctr[2]~19_combout\);

-- Location: LCCOMB_X62_Y41_N22
\actr|alu_ctr[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[2]~33_combout\ = (\ctr_mips|pstate.rtype_ex_st~regout\ & ((\ir|sr_out\(3)) # ((\actr|alu_ctr[2]~19_combout\) # (\ir|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(3),
	datab => \actr|alu_ctr[2]~19_combout\,
	datac => \ir|sr_out\(4),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \actr|alu_ctr[2]~33_combout\);

-- Location: LCCOMB_X59_Y42_N30
\alu|Mux3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~18_combout\ = \actr|alu_ctr[0]~32_combout\ $ (((\actr|alu_ctr[2]~33_combout\) # ((!\ctr_mips|pstate.rtype_ex_st~regout\ & \ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[2]~33_combout\,
	combout => \alu|Mux3~18_combout\);

-- Location: LCCOMB_X58_Y42_N22
\alu|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~5_combout\ = (\alu|Mux3~9_combout\ & (!\mux_shift|m_out[29]~12_combout\ & (!\mux_ulaB|m_out[29]~38_combout\ & !\alu|Mux3~18_combout\))) # (!\alu|Mux3~9_combout\ & ((\alu|Mux3~18_combout\) # (\mux_shift|m_out[29]~12_combout\ $ 
-- (\mux_ulaB|m_out[29]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~9_combout\,
	datab => \mux_shift|m_out[29]~12_combout\,
	datac => \mux_ulaB|m_out[29]~38_combout\,
	datad => \alu|Mux3~18_combout\,
	combout => \alu|Mux2~5_combout\);

-- Location: LCCOMB_X63_Y34_N6
\breg_data_mux|m_out[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[7]~23_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(7))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdm|sr_out\(7),
	datab => \regULA|sr_out\(7),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[7]~23_combout\);

-- Location: LCCOMB_X62_Y36_N26
\breg_data_mux|m_out[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[9]~21_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(9))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdm|sr_out\(9),
	datab => \regULA|sr_out\(9),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[9]~21_combout\);

-- Location: LCFF_X63_Y36_N3
\ir|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(8));

-- Location: LCCOMB_X63_Y36_N30
\mux_ulaB|m_out[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[10]~28_combout\ = (\ctr_mips|WideNor0~0_combout\ & (\mux_ulaB|m_out[10]~27_combout\)) # (!\ctr_mips|WideNor0~0_combout\ & (((\ir|sr_out\(8) & !\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[10]~27_combout\,
	datab => \ir|sr_out\(8),
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[10]~28_combout\);

-- Location: LCCOMB_X63_Y34_N14
\pc|sr_out[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[10]~20_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(10))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux21~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(10),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux21~10_combout\,
	combout => \pc|sr_out[10]~20_combout\);

-- Location: LCFF_X63_Y34_N15
\pc|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[10]~20_combout\,
	sdata => \ir|sr_out\(8),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(10));

-- Location: LCCOMB_X62_Y34_N18
\mux_shift|m_out[10]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[10]~65_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\pc|sr_out\(10) & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \pc|sr_out\(10),
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[10]~65_combout\);

-- Location: LCCOMB_X62_Y34_N12
\mux_shift|m_out[10]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[10]~66_combout\ = (\mux_shift|m_out[10]~64_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[10]~64_combout\ & (\mux_shift|m_out[10]~65_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[10]~64_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[10]~65_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[10]~66_combout\);

-- Location: LCCOMB_X59_Y40_N24
\alu|a32~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~19_combout\ = \mux_ulaB|m_out[10]~28_combout\ $ (\mux_shift|m_out[10]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ulaB|m_out[10]~28_combout\,
	datad => \mux_shift|m_out[10]~66_combout\,
	combout => \alu|a32~19_combout\);

-- Location: LCCOMB_X59_Y40_N8
\alu|Mux29~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~14_combout\ = (\actr|alu_ctr[3]~29_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\actr|alu_ctr[2]~26_combout\) # (!\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux29~14_combout\);

-- Location: LCFF_X65_Y39_N15
\bcoreg|breg32_rtl_0_bypass[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux_reg_add|m_out[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(3));

-- Location: LCFF_X65_Y39_N9
\ir|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(22),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(22));

-- Location: LCCOMB_X63_Y35_N22
\ir|sr_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[21]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(21),
	combout => \ir|sr_out[21]~feeder_combout\);

-- Location: LCFF_X63_Y35_N23
\ir|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[21]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(21));

-- Location: LCCOMB_X65_Y39_N8
\bcoreg|breg32~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~38_combout\ = (\bcoreg|breg32_rtl_0_bypass\(1) & (\ir|sr_out\(21) & (\bcoreg|breg32_rtl_0_bypass\(3) $ (!\ir|sr_out\(22))))) # (!\bcoreg|breg32_rtl_0_bypass\(1) & (!\ir|sr_out\(21) & (\bcoreg|breg32_rtl_0_bypass\(3) $ (!\ir|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(1),
	datab => \bcoreg|breg32_rtl_0_bypass\(3),
	datac => \ir|sr_out\(22),
	datad => \ir|sr_out\(21),
	combout => \bcoreg|breg32~38_combout\);

-- Location: LCFF_X63_Y35_N27
\bcoreg|breg32_rtl_0_bypass[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mux_reg_add|m_out[4]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(9));

-- Location: LCCOMB_X63_Y38_N20
\rdm|sr_out[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[27]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(27),
	combout => \rdm|sr_out[27]~feeder_combout\);

-- Location: LCFF_X63_Y38_N21
\rdm|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(27));

-- Location: LCCOMB_X62_Y36_N18
\breg_data_mux|m_out[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[27]~4_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(27)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(27),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \rdm|sr_out\(27),
	combout => \breg_data_mux|m_out[27]~4_combout\);

-- Location: LCFF_X62_Y36_N27
\bcoreg|breg32_rtl_1_bypass[38]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[27]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(38));

-- Location: LCCOMB_X63_Y40_N0
\bcoreg|regB[27]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[27]~16_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(38)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a27\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(38),
	combout => \bcoreg|regB[27]~16_combout\);

-- Location: LCFF_X60_Y40_N29
\rgB|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[27]~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(27));

-- Location: LCCOMB_X53_Y39_N28
\mux_ulaB|m_out[17]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[17]~32_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(17) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(17),
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \mux_ulaB|m_out[17]~32_combout\);

-- Location: LCCOMB_X61_Y37_N4
\mux_shift|m_out[0]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[0]~83_combout\ = (\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \mux_shift|m_out[0]~83_combout\);

-- Location: LCCOMB_X56_Y39_N26
\alu|ShiftRight1~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~76_combout\ = (\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & ((\mux_ulaB|m_out[17]~32_combout\))) # (!\mux_shift|m_out[1]~87_combout\ & (\mux_ulaB|m_out[15]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~16_combout\,
	datab => \mux_ulaB|m_out[17]~32_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftRight1~76_combout\);

-- Location: LCCOMB_X56_Y39_N22
\alu|ShiftRight1~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~110_combout\ = (\alu|ShiftRight1~76_combout\) # ((!\mux_shift|m_out[0]~82_combout\ & (!\mux_shift|m_out[0]~93_combout\ & \alu|ShiftRight1~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight1~102_combout\,
	datad => \alu|ShiftRight1~76_combout\,
	combout => \alu|ShiftRight1~110_combout\);

-- Location: LCCOMB_X57_Y41_N20
\alu|ShiftRight0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~99_combout\ = (\alu|ShiftRight0~98_combout\) # ((!\mux_shift|m_out[2]~89_combout\ & \alu|ShiftRight1~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~98_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight1~110_combout\,
	combout => \alu|ShiftRight0~99_combout\);

-- Location: LCCOMB_X60_Y41_N26
\alu|ShiftRight0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~64_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(24))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(24)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \rgB|sr_out\(24),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight0~64_combout\);

-- Location: LCCOMB_X60_Y41_N12
\alu|ShiftRight1~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~106_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftRight1~66_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftRight1~66_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftRight0~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~66_combout\,
	datab => \alu|ShiftRight0~64_combout\,
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftRight1~106_combout\);

-- Location: LCCOMB_X58_Y41_N4
\alu|Mux17~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~8_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~105_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftRight1~105_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight1~106_combout\,
	combout => \alu|Mux17~8_combout\);

-- Location: LCCOMB_X57_Y41_N0
\alu|Mux17~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~9_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|Mux17~8_combout\)))) # (!\mux_shift|m_out[3]~91_combout\ & (((\alu|ShiftRight0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~99_combout\,
	datad => \alu|Mux17~8_combout\,
	combout => \alu|Mux17~9_combout\);

-- Location: LCCOMB_X63_Y36_N22
\mux_ulaB|m_out[14]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[14]~20_combout\ = (\ctr_mips|WideNor0~0_combout\ & (\mux_ulaB|m_out[14]~19_combout\)) # (!\ctr_mips|WideNor0~0_combout\ & (((\ir|sr_out\(12) & !\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[14]~19_combout\,
	datab => \ir|sr_out\(12),
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[14]~20_combout\);

-- Location: LCCOMB_X61_Y36_N28
\mux_shift|m_out[14]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[14]~53_combout\ = (\pc|sr_out\(14) & (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(14),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[14]~53_combout\);

-- Location: LCCOMB_X61_Y36_N6
\mux_shift|m_out[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[14]~54_combout\ = (\mux_shift|m_out[14]~52_combout\ & (((!\actr|alu_ctr~25_combout\) # (!\actr|alu_ctr~24_combout\)))) # (!\mux_shift|m_out[14]~52_combout\ & (\mux_shift|m_out[14]~53_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[14]~52_combout\,
	datab => \mux_shift|m_out[14]~53_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[14]~54_combout\);

-- Location: LCCOMB_X54_Y39_N26
\alu|a32~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~23_combout\ = \mux_ulaB|m_out[14]~20_combout\ $ (\mux_shift|m_out[14]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[14]~20_combout\,
	datad => \mux_shift|m_out[14]~54_combout\,
	combout => \alu|a32~23_combout\);

-- Location: LCCOMB_X54_Y39_N14
\alu|Mux17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~5_combout\ = (\mux_ulaB|m_out[14]~20_combout\) # ((\mux_shift|m_out[14]~54_combout\) # ((\actr|alu_ctr[1]~31_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[14]~20_combout\,
	datab => \mux_shift|m_out[14]~54_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux17~5_combout\);

-- Location: LCCOMB_X59_Y40_N2
\alu|Mux29~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~5_combout\ = ((\actr|alu_ctr[0]~32_combout\ & \actr|alu_ctr[1]~31_combout\)) # (!\actr|alu_ctr[2]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux29~5_combout\);

-- Location: LCCOMB_X65_Y35_N14
\bcoreg|breg32_rtl_1_bypass[26]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[26]~feeder_combout\ = \breg_data_mux|m_out[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[15]~15_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[26]~feeder_combout\);

-- Location: LCFF_X65_Y35_N15
\bcoreg|breg32_rtl_1_bypass[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(26));

-- Location: LCCOMB_X65_Y37_N14
\rdm|sr_out[17]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[17]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(17),
	combout => \rdm|sr_out[17]~feeder_combout\);

-- Location: LCFF_X65_Y37_N15
\rdm|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(17));

-- Location: LCCOMB_X65_Y38_N10
\rdm|sr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[31]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(31),
	combout => \rdm|sr_out[31]~feeder_combout\);

-- Location: LCFF_X65_Y38_N11
\rdm|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[31]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(31));

-- Location: LCCOMB_X66_Y38_N6
\breg_data_mux|m_out[31]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[31]~31_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(31)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(31),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \rdm|sr_out\(31),
	combout => \breg_data_mux|m_out[31]~31_combout\);

-- Location: LCFF_X58_Y37_N21
\bcoreg|breg32_rtl_1_bypass[42]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[31]~31_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(42));

-- Location: LCCOMB_X60_Y37_N16
\mux_shift|m_out[18]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[18]~44_combout\ = (\pc|sr_out\(18) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(18),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[18]~44_combout\);

-- Location: LCCOMB_X60_Y37_N24
\mux_shift|m_out[19]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[19]~41_combout\ = (\pc|sr_out\(19) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(19),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[19]~41_combout\);

-- Location: LCCOMB_X63_Y38_N26
\rdm|sr_out[21]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[21]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(21),
	combout => \rdm|sr_out[21]~feeder_combout\);

-- Location: LCFF_X63_Y38_N27
\rdm|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[21]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(21));

-- Location: LCCOMB_X61_Y34_N20
\breg_data_mux|m_out[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[21]~10_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(21)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(21),
	datab => \rdm|sr_out\(21),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[21]~10_combout\);

-- Location: LCCOMB_X63_Y38_N24
\rdm|sr_out[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[24]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(24),
	combout => \rdm|sr_out[24]~feeder_combout\);

-- Location: LCFF_X63_Y38_N25
\rdm|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(24));

-- Location: LCCOMB_X62_Y39_N4
\breg_data_mux|m_out[24]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[24]~7_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(24)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(24),
	datac => \rdm|sr_out\(24),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[24]~7_combout\);

-- Location: LCFF_X65_Y39_N29
\ir|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(23),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(23));

-- Location: LCCOMB_X65_Y39_N28
\bcoreg|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal0~0_combout\ = (!\ir|sr_out\(22) & (!\ir|sr_out\(21) & (!\ir|sr_out\(23) & !\ir|sr_out\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(22),
	datab => \ir|sr_out\(21),
	datac => \ir|sr_out\(23),
	datad => \ir|sr_out\(24),
	combout => \bcoreg|Equal0~0_combout\);

-- Location: LCCOMB_X65_Y38_N6
\bcoreg|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal0~1_combout\ = (!\ir|sr_out\(25) & \bcoreg|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(25),
	datad => \bcoreg|Equal0~0_combout\,
	combout => \bcoreg|Equal0~1_combout\);

-- Location: LCCOMB_X58_Y42_N8
\mux_ulaB|m_out[28]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[28]~39_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \rgB|sr_out\(28),
	combout => \mux_ulaB|m_out[28]~39_combout\);

-- Location: LCCOMB_X66_Y38_N24
\pc|sr_out~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~30_combout\ = (\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(28))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & ((\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(28))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & 
-- ((\alu|Mux3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(28),
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux3~16_combout\,
	combout => \pc|sr_out~30_combout\);

-- Location: LCFF_X66_Y38_N25
\pc|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~30_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(28));

-- Location: LCCOMB_X62_Y35_N18
\mux_shift|m_out[28]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[28]~14_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & \pc|sr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \pc|sr_out\(28),
	combout => \mux_shift|m_out[28]~14_combout\);

-- Location: LCCOMB_X62_Y35_N20
\mux_shift|m_out[28]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[28]~15_combout\ = (\mux_shift|m_out[28]~13_combout\ & (((!\actr|alu_ctr~25_combout\) # (!\actr|alu_ctr~24_combout\)))) # (!\mux_shift|m_out[28]~13_combout\ & (\mux_shift|m_out[28]~14_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[28]~13_combout\,
	datab => \mux_shift|m_out[28]~14_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[28]~15_combout\);

-- Location: LCCOMB_X58_Y42_N26
\alu|Mux3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~10_combout\ = (\alu|Mux3~9_combout\ & (!\mux_ulaB|m_out[28]~39_combout\ & (!\mux_shift|m_out[28]~15_combout\ & !\alu|Mux3~18_combout\))) # (!\alu|Mux3~9_combout\ & ((\alu|Mux3~18_combout\) # (\mux_ulaB|m_out[28]~39_combout\ $ 
-- (\mux_shift|m_out[28]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~9_combout\,
	datab => \mux_ulaB|m_out[28]~39_combout\,
	datac => \mux_shift|m_out[28]~15_combout\,
	datad => \alu|Mux3~18_combout\,
	combout => \alu|Mux3~10_combout\);

-- Location: LCCOMB_X57_Y37_N18
\alu|ShiftLeft0~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~71_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[5]~12_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[5]~12_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~8_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_shift|m_out[1]~86_combout\,
	datad => \mux_ulaB|m_out[5]~12_combout\,
	combout => \alu|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X58_Y37_N22
\mux_ulaB|m_out[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[6]~9_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(6))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(6)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(6),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ir|sr_out\(6),
	combout => \mux_ulaB|m_out[6]~9_combout\);

-- Location: LCCOMB_X58_Y37_N8
\mux_ulaB|m_out[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[6]~10_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[6]~9_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (!\mux_ulaB|m_out[2]~3_combout\ & ((\ir|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~3_combout\,
	datab => \mux_ulaB|m_out[6]~9_combout\,
	datac => \ir|sr_out\(4),
	datad => \ctr_mips|WideNor0~0_combout\,
	combout => \mux_ulaB|m_out[6]~10_combout\);

-- Location: LCCOMB_X63_Y36_N2
\mux_ulaB|m_out[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[8]~29_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(8))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & ((\ir|sr_out\(8)))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- (\rgB|sr_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \rgB|sr_out\(8),
	datac => \ir|sr_out\(8),
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[8]~29_combout\);

-- Location: LCCOMB_X63_Y36_N10
\mux_ulaB|m_out[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[8]~30_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[8]~29_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (\ir|sr_out\(6) & ((!\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(6),
	datab => \mux_ulaB|m_out[8]~29_combout\,
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[8]~30_combout\);

-- Location: LCCOMB_X54_Y36_N28
\alu|ShiftLeft0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~73_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[6]~10_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\mux_ulaB|m_out[6]~10_combout\)) # (!\mux_shift|m_out[1]~86_combout\ & 
-- ((\mux_ulaB|m_out[8]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[6]~10_combout\,
	datad => \mux_ulaB|m_out[8]~30_combout\,
	combout => \alu|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X57_Y37_N6
\alu|ShiftLeft0~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~162_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftLeft0~71_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftLeft0~71_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftLeft0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \alu|ShiftLeft0~71_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftLeft0~73_combout\,
	combout => \alu|ShiftLeft0~162_combout\);

-- Location: LCCOMB_X62_Y37_N28
\mux_ulaB|m_out[9]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[9]~25_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(9))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(9)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(9),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(9),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[9]~25_combout\);

-- Location: LCCOMB_X62_Y37_N20
\mux_ulaB|m_out[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[9]~26_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[9]~25_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (!\mux_ulaB|m_out[2]~3_combout\ & (\ir|sr_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~3_combout\,
	datab => \ir|sr_out\(7),
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[9]~25_combout\,
	combout => \mux_ulaB|m_out[9]~26_combout\);

-- Location: LCCOMB_X62_Y37_N10
\mux_ulaB|m_out[11]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[11]~23_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(11))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(11)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \rgB|sr_out\(11),
	datac => \ir|sr_out\(11),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[11]~23_combout\);

-- Location: LCCOMB_X62_Y37_N8
\mux_ulaB|m_out[11]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[11]~24_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[11]~23_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (\ir|sr_out\(9) & ((!\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(9),
	datab => \mux_ulaB|m_out[11]~23_combout\,
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[11]~24_combout\);

-- Location: LCCOMB_X54_Y36_N8
\alu|ShiftLeft0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~82_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[9]~26_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\mux_ulaB|m_out[9]~26_combout\)) # (!\mux_shift|m_out[1]~86_combout\ & 
-- ((\mux_ulaB|m_out[11]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[9]~26_combout\,
	datad => \mux_ulaB|m_out[11]~24_combout\,
	combout => \alu|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X63_Y36_N14
\mux_ulaB|m_out[12]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[12]~21_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(12))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(12))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- ((\rgB|sr_out\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ir|sr_out\(12),
	datac => \rgB|sr_out\(12),
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[12]~21_combout\);

-- Location: LCCOMB_X63_Y36_N0
\mux_ulaB|m_out[12]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[12]~22_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[12]~21_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (\ir|sr_out\(10) & ((!\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(10),
	datab => \mux_ulaB|m_out[12]~21_combout\,
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[12]~22_combout\);

-- Location: LCCOMB_X54_Y36_N12
\alu|ShiftLeft0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~86_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[10]~28_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[10]~28_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[12]~22_combout\,
	datad => \mux_ulaB|m_out[10]~28_combout\,
	combout => \alu|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X54_Y36_N0
\alu|ShiftLeft0~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~166_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~82_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftLeft0~82_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftLeft0~86_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftLeft0~82_combout\,
	datad => \alu|ShiftLeft0~86_combout\,
	combout => \alu|ShiftLeft0~166_combout\);

-- Location: LCCOMB_X56_Y41_N22
\alu|ShiftLeft0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~87_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~162_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~166_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~162_combout\,
	datad => \alu|ShiftLeft0~166_combout\,
	combout => \alu|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X63_Y37_N12
\mux_ulaB|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|Equal2~1_combout\ = (\ctr_mips|pstate.decode_st~regout\) # ((!\ctr_mips|pstate.c_mem_add_st~regout\) # (!\ctr_mips|pstate.fetch_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|Equal2~1_combout\);

-- Location: LCCOMB_X63_Y37_N24
\mux_ulaB|m_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[0]~1_combout\ = (\mux_ulaB|Equal2~2_combout\ & (((\ir|sr_out\(0) & !\mux_ulaB|Equal2~1_combout\)))) # (!\mux_ulaB|Equal2~2_combout\ & ((\rgB|sr_out\(0)) # ((\ir|sr_out\(0) & !\mux_ulaB|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \rgB|sr_out\(0),
	datac => \ir|sr_out\(0),
	datad => \mux_ulaB|Equal2~1_combout\,
	combout => \mux_ulaB|m_out[0]~1_combout\);

-- Location: LCCOMB_X56_Y41_N20
\alu|ShiftLeft0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~62_combout\ = (!\mux_shift|m_out[1]~87_combout\ & (\mux_ulaB|m_out[0]~1_combout\ & (\mux_shift|m_out[2]~89_combout\ & !\mux_shift|m_out[0]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \mux_ulaB|m_out[0]~1_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X63_Y37_N6
\mux_ulaB|m_out[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[1]~0_combout\ = (\mux_ulaB|Equal2~2_combout\ & (((\ir|sr_out\(1) & !\mux_ulaB|Equal2~1_combout\)))) # (!\mux_ulaB|Equal2~2_combout\ & ((\rgB|sr_out\(1)) # ((\ir|sr_out\(1) & !\mux_ulaB|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \rgB|sr_out\(1),
	datac => \ir|sr_out\(1),
	datad => \mux_ulaB|Equal2~1_combout\,
	combout => \mux_ulaB|m_out[1]~0_combout\);

-- Location: LCCOMB_X54_Y37_N24
\alu|ShiftLeft0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~63_combout\ = (\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & ((\mux_ulaB|m_out[1]~0_combout\))) # (!\mux_shift|m_out[1]~87_combout\ & (\mux_ulaB|m_out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~4_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \mux_ulaB|m_out[1]~0_combout\,
	combout => \alu|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X61_Y37_N2
\mux_ulaB|m_out[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[2]~5_combout\ = (\ctr_mips|pstate.fetch_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(2)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\rgB|sr_out\(2))))) # (!\ctr_mips|pstate.fetch_st~regout\ & 
-- (((\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.fetch_st~regout\,
	datab => \rgB|sr_out\(2),
	datac => \ir|sr_out\(2),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[2]~5_combout\);

-- Location: LCCOMB_X61_Y37_N22
\mux_ulaB|m_out[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[2]~6_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(0))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\mux_ulaB|m_out[2]~5_combout\ & ((\ir|sr_out\(0)) # (\ctr_mips|pstate.fetch_st~regout\))) # (!\mux_ulaB|m_out[2]~5_combout\ 
-- & ((!\ctr_mips|pstate.fetch_st~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ir|sr_out\(0),
	datac => \mux_ulaB|m_out[2]~5_combout\,
	datad => \ctr_mips|pstate.fetch_st~regout\,
	combout => \mux_ulaB|m_out[2]~6_combout\);

-- Location: LCCOMB_X57_Y37_N28
\alu|ShiftLeft0~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~64_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[2]~6_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & ((\mux_ulaB|m_out[2]~6_combout\))) # (!\mux_shift|m_out[1]~94_combout\ & 
-- (\mux_ulaB|m_out[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[4]~14_combout\,
	datad => \mux_ulaB|m_out[2]~6_combout\,
	combout => \alu|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X54_Y37_N8
\alu|ShiftLeft0~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~155_combout\ = (\alu|ShiftLeft0~63_combout\) # ((!\mux_shift|m_out[0]~82_combout\ & (!\mux_shift|m_out[0]~93_combout\ & \alu|ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftLeft0~63_combout\,
	datad => \alu|ShiftLeft0~64_combout\,
	combout => \alu|ShiftLeft0~155_combout\);

-- Location: LCCOMB_X56_Y41_N12
\alu|ShiftLeft0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~85_combout\ = (\alu|ShiftLeft0~62_combout\) # ((!\mux_shift|m_out[2]~89_combout\ & \alu|ShiftLeft0~155_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~62_combout\,
	datad => \alu|ShiftLeft0~155_combout\,
	combout => \alu|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X56_Y41_N4
\alu|ShiftLeft0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~88_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~85_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~87_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~85_combout\,
	combout => \alu|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X60_Y41_N14
\alu|ShiftLeft0~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~142_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\rgB|sr_out\(25))))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\rgB|sr_out\(25)))) # (!\mux_shift|m_out[0]~93_combout\ & (\rgB|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(26),
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \rgB|sr_out\(25),
	combout => \alu|ShiftLeft0~142_combout\);

-- Location: LCCOMB_X60_Y41_N18
\alu|Mux29~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~21_combout\ = (\mux_shift|m_out[3]~91_combout\) # ((!\mux_shift|m_out[2]~89_combout\ & ((\mux_shift|m_out[1]~86_combout\) # (\mux_shift|m_out[1]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[3]~91_combout\,
	combout => \alu|Mux29~21_combout\);

-- Location: LCCOMB_X60_Y41_N8
\alu|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~6_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|Mux29~21_combout\ & ((\alu|ShiftLeft0~142_combout\))) # (!\alu|Mux29~21_combout\ & (\alu|ShiftLeft0~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~143_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftLeft0~142_combout\,
	datad => \alu|Mux29~21_combout\,
	combout => \alu|Mux3~6_combout\);

-- Location: LCCOMB_X57_Y40_N18
\alu|ShiftLeft0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~133_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(21)))) # (!\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \rgB|sr_out\(21),
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X57_Y40_N12
\alu|ShiftLeft0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~132_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(23)))) # (!\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(24),
	datac => \rgB|sr_out\(23),
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X57_Y40_N0
\alu|ShiftLeft0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~134_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftLeft0~133_combout\) # (\alu|ShiftLeft0~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftLeft0~133_combout\,
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \alu|ShiftLeft0~132_combout\,
	combout => \alu|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X63_Y39_N30
\mux_ulaB|m_out[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[15]~15_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(15))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(15))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- ((\rgB|sr_out\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \rgB|sr_out\(15),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[15]~15_combout\);

-- Location: LCCOMB_X63_Y39_N22
\mux_ulaB|m_out[15]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[15]~16_combout\ = (\ctr_mips|WideNor0~0_combout\ & (\mux_ulaB|m_out[15]~15_combout\)) # (!\ctr_mips|WideNor0~0_combout\ & (((\ir|sr_out\(13) & !\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideNor0~0_combout\,
	datab => \mux_ulaB|m_out[15]~15_combout\,
	datac => \ir|sr_out\(13),
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[15]~16_combout\);

-- Location: LCCOMB_X56_Y36_N4
\alu|ShiftLeft0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~97_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[13]~18_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[13]~18_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\mux_ulaB|m_out[15]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[13]~18_combout\,
	datad => \mux_ulaB|m_out[15]~16_combout\,
	combout => \alu|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X56_Y36_N30
\alu|ShiftLeft0~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~170_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[14]~20_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[14]~20_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\mux_ulaB|m_out[16]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[14]~20_combout\,
	datad => \mux_ulaB|m_out[16]~35_combout\,
	combout => \alu|ShiftLeft0~170_combout\);

-- Location: LCCOMB_X56_Y36_N0
\alu|ShiftLeft0~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~171_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftLeft0~97_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftLeft0~97_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & 
-- ((\alu|ShiftLeft0~170_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftLeft0~97_combout\,
	datad => \alu|ShiftLeft0~170_combout\,
	combout => \alu|ShiftLeft0~171_combout\);

-- Location: LCCOMB_X63_Y40_N8
\alu|ShiftLeft0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~116_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(19))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(19),
	datac => \rgB|sr_out\(20),
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~116_combout\);

-- Location: LCFF_X65_Y38_N17
\rdm|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(30));

-- Location: LCCOMB_X58_Y35_N28
\alu|tmp[30]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[30]~60_combout\ = ((\mux_shift|m_out[30]~9_combout\ $ (\mux_ulaB|m_out[30]~37_combout\ $ (\alu|tmp[29]~59\)))) # (GND)
-- \alu|tmp[30]~61\ = CARRY((\mux_shift|m_out[30]~9_combout\ & ((!\alu|tmp[29]~59\) # (!\mux_ulaB|m_out[30]~37_combout\))) # (!\mux_shift|m_out[30]~9_combout\ & (!\mux_ulaB|m_out[30]~37_combout\ & !\alu|tmp[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[30]~9_combout\,
	datab => \mux_ulaB|m_out[30]~37_combout\,
	datad => VCC,
	cin => \alu|tmp[29]~59\,
	combout => \alu|tmp[30]~60_combout\,
	cout => \alu|tmp[30]~61\);

-- Location: LCCOMB_X57_Y34_N26
\alu|Mux1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~11_combout\ = (\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & \alu|tmp[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|tmp[30]~60_combout\,
	combout => \alu|Mux1~11_combout\);

-- Location: LCCOMB_X58_Y39_N4
\alu|Mux1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~8_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[3]~29_combout\) # ((\mux_shift|m_out[30]~9_combout\ & \mux_ulaB|m_out[30]~37_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & 
-- ((\mux_shift|m_out[30]~9_combout\) # (\mux_ulaB|m_out[30]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[30]~9_combout\,
	datab => \mux_ulaB|m_out[30]~37_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux1~8_combout\);

-- Location: LCCOMB_X61_Y34_N2
\bcoreg|breg32_rtl_1_bypass[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\ = \breg_data_mux|m_out[4]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[4]~26_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\);

-- Location: LCFF_X61_Y34_N3
\bcoreg|breg32_rtl_1_bypass[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(15));

-- Location: LCCOMB_X58_Y37_N14
\bcoreg|regA[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[4]~26_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(15)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a4\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(15),
	combout => \bcoreg|regA[4]~26_combout\);

-- Location: LCFF_X58_Y37_N15
\rgA|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[4]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(4));

-- Location: LCCOMB_X62_Y38_N10
\pc|sr_out[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[4]~2_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(4))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux27~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(4),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux27~combout\,
	combout => \pc|sr_out[4]~2_combout\);

-- Location: LCFF_X62_Y38_N11
\pc|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[4]~2_combout\,
	sdata => \ir|sr_out\(2),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(4));

-- Location: LCCOMB_X58_Y37_N28
\mux_shift|m_out[4]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[4]~78_combout\ = (\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(4))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgA|sr_out\(4),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \pc|sr_out\(4),
	combout => \mux_shift|m_out[4]~78_combout\);

-- Location: LCCOMB_X58_Y37_N10
\mux_shift|m_out[4]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[4]~79_combout\ = (\actr|alu_ctr~24_combout\ & ((\actr|alu_ctr~25_combout\ & (\ir|sr_out\(10))) # (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[4]~78_combout\))))) # (!\actr|alu_ctr~24_combout\ & (((\mux_shift|m_out[4]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~24_combout\,
	datab => \ir|sr_out\(10),
	datac => \actr|alu_ctr~25_combout\,
	datad => \mux_shift|m_out[4]~78_combout\,
	combout => \mux_shift|m_out[4]~79_combout\);

-- Location: LCCOMB_X58_Y37_N0
\mux_shift|m_out[5]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[5]~77_combout\ = (!\actr|alu_ctr~30_combout\ & ((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(5))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(5),
	datab => \pc|sr_out\(5),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \actr|alu_ctr~30_combout\,
	combout => \mux_shift|m_out[5]~77_combout\);

-- Location: LCCOMB_X62_Y36_N24
\bcoreg|breg32_rtl_1_bypass[20]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[20]~feeder_combout\ = \breg_data_mux|m_out[9]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[9]~21_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[20]~feeder_combout\);

-- Location: LCFF_X62_Y36_N25
\bcoreg|breg32_rtl_1_bypass[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(20));

-- Location: LCCOMB_X62_Y34_N22
\bcoreg|regA[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[9]~21_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(20)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a9\,
	datab => \bcoreg|breg32_rtl_1_bypass\(20),
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32~41_combout\,
	combout => \bcoreg|regA[9]~21_combout\);

-- Location: LCFF_X62_Y34_N3
\rgA|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[9]~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(9));

-- Location: LCCOMB_X62_Y34_N2
\mux_shift|m_out[9]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[9]~67_combout\ = (\rgA|sr_out\(9) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(9),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[9]~67_combout\);

-- Location: LCCOMB_X62_Y34_N24
\mux_shift|m_out[9]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[9]~68_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\pc|sr_out\(9) & (!\ctr_mips|pstate.rtype_ex_st~regout\ & !\ctr_mips|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \pc|sr_out\(9),
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[9]~68_combout\);

-- Location: LCCOMB_X62_Y34_N26
\mux_shift|m_out[9]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[9]~69_combout\ = (\actr|alu_ctr~24_combout\ & (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[9]~67_combout\) # (\mux_shift|m_out[9]~68_combout\)))) # (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[9]~67_combout\) # 
-- ((\mux_shift|m_out[9]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~24_combout\,
	datab => \mux_shift|m_out[9]~67_combout\,
	datac => \mux_shift|m_out[9]~68_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[9]~69_combout\);

-- Location: LCCOMB_X65_Y35_N0
\bcoreg|breg32_rtl_1_bypass[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[18]~feeder_combout\ = \breg_data_mux|m_out[7]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[7]~23_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[18]~feeder_combout\);

-- Location: LCFF_X65_Y35_N1
\bcoreg|breg32_rtl_1_bypass[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(18));

-- Location: LCCOMB_X65_Y35_N18
\bcoreg|regA[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[7]~23_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(18)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a7\,
	datad => \bcoreg|breg32_rtl_1_bypass\(18),
	combout => \bcoreg|regA[7]~23_combout\);

-- Location: LCFF_X62_Y34_N31
\rgA|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[7]~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(7));

-- Location: LCCOMB_X62_Y34_N30
\mux_shift|m_out[7]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[7]~73_combout\ = (\rgA|sr_out\(7) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(7),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[7]~73_combout\);

-- Location: LCCOMB_X62_Y34_N14
\mux_shift|m_out[7]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[7]~75_combout\ = (\mux_shift|m_out[7]~74_combout\ & (((!\actr|alu_ctr~24_combout\) # (!\actr|alu_ctr~25_combout\)))) # (!\mux_shift|m_out[7]~74_combout\ & (\mux_shift|m_out[7]~73_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[7]~74_combout\,
	datab => \mux_shift|m_out[7]~73_combout\,
	datac => \actr|alu_ctr~25_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[7]~75_combout\);

-- Location: LCCOMB_X65_Y35_N2
\bcoreg|regA[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[8]~22_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(19))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(19),
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a8\,
	combout => \bcoreg|regA[8]~22_combout\);

-- Location: LCFF_X62_Y34_N5
\rgA|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[8]~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(8));

-- Location: LCCOMB_X62_Y34_N4
\mux_shift|m_out[8]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[8]~70_combout\ = (\rgA|sr_out\(8) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(8),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[8]~70_combout\);

-- Location: LCCOMB_X62_Y34_N0
\mux_shift|m_out[8]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[8]~72_combout\ = (\mux_shift|m_out[8]~71_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[8]~71_combout\ & (\mux_shift|m_out[8]~70_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[8]~71_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[8]~70_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[8]~72_combout\);

-- Location: LCCOMB_X62_Y34_N28
\alu|ShiftLeft0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~50_combout\ = (\mux_shift|m_out[10]~66_combout\) # ((\mux_shift|m_out[9]~69_combout\) # ((\mux_shift|m_out[7]~75_combout\) # (\mux_shift|m_out[8]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[10]~66_combout\,
	datab => \mux_shift|m_out[9]~69_combout\,
	datac => \mux_shift|m_out[7]~75_combout\,
	datad => \mux_shift|m_out[8]~72_combout\,
	combout => \alu|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X62_Y36_N14
\bcoreg|regA[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[12]~18_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(23)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~41_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a12\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(23),
	combout => \bcoreg|regA[12]~18_combout\);

-- Location: LCFF_X62_Y36_N13
\rgA|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[12]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(12));

-- Location: LCCOMB_X62_Y36_N12
\mux_shift|m_out[12]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[12]~58_combout\ = (\rgA|sr_out\(12) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \rgA|sr_out\(12),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[12]~58_combout\);

-- Location: LCCOMB_X61_Y36_N26
\mux_shift|m_out[12]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[12]~60_combout\ = (\mux_shift|m_out[12]~59_combout\ & (((!\actr|alu_ctr~25_combout\)) # (!\actr|alu_ctr~24_combout\))) # (!\mux_shift|m_out[12]~59_combout\ & (\mux_shift|m_out[12]~58_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[12]~59_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[12]~58_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[12]~60_combout\);

-- Location: LCCOMB_X62_Y36_N20
\bcoreg|regA[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[13]~17_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(24))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(24),
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a13\,
	combout => \bcoreg|regA[13]~17_combout\);

-- Location: LCFF_X62_Y36_N31
\rgA|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[13]~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(13));

-- Location: LCCOMB_X62_Y36_N30
\mux_shift|m_out[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[13]~55_combout\ = (\rgA|sr_out\(13) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \rgA|sr_out\(13),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[13]~55_combout\);

-- Location: LCCOMB_X61_Y36_N14
\mux_shift|m_out[13]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[13]~57_combout\ = (\mux_shift|m_out[13]~56_combout\ & (((!\actr|alu_ctr~25_combout\) # (!\actr|alu_ctr~24_combout\)))) # (!\mux_shift|m_out[13]~56_combout\ & (\mux_shift|m_out[13]~55_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[13]~56_combout\,
	datab => \mux_shift|m_out[13]~55_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[13]~57_combout\);

-- Location: LCCOMB_X61_Y36_N22
\pc|sr_out[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[11]~19_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(11)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux20~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \alu|Mux20~10_combout\,
	datad => \regULA|sr_out\(11),
	combout => \pc|sr_out[11]~19_combout\);

-- Location: LCFF_X61_Y36_N23
\pc|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[11]~19_combout\,
	sdata => \ir|sr_out\(9),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(11));

-- Location: LCCOMB_X61_Y36_N8
\mux_shift|m_out[11]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[11]~62_combout\ = (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & \pc|sr_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.rtype_ex_st~regout\,
	datad => \pc|sr_out\(11),
	combout => \mux_shift|m_out[11]~62_combout\);

-- Location: LCCOMB_X61_Y36_N2
\mux_shift|m_out[11]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[11]~63_combout\ = (\mux_shift|m_out[11]~61_combout\ & (((!\actr|alu_ctr~25_combout\)) # (!\actr|alu_ctr~24_combout\))) # (!\mux_shift|m_out[11]~61_combout\ & (\mux_shift|m_out[11]~62_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[11]~61_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[11]~62_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[11]~63_combout\);

-- Location: LCCOMB_X61_Y36_N0
\alu|ShiftLeft0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~49_combout\ = (\mux_shift|m_out[14]~54_combout\) # ((\mux_shift|m_out[12]~60_combout\) # ((\mux_shift|m_out[13]~57_combout\) # (\mux_shift|m_out[11]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[14]~54_combout\,
	datab => \mux_shift|m_out[12]~60_combout\,
	datac => \mux_shift|m_out[13]~57_combout\,
	datad => \mux_shift|m_out[11]~63_combout\,
	combout => \alu|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X60_Y38_N14
\alu|ShiftLeft0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~51_combout\ = (\mux_shift|m_out[6]~76_combout\) # ((\mux_shift|m_out[5]~77_combout\) # ((\alu|ShiftLeft0~50_combout\) # (\alu|ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[6]~76_combout\,
	datab => \mux_shift|m_out[5]~77_combout\,
	datac => \alu|ShiftLeft0~50_combout\,
	datad => \alu|ShiftLeft0~49_combout\,
	combout => \alu|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X57_Y40_N30
\alu|ShiftLeft0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~124_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(20))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(20)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \rgB|sr_out\(20),
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X57_Y40_N4
\alu|ShiftLeft0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~123_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(19))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(19)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \rgB|sr_out\(21),
	datac => \rgB|sr_out\(19),
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X57_Y40_N16
\alu|ShiftLeft0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~125_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\alu|ShiftLeft0~123_combout\))) # (!\mux_shift|m_out[0]~83_combout\ & (\alu|ShiftLeft0~124_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftLeft0~124_combout\,
	datac => \alu|ShiftLeft0~123_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X53_Y39_N14
\alu|ShiftLeft0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~107_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[15]~16_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[16]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \mux_ulaB|m_out[15]~16_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X53_Y39_N26
\alu|ShiftRight0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~58_combout\ = (!\mux_ulaB|m_out[31]~31_combout\ & (((\mux_ulaB|Equal2~2_combout\) # (\mux_shift|m_out[0]~83_combout\)) # (!\rgB|sr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \rgB|sr_out\(18),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftRight0~58_combout\);

-- Location: LCCOMB_X53_Y39_N2
\alu|ShiftLeft0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~109_combout\ = (\alu|ShiftLeft0~107_combout\) # ((!\mux_shift|m_out[1]~87_combout\ & ((\alu|ShiftLeft0~108_combout\) # (!\alu|ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~108_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \alu|ShiftLeft0~107_combout\,
	datad => \alu|ShiftRight0~58_combout\,
	combout => \alu|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X53_Y39_N16
\alu|ShiftLeft0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~126_combout\ = (\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftLeft0~109_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|ShiftLeft0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~125_combout\,
	datad => \alu|ShiftLeft0~109_combout\,
	combout => \alu|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X60_Y40_N8
\alu|ShiftLeft0~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~143_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\rgB|sr_out\(27))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\rgB|sr_out\(27))) # (!\mux_shift|m_out[0]~82_combout\ & ((\rgB|sr_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \rgB|sr_out\(28),
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftLeft0~143_combout\);

-- Location: LCCOMB_X62_Y40_N0
\bcoreg|regB[29]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[29]~21_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(40))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(40),
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a29\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[29]~21_combout\);

-- Location: LCFF_X62_Y40_N1
\rgB|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[29]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(29));

-- Location: LCCOMB_X60_Y40_N22
\alu|ShiftLeft0~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~146_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\rgB|sr_out\(29))))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\rgB|sr_out\(29)))) # (!\mux_shift|m_out[0]~82_combout\ & (\rgB|sr_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \rgB|sr_out\(29),
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftLeft0~146_combout\);

-- Location: LCCOMB_X60_Y40_N16
\alu|ShiftLeft0~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~147_combout\ = (\mux_shift|m_out[1]~86_combout\ & (\alu|ShiftLeft0~143_combout\)) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\alu|ShiftLeft0~143_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\alu|ShiftLeft0~146_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \alu|ShiftLeft0~143_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \alu|ShiftLeft0~146_combout\,
	combout => \alu|ShiftLeft0~147_combout\);

-- Location: LCCOMB_X60_Y41_N16
\alu|ShiftLeft0~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~138_combout\ = (\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(23))) # (!\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(23),
	datab => \rgB|sr_out\(25),
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X60_Y41_N2
\alu|ShiftLeft0~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~139_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(24))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(24)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(26),
	datab => \rgB|sr_out\(24),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftLeft0~139_combout\);

-- Location: LCCOMB_X60_Y41_N28
\alu|ShiftLeft0~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~173_combout\ = (\alu|ShiftLeft0~138_combout\) # ((!\mux_shift|m_out[0]~82_combout\ & (!\mux_shift|m_out[0]~93_combout\ & \alu|ShiftLeft0~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftLeft0~138_combout\,
	datad => \alu|ShiftLeft0~139_combout\,
	combout => \alu|ShiftLeft0~173_combout\);

-- Location: LCCOMB_X53_Y39_N30
\alu|ShiftLeft0~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~148_combout\ = (\alu|ShiftRight1~63_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~173_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~63_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~147_combout\,
	datad => \alu|ShiftLeft0~173_combout\,
	combout => \alu|ShiftLeft0~148_combout\);

-- Location: LCCOMB_X53_Y39_N20
\alu|ShiftLeft0~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~149_combout\ = (!\alu|ShiftLeft0~51_combout\ & ((\alu|ShiftLeft0~148_combout\) # ((\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftLeft0~51_combout\,
	datac => \alu|ShiftLeft0~126_combout\,
	datad => \alu|ShiftLeft0~148_combout\,
	combout => \alu|ShiftLeft0~149_combout\);

-- Location: LCCOMB_X54_Y37_N12
\alu|ShiftLeft0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~58_combout\ = (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\mux_ulaB|m_out[0]~1_combout\)) # (!\mux_shift|m_out[1]~87_combout\ & ((\mux_ulaB|m_out[2]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[0]~1_combout\,
	datab => \mux_ulaB|m_out[2]~6_combout\,
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X54_Y37_N14
\alu|ShiftLeft0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~59_combout\ = (\alu|ShiftLeft0~58_combout\) # ((\mux_ulaB|m_out[1]~0_combout\ & (\mux_shift|m_out[0]~83_combout\ & !\mux_shift|m_out[1]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftLeft0~58_combout\,
	combout => \alu|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X57_Y37_N4
\alu|ShiftLeft0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~69_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[4]~14_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[4]~14_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\mux_ulaB|m_out[6]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[4]~14_combout\,
	datad => \mux_ulaB|m_out[6]~10_combout\,
	combout => \alu|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X57_Y37_N14
\alu|ShiftLeft0~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~157_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~66_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~66_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \alu|ShiftLeft0~69_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftLeft0~66_combout\,
	combout => \alu|ShiftLeft0~157_combout\);

-- Location: LCCOMB_X54_Y37_N0
\alu|ShiftLeft0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~92_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~59_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~59_combout\,
	datad => \alu|ShiftLeft0~157_combout\,
	combout => \alu|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X62_Y37_N2
\mux_ulaB|m_out[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[7]~7_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (((\ir|sr_out\(7))))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ir|sr_out\(7)))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- (\rgB|sr_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(7),
	datab => \ir|sr_out\(7),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_ulaB|m_out[7]~7_combout\);

-- Location: LCCOMB_X62_Y37_N4
\mux_ulaB|m_out[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[7]~8_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[7]~7_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (!\mux_ulaB|m_out[2]~3_combout\ & (\ir|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~3_combout\,
	datab => \ir|sr_out\(5),
	datac => \ctr_mips|WideNor0~0_combout\,
	datad => \mux_ulaB|m_out[7]~7_combout\,
	combout => \mux_ulaB|m_out[7]~8_combout\);

-- Location: LCCOMB_X62_Y37_N16
\alu|ShiftLeft0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~76_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[7]~8_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[7]~8_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[9]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~26_combout\,
	datab => \mux_ulaB|m_out[7]~8_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X54_Y36_N18
\alu|ShiftLeft0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~79_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[8]~30_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\mux_ulaB|m_out[8]~30_combout\)) # (!\mux_shift|m_out[1]~86_combout\ & 
-- ((\mux_ulaB|m_out[10]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[8]~30_combout\,
	datad => \mux_ulaB|m_out[10]~28_combout\,
	combout => \alu|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X54_Y36_N24
\alu|ShiftLeft0~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~164_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~76_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftLeft0~76_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftLeft0~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftLeft0~76_combout\,
	datad => \alu|ShiftLeft0~79_combout\,
	combout => \alu|ShiftLeft0~164_combout\);

-- Location: LCCOMB_X56_Y36_N2
\alu|ShiftLeft0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~93_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[12]~22_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[12]~22_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[14]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[14]~20_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_shift|m_out[1]~86_combout\,
	datad => \mux_ulaB|m_out[12]~22_combout\,
	combout => \alu|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X56_Y36_N24
\alu|ShiftLeft0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~89_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[11]~24_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & ((\mux_ulaB|m_out[11]~24_combout\))) # (!\mux_shift|m_out[1]~94_combout\ & 
-- (\mux_ulaB|m_out[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[13]~18_combout\,
	datad => \mux_ulaB|m_out[11]~24_combout\,
	combout => \alu|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X54_Y36_N22
\alu|ShiftLeft0~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~168_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~89_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~89_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftLeft0~93_combout\,
	datad => \alu|ShiftLeft0~89_combout\,
	combout => \alu|ShiftLeft0~168_combout\);

-- Location: LCCOMB_X54_Y36_N30
\alu|ShiftLeft0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~94_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~164_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~168_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~164_combout\,
	datad => \alu|ShiftLeft0~168_combout\,
	combout => \alu|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X54_Y39_N24
\alu|ShiftLeft0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~95_combout\ = (\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftLeft0~92_combout\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftLeft0~92_combout\,
	datad => \alu|ShiftLeft0~94_combout\,
	combout => \alu|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X60_Y38_N2
\alu|ShiftLeft0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~53_combout\ = (\alu|ShiftLeft0~51_combout\) # (\alu|ShiftLeft0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~51_combout\,
	datac => \alu|ShiftLeft0~48_combout\,
	combout => \alu|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X54_Y39_N0
\alu|ShiftLeft0~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~145_combout\ = (!\alu|ShiftLeft0~53_combout\ & ((\mux_shift|m_out[4]~79_combout\ & ((\alu|ShiftLeft0~95_combout\))) # (!\mux_shift|m_out[4]~79_combout\ & (\alu|ShiftRight1~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~62_combout\,
	datab => \mux_shift|m_out[4]~79_combout\,
	datac => \alu|ShiftLeft0~95_combout\,
	datad => \alu|ShiftLeft0~53_combout\,
	combout => \alu|ShiftLeft0~145_combout\);

-- Location: LCCOMB_X54_Y39_N2
\alu|ShiftLeft0~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~150_combout\ = (\alu|ShiftLeft0~145_combout\) # ((!\alu|ShiftLeft0~48_combout\ & (!\mux_shift|m_out[4]~79_combout\ & \alu|ShiftLeft0~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~48_combout\,
	datab => \mux_shift|m_out[4]~79_combout\,
	datac => \alu|ShiftLeft0~149_combout\,
	datad => \alu|ShiftLeft0~145_combout\,
	combout => \alu|ShiftLeft0~150_combout\);

-- Location: LCCOMB_X54_Y39_N20
\alu|Mux1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~9_combout\ = (\actr|alu_ctr[3]~29_combout\ & ((\alu|Mux1~8_combout\ & ((\alu|ShiftLeft0~150_combout\))) # (!\alu|Mux1~8_combout\ & (\alu|a32~28_combout\)))) # (!\actr|alu_ctr[3]~29_combout\ & (((\alu|Mux1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~28_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \alu|Mux1~8_combout\,
	datad => \alu|ShiftLeft0~150_combout\,
	combout => \alu|Mux1~9_combout\);

-- Location: LCCOMB_X62_Y39_N30
\alu|ShiftRight1~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~108_combout\ = (\rgB|sr_out\(30) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\ctr_mips|pstate.fetch_st~regout\ & !\ctr_mips|pstate.decode_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.fetch_st~regout\,
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \alu|ShiftRight1~108_combout\);

-- Location: LCCOMB_X62_Y39_N24
\alu|ShiftRight1~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~70_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\alu|ShiftRight1~108_combout\ & (!\mux_shift|m_out[0]~82_combout\ & !\mux_shift|m_out[0]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \alu|ShiftRight1~108_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \mux_shift|m_out[0]~93_combout\,
	combout => \alu|ShiftRight1~70_combout\);

-- Location: LCCOMB_X61_Y39_N2
\alu|ShiftRight1~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~71_combout\ = (\alu|ShiftRight1~70_combout\) # ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(31) & !\mux_ulaB|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(31),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \alu|ShiftRight1~70_combout\,
	combout => \alu|ShiftRight1~71_combout\);

-- Location: LCCOMB_X60_Y39_N14
\alu|ShiftRight1~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~119_combout\ = (!\mux_shift|m_out[2]~89_combout\ & (!\mux_shift|m_out[1]~87_combout\ & (!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight1~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~71_combout\,
	combout => \alu|ShiftRight1~119_combout\);

-- Location: LCCOMB_X56_Y34_N14
\alu|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~6_combout\ = (\alu|ShiftLeft0~52_combout\ & (!\actr|alu_ctr[3]~29_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \alu|ShiftRight1~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~52_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|ShiftRight1~119_combout\,
	combout => \alu|Mux1~6_combout\);

-- Location: LCFF_X62_Y39_N29
\bcoreg|breg32_rtl_1_bypass[41]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[30]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(41));

-- Location: LCCOMB_X62_Y39_N22
\bcoreg|regA[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[30]~1_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(41)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a30\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(41),
	combout => \bcoreg|regA[30]~1_combout\);

-- Location: LCFF_X62_Y35_N29
\rgA|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[30]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(30));

-- Location: LCCOMB_X62_Y35_N28
\mux_shift|m_out[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[30]~7_combout\ = (\rgA|sr_out\(30) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(30),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[30]~7_combout\);

-- Location: LCCOMB_X66_Y38_N0
\pc|sr_out~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~27_combout\ = (\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(30))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & ((\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(30))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & 
-- ((\alu|Mux1~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(30),
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux1~12_combout\,
	combout => \pc|sr_out~27_combout\);

-- Location: LCFF_X66_Y38_N1
\pc|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~27_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(30));

-- Location: LCCOMB_X62_Y35_N14
\mux_shift|m_out[30]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[30]~8_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & \pc|sr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \pc|sr_out\(30),
	combout => \mux_shift|m_out[30]~8_combout\);

-- Location: LCCOMB_X62_Y35_N12
\mux_shift|m_out[30]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[30]~9_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[30]~7_combout\) # (\mux_shift|m_out[30]~8_combout\)))) # (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[30]~7_combout\) # 
-- ((\mux_shift|m_out[30]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \mux_shift|m_out[30]~7_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \mux_shift|m_out[30]~8_combout\,
	combout => \mux_shift|m_out[30]~9_combout\);

-- Location: LCCOMB_X59_Y35_N8
\mux_ulaB|m_out[27]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[27]~40_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(27) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[27]~40_combout\);

-- Location: LCCOMB_X60_Y34_N6
\mux_ulaB|m_out[25]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[25]~42_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \rgB|sr_out\(25),
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[25]~42_combout\);

-- Location: LCCOMB_X62_Y39_N28
\mux_ulaB|m_out[24]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[24]~43_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(24) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(24),
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \mux_ulaB|m_out[24]~43_combout\);

-- Location: LCCOMB_X59_Y35_N30
\mux_ulaB|m_out[23]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[23]~44_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(23) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(23),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[23]~44_combout\);

-- Location: LCCOMB_X60_Y35_N26
\pc|sr_out[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[22]~9_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(22))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(22),
	datad => \alu|Mux9~8_combout\,
	combout => \pc|sr_out[22]~9_combout\);

-- Location: LCFF_X60_Y35_N27
\pc|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[22]~9_combout\,
	sdata => \ir|sr_out\(20),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(22));

-- Location: LCCOMB_X60_Y35_N4
\mux_shift|m_out[22]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[22]~32_combout\ = (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & (\pc|sr_out\(22) & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \pc|sr_out\(22),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[22]~32_combout\);

-- Location: LCCOMB_X60_Y35_N14
\mux_shift|m_out[22]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[22]~33_combout\ = (\mux_shift|m_out[22]~31_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[22]~31_combout\ & (\mux_shift|m_out[22]~32_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[22]~31_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[22]~32_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[22]~33_combout\);

-- Location: LCFF_X65_Y35_N7
\bcoreg|breg32_rtl_1_bypass[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[21]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(32));

-- Location: LCCOMB_X65_Y35_N24
\bcoreg|regA[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[21]~10_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(32)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a21\,
	datad => \bcoreg|breg32_rtl_1_bypass\(32),
	combout => \bcoreg|regA[21]~10_combout\);

-- Location: LCFF_X61_Y35_N11
\rgA|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[21]~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(21));

-- Location: LCCOMB_X61_Y35_N10
\mux_shift|m_out[21]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[21]~34_combout\ = (\rgA|sr_out\(21) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(21),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[21]~34_combout\);

-- Location: LCCOMB_X60_Y35_N6
\mux_shift|m_out[21]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[21]~36_combout\ = (\mux_shift|m_out[21]~35_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[21]~35_combout\ & (\mux_shift|m_out[21]~34_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[21]~35_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[21]~34_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[21]~36_combout\);

-- Location: LCCOMB_X62_Y35_N30
\bcoreg|regA[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[20]~11_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(31))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(31),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a20\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32~41_combout\,
	combout => \bcoreg|regA[20]~11_combout\);

-- Location: LCFF_X61_Y35_N1
\rgA|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[20]~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(20));

-- Location: LCCOMB_X61_Y35_N0
\mux_shift|m_out[20]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[20]~37_combout\ = (\rgA|sr_out\(20) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(20),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[20]~37_combout\);

-- Location: LCCOMB_X60_Y35_N10
\mux_shift|m_out[20]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[20]~39_combout\ = (\mux_shift|m_out[20]~38_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[20]~38_combout\ & (\mux_shift|m_out[20]~37_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[20]~38_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[20]~37_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[20]~39_combout\);

-- Location: LCCOMB_X60_Y37_N8
\mux_shift|m_out[17]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[17]~47_combout\ = (\pc|sr_out\(17) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(17),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[17]~47_combout\);

-- Location: LCCOMB_X65_Y36_N0
\bcoreg|breg32_rtl_1_bypass[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[28]~feeder_combout\ = \breg_data_mux|m_out[17]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[17]~14_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[28]~feeder_combout\);

-- Location: LCFF_X65_Y36_N1
\bcoreg|breg32_rtl_1_bypass[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(28));

-- Location: LCCOMB_X63_Y40_N16
\bcoreg|regA[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[17]~14_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(28)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a17\,
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(28),
	combout => \bcoreg|regA[17]~14_combout\);

-- Location: LCFF_X61_Y39_N29
\rgA|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[17]~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(17));

-- Location: LCCOMB_X61_Y39_N28
\mux_shift|m_out[17]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[17]~46_combout\ = (\rgA|sr_out\(17) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(17),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[17]~46_combout\);

-- Location: LCCOMB_X60_Y37_N14
\mux_shift|m_out[17]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[17]~48_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[17]~47_combout\) # (\mux_shift|m_out[17]~46_combout\)))) # (!\actr|alu_ctr~25_combout\ & (((\mux_shift|m_out[17]~47_combout\) # 
-- (\mux_shift|m_out[17]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[17]~47_combout\,
	datad => \mux_shift|m_out[17]~46_combout\,
	combout => \mux_shift|m_out[17]~48_combout\);

-- Location: LCCOMB_X58_Y37_N26
\mux_shift|m_out[6]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[6]~76_combout\ = (!\actr|alu_ctr~30_combout\ & ((\ctr_mips|WideOr0~combout\ & (\rgA|sr_out\(6))) # (!\ctr_mips|WideOr0~combout\ & ((\pc|sr_out\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgA|sr_out\(6),
	datab => \pc|sr_out\(6),
	datac => \ctr_mips|WideOr0~combout\,
	datad => \actr|alu_ctr~30_combout\,
	combout => \mux_shift|m_out[6]~76_combout\);

-- Location: LCCOMB_X59_Y37_N0
\alu|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~0_combout\ = (\mux_ulaB|m_out[0]~1_combout\ & (\mux_shift|m_out[0]~83_combout\ $ (VCC))) # (!\mux_ulaB|m_out[0]~1_combout\ & (\mux_shift|m_out[0]~83_combout\ & VCC))
-- \alu|Add1~1\ = CARRY((\mux_ulaB|m_out[0]~1_combout\ & \mux_shift|m_out[0]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[0]~1_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datad => VCC,
	combout => \alu|Add1~0_combout\,
	cout => \alu|Add1~1\);

-- Location: LCCOMB_X59_Y37_N2
\alu|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~2_combout\ = (\mux_ulaB|m_out[1]~0_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\alu|Add1~1\ & VCC)) # (!\mux_shift|m_out[1]~87_combout\ & (!\alu|Add1~1\)))) # (!\mux_ulaB|m_out[1]~0_combout\ & ((\mux_shift|m_out[1]~87_combout\ & 
-- (!\alu|Add1~1\)) # (!\mux_shift|m_out[1]~87_combout\ & ((\alu|Add1~1\) # (GND)))))
-- \alu|Add1~3\ = CARRY((\mux_ulaB|m_out[1]~0_combout\ & (!\mux_shift|m_out[1]~87_combout\ & !\alu|Add1~1\)) # (!\mux_ulaB|m_out[1]~0_combout\ & ((!\alu|Add1~1\) # (!\mux_shift|m_out[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datad => VCC,
	cin => \alu|Add1~1\,
	combout => \alu|Add1~2_combout\,
	cout => \alu|Add1~3\);

-- Location: LCCOMB_X59_Y37_N4
\alu|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~4_combout\ = ((\mux_ulaB|m_out[2]~6_combout\ $ (\mux_shift|m_out[2]~89_combout\ $ (!\alu|Add1~3\)))) # (GND)
-- \alu|Add1~5\ = CARRY((\mux_ulaB|m_out[2]~6_combout\ & ((\mux_shift|m_out[2]~89_combout\) # (!\alu|Add1~3\))) # (!\mux_ulaB|m_out[2]~6_combout\ & (\mux_shift|m_out[2]~89_combout\ & !\alu|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~6_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datad => VCC,
	cin => \alu|Add1~3\,
	combout => \alu|Add1~4_combout\,
	cout => \alu|Add1~5\);

-- Location: LCCOMB_X59_Y37_N6
\alu|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~6_combout\ = (\mux_ulaB|m_out[3]~4_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\alu|Add1~5\ & VCC)) # (!\mux_shift|m_out[3]~91_combout\ & (!\alu|Add1~5\)))) # (!\mux_ulaB|m_out[3]~4_combout\ & ((\mux_shift|m_out[3]~91_combout\ & 
-- (!\alu|Add1~5\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|Add1~5\) # (GND)))))
-- \alu|Add1~7\ = CARRY((\mux_ulaB|m_out[3]~4_combout\ & (!\mux_shift|m_out[3]~91_combout\ & !\alu|Add1~5\)) # (!\mux_ulaB|m_out[3]~4_combout\ & ((!\alu|Add1~5\) # (!\mux_shift|m_out[3]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~4_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datad => VCC,
	cin => \alu|Add1~5\,
	combout => \alu|Add1~6_combout\,
	cout => \alu|Add1~7\);

-- Location: LCCOMB_X59_Y37_N8
\alu|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~8_combout\ = ((\mux_ulaB|m_out[4]~14_combout\ $ (\mux_shift|m_out[4]~79_combout\ $ (!\alu|Add1~7\)))) # (GND)
-- \alu|Add1~9\ = CARRY((\mux_ulaB|m_out[4]~14_combout\ & ((\mux_shift|m_out[4]~79_combout\) # (!\alu|Add1~7\))) # (!\mux_ulaB|m_out[4]~14_combout\ & (\mux_shift|m_out[4]~79_combout\ & !\alu|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[4]~14_combout\,
	datab => \mux_shift|m_out[4]~79_combout\,
	datad => VCC,
	cin => \alu|Add1~7\,
	combout => \alu|Add1~8_combout\,
	cout => \alu|Add1~9\);

-- Location: LCCOMB_X59_Y37_N12
\alu|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~12_combout\ = ((\mux_ulaB|m_out[6]~10_combout\ $ (\mux_shift|m_out[6]~76_combout\ $ (!\alu|Add1~11\)))) # (GND)
-- \alu|Add1~13\ = CARRY((\mux_ulaB|m_out[6]~10_combout\ & ((\mux_shift|m_out[6]~76_combout\) # (!\alu|Add1~11\))) # (!\mux_ulaB|m_out[6]~10_combout\ & (\mux_shift|m_out[6]~76_combout\ & !\alu|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~10_combout\,
	datab => \mux_shift|m_out[6]~76_combout\,
	datad => VCC,
	cin => \alu|Add1~11\,
	combout => \alu|Add1~12_combout\,
	cout => \alu|Add1~13\);

-- Location: LCCOMB_X59_Y37_N14
\alu|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~14_combout\ = (\mux_ulaB|m_out[7]~8_combout\ & ((\mux_shift|m_out[7]~75_combout\ & (\alu|Add1~13\ & VCC)) # (!\mux_shift|m_out[7]~75_combout\ & (!\alu|Add1~13\)))) # (!\mux_ulaB|m_out[7]~8_combout\ & ((\mux_shift|m_out[7]~75_combout\ & 
-- (!\alu|Add1~13\)) # (!\mux_shift|m_out[7]~75_combout\ & ((\alu|Add1~13\) # (GND)))))
-- \alu|Add1~15\ = CARRY((\mux_ulaB|m_out[7]~8_combout\ & (!\mux_shift|m_out[7]~75_combout\ & !\alu|Add1~13\)) # (!\mux_ulaB|m_out[7]~8_combout\ & ((!\alu|Add1~13\) # (!\mux_shift|m_out[7]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~8_combout\,
	datab => \mux_shift|m_out[7]~75_combout\,
	datad => VCC,
	cin => \alu|Add1~13\,
	combout => \alu|Add1~14_combout\,
	cout => \alu|Add1~15\);

-- Location: LCCOMB_X59_Y37_N16
\alu|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~16_combout\ = ((\mux_shift|m_out[8]~72_combout\ $ (\mux_ulaB|m_out[8]~30_combout\ $ (!\alu|Add1~15\)))) # (GND)
-- \alu|Add1~17\ = CARRY((\mux_shift|m_out[8]~72_combout\ & ((\mux_ulaB|m_out[8]~30_combout\) # (!\alu|Add1~15\))) # (!\mux_shift|m_out[8]~72_combout\ & (\mux_ulaB|m_out[8]~30_combout\ & !\alu|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[8]~72_combout\,
	datab => \mux_ulaB|m_out[8]~30_combout\,
	datad => VCC,
	cin => \alu|Add1~15\,
	combout => \alu|Add1~16_combout\,
	cout => \alu|Add1~17\);

-- Location: LCCOMB_X59_Y37_N18
\alu|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~18_combout\ = (\mux_ulaB|m_out[9]~26_combout\ & ((\mux_shift|m_out[9]~69_combout\ & (\alu|Add1~17\ & VCC)) # (!\mux_shift|m_out[9]~69_combout\ & (!\alu|Add1~17\)))) # (!\mux_ulaB|m_out[9]~26_combout\ & ((\mux_shift|m_out[9]~69_combout\ & 
-- (!\alu|Add1~17\)) # (!\mux_shift|m_out[9]~69_combout\ & ((\alu|Add1~17\) # (GND)))))
-- \alu|Add1~19\ = CARRY((\mux_ulaB|m_out[9]~26_combout\ & (!\mux_shift|m_out[9]~69_combout\ & !\alu|Add1~17\)) # (!\mux_ulaB|m_out[9]~26_combout\ & ((!\alu|Add1~17\) # (!\mux_shift|m_out[9]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~26_combout\,
	datab => \mux_shift|m_out[9]~69_combout\,
	datad => VCC,
	cin => \alu|Add1~17\,
	combout => \alu|Add1~18_combout\,
	cout => \alu|Add1~19\);

-- Location: LCCOMB_X59_Y37_N20
\alu|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~20_combout\ = ((\mux_shift|m_out[10]~66_combout\ $ (\mux_ulaB|m_out[10]~28_combout\ $ (!\alu|Add1~19\)))) # (GND)
-- \alu|Add1~21\ = CARRY((\mux_shift|m_out[10]~66_combout\ & ((\mux_ulaB|m_out[10]~28_combout\) # (!\alu|Add1~19\))) # (!\mux_shift|m_out[10]~66_combout\ & (\mux_ulaB|m_out[10]~28_combout\ & !\alu|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[10]~66_combout\,
	datab => \mux_ulaB|m_out[10]~28_combout\,
	datad => VCC,
	cin => \alu|Add1~19\,
	combout => \alu|Add1~20_combout\,
	cout => \alu|Add1~21\);

-- Location: LCCOMB_X59_Y37_N22
\alu|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~22_combout\ = (\mux_ulaB|m_out[11]~24_combout\ & ((\mux_shift|m_out[11]~63_combout\ & (\alu|Add1~21\ & VCC)) # (!\mux_shift|m_out[11]~63_combout\ & (!\alu|Add1~21\)))) # (!\mux_ulaB|m_out[11]~24_combout\ & ((\mux_shift|m_out[11]~63_combout\ & 
-- (!\alu|Add1~21\)) # (!\mux_shift|m_out[11]~63_combout\ & ((\alu|Add1~21\) # (GND)))))
-- \alu|Add1~23\ = CARRY((\mux_ulaB|m_out[11]~24_combout\ & (!\mux_shift|m_out[11]~63_combout\ & !\alu|Add1~21\)) # (!\mux_ulaB|m_out[11]~24_combout\ & ((!\alu|Add1~21\) # (!\mux_shift|m_out[11]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[11]~24_combout\,
	datab => \mux_shift|m_out[11]~63_combout\,
	datad => VCC,
	cin => \alu|Add1~21\,
	combout => \alu|Add1~22_combout\,
	cout => \alu|Add1~23\);

-- Location: LCCOMB_X59_Y37_N24
\alu|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~24_combout\ = ((\mux_ulaB|m_out[12]~22_combout\ $ (\mux_shift|m_out[12]~60_combout\ $ (!\alu|Add1~23\)))) # (GND)
-- \alu|Add1~25\ = CARRY((\mux_ulaB|m_out[12]~22_combout\ & ((\mux_shift|m_out[12]~60_combout\) # (!\alu|Add1~23\))) # (!\mux_ulaB|m_out[12]~22_combout\ & (\mux_shift|m_out[12]~60_combout\ & !\alu|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[12]~22_combout\,
	datab => \mux_shift|m_out[12]~60_combout\,
	datad => VCC,
	cin => \alu|Add1~23\,
	combout => \alu|Add1~24_combout\,
	cout => \alu|Add1~25\);

-- Location: LCCOMB_X59_Y37_N28
\alu|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~28_combout\ = ((\mux_shift|m_out[14]~54_combout\ $ (\mux_ulaB|m_out[14]~20_combout\ $ (!\alu|Add1~27\)))) # (GND)
-- \alu|Add1~29\ = CARRY((\mux_shift|m_out[14]~54_combout\ & ((\mux_ulaB|m_out[14]~20_combout\) # (!\alu|Add1~27\))) # (!\mux_shift|m_out[14]~54_combout\ & (\mux_ulaB|m_out[14]~20_combout\ & !\alu|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[14]~54_combout\,
	datab => \mux_ulaB|m_out[14]~20_combout\,
	datad => VCC,
	cin => \alu|Add1~27\,
	combout => \alu|Add1~28_combout\,
	cout => \alu|Add1~29\);

-- Location: LCCOMB_X59_Y37_N30
\alu|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~30_combout\ = (\mux_ulaB|m_out[15]~16_combout\ & ((\mux_shift|m_out[15]~51_combout\ & (\alu|Add1~29\ & VCC)) # (!\mux_shift|m_out[15]~51_combout\ & (!\alu|Add1~29\)))) # (!\mux_ulaB|m_out[15]~16_combout\ & ((\mux_shift|m_out[15]~51_combout\ & 
-- (!\alu|Add1~29\)) # (!\mux_shift|m_out[15]~51_combout\ & ((\alu|Add1~29\) # (GND)))))
-- \alu|Add1~31\ = CARRY((\mux_ulaB|m_out[15]~16_combout\ & (!\mux_shift|m_out[15]~51_combout\ & !\alu|Add1~29\)) # (!\mux_ulaB|m_out[15]~16_combout\ & ((!\alu|Add1~29\) # (!\mux_shift|m_out[15]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~16_combout\,
	datab => \mux_shift|m_out[15]~51_combout\,
	datad => VCC,
	cin => \alu|Add1~29\,
	combout => \alu|Add1~30_combout\,
	cout => \alu|Add1~31\);

-- Location: LCCOMB_X59_Y36_N0
\alu|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~32_combout\ = ((\mux_ulaB|m_out[16]~35_combout\ $ (\mux_shift|m_out[16]~6_combout\ $ (!\alu|Add1~31\)))) # (GND)
-- \alu|Add1~33\ = CARRY((\mux_ulaB|m_out[16]~35_combout\ & ((\mux_shift|m_out[16]~6_combout\) # (!\alu|Add1~31\))) # (!\mux_ulaB|m_out[16]~35_combout\ & (\mux_shift|m_out[16]~6_combout\ & !\alu|Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[16]~35_combout\,
	datab => \mux_shift|m_out[16]~6_combout\,
	datad => VCC,
	cin => \alu|Add1~31\,
	combout => \alu|Add1~32_combout\,
	cout => \alu|Add1~33\);

-- Location: LCCOMB_X59_Y36_N2
\alu|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~34_combout\ = (\mux_ulaB|m_out[17]~32_combout\ & ((\mux_shift|m_out[17]~48_combout\ & (\alu|Add1~33\ & VCC)) # (!\mux_shift|m_out[17]~48_combout\ & (!\alu|Add1~33\)))) # (!\mux_ulaB|m_out[17]~32_combout\ & ((\mux_shift|m_out[17]~48_combout\ & 
-- (!\alu|Add1~33\)) # (!\mux_shift|m_out[17]~48_combout\ & ((\alu|Add1~33\) # (GND)))))
-- \alu|Add1~35\ = CARRY((\mux_ulaB|m_out[17]~32_combout\ & (!\mux_shift|m_out[17]~48_combout\ & !\alu|Add1~33\)) # (!\mux_ulaB|m_out[17]~32_combout\ & ((!\alu|Add1~33\) # (!\mux_shift|m_out[17]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[17]~32_combout\,
	datab => \mux_shift|m_out[17]~48_combout\,
	datad => VCC,
	cin => \alu|Add1~33\,
	combout => \alu|Add1~34_combout\,
	cout => \alu|Add1~35\);

-- Location: LCCOMB_X59_Y36_N4
\alu|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~36_combout\ = ((\mux_ulaB|m_out[18]~49_combout\ $ (\mux_shift|m_out[18]~45_combout\ $ (!\alu|Add1~35\)))) # (GND)
-- \alu|Add1~37\ = CARRY((\mux_ulaB|m_out[18]~49_combout\ & ((\mux_shift|m_out[18]~45_combout\) # (!\alu|Add1~35\))) # (!\mux_ulaB|m_out[18]~49_combout\ & (\mux_shift|m_out[18]~45_combout\ & !\alu|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[18]~49_combout\,
	datab => \mux_shift|m_out[18]~45_combout\,
	datad => VCC,
	cin => \alu|Add1~35\,
	combout => \alu|Add1~36_combout\,
	cout => \alu|Add1~37\);

-- Location: LCCOMB_X59_Y36_N6
\alu|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~38_combout\ = (\mux_ulaB|m_out[19]~48_combout\ & ((\mux_shift|m_out[19]~42_combout\ & (\alu|Add1~37\ & VCC)) # (!\mux_shift|m_out[19]~42_combout\ & (!\alu|Add1~37\)))) # (!\mux_ulaB|m_out[19]~48_combout\ & ((\mux_shift|m_out[19]~42_combout\ & 
-- (!\alu|Add1~37\)) # (!\mux_shift|m_out[19]~42_combout\ & ((\alu|Add1~37\) # (GND)))))
-- \alu|Add1~39\ = CARRY((\mux_ulaB|m_out[19]~48_combout\ & (!\mux_shift|m_out[19]~42_combout\ & !\alu|Add1~37\)) # (!\mux_ulaB|m_out[19]~48_combout\ & ((!\alu|Add1~37\) # (!\mux_shift|m_out[19]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[19]~48_combout\,
	datab => \mux_shift|m_out[19]~42_combout\,
	datad => VCC,
	cin => \alu|Add1~37\,
	combout => \alu|Add1~38_combout\,
	cout => \alu|Add1~39\);

-- Location: LCCOMB_X59_Y36_N8
\alu|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~40_combout\ = ((\mux_ulaB|m_out[20]~47_combout\ $ (\mux_shift|m_out[20]~39_combout\ $ (!\alu|Add1~39\)))) # (GND)
-- \alu|Add1~41\ = CARRY((\mux_ulaB|m_out[20]~47_combout\ & ((\mux_shift|m_out[20]~39_combout\) # (!\alu|Add1~39\))) # (!\mux_ulaB|m_out[20]~47_combout\ & (\mux_shift|m_out[20]~39_combout\ & !\alu|Add1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[20]~47_combout\,
	datab => \mux_shift|m_out[20]~39_combout\,
	datad => VCC,
	cin => \alu|Add1~39\,
	combout => \alu|Add1~40_combout\,
	cout => \alu|Add1~41\);

-- Location: LCCOMB_X59_Y36_N10
\alu|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~42_combout\ = (\mux_ulaB|m_out[21]~46_combout\ & ((\mux_shift|m_out[21]~36_combout\ & (\alu|Add1~41\ & VCC)) # (!\mux_shift|m_out[21]~36_combout\ & (!\alu|Add1~41\)))) # (!\mux_ulaB|m_out[21]~46_combout\ & ((\mux_shift|m_out[21]~36_combout\ & 
-- (!\alu|Add1~41\)) # (!\mux_shift|m_out[21]~36_combout\ & ((\alu|Add1~41\) # (GND)))))
-- \alu|Add1~43\ = CARRY((\mux_ulaB|m_out[21]~46_combout\ & (!\mux_shift|m_out[21]~36_combout\ & !\alu|Add1~41\)) # (!\mux_ulaB|m_out[21]~46_combout\ & ((!\alu|Add1~41\) # (!\mux_shift|m_out[21]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[21]~46_combout\,
	datab => \mux_shift|m_out[21]~36_combout\,
	datad => VCC,
	cin => \alu|Add1~41\,
	combout => \alu|Add1~42_combout\,
	cout => \alu|Add1~43\);

-- Location: LCCOMB_X59_Y36_N12
\alu|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~44_combout\ = ((\mux_ulaB|m_out[22]~45_combout\ $ (\mux_shift|m_out[22]~33_combout\ $ (!\alu|Add1~43\)))) # (GND)
-- \alu|Add1~45\ = CARRY((\mux_ulaB|m_out[22]~45_combout\ & ((\mux_shift|m_out[22]~33_combout\) # (!\alu|Add1~43\))) # (!\mux_ulaB|m_out[22]~45_combout\ & (\mux_shift|m_out[22]~33_combout\ & !\alu|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[22]~45_combout\,
	datab => \mux_shift|m_out[22]~33_combout\,
	datad => VCC,
	cin => \alu|Add1~43\,
	combout => \alu|Add1~44_combout\,
	cout => \alu|Add1~45\);

-- Location: LCCOMB_X59_Y36_N14
\alu|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~46_combout\ = (\mux_shift|m_out[23]~30_combout\ & ((\mux_ulaB|m_out[23]~44_combout\ & (\alu|Add1~45\ & VCC)) # (!\mux_ulaB|m_out[23]~44_combout\ & (!\alu|Add1~45\)))) # (!\mux_shift|m_out[23]~30_combout\ & ((\mux_ulaB|m_out[23]~44_combout\ & 
-- (!\alu|Add1~45\)) # (!\mux_ulaB|m_out[23]~44_combout\ & ((\alu|Add1~45\) # (GND)))))
-- \alu|Add1~47\ = CARRY((\mux_shift|m_out[23]~30_combout\ & (!\mux_ulaB|m_out[23]~44_combout\ & !\alu|Add1~45\)) # (!\mux_shift|m_out[23]~30_combout\ & ((!\alu|Add1~45\) # (!\mux_ulaB|m_out[23]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[23]~30_combout\,
	datab => \mux_ulaB|m_out[23]~44_combout\,
	datad => VCC,
	cin => \alu|Add1~45\,
	combout => \alu|Add1~46_combout\,
	cout => \alu|Add1~47\);

-- Location: LCCOMB_X59_Y36_N16
\alu|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~48_combout\ = ((\mux_shift|m_out[24]~27_combout\ $ (\mux_ulaB|m_out[24]~43_combout\ $ (!\alu|Add1~47\)))) # (GND)
-- \alu|Add1~49\ = CARRY((\mux_shift|m_out[24]~27_combout\ & ((\mux_ulaB|m_out[24]~43_combout\) # (!\alu|Add1~47\))) # (!\mux_shift|m_out[24]~27_combout\ & (\mux_ulaB|m_out[24]~43_combout\ & !\alu|Add1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[24]~27_combout\,
	datab => \mux_ulaB|m_out[24]~43_combout\,
	datad => VCC,
	cin => \alu|Add1~47\,
	combout => \alu|Add1~48_combout\,
	cout => \alu|Add1~49\);

-- Location: LCCOMB_X59_Y36_N18
\alu|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~50_combout\ = (\mux_shift|m_out[25]~24_combout\ & ((\mux_ulaB|m_out[25]~42_combout\ & (\alu|Add1~49\ & VCC)) # (!\mux_ulaB|m_out[25]~42_combout\ & (!\alu|Add1~49\)))) # (!\mux_shift|m_out[25]~24_combout\ & ((\mux_ulaB|m_out[25]~42_combout\ & 
-- (!\alu|Add1~49\)) # (!\mux_ulaB|m_out[25]~42_combout\ & ((\alu|Add1~49\) # (GND)))))
-- \alu|Add1~51\ = CARRY((\mux_shift|m_out[25]~24_combout\ & (!\mux_ulaB|m_out[25]~42_combout\ & !\alu|Add1~49\)) # (!\mux_shift|m_out[25]~24_combout\ & ((!\alu|Add1~49\) # (!\mux_ulaB|m_out[25]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[25]~24_combout\,
	datab => \mux_ulaB|m_out[25]~42_combout\,
	datad => VCC,
	cin => \alu|Add1~49\,
	combout => \alu|Add1~50_combout\,
	cout => \alu|Add1~51\);

-- Location: LCCOMB_X59_Y36_N20
\alu|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~52_combout\ = ((\mux_ulaB|m_out[26]~41_combout\ $ (\mux_shift|m_out[26]~21_combout\ $ (!\alu|Add1~51\)))) # (GND)
-- \alu|Add1~53\ = CARRY((\mux_ulaB|m_out[26]~41_combout\ & ((\mux_shift|m_out[26]~21_combout\) # (!\alu|Add1~51\))) # (!\mux_ulaB|m_out[26]~41_combout\ & (\mux_shift|m_out[26]~21_combout\ & !\alu|Add1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[26]~41_combout\,
	datab => \mux_shift|m_out[26]~21_combout\,
	datad => VCC,
	cin => \alu|Add1~51\,
	combout => \alu|Add1~52_combout\,
	cout => \alu|Add1~53\);

-- Location: LCCOMB_X59_Y36_N22
\alu|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~54_combout\ = (\mux_shift|m_out[27]~18_combout\ & ((\mux_ulaB|m_out[27]~40_combout\ & (\alu|Add1~53\ & VCC)) # (!\mux_ulaB|m_out[27]~40_combout\ & (!\alu|Add1~53\)))) # (!\mux_shift|m_out[27]~18_combout\ & ((\mux_ulaB|m_out[27]~40_combout\ & 
-- (!\alu|Add1~53\)) # (!\mux_ulaB|m_out[27]~40_combout\ & ((\alu|Add1~53\) # (GND)))))
-- \alu|Add1~55\ = CARRY((\mux_shift|m_out[27]~18_combout\ & (!\mux_ulaB|m_out[27]~40_combout\ & !\alu|Add1~53\)) # (!\mux_shift|m_out[27]~18_combout\ & ((!\alu|Add1~53\) # (!\mux_ulaB|m_out[27]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[27]~18_combout\,
	datab => \mux_ulaB|m_out[27]~40_combout\,
	datad => VCC,
	cin => \alu|Add1~53\,
	combout => \alu|Add1~54_combout\,
	cout => \alu|Add1~55\);

-- Location: LCCOMB_X59_Y36_N24
\alu|Add1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~56_combout\ = ((\mux_ulaB|m_out[28]~39_combout\ $ (\mux_shift|m_out[28]~15_combout\ $ (!\alu|Add1~55\)))) # (GND)
-- \alu|Add1~57\ = CARRY((\mux_ulaB|m_out[28]~39_combout\ & ((\mux_shift|m_out[28]~15_combout\) # (!\alu|Add1~55\))) # (!\mux_ulaB|m_out[28]~39_combout\ & (\mux_shift|m_out[28]~15_combout\ & !\alu|Add1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[28]~39_combout\,
	datab => \mux_shift|m_out[28]~15_combout\,
	datad => VCC,
	cin => \alu|Add1~55\,
	combout => \alu|Add1~56_combout\,
	cout => \alu|Add1~57\);

-- Location: LCCOMB_X59_Y36_N26
\alu|Add1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~58_combout\ = (\mux_ulaB|m_out[29]~38_combout\ & ((\mux_shift|m_out[29]~12_combout\ & (\alu|Add1~57\ & VCC)) # (!\mux_shift|m_out[29]~12_combout\ & (!\alu|Add1~57\)))) # (!\mux_ulaB|m_out[29]~38_combout\ & ((\mux_shift|m_out[29]~12_combout\ & 
-- (!\alu|Add1~57\)) # (!\mux_shift|m_out[29]~12_combout\ & ((\alu|Add1~57\) # (GND)))))
-- \alu|Add1~59\ = CARRY((\mux_ulaB|m_out[29]~38_combout\ & (!\mux_shift|m_out[29]~12_combout\ & !\alu|Add1~57\)) # (!\mux_ulaB|m_out[29]~38_combout\ & ((!\alu|Add1~57\) # (!\mux_shift|m_out[29]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[29]~38_combout\,
	datab => \mux_shift|m_out[29]~12_combout\,
	datad => VCC,
	cin => \alu|Add1~57\,
	combout => \alu|Add1~58_combout\,
	cout => \alu|Add1~59\);

-- Location: LCCOMB_X59_Y36_N28
\alu|Add1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~60_combout\ = ((\mux_ulaB|m_out[30]~37_combout\ $ (\mux_shift|m_out[30]~9_combout\ $ (!\alu|Add1~59\)))) # (GND)
-- \alu|Add1~61\ = CARRY((\mux_ulaB|m_out[30]~37_combout\ & ((\mux_shift|m_out[30]~9_combout\) # (!\alu|Add1~59\))) # (!\mux_ulaB|m_out[30]~37_combout\ & (\mux_shift|m_out[30]~9_combout\ & !\alu|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[30]~37_combout\,
	datab => \mux_shift|m_out[30]~9_combout\,
	datad => VCC,
	cin => \alu|Add1~59\,
	combout => \alu|Add1~60_combout\,
	cout => \alu|Add1~61\);

-- Location: LCCOMB_X56_Y34_N12
\alu|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~7_combout\ = (\alu|Mux1~6_combout\) # ((\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & \alu|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \alu|Mux1~6_combout\,
	datad => \alu|Add1~60_combout\,
	combout => \alu|Mux1~7_combout\);

-- Location: LCCOMB_X56_Y34_N18
\alu|Mux1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~10_combout\ = (\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[2]~26_combout\) # ((\alu|Mux1~7_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & (!\actr|alu_ctr[2]~26_combout\ & (\alu|Mux1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \alu|Mux1~9_combout\,
	datad => \alu|Mux1~7_combout\,
	combout => \alu|Mux1~10_combout\);

-- Location: LCCOMB_X56_Y34_N8
\alu|Mux1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~12_combout\ = (\actr|alu_ctr[2]~26_combout\ & ((\alu|Mux1~10_combout\ & ((\alu|Mux1~11_combout\))) # (!\alu|Mux1~10_combout\ & (\alu|Mux1~5_combout\)))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux1~5_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \alu|Mux1~11_combout\,
	datad => \alu|Mux1~10_combout\,
	combout => \alu|Mux1~12_combout\);

-- Location: LCFF_X56_Y34_N9
\regULA|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(30));

-- Location: LCCOMB_X66_Y37_N22
\breg_data_mux|m_out[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[30]~1_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(30))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \rdm|sr_out\(30),
	datad => \regULA|sr_out\(30),
	combout => \breg_data_mux|m_out[30]~1_combout\);

-- Location: LCCOMB_X63_Y40_N26
\bcoreg|regB[17]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[17]~28_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(28)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a17\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(28),
	combout => \bcoreg|regB[17]~28_combout\);

-- Location: LCFF_X63_Y40_N27
\rgB|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[17]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(17));

-- Location: LCCOMB_X63_Y40_N10
\alu|ShiftLeft0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~115_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(17))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(17),
	datac => \rgB|sr_out\(18),
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X63_Y40_N6
\alu|ShiftLeft0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~117_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftLeft0~116_combout\) # (\alu|ShiftLeft0~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftLeft0~116_combout\,
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \alu|ShiftLeft0~115_combout\,
	combout => \alu|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X56_Y41_N24
\alu|ShiftLeft0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~118_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~171_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~171_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftLeft0~117_combout\,
	combout => \alu|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X56_Y41_N0
\alu|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~7_combout\ = (\alu|Mux29~21_combout\ & ((\alu|ShiftLeft0~118_combout\))) # (!\alu|Mux29~21_combout\ & (\alu|ShiftLeft0~134_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~134_combout\,
	datac => \alu|ShiftLeft0~118_combout\,
	datad => \alu|Mux29~21_combout\,
	combout => \alu|Mux3~7_combout\);

-- Location: LCCOMB_X59_Y42_N12
\alu|Mux3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~8_combout\ = (\alu|ShiftRight0~70_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|Mux3~6_combout\)))) # (!\alu|ShiftRight0~70_combout\ & (((\alu|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~70_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|Mux3~6_combout\,
	datad => \alu|Mux3~7_combout\,
	combout => \alu|Mux3~8_combout\);

-- Location: LCCOMB_X59_Y42_N6
\alu|Mux3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~11_combout\ = (\alu|Mux3~17_combout\ & ((\alu|Mux3~10_combout\ & ((\alu|Mux3~8_combout\))) # (!\alu|Mux3~10_combout\ & (\alu|ShiftLeft0~88_combout\)))) # (!\alu|Mux3~17_combout\ & (\alu|Mux3~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~17_combout\,
	datab => \alu|Mux3~10_combout\,
	datac => \alu|ShiftLeft0~88_combout\,
	datad => \alu|Mux3~8_combout\,
	combout => \alu|Mux3~11_combout\);

-- Location: LCCOMB_X59_Y42_N24
\alu|Mux3~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~17_combout\ = (\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[2]~33_combout\ & ((\ctr_mips|pstate.rtype_ex_st~regout\) # (!\ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[2]~33_combout\,
	combout => \alu|Mux3~17_combout\);

-- Location: LCCOMB_X59_Y42_N22
\alu|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~4_combout\ = (\actr|alu_ctr[3]~29_combout\ & (!\actr|alu_ctr[1]~31_combout\ & ((!\alu|Mux3~17_combout\) # (!\alu|ShiftLeft0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~53_combout\,
	datab => \alu|Mux3~17_combout\,
	datac => \actr|alu_ctr[3]~29_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux3~4_combout\);

-- Location: LCCOMB_X60_Y42_N24
\alu|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~5_combout\ = (\alu|Mux3~4_combout\) # ((!\actr|alu_ctr[3]~29_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~29_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux3~4_combout\,
	combout => \alu|Mux3~5_combout\);

-- Location: LCCOMB_X59_Y39_N24
\alu|ShiftRight0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~49_combout\ = (\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \rgB|sr_out\(29),
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~49_combout\);

-- Location: LCCOMB_X62_Y39_N10
\bcoreg|regB[30]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[30]~22_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(41)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32~45_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a30\,
	datad => \bcoreg|breg32_rtl_1_bypass\(41),
	combout => \bcoreg|regB[30]~22_combout\);

-- Location: LCFF_X62_Y39_N11
\rgB|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[30]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(30));

-- Location: LCCOMB_X59_Y39_N2
\alu|ShiftRight0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~50_combout\ = (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(30)))) # (!\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(28),
	datab => \rgB|sr_out\(30),
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~50_combout\);

-- Location: LCCOMB_X59_Y39_N4
\alu|ShiftRight0~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~108_combout\ = (\alu|ShiftRight0~49_combout\) # (\alu|ShiftRight0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu|ShiftRight0~49_combout\,
	datad => \alu|ShiftRight0~50_combout\,
	combout => \alu|ShiftRight0~108_combout\);

-- Location: LCCOMB_X57_Y38_N18
\alu|ShiftRight0~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~70_combout\ = (!\mux_shift|m_out[3]~91_combout\ & !\mux_shift|m_out[2]~89_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \mux_shift|m_out[2]~89_combout\,
	combout => \alu|ShiftRight0~70_combout\);

-- Location: LCCOMB_X58_Y38_N28
\alu|ShiftRight0~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~109_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftRight0~70_combout\ & ((\alu|ShiftRight0~108_combout\))) # (!\alu|ShiftRight0~70_combout\ & (\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftRight0~108_combout\,
	datad => \alu|ShiftRight0~70_combout\,
	combout => \alu|ShiftRight0~109_combout\);

-- Location: LCCOMB_X58_Y38_N12
\alu|ShiftRight0~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~132_combout\ = (\alu|ShiftRight0~109_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.decode_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \alu|ShiftRight0~109_combout\,
	combout => \alu|ShiftRight0~132_combout\);

-- Location: LCCOMB_X60_Y38_N30
\alu|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~6_combout\ = (\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[0]~32_combout\) # ((!\mux_shift|m_out[4]~79_combout\ & !\alu|ShiftLeft0~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|ShiftLeft0~53_combout\,
	combout => \alu|Mux8~6_combout\);

-- Location: LCCOMB_X58_Y42_N20
\alu|Mux3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~12_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_shift|m_out[28]~15_combout\ & ((\mux_ulaB|m_out[28]~39_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_shift|m_out[28]~15_combout\ & (\mux_ulaB|m_out[28]~39_combout\ & !\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \mux_shift|m_out[28]~15_combout\,
	datac => \mux_ulaB|m_out[28]~39_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux3~12_combout\);

-- Location: LCCOMB_X58_Y42_N14
\alu|Mux3~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~13_combout\ = (\alu|Mux8~6_combout\ & ((\alu|Mux3~12_combout\ & ((\alu|Add1~56_combout\))) # (!\alu|Mux3~12_combout\ & (\alu|ShiftRight1~99_combout\)))) # (!\alu|Mux8~6_combout\ & (((\alu|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~99_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|Mux3~12_combout\,
	datad => \alu|Add1~56_combout\,
	combout => \alu|Mux3~13_combout\);

-- Location: LCCOMB_X60_Y36_N22
\alu|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~12_combout\ = (!\alu|Mux29~2_combout\ & (((!\alu|ShiftLeft0~48_combout\ & !\alu|ShiftLeft0~51_combout\)) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~48_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|ShiftLeft0~51_combout\,
	datad => \alu|Mux29~2_combout\,
	combout => \alu|Mux4~12_combout\);

-- Location: LCCOMB_X58_Y40_N8
\alu|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~2_combout\ = (\mux_shift|m_out[4]~79_combout\) # ((\mux_shift|m_out[2]~89_combout\ & !\mux_shift|m_out[3]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \mux_shift|m_out[4]~79_combout\,
	combout => \alu|Mux4~2_combout\);

-- Location: LCCOMB_X58_Y40_N4
\alu|ShiftLeft0~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~141_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\alu|ShiftLeft0~174_combout\ & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~174_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	combout => \alu|ShiftLeft0~141_combout\);

-- Location: LCCOMB_X56_Y36_N28
\alu|ShiftLeft0~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~169_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftLeft0~93_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\alu|ShiftLeft0~93_combout\))) # (!\mux_shift|m_out[0]~93_combout\ & 
-- (\alu|ShiftLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftLeft0~97_combout\,
	datad => \alu|ShiftLeft0~93_combout\,
	combout => \alu|ShiftLeft0~169_combout\);

-- Location: LCCOMB_X56_Y39_N2
\alu|ShiftLeft0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~112_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(18))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(19))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(18),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \rgB|sr_out\(19),
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X56_Y39_N16
\alu|ShiftLeft0~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~111_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[16]~35_combout\))) # (!\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[17]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \mux_ulaB|m_out[17]~32_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X56_Y39_N24
\alu|ShiftLeft0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~113_combout\ = (\alu|ShiftLeft0~111_combout\) # ((!\mux_shift|m_out[1]~87_combout\ & ((\alu|ShiftLeft0~112_combout\) # (\mux_ulaB|m_out[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \alu|ShiftLeft0~112_combout\,
	datac => \alu|ShiftLeft0~111_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \alu|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X57_Y39_N16
\alu|ShiftLeft0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~114_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~169_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~169_combout\,
	datad => \alu|ShiftLeft0~113_combout\,
	combout => \alu|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X58_Y40_N6
\alu|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~3_combout\ = (\alu|ShiftLeft0~131_combout\ & (\alu|ShiftLeft0~141_combout\ & (!\alu|Mux4~2_combout\))) # (!\alu|ShiftLeft0~131_combout\ & (((\alu|Mux4~2_combout\) # (\alu|ShiftLeft0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~131_combout\,
	datab => \alu|ShiftLeft0~141_combout\,
	datac => \alu|Mux4~2_combout\,
	datad => \alu|ShiftLeft0~114_combout\,
	combout => \alu|Mux4~3_combout\);

-- Location: LCCOMB_X58_Y40_N20
\alu|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~4_combout\ = (\alu|Mux4~2_combout\ & ((\alu|Mux4~3_combout\ & ((\alu|ShiftLeft0~84_combout\))) # (!\alu|Mux4~3_combout\ & (\alu|ShiftLeft0~129_combout\)))) # (!\alu|Mux4~2_combout\ & (((\alu|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~129_combout\,
	datab => \alu|Mux4~2_combout\,
	datac => \alu|ShiftLeft0~84_combout\,
	datad => \alu|Mux4~3_combout\,
	combout => \alu|Mux4~4_combout\);

-- Location: LCCOMB_X59_Y35_N10
\alu|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~10_combout\ = ((\actr|alu_ctr[1]~31_combout\) # ((\mux_ulaB|m_out[27]~40_combout\) # (\mux_shift|m_out[27]~18_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \mux_ulaB|m_out[27]~40_combout\,
	datad => \mux_shift|m_out[27]~18_combout\,
	combout => \alu|Mux4~10_combout\);

-- Location: LCCOMB_X60_Y40_N4
\alu|ShiftRight1~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~78_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\rgB|sr_out\(28))))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\rgB|sr_out\(28)))) # (!\mux_shift|m_out[0]~82_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(27),
	datab => \rgB|sr_out\(28),
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftRight1~78_combout\);

-- Location: LCCOMB_X60_Y40_N14
\alu|ShiftRight1~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~51_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\rgB|sr_out\(30))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\rgB|sr_out\(30))) # (!\mux_shift|m_out[0]~82_combout\ & ((\rgB|sr_out\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(30),
	datab => \rgB|sr_out\(29),
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftRight1~51_combout\);

-- Location: LCCOMB_X60_Y40_N6
\alu|ShiftRight1~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~112_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\alu|ShiftRight1~51_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\alu|ShiftRight1~51_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\alu|ShiftRight1~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \alu|ShiftRight1~78_combout\,
	datac => \alu|ShiftRight1~51_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~112_combout\);

-- Location: LCCOMB_X58_Y38_N0
\alu|ShiftRight0~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~107_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftRight0~70_combout\ & ((\alu|ShiftRight1~112_combout\))) # (!\alu|ShiftRight0~70_combout\ & (\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftRight0~70_combout\,
	datac => \rgB|sr_out\(31),
	datad => \alu|ShiftRight1~112_combout\,
	combout => \alu|ShiftRight0~107_combout\);

-- Location: LCCOMB_X58_Y38_N26
\alu|ShiftRight0~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~131_combout\ = (\alu|ShiftRight0~107_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.decode_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \alu|ShiftRight0~107_combout\,
	combout => \alu|ShiftRight0~131_combout\);

-- Location: LCCOMB_X62_Y39_N26
\mux_ulaB|m_out[26]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[26]~41_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datad => \rgB|sr_out\(26),
	combout => \mux_ulaB|m_out[26]~41_combout\);

-- Location: LCCOMB_X62_Y39_N6
\mux_ulaB|m_out[22]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[22]~45_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(22) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[22]~45_combout\);

-- Location: LCCOMB_X61_Y39_N10
\mux_ulaB|m_out[19]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[19]~48_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \rgB|sr_out\(19),
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[19]~48_combout\);

-- Location: LCCOMB_X62_Y39_N18
\mux_ulaB|m_out[18]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[18]~49_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(18) & !\mux_ulaB|Equal2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rgB|sr_out\(18),
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \mux_ulaB|m_out[18]~49_combout\);

-- Location: LCCOMB_X58_Y36_N28
\alu|tmp[14]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[14]~28_combout\ = ((\mux_shift|m_out[14]~54_combout\ $ (\mux_ulaB|m_out[14]~20_combout\ $ (\alu|tmp[13]~27\)))) # (GND)
-- \alu|tmp[14]~29\ = CARRY((\mux_shift|m_out[14]~54_combout\ & ((!\alu|tmp[13]~27\) # (!\mux_ulaB|m_out[14]~20_combout\))) # (!\mux_shift|m_out[14]~54_combout\ & (!\mux_ulaB|m_out[14]~20_combout\ & !\alu|tmp[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[14]~54_combout\,
	datab => \mux_ulaB|m_out[14]~20_combout\,
	datad => VCC,
	cin => \alu|tmp[13]~27\,
	combout => \alu|tmp[14]~28_combout\,
	cout => \alu|tmp[14]~29\);

-- Location: LCCOMB_X58_Y36_N30
\alu|tmp[15]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[15]~30_combout\ = (\mux_ulaB|m_out[15]~16_combout\ & ((\mux_shift|m_out[15]~51_combout\ & (!\alu|tmp[14]~29\)) # (!\mux_shift|m_out[15]~51_combout\ & ((\alu|tmp[14]~29\) # (GND))))) # (!\mux_ulaB|m_out[15]~16_combout\ & 
-- ((\mux_shift|m_out[15]~51_combout\ & (\alu|tmp[14]~29\ & VCC)) # (!\mux_shift|m_out[15]~51_combout\ & (!\alu|tmp[14]~29\))))
-- \alu|tmp[15]~31\ = CARRY((\mux_ulaB|m_out[15]~16_combout\ & ((!\alu|tmp[14]~29\) # (!\mux_shift|m_out[15]~51_combout\))) # (!\mux_ulaB|m_out[15]~16_combout\ & (!\mux_shift|m_out[15]~51_combout\ & !\alu|tmp[14]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[15]~16_combout\,
	datab => \mux_shift|m_out[15]~51_combout\,
	datad => VCC,
	cin => \alu|tmp[14]~29\,
	combout => \alu|tmp[15]~30_combout\,
	cout => \alu|tmp[15]~31\);

-- Location: LCCOMB_X58_Y35_N0
\alu|tmp[16]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[16]~32_combout\ = ((\mux_ulaB|m_out[16]~35_combout\ $ (\mux_shift|m_out[16]~6_combout\ $ (\alu|tmp[15]~31\)))) # (GND)
-- \alu|tmp[16]~33\ = CARRY((\mux_ulaB|m_out[16]~35_combout\ & (\mux_shift|m_out[16]~6_combout\ & !\alu|tmp[15]~31\)) # (!\mux_ulaB|m_out[16]~35_combout\ & ((\mux_shift|m_out[16]~6_combout\) # (!\alu|tmp[15]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[16]~35_combout\,
	datab => \mux_shift|m_out[16]~6_combout\,
	datad => VCC,
	cin => \alu|tmp[15]~31\,
	combout => \alu|tmp[16]~32_combout\,
	cout => \alu|tmp[16]~33\);

-- Location: LCCOMB_X58_Y35_N2
\alu|tmp[17]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[17]~34_combout\ = (\mux_shift|m_out[17]~48_combout\ & ((\mux_ulaB|m_out[17]~32_combout\ & (!\alu|tmp[16]~33\)) # (!\mux_ulaB|m_out[17]~32_combout\ & (\alu|tmp[16]~33\ & VCC)))) # (!\mux_shift|m_out[17]~48_combout\ & 
-- ((\mux_ulaB|m_out[17]~32_combout\ & ((\alu|tmp[16]~33\) # (GND))) # (!\mux_ulaB|m_out[17]~32_combout\ & (!\alu|tmp[16]~33\))))
-- \alu|tmp[17]~35\ = CARRY((\mux_shift|m_out[17]~48_combout\ & (\mux_ulaB|m_out[17]~32_combout\ & !\alu|tmp[16]~33\)) # (!\mux_shift|m_out[17]~48_combout\ & ((\mux_ulaB|m_out[17]~32_combout\) # (!\alu|tmp[16]~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[17]~48_combout\,
	datab => \mux_ulaB|m_out[17]~32_combout\,
	datad => VCC,
	cin => \alu|tmp[16]~33\,
	combout => \alu|tmp[17]~34_combout\,
	cout => \alu|tmp[17]~35\);

-- Location: LCCOMB_X58_Y35_N4
\alu|tmp[18]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[18]~36_combout\ = ((\mux_shift|m_out[18]~45_combout\ $ (\mux_ulaB|m_out[18]~49_combout\ $ (\alu|tmp[17]~35\)))) # (GND)
-- \alu|tmp[18]~37\ = CARRY((\mux_shift|m_out[18]~45_combout\ & ((!\alu|tmp[17]~35\) # (!\mux_ulaB|m_out[18]~49_combout\))) # (!\mux_shift|m_out[18]~45_combout\ & (!\mux_ulaB|m_out[18]~49_combout\ & !\alu|tmp[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[18]~45_combout\,
	datab => \mux_ulaB|m_out[18]~49_combout\,
	datad => VCC,
	cin => \alu|tmp[17]~35\,
	combout => \alu|tmp[18]~36_combout\,
	cout => \alu|tmp[18]~37\);

-- Location: LCCOMB_X58_Y35_N8
\alu|tmp[20]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[20]~40_combout\ = ((\mux_ulaB|m_out[20]~47_combout\ $ (\mux_shift|m_out[20]~39_combout\ $ (\alu|tmp[19]~39\)))) # (GND)
-- \alu|tmp[20]~41\ = CARRY((\mux_ulaB|m_out[20]~47_combout\ & (\mux_shift|m_out[20]~39_combout\ & !\alu|tmp[19]~39\)) # (!\mux_ulaB|m_out[20]~47_combout\ & ((\mux_shift|m_out[20]~39_combout\) # (!\alu|tmp[19]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[20]~47_combout\,
	datab => \mux_shift|m_out[20]~39_combout\,
	datad => VCC,
	cin => \alu|tmp[19]~39\,
	combout => \alu|tmp[20]~40_combout\,
	cout => \alu|tmp[20]~41\);

-- Location: LCCOMB_X58_Y35_N12
\alu|tmp[22]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[22]~44_combout\ = ((\mux_shift|m_out[22]~33_combout\ $ (\mux_ulaB|m_out[22]~45_combout\ $ (\alu|tmp[21]~43\)))) # (GND)
-- \alu|tmp[22]~45\ = CARRY((\mux_shift|m_out[22]~33_combout\ & ((!\alu|tmp[21]~43\) # (!\mux_ulaB|m_out[22]~45_combout\))) # (!\mux_shift|m_out[22]~33_combout\ & (!\mux_ulaB|m_out[22]~45_combout\ & !\alu|tmp[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[22]~33_combout\,
	datab => \mux_ulaB|m_out[22]~45_combout\,
	datad => VCC,
	cin => \alu|tmp[21]~43\,
	combout => \alu|tmp[22]~44_combout\,
	cout => \alu|tmp[22]~45\);

-- Location: LCCOMB_X58_Y35_N16
\alu|tmp[24]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[24]~48_combout\ = ((\mux_shift|m_out[24]~27_combout\ $ (\mux_ulaB|m_out[24]~43_combout\ $ (\alu|tmp[23]~47\)))) # (GND)
-- \alu|tmp[24]~49\ = CARRY((\mux_shift|m_out[24]~27_combout\ & ((!\alu|tmp[23]~47\) # (!\mux_ulaB|m_out[24]~43_combout\))) # (!\mux_shift|m_out[24]~27_combout\ & (!\mux_ulaB|m_out[24]~43_combout\ & !\alu|tmp[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[24]~27_combout\,
	datab => \mux_ulaB|m_out[24]~43_combout\,
	datad => VCC,
	cin => \alu|tmp[23]~47\,
	combout => \alu|tmp[24]~48_combout\,
	cout => \alu|tmp[24]~49\);

-- Location: LCCOMB_X58_Y35_N18
\alu|tmp[25]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[25]~50_combout\ = (\mux_shift|m_out[25]~24_combout\ & ((\mux_ulaB|m_out[25]~42_combout\ & (!\alu|tmp[24]~49\)) # (!\mux_ulaB|m_out[25]~42_combout\ & (\alu|tmp[24]~49\ & VCC)))) # (!\mux_shift|m_out[25]~24_combout\ & 
-- ((\mux_ulaB|m_out[25]~42_combout\ & ((\alu|tmp[24]~49\) # (GND))) # (!\mux_ulaB|m_out[25]~42_combout\ & (!\alu|tmp[24]~49\))))
-- \alu|tmp[25]~51\ = CARRY((\mux_shift|m_out[25]~24_combout\ & (\mux_ulaB|m_out[25]~42_combout\ & !\alu|tmp[24]~49\)) # (!\mux_shift|m_out[25]~24_combout\ & ((\mux_ulaB|m_out[25]~42_combout\) # (!\alu|tmp[24]~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[25]~24_combout\,
	datab => \mux_ulaB|m_out[25]~42_combout\,
	datad => VCC,
	cin => \alu|tmp[24]~49\,
	combout => \alu|tmp[25]~50_combout\,
	cout => \alu|tmp[25]~51\);

-- Location: LCCOMB_X58_Y35_N20
\alu|tmp[26]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[26]~52_combout\ = ((\mux_shift|m_out[26]~21_combout\ $ (\mux_ulaB|m_out[26]~41_combout\ $ (\alu|tmp[25]~51\)))) # (GND)
-- \alu|tmp[26]~53\ = CARRY((\mux_shift|m_out[26]~21_combout\ & ((!\alu|tmp[25]~51\) # (!\mux_ulaB|m_out[26]~41_combout\))) # (!\mux_shift|m_out[26]~21_combout\ & (!\mux_ulaB|m_out[26]~41_combout\ & !\alu|tmp[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[26]~21_combout\,
	datab => \mux_ulaB|m_out[26]~41_combout\,
	datad => VCC,
	cin => \alu|tmp[25]~51\,
	combout => \alu|tmp[26]~52_combout\,
	cout => \alu|tmp[26]~53\);

-- Location: LCCOMB_X58_Y35_N22
\alu|tmp[27]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[27]~54_combout\ = (\mux_ulaB|m_out[27]~40_combout\ & ((\mux_shift|m_out[27]~18_combout\ & (!\alu|tmp[26]~53\)) # (!\mux_shift|m_out[27]~18_combout\ & ((\alu|tmp[26]~53\) # (GND))))) # (!\mux_ulaB|m_out[27]~40_combout\ & 
-- ((\mux_shift|m_out[27]~18_combout\ & (\alu|tmp[26]~53\ & VCC)) # (!\mux_shift|m_out[27]~18_combout\ & (!\alu|tmp[26]~53\))))
-- \alu|tmp[27]~55\ = CARRY((\mux_ulaB|m_out[27]~40_combout\ & ((!\alu|tmp[26]~53\) # (!\mux_shift|m_out[27]~18_combout\))) # (!\mux_ulaB|m_out[27]~40_combout\ & (!\mux_shift|m_out[27]~18_combout\ & !\alu|tmp[26]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[27]~40_combout\,
	datab => \mux_shift|m_out[27]~18_combout\,
	datad => VCC,
	cin => \alu|tmp[26]~53\,
	combout => \alu|tmp[27]~54_combout\,
	cout => \alu|tmp[27]~55\);

-- Location: LCCOMB_X59_Y35_N20
\alu|ShiftRight1~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~56_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\actr|alu_ctr~30_combout\ & (!\ir|sr_out\(8))) # (!\actr|alu_ctr~30_combout\ & ((!\mux_shift|m_out[2]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(8),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \actr|alu_ctr~30_combout\,
	datad => \mux_shift|m_out[2]~88_combout\,
	combout => \alu|ShiftRight1~56_combout\);

-- Location: LCCOMB_X59_Y38_N24
\alu|ShiftRight1~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~79_combout\ = (!\mux_shift|m_out[0]~93_combout\ & (\mux_ulaB|m_out[31]~36_combout\ & !\mux_shift|m_out[0]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \mux_ulaB|m_out[31]~36_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftRight1~79_combout\);

-- Location: LCCOMB_X59_Y35_N14
\alu|ShiftRight1~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~80_combout\ = (\mux_shift|m_out[2]~89_combout\ & (((!\mux_shift|m_out[1]~87_combout\ & \alu|ShiftRight1~79_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & (\mux_ulaB|m_out[31]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftRight1~79_combout\,
	combout => \alu|ShiftRight1~80_combout\);

-- Location: LCCOMB_X59_Y35_N26
\alu|ShiftRight1~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~98_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight1~80_combout\) # ((\alu|ShiftRight1~56_combout\ & \alu|ShiftRight1~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftRight1~56_combout\,
	datac => \alu|ShiftRight1~80_combout\,
	datad => \alu|ShiftRight1~112_combout\,
	combout => \alu|ShiftRight1~98_combout\);

-- Location: LCCOMB_X59_Y35_N18
\alu|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~6_combout\ = (\alu|Mux4~5_combout\ & (((\alu|Add1~54_combout\)) # (!\alu|Mux8~6_combout\))) # (!\alu|Mux4~5_combout\ & (\alu|Mux8~6_combout\ & ((\alu|ShiftRight1~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~5_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|Add1~54_combout\,
	datad => \alu|ShiftRight1~98_combout\,
	combout => \alu|Mux4~6_combout\);

-- Location: LCCOMB_X59_Y35_N0
\alu|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~7_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & (\alu|tmp[27]~54_combout\)) # (!\alu|Mux8~8_combout\ & ((\alu|Mux4~6_combout\))))) # (!\alu|Mux8~7_combout\ & (((!\alu|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|tmp[27]~54_combout\,
	datac => \alu|Mux8~8_combout\,
	datad => \alu|Mux4~6_combout\,
	combout => \alu|Mux4~7_combout\);

-- Location: LCCOMB_X59_Y35_N2
\alu|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~8_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux4~7_combout\ & (\alu|ShiftRight0~131_combout\)) # (!\alu|Mux4~7_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \alu|ShiftRight0~131_combout\,
	datac => \mux_ulaB|m_out[31]~36_combout\,
	datad => \alu|Mux4~7_combout\,
	combout => \alu|Mux4~8_combout\);

-- Location: LCCOMB_X59_Y35_N28
\alu|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~9_combout\ = (\alu|Mux4~8_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux4~8_combout\,
	combout => \alu|Mux4~9_combout\);

-- Location: LCCOMB_X59_Y35_N12
\alu|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~11_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux4~10_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datab => \alu|Mux4~10_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux4~9_combout\,
	combout => \alu|Mux4~11_combout\);

-- Location: LCCOMB_X59_Y35_N22
\alu|Mux4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux4~combout\ = (\alu|Mux4~12_combout\ & ((\alu|Mux4~11_combout\ & (\alu|a32~27_combout\)) # (!\alu|Mux4~11_combout\ & ((\alu|Mux4~4_combout\))))) # (!\alu|Mux4~12_combout\ & (((\alu|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~27_combout\,
	datab => \alu|Mux4~12_combout\,
	datac => \alu|Mux4~4_combout\,
	datad => \alu|Mux4~11_combout\,
	combout => \alu|Mux4~combout\);

-- Location: LCFF_X59_Y35_N23
\regULA|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(27));

-- Location: LCCOMB_X60_Y38_N0
\pc|sr_out[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[27]~4_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(27)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~combout\,
	datab => \regULA|sr_out\(27),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[27]~4_combout\);

-- Location: LCFF_X60_Y38_N1
\pc|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[27]~4_combout\,
	sdata => \ir|sr_out\(25),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(27));

-- Location: LCCOMB_X60_Y38_N6
\mux_shift|m_out[27]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[27]~17_combout\ = (!\ctr_mips|pstate.branch_ex_st~regout\ & (\pc|sr_out\(27) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \pc|sr_out\(27),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[27]~17_combout\);

-- Location: LCCOMB_X65_Y35_N20
\bcoreg|regA[27]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[27]~4_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(38)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a27\,
	datac => \bcoreg|breg32_rtl_1_bypass\(38),
	datad => \bcoreg|breg32~41_combout\,
	combout => \bcoreg|regA[27]~4_combout\);

-- Location: LCFF_X61_Y35_N13
\rgA|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[27]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(27));

-- Location: LCCOMB_X61_Y35_N12
\mux_shift|m_out[27]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[27]~16_combout\ = (\rgA|sr_out\(27) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(27),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[27]~16_combout\);

-- Location: LCCOMB_X60_Y38_N4
\mux_shift|m_out[27]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[27]~18_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[27]~17_combout\) # (\mux_shift|m_out[27]~16_combout\)))) # (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[27]~17_combout\) # 
-- ((\mux_shift|m_out[27]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \mux_shift|m_out[27]~17_combout\,
	datac => \mux_shift|m_out[27]~16_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[27]~18_combout\);

-- Location: LCCOMB_X58_Y35_N24
\alu|tmp[28]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[28]~56_combout\ = ((\mux_ulaB|m_out[28]~39_combout\ $ (\mux_shift|m_out[28]~15_combout\ $ (\alu|tmp[27]~55\)))) # (GND)
-- \alu|tmp[28]~57\ = CARRY((\mux_ulaB|m_out[28]~39_combout\ & (\mux_shift|m_out[28]~15_combout\ & !\alu|tmp[27]~55\)) # (!\mux_ulaB|m_out[28]~39_combout\ & ((\mux_shift|m_out[28]~15_combout\) # (!\alu|tmp[27]~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[28]~39_combout\,
	datab => \mux_shift|m_out[28]~15_combout\,
	datad => VCC,
	cin => \alu|tmp[27]~55\,
	combout => \alu|tmp[28]~56_combout\,
	cout => \alu|tmp[28]~57\);

-- Location: LCCOMB_X58_Y42_N28
\alu|Mux3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~14_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & ((\alu|tmp[28]~56_combout\))) # (!\alu|Mux8~8_combout\ & (\alu|Mux3~13_combout\)))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux3~13_combout\,
	datad => \alu|tmp[28]~56_combout\,
	combout => \alu|Mux3~14_combout\);

-- Location: LCCOMB_X59_Y42_N8
\alu|Mux3~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~15_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux3~14_combout\ & ((\alu|ShiftRight0~132_combout\))) # (!\alu|Mux3~14_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|ShiftRight0~132_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux3~14_combout\,
	combout => \alu|Mux3~15_combout\);

-- Location: LCCOMB_X60_Y42_N22
\alu|Mux3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux3~16_combout\ = (\alu|Mux3~5_combout\ & ((\actr|alu_ctr[3]~29_combout\ & (\alu|Mux3~11_combout\)) # (!\actr|alu_ctr[3]~29_combout\ & ((\alu|Mux3~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~29_combout\,
	datab => \alu|Mux3~11_combout\,
	datac => \alu|Mux3~5_combout\,
	datad => \alu|Mux3~15_combout\,
	combout => \alu|Mux3~16_combout\);

-- Location: LCFF_X60_Y42_N23
\regULA|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux3~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(28));

-- Location: LCFF_X65_Y38_N29
\rdm|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(28),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(28));

-- Location: LCCOMB_X66_Y38_N18
\breg_data_mux|m_out[28]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[28]~3_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(28)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(28),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \rdm|sr_out\(28),
	combout => \breg_data_mux|m_out[28]~3_combout\);

-- Location: LCCOMB_X61_Y34_N30
\bcoreg|regA[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[25]~6_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(36))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(36),
	datab => \bcoreg|Equal0~1_combout\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a25\,
	combout => \bcoreg|regA[25]~6_combout\);

-- Location: LCFF_X61_Y34_N19
\rgA|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[25]~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(25));

-- Location: LCCOMB_X61_Y34_N18
\mux_shift|m_out[25]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[25]~22_combout\ = (\rgA|sr_out\(25) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(25),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[25]~22_combout\);

-- Location: LCCOMB_X60_Y34_N4
\pc|sr_out[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[25]~6_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(25))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(25),
	datad => \alu|Mux6~combout\,
	combout => \pc|sr_out[25]~6_combout\);

-- Location: LCFF_X60_Y34_N5
\pc|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[25]~6_combout\,
	sdata => \ir|sr_out\(23),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(25));

-- Location: LCCOMB_X61_Y34_N24
\mux_shift|m_out[25]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[25]~23_combout\ = (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (\pc|sr_out\(25) & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \pc|sr_out\(25),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[25]~23_combout\);

-- Location: LCCOMB_X61_Y34_N26
\mux_shift|m_out[25]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[25]~24_combout\ = (\actr|alu_ctr~24_combout\ & (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[25]~22_combout\) # (\mux_shift|m_out[25]~23_combout\)))) # (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[25]~22_combout\) # 
-- ((\mux_shift|m_out[25]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~24_combout\,
	datab => \mux_shift|m_out[25]~22_combout\,
	datac => \mux_shift|m_out[25]~23_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[25]~24_combout\);

-- Location: LCCOMB_X60_Y34_N10
\alu|a32~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~25_combout\ = \mux_shift|m_out[25]~24_combout\ $ (((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \rgB|sr_out\(25),
	datac => \mux_shift|m_out[25]~24_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \alu|a32~25_combout\);

-- Location: LCCOMB_X58_Y38_N2
\alu|ShiftRight0~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~105_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~136_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~136_combout\,
	combout => \alu|ShiftRight0~105_combout\);

-- Location: LCCOMB_X58_Y38_N16
\alu|ShiftRight0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~129_combout\ = (\alu|ShiftRight0~105_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.decode_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \alu|ShiftRight0~105_combout\,
	combout => \alu|ShiftRight0~129_combout\);

-- Location: LCCOMB_X60_Y34_N22
\alu|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~2_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_shift|m_out[25]~24_combout\ & ((\mux_ulaB|m_out[25]~42_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_shift|m_out[25]~24_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_ulaB|m_out[25]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[25]~24_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_ulaB|m_out[25]~42_combout\,
	combout => \alu|Mux6~2_combout\);

-- Location: LCCOMB_X59_Y39_N16
\alu|ShiftRight0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~47_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(27))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(27)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(25),
	datab => \rgB|sr_out\(27),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight0~47_combout\);

-- Location: LCCOMB_X59_Y39_N6
\alu|ShiftRight1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~50_combout\ = (\mux_shift|m_out[1]~94_combout\ & (\rgB|sr_out\(28))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(28))) # (!\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(28),
	datab => \rgB|sr_out\(26),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~50_combout\);

-- Location: LCCOMB_X59_Y34_N4
\alu|ShiftRight1~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~57_combout\ = (\alu|ShiftRight1~56_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\alu|ShiftRight1~50_combout\))) # (!\mux_shift|m_out[0]~83_combout\ & (\alu|ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \alu|ShiftRight1~56_combout\,
	datac => \alu|ShiftRight0~47_combout\,
	datad => \alu|ShiftRight1~50_combout\,
	combout => \alu|ShiftRight1~57_combout\);

-- Location: LCCOMB_X61_Y40_N22
\alu|ShiftRight1~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~58_combout\ = (!\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[31]~31_combout\ & !\mux_shift|m_out[1]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~58_combout\);

-- Location: LCCOMB_X60_Y40_N2
\alu|ShiftRight1~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~103_combout\ = (!\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[31]~36_combout\ & ((\mux_shift|m_out[1]~86_combout\) # (\mux_shift|m_out[1]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_ulaB|m_out[31]~36_combout\,
	combout => \alu|ShiftRight1~103_combout\);

-- Location: LCCOMB_X60_Y40_N28
\alu|ShiftRight1~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~59_combout\ = (\alu|ShiftRight1~104_combout\) # ((\alu|ShiftRight1~58_combout\) # (\alu|ShiftRight1~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~104_combout\,
	datab => \alu|ShiftRight1~58_combout\,
	datad => \alu|ShiftRight1~103_combout\,
	combout => \alu|ShiftRight1~59_combout\);

-- Location: LCCOMB_X59_Y34_N22
\alu|ShiftRight1~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~60_combout\ = (\alu|ShiftRight1~57_combout\) # ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~59_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\mux_ulaB|m_out[31]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftRight1~57_combout\,
	datad => \alu|ShiftRight1~59_combout\,
	combout => \alu|ShiftRight1~60_combout\);

-- Location: LCCOMB_X60_Y34_N16
\alu|ShiftRight1~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~101_combout\ = (!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~60_combout\,
	combout => \alu|ShiftRight1~101_combout\);

-- Location: LCCOMB_X60_Y34_N8
\alu|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~3_combout\ = (\alu|Mux8~6_combout\ & ((\alu|Mux6~2_combout\ & ((\alu|Add1~50_combout\))) # (!\alu|Mux6~2_combout\ & (\alu|ShiftRight1~101_combout\)))) # (!\alu|Mux8~6_combout\ & (\alu|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~6_combout\,
	datab => \alu|Mux6~2_combout\,
	datac => \alu|ShiftRight1~101_combout\,
	datad => \alu|Add1~50_combout\,
	combout => \alu|Mux6~3_combout\);

-- Location: LCCOMB_X60_Y34_N18
\alu|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~4_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & ((\alu|tmp[25]~50_combout\))) # (!\alu|Mux8~8_combout\ & (\alu|Mux6~3_combout\)))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux6~3_combout\,
	datad => \alu|tmp[25]~50_combout\,
	combout => \alu|Mux6~4_combout\);

-- Location: LCCOMB_X60_Y34_N12
\alu|Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~5_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux6~4_combout\ & ((\alu|ShiftRight0~129_combout\))) # (!\alu|Mux6~4_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~129_combout\,
	datad => \alu|Mux6~4_combout\,
	combout => \alu|Mux6~5_combout\);

-- Location: LCCOMB_X60_Y34_N30
\alu|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~6_combout\ = (\alu|Mux6~5_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux6~5_combout\,
	combout => \alu|Mux6~6_combout\);

-- Location: LCCOMB_X60_Y34_N2
\alu|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~8_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux6~7_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~7_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux6~6_combout\,
	combout => \alu|Mux6~8_combout\);

-- Location: LCCOMB_X60_Y34_N0
\alu|Mux6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux6~combout\ = (\alu|Mux4~12_combout\ & ((\alu|Mux6~8_combout\ & ((\alu|a32~25_combout\))) # (!\alu|Mux6~8_combout\ & (\alu|Mux6~1_combout\)))) # (!\alu|Mux4~12_combout\ & (((\alu|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~1_combout\,
	datab => \alu|a32~25_combout\,
	datac => \alu|Mux4~12_combout\,
	datad => \alu|Mux6~8_combout\,
	combout => \alu|Mux6~combout\);

-- Location: LCFF_X60_Y34_N1
\regULA|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(25));

-- Location: LCCOMB_X63_Y38_N30
\rdm|sr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[25]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(25),
	combout => \rdm|sr_out[25]~feeder_combout\);

-- Location: LCFF_X63_Y38_N31
\rdm|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(25));

-- Location: LCCOMB_X60_Y34_N20
\breg_data_mux|m_out[25]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[25]~6_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(25)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(25),
	datad => \rdm|sr_out\(25),
	combout => \breg_data_mux|m_out[25]~6_combout\);

-- Location: LCCOMB_X65_Y35_N12
\bcoreg|regA[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[19]~12_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(30))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(30),
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a19\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[19]~12_combout\);

-- Location: LCFF_X61_Y35_N23
\rgA|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[19]~12_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(19));

-- Location: LCCOMB_X61_Y35_N22
\mux_shift|m_out[19]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[19]~40_combout\ = (\rgA|sr_out\(19) & ((\ctr_mips|pstate.rtype_ex_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(19),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[19]~40_combout\);

-- Location: LCCOMB_X60_Y37_N26
\mux_shift|m_out[19]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[19]~42_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[19]~41_combout\) # (\mux_shift|m_out[19]~40_combout\)))) # (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[19]~41_combout\) # 
-- ((\mux_shift|m_out[19]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \mux_shift|m_out[19]~41_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \mux_shift|m_out[19]~40_combout\,
	combout => \mux_shift|m_out[19]~42_combout\);

-- Location: LCCOMB_X60_Y37_N0
\alu|ShiftLeft0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~47_combout\ = (\mux_shift|m_out[15]~51_combout\) # ((\mux_shift|m_out[19]~42_combout\) # ((\mux_shift|m_out[17]~48_combout\) # (\mux_shift|m_out[18]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[15]~51_combout\,
	datab => \mux_shift|m_out[19]~42_combout\,
	datac => \mux_shift|m_out[17]~48_combout\,
	datad => \mux_shift|m_out[18]~45_combout\,
	combout => \alu|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X62_Y35_N2
\alu|ShiftLeft0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~44_combout\ = (\mux_shift|m_out[16]~6_combout\) # ((\mux_shift|m_out[29]~12_combout\) # ((\mux_shift|m_out[28]~15_combout\) # (\mux_shift|m_out[30]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[16]~6_combout\,
	datab => \mux_shift|m_out[29]~12_combout\,
	datac => \mux_shift|m_out[28]~15_combout\,
	datad => \mux_shift|m_out[30]~9_combout\,
	combout => \alu|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X60_Y38_N18
\alu|ShiftLeft0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~45_combout\ = (\mux_shift|m_out[24]~27_combout\) # ((\mux_shift|m_out[26]~21_combout\) # ((\mux_shift|m_out[25]~24_combout\) # (\mux_shift|m_out[27]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[24]~27_combout\,
	datab => \mux_shift|m_out[26]~21_combout\,
	datac => \mux_shift|m_out[25]~24_combout\,
	datad => \mux_shift|m_out[27]~18_combout\,
	combout => \alu|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X60_Y38_N20
\alu|ShiftLeft0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~48_combout\ = (\alu|ShiftLeft0~46_combout\) # ((\alu|ShiftLeft0~47_combout\) # ((\alu|ShiftLeft0~44_combout\) # (\alu|ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~46_combout\,
	datab => \alu|ShiftLeft0~47_combout\,
	datac => \alu|ShiftLeft0~44_combout\,
	datad => \alu|ShiftLeft0~45_combout\,
	combout => \alu|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X60_Y38_N28
\alu|ShiftLeft0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~52_combout\ = (!\mux_shift|m_out[4]~79_combout\ & (!\alu|ShiftLeft0~48_combout\ & !\alu|ShiftLeft0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datac => \alu|ShiftLeft0~48_combout\,
	datad => \alu|ShiftLeft0~51_combout\,
	combout => \alu|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X60_Y38_N16
\alu|Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~8_combout\ = (\alu|Mux29~4_combout\ & (!\alu|ShiftLeft0~52_combout\)) # (!\alu|Mux29~4_combout\ & ((\actr|alu_ctr[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~52_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux8~8_combout\);

-- Location: LCCOMB_X60_Y36_N6
\alu|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~7_combout\ = (!\alu|Mux29~4_combout\ & ((\actr|alu_ctr[0]~32_combout\) # (!\actr|alu_ctr[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux29~4_combout\,
	combout => \alu|Mux8~7_combout\);

-- Location: LCCOMB_X58_Y39_N30
\alu|ShiftRight1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~62_combout\ = (\mux_ulaB|m_out[31]~31_combout\ & ((\actr|alu_ctr~30_combout\ & (!\ir|sr_out\(9))) # (!\actr|alu_ctr~30_combout\ & ((!\mux_shift|m_out[3]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \ir|sr_out\(9),
	datac => \actr|alu_ctr~30_combout\,
	datad => \mux_shift|m_out[3]~90_combout\,
	combout => \alu|ShiftRight1~62_combout\);

-- Location: LCCOMB_X60_Y41_N6
\alu|ShiftRight1~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~66_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(25))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(25)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(23),
	datab => \rgB|sr_out\(25),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~66_combout\);

-- Location: LCCOMB_X59_Y38_N26
\alu|ShiftRight1~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~115_combout\ = (!\mux_shift|m_out[0]~93_combout\ & (!\mux_shift|m_out[0]~82_combout\ & \alu|ShiftRight1~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftRight1~66_combout\,
	combout => \alu|ShiftRight1~115_combout\);

-- Location: LCCOMB_X61_Y35_N24
\alu|ShiftRight0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~81_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(22))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(22)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \rgB|sr_out\(20),
	datac => \rgB|sr_out\(22),
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight0~81_combout\);

-- Location: LCCOMB_X61_Y35_N18
\alu|ShiftRight1~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~67_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(21))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(21)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \rgB|sr_out\(19),
	datac => \rgB|sr_out\(21),
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~67_combout\);

-- Location: LCCOMB_X61_Y35_N6
\alu|ShiftRight1~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~113_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftRight0~81_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftRight0~81_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & 
-- ((\alu|ShiftRight1~67_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight0~81_combout\,
	datad => \alu|ShiftRight1~67_combout\,
	combout => \alu|ShiftRight1~113_combout\);

-- Location: LCCOMB_X59_Y39_N30
\alu|ShiftRight0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~48_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\rgB|sr_out\(26))))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(26)))) # (!\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(24),
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \rgB|sr_out\(26),
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight0~48_combout\);

-- Location: LCCOMB_X59_Y38_N16
\alu|ShiftRight1~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~114_combout\ = (\alu|ShiftRight0~48_combout\ & ((\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight0~48_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftRight1~114_combout\);

-- Location: LCCOMB_X54_Y38_N16
\alu|ShiftRight0~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~82_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~115_combout\) # ((\alu|ShiftRight1~114_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight1~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight1~115_combout\,
	datac => \alu|ShiftRight1~113_combout\,
	datad => \alu|ShiftRight1~114_combout\,
	combout => \alu|ShiftRight0~82_combout\);

-- Location: LCCOMB_X59_Y35_N4
\alu|ShiftRight1~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~81_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight1~80_combout\) # ((\alu|ShiftRight1~56_combout\ & \alu|ShiftRight1~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftRight1~56_combout\,
	datac => \alu|ShiftRight1~80_combout\,
	datad => \alu|ShiftRight1~112_combout\,
	combout => \alu|ShiftRight1~81_combout\);

-- Location: LCCOMB_X58_Y39_N28
\alu|ShiftRight1~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~82_combout\ = (\alu|ShiftRight1~62_combout\) # ((\alu|ShiftRight1~81_combout\) # ((\alu|ShiftRight1~63_combout\ & \alu|ShiftRight0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~63_combout\,
	datab => \alu|ShiftRight1~62_combout\,
	datac => \alu|ShiftRight0~82_combout\,
	datad => \alu|ShiftRight1~81_combout\,
	combout => \alu|ShiftRight1~82_combout\);

-- Location: LCCOMB_X57_Y35_N10
\alu|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~5_combout\ = (\alu|Mux12~4_combout\ & (((\alu|Add1~38_combout\)) # (!\alu|Mux8~6_combout\))) # (!\alu|Mux12~4_combout\ & (\alu|Mux8~6_combout\ & (\alu|ShiftRight1~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux12~4_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|ShiftRight1~82_combout\,
	datad => \alu|Add1~38_combout\,
	combout => \alu|Mux12~5_combout\);

-- Location: LCCOMB_X57_Y35_N28
\alu|Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~6_combout\ = (\alu|Mux8~8_combout\ & (\alu|tmp[19]~38_combout\ & (\alu|Mux8~7_combout\))) # (!\alu|Mux8~8_combout\ & (((\alu|Mux12~5_combout\) # (!\alu|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[19]~38_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux8~7_combout\,
	datad => \alu|Mux12~5_combout\,
	combout => \alu|Mux12~6_combout\);

-- Location: LCCOMB_X57_Y35_N14
\alu|Mux12~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~7_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux12~6_combout\ & (\alu|ShiftRight0~125_combout\)) # (!\alu|Mux12~6_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~125_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux12~6_combout\,
	combout => \alu|Mux12~7_combout\);

-- Location: LCCOMB_X57_Y39_N14
\alu|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~0_combout\ = (\mux_shift|m_out[19]~42_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_ulaB|m_out[19]~48_combout\))) # (!\mux_shift|m_out[19]~42_combout\ & ((\mux_ulaB|m_out[19]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datac => \mux_shift|m_out[19]~42_combout\,
	datad => \mux_ulaB|m_out[19]~48_combout\,
	combout => \alu|Mux12~0_combout\);

-- Location: LCCOMB_X57_Y37_N16
\alu|ShiftLeft0~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~161_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftLeft0~69_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftLeft0~69_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftLeft0~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \alu|ShiftLeft0~69_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftLeft0~71_combout\,
	combout => \alu|ShiftLeft0~161_combout\);

-- Location: LCCOMB_X54_Y36_N2
\alu|ShiftLeft0~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~165_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~79_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~79_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftLeft0~82_combout\,
	datad => \alu|ShiftLeft0~79_combout\,
	combout => \alu|ShiftLeft0~165_combout\);

-- Location: LCCOMB_X54_Y36_N14
\alu|ShiftLeft0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~83_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~161_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~161_combout\,
	datad => \alu|ShiftLeft0~165_combout\,
	combout => \alu|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X61_Y37_N12
\mux_ulaB|m_out[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[3]~2_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(3))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(3))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- ((\rgB|sr_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(3),
	datad => \rgB|sr_out\(3),
	combout => \mux_ulaB|m_out[3]~2_combout\);

-- Location: LCCOMB_X62_Y37_N26
\mux_ulaB|m_out[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[3]~4_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[3]~2_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (\ir|sr_out\(1) & (!\mux_ulaB|m_out[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(1),
	datab => \ctr_mips|WideNor0~0_combout\,
	datac => \mux_ulaB|m_out[2]~3_combout\,
	datad => \mux_ulaB|m_out[3]~2_combout\,
	combout => \mux_ulaB|m_out[3]~4_combout\);

-- Location: LCCOMB_X54_Y37_N28
\alu|ShiftLeft0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~60_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[2]~6_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~6_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \mux_ulaB|m_out[3]~4_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X54_Y37_N26
\alu|ShiftLeft0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~61_combout\ = (\alu|ShiftRight0~70_combout\ & ((\alu|ShiftLeft0~60_combout\) # ((\alu|ShiftLeft0~55_combout\ & \mux_shift|m_out[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~55_combout\,
	datab => \alu|ShiftLeft0~60_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftRight0~70_combout\,
	combout => \alu|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X56_Y40_N10
\alu|Mux8~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~20_combout\ = ((\mux_shift|m_out[4]~79_combout\ & (!\alu|ShiftLeft0~51_combout\ & !\alu|ShiftLeft0~48_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|ShiftLeft0~51_combout\,
	datad => \alu|ShiftLeft0~48_combout\,
	combout => \alu|Mux8~20_combout\);

-- Location: LCCOMB_X57_Y39_N6
\alu|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~1_combout\ = (\alu|Mux8~9_combout\ & (((\alu|Mux12~0_combout\) # (!\alu|Mux8~20_combout\)))) # (!\alu|Mux8~9_combout\ & (\alu|ShiftLeft0~61_combout\ & ((\alu|Mux8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~9_combout\,
	datab => \alu|ShiftLeft0~61_combout\,
	datac => \alu|Mux12~0_combout\,
	datad => \alu|Mux8~20_combout\,
	combout => \alu|Mux12~1_combout\);

-- Location: LCCOMB_X57_Y39_N0
\alu|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~2_combout\ = (\alu|Mux8~19_combout\ & (((\alu|Mux12~1_combout\)))) # (!\alu|Mux8~19_combout\ & ((\alu|Mux12~1_combout\ & (\alu|ShiftLeft0~83_combout\)) # (!\alu|Mux12~1_combout\ & ((\alu|ShiftLeft0~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~19_combout\,
	datab => \alu|ShiftLeft0~83_combout\,
	datac => \alu|ShiftLeft0~114_combout\,
	datad => \alu|Mux12~1_combout\,
	combout => \alu|Mux12~2_combout\);

-- Location: LCCOMB_X57_Y39_N22
\alu|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~3_combout\ = (\actr|alu_ctr[2]~26_combout\ & (\actr|alu_ctr[0]~32_combout\ & (!\alu|Mux12~0_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux12~0_combout\,
	datad => \alu|Mux12~2_combout\,
	combout => \alu|Mux12~3_combout\);

-- Location: LCCOMB_X57_Y35_N20
\alu|Mux12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux12~8_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux12~3_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux12~7_combout\)))) # (!\alu|Mux14~12_combout\ & (\alu|Mux14~10_combout\ & (\alu|Mux12~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux14~10_combout\,
	datac => \alu|Mux12~7_combout\,
	datad => \alu|Mux12~3_combout\,
	combout => \alu|Mux12~8_combout\);

-- Location: LCFF_X57_Y35_N21
\regULA|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux12~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(19));

-- Location: LCFF_X65_Y38_N19
\rdm|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(19),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(19));

-- Location: LCCOMB_X65_Y35_N10
\breg_data_mux|m_out[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[19]~12_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(19)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(19),
	datad => \rdm|sr_out\(19),
	combout => \breg_data_mux|m_out[19]~12_combout\);

-- Location: LCCOMB_X62_Y34_N8
\bcoreg|regA[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[18]~13_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(29))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(29),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a18\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32~41_combout\,
	combout => \bcoreg|regA[18]~13_combout\);

-- Location: LCFF_X61_Y34_N1
\rgA|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[18]~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(18));

-- Location: LCCOMB_X61_Y34_N0
\mux_shift|m_out[18]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[18]~43_combout\ = (\rgA|sr_out\(18) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(18),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[18]~43_combout\);

-- Location: LCCOMB_X60_Y37_N18
\mux_shift|m_out[18]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[18]~45_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[18]~44_combout\) # (\mux_shift|m_out[18]~43_combout\)))) # (!\actr|alu_ctr~25_combout\ & ((\mux_shift|m_out[18]~44_combout\) # 
-- ((\mux_shift|m_out[18]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \mux_shift|m_out[18]~44_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \mux_shift|m_out[18]~43_combout\,
	combout => \mux_shift|m_out[18]~45_combout\);

-- Location: LCCOMB_X56_Y39_N30
\alu|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~0_combout\ = (\mux_shift|m_out[18]~45_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_ulaB|m_out[18]~49_combout\))) # (!\mux_shift|m_out[18]~45_combout\ & ((\mux_ulaB|m_out[18]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[18]~45_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \mux_ulaB|m_out[18]~49_combout\,
	combout => \alu|Mux13~0_combout\);

-- Location: LCCOMB_X57_Y39_N18
\alu|ShiftLeft0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~80_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~157_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~164_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~164_combout\,
	datad => \alu|ShiftLeft0~157_combout\,
	combout => \alu|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X60_Y39_N20
\alu|ShiftLeft0~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~154_combout\ = (!\mux_shift|m_out[2]~89_combout\ & (!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~59_combout\,
	combout => \alu|ShiftLeft0~154_combout\);

-- Location: LCCOMB_X60_Y38_N22
\alu|Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~9_combout\ = ((\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~52_combout\)) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux8~9_combout\);

-- Location: LCCOMB_X57_Y39_N8
\alu|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~1_combout\ = (\alu|Mux8~9_combout\ & ((\alu|Mux13~0_combout\) # ((!\alu|Mux8~20_combout\)))) # (!\alu|Mux8~9_combout\ & (((\alu|ShiftLeft0~154_combout\ & \alu|Mux8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux13~0_combout\,
	datab => \alu|ShiftLeft0~154_combout\,
	datac => \alu|Mux8~9_combout\,
	datad => \alu|Mux8~20_combout\,
	combout => \alu|Mux13~1_combout\);

-- Location: LCCOMB_X54_Y36_N6
\alu|ShiftLeft0~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~110_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~168_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~168_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftLeft0~109_combout\,
	combout => \alu|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X57_Y39_N2
\alu|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~2_combout\ = (\alu|Mux8~19_combout\ & (((\alu|Mux13~1_combout\)))) # (!\alu|Mux8~19_combout\ & ((\alu|Mux13~1_combout\ & (\alu|ShiftLeft0~80_combout\)) # (!\alu|Mux13~1_combout\ & ((\alu|ShiftLeft0~110_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~19_combout\,
	datab => \alu|ShiftLeft0~80_combout\,
	datac => \alu|Mux13~1_combout\,
	datad => \alu|ShiftLeft0~110_combout\,
	combout => \alu|Mux13~2_combout\);

-- Location: LCCOMB_X57_Y39_N20
\alu|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~3_combout\ = (\actr|alu_ctr[2]~26_combout\ & (\actr|alu_ctr[0]~32_combout\ & (!\alu|Mux13~0_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux13~0_combout\,
	datad => \alu|Mux13~2_combout\,
	combout => \alu|Mux13~3_combout\);

-- Location: LCCOMB_X61_Y35_N8
\alu|ShiftRight0~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~63_combout\ = (\mux_shift|m_out[1]~94_combout\ & (\rgB|sr_out\(20))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(20))) # (!\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(20),
	datab => \rgB|sr_out\(18),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight0~63_combout\);

-- Location: LCCOMB_X61_Y35_N20
\alu|ShiftRight1~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~107_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftRight1~67_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\alu|ShiftRight1~67_combout\))) # (!\mux_shift|m_out[0]~93_combout\ & 
-- (\alu|ShiftRight0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight0~63_combout\,
	datad => \alu|ShiftRight1~67_combout\,
	combout => \alu|ShiftRight1~107_combout\);

-- Location: LCCOMB_X57_Y41_N24
\alu|ShiftRight0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~77_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~106_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight1~106_combout\,
	datad => \alu|ShiftRight1~107_combout\,
	combout => \alu|ShiftRight0~77_combout\);

-- Location: LCCOMB_X57_Y41_N22
\alu|ShiftRight0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~78_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~76_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~77_combout\,
	datad => \alu|ShiftRight0~76_combout\,
	combout => \alu|ShiftRight0~78_combout\);

-- Location: LCCOMB_X57_Y41_N26
\alu|ShiftRight0~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~124_combout\ = (\alu|ShiftRight0~78_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ir|sr_out\(15),
	datad => \alu|ShiftRight0~78_combout\,
	combout => \alu|ShiftRight0~124_combout\);

-- Location: LCCOMB_X58_Y39_N16
\alu|ShiftRight1~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~63_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\actr|alu_ctr~30_combout\ & (!\ir|sr_out\(9))) # (!\actr|alu_ctr~30_combout\ & ((!\mux_shift|m_out[3]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \ir|sr_out\(9),
	datac => \actr|alu_ctr~30_combout\,
	datad => \mux_shift|m_out[3]~90_combout\,
	combout => \alu|ShiftRight1~63_combout\);

-- Location: LCCOMB_X60_Y39_N18
\alu|ShiftRight1~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~68_combout\ = (\alu|ShiftRight1~63_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~106_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight1~63_combout\,
	datac => \alu|ShiftRight1~107_combout\,
	datad => \alu|ShiftRight1~106_combout\,
	combout => \alu|ShiftRight1~68_combout\);

-- Location: LCCOMB_X59_Y41_N24
\alu|ShiftRight1~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~69_combout\ = (\mux_ulaB|m_out[31]~31_combout\ & (((\alu|ShiftRight1~56_combout\ & \alu|ShiftRight1~105_combout\)) # (!\mux_shift|m_out[2]~89_combout\))) # (!\mux_ulaB|m_out[31]~31_combout\ & (((\alu|ShiftRight1~56_combout\ & 
-- \alu|ShiftRight1~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight1~56_combout\,
	datad => \alu|ShiftRight1~105_combout\,
	combout => \alu|ShiftRight1~69_combout\);

-- Location: LCCOMB_X60_Y39_N12
\alu|ShiftRight1~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~72_combout\ = (\alu|ShiftRight1~69_combout\) # ((\alu|ShiftRight1~71_combout\ & (!\mux_shift|m_out[1]~87_combout\ & \mux_shift|m_out[2]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~71_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight1~69_combout\,
	combout => \alu|ShiftRight1~72_combout\);

-- Location: LCCOMB_X60_Y39_N6
\alu|ShiftRight1~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~73_combout\ = (\alu|ShiftRight1~68_combout\) # ((\alu|ShiftRight1~62_combout\) # ((\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight1~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftRight1~68_combout\,
	datac => \alu|ShiftRight1~62_combout\,
	datad => \alu|ShiftRight1~72_combout\,
	combout => \alu|ShiftRight1~73_combout\);

-- Location: LCCOMB_X56_Y39_N6
\alu|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~5_combout\ = (\alu|Mux13~4_combout\ & (((\alu|Add1~36_combout\)) # (!\alu|Mux8~6_combout\))) # (!\alu|Mux13~4_combout\ & (\alu|Mux8~6_combout\ & (\alu|ShiftRight1~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux13~4_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|ShiftRight1~73_combout\,
	datad => \alu|Add1~36_combout\,
	combout => \alu|Mux13~5_combout\);

-- Location: LCCOMB_X57_Y35_N12
\alu|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~6_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & ((\alu|tmp[18]~36_combout\))) # (!\alu|Mux8~8_combout\ & (\alu|Mux13~5_combout\)))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux13~5_combout\,
	datad => \alu|tmp[18]~36_combout\,
	combout => \alu|Mux13~6_combout\);

-- Location: LCCOMB_X57_Y35_N30
\alu|Mux13~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~7_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux13~6_combout\ & ((\alu|ShiftRight0~124_combout\))) # (!\alu|Mux13~6_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~124_combout\,
	datad => \alu|Mux13~6_combout\,
	combout => \alu|Mux13~7_combout\);

-- Location: LCCOMB_X57_Y35_N0
\alu|Mux13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux13~8_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux13~3_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux13~7_combout\)))) # (!\alu|Mux14~12_combout\ & (\alu|Mux14~10_combout\ & ((\alu|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux14~10_combout\,
	datac => \alu|Mux13~3_combout\,
	datad => \alu|Mux13~7_combout\,
	combout => \alu|Mux13~8_combout\);

-- Location: LCFF_X57_Y35_N1
\regULA|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux13~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(18));

-- Location: LCCOMB_X65_Y38_N12
\rdm|sr_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[18]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(18),
	combout => \rdm|sr_out[18]~feeder_combout\);

-- Location: LCFF_X65_Y38_N13
\rdm|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(18));

-- Location: LCCOMB_X66_Y38_N8
\breg_data_mux|m_out[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[18]~13_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(18)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(18),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \rdm|sr_out\(18),
	combout => \breg_data_mux|m_out[18]~13_combout\);

-- Location: LCCOMB_X58_Y37_N20
\bcoreg|regB[31]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[31]~20_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(42))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(42),
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a31\,
	combout => \bcoreg|regB[31]~20_combout\);

-- Location: LCFF_X58_Y38_N1
\rgB|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[31]~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(31));

-- Location: LCCOMB_X57_Y39_N24
\alu|ShiftRight0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~135_combout\ = (\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[1]~94_combout\ & ((\alu|ShiftRight1~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \rgB|sr_out\(31),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \alu|ShiftRight1~51_combout\,
	combout => \alu|ShiftRight0~135_combout\);

-- Location: LCCOMB_X59_Y39_N28
\alu|ShiftRight0~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~118_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftRight1~50_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftRight1~50_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight0~47_combout\,
	datad => \alu|ShiftRight1~50_combout\,
	combout => \alu|ShiftRight0~118_combout\);

-- Location: LCCOMB_X57_Y39_N10
\alu|ShiftRight0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~136_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight0~135_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~135_combout\,
	datad => \alu|ShiftRight0~118_combout\,
	combout => \alu|ShiftRight0~136_combout\);

-- Location: LCCOMB_X58_Y38_N24
\alu|ShiftRight0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~67_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~136_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~66_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \alu|ShiftRight0~136_combout\,
	combout => \alu|ShiftRight0~67_combout\);

-- Location: LCCOMB_X58_Y38_N14
\alu|ShiftRight0~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~134_combout\ = (\alu|ShiftRight0~67_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.decode_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \alu|ShiftRight0~67_combout\,
	datad => \ir|sr_out\(15),
	combout => \alu|ShiftRight0~134_combout\);

-- Location: LCCOMB_X59_Y34_N20
\alu|ShiftRight1~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~61_combout\ = (\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight1~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~60_combout\,
	combout => \alu|ShiftRight1~61_combout\);

-- Location: LCCOMB_X59_Y34_N2
\alu|ShiftRight1~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~64_combout\ = (\alu|ShiftRight1~62_combout\) # ((\alu|ShiftRight1~61_combout\) # ((\alu|ShiftRight1~63_combout\ & \alu|ShiftRight0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~63_combout\,
	datab => \alu|ShiftRight1~62_combout\,
	datac => \alu|ShiftRight1~61_combout\,
	datad => \alu|ShiftRight0~66_combout\,
	combout => \alu|ShiftRight1~64_combout\);

-- Location: LCCOMB_X57_Y35_N16
\alu|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~3_combout\ = (\alu|Mux14~2_combout\ & (((\alu|Add1~34_combout\)) # (!\alu|Mux8~6_combout\))) # (!\alu|Mux14~2_combout\ & (\alu|Mux8~6_combout\ & ((\alu|ShiftRight1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~2_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|Add1~34_combout\,
	datad => \alu|ShiftRight1~64_combout\,
	combout => \alu|Mux14~3_combout\);

-- Location: LCCOMB_X57_Y35_N18
\alu|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~4_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & ((\alu|tmp[17]~34_combout\))) # (!\alu|Mux8~8_combout\ & (\alu|Mux14~3_combout\)))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux14~3_combout\,
	datad => \alu|tmp[17]~34_combout\,
	combout => \alu|Mux14~4_combout\);

-- Location: LCCOMB_X57_Y35_N24
\alu|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~5_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux14~4_combout\ & ((\alu|ShiftRight0~134_combout\))) # (!\alu|Mux14~4_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~134_combout\,
	datad => \alu|Mux14~4_combout\,
	combout => \alu|Mux14~5_combout\);

-- Location: LCCOMB_X56_Y39_N4
\alu|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~6_combout\ = (\mux_ulaB|m_out[17]~32_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_shift|m_out[17]~48_combout\))) # (!\mux_ulaB|m_out[17]~32_combout\ & ((\mux_shift|m_out[17]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[17]~32_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \mux_shift|m_out[17]~48_combout\,
	combout => \alu|Mux14~6_combout\);

-- Location: LCCOMB_X56_Y36_N18
\alu|ShiftLeft0~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~172_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~170_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~170_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~105_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftLeft0~170_combout\,
	combout => \alu|ShiftLeft0~172_combout\);

-- Location: LCCOMB_X56_Y36_N26
\alu|ShiftLeft0~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~167_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftLeft0~86_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\alu|ShiftLeft0~86_combout\))) # (!\mux_shift|m_out[0]~93_combout\ & 
-- (\alu|ShiftLeft0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftLeft0~89_combout\,
	datad => \alu|ShiftLeft0~86_combout\,
	combout => \alu|ShiftLeft0~167_combout\);

-- Location: LCCOMB_X56_Y40_N14
\alu|ShiftLeft0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~106_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~167_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~172_combout\,
	datad => \alu|ShiftLeft0~167_combout\,
	combout => \alu|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X54_Y36_N26
\alu|ShiftLeft0~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~163_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~73_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~73_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftLeft0~76_combout\,
	datad => \alu|ShiftLeft0~73_combout\,
	combout => \alu|ShiftLeft0~163_combout\);

-- Location: LCCOMB_X56_Y40_N20
\alu|ShiftLeft0~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~77_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~156_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~163_combout\,
	datad => \alu|ShiftLeft0~156_combout\,
	combout => \alu|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X56_Y38_N28
\alu|Mux8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~19_combout\ = ((\alu|ShiftLeft0~48_combout\) # ((\mux_shift|m_out[4]~79_combout\) # (\alu|ShiftLeft0~51_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \alu|ShiftLeft0~48_combout\,
	datac => \mux_shift|m_out[4]~79_combout\,
	datad => \alu|ShiftLeft0~51_combout\,
	combout => \alu|Mux8~19_combout\);

-- Location: LCCOMB_X56_Y40_N6
\alu|Mux14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~8_combout\ = (\alu|Mux14~7_combout\ & (((\alu|ShiftLeft0~77_combout\) # (\alu|Mux8~19_combout\)))) # (!\alu|Mux14~7_combout\ & (\alu|ShiftLeft0~106_combout\ & ((!\alu|Mux8~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~7_combout\,
	datab => \alu|ShiftLeft0~106_combout\,
	datac => \alu|ShiftLeft0~77_combout\,
	datad => \alu|Mux8~19_combout\,
	combout => \alu|Mux14~8_combout\);

-- Location: LCCOMB_X56_Y40_N16
\alu|Mux14~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~9_combout\ = (\actr|alu_ctr[2]~26_combout\ & (\actr|alu_ctr[0]~32_combout\ & (!\alu|Mux14~6_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux14~6_combout\,
	datad => \alu|Mux14~8_combout\,
	combout => \alu|Mux14~9_combout\);

-- Location: LCCOMB_X57_Y35_N26
\alu|Mux14~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~11_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux14~9_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux14~5_combout\)))) # (!\alu|Mux14~12_combout\ & (\alu|Mux14~10_combout\ & (\alu|Mux14~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux14~10_combout\,
	datac => \alu|Mux14~5_combout\,
	datad => \alu|Mux14~9_combout\,
	combout => \alu|Mux14~11_combout\);

-- Location: LCFF_X57_Y35_N27
\regULA|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux14~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(17));

-- Location: LCCOMB_X65_Y36_N10
\breg_data_mux|m_out[17]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[17]~14_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(17))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \rdm|sr_out\(17),
	datad => \regULA|sr_out\(17),
	combout => \breg_data_mux|m_out[17]~14_combout\);

-- Location: LCCOMB_X65_Y35_N16
\bcoreg|regA[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[15]~15_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(26))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(26),
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a15\,
	combout => \bcoreg|regA[15]~15_combout\);

-- Location: LCFF_X61_Y34_N11
\rgA|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[15]~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(15));

-- Location: LCCOMB_X61_Y34_N10
\mux_shift|m_out[15]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[15]~49_combout\ = (\rgA|sr_out\(15) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.c_mem_add_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \rgA|sr_out\(15),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[15]~49_combout\);

-- Location: LCCOMB_X60_Y37_N28
\mux_shift|m_out[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[15]~50_combout\ = (\pc|sr_out\(15) & (!\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(15),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[15]~50_combout\);

-- Location: LCCOMB_X60_Y37_N30
\mux_shift|m_out[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[15]~51_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[15]~49_combout\) # (\mux_shift|m_out[15]~50_combout\)))) # (!\actr|alu_ctr~25_combout\ & (((\mux_shift|m_out[15]~49_combout\) # 
-- (\mux_shift|m_out[15]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[15]~49_combout\,
	datad => \mux_shift|m_out[15]~50_combout\,
	combout => \mux_shift|m_out[15]~51_combout\);

-- Location: LCCOMB_X54_Y34_N30
\alu|Mux16~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~9_combout\ = (!\actr|alu_ctr[3]~29_combout\ & (\actr|alu_ctr[0]~32_combout\ & \alu|tmp[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|tmp[15]~30_combout\,
	combout => \alu|Mux16~9_combout\);

-- Location: LCCOMB_X54_Y37_N16
\alu|ShiftLeft0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~55_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\mux_ulaB|m_out[0]~1_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & (\mux_ulaB|m_out[0]~1_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & 
-- ((\mux_ulaB|m_out[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \mux_ulaB|m_out[0]~1_combout\,
	datad => \mux_ulaB|m_out[1]~0_combout\,
	combout => \alu|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X54_Y37_N2
\alu|ShiftLeft0~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~160_combout\ = (\alu|ShiftLeft0~60_combout\) # ((\alu|ShiftLeft0~55_combout\ & ((\mux_shift|m_out[1]~94_combout\) # (\mux_shift|m_out[1]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \alu|ShiftLeft0~55_combout\,
	datad => \alu|ShiftLeft0~60_combout\,
	combout => \alu|ShiftLeft0~160_combout\);

-- Location: LCCOMB_X54_Y34_N8
\alu|ShiftLeft0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~96_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~160_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~161_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~160_combout\,
	datad => \alu|ShiftLeft0~161_combout\,
	combout => \alu|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X54_Y36_N4
\alu|ShiftLeft0~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~98_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~165_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~169_combout\,
	datad => \alu|ShiftLeft0~165_combout\,
	combout => \alu|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X54_Y34_N22
\alu|ShiftLeft0~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~99_combout\ = (\alu|ShiftLeft0~52_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftLeft0~96_combout\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~98_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftLeft0~96_combout\,
	datac => \alu|ShiftLeft0~98_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X54_Y34_N4
\alu|Mux16~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~11_combout\ = (\actr|alu_ctr[3]~29_combout\ & ((\actr|alu_ctr[0]~32_combout\ & ((\alu|ShiftLeft0~99_combout\))) # (!\actr|alu_ctr[0]~32_combout\ & (\mux_shift|m_out[15]~51_combout\)))) # (!\actr|alu_ctr[3]~29_combout\ & 
-- (\mux_shift|m_out[15]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[15]~51_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|ShiftLeft0~99_combout\,
	combout => \alu|Mux16~11_combout\);

-- Location: LCCOMB_X54_Y34_N18
\alu|Mux16~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~12_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|Mux16~11_combout\ & ((\mux_ulaB|m_out[15]~16_combout\) # (\actr|alu_ctr[3]~29_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & ((\mux_ulaB|m_out[15]~16_combout\ & 
-- ((!\actr|alu_ctr[3]~29_combout\) # (!\alu|Mux16~11_combout\))) # (!\mux_ulaB|m_out[15]~16_combout\ & (\alu|Mux16~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_ulaB|m_out[15]~16_combout\,
	datac => \alu|Mux16~11_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux16~12_combout\);

-- Location: LCCOMB_X54_Y38_N20
\alu|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux1~2_combout\ = (!\alu|ShiftLeft0~51_combout\ & (!\actr|alu_ctr[3]~29_combout\ & (!\mux_shift|m_out[4]~79_combout\ & !\alu|ShiftLeft0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~51_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \mux_shift|m_out[4]~79_combout\,
	datad => \alu|ShiftLeft0~48_combout\,
	combout => \alu|Mux1~2_combout\);

-- Location: LCCOMB_X59_Y38_N18
\alu|ShiftRight0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~100_combout\ = (\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight1~112_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~114_combout\) # ((\alu|ShiftRight1~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~114_combout\,
	datab => \alu|ShiftRight1~112_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight1~115_combout\,
	combout => \alu|ShiftRight0~100_combout\);

-- Location: LCCOMB_X54_Y38_N30
\alu|ShiftRight0~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~113_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~100_combout\,
	combout => \alu|ShiftRight0~113_combout\);

-- Location: LCCOMB_X54_Y38_N4
\alu|Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~1_combout\ = (\alu|Mux1~2_combout\ & ((\alu|ShiftRight0~113_combout\) # ((\alu|ShiftRight0~103_combout\ & !\mux_shift|m_out[3]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~103_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|Mux1~2_combout\,
	datad => \alu|ShiftRight0~113_combout\,
	combout => \alu|Mux16~1_combout\);

-- Location: LCCOMB_X54_Y37_N22
\alu|Mux16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~5_combout\ = (\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & \alu|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|Add1~30_combout\,
	combout => \alu|Mux16~5_combout\);

-- Location: LCCOMB_X54_Y34_N2
\alu|Mux16~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~7_combout\ = (\alu|Mux16~6_combout\) # ((\alu|Mux16~5_combout\) # ((!\actr|alu_ctr[0]~32_combout\ & \alu|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~6_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux16~1_combout\,
	datad => \alu|Mux16~5_combout\,
	combout => \alu|Mux16~7_combout\);

-- Location: LCCOMB_X54_Y34_N12
\alu|Mux16~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~8_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[2]~26_combout\) # (\alu|Mux16~7_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & (\alu|Mux16~12_combout\ & (!\actr|alu_ctr[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \alu|Mux16~12_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \alu|Mux16~7_combout\,
	combout => \alu|Mux16~8_combout\);

-- Location: LCCOMB_X54_Y34_N20
\alu|Mux16~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~10_combout\ = (\actr|alu_ctr[2]~26_combout\ & ((\alu|Mux16~8_combout\ & ((\alu|Mux16~9_combout\))) # (!\alu|Mux16~8_combout\ & (\alu|Mux16~4_combout\)))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux16~4_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \alu|Mux16~9_combout\,
	datad => \alu|Mux16~8_combout\,
	combout => \alu|Mux16~10_combout\);

-- Location: LCFF_X54_Y34_N21
\regULA|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux16~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(15));

-- Location: LCCOMB_X65_Y37_N16
\rdm|sr_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[15]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(15),
	combout => \rdm|sr_out[15]~feeder_combout\);

-- Location: LCFF_X65_Y37_N17
\rdm|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(15));

-- Location: LCCOMB_X66_Y37_N8
\breg_data_mux|m_out[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[15]~15_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(15)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(15),
	datac => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \rdm|sr_out\(15),
	combout => \breg_data_mux|m_out[15]~15_combout\);

-- Location: LCCOMB_X63_Y39_N0
\bcoreg|regB[15]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[15]~8_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(26)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a15\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(26),
	combout => \bcoreg|regB[15]~8_combout\);

-- Location: LCFF_X63_Y39_N1
\rgB|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[15]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(15));

-- Location: M4K_X64_Y37
\mem|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002800090002000070001800050001000030000800010000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000B00000000340002188080004202A621010000E008018200408200004400470244FC0030F016088502040050000A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mips_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mips_mem:mem|altsyncram:altsyncram_component|altsyncram_16d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|pstate.writemem_st~regout\,
	clk0 => \clk_rom~clkctrl_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X62_Y37_N11
\ir|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(11));

-- Location: LCCOMB_X63_Y39_N14
\mux_ulaB|m_out[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[13]~17_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (((\ir|sr_out\(13))))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & ((\ctr_mips|pstate.decode_st~regout\ & ((\ir|sr_out\(13)))) # (!\ctr_mips|pstate.decode_st~regout\ & 
-- (\rgB|sr_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(13),
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datac => \ir|sr_out\(13),
	datad => \ctr_mips|pstate.decode_st~regout\,
	combout => \mux_ulaB|m_out[13]~17_combout\);

-- Location: LCCOMB_X63_Y39_N28
\mux_ulaB|m_out[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[13]~18_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[13]~17_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (\ir|sr_out\(11) & ((!\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideNor0~0_combout\,
	datab => \ir|sr_out\(11),
	datac => \mux_ulaB|m_out[13]~17_combout\,
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[13]~18_combout\);

-- Location: LCCOMB_X58_Y36_N0
\alu|tmp[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[0]~0_combout\ = (\mux_shift|m_out[0]~83_combout\ & ((GND) # (!\mux_ulaB|m_out[0]~1_combout\))) # (!\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[0]~1_combout\ $ (GND)))
-- \alu|tmp[0]~1\ = CARRY((\mux_shift|m_out[0]~83_combout\) # (!\mux_ulaB|m_out[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \mux_ulaB|m_out[0]~1_combout\,
	datad => VCC,
	combout => \alu|tmp[0]~0_combout\,
	cout => \alu|tmp[0]~1\);

-- Location: LCCOMB_X58_Y36_N4
\alu|tmp[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[2]~4_combout\ = ((\mux_ulaB|m_out[2]~6_combout\ $ (\mux_shift|m_out[2]~89_combout\ $ (\alu|tmp[1]~3\)))) # (GND)
-- \alu|tmp[2]~5\ = CARRY((\mux_ulaB|m_out[2]~6_combout\ & (\mux_shift|m_out[2]~89_combout\ & !\alu|tmp[1]~3\)) # (!\mux_ulaB|m_out[2]~6_combout\ & ((\mux_shift|m_out[2]~89_combout\) # (!\alu|tmp[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~6_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datad => VCC,
	cin => \alu|tmp[1]~3\,
	combout => \alu|tmp[2]~4_combout\,
	cout => \alu|tmp[2]~5\);

-- Location: LCCOMB_X58_Y36_N6
\alu|tmp[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[3]~6_combout\ = (\mux_ulaB|m_out[3]~4_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (!\alu|tmp[2]~5\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|tmp[2]~5\) # (GND))))) # (!\mux_ulaB|m_out[3]~4_combout\ & ((\mux_shift|m_out[3]~91_combout\ & 
-- (\alu|tmp[2]~5\ & VCC)) # (!\mux_shift|m_out[3]~91_combout\ & (!\alu|tmp[2]~5\))))
-- \alu|tmp[3]~7\ = CARRY((\mux_ulaB|m_out[3]~4_combout\ & ((!\alu|tmp[2]~5\) # (!\mux_shift|m_out[3]~91_combout\))) # (!\mux_ulaB|m_out[3]~4_combout\ & (!\mux_shift|m_out[3]~91_combout\ & !\alu|tmp[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[3]~4_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datad => VCC,
	cin => \alu|tmp[2]~5\,
	combout => \alu|tmp[3]~6_combout\,
	cout => \alu|tmp[3]~7\);

-- Location: LCCOMB_X58_Y36_N8
\alu|tmp[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[4]~8_combout\ = ((\mux_shift|m_out[4]~79_combout\ $ (\mux_ulaB|m_out[4]~14_combout\ $ (\alu|tmp[3]~7\)))) # (GND)
-- \alu|tmp[4]~9\ = CARRY((\mux_shift|m_out[4]~79_combout\ & ((!\alu|tmp[3]~7\) # (!\mux_ulaB|m_out[4]~14_combout\))) # (!\mux_shift|m_out[4]~79_combout\ & (!\mux_ulaB|m_out[4]~14_combout\ & !\alu|tmp[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \mux_ulaB|m_out[4]~14_combout\,
	datad => VCC,
	cin => \alu|tmp[3]~7\,
	combout => \alu|tmp[4]~8_combout\,
	cout => \alu|tmp[4]~9\);

-- Location: LCCOMB_X58_Y36_N10
\alu|tmp[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[5]~10_combout\ = (\mux_ulaB|m_out[5]~12_combout\ & ((\mux_shift|m_out[5]~77_combout\ & (!\alu|tmp[4]~9\)) # (!\mux_shift|m_out[5]~77_combout\ & ((\alu|tmp[4]~9\) # (GND))))) # (!\mux_ulaB|m_out[5]~12_combout\ & ((\mux_shift|m_out[5]~77_combout\ & 
-- (\alu|tmp[4]~9\ & VCC)) # (!\mux_shift|m_out[5]~77_combout\ & (!\alu|tmp[4]~9\))))
-- \alu|tmp[5]~11\ = CARRY((\mux_ulaB|m_out[5]~12_combout\ & ((!\alu|tmp[4]~9\) # (!\mux_shift|m_out[5]~77_combout\))) # (!\mux_ulaB|m_out[5]~12_combout\ & (!\mux_shift|m_out[5]~77_combout\ & !\alu|tmp[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~12_combout\,
	datab => \mux_shift|m_out[5]~77_combout\,
	datad => VCC,
	cin => \alu|tmp[4]~9\,
	combout => \alu|tmp[5]~10_combout\,
	cout => \alu|tmp[5]~11\);

-- Location: LCCOMB_X58_Y36_N12
\alu|tmp[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[6]~12_combout\ = ((\mux_ulaB|m_out[6]~10_combout\ $ (\mux_shift|m_out[6]~76_combout\ $ (\alu|tmp[5]~11\)))) # (GND)
-- \alu|tmp[6]~13\ = CARRY((\mux_ulaB|m_out[6]~10_combout\ & (\mux_shift|m_out[6]~76_combout\ & !\alu|tmp[5]~11\)) # (!\mux_ulaB|m_out[6]~10_combout\ & ((\mux_shift|m_out[6]~76_combout\) # (!\alu|tmp[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[6]~10_combout\,
	datab => \mux_shift|m_out[6]~76_combout\,
	datad => VCC,
	cin => \alu|tmp[5]~11\,
	combout => \alu|tmp[6]~12_combout\,
	cout => \alu|tmp[6]~13\);

-- Location: LCCOMB_X58_Y36_N18
\alu|tmp[9]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[9]~18_combout\ = (\mux_shift|m_out[9]~69_combout\ & ((\mux_ulaB|m_out[9]~26_combout\ & (!\alu|tmp[8]~17\)) # (!\mux_ulaB|m_out[9]~26_combout\ & (\alu|tmp[8]~17\ & VCC)))) # (!\mux_shift|m_out[9]~69_combout\ & ((\mux_ulaB|m_out[9]~26_combout\ & 
-- ((\alu|tmp[8]~17\) # (GND))) # (!\mux_ulaB|m_out[9]~26_combout\ & (!\alu|tmp[8]~17\))))
-- \alu|tmp[9]~19\ = CARRY((\mux_shift|m_out[9]~69_combout\ & (\mux_ulaB|m_out[9]~26_combout\ & !\alu|tmp[8]~17\)) # (!\mux_shift|m_out[9]~69_combout\ & ((\mux_ulaB|m_out[9]~26_combout\) # (!\alu|tmp[8]~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[9]~69_combout\,
	datab => \mux_ulaB|m_out[9]~26_combout\,
	datad => VCC,
	cin => \alu|tmp[8]~17\,
	combout => \alu|tmp[9]~18_combout\,
	cout => \alu|tmp[9]~19\);

-- Location: LCCOMB_X58_Y36_N22
\alu|tmp[11]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[11]~22_combout\ = (\mux_shift|m_out[11]~63_combout\ & ((\mux_ulaB|m_out[11]~24_combout\ & (!\alu|tmp[10]~21\)) # (!\mux_ulaB|m_out[11]~24_combout\ & (\alu|tmp[10]~21\ & VCC)))) # (!\mux_shift|m_out[11]~63_combout\ & 
-- ((\mux_ulaB|m_out[11]~24_combout\ & ((\alu|tmp[10]~21\) # (GND))) # (!\mux_ulaB|m_out[11]~24_combout\ & (!\alu|tmp[10]~21\))))
-- \alu|tmp[11]~23\ = CARRY((\mux_shift|m_out[11]~63_combout\ & (\mux_ulaB|m_out[11]~24_combout\ & !\alu|tmp[10]~21\)) # (!\mux_shift|m_out[11]~63_combout\ & ((\mux_ulaB|m_out[11]~24_combout\) # (!\alu|tmp[10]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[11]~63_combout\,
	datab => \mux_ulaB|m_out[11]~24_combout\,
	datad => VCC,
	cin => \alu|tmp[10]~21\,
	combout => \alu|tmp[11]~22_combout\,
	cout => \alu|tmp[11]~23\);

-- Location: LCCOMB_X58_Y36_N24
\alu|tmp[12]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[12]~24_combout\ = ((\mux_shift|m_out[12]~60_combout\ $ (\mux_ulaB|m_out[12]~22_combout\ $ (\alu|tmp[11]~23\)))) # (GND)
-- \alu|tmp[12]~25\ = CARRY((\mux_shift|m_out[12]~60_combout\ & ((!\alu|tmp[11]~23\) # (!\mux_ulaB|m_out[12]~22_combout\))) # (!\mux_shift|m_out[12]~60_combout\ & (!\mux_ulaB|m_out[12]~22_combout\ & !\alu|tmp[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[12]~60_combout\,
	datab => \mux_ulaB|m_out[12]~22_combout\,
	datad => VCC,
	cin => \alu|tmp[11]~23\,
	combout => \alu|tmp[12]~24_combout\,
	cout => \alu|tmp[12]~25\);

-- Location: LCCOMB_X54_Y39_N16
\alu|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_ulaB|m_out[14]~20_combout\ & \mux_shift|m_out[14]~54_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_ulaB|m_out[14]~20_combout\) # (\mux_shift|m_out[14]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_ulaB|m_out[14]~20_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \mux_shift|m_out[14]~54_combout\,
	combout => \alu|Mux17~0_combout\);

-- Location: LCCOMB_X54_Y39_N22
\alu|Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~1_combout\ = (\alu|Mux29~7_combout\ & ((\alu|Mux17~0_combout\ & ((\alu|Add1~28_combout\))) # (!\alu|Mux17~0_combout\ & (\alu|ShiftRight1~119_combout\)))) # (!\alu|Mux29~7_combout\ & (((\alu|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~7_combout\,
	datab => \alu|ShiftRight1~119_combout\,
	datac => \alu|Mux17~0_combout\,
	datad => \alu|Add1~28_combout\,
	combout => \alu|Mux17~1_combout\);

-- Location: LCCOMB_X54_Y39_N8
\alu|Mux17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~2_combout\ = (\alu|Mux29~6_combout\ & (\alu|Mux29~5_combout\ & (\alu|tmp[14]~28_combout\))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux17~1_combout\)) # (!\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~6_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|tmp[14]~28_combout\,
	datad => \alu|Mux17~1_combout\,
	combout => \alu|Mux17~2_combout\);

-- Location: LCCOMB_X59_Y34_N0
\alu|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux16~0_combout\ = (!\mux_shift|m_out[0]~83_combout\ & (!\mux_shift|m_out[1]~87_combout\ & (!\mux_shift|m_out[3]~91_combout\ & !\mux_shift|m_out[2]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \mux_shift|m_out[2]~89_combout\,
	combout => \alu|Mux16~0_combout\);

-- Location: LCCOMB_X61_Y39_N16
\alu|ShiftRight0~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~112_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|Mux16~0_combout\ & ((\rgB|sr_out\(30)))) # (!\alu|Mux16~0_combout\ & (\rgB|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \rgB|sr_out\(30),
	datac => \alu|Mux16~0_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \alu|ShiftRight0~112_combout\);

-- Location: LCCOMB_X61_Y39_N30
\alu|ShiftRight0~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~133_combout\ = (\alu|ShiftRight0~112_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \alu|ShiftRight0~112_combout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \alu|ShiftRight0~133_combout\);

-- Location: LCCOMB_X54_Y39_N30
\alu|Mux17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux17~2_combout\ & ((\alu|ShiftRight0~133_combout\))) # (!\alu|Mux17~2_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|Mux17~2_combout\,
	datad => \alu|ShiftRight0~133_combout\,
	combout => \alu|Mux17~3_combout\);

-- Location: LCCOMB_X54_Y39_N12
\alu|Mux17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~4_combout\ = (\alu|Mux17~3_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux17~3_combout\,
	combout => \alu|Mux17~4_combout\);

-- Location: LCCOMB_X54_Y39_N4
\alu|Mux17~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~6_combout\ = (\alu|Mux29~2_combout\ & ((\alu|Mux29~14_combout\ & (!\alu|Mux17~5_combout\)) # (!\alu|Mux29~14_combout\ & ((\alu|Mux17~4_combout\))))) # (!\alu|Mux29~2_combout\ & (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux17~5_combout\,
	datad => \alu|Mux17~4_combout\,
	combout => \alu|Mux17~6_combout\);

-- Location: LCCOMB_X54_Y39_N18
\alu|Mux17~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~7_combout\ = (\alu|Mux17~6_combout\ & (((\alu|a32~23_combout\) # (!\alu|Mux29~3_combout\)))) # (!\alu|Mux17~6_combout\ & (\alu|ShiftLeft0~95_combout\ & ((\alu|Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~95_combout\,
	datab => \alu|a32~23_combout\,
	datac => \alu|Mux17~6_combout\,
	datad => \alu|Mux29~3_combout\,
	combout => \alu|Mux17~7_combout\);

-- Location: LCCOMB_X61_Y36_N20
\alu|Mux17~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux17~10_combout\ = (\alu|Mux29~19_combout\ & ((\alu|Mux17~7_combout\))) # (!\alu|Mux29~19_combout\ & (\alu|Mux17~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux17~9_combout\,
	datad => \alu|Mux17~7_combout\,
	combout => \alu|Mux17~10_combout\);

-- Location: LCFF_X61_Y36_N21
\regULA|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux17~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(14));

-- Location: LCCOMB_X65_Y37_N2
\rdm|sr_out[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[14]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(14),
	combout => \rdm|sr_out[14]~feeder_combout\);

-- Location: LCFF_X65_Y37_N3
\rdm|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(14));

-- Location: LCCOMB_X65_Y36_N28
\breg_data_mux|m_out[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[14]~16_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(14)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(14),
	datad => \rdm|sr_out\(14),
	combout => \breg_data_mux|m_out[14]~16_combout\);

-- Location: LCFF_X65_Y35_N29
\bcoreg|breg32_rtl_1_bypass[39]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[28]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(39));

-- Location: LCCOMB_X63_Y40_N2
\bcoreg|regB[28]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[28]~23_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(39)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a28\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(39),
	combout => \bcoreg|regB[28]~23_combout\);

-- Location: LCCOMB_X59_Y40_N16
\rgB|sr_out[28]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rgB|sr_out[28]~feeder_combout\ = \bcoreg|regB[28]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcoreg|regB[28]~23_combout\,
	combout => \rgB|sr_out[28]~feeder_combout\);

-- Location: LCFF_X59_Y40_N17
\rgB|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rgB|sr_out[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(28));

-- Location: M4K_X64_Y38
\mem|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002040000420AE100002040012001238402400000000D0C3C0006B200C803012804A2008802",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "mips_rom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "mips_mem:mem|altsyncram:altsyncram_component|altsyncram_16d1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \ctr_mips|pstate.writemem_st~regout\,
	clk0 => \clk_rom~clkctrl_outclk\,
	portadatain => \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \mem|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \mem|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X65_Y38_N8
\ir|sr_out[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[25]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(25),
	combout => \ir|sr_out[25]~feeder_combout\);

-- Location: LCFF_X65_Y38_N9
\ir|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[25]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(25));

-- Location: LCCOMB_X63_Y35_N26
\bcoreg|breg32~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~40_combout\ = (\bcoreg|breg32_rtl_0_bypass\(0) & (\bcoreg|breg32_rtl_0_bypass\(9) $ (!\ir|sr_out\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcoreg|breg32_rtl_0_bypass\(0),
	datac => \bcoreg|breg32_rtl_0_bypass\(9),
	datad => \ir|sr_out\(25),
	combout => \bcoreg|breg32~40_combout\);

-- Location: LCFF_X65_Y39_N7
\bcoreg|breg32_rtl_0_bypass[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \mux_reg_add|m_out[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(7));

-- Location: LCCOMB_X65_Y39_N18
\bcoreg|breg32~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~39_combout\ = (\bcoreg|breg32_rtl_0_bypass\(5) & (\ir|sr_out\(23) & (\ir|sr_out\(24) $ (!\bcoreg|breg32_rtl_0_bypass\(7))))) # (!\bcoreg|breg32_rtl_0_bypass\(5) & (!\ir|sr_out\(23) & (\ir|sr_out\(24) $ (!\bcoreg|breg32_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(5),
	datab => \ir|sr_out\(23),
	datac => \ir|sr_out\(24),
	datad => \bcoreg|breg32_rtl_0_bypass\(7),
	combout => \bcoreg|breg32~39_combout\);

-- Location: LCCOMB_X65_Y39_N20
\bcoreg|breg32~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~41_combout\ = (\bcoreg|breg32~38_combout\ & (\bcoreg|breg32~40_combout\ & \bcoreg|breg32~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcoreg|breg32~38_combout\,
	datac => \bcoreg|breg32~40_combout\,
	datad => \bcoreg|breg32~39_combout\,
	combout => \bcoreg|breg32~41_combout\);

-- Location: LCFF_X63_Y40_N23
\bcoreg|breg32_rtl_0_bypass[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[0]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_0_bypass\(11));

-- Location: LCCOMB_X62_Y36_N0
\bcoreg|regA[0]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[0]~27_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0_bypass\(11)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|Equal0~1_combout\,
	datad => \bcoreg|breg32_rtl_0_bypass\(11),
	combout => \bcoreg|regA[0]~27_combout\);

-- Location: LCFF_X61_Y37_N9
\rgA|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[0]~27_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(0));

-- Location: LCCOMB_X61_Y37_N8
\mux_shift|m_out[0]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[0]~80_combout\ = (\rgA|sr_out\(0) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(0),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[0]~80_combout\);

-- Location: LCCOMB_X61_Y37_N18
\mux_shift|m_out[0]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[0]~81_combout\ = (\pc|sr_out\(0) & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(0),
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[0]~81_combout\);

-- Location: LCCOMB_X61_Y37_N6
\mux_shift|m_out[0]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[0]~82_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[0]~80_combout\) # (\mux_shift|m_out[0]~81_combout\)))) # (!\actr|alu_ctr~25_combout\ & (((\mux_shift|m_out[0]~80_combout\) # 
-- (\mux_shift|m_out[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[0]~80_combout\,
	datad => \mux_shift|m_out[0]~81_combout\,
	combout => \mux_shift|m_out[0]~82_combout\);

-- Location: LCCOMB_X60_Y41_N0
\alu|ShiftRight1~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~65_combout\ = (\mux_shift|m_out[1]~94_combout\ & (\rgB|sr_out\(29))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\rgB|sr_out\(29))) # (!\mux_shift|m_out[1]~86_combout\ & ((\rgB|sr_out\(27))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(29),
	datab => \rgB|sr_out\(27),
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight1~65_combout\);

-- Location: LCCOMB_X59_Y41_N18
\alu|ShiftRight1~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~105_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftRight1~65_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftRight1~65_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftRight1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight1~65_combout\,
	datad => \alu|ShiftRight1~50_combout\,
	combout => \alu|ShiftRight1~105_combout\);

-- Location: LCCOMB_X58_Y41_N0
\alu|ShiftRight0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~75_combout\ = (\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \rgB|sr_out\(30),
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~75_combout\);

-- Location: LCCOMB_X58_Y41_N2
\alu|ShiftRight0~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~76_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~75_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight1~105_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight0~75_combout\,
	combout => \alu|ShiftRight0~76_combout\);

-- Location: LCCOMB_X58_Y41_N30
\alu|ShiftRight0~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~106_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~76_combout\,
	combout => \alu|ShiftRight0~106_combout\);

-- Location: LCCOMB_X58_Y41_N18
\alu|ShiftRight0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~130_combout\ = (\alu|ShiftRight0~106_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ir|sr_out\(15),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \alu|ShiftRight0~106_combout\,
	combout => \alu|ShiftRight0~130_combout\);

-- Location: LCCOMB_X60_Y38_N24
\alu|Mux29~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~6_combout\ = (\actr|alu_ctr[2]~26_combout\ & ((\alu|ShiftLeft0~48_combout\) # ((\actr|alu_ctr[1]~31_combout\) # (\alu|ShiftLeft0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~48_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \alu|ShiftLeft0~51_combout\,
	datad => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux29~6_combout\);

-- Location: LCCOMB_X60_Y38_N10
\alu|Mux29~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~7_combout\ = (\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[0]~32_combout\) # ((!\alu|ShiftLeft0~48_combout\ & !\alu|ShiftLeft0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \alu|ShiftLeft0~48_combout\,
	datad => \alu|ShiftLeft0~51_combout\,
	combout => \alu|Mux29~7_combout\);

-- Location: LCCOMB_X60_Y39_N2
\alu|ShiftRight1~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~97_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight1~69_combout\) # ((\alu|ShiftRight1~118_combout\ & \alu|ShiftRight1~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~118_combout\,
	datab => \alu|ShiftRight1~71_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~69_combout\,
	combout => \alu|ShiftRight1~97_combout\);

-- Location: LCCOMB_X59_Y40_N28
\alu|Mux21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~1_combout\ = (\alu|Mux21~0_combout\ & (((\alu|Add1~20_combout\)) # (!\alu|Mux29~7_combout\))) # (!\alu|Mux21~0_combout\ & (\alu|Mux29~7_combout\ & (\alu|ShiftRight1~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux21~0_combout\,
	datab => \alu|Mux29~7_combout\,
	datac => \alu|ShiftRight1~97_combout\,
	datad => \alu|Add1~20_combout\,
	combout => \alu|Mux21~1_combout\);

-- Location: LCCOMB_X59_Y40_N18
\alu|Mux21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~2_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[10]~20_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux21~1_combout\))))) # (!\alu|Mux29~5_combout\ & (((!\alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[10]~20_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|Mux21~1_combout\,
	combout => \alu|Mux21~2_combout\);

-- Location: LCCOMB_X59_Y40_N0
\alu|Mux21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux21~2_combout\ & ((\alu|ShiftRight0~130_combout\))) # (!\alu|Mux21~2_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~130_combout\,
	datad => \alu|Mux21~2_combout\,
	combout => \alu|Mux21~3_combout\);

-- Location: LCCOMB_X59_Y40_N30
\alu|Mux21~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~4_combout\ = (\alu|Mux21~3_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux21~3_combout\,
	combout => \alu|Mux21~4_combout\);

-- Location: LCCOMB_X59_Y40_N26
\alu|Mux21~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~6_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux21~5_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux21~5_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux21~4_combout\,
	combout => \alu|Mux21~6_combout\);

-- Location: LCCOMB_X59_Y40_N4
\alu|Mux21~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~7_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux21~6_combout\ & ((\alu|a32~19_combout\))) # (!\alu|Mux21~6_combout\ & (\alu|ShiftLeft0~81_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~81_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|a32~19_combout\,
	datad => \alu|Mux21~6_combout\,
	combout => \alu|Mux21~7_combout\);

-- Location: LCCOMB_X56_Y36_N16
\alu|ShiftRight1~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~77_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[13]~18_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[13]~18_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[11]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_ulaB|m_out[11]~24_combout\,
	datac => \mux_shift|m_out[1]~86_combout\,
	datad => \mux_ulaB|m_out[13]~18_combout\,
	combout => \alu|ShiftRight1~77_combout\);

-- Location: LCCOMB_X57_Y36_N20
\alu|ShiftRight1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~54_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[12]~22_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[12]~22_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[10]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[10]~28_combout\,
	datad => \mux_ulaB|m_out[12]~22_combout\,
	combout => \alu|ShiftRight1~54_combout\);

-- Location: LCCOMB_X56_Y36_N22
\alu|ShiftRight1~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~111_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftRight1~77_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftRight1~77_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & 
-- ((\alu|ShiftRight1~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight1~77_combout\,
	datad => \alu|ShiftRight1~54_combout\,
	combout => \alu|ShiftRight1~111_combout\);

-- Location: LCCOMB_X57_Y41_N14
\alu|ShiftRight0~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~79_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~110_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight1~111_combout\,
	datad => \alu|ShiftRight1~110_combout\,
	combout => \alu|ShiftRight0~79_combout\);

-- Location: LCCOMB_X57_Y41_N30
\alu|Mux21~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~8_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftRight0~77_combout\,
	datad => \mux_shift|m_out[3]~91_combout\,
	combout => \alu|Mux21~8_combout\);

-- Location: LCCOMB_X57_Y41_N16
\alu|Mux21~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~9_combout\ = (\alu|Mux21~8_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~79_combout\,
	datad => \alu|Mux21~8_combout\,
	combout => \alu|Mux21~9_combout\);

-- Location: LCCOMB_X59_Y40_N10
\alu|Mux21~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux21~10_combout\ = (\alu|Mux29~19_combout\ & (\alu|Mux21~7_combout\)) # (!\alu|Mux29~19_combout\ & ((\alu|Mux21~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux21~7_combout\,
	datac => \alu|Mux21~9_combout\,
	datad => \alu|Mux29~19_combout\,
	combout => \alu|Mux21~10_combout\);

-- Location: LCFF_X59_Y40_N11
\regULA|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux21~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(10));

-- Location: LCCOMB_X65_Y37_N20
\rdm|sr_out[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[10]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem|altsyncram_component|auto_generated|q_a\(10),
	combout => \rdm|sr_out[10]~feeder_combout\);

-- Location: LCFF_X65_Y37_N21
\rdm|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(10));

-- Location: LCCOMB_X65_Y34_N8
\breg_data_mux|m_out[10]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[10]~20_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(10)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(10),
	datad => \rdm|sr_out\(10),
	combout => \breg_data_mux|m_out[10]~20_combout\);

-- Location: LCCOMB_X65_Y36_N14
\bcoreg|breg32_rtl_1_bypass[25]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[25]~feeder_combout\ = \breg_data_mux|m_out[14]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[14]~16_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[25]~feeder_combout\);

-- Location: LCFF_X65_Y36_N15
\bcoreg|breg32_rtl_1_bypass[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(25));

-- Location: LCCOMB_X63_Y36_N12
\bcoreg|regB[14]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[14]~10_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(25)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a14\,
	datac => \bcoreg|breg32_rtl_1_bypass\(25),
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[14]~10_combout\);

-- Location: LCFF_X63_Y36_N13
\rgB|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[14]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(14));

-- Location: LCFF_X61_Y37_N27
\ir|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(7));

-- Location: LCCOMB_X61_Y37_N26
\mux_shift|m_out[1]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[1]~94_combout\ = (!\ir|sr_out\(5) & (!\ir|sr_out\(2) & (\ir|sr_out\(7) & \actr|alu_ctr~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(5),
	datab => \ir|sr_out\(2),
	datac => \ir|sr_out\(7),
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[1]~94_combout\);

-- Location: LCCOMB_X57_Y37_N2
\alu|ShiftLeft0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~66_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[3]~4_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[3]~4_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\mux_ulaB|m_out[5]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[3]~4_combout\,
	datad => \mux_ulaB|m_out[5]~12_combout\,
	combout => \alu|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X57_Y37_N12
\alu|ShiftLeft0~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~156_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftLeft0~64_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftLeft0~64_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftLeft0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \alu|ShiftLeft0~66_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftLeft0~64_combout\,
	combout => \alu|ShiftLeft0~156_combout\);

-- Location: LCCOMB_X56_Y40_N28
\alu|ShiftLeft0~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~67_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~55_combout\ & (!\mux_shift|m_out[1]~87_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftLeft0~156_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~55_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftLeft0~156_combout\,
	combout => \alu|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X56_Y40_N18
\alu|ShiftLeft0~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~90_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~163_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~163_combout\,
	datad => \alu|ShiftLeft0~167_combout\,
	combout => \alu|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X56_Y40_N4
\alu|ShiftLeft0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~91_combout\ = (\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftLeft0~67_combout\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~67_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~90_combout\,
	combout => \alu|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X58_Y41_N22
\alu|ShiftLeft0~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~144_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\rgB|sr_out\(28))))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\rgB|sr_out\(28)))) # (!\mux_shift|m_out[0]~93_combout\ & (\rgB|sr_out\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \rgB|sr_out\(29),
	datac => \rgB|sr_out\(28),
	datad => \mux_shift|m_out[0]~93_combout\,
	combout => \alu|ShiftLeft0~144_combout\);

-- Location: LCCOMB_X58_Y41_N24
\alu|Mux2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~12_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\rgB|sr_out\(26))))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\rgB|sr_out\(26)))) # (!\mux_shift|m_out[0]~93_combout\ & (\rgB|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \rgB|sr_out\(27),
	datac => \rgB|sr_out\(26),
	datad => \mux_shift|m_out[0]~93_combout\,
	combout => \alu|Mux2~12_combout\);

-- Location: LCCOMB_X58_Y41_N20
\alu|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~2_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|Mux29~21_combout\ & ((\alu|Mux2~12_combout\))) # (!\alu|Mux29~21_combout\ & (\alu|ShiftLeft0~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~21_combout\,
	datab => \alu|ShiftLeft0~144_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \alu|Mux2~12_combout\,
	combout => \alu|Mux2~2_combout\);

-- Location: LCCOMB_X57_Y37_N30
\alu|ShiftLeft0~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~136_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(24))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(24),
	datab => \rgB|sr_out\(25),
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X57_Y40_N22
\alu|ShiftLeft0~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~135_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(22))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \rgB|sr_out\(23),
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X57_Y40_N8
\alu|ShiftLeft0~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~137_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftLeft0~136_combout\) # (\alu|ShiftLeft0~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftLeft0~136_combout\,
	datad => \alu|ShiftLeft0~135_combout\,
	combout => \alu|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X63_Y40_N14
\alu|ShiftLeft0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~120_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(20)))) # (!\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(21),
	datac => \rgB|sr_out\(20),
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X63_Y40_N28
\alu|ShiftLeft0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~119_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(18)))) # (!\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(19),
	datac => \rgB|sr_out\(18),
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X63_Y40_N24
\alu|ShiftLeft0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~121_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftLeft0~120_combout\) # (\alu|ShiftLeft0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftLeft0~120_combout\,
	datad => \alu|ShiftLeft0~119_combout\,
	combout => \alu|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X56_Y40_N30
\alu|ShiftLeft0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~122_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~172_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~172_combout\,
	datad => \alu|ShiftLeft0~121_combout\,
	combout => \alu|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X57_Y40_N2
\alu|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~3_combout\ = (\alu|Mux29~21_combout\ & ((\alu|ShiftLeft0~122_combout\))) # (!\alu|Mux29~21_combout\ & (\alu|ShiftLeft0~137_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftLeft0~137_combout\,
	datac => \alu|ShiftLeft0~122_combout\,
	datad => \alu|Mux29~21_combout\,
	combout => \alu|Mux2~3_combout\);

-- Location: LCCOMB_X57_Y42_N2
\alu|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~4_combout\ = (\alu|ShiftRight0~70_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|Mux2~2_combout\)))) # (!\alu|ShiftRight0~70_combout\ & (((\alu|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \alu|ShiftRight0~70_combout\,
	datac => \alu|Mux2~2_combout\,
	datad => \alu|Mux2~3_combout\,
	combout => \alu|Mux2~4_combout\);

-- Location: LCCOMB_X57_Y42_N16
\alu|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~6_combout\ = (\alu|Mux3~17_combout\ & ((\alu|Mux2~5_combout\ & ((\alu|Mux2~4_combout\))) # (!\alu|Mux2~5_combout\ & (\alu|ShiftLeft0~91_combout\)))) # (!\alu|Mux3~17_combout\ & (\alu|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux3~17_combout\,
	datab => \alu|Mux2~5_combout\,
	datac => \alu|ShiftLeft0~91_combout\,
	datad => \alu|Mux2~4_combout\,
	combout => \alu|Mux2~6_combout\);

-- Location: LCCOMB_X57_Y37_N8
\alu|ShiftRight1~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~100_combout\ = (\alu|ShiftRight0~70_combout\ & ((\alu|ShiftRight1~104_combout\) # ((\alu|ShiftRight1~103_combout\) # (\alu|ShiftRight1~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~104_combout\,
	datab => \alu|ShiftRight1~103_combout\,
	datac => \alu|ShiftRight0~70_combout\,
	datad => \alu|ShiftRight1~58_combout\,
	combout => \alu|ShiftRight1~100_combout\);

-- Location: LCCOMB_X58_Y42_N18
\alu|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~8_combout\ = (\alu|Mux2~7_combout\ & (((\alu|Add1~58_combout\)) # (!\alu|Mux8~6_combout\))) # (!\alu|Mux2~7_combout\ & (\alu|Mux8~6_combout\ & ((\alu|ShiftRight1~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux2~7_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|Add1~58_combout\,
	datad => \alu|ShiftRight1~100_combout\,
	combout => \alu|Mux2~8_combout\);

-- Location: LCCOMB_X58_Y42_N12
\alu|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~9_combout\ = (\alu|Mux8~8_combout\ & (\alu|tmp[29]~58_combout\ & (\alu|Mux8~7_combout\))) # (!\alu|Mux8~8_combout\ & (((\alu|Mux2~8_combout\) # (!\alu|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[29]~58_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux8~7_combout\,
	datad => \alu|Mux2~8_combout\,
	combout => \alu|Mux2~9_combout\);

-- Location: LCCOMB_X58_Y42_N30
\alu|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~10_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux2~9_combout\ & (\alu|ShiftRight0~111_combout\)) # (!\alu|Mux2~9_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~111_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux2~9_combout\,
	combout => \alu|Mux2~10_combout\);

-- Location: LCCOMB_X60_Y42_N20
\alu|Mux2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux2~11_combout\ = (\alu|Mux3~5_combout\ & ((\actr|alu_ctr[3]~29_combout\ & (\alu|Mux2~6_combout\)) # (!\actr|alu_ctr[3]~29_combout\ & ((\alu|Mux2~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~29_combout\,
	datab => \alu|Mux2~6_combout\,
	datac => \alu|Mux3~5_combout\,
	datad => \alu|Mux2~10_combout\,
	combout => \alu|Mux2~11_combout\);

-- Location: LCFF_X60_Y42_N21
\regULA|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(29));

-- Location: LCFF_X65_Y38_N23
\rdm|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(29));

-- Location: LCCOMB_X62_Y39_N14
\breg_data_mux|m_out[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[29]~2_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(29)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(29),
	datac => \rdm|sr_out\(29),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[29]~2_combout\);

-- Location: LCFF_X62_Y39_N17
\bcoreg|breg32_rtl_1_bypass[40]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[29]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(40));

-- Location: LCCOMB_X62_Y39_N0
\bcoreg|regA[29]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[29]~2_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(40))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(40),
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a29\,
	combout => \bcoreg|regA[29]~2_combout\);

-- Location: LCFF_X62_Y35_N27
\rgA|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[29]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(29));

-- Location: LCCOMB_X62_Y35_N26
\mux_shift|m_out[29]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[29]~10_combout\ = (\rgA|sr_out\(29) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(29),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[29]~10_combout\);

-- Location: LCCOMB_X62_Y35_N22
\mux_shift|m_out[29]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[29]~12_combout\ = (\mux_shift|m_out[29]~11_combout\ & (((!\actr|alu_ctr~25_combout\) # (!\actr|alu_ctr~24_combout\)))) # (!\mux_shift|m_out[29]~11_combout\ & (\mux_shift|m_out[29]~10_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[29]~11_combout\,
	datab => \mux_shift|m_out[29]~10_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[29]~12_combout\);

-- Location: LCCOMB_X58_Y35_N30
\alu|tmp[31]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|tmp[31]~62_combout\ = \mux_shift|m_out[31]~92_combout\ $ (\alu|tmp[30]~61\ $ (!\mux_ulaB|m_out[31]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[31]~92_combout\,
	datad => \mux_ulaB|m_out[31]~36_combout\,
	cin => \alu|tmp[30]~61\,
	combout => \alu|tmp[31]~62_combout\);

-- Location: LCCOMB_X59_Y36_N30
\alu|Add1~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Add1~62_combout\ = \mux_shift|m_out[31]~92_combout\ $ (\alu|Add1~61\ $ (\mux_ulaB|m_out[31]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[31]~92_combout\,
	datad => \mux_ulaB|m_out[31]~36_combout\,
	cin => \alu|Add1~61\,
	combout => \alu|Add1~62_combout\);

-- Location: LCCOMB_X56_Y35_N10
\alu|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~1_combout\ = (\alu|Mux0~0_combout\ & (\alu|tmp[31]~62_combout\)) # (!\alu|Mux0~0_combout\ & ((\alu|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux0~0_combout\,
	datac => \alu|tmp[31]~62_combout\,
	datad => \alu|Add1~62_combout\,
	combout => \alu|Mux0~1_combout\);

-- Location: LCCOMB_X56_Y35_N0
\alu|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~4_combout\ = (\alu|Mux0~3_combout\ & ((\alu|Mux0~2_combout\ & ((\alu|Mux0~1_combout\))) # (!\alu|Mux0~2_combout\ & (!\alu|ShiftLeft0~54_combout\)))) # (!\alu|Mux0~3_combout\ & (((\alu|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~54_combout\,
	datab => \alu|Mux0~3_combout\,
	datac => \alu|Mux0~2_combout\,
	datad => \alu|Mux0~1_combout\,
	combout => \alu|Mux0~4_combout\);

-- Location: LCCOMB_X56_Y35_N8
\alu|Mux0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux0~8_combout\ = (\actr|alu_ctr[3]~29_combout\ & (\alu|Mux0~10_combout\ & (!\actr|alu_ctr[1]~31_combout\))) # (!\actr|alu_ctr[3]~29_combout\ & (((\alu|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux0~10_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \alu|Mux0~4_combout\,
	combout => \alu|Mux0~8_combout\);

-- Location: LCCOMB_X61_Y38_N4
\alu|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~1_combout\ = (!\alu|Mux29~20_combout\ & (!\alu|Mux23~9_combout\ & (!\alu|Mux28~10_combout\ & !\alu|Mux22~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~20_combout\,
	datab => \alu|Mux23~9_combout\,
	datac => \alu|Mux28~10_combout\,
	datad => \alu|Mux22~11_combout\,
	combout => \alu|Equal0~1_combout\);

-- Location: LCCOMB_X54_Y36_N16
\alu|ShiftRight0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~46_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[10]~28_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[10]~28_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[8]~30_combout\,
	datad => \mux_ulaB|m_out[10]~28_combout\,
	combout => \alu|ShiftRight0~46_combout\);

-- Location: LCCOMB_X62_Y37_N22
\alu|ShiftRight0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~45_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[11]~24_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[11]~24_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[9]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[9]~26_combout\,
	datab => \mux_ulaB|m_out[11]~24_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftRight0~45_combout\);

-- Location: LCCOMB_X54_Y36_N20
\alu|ShiftRight0~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~116_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftRight0~45_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftRight0~45_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight0~46_combout\,
	datad => \alu|ShiftRight0~45_combout\,
	combout => \alu|ShiftRight0~116_combout\);

-- Location: LCCOMB_X56_Y36_N12
\alu|ShiftRight0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~43_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[15]~16_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & ((\mux_ulaB|m_out[15]~16_combout\))) # (!\mux_shift|m_out[1]~94_combout\ & 
-- (\mux_ulaB|m_out[13]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[13]~18_combout\,
	datad => \mux_ulaB|m_out[15]~16_combout\,
	combout => \alu|ShiftRight0~43_combout\);

-- Location: LCCOMB_X56_Y36_N20
\alu|ShiftRight0~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~115_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftRight0~43_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftRight0~43_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftRight0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~44_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \alu|ShiftRight0~43_combout\,
	combout => \alu|ShiftRight0~115_combout\);

-- Location: LCCOMB_X54_Y36_N10
\alu|ShiftRight1~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~47_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~115_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~116_combout\,
	datad => \alu|ShiftRight0~115_combout\,
	combout => \alu|ShiftRight1~47_combout\);

-- Location: LCCOMB_X60_Y42_N16
\alu|ShiftRight1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~48_combout\ = (\alu|ShiftLeft0~52_combout\ & ((\alu|ShiftRight1~46_combout\) # ((\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight1~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~46_combout\,
	datab => \alu|ShiftLeft0~52_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~47_combout\,
	combout => \alu|ShiftRight1~48_combout\);

-- Location: LCCOMB_X59_Y39_N26
\alu|ShiftRight0~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~117_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftRight0~47_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\alu|ShiftRight0~47_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\alu|ShiftRight0~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight0~47_combout\,
	datad => \alu|ShiftRight0~48_combout\,
	combout => \alu|ShiftRight0~117_combout\);

-- Location: LCCOMB_X59_Y39_N8
\alu|ShiftRight0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~51_combout\ = (\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight0~49_combout\) # (\alu|ShiftRight0~50_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight0~117_combout\,
	datac => \alu|ShiftRight0~49_combout\,
	datad => \alu|ShiftRight0~50_combout\,
	combout => \alu|ShiftRight0~51_combout\);

-- Location: LCCOMB_X54_Y38_N24
\alu|ShiftRight0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~52_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \alu|ShiftRight0~51_combout\,
	combout => \alu|ShiftRight0~52_combout\);

-- Location: LCCOMB_X60_Y42_N18
\alu|ShiftRight0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~61_combout\ = (\alu|ShiftRight0~52_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~52_combout\,
	datad => \alu|ShiftRight0~60_combout\,
	combout => \alu|ShiftRight0~61_combout\);

-- Location: LCCOMB_X60_Y42_N12
\alu|ShiftRight1~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~49_combout\ = (\alu|ShiftRight1~48_combout\) # ((!\alu|ShiftLeft0~53_combout\ & (\mux_shift|m_out[4]~79_combout\ & \alu|ShiftRight0~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~53_combout\,
	datab => \mux_shift|m_out[4]~79_combout\,
	datac => \alu|ShiftRight1~48_combout\,
	datad => \alu|ShiftRight0~61_combout\,
	combout => \alu|ShiftRight1~49_combout\);

-- Location: LCCOMB_X60_Y42_N26
\alu|Mux31~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~2_combout\ = (!\actr|alu_ctr[0]~32_combout\ & ((\alu|ShiftRight1~49_combout\) # ((\alu|ShiftLeft0~53_combout\ & \mux_ulaB|m_out[31]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~53_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_ulaB|m_out[31]~36_combout\,
	datad => \alu|ShiftRight1~49_combout\,
	combout => \alu|Mux31~2_combout\);

-- Location: LCCOMB_X60_Y41_N30
\alu|Mux31~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~10_combout\ = (\mux_ulaB|m_out[0]~1_combout\ & (((\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\)) # (!\actr|alu_ctr[0]~32_combout\))) # (!\mux_ulaB|m_out[0]~1_combout\ & (!\actr|alu_ctr[0]~32_combout\ & 
-- ((\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[0]~1_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_shift|m_out[0]~93_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|Mux31~10_combout\);

-- Location: LCCOMB_X60_Y42_N0
\alu|Mux31~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~3_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|Add1~0_combout\)) # (!\actr|alu_ctr[0]~32_combout\ & ((\alu|ShiftRight1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Add1~0_combout\,
	datad => \alu|ShiftRight1~49_combout\,
	combout => \alu|Mux31~3_combout\);

-- Location: LCCOMB_X60_Y42_N14
\alu|Mux31~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~4_combout\ = (\actr|alu_ctr[2]~26_combout\ & (((\actr|alu_ctr[1]~31_combout\)))) # (!\actr|alu_ctr[2]~26_combout\ & ((\actr|alu_ctr[1]~31_combout\ & ((\alu|Mux31~3_combout\))) # (!\actr|alu_ctr[1]~31_combout\ & (\alu|Mux31~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \alu|Mux31~10_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \alu|Mux31~3_combout\,
	combout => \alu|Mux31~4_combout\);

-- Location: LCCOMB_X60_Y42_N28
\alu|Mux31~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~5_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|tmp[0]~0_combout\)) # (!\actr|alu_ctr[0]~32_combout\ & ((\alu|tmp[31]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|tmp[0]~0_combout\,
	datac => \alu|tmp[31]~62_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux31~5_combout\);

-- Location: LCCOMB_X60_Y42_N2
\alu|Mux31~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~6_combout\ = (\actr|alu_ctr[2]~26_combout\ & ((\alu|Mux31~4_combout\ & ((\alu|Mux31~5_combout\))) # (!\alu|Mux31~4_combout\ & (\alu|Mux31~2_combout\)))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \alu|Mux31~2_combout\,
	datac => \alu|Mux31~4_combout\,
	datad => \alu|Mux31~5_combout\,
	combout => \alu|Mux31~6_combout\);

-- Location: LCCOMB_X60_Y42_N4
\alu|Mux31~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux31~9_combout\ = (\actr|alu_ctr[3]~29_combout\ & (\alu|Mux31~8_combout\ & (!\actr|alu_ctr[1]~31_combout\))) # (!\actr|alu_ctr[3]~29_combout\ & (((\alu|Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux31~8_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|Mux31~6_combout\,
	combout => \alu|Mux31~9_combout\);

-- Location: LCCOMB_X60_Y42_N10
\alu|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~0_combout\ = (!\alu|Mux31~9_combout\ & (!\alu|Mux2~11_combout\ & !\alu|Mux3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux31~9_combout\,
	datac => \alu|Mux2~11_combout\,
	datad => \alu|Mux3~16_combout\,
	combout => \alu|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y38_N14
\alu|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~2_combout\ = (!\alu|Mux0~8_combout\ & (\alu|Equal0~1_combout\ & \alu|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux0~8_combout\,
	datac => \alu|Equal0~1_combout\,
	datad => \alu|Equal0~0_combout\,
	combout => \alu|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y38_N8
\alu|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~3_combout\ = (!\alu|Mux27~combout\ & (!\alu|Mux25~combout\ & (!\alu|Mux26~combout\ & !\alu|Mux24~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~combout\,
	datab => \alu|Mux25~combout\,
	datac => \alu|Mux26~combout\,
	datad => \alu|Mux24~combout\,
	combout => \alu|Equal0~3_combout\);

-- Location: LCCOMB_X54_Y37_N4
\alu|a32~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~10_combout\ = \mux_ulaB|m_out[1]~0_combout\ $ (((\mux_shift|m_out[1]~86_combout\) # (\mux_shift|m_out[1]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[1]~0_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datad => \mux_shift|m_out[1]~94_combout\,
	combout => \alu|a32~10_combout\);

-- Location: LCCOMB_X56_Y40_N8
\alu|ShiftLeft0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~56_combout\ = (!\mux_shift|m_out[1]~87_combout\ & (!\mux_shift|m_out[2]~89_combout\ & (!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~55_combout\,
	combout => \alu|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X56_Y40_N26
\alu|ShiftLeft0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~57_combout\ = (!\mux_shift|m_out[4]~79_combout\ & (!\alu|ShiftLeft0~51_combout\ & (\alu|ShiftLeft0~56_combout\ & !\alu|ShiftLeft0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \alu|ShiftLeft0~51_combout\,
	datac => \alu|ShiftLeft0~56_combout\,
	datad => \alu|ShiftLeft0~48_combout\,
	combout => \alu|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X54_Y37_N30
\alu|Mux30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~11_combout\ = (\alu|Mux30~10_combout\ & (((\alu|ShiftLeft0~57_combout\)) # (!\actr|alu_ctr[3]~29_combout\))) # (!\alu|Mux30~10_combout\ & (\actr|alu_ctr[3]~29_combout\ & (\alu|a32~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~10_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \alu|a32~10_combout\,
	datad => \alu|ShiftLeft0~57_combout\,
	combout => \alu|Mux30~11_combout\);

-- Location: LCCOMB_X62_Y37_N18
\alu|ShiftRight0~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~123_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\alu|ShiftRight1~54_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\alu|ShiftRight1~54_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\alu|ShiftRight0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight0~45_combout\,
	datad => \alu|ShiftRight1~54_combout\,
	combout => \alu|ShiftRight0~123_combout\);

-- Location: LCCOMB_X56_Y37_N22
\alu|ShiftRight1~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~53_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\mux_ulaB|m_out[4]~14_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\mux_ulaB|m_out[4]~14_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\mux_ulaB|m_out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_ulaB|m_out[3]~4_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \mux_ulaB|m_out[4]~14_combout\,
	combout => \alu|ShiftRight1~53_combout\);

-- Location: LCCOMB_X56_Y37_N0
\alu|ShiftRight0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~72_combout\ = (\alu|ShiftRight0~70_combout\ & ((\alu|ShiftRight0~71_combout\) # ((\alu|ShiftRight1~53_combout\ & \mux_shift|m_out[1]~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~71_combout\,
	datab => \alu|ShiftRight1~53_combout\,
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \alu|ShiftRight0~70_combout\,
	combout => \alu|ShiftRight0~72_combout\);

-- Location: LCCOMB_X59_Y34_N30
\alu|ShiftRight0~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~73_combout\ = (\alu|ShiftRight0~72_combout\) # ((\alu|ShiftRight1~55_combout\ & \alu|ShiftRight0~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight1~55_combout\,
	datac => \alu|ShiftRight0~123_combout\,
	datad => \alu|ShiftRight0~72_combout\,
	combout => \alu|ShiftRight0~73_combout\);

-- Location: LCCOMB_X59_Y34_N8
\alu|Mux30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~8_combout\ = (\mux_shift|m_out[4]~79_combout\ & (((\alu|ShiftRight1~64_combout\)))) # (!\mux_shift|m_out[4]~79_combout\ & ((\alu|ShiftRight0~69_combout\) # ((\alu|ShiftRight0~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~69_combout\,
	datab => \alu|ShiftRight0~73_combout\,
	datac => \mux_shift|m_out[4]~79_combout\,
	datad => \alu|ShiftRight1~64_combout\,
	combout => \alu|Mux30~8_combout\);

-- Location: LCCOMB_X59_Y34_N18
\alu|Mux30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~7_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|Add1~2_combout\ & !\actr|alu_ctr[3]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Add1~2_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux30~7_combout\);

-- Location: LCCOMB_X59_Y34_N10
\alu|Mux30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~9_combout\ = (\alu|Mux30~7_combout\) # ((\alu|Mux30~16_combout\ & \alu|Mux30~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~16_combout\,
	datac => \alu|Mux30~8_combout\,
	datad => \alu|Mux30~7_combout\,
	combout => \alu|Mux30~9_combout\);

-- Location: LCCOMB_X56_Y34_N4
\alu|Mux30~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~12_combout\ = (\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[2]~26_combout\) # ((\alu|Mux30~9_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & (!\actr|alu_ctr[2]~26_combout\ & (\alu|Mux30~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \alu|Mux30~11_combout\,
	datad => \alu|Mux30~9_combout\,
	combout => \alu|Mux30~12_combout\);

-- Location: LCCOMB_X58_Y38_N18
\alu|Mux30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~4_combout\ = (\mux_shift|m_out[4]~79_combout\ & (!\alu|ShiftLeft0~53_combout\ & ((\alu|ShiftRight0~67_combout\) # (\mux_ulaB|m_out[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \alu|ShiftLeft0~53_combout\,
	datac => \alu|ShiftRight0~67_combout\,
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \alu|Mux30~4_combout\);

-- Location: LCCOMB_X57_Y37_N24
\alu|ShiftRight0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~68_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[8]~30_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[7]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \mux_ulaB|m_out[8]~30_combout\,
	datac => \mux_shift|m_out[0]~83_combout\,
	datad => \mux_ulaB|m_out[7]~8_combout\,
	combout => \alu|ShiftRight0~68_combout\);

-- Location: LCCOMB_X57_Y37_N10
\alu|ShiftRight1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~52_combout\ = (\mux_shift|m_out[0]~93_combout\ & (\mux_ulaB|m_out[6]~10_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & (\mux_ulaB|m_out[6]~10_combout\)) # (!\mux_shift|m_out[0]~82_combout\ & 
-- ((\mux_ulaB|m_out[5]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_ulaB|m_out[6]~10_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \mux_ulaB|m_out[5]~12_combout\,
	combout => \alu|ShiftRight1~52_combout\);

-- Location: LCCOMB_X57_Y37_N22
\alu|ShiftRight0~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~122_combout\ = (\alu|ShiftRight0~68_combout\) # ((!\mux_shift|m_out[1]~86_combout\ & (!\mux_shift|m_out[1]~94_combout\ & \alu|ShiftRight1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \alu|ShiftRight0~68_combout\,
	datad => \alu|ShiftRight1~52_combout\,
	combout => \alu|ShiftRight0~122_combout\);

-- Location: LCCOMB_X59_Y34_N16
\alu|ShiftRight0~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~69_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~121_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight0~122_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~121_combout\,
	combout => \alu|ShiftRight0~69_combout\);

-- Location: LCCOMB_X59_Y34_N24
\alu|ShiftRight0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~74_combout\ = (!\mux_shift|m_out[4]~79_combout\ & ((\alu|ShiftRight0~69_combout\) # (\alu|ShiftRight0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datac => \alu|ShiftRight0~69_combout\,
	datad => \alu|ShiftRight0~73_combout\,
	combout => \alu|ShiftRight0~74_combout\);

-- Location: LCCOMB_X58_Y38_N20
\alu|Mux30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~5_combout\ = (\alu|Mux30~4_combout\) # ((\alu|ShiftLeft0~53_combout\ & (\mux_ulaB|m_out[31]~36_combout\)) # (!\alu|ShiftLeft0~53_combout\ & ((\alu|ShiftRight0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux30~4_combout\,
	datac => \alu|ShiftLeft0~53_combout\,
	datad => \alu|ShiftRight0~74_combout\,
	combout => \alu|Mux30~5_combout\);

-- Location: LCCOMB_X57_Y34_N28
\alu|Mux30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~6_combout\ = (\alu|Mux30~15_combout\ & (\actr|alu_ctr[0]~32_combout\ $ ((!\actr|alu_ctr[3]~29_combout\)))) # (!\alu|Mux30~15_combout\ & (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & \alu|Mux30~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~15_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|Mux30~5_combout\,
	combout => \alu|Mux30~6_combout\);

-- Location: LCCOMB_X56_Y34_N6
\alu|Mux30~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux30~14_combout\ = (\actr|alu_ctr[2]~26_combout\ & ((\alu|Mux30~12_combout\ & (\alu|Mux30~13_combout\)) # (!\alu|Mux30~12_combout\ & ((\alu|Mux30~6_combout\))))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux30~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux30~13_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \alu|Mux30~12_combout\,
	datad => \alu|Mux30~6_combout\,
	combout => \alu|Mux30~14_combout\);

-- Location: LCCOMB_X56_Y34_N2
\alu|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~4_combout\ = (!\alu|Mux15~6_combout\ & (!\alu|Mux16~10_combout\ & (!\alu|Mux1~12_combout\ & !\alu|Mux30~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux15~6_combout\,
	datab => \alu|Mux16~10_combout\,
	datac => \alu|Mux1~12_combout\,
	datad => \alu|Mux30~14_combout\,
	combout => \alu|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y41_N26
\alu|ShiftLeft0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~65_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~62_combout\) # ((!\mux_shift|m_out[2]~89_combout\ & \alu|ShiftLeft0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~62_combout\,
	datad => \alu|ShiftLeft0~155_combout\,
	combout => \alu|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X56_Y41_N6
\alu|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~1_combout\ = (\alu|Mux8~20_combout\ & ((\alu|Mux8~9_combout\ & (\alu|Mux11~0_combout\)) # (!\alu|Mux8~9_combout\ & ((\alu|ShiftLeft0~65_combout\))))) # (!\alu|Mux8~20_combout\ & (((\alu|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux11~0_combout\,
	datab => \alu|Mux8~20_combout\,
	datac => \alu|Mux8~9_combout\,
	datad => \alu|ShiftLeft0~65_combout\,
	combout => \alu|Mux11~1_combout\);

-- Location: LCCOMB_X56_Y41_N28
\alu|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~2_combout\ = (\alu|Mux8~19_combout\ & (((\alu|Mux11~1_combout\)))) # (!\alu|Mux8~19_combout\ & ((\alu|Mux11~1_combout\ & (\alu|ShiftLeft0~87_combout\)) # (!\alu|Mux11~1_combout\ & ((\alu|ShiftLeft0~118_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~19_combout\,
	datab => \alu|ShiftLeft0~87_combout\,
	datac => \alu|ShiftLeft0~118_combout\,
	datad => \alu|Mux11~1_combout\,
	combout => \alu|Mux11~2_combout\);

-- Location: LCCOMB_X56_Y41_N30
\alu|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~3_combout\ = (\actr|alu_ctr[2]~26_combout\ & (!\alu|Mux11~0_combout\ & (\actr|alu_ctr[0]~32_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux11~0_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \alu|Mux11~2_combout\,
	combout => \alu|Mux11~3_combout\);

-- Location: LCCOMB_X59_Y39_N14
\alu|ShiftRight1~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~87_combout\ = (!\mux_ulaB|Equal2~2_combout\ & (\alu|ShiftRight1~55_combout\ & ((\alu|ShiftRight0~50_combout\) # (\alu|ShiftRight0~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftRight0~50_combout\,
	datac => \alu|ShiftRight0~49_combout\,
	datad => \alu|ShiftRight1~55_combout\,
	combout => \alu|ShiftRight1~87_combout\);

-- Location: LCCOMB_X57_Y38_N16
\alu|ShiftRight1~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~89_combout\ = (\alu|ShiftRight1~88_combout\) # ((\alu|ShiftRight1~87_combout\) # ((\alu|ShiftRight1~63_combout\ & \alu|ShiftRight0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~88_combout\,
	datab => \alu|ShiftRight1~63_combout\,
	datac => \alu|ShiftRight0~86_combout\,
	datad => \alu|ShiftRight1~87_combout\,
	combout => \alu|ShiftRight1~89_combout\);

-- Location: LCCOMB_X57_Y35_N22
\alu|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~5_combout\ = (\alu|Mux11~4_combout\ & (((\alu|Add1~40_combout\) # (!\alu|Mux8~6_combout\)))) # (!\alu|Mux11~4_combout\ & (\alu|ShiftRight1~89_combout\ & (\alu|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux11~4_combout\,
	datab => \alu|ShiftRight1~89_combout\,
	datac => \alu|Mux8~6_combout\,
	datad => \alu|Add1~40_combout\,
	combout => \alu|Mux11~5_combout\);

-- Location: LCCOMB_X57_Y35_N8
\alu|Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~6_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & (\alu|tmp[20]~40_combout\)) # (!\alu|Mux8~8_combout\ & ((\alu|Mux11~5_combout\))))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|tmp[20]~40_combout\,
	datad => \alu|Mux11~5_combout\,
	combout => \alu|Mux11~6_combout\);

-- Location: LCCOMB_X59_Y39_N20
\alu|ShiftRight0~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~85_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight0~49_combout\) # (\alu|ShiftRight0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~49_combout\,
	datad => \alu|ShiftRight0~50_combout\,
	combout => \alu|ShiftRight0~85_combout\);

-- Location: LCCOMB_X57_Y38_N14
\alu|ShiftRight0~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~87_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~85_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight0~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~86_combout\,
	datad => \alu|ShiftRight0~85_combout\,
	combout => \alu|ShiftRight0~87_combout\);

-- Location: LCCOMB_X57_Y38_N8
\alu|ShiftRight0~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~88_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftRight0~87_combout\,
	combout => \alu|ShiftRight0~88_combout\);

-- Location: LCCOMB_X57_Y35_N2
\alu|Mux11~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~7_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux11~6_combout\ & ((\alu|ShiftRight0~88_combout\))) # (!\alu|Mux11~6_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux11~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|Mux11~6_combout\,
	datad => \alu|ShiftRight0~88_combout\,
	combout => \alu|Mux11~7_combout\);

-- Location: LCCOMB_X57_Y35_N4
\alu|Mux11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux11~8_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux11~3_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux11~7_combout\)))) # (!\alu|Mux14~12_combout\ & (\alu|Mux14~10_combout\ & ((\alu|Mux11~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux14~10_combout\,
	datac => \alu|Mux11~3_combout\,
	datad => \alu|Mux11~7_combout\,
	combout => \alu|Mux11~8_combout\);

-- Location: LCCOMB_X57_Y35_N6
\alu|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~7_combout\ = (!\alu|Mux12~8_combout\ & (!\alu|Mux13~8_combout\ & (!\alu|Mux11~8_combout\ & !\alu|Mux14~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux12~8_combout\,
	datab => \alu|Mux13~8_combout\,
	datac => \alu|Mux11~8_combout\,
	datad => \alu|Mux14~11_combout\,
	combout => \alu|Equal0~7_combout\);

-- Location: LCCOMB_X58_Y38_N4
\alu|ShiftRight0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~101_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~100_combout\,
	combout => \alu|ShiftRight0~101_combout\);

-- Location: LCCOMB_X58_Y38_N10
\alu|ShiftRight0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~127_combout\ = (\alu|ShiftRight0~101_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ir|sr_out\(15),
	datac => \alu|ShiftRight0~101_combout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \alu|ShiftRight0~127_combout\);

-- Location: LCCOMB_X59_Y38_N0
\alu|ShiftLeft0~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~158_combout\ = (\mux_shift|m_out[1]~94_combout\) # ((\mux_shift|m_out[1]~86_combout\) # ((\mux_shift|m_out[2]~89_combout\) # (\mux_shift|m_out[0]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~158_combout\);

-- Location: LCCOMB_X59_Y38_N4
\alu|ShiftRight1~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~94_combout\ = (\mux_ulaB|m_out[31]~36_combout\ & (\mux_shift|m_out[3]~91_combout\ & !\alu|ShiftLeft0~158_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~158_combout\,
	combout => \alu|ShiftRight1~94_combout\);

-- Location: LCCOMB_X59_Y38_N14
\alu|ShiftRight1~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~95_combout\ = (\alu|ShiftRight1~94_combout\) # ((\alu|ShiftRight1~62_combout\) # ((\alu|ShiftRight1~63_combout\ & \alu|ShiftRight0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~63_combout\,
	datab => \alu|ShiftRight1~94_combout\,
	datac => \alu|ShiftRight1~62_combout\,
	datad => \alu|ShiftRight0~100_combout\,
	combout => \alu|ShiftRight1~95_combout\);

-- Location: LCCOMB_X56_Y35_N18
\alu|Mux8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~15_combout\ = (\alu|Mux8~14_combout\ & (((\alu|Add1~46_combout\)) # (!\alu|Mux8~6_combout\))) # (!\alu|Mux8~14_combout\ & (\alu|Mux8~6_combout\ & (\alu|ShiftRight1~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~14_combout\,
	datab => \alu|Mux8~6_combout\,
	datac => \alu|ShiftRight1~95_combout\,
	datad => \alu|Add1~46_combout\,
	combout => \alu|Mux8~15_combout\);

-- Location: LCCOMB_X56_Y35_N12
\alu|Mux8~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~16_combout\ = (\alu|Mux8~8_combout\ & (\alu|tmp[23]~46_combout\ & (\alu|Mux8~7_combout\))) # (!\alu|Mux8~8_combout\ & (((\alu|Mux8~15_combout\) # (!\alu|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[23]~46_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|Mux8~7_combout\,
	datad => \alu|Mux8~15_combout\,
	combout => \alu|Mux8~16_combout\);

-- Location: LCCOMB_X56_Y35_N2
\alu|Mux8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~17_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux8~16_combout\ & ((\alu|ShiftRight0~127_combout\))) # (!\alu|Mux8~16_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux8~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|ShiftRight0~127_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux8~16_combout\,
	combout => \alu|Mux8~17_combout\);

-- Location: LCCOMB_X65_Y35_N4
\bcoreg|regA[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[23]~8_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(34)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a23\,
	datab => \bcoreg|breg32~41_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(34),
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[23]~8_combout\);

-- Location: LCFF_X61_Y35_N15
\rgA|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[23]~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(23));

-- Location: LCCOMB_X61_Y35_N14
\mux_shift|m_out[23]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[23]~28_combout\ = (\rgA|sr_out\(23) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \rgA|sr_out\(23),
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[23]~28_combout\);

-- Location: LCCOMB_X60_Y35_N22
\mux_shift|m_out[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[23]~30_combout\ = (\mux_shift|m_out[23]~29_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[23]~29_combout\ & (\mux_shift|m_out[23]~28_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[23]~29_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[23]~28_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[23]~30_combout\);

-- Location: LCCOMB_X57_Y39_N4
\alu|Mux8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~10_combout\ = (\mux_ulaB|m_out[23]~44_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_shift|m_out[23]~30_combout\))) # (!\mux_ulaB|m_out[23]~44_combout\ & (\mux_shift|m_out[23]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[23]~44_combout\,
	datac => \mux_shift|m_out[23]~30_combout\,
	datad => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux8~10_combout\);

-- Location: LCCOMB_X57_Y40_N28
\alu|ShiftLeft0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~128_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(22))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \rgB|sr_out\(23),
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X57_Y40_N26
\alu|ShiftLeft0~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~127_combout\ = (\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\rgB|sr_out\(20))) # (!\mux_shift|m_out[0]~83_combout\ & ((\rgB|sr_out\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \rgB|sr_out\(20),
	datac => \rgB|sr_out\(21),
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X57_Y40_N6
\alu|ShiftLeft0~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~129_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftLeft0~128_combout\) # (\alu|ShiftLeft0~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \alu|ShiftLeft0~128_combout\,
	datac => \mux_ulaB|m_out[31]~31_combout\,
	datad => \alu|ShiftLeft0~127_combout\,
	combout => \alu|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X56_Y39_N18
\alu|ShiftLeft0~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~130_combout\ = (\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~113_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~113_combout\,
	datad => \alu|ShiftLeft0~129_combout\,
	combout => \alu|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X57_Y39_N30
\alu|Mux8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~11_combout\ = (\alu|Mux8~9_combout\ & ((\alu|Mux8~10_combout\) # ((!\alu|Mux8~20_combout\)))) # (!\alu|Mux8~9_combout\ & (((\alu|ShiftLeft0~72_combout\ & \alu|Mux8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~10_combout\,
	datab => \alu|ShiftLeft0~72_combout\,
	datac => \alu|Mux8~9_combout\,
	datad => \alu|Mux8~20_combout\,
	combout => \alu|Mux8~11_combout\);

-- Location: LCCOMB_X57_Y39_N12
\alu|Mux8~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~12_combout\ = (\alu|Mux8~19_combout\ & (((\alu|Mux8~11_combout\)))) # (!\alu|Mux8~19_combout\ & ((\alu|Mux8~11_combout\ & ((\alu|ShiftLeft0~98_combout\))) # (!\alu|Mux8~11_combout\ & (\alu|ShiftLeft0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~19_combout\,
	datab => \alu|ShiftLeft0~130_combout\,
	datac => \alu|ShiftLeft0~98_combout\,
	datad => \alu|Mux8~11_combout\,
	combout => \alu|Mux8~12_combout\);

-- Location: LCCOMB_X57_Y39_N26
\alu|Mux8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~13_combout\ = (\actr|alu_ctr[2]~26_combout\ & (\actr|alu_ctr[0]~32_combout\ & (!\alu|Mux8~10_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux8~10_combout\,
	datad => \alu|Mux8~12_combout\,
	combout => \alu|Mux8~13_combout\);

-- Location: LCCOMB_X60_Y35_N2
\alu|Mux8~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux8~18_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux8~13_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux8~17_combout\)))) # (!\alu|Mux14~12_combout\ & (\alu|Mux14~10_combout\ & (\alu|Mux8~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux14~10_combout\,
	datac => \alu|Mux8~17_combout\,
	datad => \alu|Mux8~13_combout\,
	combout => \alu|Mux8~18_combout\);

-- Location: LCCOMB_X59_Y40_N20
\alu|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~8_combout\ = (!\alu|Mux8~18_combout\ & ((\alu|Mux29~19_combout\ & ((!\alu|Mux21~7_combout\))) # (!\alu|Mux29~19_combout\ & (!\alu|Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~19_combout\,
	datab => \alu|Mux21~9_combout\,
	datac => \alu|Mux21~7_combout\,
	datad => \alu|Mux8~18_combout\,
	combout => \alu|Equal0~8_combout\);

-- Location: LCCOMB_X61_Y38_N30
\alu|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~9_combout\ = (!\alu|Mux6~combout\ & (!\alu|Mux5~combout\ & (\alu|Equal0~7_combout\ & \alu|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux6~combout\,
	datab => \alu|Mux5~combout\,
	datac => \alu|Equal0~7_combout\,
	datad => \alu|Equal0~8_combout\,
	combout => \alu|Equal0~9_combout\);

-- Location: LCCOMB_X61_Y38_N28
\alu|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~10_combout\ = (\alu|Equal0~6_combout\ & (\alu|Equal0~3_combout\ & (\alu|Equal0~4_combout\ & \alu|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Equal0~6_combout\,
	datab => \alu|Equal0~3_combout\,
	datac => \alu|Equal0~4_combout\,
	datad => \alu|Equal0~9_combout\,
	combout => \alu|Equal0~10_combout\);

-- Location: LCCOMB_X61_Y38_N26
\alu|Equal0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Equal0~12_combout\ = (!\alu|Mux17~10_combout\ & (\alu|Equal0~11_combout\ & (\alu|Equal0~2_combout\ & \alu|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux17~10_combout\,
	datab => \alu|Equal0~11_combout\,
	datac => \alu|Equal0~2_combout\,
	datad => \alu|Equal0~10_combout\,
	combout => \alu|Equal0~12_combout\);

-- Location: LCCOMB_X61_Y38_N0
\pc_wr_s~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc_wr_s~1_combout\ = (\pc_wr_s~0_combout\ & ((\ctr_mips|Equal0~0_combout\ $ (!\alu|Equal0~12_combout\)) # (!\ctr_mips|pstate.branch_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \pc_wr_s~0_combout\,
	datac => \ctr_mips|Equal0~0_combout\,
	datad => \alu|Equal0~12_combout\,
	combout => \pc_wr_s~1_combout\);

-- Location: LCCOMB_X61_Y38_N6
\pc|sr_out[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[0]~26_combout\ = (\rst~combout\) # (!\pc_wr_s~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \pc_wr_s~1_combout\,
	combout => \pc|sr_out[0]~26_combout\);

-- Location: LCFF_X61_Y41_N21
\pc|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[26]~5_combout\,
	sdata => \ir|sr_out\(24),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(26));

-- Location: LCCOMB_X61_Y34_N14
\mux_shift|m_out[26]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[26]~20_combout\ = (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & \pc|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \pc|sr_out\(26),
	combout => \mux_shift|m_out[26]~20_combout\);

-- Location: LCCOMB_X61_Y34_N8
\mux_shift|m_out[26]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[26]~21_combout\ = (\mux_shift|m_out[26]~19_combout\ & (((!\actr|alu_ctr~24_combout\)) # (!\actr|alu_ctr~25_combout\))) # (!\mux_shift|m_out[26]~19_combout\ & (\mux_shift|m_out[26]~20_combout\ & ((!\actr|alu_ctr~24_combout\) # 
-- (!\actr|alu_ctr~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[26]~19_combout\,
	datab => \actr|alu_ctr~25_combout\,
	datac => \mux_shift|m_out[26]~20_combout\,
	datad => \actr|alu_ctr~24_combout\,
	combout => \mux_shift|m_out[26]~21_combout\);

-- Location: LCCOMB_X61_Y41_N26
\alu|a32~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~26_combout\ = \mux_shift|m_out[26]~21_combout\ $ (((\mux_ulaB|m_out[31]~31_combout\) # ((\rgB|sr_out\(26) & !\mux_ulaB|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(26),
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \mux_shift|m_out[26]~21_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \alu|a32~26_combout\);

-- Location: LCCOMB_X58_Y40_N18
\alu|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~0_combout\ = (\alu|Mux4~2_combout\ & (((\alu|ShiftLeft0~125_combout\)))) # (!\alu|Mux4~2_combout\ & (\alu|ShiftLeft0~173_combout\ & (!\mux_ulaB|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~173_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|Mux4~2_combout\,
	datad => \alu|ShiftLeft0~125_combout\,
	combout => \alu|Mux5~0_combout\);

-- Location: LCCOMB_X58_Y40_N0
\alu|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~1_combout\ = (\alu|ShiftLeft0~131_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|Mux5~0_combout\)))) # (!\alu|ShiftLeft0~131_combout\ & (((\alu|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~131_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|Mux4~2_combout\,
	datad => \alu|Mux5~0_combout\,
	combout => \alu|Mux5~1_combout\);

-- Location: LCCOMB_X58_Y40_N12
\alu|ShiftLeft0~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~81_combout\ = (\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight1~55_combout\ & (\alu|ShiftLeft0~59_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~80_combout\) # ((\alu|ShiftRight1~55_combout\ & 
-- \alu|ShiftLeft0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftRight1~55_combout\,
	datac => \alu|ShiftLeft0~59_combout\,
	datad => \alu|ShiftLeft0~80_combout\,
	combout => \alu|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X58_Y40_N30
\alu|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~2_combout\ = (\alu|ShiftLeft0~131_combout\ & (\alu|Mux5~1_combout\)) # (!\alu|ShiftLeft0~131_combout\ & ((\alu|Mux5~1_combout\ & ((\alu|ShiftLeft0~81_combout\))) # (!\alu|Mux5~1_combout\ & (\alu|ShiftLeft0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~131_combout\,
	datab => \alu|Mux5~1_combout\,
	datac => \alu|ShiftLeft0~110_combout\,
	datad => \alu|ShiftLeft0~81_combout\,
	combout => \alu|Mux5~2_combout\);

-- Location: LCCOMB_X61_Y41_N8
\alu|Mux5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~8_combout\ = ((\mux_shift|m_out[26]~21_combout\) # ((\mux_ulaB|m_out[26]~41_combout\) # (\actr|alu_ctr[1]~31_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[26]~21_combout\,
	datac => \mux_ulaB|m_out[26]~41_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux5~8_combout\);

-- Location: LCCOMB_X61_Y41_N2
\alu|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~3_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[26]~21_combout\ & \mux_ulaB|m_out[26]~41_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[26]~21_combout\) # (\mux_ulaB|m_out[26]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[26]~21_combout\,
	datac => \mux_ulaB|m_out[26]~41_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux5~3_combout\);

-- Location: LCCOMB_X61_Y41_N0
\alu|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~4_combout\ = (\alu|Mux8~6_combout\ & ((\alu|Mux5~3_combout\ & ((\alu|Add1~52_combout\))) # (!\alu|Mux5~3_combout\ & (\alu|ShiftRight1~97_combout\)))) # (!\alu|Mux8~6_combout\ & (\alu|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~6_combout\,
	datab => \alu|Mux5~3_combout\,
	datac => \alu|ShiftRight1~97_combout\,
	datad => \alu|Add1~52_combout\,
	combout => \alu|Mux5~4_combout\);

-- Location: LCCOMB_X61_Y41_N18
\alu|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~5_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & (\alu|tmp[26]~52_combout\)) # (!\alu|Mux8~8_combout\ & ((\alu|Mux5~4_combout\))))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|tmp[26]~52_combout\,
	datad => \alu|Mux5~4_combout\,
	combout => \alu|Mux5~5_combout\);

-- Location: LCCOMB_X61_Y41_N12
\alu|Mux5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~6_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux5~5_combout\ & ((\alu|ShiftRight0~130_combout\))) # (!\alu|Mux5~5_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|ShiftRight0~130_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux5~5_combout\,
	combout => \alu|Mux5~6_combout\);

-- Location: LCCOMB_X61_Y41_N22
\alu|Mux5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~7_combout\ = (\alu|Mux5~6_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux5~6_combout\,
	combout => \alu|Mux5~7_combout\);

-- Location: LCCOMB_X61_Y41_N30
\alu|Mux5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~9_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux5~8_combout\)) # (!\alu|Mux29~2_combout\))) # (!\alu|Mux29~14_combout\ & (\alu|Mux29~2_combout\ & ((\alu|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux5~8_combout\,
	datad => \alu|Mux5~7_combout\,
	combout => \alu|Mux5~9_combout\);

-- Location: LCCOMB_X61_Y41_N28
\alu|Mux5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux5~combout\ = (\alu|Mux4~12_combout\ & ((\alu|Mux5~9_combout\ & (\alu|a32~26_combout\)) # (!\alu|Mux5~9_combout\ & ((\alu|Mux5~2_combout\))))) # (!\alu|Mux4~12_combout\ & (((\alu|Mux5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux4~12_combout\,
	datab => \alu|a32~26_combout\,
	datac => \alu|Mux5~2_combout\,
	datad => \alu|Mux5~9_combout\,
	combout => \alu|Mux5~combout\);

-- Location: LCFF_X61_Y41_N29
\regULA|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(26));

-- Location: LCFF_X65_Y40_N1
\rdm|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(26),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(26));

-- Location: LCCOMB_X65_Y40_N18
\breg_data_mux|m_out[26]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[26]~5_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(26)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(26),
	datad => \rdm|sr_out\(26),
	combout => \breg_data_mux|m_out[26]~5_combout\);

-- Location: LCCOMB_X62_Y40_N22
\bcoreg|breg32_rtl_1_bypass[37]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[37]~feeder_combout\ = \breg_data_mux|m_out[26]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[26]~5_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[37]~feeder_combout\);

-- Location: LCFF_X62_Y40_N23
\bcoreg|breg32_rtl_1_bypass[37]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[37]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(37));

-- Location: LCCOMB_X62_Y40_N12
\bcoreg|regB[26]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[26]~18_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(37)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a26\,
	datab => \bcoreg|breg32_rtl_1_bypass\(37),
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[26]~18_combout\);

-- Location: LCFF_X59_Y39_N31
\rgB|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[26]~18_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(26));

-- Location: LCCOMB_X65_Y34_N0
\bcoreg|regA[16]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[16]~0_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(27))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(27),
	datac => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a16\,
	datad => \bcoreg|breg32~41_combout\,
	combout => \bcoreg|regA[16]~0_combout\);

-- Location: LCFF_X62_Y35_N1
\rgA|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[16]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(16));

-- Location: LCCOMB_X62_Y35_N0
\mux_shift|m_out[16]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[16]~4_combout\ = (\rgA|sr_out\(16) & ((\ctr_mips|pstate.c_mem_add_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.branch_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(16),
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \mux_shift|m_out[16]~4_combout\);

-- Location: LCCOMB_X62_Y35_N10
\mux_shift|m_out[16]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[16]~6_combout\ = (\mux_shift|m_out[16]~5_combout\ & (((!\actr|alu_ctr~25_combout\) # (!\actr|alu_ctr~24_combout\)))) # (!\mux_shift|m_out[16]~5_combout\ & (\mux_shift|m_out[16]~4_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[16]~5_combout\,
	datab => \mux_shift|m_out[16]~4_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[16]~6_combout\);

-- Location: LCCOMB_X57_Y34_N12
\alu|Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~5_combout\ = (\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & \alu|tmp[16]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|tmp[16]~32_combout\,
	combout => \alu|Mux15~5_combout\);

-- Location: LCCOMB_X54_Y38_N18
\alu|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~0_combout\ = (\alu|Mux1~2_combout\ & ((\alu|ShiftRight0~52_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~52_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|Mux1~2_combout\,
	datad => \alu|ShiftRight0~60_combout\,
	combout => \alu|Mux15~0_combout\);

-- Location: LCCOMB_X56_Y34_N30
\alu|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~3_combout\ = (\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[3]~29_combout\ & (\alu|Add1~32_combout\))) # (!\actr|alu_ctr[0]~32_combout\ & (((\alu|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \alu|Add1~32_combout\,
	datad => \alu|Mux15~0_combout\,
	combout => \alu|Mux15~3_combout\);

-- Location: LCCOMB_X54_Y37_N20
\alu|ShiftLeft0~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~100_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~166_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~171_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~171_combout\,
	datad => \alu|ShiftLeft0~166_combout\,
	combout => \alu|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X54_Y37_N18
\alu|ShiftLeft0~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~101_combout\ = (\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight1~55_combout\ & ((\alu|ShiftLeft0~162_combout\)))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~100_combout\) # ((\alu|ShiftRight1~55_combout\ & 
-- \alu|ShiftLeft0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftRight1~55_combout\,
	datac => \alu|ShiftLeft0~100_combout\,
	datad => \alu|ShiftLeft0~162_combout\,
	combout => \alu|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X56_Y41_N14
\alu|ShiftLeft0~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~102_combout\ = (\mux_shift|m_out[3]~91_combout\ & (((\mux_shift|m_out[2]~89_combout\)))) # (!\mux_shift|m_out[3]~91_combout\ & (!\alu|ShiftLeft0~158_combout\ & (\mux_ulaB|m_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~158_combout\,
	datab => \mux_ulaB|m_out[0]~1_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \mux_shift|m_out[3]~91_combout\,
	combout => \alu|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X56_Y41_N8
\alu|ShiftLeft0~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~103_combout\ = (\alu|ShiftLeft0~102_combout\ & ((\mux_shift|m_out[4]~79_combout\ & (!\mux_shift|m_out[3]~91_combout\)) # (!\mux_shift|m_out[4]~79_combout\ & (\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[4]~79_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftLeft0~102_combout\,
	datad => \alu|ShiftLeft0~155_combout\,
	combout => \alu|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X56_Y34_N28
\alu|ShiftLeft0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~104_combout\ = (!\alu|ShiftLeft0~53_combout\ & ((\alu|ShiftLeft0~103_combout\) # ((!\mux_shift|m_out[4]~79_combout\ & \alu|ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~53_combout\,
	datab => \mux_shift|m_out[4]~79_combout\,
	datac => \alu|ShiftLeft0~101_combout\,
	datad => \alu|ShiftLeft0~103_combout\,
	combout => \alu|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X56_Y34_N0
\alu|Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~7_combout\ = (\actr|alu_ctr[3]~29_combout\ & ((\actr|alu_ctr[0]~32_combout\ & ((\alu|ShiftLeft0~104_combout\))) # (!\actr|alu_ctr[0]~32_combout\ & (\mux_shift|m_out[16]~6_combout\)))) # (!\actr|alu_ctr[3]~29_combout\ & 
-- (\mux_shift|m_out[16]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[16]~6_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|ShiftLeft0~104_combout\,
	combout => \alu|Mux15~7_combout\);

-- Location: LCCOMB_X56_Y34_N26
\alu|Mux15~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~8_combout\ = (\actr|alu_ctr[0]~32_combout\ & (\alu|Mux15~7_combout\ & ((\actr|alu_ctr[3]~29_combout\) # (\mux_ulaB|m_out[16]~35_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & ((\mux_ulaB|m_out[16]~35_combout\ & ((!\alu|Mux15~7_combout\) # 
-- (!\actr|alu_ctr[3]~29_combout\))) # (!\mux_ulaB|m_out[16]~35_combout\ & ((\alu|Mux15~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \alu|Mux15~7_combout\,
	combout => \alu|Mux15~8_combout\);

-- Location: LCCOMB_X56_Y34_N22
\alu|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~4_combout\ = (\actr|alu_ctr[1]~31_combout\ & ((\alu|Mux15~3_combout\) # ((\actr|alu_ctr[2]~26_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & (((!\actr|alu_ctr[2]~26_combout\ & \alu|Mux15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \alu|Mux15~3_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \alu|Mux15~8_combout\,
	combout => \alu|Mux15~4_combout\);

-- Location: LCCOMB_X56_Y34_N16
\alu|Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux15~6_combout\ = (\actr|alu_ctr[2]~26_combout\ & ((\alu|Mux15~4_combout\ & ((\alu|Mux15~5_combout\))) # (!\alu|Mux15~4_combout\ & (\alu|Mux15~2_combout\)))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux15~2_combout\,
	datab => \actr|alu_ctr[2]~26_combout\,
	datac => \alu|Mux15~5_combout\,
	datad => \alu|Mux15~4_combout\,
	combout => \alu|Mux15~6_combout\);

-- Location: LCFF_X56_Y34_N17
\regULA|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(16));

-- Location: LCCOMB_X63_Y34_N16
\breg_data_mux|m_out[16]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[16]~0_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(16))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \rdm|sr_out\(16),
	datad => \regULA|sr_out\(16),
	combout => \breg_data_mux|m_out[16]~0_combout\);

-- Location: LCCOMB_X63_Y34_N12
\bcoreg|breg32_rtl_1_bypass[27]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\ = \breg_data_mux|m_out[16]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \breg_data_mux|m_out[16]~0_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\);

-- Location: LCFF_X63_Y34_N13
\bcoreg|breg32_rtl_1_bypass[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(27));

-- Location: LCCOMB_X63_Y34_N30
\bcoreg|regB[16]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[16]~29_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(27)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a16\,
	datab => \bcoreg|breg32~45_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(27),
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[16]~29_combout\);

-- Location: LCFF_X63_Y37_N23
\rgB|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[16]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(16));

-- Location: LCCOMB_X63_Y37_N28
\mux_ulaB|m_out[16]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[16]~33_combout\ = (!\ctr_mips|pstate.logic_imm_st~regout\ & (\ir|sr_out\(15) & (!\mux_ulaB|m_out[2]~3_combout\ & !\mux_ulaB|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.logic_imm_st~regout\,
	datab => \ir|sr_out\(15),
	datac => \mux_ulaB|m_out[2]~3_combout\,
	datad => \mux_ulaB|Equal2~1_combout\,
	combout => \mux_ulaB|m_out[16]~33_combout\);

-- Location: LCCOMB_X63_Y37_N22
\mux_ulaB|m_out[16]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[16]~35_combout\ = (\mux_ulaB|m_out[16]~34_combout\) # ((\mux_ulaB|m_out[16]~33_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[16]~34_combout\,
	datac => \rgB|sr_out\(16),
	datad => \mux_ulaB|m_out[16]~33_combout\,
	combout => \mux_ulaB|m_out[16]~35_combout\);

-- Location: LCCOMB_X56_Y39_N14
\alu|ShiftRight1~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~102_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[16]~35_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & (\mux_ulaB|m_out[16]~35_combout\)) # (!\mux_shift|m_out[1]~86_combout\ & 
-- ((\mux_ulaB|m_out[14]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~94_combout\,
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \mux_ulaB|m_out[14]~20_combout\,
	combout => \alu|ShiftRight1~102_combout\);

-- Location: LCCOMB_X56_Y39_N20
\alu|ShiftRight0~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~121_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftRight1~102_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & (\alu|ShiftRight1~102_combout\)) # (!\mux_shift|m_out[0]~93_combout\ & 
-- ((\alu|ShiftRight0~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight1~102_combout\,
	datad => \alu|ShiftRight0~43_combout\,
	combout => \alu|ShiftRight0~121_combout\);

-- Location: LCCOMB_X61_Y39_N20
\alu|ShiftRight0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~62_combout\ = (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(19))) # (!\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(19),
	datac => \mux_shift|m_out[1]~87_combout\,
	datad => \rgB|sr_out\(17),
	combout => \alu|ShiftRight0~62_combout\);

-- Location: LCCOMB_X61_Y39_N14
\alu|ShiftRight0~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~93_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftRight0~62_combout\) # ((\mux_shift|m_out[0]~83_combout\ & \alu|ShiftRight0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftRight0~62_combout\,
	datad => \alu|ShiftRight0~63_combout\,
	combout => \alu|ShiftRight0~93_combout\);

-- Location: LCCOMB_X56_Y39_N0
\alu|ShiftRight0~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~94_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|ShiftRight0~93_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight0~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight0~121_combout\,
	datad => \alu|ShiftRight0~93_combout\,
	combout => \alu|ShiftRight0~94_combout\);

-- Location: LCCOMB_X57_Y36_N4
\alu|Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~1_combout\ = (!\alu|Mux29~19_combout\ & ((\alu|Mux18~0_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux18~0_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~94_combout\,
	datad => \alu|Mux29~19_combout\,
	combout => \alu|Mux18~1_combout\);

-- Location: LCCOMB_X57_Y36_N14
\alu|Mux18~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~7_combout\ = ((\mux_ulaB|m_out[13]~18_combout\) # ((\mux_shift|m_out[13]~57_combout\) # (\actr|alu_ctr[1]~31_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_ulaB|m_out[13]~18_combout\,
	datac => \mux_shift|m_out[13]~57_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux18~7_combout\);

-- Location: LCCOMB_X56_Y37_N16
\alu|Mux18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~2_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_ulaB|m_out[13]~18_combout\ & ((\mux_shift|m_out[13]~57_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_ulaB|m_out[13]~18_combout\ & (\mux_shift|m_out[13]~57_combout\ & !\actr|alu_ctr[0]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[13]~18_combout\,
	datab => \mux_shift|m_out[13]~57_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux18~2_combout\);

-- Location: LCCOMB_X56_Y37_N14
\alu|Mux18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~3_combout\ = (\alu|Mux29~7_combout\ & ((\alu|Mux18~2_combout\ & (\alu|Add1~26_combout\)) # (!\alu|Mux18~2_combout\ & ((\alu|ShiftRight1~100_combout\))))) # (!\alu|Mux29~7_combout\ & (((\alu|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~26_combout\,
	datab => \alu|Mux29~7_combout\,
	datac => \alu|ShiftRight1~100_combout\,
	datad => \alu|Mux18~2_combout\,
	combout => \alu|Mux18~3_combout\);

-- Location: LCCOMB_X57_Y36_N24
\alu|Mux18~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~4_combout\ = (\alu|Mux29~6_combout\ & (\alu|tmp[13]~26_combout\ & (\alu|Mux29~5_combout\))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux18~3_combout\) # (!\alu|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[13]~26_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux18~3_combout\,
	combout => \alu|Mux18~4_combout\);

-- Location: LCCOMB_X57_Y36_N26
\alu|Mux18~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~5_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux18~4_combout\ & (\alu|ShiftRight0~111_combout\)) # (!\alu|Mux18~4_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~111_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|Mux18~4_combout\,
	datad => \mux_ulaB|m_out[31]~36_combout\,
	combout => \alu|Mux18~5_combout\);

-- Location: LCCOMB_X57_Y36_N12
\alu|Mux18~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~6_combout\ = (\alu|Mux18~5_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux18~5_combout\,
	combout => \alu|Mux18~6_combout\);

-- Location: LCCOMB_X57_Y36_N0
\alu|Mux18~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~8_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux18~7_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datab => \alu|Mux18~7_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux18~6_combout\,
	combout => \alu|Mux18~8_combout\);

-- Location: LCCOMB_X57_Y36_N6
\alu|Mux18~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~9_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux18~8_combout\ & (\alu|a32~22_combout\)) # (!\alu|Mux18~8_combout\ & ((\alu|ShiftLeft0~91_combout\))))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~22_combout\,
	datab => \alu|ShiftLeft0~91_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux18~8_combout\,
	combout => \alu|Mux18~9_combout\);

-- Location: LCCOMB_X57_Y36_N8
\alu|Mux18~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux18~10_combout\ = (\alu|Mux18~1_combout\) # ((\alu|Mux29~19_combout\ & \alu|Mux18~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux18~1_combout\,
	datad => \alu|Mux18~9_combout\,
	combout => \alu|Mux18~10_combout\);

-- Location: LCFF_X57_Y36_N9
\regULA|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux18~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(13));

-- Location: LCFF_X63_Y39_N13
\rdm|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(13));

-- Location: LCCOMB_X63_Y39_N6
\breg_data_mux|m_out[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[13]~17_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(13)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datab => \regULA|sr_out\(13),
	datad => \rdm|sr_out\(13),
	combout => \breg_data_mux|m_out[13]~17_combout\);

-- Location: LCCOMB_X63_Y39_N10
\bcoreg|breg32_rtl_1_bypass[24]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[24]~feeder_combout\ = \breg_data_mux|m_out[13]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[13]~17_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[24]~feeder_combout\);

-- Location: LCFF_X63_Y39_N11
\bcoreg|breg32_rtl_1_bypass[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[24]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(24));

-- Location: LCCOMB_X63_Y39_N24
\bcoreg|regB[13]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[13]~9_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(24))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(24),
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a13\,
	combout => \bcoreg|regB[13]~9_combout\);

-- Location: LCFF_X63_Y39_N25
\rgB|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[13]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(13));

-- Location: LCCOMB_X65_Y37_N18
\rdm|sr_out[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[6]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(6),
	combout => \rdm|sr_out[6]~feeder_combout\);

-- Location: LCFF_X65_Y37_N19
\rdm|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(6));

-- Location: LCCOMB_X65_Y36_N24
\breg_data_mux|m_out[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[6]~24_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(6)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(6),
	datac => \rdm|sr_out\(6),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[6]~24_combout\);

-- Location: LCCOMB_X61_Y34_N22
\bcoreg|regB[25]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[25]~17_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(36))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(36),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a25\,
	combout => \bcoreg|regB[25]~17_combout\);

-- Location: LCFF_X61_Y34_N23
\rgB|sr_out[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[25]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(25));

-- Location: LCCOMB_X65_Y35_N8
\bcoreg|regA[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[1]~28_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(12)))) # (!\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal0~1_combout\,
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a1\,
	datac => \bcoreg|breg32_rtl_1_bypass\(12),
	datad => \bcoreg|breg32~41_combout\,
	combout => \bcoreg|regA[1]~28_combout\);

-- Location: LCFF_X61_Y37_N1
\rgA|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[1]~28_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(1));

-- Location: LCCOMB_X61_Y37_N0
\mux_shift|m_out[1]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[1]~84_combout\ = (\rgA|sr_out\(1) & ((\ctr_mips|pstate.branch_ex_st~regout\) # ((\ctr_mips|pstate.rtype_ex_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \rgA|sr_out\(1),
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[1]~84_combout\);

-- Location: LCCOMB_X60_Y37_N2
\mux_shift|m_out[1]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[1]~85_combout\ = (\pc|sr_out\(1) & (!\ctr_mips|pstate.rtype_ex_st~regout\ & (!\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(1),
	datab => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \mux_shift|m_out[1]~85_combout\);

-- Location: LCCOMB_X60_Y37_N4
\mux_shift|m_out[1]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[1]~86_combout\ = (\actr|alu_ctr~25_combout\ & (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[1]~84_combout\) # (\mux_shift|m_out[1]~85_combout\)))) # (!\actr|alu_ctr~25_combout\ & (((\mux_shift|m_out[1]~84_combout\) # 
-- (\mux_shift|m_out[1]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[1]~84_combout\,
	datad => \mux_shift|m_out[1]~85_combout\,
	combout => \mux_shift|m_out[1]~86_combout\);

-- Location: LCCOMB_X60_Y37_N22
\mux_shift|m_out[1]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[1]~87_combout\ = (\mux_shift|m_out[1]~86_combout\) # (\mux_shift|m_out[1]~94_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[1]~86_combout\,
	datac => \mux_shift|m_out[1]~94_combout\,
	combout => \mux_shift|m_out[1]~87_combout\);

-- Location: LCCOMB_X58_Y38_N30
\alu|ShiftRight0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~54_combout\ = (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(22))) # (!\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(22),
	datab => \mux_shift|m_out[1]~87_combout\,
	datac => \rgB|sr_out\(20),
	datad => \mux_shift|m_out[0]~83_combout\,
	combout => \alu|ShiftRight0~54_combout\);

-- Location: LCCOMB_X57_Y38_N20
\alu|ShiftRight0~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~86_combout\ = (\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight0~117_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~53_combout\) # ((\alu|ShiftRight0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~53_combout\,
	datab => \alu|ShiftRight0~54_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight0~117_combout\,
	combout => \alu|ShiftRight0~86_combout\);

-- Location: LCCOMB_X57_Y38_N24
\alu|Mux19~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~9_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((\alu|ShiftRight0~86_combout\ & !\mux_ulaB|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftRight0~86_combout\,
	datad => \mux_ulaB|Equal2~2_combout\,
	combout => \alu|Mux19~9_combout\);

-- Location: LCCOMB_X56_Y36_N14
\alu|a32~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~21_combout\ = \mux_shift|m_out[12]~60_combout\ $ (\mux_ulaB|m_out[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[12]~60_combout\,
	datad => \mux_ulaB|m_out[12]~22_combout\,
	combout => \alu|a32~21_combout\);

-- Location: LCCOMB_X57_Y36_N16
\alu|Mux19~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~5_combout\ = (\mux_ulaB|m_out[12]~22_combout\) # ((\mux_shift|m_out[12]~60_combout\) # ((\actr|alu_ctr[1]~31_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[12]~22_combout\,
	datab => \mux_shift|m_out[12]~60_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux19~5_combout\);

-- Location: LCCOMB_X58_Y42_N10
\alu|ShiftRight1~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~99_combout\ = (\alu|ShiftRight0~70_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftRight0~70_combout\,
	datad => \alu|ShiftRight0~108_combout\,
	combout => \alu|ShiftRight1~99_combout\);

-- Location: LCCOMB_X59_Y42_N28
\alu|Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~1_combout\ = (\alu|Mux19~0_combout\ & (((\alu|Add1~24_combout\)) # (!\alu|Mux29~7_combout\))) # (!\alu|Mux19~0_combout\ & (\alu|Mux29~7_combout\ & (\alu|ShiftRight1~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux19~0_combout\,
	datab => \alu|Mux29~7_combout\,
	datac => \alu|ShiftRight1~99_combout\,
	datad => \alu|Add1~24_combout\,
	combout => \alu|Mux19~1_combout\);

-- Location: LCCOMB_X59_Y42_N26
\alu|Mux19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~2_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[12]~24_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux19~1_combout\))))) # (!\alu|Mux29~5_combout\ & (!\alu|Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|tmp[12]~24_combout\,
	datad => \alu|Mux19~1_combout\,
	combout => \alu|Mux19~2_combout\);

-- Location: LCCOMB_X59_Y42_N4
\alu|Mux19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux19~2_combout\ & ((\alu|ShiftRight0~132_combout\))) # (!\alu|Mux19~2_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|ShiftRight0~132_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux19~2_combout\,
	combout => \alu|Mux19~3_combout\);

-- Location: LCCOMB_X57_Y36_N2
\alu|Mux19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~4_combout\ = (\alu|Mux19~3_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux19~3_combout\,
	combout => \alu|Mux19~4_combout\);

-- Location: LCCOMB_X57_Y36_N22
\alu|Mux19~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~6_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux19~5_combout\)) # (!\alu|Mux29~2_combout\))) # (!\alu|Mux29~14_combout\ & (\alu|Mux29~2_combout\ & ((\alu|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datab => \alu|Mux29~2_combout\,
	datac => \alu|Mux19~5_combout\,
	datad => \alu|Mux19~4_combout\,
	combout => \alu|Mux19~6_combout\);

-- Location: LCCOMB_X57_Y36_N28
\alu|Mux19~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~7_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux19~6_combout\ & (\alu|a32~21_combout\)) # (!\alu|Mux19~6_combout\ & ((\alu|ShiftLeft0~88_combout\))))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux19~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~3_combout\,
	datab => \alu|a32~21_combout\,
	datac => \alu|ShiftLeft0~88_combout\,
	datad => \alu|Mux19~6_combout\,
	combout => \alu|Mux19~7_combout\);

-- Location: LCCOMB_X57_Y36_N30
\alu|Mux19~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux19~10_combout\ = (\alu|Mux29~19_combout\ & (((\alu|Mux19~7_combout\)))) # (!\alu|Mux29~19_combout\ & ((\alu|Mux19~8_combout\) # ((\alu|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux19~8_combout\,
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux19~9_combout\,
	datad => \alu|Mux19~7_combout\,
	combout => \alu|Mux19~10_combout\);

-- Location: LCFF_X57_Y36_N31
\regULA|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux19~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(12));

-- Location: LCFF_X63_Y37_N15
\rdm|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(12));

-- Location: LCCOMB_X63_Y37_N14
\breg_data_mux|m_out[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[12]~18_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(12)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \regULA|sr_out\(12),
	datac => \rdm|sr_out\(12),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[12]~18_combout\);

-- Location: LCCOMB_X63_Y36_N20
\bcoreg|breg32_rtl_1_bypass[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\ = \breg_data_mux|m_out[12]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[12]~18_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\);

-- Location: LCFF_X63_Y36_N21
\bcoreg|breg32_rtl_1_bypass[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(23));

-- Location: LCCOMB_X63_Y36_N8
\bcoreg|regB[12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[12]~11_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(23))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(23),
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a12\,
	combout => \bcoreg|regB[12]~11_combout\);

-- Location: LCFF_X63_Y36_N9
\rgB|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(12));

-- Location: LCFF_X63_Y36_N17
\ir|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(10));

-- Location: LCCOMB_X58_Y37_N30
\alu|a32~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~13_combout\ = \mux_ulaB|m_out[4]~14_combout\ $ (((\actr|alu_ctr~30_combout\ & (\ir|sr_out\(10))) # (!\actr|alu_ctr~30_combout\ & ((\mux_shift|m_out[4]~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~30_combout\,
	datab => \ir|sr_out\(10),
	datac => \mux_ulaB|m_out[4]~14_combout\,
	datad => \mux_shift|m_out[4]~78_combout\,
	combout => \alu|a32~13_combout\);

-- Location: LCCOMB_X57_Y37_N20
\alu|ShiftRight0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~42_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\mux_ulaB|m_out[7]~8_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\mux_ulaB|m_out[7]~8_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\mux_ulaB|m_out[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_ulaB|m_out[6]~10_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \mux_ulaB|m_out[7]~8_combout\,
	combout => \alu|ShiftRight0~42_combout\);

-- Location: LCCOMB_X57_Y37_N0
\alu|ShiftRight0~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~114_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\alu|ShiftRight0~42_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\alu|ShiftRight0~42_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\alu|ShiftRight1~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \alu|ShiftRight0~42_combout\,
	datad => \alu|ShiftRight1~45_combout\,
	combout => \alu|ShiftRight0~114_combout\);

-- Location: LCCOMB_X61_Y40_N0
\alu|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~0_combout\ = (!\actr|alu_ctr[0]~32_combout\ & (\actr|alu_ctr[1]~31_combout\ $ (\actr|alu_ctr[2]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux27~0_combout\);

-- Location: LCCOMB_X60_Y38_N26
\alu|Mux27~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~6_combout\ = (\alu|Mux27~0_combout\ & (\alu|ShiftLeft0~52_combout\ & ((\mux_shift|m_out[2]~89_combout\) # (\mux_shift|m_out[3]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|Mux27~0_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux27~6_combout\);

-- Location: LCCOMB_X53_Y39_N4
\alu|ShiftRight0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~57_combout\ = (\rgB|sr_out\(19) & (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \rgB|sr_out\(19),
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \mux_shift|m_out[0]~82_combout\,
	combout => \alu|ShiftRight0~57_combout\);

-- Location: LCCOMB_X53_Y39_N22
\alu|ShiftRight0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~56_combout\ = (!\mux_shift|m_out[1]~87_combout\ & ((\mux_shift|m_out[0]~83_combout\ & (\mux_ulaB|m_out[17]~32_combout\)) # (!\mux_shift|m_out[0]~83_combout\ & ((\mux_ulaB|m_out[16]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \mux_ulaB|m_out[17]~32_combout\,
	datac => \mux_ulaB|m_out[16]~35_combout\,
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~56_combout\);

-- Location: LCCOMB_X53_Y39_N12
\alu|ShiftRight0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~59_combout\ = (\alu|ShiftRight0~56_combout\) # ((\mux_shift|m_out[1]~87_combout\ & ((\alu|ShiftRight0~57_combout\) # (!\alu|ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \alu|ShiftRight0~58_combout\,
	datac => \alu|ShiftRight0~57_combout\,
	datad => \alu|ShiftRight0~56_combout\,
	combout => \alu|ShiftRight0~59_combout\);

-- Location: LCCOMB_X53_Y39_N18
\alu|ShiftRight0~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~89_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~59_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight0~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight0~115_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \alu|ShiftRight0~59_combout\,
	combout => \alu|ShiftRight0~89_combout\);

-- Location: LCCOMB_X57_Y38_N30
\alu|Mux27~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~3_combout\ = (\alu|Mux27~2_combout\ & (((\alu|Add1~8_combout\)) # (!\alu|Mux29~7_combout\))) # (!\alu|Mux27~2_combout\ & (\alu|Mux29~7_combout\ & (\alu|ShiftRight1~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~2_combout\,
	datab => \alu|Mux29~7_combout\,
	datac => \alu|ShiftRight1~89_combout\,
	datad => \alu|Add1~8_combout\,
	combout => \alu|Mux27~3_combout\);

-- Location: LCCOMB_X57_Y38_N0
\alu|Mux27~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~4_combout\ = (\alu|Mux29~6_combout\ & (\alu|tmp[4]~8_combout\ & (\alu|Mux29~5_combout\))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux27~3_combout\) # (!\alu|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~6_combout\,
	datab => \alu|tmp[4]~8_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux27~3_combout\,
	combout => \alu|Mux27~4_combout\);

-- Location: LCCOMB_X57_Y38_N22
\alu|Mux27~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~5_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux27~4_combout\ & ((\alu|ShiftRight0~88_combout\))) # (!\alu|Mux27~4_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|ShiftRight0~88_combout\,
	datad => \alu|Mux27~4_combout\,
	combout => \alu|Mux27~5_combout\);

-- Location: LCCOMB_X57_Y38_N12
\alu|Mux27~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~8_combout\ = (\alu|Mux27~7_combout\ & ((\alu|Mux27~6_combout\ & (\alu|ShiftRight0~89_combout\)) # (!\alu|Mux27~6_combout\ & ((\alu|Mux27~5_combout\))))) # (!\alu|Mux27~7_combout\ & (\alu|Mux27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~7_combout\,
	datab => \alu|Mux27~6_combout\,
	datac => \alu|ShiftRight0~89_combout\,
	datad => \alu|Mux27~5_combout\,
	combout => \alu|Mux27~8_combout\);

-- Location: LCCOMB_X57_Y38_N26
\alu|Mux27~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~9_combout\ = (\alu|Mux27~1_combout\ & (((\alu|Mux27~8_combout\)))) # (!\alu|Mux27~1_combout\ & ((\alu|Mux27~8_combout\ & ((\alu|ShiftRight0~116_combout\))) # (!\alu|Mux27~8_combout\ & (\alu|ShiftRight0~114_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~1_combout\,
	datab => \alu|ShiftRight0~114_combout\,
	datac => \alu|ShiftRight0~116_combout\,
	datad => \alu|Mux27~8_combout\,
	combout => \alu|Mux27~9_combout\);

-- Location: LCCOMB_X57_Y38_N28
\alu|Mux27~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~11_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux27~10_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~10_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux27~9_combout\,
	combout => \alu|Mux27~11_combout\);

-- Location: LCCOMB_X57_Y38_N10
\alu|Mux27\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux27~11_combout\ & ((\alu|a32~13_combout\))) # (!\alu|Mux27~11_combout\ & (\alu|ShiftLeft0~65_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux27~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~65_combout\,
	datab => \alu|a32~13_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux27~11_combout\,
	combout => \alu|Mux27~combout\);

-- Location: LCFF_X57_Y38_N11
\regULA|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(4));

-- Location: LCCOMB_X61_Y34_N6
\breg_data_mux|m_out[4]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[4]~26_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(4))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \rdm|sr_out\(4),
	datad => \regULA|sr_out\(4),
	combout => \breg_data_mux|m_out[4]~26_combout\);

-- Location: LCFF_X62_Y39_N27
\bcoreg|breg32_rtl_1_bypass[35]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[24]~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(35));

-- Location: LCCOMB_X62_Y39_N20
\bcoreg|regB[24]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[24]~19_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(35)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a24\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(35),
	combout => \bcoreg|regB[24]~19_combout\);

-- Location: LCFF_X62_Y39_N21
\rgB|sr_out[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[24]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(24));

-- Location: LCCOMB_X65_Y35_N30
\rdm|sr_out[23]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[23]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(23),
	combout => \rdm|sr_out[23]~feeder_combout\);

-- Location: LCFF_X65_Y35_N31
\rdm|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(23));

-- Location: LCCOMB_X65_Y35_N28
\breg_data_mux|m_out[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[23]~8_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(23)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(23),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datad => \rdm|sr_out\(23),
	combout => \breg_data_mux|m_out[23]~8_combout\);

-- Location: LCCOMB_X65_Y35_N26
\bcoreg|breg32_rtl_1_bypass[34]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[34]~feeder_combout\ = \breg_data_mux|m_out[23]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[23]~8_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[34]~feeder_combout\);

-- Location: LCFF_X65_Y35_N27
\bcoreg|breg32_rtl_1_bypass[34]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(34));

-- Location: LCCOMB_X60_Y41_N20
\bcoreg|regB[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[23]~24_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(34)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a23\,
	datab => \bcoreg|breg32_rtl_1_bypass\(34),
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[23]~24_combout\);

-- Location: LCFF_X60_Y41_N21
\rgB|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[23]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(23));

-- Location: LCCOMB_X62_Y40_N20
\bcoreg|regA[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[3]~30_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(14))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(14),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a3\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[3]~30_combout\);

-- Location: LCFF_X62_Y40_N21
\rgA|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regA[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(3));

-- Location: LCCOMB_X62_Y40_N26
\mux_shift|m_out[3]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[3]~90_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(3)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(3),
	datac => \rgA|sr_out\(3),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_shift|m_out[3]~90_combout\);

-- Location: LCCOMB_X62_Y40_N30
\alu|ShiftRight1~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~55_combout\ = (!\mux_shift|m_out[2]~89_combout\ & ((\actr|alu_ctr~30_combout\ & (\ir|sr_out\(9))) # (!\actr|alu_ctr~30_combout\ & ((\mux_shift|m_out[3]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(9),
	datab => \mux_shift|m_out[3]~90_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \actr|alu_ctr~30_combout\,
	combout => \alu|ShiftRight1~55_combout\);

-- Location: LCCOMB_X57_Y34_N2
\alu|ShiftLeft0~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~84_combout\ = (\alu|ShiftLeft0~160_combout\ & ((\alu|ShiftRight1~55_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~83_combout\)))) # (!\alu|ShiftLeft0~160_combout\ & (((!\mux_shift|m_out[3]~91_combout\ & 
-- \alu|ShiftLeft0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~160_combout\,
	datab => \alu|ShiftRight1~55_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~83_combout\,
	combout => \alu|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X57_Y34_N8
\alu|Mux20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~7_combout\ = (\actr|alu_ctr[1]~31_combout\) # ((\mux_ulaB|m_out[11]~24_combout\) # ((\mux_shift|m_out[11]~63_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \mux_ulaB|m_out[11]~24_combout\,
	datac => \mux_shift|m_out[11]~63_combout\,
	datad => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux20~7_combout\);

-- Location: LCCOMB_X57_Y34_N0
\alu|Mux20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~3_combout\ = (\alu|Mux20~2_combout\ & ((\alu|Add1~22_combout\) # ((!\alu|Mux29~7_combout\)))) # (!\alu|Mux20~2_combout\ & (((\alu|ShiftRight1~98_combout\ & \alu|Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux20~2_combout\,
	datab => \alu|Add1~22_combout\,
	datac => \alu|ShiftRight1~98_combout\,
	datad => \alu|Mux29~7_combout\,
	combout => \alu|Mux20~3_combout\);

-- Location: LCCOMB_X57_Y34_N22
\alu|Mux20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~4_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[11]~22_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux20~3_combout\))))) # (!\alu|Mux29~5_combout\ & (((!\alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|tmp[11]~22_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|Mux20~3_combout\,
	combout => \alu|Mux20~4_combout\);

-- Location: LCCOMB_X57_Y34_N4
\alu|Mux20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~5_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux20~4_combout\ & ((\alu|ShiftRight0~131_combout\))) # (!\alu|Mux20~4_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~131_combout\,
	datad => \alu|Mux20~4_combout\,
	combout => \alu|Mux20~5_combout\);

-- Location: LCCOMB_X57_Y34_N10
\alu|Mux20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~6_combout\ = (\alu|Mux20~5_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux20~5_combout\,
	datad => \alu|Mux29~4_combout\,
	combout => \alu|Mux20~6_combout\);

-- Location: LCCOMB_X57_Y34_N6
\alu|Mux20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~8_combout\ = (\alu|Mux29~2_combout\ & ((\alu|Mux29~14_combout\ & (!\alu|Mux20~7_combout\)) # (!\alu|Mux29~14_combout\ & ((\alu|Mux20~6_combout\))))) # (!\alu|Mux29~2_combout\ & (((\alu|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux20~7_combout\,
	datac => \alu|Mux29~14_combout\,
	datad => \alu|Mux20~6_combout\,
	combout => \alu|Mux20~8_combout\);

-- Location: LCCOMB_X57_Y34_N24
\alu|Mux20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~9_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux20~8_combout\ & (\alu|a32~20_combout\)) # (!\alu|Mux20~8_combout\ & ((\alu|ShiftLeft0~84_combout\))))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~20_combout\,
	datab => \alu|ShiftLeft0~84_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux20~8_combout\,
	combout => \alu|Mux20~9_combout\);

-- Location: LCCOMB_X57_Y34_N18
\alu|Mux20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux20~10_combout\ = (\alu|Mux20~1_combout\) # ((\alu|Mux20~9_combout\ & \alu|Mux29~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux20~1_combout\,
	datac => \alu|Mux20~9_combout\,
	datad => \alu|Mux29~19_combout\,
	combout => \alu|Mux20~10_combout\);

-- Location: LCFF_X57_Y34_N19
\regULA|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux20~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(11));

-- Location: LCCOMB_X63_Y37_N20
\rdm|sr_out[11]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[11]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(11),
	combout => \rdm|sr_out[11]~feeder_combout\);

-- Location: LCFF_X63_Y37_N21
\rdm|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(11));

-- Location: LCCOMB_X62_Y36_N16
\breg_data_mux|m_out[11]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[11]~19_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(11)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(11),
	datad => \rdm|sr_out\(11),
	combout => \breg_data_mux|m_out[11]~19_combout\);

-- Location: LCFF_X62_Y36_N17
\bcoreg|breg32_rtl_1_bypass[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \breg_data_mux|m_out[11]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(22));

-- Location: LCCOMB_X63_Y37_N0
\bcoreg|regB[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[11]~12_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(22)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a11\,
	datab => \bcoreg|breg32_rtl_1_bypass\(22),
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[11]~12_combout\);

-- Location: LCFF_X63_Y37_N1
\rgB|sr_out[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(11));

-- Location: LCFF_X61_Y37_N3
\ir|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(2));

-- Location: LCCOMB_X63_Y37_N8
\actr|alu_ctr[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~27_combout\ = (\ir|sr_out\(0) & (\ir|sr_out\(2) $ (!\ir|sr_out\(1)))) # (!\ir|sr_out\(0) & (!\ir|sr_out\(2) & \ir|sr_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datac => \ir|sr_out\(2),
	datad => \ir|sr_out\(1),
	combout => \actr|alu_ctr[1]~27_combout\);

-- Location: LCCOMB_X61_Y40_N12
\actr|alu_ctr[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~28_combout\ = (\actr|alu_ctr[1]~27_combout\ & (((!\ir|sr_out\(5)) # (!\ir|sr_out\(2))))) # (!\actr|alu_ctr[1]~27_combout\ & ((\ctr_mips|pstate.branch_ex_st~regout\) # (\ir|sr_out\(2) $ (\ir|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ir|sr_out\(2),
	datac => \actr|alu_ctr[1]~27_combout\,
	datad => \ir|sr_out\(5),
	combout => \actr|alu_ctr[1]~28_combout\);

-- Location: LCCOMB_X61_Y40_N14
\actr|alu_ctr[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[1]~31_combout\ = ((\ir|sr_out\(4)) # ((\ir|sr_out\(3)) # (\actr|alu_ctr[1]~28_combout\))) # (!\ctr_mips|pstate.rtype_ex_st~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datab => \ir|sr_out\(4),
	datac => \ir|sr_out\(3),
	datad => \actr|alu_ctr[1]~28_combout\,
	combout => \actr|alu_ctr[1]~31_combout\);

-- Location: LCCOMB_X60_Y36_N12
\alu|Mux29~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~4_combout\ = (!\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[2]~33_combout\) # ((\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[2]~33_combout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \alu|Mux29~4_combout\);

-- Location: LCCOMB_X57_Y42_N8
\alu|Mux14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux14~10_combout\ = (!\actr|alu_ctr[3]~29_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[3]~29_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	combout => \alu|Mux14~10_combout\);

-- Location: LCCOMB_X56_Y38_N2
\alu|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~0_combout\ = (\mux_shift|m_out[22]~33_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_ulaB|m_out[22]~45_combout\))) # (!\mux_shift|m_out[22]~33_combout\ & ((\mux_ulaB|m_out[22]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datac => \mux_shift|m_out[22]~33_combout\,
	datad => \mux_ulaB|m_out[22]~45_combout\,
	combout => \alu|Mux9~0_combout\);

-- Location: LCCOMB_X56_Y38_N22
\alu|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~2_combout\ = (\alu|Mux9~1_combout\ & ((\alu|Mux8~19_combout\) # ((\alu|ShiftLeft0~94_combout\)))) # (!\alu|Mux9~1_combout\ & (!\alu|Mux8~19_combout\ & ((\alu|ShiftLeft0~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux9~1_combout\,
	datab => \alu|Mux8~19_combout\,
	datac => \alu|ShiftLeft0~94_combout\,
	datad => \alu|ShiftLeft0~126_combout\,
	combout => \alu|Mux9~2_combout\);

-- Location: LCCOMB_X56_Y38_N8
\alu|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~3_combout\ = (\actr|alu_ctr[2]~26_combout\ & (!\alu|Mux9~0_combout\ & (\actr|alu_ctr[0]~32_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[2]~26_combout\,
	datab => \alu|Mux9~0_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux9~2_combout\,
	combout => \alu|Mux9~3_combout\);

-- Location: LCCOMB_X58_Y41_N16
\alu|ShiftRight0~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~95_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~105_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight1~105_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~106_combout\,
	combout => \alu|ShiftRight0~95_combout\);

-- Location: LCCOMB_X58_Y41_N6
\alu|ShiftRight0~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~96_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~158_combout\ & (\rgB|sr_out\(31))) # (!\alu|ShiftLeft0~158_combout\ & ((\rgB|sr_out\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \alu|ShiftLeft0~158_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \rgB|sr_out\(30),
	combout => \alu|ShiftRight0~96_combout\);

-- Location: LCCOMB_X58_Y41_N8
\alu|ShiftRight0~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~97_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftRight0~95_combout\) # (\alu|ShiftRight0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftRight0~95_combout\,
	datad => \alu|ShiftRight0~96_combout\,
	combout => \alu|ShiftRight0~97_combout\);

-- Location: LCCOMB_X56_Y38_N18
\alu|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~4_combout\ = (\actr|alu_ctr[1]~31_combout\ & (\actr|alu_ctr[0]~32_combout\)) # (!\actr|alu_ctr[1]~31_combout\ & ((\actr|alu_ctr[0]~32_combout\ & (\mux_shift|m_out[22]~33_combout\ & \mux_ulaB|m_out[22]~45_combout\)) # 
-- (!\actr|alu_ctr[0]~32_combout\ & ((\mux_shift|m_out[22]~33_combout\) # (\mux_ulaB|m_out[22]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_shift|m_out[22]~33_combout\,
	datad => \mux_ulaB|m_out[22]~45_combout\,
	combout => \alu|Mux9~4_combout\);

-- Location: LCCOMB_X59_Y41_N10
\alu|ShiftRight1~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~92_combout\ = (\alu|ShiftRight1~63_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~105_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftRight1~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~63_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftRight1~106_combout\,
	datad => \alu|ShiftRight1~105_combout\,
	combout => \alu|ShiftRight1~92_combout\);

-- Location: LCCOMB_X59_Y41_N8
\alu|ShiftRight1~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~93_combout\ = (\alu|ShiftRight1~62_combout\) # ((\alu|ShiftRight1~92_combout\) # ((\alu|ShiftLeft0~159_combout\ & \alu|ShiftRight1~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~159_combout\,
	datab => \alu|ShiftRight1~62_combout\,
	datac => \alu|ShiftRight1~71_combout\,
	datad => \alu|ShiftRight1~92_combout\,
	combout => \alu|ShiftRight1~93_combout\);

-- Location: LCCOMB_X56_Y38_N4
\alu|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~5_combout\ = (\alu|Mux8~6_combout\ & ((\alu|Mux9~4_combout\ & ((\alu|Add1~44_combout\))) # (!\alu|Mux9~4_combout\ & (\alu|ShiftRight1~93_combout\)))) # (!\alu|Mux8~6_combout\ & (\alu|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~6_combout\,
	datab => \alu|Mux9~4_combout\,
	datac => \alu|ShiftRight1~93_combout\,
	datad => \alu|Add1~44_combout\,
	combout => \alu|Mux9~5_combout\);

-- Location: LCCOMB_X56_Y38_N10
\alu|Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~6_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & ((\alu|tmp[22]~44_combout\))) # (!\alu|Mux8~8_combout\ & (\alu|Mux9~5_combout\)))) # (!\alu|Mux8~7_combout\ & (((!\alu|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux9~5_combout\,
	datac => \alu|Mux8~8_combout\,
	datad => \alu|tmp[22]~44_combout\,
	combout => \alu|Mux9~6_combout\);

-- Location: LCCOMB_X56_Y38_N12
\alu|Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~7_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux9~6_combout\ & ((\alu|ShiftRight0~97_combout\))) # (!\alu|Mux9~6_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~97_combout\,
	datad => \alu|Mux9~6_combout\,
	combout => \alu|Mux9~7_combout\);

-- Location: LCCOMB_X56_Y38_N14
\alu|Mux9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux9~8_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux9~3_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux9~7_combout\)))) # (!\alu|Mux14~12_combout\ & (\alu|Mux14~10_combout\ & ((\alu|Mux9~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux14~10_combout\,
	datac => \alu|Mux9~3_combout\,
	datad => \alu|Mux9~7_combout\,
	combout => \alu|Mux9~8_combout\);

-- Location: LCFF_X56_Y38_N15
\regULA|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux9~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(22));

-- Location: LCCOMB_X61_Y38_N24
\rdm|sr_out[22]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[22]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(22),
	combout => \rdm|sr_out[22]~feeder_combout\);

-- Location: LCFF_X61_Y38_N25
\rdm|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(22));

-- Location: LCCOMB_X56_Y38_N30
\breg_data_mux|m_out[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[22]~9_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(22)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(22),
	datad => \rdm|sr_out\(22),
	combout => \breg_data_mux|m_out[22]~9_combout\);

-- Location: LCCOMB_X56_Y38_N20
\bcoreg|breg32_rtl_1_bypass[33]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\ = \breg_data_mux|m_out[22]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[22]~9_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\);

-- Location: LCFF_X56_Y38_N21
\bcoreg|breg32_rtl_1_bypass[33]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(33));

-- Location: LCCOMB_X61_Y35_N2
\bcoreg|regB[22]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[22]~26_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(33))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(33),
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a22\,
	combout => \bcoreg|regB[22]~26_combout\);

-- Location: LCFF_X61_Y35_N3
\rgB|sr_out[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(22));

-- Location: LCCOMB_X63_Y36_N26
\bcoreg|regB[10]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[10]~14_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(21))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(21),
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a10\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|Equal1~1_combout\,
	combout => \bcoreg|regB[10]~14_combout\);

-- Location: LCFF_X63_Y36_N27
\rgB|sr_out[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[10]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(10));

-- Location: LCCOMB_X62_Y37_N6
\bcoreg|regB[9]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[9]~13_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(20))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(20),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a9\,
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[9]~13_combout\);

-- Location: LCFF_X62_Y37_N7
\rgB|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[9]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(9));

-- Location: LCCOMB_X65_Y37_N24
\rdm|sr_out[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[8]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(8),
	combout => \rdm|sr_out[8]~feeder_combout\);

-- Location: LCFF_X65_Y37_N25
\rdm|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(8));

-- Location: LCCOMB_X65_Y36_N30
\breg_data_mux|m_out[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[8]~22_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(8)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(8),
	datad => \rdm|sr_out\(8),
	combout => \breg_data_mux|m_out[8]~22_combout\);

-- Location: LCCOMB_X65_Y36_N12
\bcoreg|breg32_rtl_1_bypass[19]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\ = \breg_data_mux|m_out[8]~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[8]~22_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\);

-- Location: LCFF_X65_Y36_N13
\bcoreg|breg32_rtl_1_bypass[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(19));

-- Location: LCCOMB_X63_Y36_N4
\bcoreg|regB[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[8]~15_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(19))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1_bypass\(19),
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a8\,
	combout => \bcoreg|regB[8]~15_combout\);

-- Location: LCFF_X63_Y36_N5
\rgB|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[8]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(8));

-- Location: LCCOMB_X62_Y39_N12
\ir|sr_out[15]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[15]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(15),
	combout => \ir|sr_out[15]~feeder_combout\);

-- Location: LCFF_X62_Y39_N13
\ir|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[15]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(15));

-- Location: LCCOMB_X63_Y35_N2
\mux_reg_add|m_out[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[4]~4_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(15)))) # (!\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(20),
	datab => \ctr_mips|pstate.writereg_st~regout\,
	datad => \ir|sr_out\(15),
	combout => \mux_reg_add|m_out[4]~4_combout\);

-- Location: LCCOMB_X63_Y36_N18
\bcoreg|regB[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[7]~4_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(18)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a7\,
	datad => \bcoreg|breg32_rtl_1_bypass\(18),
	combout => \bcoreg|regB[7]~4_combout\);

-- Location: LCFF_X62_Y37_N15
\rgB|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[7]~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(7));

-- Location: LCFF_X63_Y37_N19
\ir|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(14));

-- Location: LCCOMB_X65_Y39_N6
\mux_reg_add|m_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[3]~3_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(14))) # (!\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.writereg_st~regout\,
	datac => \ir|sr_out\(14),
	datad => \ir|sr_out\(19),
	combout => \mux_reg_add|m_out[3]~3_combout\);

-- Location: LCCOMB_X58_Y37_N4
\bcoreg|regB[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[6]~5_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(17))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(17),
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a6\,
	combout => \bcoreg|regB[6]~5_combout\);

-- Location: LCFF_X58_Y37_N5
\rgB|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(6));

-- Location: LCCOMB_X63_Y38_N10
\rdm|sr_out[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[5]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(5),
	combout => \rdm|sr_out[5]~feeder_combout\);

-- Location: LCFF_X63_Y38_N11
\rdm|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(5));

-- Location: LCCOMB_X63_Y37_N30
\breg_data_mux|m_out[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[5]~25_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & ((\rdm|sr_out\(5)))) # (!\ctr_mips|pstate.ldreg_st~regout\ & (\regULA|sr_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(5),
	datab => \rdm|sr_out\(5),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[5]~25_combout\);

-- Location: LCFF_X62_Y40_N5
\bcoreg|breg32_rtl_1_bypass[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \breg_data_mux|m_out[5]~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(16));

-- Location: LCCOMB_X63_Y40_N20
\bcoreg|regB[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[5]~6_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(16)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a5\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(16),
	combout => \bcoreg|regB[5]~6_combout\);

-- Location: LCFF_X63_Y40_N21
\rgB|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(5));

-- Location: LCFF_X63_Y39_N21
\ir|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(13));

-- Location: LCCOMB_X65_Y38_N20
\ir|sr_out[18]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[18]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(18),
	combout => \ir|sr_out[18]~feeder_combout\);

-- Location: LCFF_X65_Y38_N21
\ir|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[18]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(18));

-- Location: LCCOMB_X63_Y35_N4
\mux_reg_add|m_out[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[2]~2_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(13))) # (!\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.writereg_st~regout\,
	datac => \ir|sr_out\(13),
	datad => \ir|sr_out\(18),
	combout => \mux_reg_add|m_out[2]~2_combout\);

-- Location: LCCOMB_X62_Y40_N18
\bcoreg|regB[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[3]~2_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(14))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(14),
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a3\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[3]~2_combout\);

-- Location: LCFF_X62_Y40_N19
\rgB|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(3));

-- Location: LCFF_X63_Y36_N29
\ir|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(12));

-- Location: LCFF_X65_Y39_N23
\ir|sr_out[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(17),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(17));

-- Location: LCCOMB_X65_Y39_N14
\mux_reg_add|m_out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[1]~1_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(12))) # (!\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ir|sr_out\(12),
	datac => \ctr_mips|pstate.writereg_st~regout\,
	datad => \ir|sr_out\(17),
	combout => \mux_reg_add|m_out[1]~1_combout\);

-- Location: LCCOMB_X61_Y35_N30
\bcoreg|regB[19]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[19]~30_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(30))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(30),
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a19\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[19]~30_combout\);

-- Location: LCFF_X61_Y35_N31
\rgB|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[19]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(19));

-- Location: LCFF_X63_Y35_N21
\ir|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(20),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(20));

-- Location: LCCOMB_X63_Y35_N20
\bcoreg|breg32~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~44_combout\ = (\bcoreg|breg32_rtl_0_bypass\(0) & (\ir|sr_out\(20) $ (!\bcoreg|breg32_rtl_0_bypass\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcoreg|breg32_rtl_0_bypass\(0),
	datac => \ir|sr_out\(20),
	datad => \bcoreg|breg32_rtl_0_bypass\(9),
	combout => \bcoreg|breg32~44_combout\);

-- Location: LCCOMB_X65_Y39_N30
\bcoreg|breg32~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~43_combout\ = (\bcoreg|breg32_rtl_0_bypass\(5) & (\ir|sr_out\(18) & (\ir|sr_out\(19) $ (!\bcoreg|breg32_rtl_0_bypass\(7))))) # (!\bcoreg|breg32_rtl_0_bypass\(5) & (!\ir|sr_out\(18) & (\ir|sr_out\(19) $ (!\bcoreg|breg32_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_0_bypass\(5),
	datab => \ir|sr_out\(19),
	datac => \ir|sr_out\(18),
	datad => \bcoreg|breg32_rtl_0_bypass\(7),
	combout => \bcoreg|breg32~43_combout\);

-- Location: LCCOMB_X65_Y39_N4
\bcoreg|breg32~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32~45_combout\ = (\bcoreg|breg32~42_combout\ & (\bcoreg|breg32~44_combout\ & \bcoreg|breg32~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~42_combout\,
	datac => \bcoreg|breg32~44_combout\,
	datad => \bcoreg|breg32~43_combout\,
	combout => \bcoreg|breg32~45_combout\);

-- Location: LCCOMB_X62_Y40_N8
\bcoreg|regB[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[2]~3_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(13))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(13),
	datab => \bcoreg|breg32~45_combout\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a2\,
	combout => \bcoreg|regB[2]~3_combout\);

-- Location: LCFF_X61_Y37_N5
\rgB|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regB[2]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(2));

-- Location: LCCOMB_X65_Y37_N26
\rdm|sr_out[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdm|sr_out[1]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(1),
	combout => \rdm|sr_out[1]~feeder_combout\);

-- Location: LCFF_X65_Y37_N27
\rdm|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \rdm|sr_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rdm|sr_out\(1));

-- Location: LCFF_X56_Y34_N7
\regULA|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux30~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(1));

-- Location: LCCOMB_X65_Y36_N6
\breg_data_mux|m_out[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[1]~27_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(1))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rdm|sr_out\(1),
	datac => \regULA|sr_out\(1),
	datad => \ctr_mips|pstate.ldreg_st~regout\,
	combout => \breg_data_mux|m_out[1]~27_combout\);

-- Location: LCCOMB_X65_Y36_N16
\bcoreg|breg32_rtl_1_bypass[12]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[12]~feeder_combout\ = \breg_data_mux|m_out[1]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[1]~27_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[12]~feeder_combout\);

-- Location: LCFF_X65_Y36_N17
\bcoreg|breg32_rtl_1_bypass[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(12));

-- Location: LCCOMB_X63_Y37_N16
\bcoreg|regB[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[1]~0_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(12))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1_bypass\(12),
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a1\,
	combout => \bcoreg|regB[1]~0_combout\);

-- Location: LCFF_X63_Y37_N17
\rgB|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(1));

-- Location: LCFF_X65_Y39_N13
\ir|sr_out[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(16),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(16));

-- Location: LCCOMB_X65_Y39_N16
\mux_reg_add|m_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_reg_add|m_out[0]~0_combout\ = (\ctr_mips|pstate.writereg_st~regout\ & (\ir|sr_out\(11))) # (!\ctr_mips|pstate.writereg_st~regout\ & ((\ir|sr_out\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(11),
	datac => \ctr_mips|pstate.writereg_st~regout\,
	datad => \ir|sr_out\(16),
	combout => \mux_reg_add|m_out[0]~0_combout\);

-- Location: LCCOMB_X61_Y35_N4
\bcoreg|regB[21]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[21]~25_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1_bypass\(32))) # (!\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(32),
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a21\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32~45_combout\,
	combout => \bcoreg|regB[21]~25_combout\);

-- Location: LCFF_X61_Y35_N5
\rgB|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[21]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(21));

-- Location: LCCOMB_X61_Y39_N18
\alu|ShiftRight0~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~65_combout\ = (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & ((\rgB|sr_out\(23)))) # (!\mux_shift|m_out[1]~87_combout\ & (\rgB|sr_out\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~83_combout\,
	datab => \rgB|sr_out\(21),
	datac => \rgB|sr_out\(23),
	datad => \mux_shift|m_out[1]~87_combout\,
	combout => \alu|ShiftRight0~65_combout\);

-- Location: LCCOMB_X61_Y39_N24
\alu|ShiftRight0~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~119_combout\ = (\alu|ShiftRight0~62_combout\) # ((\alu|ShiftRight0~63_combout\ & ((\mux_shift|m_out[0]~93_combout\) # (\mux_shift|m_out[0]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight0~62_combout\,
	datad => \alu|ShiftRight0~63_combout\,
	combout => \alu|ShiftRight0~119_combout\);

-- Location: LCCOMB_X61_Y39_N6
\alu|ShiftRight0~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~120_combout\ = (\alu|ShiftRight0~64_combout\ & ((\mux_shift|m_out[0]~82_combout\) # (\mux_shift|m_out[0]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datac => \alu|ShiftRight0~64_combout\,
	datad => \mux_shift|m_out[0]~93_combout\,
	combout => \alu|ShiftRight0~120_combout\);

-- Location: LCCOMB_X61_Y39_N4
\alu|ShiftRight0~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~66_combout\ = (\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~65_combout\) # ((\alu|ShiftRight0~120_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight0~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight0~65_combout\,
	datac => \alu|ShiftRight0~119_combout\,
	datad => \alu|ShiftRight0~120_combout\,
	combout => \alu|ShiftRight0~66_combout\);

-- Location: LCCOMB_X58_Y34_N24
\alu|Mux22~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~10_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \alu|ShiftRight0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~31_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~66_combout\,
	combout => \alu|Mux22~10_combout\);

-- Location: LCCOMB_X58_Y40_N2
\alu|ShiftLeft0~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~159_combout\ = (\mux_shift|m_out[3]~91_combout\ & (!\mux_shift|m_out[1]~94_combout\ & (!\mux_shift|m_out[2]~89_combout\ & !\mux_shift|m_out[1]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_shift|m_out[2]~89_combout\,
	datad => \mux_shift|m_out[1]~86_combout\,
	combout => \alu|ShiftLeft0~159_combout\);

-- Location: LCCOMB_X58_Y34_N28
\alu|ShiftLeft0~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~78_combout\ = (\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftLeft0~55_combout\ & (\alu|ShiftLeft0~159_combout\))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftLeft0~77_combout\) # ((\alu|ShiftLeft0~55_combout\ & 
-- \alu|ShiftLeft0~159_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftLeft0~55_combout\,
	datac => \alu|ShiftLeft0~159_combout\,
	datad => \alu|ShiftLeft0~77_combout\,
	combout => \alu|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X58_Y34_N4
\alu|Mux22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~6_combout\ = (\mux_shift|m_out[9]~69_combout\) # ((\mux_ulaB|m_out[9]~26_combout\) # ((\actr|alu_ctr[1]~31_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[9]~69_combout\,
	datab => \mux_ulaB|m_out[9]~26_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux22~6_combout\);

-- Location: LCCOMB_X58_Y34_N2
\alu|Mux22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~1_combout\ = (\alu|Mux22~0_combout\ & ((\alu|Add1~18_combout\))) # (!\alu|Mux22~0_combout\ & (!\mux_shift|m_out[3]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux22~0_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|Add1~18_combout\,
	combout => \alu|Mux22~1_combout\);

-- Location: LCCOMB_X59_Y34_N12
\alu|Mux22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~2_combout\ = (\alu|Mux29~7_combout\ & (\alu|Mux22~1_combout\ & ((\alu|Mux22~0_combout\) # (\alu|ShiftRight1~60_combout\)))) # (!\alu|Mux29~7_combout\ & (\alu|Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux22~0_combout\,
	datab => \alu|ShiftRight1~60_combout\,
	datac => \alu|Mux29~7_combout\,
	datad => \alu|Mux22~1_combout\,
	combout => \alu|Mux22~2_combout\);

-- Location: LCCOMB_X59_Y34_N14
\alu|Mux22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~3_combout\ = (\alu|Mux29~6_combout\ & (\alu|tmp[9]~18_combout\ & (\alu|Mux29~5_combout\))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux22~2_combout\) # (!\alu|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~6_combout\,
	datab => \alu|tmp[9]~18_combout\,
	datac => \alu|Mux29~5_combout\,
	datad => \alu|Mux22~2_combout\,
	combout => \alu|Mux22~3_combout\);

-- Location: LCCOMB_X60_Y34_N28
\alu|Mux22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~4_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux22~3_combout\ & ((\alu|ShiftRight0~129_combout\))) # (!\alu|Mux22~3_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~129_combout\,
	datad => \alu|Mux22~3_combout\,
	combout => \alu|Mux22~4_combout\);

-- Location: LCCOMB_X60_Y34_N26
\alu|Mux22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~5_combout\ = (\alu|Mux22~4_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux22~4_combout\,
	combout => \alu|Mux22~5_combout\);

-- Location: LCCOMB_X58_Y34_N30
\alu|Mux22~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~7_combout\ = (\alu|Mux29~2_combout\ & ((\alu|Mux29~14_combout\ & (!\alu|Mux22~6_combout\)) # (!\alu|Mux29~14_combout\ & ((\alu|Mux22~5_combout\))))) # (!\alu|Mux29~2_combout\ & (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux22~6_combout\,
	datad => \alu|Mux22~5_combout\,
	combout => \alu|Mux22~7_combout\);

-- Location: LCCOMB_X58_Y34_N0
\alu|Mux22~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~8_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux22~7_combout\ & (\alu|a32~18_combout\)) # (!\alu|Mux22~7_combout\ & ((\alu|ShiftLeft0~78_combout\))))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~18_combout\,
	datab => \alu|ShiftLeft0~78_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux22~7_combout\,
	combout => \alu|Mux22~8_combout\);

-- Location: LCCOMB_X58_Y34_N22
\alu|Mux22~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux22~11_combout\ = (\alu|Mux29~19_combout\ & (((\alu|Mux22~8_combout\)))) # (!\alu|Mux29~19_combout\ & ((\alu|Mux22~9_combout\) # ((\alu|Mux22~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux22~9_combout\,
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux22~10_combout\,
	datad => \alu|Mux22~8_combout\,
	combout => \alu|Mux22~11_combout\);

-- Location: LCFF_X58_Y34_N23
\regULA|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux22~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(9));

-- Location: LCCOMB_X61_Y38_N20
\pc|sr_out[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[9]~21_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(9))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux22~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(9),
	datad => \alu|Mux22~11_combout\,
	combout => \pc|sr_out[9]~21_combout\);

-- Location: LCFF_X61_Y38_N21
\pc|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[9]~21_combout\,
	sdata => \ir|sr_out\(7),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(9));

-- Location: LCCOMB_X63_Y35_N30
\mux_mem|m_out[9]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[9]~7_combout\ = (\pc|sr_out\(9) & (!\ctr_mips|pstate.writemem_st~regout\ & !\ctr_mips|pstate.readmem_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(9),
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \ctr_mips|pstate.readmem_st~regout\,
	combout => \mux_mem|m_out[9]~7_combout\);

-- Location: LCFF_X65_Y38_N7
\ir|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(19),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(19));

-- Location: LCCOMB_X65_Y39_N10
\bcoreg|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal1~0_combout\ = (!\ir|sr_out\(16) & (!\ir|sr_out\(19) & (!\ir|sr_out\(18) & !\ir|sr_out\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(16),
	datab => \ir|sr_out\(19),
	datac => \ir|sr_out\(18),
	datad => \ir|sr_out\(17),
	combout => \bcoreg|Equal1~0_combout\);

-- Location: LCCOMB_X63_Y35_N0
\bcoreg|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|Equal1~1_combout\ = (!\ir|sr_out\(20) & \bcoreg|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(20),
	datad => \bcoreg|Equal1~0_combout\,
	combout => \bcoreg|Equal1~1_combout\);

-- Location: LCCOMB_X61_Y34_N28
\bcoreg|regB[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[4]~7_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(15)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|Equal1~1_combout\,
	datac => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a4\,
	datad => \bcoreg|breg32_rtl_1_bypass\(15),
	combout => \bcoreg|regB[4]~7_combout\);

-- Location: LCFF_X61_Y34_N29
\rgB|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(4));

-- Location: LCCOMB_X58_Y37_N2
\mux_ulaB|m_out[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[4]~13_combout\ = (\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(4))) # (!\ctr_mips|pstate.decode_st~regout\ & ((\ctr_mips|pstate.c_mem_add_st~regout\ & (\ir|sr_out\(4))) # (!\ctr_mips|pstate.c_mem_add_st~regout\ & 
-- ((\rgB|sr_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.decode_st~regout\,
	datab => \ir|sr_out\(4),
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \rgB|sr_out\(4),
	combout => \mux_ulaB|m_out[4]~13_combout\);

-- Location: LCCOMB_X58_Y37_N12
\mux_ulaB|m_out[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[4]~14_combout\ = (\ctr_mips|WideNor0~0_combout\ & (((\mux_ulaB|m_out[4]~13_combout\)))) # (!\ctr_mips|WideNor0~0_combout\ & (!\mux_ulaB|m_out[2]~3_combout\ & ((\ir|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[2]~3_combout\,
	datab => \mux_ulaB|m_out[4]~13_combout\,
	datac => \ir|sr_out\(2),
	datad => \ctr_mips|WideNor0~0_combout\,
	combout => \mux_ulaB|m_out[4]~14_combout\);

-- Location: LCCOMB_X57_Y37_N26
\alu|ShiftRight1~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~45_combout\ = (\mux_shift|m_out[0]~93_combout\ & (((\mux_ulaB|m_out[5]~12_combout\)))) # (!\mux_shift|m_out[0]~93_combout\ & ((\mux_shift|m_out[0]~82_combout\ & ((\mux_ulaB|m_out[5]~12_combout\))) # (!\mux_shift|m_out[0]~82_combout\ & 
-- (\mux_ulaB|m_out[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~93_combout\,
	datab => \mux_ulaB|m_out[4]~14_combout\,
	datac => \mux_shift|m_out[0]~82_combout\,
	datad => \mux_ulaB|m_out[5]~12_combout\,
	combout => \alu|ShiftRight1~45_combout\);

-- Location: LCCOMB_X57_Y41_N4
\alu|Mux29~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~18_combout\ = (\alu|Mux29~17_combout\ & (((\alu|ShiftRight0~79_combout\) # (!\alu|Mux29~21_combout\)))) # (!\alu|Mux29~17_combout\ & (\alu|ShiftRight1~45_combout\ & ((\alu|Mux29~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~17_combout\,
	datab => \alu|ShiftRight1~45_combout\,
	datac => \alu|ShiftRight0~79_combout\,
	datad => \alu|Mux29~21_combout\,
	combout => \alu|Mux29~18_combout\);

-- Location: LCCOMB_X60_Y39_N16
\alu|a32~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~11_combout\ = \mux_ulaB|m_out[2]~6_combout\ $ (((\actr|alu_ctr~30_combout\ & (\ir|sr_out\(8))) # (!\actr|alu_ctr~30_combout\ & ((\mux_shift|m_out[2]~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(8),
	datab => \mux_shift|m_out[2]~88_combout\,
	datac => \actr|alu_ctr~30_combout\,
	datad => \mux_ulaB|m_out[2]~6_combout\,
	combout => \alu|a32~11_combout\);

-- Location: LCCOMB_X60_Y39_N22
\alu|Mux29~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~13_combout\ = ((\mux_shift|m_out[2]~89_combout\) # ((\actr|alu_ctr[1]~31_combout\) # (\mux_ulaB|m_out[2]~6_combout\))) # (!\actr|alu_ctr[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \actr|alu_ctr[1]~31_combout\,
	datad => \mux_ulaB|m_out[2]~6_combout\,
	combout => \alu|Mux29~13_combout\);

-- Location: LCCOMB_X60_Y39_N24
\alu|Mux29~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~8_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\mux_ulaB|m_out[2]~6_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_shift|m_out[2]~89_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_ulaB|m_out[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_ulaB|m_out[2]~6_combout\,
	combout => \alu|Mux29~8_combout\);

-- Location: LCCOMB_X60_Y39_N30
\alu|Mux29~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~9_combout\ = (\alu|Mux29~7_combout\ & ((\alu|Mux29~8_combout\ & (\alu|Add1~4_combout\)) # (!\alu|Mux29~8_combout\ & ((\alu|ShiftRight1~73_combout\))))) # (!\alu|Mux29~7_combout\ & (((\alu|Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~7_combout\,
	datab => \alu|Add1~4_combout\,
	datac => \alu|Mux29~8_combout\,
	datad => \alu|ShiftRight1~73_combout\,
	combout => \alu|Mux29~9_combout\);

-- Location: LCCOMB_X60_Y39_N4
\alu|Mux29~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~10_combout\ = (\alu|Mux29~6_combout\ & (\alu|Mux29~5_combout\ & (\alu|tmp[2]~4_combout\))) # (!\alu|Mux29~6_combout\ & (((\alu|Mux29~9_combout\)) # (!\alu|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~6_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|tmp[2]~4_combout\,
	datad => \alu|Mux29~9_combout\,
	combout => \alu|Mux29~10_combout\);

-- Location: LCCOMB_X60_Y39_N10
\alu|Mux29~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~11_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux29~10_combout\ & ((\alu|ShiftRight0~124_combout\))) # (!\alu|Mux29~10_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux29~10_combout\,
	datad => \alu|ShiftRight0~124_combout\,
	combout => \alu|Mux29~11_combout\);

-- Location: LCCOMB_X60_Y39_N0
\alu|Mux29~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~12_combout\ = (\alu|Mux29~11_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux29~11_combout\,
	combout => \alu|Mux29~12_combout\);

-- Location: LCCOMB_X60_Y39_N28
\alu|Mux29~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~15_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux29~13_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~14_combout\,
	datab => \alu|Mux29~13_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux29~12_combout\,
	combout => \alu|Mux29~15_combout\);

-- Location: LCCOMB_X60_Y39_N26
\alu|Mux29~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~16_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux29~15_combout\ & ((\alu|a32~11_combout\))) # (!\alu|Mux29~15_combout\ & (\alu|ShiftLeft0~154_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux29~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~3_combout\,
	datab => \alu|ShiftLeft0~154_combout\,
	datac => \alu|a32~11_combout\,
	datad => \alu|Mux29~15_combout\,
	combout => \alu|Mux29~16_combout\);

-- Location: LCCOMB_X60_Y39_N8
\alu|Mux29~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~20_combout\ = (\alu|Mux29~19_combout\ & ((\alu|Mux29~16_combout\))) # (!\alu|Mux29~19_combout\ & (\alu|Mux29~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~18_combout\,
	datac => \alu|Mux29~19_combout\,
	datad => \alu|Mux29~16_combout\,
	combout => \alu|Mux29~20_combout\);

-- Location: LCFF_X60_Y39_N9
\regULA|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux29~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(2));

-- Location: LCCOMB_X61_Y40_N20
\pc|sr_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[2]~0_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(2))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux29~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(2),
	datad => \alu|Mux29~20_combout\,
	combout => \pc|sr_out[2]~0_combout\);

-- Location: LCFF_X61_Y40_N21
\pc|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[2]~0_combout\,
	sdata => \ir|sr_out\(0),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(2));

-- Location: LCCOMB_X62_Y40_N14
\bcoreg|regA[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regA[2]~29_combout\ = (!\bcoreg|Equal0~1_combout\ & ((\bcoreg|breg32~41_combout\ & (\bcoreg|breg32_rtl_1_bypass\(13))) # (!\bcoreg|breg32~41_combout\ & ((\bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32_rtl_1_bypass\(13),
	datab => \bcoreg|breg32_rtl_0|auto_generated|ram_block1a2\,
	datac => \bcoreg|breg32~41_combout\,
	datad => \bcoreg|Equal0~1_combout\,
	combout => \bcoreg|regA[2]~29_combout\);

-- Location: LCFF_X61_Y37_N21
\rgA|sr_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \bcoreg|regA[2]~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgA|sr_out\(2));

-- Location: LCCOMB_X61_Y37_N20
\mux_shift|m_out[2]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[2]~88_combout\ = (\ctr_mips|WideOr0~combout\ & ((\rgA|sr_out\(2)))) # (!\ctr_mips|WideOr0~combout\ & (\pc|sr_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pc|sr_out\(2),
	datac => \rgA|sr_out\(2),
	datad => \ctr_mips|WideOr0~combout\,
	combout => \mux_shift|m_out[2]~88_combout\);

-- Location: LCCOMB_X61_Y37_N30
\mux_shift|m_out[2]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[2]~89_combout\ = (\actr|alu_ctr~25_combout\ & ((\actr|alu_ctr~24_combout\ & ((\ir|sr_out\(8)))) # (!\actr|alu_ctr~24_combout\ & (\mux_shift|m_out[2]~88_combout\)))) # (!\actr|alu_ctr~25_combout\ & (((\mux_shift|m_out[2]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \actr|alu_ctr~24_combout\,
	datac => \mux_shift|m_out[2]~88_combout\,
	datad => \ir|sr_out\(8),
	combout => \mux_shift|m_out[2]~89_combout\);

-- Location: LCCOMB_X57_Y38_N4
\alu|ShiftRight0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~55_combout\ = (\mux_shift|m_out[2]~89_combout\ & (!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftRight0~53_combout\) # (\alu|ShiftRight0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~53_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_ulaB|Equal2~2_combout\,
	datad => \alu|ShiftRight0~54_combout\,
	combout => \alu|ShiftRight0~55_combout\);

-- Location: LCCOMB_X54_Y38_N26
\alu|ShiftRight0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~60_combout\ = (\alu|ShiftRight0~55_combout\) # ((\mux_shift|m_out[2]~89_combout\ & (\mux_ulaB|m_out[31]~31_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \mux_ulaB|m_out[31]~31_combout\,
	datac => \alu|ShiftRight0~55_combout\,
	datad => \alu|ShiftRight0~59_combout\,
	combout => \alu|ShiftRight0~60_combout\);

-- Location: LCCOMB_X62_Y38_N8
\alu|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~0_combout\ = (!\alu|Mux29~19_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight0~60_combout\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight1~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftRight0~60_combout\,
	datac => \alu|Mux29~19_combout\,
	datad => \alu|ShiftRight1~47_combout\,
	combout => \alu|Mux23~0_combout\);

-- Location: LCCOMB_X62_Y38_N14
\alu|a32~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~17_combout\ = \mux_ulaB|m_out[8]~30_combout\ $ (\mux_shift|m_out[8]~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_ulaB|m_out[8]~30_combout\,
	datac => \mux_shift|m_out[8]~72_combout\,
	combout => \alu|a32~17_combout\);

-- Location: LCCOMB_X62_Y38_N20
\alu|Mux23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~1_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[8]~72_combout\ & \mux_ulaB|m_out[8]~30_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[8]~72_combout\) # (\mux_ulaB|m_out[8]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \mux_shift|m_out[8]~72_combout\,
	datac => \mux_ulaB|m_out[8]~30_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux23~1_combout\);

-- Location: LCCOMB_X59_Y39_N12
\alu|Mux23~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~2_combout\ = (\alu|Mux23~1_combout\ & (((\alu|Add1~16_combout\) # (!\alu|Mux29~7_combout\)))) # (!\alu|Mux23~1_combout\ & (\alu|ShiftRight1~96_combout\ & (\alu|Mux29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~96_combout\,
	datab => \alu|Mux23~1_combout\,
	datac => \alu|Mux29~7_combout\,
	datad => \alu|Add1~16_combout\,
	combout => \alu|Mux23~2_combout\);

-- Location: LCCOMB_X59_Y39_N22
\alu|Mux23~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~3_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[8]~16_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux23~2_combout\))))) # (!\alu|Mux29~5_combout\ & (((!\alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[8]~16_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|Mux23~2_combout\,
	combout => \alu|Mux23~3_combout\);

-- Location: LCCOMB_X59_Y42_N2
\alu|Mux23~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~4_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux23~3_combout\ & (\alu|ShiftRight0~128_combout\)) # (!\alu|Mux23~3_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~128_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux23~3_combout\,
	combout => \alu|Mux23~4_combout\);

-- Location: LCCOMB_X62_Y38_N2
\alu|Mux23~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~5_combout\ = (\alu|Mux23~4_combout\ & ((!\alu|Mux29~4_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \alu|Mux29~4_combout\,
	datad => \alu|Mux23~4_combout\,
	combout => \alu|Mux23~5_combout\);

-- Location: LCCOMB_X62_Y38_N22
\alu|Mux23~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~7_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux23~6_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux23~6_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux23~5_combout\,
	combout => \alu|Mux23~7_combout\);

-- Location: LCCOMB_X62_Y38_N12
\alu|Mux23~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~8_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux23~7_combout\ & ((\alu|a32~17_combout\))) # (!\alu|Mux23~7_combout\ & (\alu|ShiftLeft0~75_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~75_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|a32~17_combout\,
	datad => \alu|Mux23~7_combout\,
	combout => \alu|Mux23~8_combout\);

-- Location: LCCOMB_X62_Y38_N30
\alu|Mux23~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux23~9_combout\ = (\alu|Mux23~0_combout\) # ((\alu|Mux29~19_combout\ & \alu|Mux23~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux23~0_combout\,
	datad => \alu|Mux23~8_combout\,
	combout => \alu|Mux23~9_combout\);

-- Location: LCCOMB_X63_Y34_N8
\pc|sr_out[8]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[8]~22_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(8))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux23~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(8),
	datab => \alu|Mux23~9_combout\,
	datad => \ctr_mips|pstate.branch_ex_st~regout\,
	combout => \pc|sr_out[8]~22_combout\);

-- Location: LCFF_X63_Y34_N9
\pc|sr_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[8]~22_combout\,
	sdata => \ir|sr_out\(6),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(8));

-- Location: LCCOMB_X63_Y34_N10
\mux_mem|m_out[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[8]~6_combout\ = (!\ctr_mips|pstate.writemem_st~regout\ & (\pc|sr_out\(8) & !\ctr_mips|pstate.readmem_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.writemem_st~regout\,
	datac => \pc|sr_out\(8),
	datad => \ctr_mips|pstate.readmem_st~regout\,
	combout => \mux_mem|m_out[8]~6_combout\);

-- Location: LCFF_X62_Y37_N29
\ir|sr_out[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(9));

-- Location: LCCOMB_X58_Y40_N24
\mux_shift|m_out[3]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[3]~91_combout\ = (\actr|alu_ctr~25_combout\ & ((\actr|alu_ctr~24_combout\ & (\ir|sr_out\(9))) # (!\actr|alu_ctr~24_combout\ & ((\mux_shift|m_out[3]~90_combout\))))) # (!\actr|alu_ctr~25_combout\ & (((\mux_shift|m_out[3]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~25_combout\,
	datab => \ir|sr_out\(9),
	datac => \actr|alu_ctr~24_combout\,
	datad => \mux_shift|m_out[3]~90_combout\,
	combout => \mux_shift|m_out[3]~91_combout\);

-- Location: LCCOMB_X57_Y39_N28
\alu|ShiftLeft0~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~72_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~160_combout\))) # (!\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftLeft0~161_combout\,
	datad => \alu|ShiftLeft0~160_combout\,
	combout => \alu|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X56_Y36_N10
\alu|ShiftRight0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~44_combout\ = (\mux_shift|m_out[1]~86_combout\ & (((\mux_ulaB|m_out[14]~20_combout\)))) # (!\mux_shift|m_out[1]~86_combout\ & ((\mux_shift|m_out[1]~94_combout\ & (\mux_ulaB|m_out[14]~20_combout\)) # (!\mux_shift|m_out[1]~94_combout\ & 
-- ((\mux_ulaB|m_out[12]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~86_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_ulaB|m_out[14]~20_combout\,
	datad => \mux_ulaB|m_out[12]~22_combout\,
	combout => \alu|ShiftRight0~44_combout\);

-- Location: LCCOMB_X56_Y36_N8
\alu|ShiftRight1~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~117_combout\ = (\mux_shift|m_out[0]~82_combout\ & (((\alu|ShiftRight0~44_combout\)))) # (!\mux_shift|m_out[0]~82_combout\ & ((\mux_shift|m_out[0]~93_combout\ & ((\alu|ShiftRight0~44_combout\))) # (!\mux_shift|m_out[0]~93_combout\ & 
-- (\alu|ShiftRight1~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight1~77_combout\,
	datad => \alu|ShiftRight0~44_combout\,
	combout => \alu|ShiftRight1~117_combout\);

-- Location: LCCOMB_X60_Y38_N12
\alu|Mux27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~1_combout\ = (\mux_shift|m_out[3]~91_combout\) # ((!\alu|ShiftLeft0~52_combout\) # (!\alu|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|Mux27~0_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux27~1_combout\);

-- Location: LCCOMB_X60_Y38_N8
\alu|Mux27~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux27~7_combout\ = (\alu|Mux27~1_combout\ & (((\alu|Mux27~6_combout\) # (!\alu|Mux29~4_combout\)) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~1_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux27~6_combout\,
	combout => \alu|Mux27~7_combout\);

-- Location: LCCOMB_X62_Y40_N28
\alu|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[7]~75_combout\ & \mux_ulaB|m_out[7]~8_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[7]~75_combout\) # (\mux_ulaB|m_out[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \mux_shift|m_out[7]~75_combout\,
	datad => \mux_ulaB|m_out[7]~8_combout\,
	combout => \alu|Mux24~0_combout\);

-- Location: LCCOMB_X59_Y38_N8
\alu|Mux24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~1_combout\ = (\alu|Mux29~7_combout\ & ((\alu|Mux24~0_combout\ & ((\alu|Add1~14_combout\))) # (!\alu|Mux24~0_combout\ & (\alu|ShiftRight1~95_combout\)))) # (!\alu|Mux29~7_combout\ & (((\alu|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~7_combout\,
	datab => \alu|ShiftRight1~95_combout\,
	datac => \alu|Add1~14_combout\,
	datad => \alu|Mux24~0_combout\,
	combout => \alu|Mux24~1_combout\);

-- Location: LCCOMB_X59_Y38_N30
\alu|Mux24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~2_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[7]~14_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux24~1_combout\))))) # (!\alu|Mux29~5_combout\ & (((!\alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[7]~14_combout\,
	datab => \alu|Mux29~5_combout\,
	datac => \alu|Mux24~1_combout\,
	datad => \alu|Mux29~6_combout\,
	combout => \alu|Mux24~2_combout\);

-- Location: LCCOMB_X59_Y38_N28
\alu|Mux24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux24~2_combout\ & (\alu|ShiftRight0~127_combout\)) # (!\alu|Mux24~2_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~127_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux24~2_combout\,
	combout => \alu|Mux24~3_combout\);

-- Location: LCCOMB_X59_Y38_N10
\alu|Mux24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~4_combout\ = (\alu|Mux27~6_combout\ & ((\alu|ShiftRight0~103_combout\) # ((!\alu|Mux27~7_combout\)))) # (!\alu|Mux27~6_combout\ & (((\alu|Mux27~7_combout\ & \alu|Mux24~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~103_combout\,
	datab => \alu|Mux27~6_combout\,
	datac => \alu|Mux27~7_combout\,
	datad => \alu|Mux24~3_combout\,
	combout => \alu|Mux24~4_combout\);

-- Location: LCCOMB_X59_Y38_N12
\alu|Mux24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~5_combout\ = (\alu|Mux27~1_combout\ & (((\alu|Mux24~4_combout\)))) # (!\alu|Mux27~1_combout\ & ((\alu|Mux24~4_combout\ & ((\alu|ShiftRight1~117_combout\))) # (!\alu|Mux24~4_combout\ & (\alu|ShiftRight1~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~116_combout\,
	datab => \alu|ShiftRight1~117_combout\,
	datac => \alu|Mux27~1_combout\,
	datad => \alu|Mux24~4_combout\,
	combout => \alu|Mux24~5_combout\);

-- Location: LCCOMB_X59_Y38_N2
\alu|Mux24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~7_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux24~6_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux24~6_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux24~5_combout\,
	combout => \alu|Mux24~7_combout\);

-- Location: LCCOMB_X63_Y38_N2
\alu|Mux24\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux24~combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux24~7_combout\ & (\alu|a32~16_combout\)) # (!\alu|Mux24~7_combout\ & ((\alu|ShiftLeft0~72_combout\))))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~16_combout\,
	datab => \alu|ShiftLeft0~72_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux24~7_combout\,
	combout => \alu|Mux24~combout\);

-- Location: LCFF_X63_Y38_N3
\regULA|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux24~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(7));

-- Location: LCCOMB_X63_Y34_N26
\pc|sr_out[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[7]~23_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(7))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux24~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(7),
	datad => \alu|Mux24~combout\,
	combout => \pc|sr_out[7]~23_combout\);

-- Location: LCFF_X63_Y34_N27
\pc|sr_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[7]~23_combout\,
	sdata => \ir|sr_out\(5),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(7));

-- Location: LCCOMB_X63_Y34_N4
\mux_mem|m_out[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[7]~5_combout\ = (\ctr_mips|pstate.readmem_st~regout\) # ((\ctr_mips|pstate.writemem_st~regout\) # (\pc|sr_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datac => \ctr_mips|pstate.writemem_st~regout\,
	datad => \pc|sr_out\(7),
	combout => \mux_mem|m_out[7]~5_combout\);

-- Location: LCFF_X65_Y38_N3
\ir|sr_out[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(26),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(26));

-- Location: LCCOMB_X66_Y37_N28
\ctr_mips|nstate.rtype_ex_st~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.rtype_ex_st~2_combout\ = (!\ir|sr_out\(29) & (!\ir|sr_out\(28) & (\ctr_mips|pstate.decode_st~regout\ & !\ir|sr_out\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(28),
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|nstate.rtype_ex_st~2_combout\);

-- Location: LCCOMB_X66_Y37_N0
\ctr_mips|nstate.jump_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.jump_ex_st~0_combout\ = (\ir|sr_out\(27) & (\ctr_mips|nstate.rtype_ex_st~2_combout\ & (!\ir|sr_out\(30) & !\ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(27),
	datab => \ctr_mips|nstate.rtype_ex_st~2_combout\,
	datac => \ir|sr_out\(30),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|nstate.jump_ex_st~0_combout\);

-- Location: LCFF_X66_Y37_N1
\ctr_mips|pstate.jump_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.jump_ex_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.jump_ex_st~regout\);

-- Location: LCFF_X62_Y38_N5
\pc|sr_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[6]~24_combout\,
	sdata => \ir|sr_out\(4),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(6));

-- Location: LCCOMB_X62_Y38_N6
\mux_mem|m_out[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[6]~4_combout\ = (\ctr_mips|pstate.writemem_st~regout\ & (((\alu|Mux23~9_combout\)))) # (!\ctr_mips|pstate.writemem_st~regout\ & ((\ctr_mips|pstate.readmem_st~regout\ & ((\alu|Mux23~9_combout\))) # (!\ctr_mips|pstate.readmem_st~regout\ & 
-- (\pc|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.writemem_st~regout\,
	datab => \ctr_mips|pstate.readmem_st~regout\,
	datac => \pc|sr_out\(6),
	datad => \alu|Mux23~9_combout\,
	combout => \mux_mem|m_out[6]~4_combout\);

-- Location: LCFF_X61_Y37_N13
\ir|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(3));

-- Location: LCCOMB_X62_Y37_N30
\mux_ulaB|m_out[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[5]~12_combout\ = (\ctr_mips|WideNor0~0_combout\ & (\mux_ulaB|m_out[5]~11_combout\)) # (!\ctr_mips|WideNor0~0_combout\ & (((\ir|sr_out\(3) & !\mux_ulaB|m_out[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[5]~11_combout\,
	datab => \ctr_mips|WideNor0~0_combout\,
	datac => \ir|sr_out\(3),
	datad => \mux_ulaB|m_out[2]~3_combout\,
	combout => \mux_ulaB|m_out[5]~12_combout\);

-- Location: LCCOMB_X62_Y40_N16
\alu|a32~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~14_combout\ = \mux_ulaB|m_out[5]~12_combout\ $ (\mux_shift|m_out[5]~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_ulaB|m_out[5]~12_combout\,
	datad => \mux_shift|m_out[5]~77_combout\,
	combout => \alu|a32~14_combout\);

-- Location: LCCOMB_X61_Y39_N22
\alu|ShiftRight0~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~91_combout\ = (\mux_shift|m_out[2]~89_combout\ & (((\alu|ShiftRight0~118_combout\)))) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight0~65_combout\) # ((\alu|ShiftRight0~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[2]~89_combout\,
	datab => \alu|ShiftRight0~65_combout\,
	datac => \alu|ShiftRight0~118_combout\,
	datad => \alu|ShiftRight0~120_combout\,
	combout => \alu|ShiftRight0~91_combout\);

-- Location: LCCOMB_X61_Y39_N8
\alu|ShiftRight0~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~92_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\alu|ShiftRight0~90_combout\)) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~90_combout\,
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight0~91_combout\,
	combout => \alu|ShiftRight0~92_combout\);

-- Location: LCCOMB_X61_Y39_N0
\alu|ShiftRight0~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~126_combout\ = (\alu|ShiftRight0~92_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \alu|ShiftRight0~92_combout\,
	datad => \ctr_mips|pstate.c_mem_add_st~regout\,
	combout => \alu|ShiftRight0~126_combout\);

-- Location: LCCOMB_X61_Y40_N2
\alu|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~0_combout\ = (\actr|alu_ctr[1]~31_combout\ & (((\actr|alu_ctr[0]~32_combout\)))) # (!\actr|alu_ctr[1]~31_combout\ & ((\mux_shift|m_out[5]~77_combout\ & ((\mux_ulaB|m_out[5]~12_combout\) # (!\actr|alu_ctr[0]~32_combout\))) # 
-- (!\mux_shift|m_out[5]~77_combout\ & (!\actr|alu_ctr[0]~32_combout\ & \mux_ulaB|m_out[5]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[5]~77_combout\,
	datab => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \mux_ulaB|m_out[5]~12_combout\,
	combout => \alu|Mux26~0_combout\);

-- Location: LCCOMB_X60_Y40_N18
\alu|ShiftRight1~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~90_combout\ = (\alu|ShiftRight1~55_combout\ & ((\alu|ShiftRight1~104_combout\) # ((\alu|ShiftRight1~58_combout\) # (\alu|ShiftRight1~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~104_combout\,
	datab => \alu|ShiftRight1~58_combout\,
	datac => \alu|ShiftRight1~55_combout\,
	datad => \alu|ShiftRight1~103_combout\,
	combout => \alu|ShiftRight1~90_combout\);

-- Location: LCCOMB_X60_Y40_N24
\alu|ShiftRight1~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~91_combout\ = (\alu|ShiftRight1~90_combout\) # ((\alu|ShiftRight1~62_combout\) # ((\alu|ShiftRight1~63_combout\ & \alu|ShiftRight0~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~63_combout\,
	datab => \alu|ShiftRight1~90_combout\,
	datac => \alu|ShiftRight1~62_combout\,
	datad => \alu|ShiftRight0~91_combout\,
	combout => \alu|ShiftRight1~91_combout\);

-- Location: LCCOMB_X60_Y40_N30
\alu|Mux26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~1_combout\ = (\alu|Mux26~0_combout\ & ((\alu|Add1~10_combout\) # ((!\alu|Mux29~7_combout\)))) # (!\alu|Mux26~0_combout\ & (((\alu|ShiftRight1~91_combout\ & \alu|Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Add1~10_combout\,
	datab => \alu|Mux26~0_combout\,
	datac => \alu|ShiftRight1~91_combout\,
	datad => \alu|Mux29~7_combout\,
	combout => \alu|Mux26~1_combout\);

-- Location: LCCOMB_X60_Y40_N0
\alu|Mux26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~2_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[5]~10_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux26~1_combout\))))) # (!\alu|Mux29~5_combout\ & (((!\alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|tmp[5]~10_combout\,
	datac => \alu|Mux29~6_combout\,
	datad => \alu|Mux26~1_combout\,
	combout => \alu|Mux26~2_combout\);

-- Location: LCCOMB_X60_Y40_N10
\alu|Mux26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux26~2_combout\ & ((\alu|ShiftRight0~126_combout\))) # (!\alu|Mux26~2_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|ShiftRight0~126_combout\,
	datad => \alu|Mux26~2_combout\,
	combout => \alu|Mux26~3_combout\);

-- Location: LCCOMB_X60_Y40_N12
\alu|Mux26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~4_combout\ = (\alu|Mux27~6_combout\ & ((\alu|ShiftRight0~94_combout\) # ((!\alu|Mux27~7_combout\)))) # (!\alu|Mux27~6_combout\ & (((\alu|Mux27~7_combout\ & \alu|Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~94_combout\,
	datab => \alu|Mux27~6_combout\,
	datac => \alu|Mux27~7_combout\,
	datad => \alu|Mux26~3_combout\,
	combout => \alu|Mux26~4_combout\);

-- Location: LCCOMB_X60_Y40_N26
\alu|Mux26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~5_combout\ = (\alu|Mux27~1_combout\ & (((\alu|Mux26~4_combout\)))) # (!\alu|Mux27~1_combout\ & ((\alu|Mux26~4_combout\ & ((\alu|ShiftRight0~123_combout\))) # (!\alu|Mux26~4_combout\ & (\alu|ShiftRight0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~1_combout\,
	datab => \alu|ShiftRight0~122_combout\,
	datac => \alu|ShiftRight0~123_combout\,
	datad => \alu|Mux26~4_combout\,
	combout => \alu|Mux26~5_combout\);

-- Location: LCCOMB_X63_Y38_N22
\alu|Mux26~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~7_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux26~6_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux26~6_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux26~5_combout\,
	combout => \alu|Mux26~7_combout\);

-- Location: LCCOMB_X63_Y38_N12
\alu|Mux26\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux26~combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux26~7_combout\ & ((\alu|a32~14_combout\))) # (!\alu|Mux26~7_combout\ & (\alu|ShiftLeft0~68_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux26~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~68_combout\,
	datab => \alu|a32~14_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux26~7_combout\,
	combout => \alu|Mux26~combout\);

-- Location: LCCOMB_X63_Y38_N8
\pc|sr_out[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[5]~25_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(5))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux26~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(5),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux26~combout\,
	combout => \pc|sr_out[5]~25_combout\);

-- Location: LCFF_X63_Y38_N9
\pc|sr_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[5]~25_combout\,
	sdata => \ir|sr_out\(3),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(5));

-- Location: LCCOMB_X63_Y38_N16
\mux_mem|m_out[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[5]~3_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\alu|Mux24~combout\)))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & ((\alu|Mux24~combout\))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- (\pc|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \pc|sr_out\(5),
	datad => \alu|Mux24~combout\,
	combout => \mux_mem|m_out[5]~3_combout\);

-- Location: LCFF_X65_Y38_N31
\ir|sr_out[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(30),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(30));

-- Location: LCCOMB_X65_Y38_N30
\ctr_mips|nstate.arith_imm_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.arith_imm_st~0_combout\ = (!\ir|sr_out\(27) & (!\ir|sr_out\(31) & !\ir|sr_out\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(27),
	datab => \ir|sr_out\(31),
	datac => \ir|sr_out\(30),
	combout => \ctr_mips|nstate.arith_imm_st~0_combout\);

-- Location: LCCOMB_X65_Y38_N26
\ctr_mips|nstate.branch_ex_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.branch_ex_st~0_combout\ = (!\ir|sr_out\(29) & (\ctr_mips|pstate.decode_st~regout\ & (\ir|sr_out\(28) & \ctr_mips|nstate.arith_imm_st~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ir|sr_out\(28),
	datad => \ctr_mips|nstate.arith_imm_st~0_combout\,
	combout => \ctr_mips|nstate.branch_ex_st~0_combout\);

-- Location: LCFF_X61_Y37_N19
\ctr_mips|pstate.branch_ex_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \ctr_mips|nstate.branch_ex_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.branch_ex_st~regout\);

-- Location: LCCOMB_X60_Y36_N30
\actr|alu_ctr[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[2]~26_combout\ = (\actr|alu_ctr[2]~33_combout\) # ((\ctr_mips|pstate.branch_ex_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \actr|alu_ctr[2]~33_combout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \actr|alu_ctr[2]~26_combout\);

-- Location: LCCOMB_X56_Y39_N28
\alu|Mux29~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~2_combout\ = (\actr|alu_ctr[1]~31_combout\) # ((\actr|alu_ctr[2]~26_combout\) # (!\actr|alu_ctr[3]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \actr|alu_ctr[3]~29_combout\,
	combout => \alu|Mux29~2_combout\);

-- Location: LCCOMB_X62_Y38_N0
\alu|Mux29~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~3_combout\ = (!\alu|Mux29~2_combout\ & ((\alu|ShiftLeft0~52_combout\) # (!\actr|alu_ctr[0]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[0]~32_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux29~3_combout\);

-- Location: LCCOMB_X58_Y40_N26
\alu|a32~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~15_combout\ = \mux_shift|m_out[6]~76_combout\ $ (\mux_ulaB|m_out[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[6]~76_combout\,
	datac => \mux_ulaB|m_out[6]~10_combout\,
	combout => \alu|a32~15_combout\);

-- Location: LCCOMB_X56_Y37_N24
\alu|ShiftRight1~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~75_combout\ = (\mux_shift|m_out[1]~94_combout\ & (((\mux_ulaB|m_out[9]~26_combout\)))) # (!\mux_shift|m_out[1]~94_combout\ & ((\mux_shift|m_out[1]~86_combout\ & ((\mux_ulaB|m_out[9]~26_combout\))) # (!\mux_shift|m_out[1]~86_combout\ & 
-- (\mux_ulaB|m_out[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[7]~8_combout\,
	datab => \mux_shift|m_out[1]~94_combout\,
	datac => \mux_shift|m_out[1]~86_combout\,
	datad => \mux_ulaB|m_out[9]~26_combout\,
	combout => \alu|ShiftRight1~75_combout\);

-- Location: LCCOMB_X56_Y37_N30
\alu|ShiftRight1~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~74_combout\ = (!\mux_shift|m_out[0]~83_combout\ & ((\mux_shift|m_out[1]~87_combout\ & ((\mux_ulaB|m_out[8]~30_combout\))) # (!\mux_shift|m_out[1]~87_combout\ & (\mux_ulaB|m_out[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[1]~87_combout\,
	datab => \mux_shift|m_out[0]~83_combout\,
	datac => \mux_ulaB|m_out[6]~10_combout\,
	datad => \mux_ulaB|m_out[8]~30_combout\,
	combout => \alu|ShiftRight1~74_combout\);

-- Location: LCCOMB_X56_Y37_N20
\alu|ShiftRight1~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~109_combout\ = (\alu|ShiftRight1~74_combout\) # ((\alu|ShiftRight1~75_combout\ & ((\mux_shift|m_out[0]~82_combout\) # (\mux_shift|m_out[0]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[0]~82_combout\,
	datab => \mux_shift|m_out[0]~93_combout\,
	datac => \alu|ShiftRight1~75_combout\,
	datad => \alu|ShiftRight1~74_combout\,
	combout => \alu|ShiftRight1~109_combout\);

-- Location: LCCOMB_X59_Y41_N14
\alu|Mux25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~1_combout\ = (\alu|Mux25~0_combout\ & (((\alu|Add1~12_combout\)) # (!\alu|Mux29~7_combout\))) # (!\alu|Mux25~0_combout\ & (\alu|Mux29~7_combout\ & (\alu|ShiftRight1~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~0_combout\,
	datab => \alu|Mux29~7_combout\,
	datac => \alu|ShiftRight1~93_combout\,
	datad => \alu|Add1~12_combout\,
	combout => \alu|Mux25~1_combout\);

-- Location: LCCOMB_X59_Y41_N12
\alu|Mux25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~2_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & ((\alu|tmp[6]~12_combout\))) # (!\alu|Mux29~6_combout\ & (\alu|Mux25~1_combout\)))) # (!\alu|Mux29~5_combout\ & (!\alu|Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|Mux29~6_combout\,
	datac => \alu|Mux25~1_combout\,
	datad => \alu|tmp[6]~12_combout\,
	combout => \alu|Mux25~2_combout\);

-- Location: LCCOMB_X59_Y41_N2
\alu|Mux25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux25~2_combout\ & (\alu|ShiftRight0~97_combout\)) # (!\alu|Mux25~2_combout\ & ((\mux_ulaB|m_out[31]~36_combout\))))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~97_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux29~4_combout\,
	datad => \alu|Mux25~2_combout\,
	combout => \alu|Mux25~3_combout\);

-- Location: LCCOMB_X59_Y41_N0
\alu|Mux25~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~4_combout\ = (\alu|Mux27~6_combout\ & ((\alu|ShiftRight0~99_combout\) # ((!\alu|Mux27~7_combout\)))) # (!\alu|Mux27~6_combout\ & (((\alu|Mux27~7_combout\ & \alu|Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~99_combout\,
	datab => \alu|Mux27~6_combout\,
	datac => \alu|Mux27~7_combout\,
	datad => \alu|Mux25~3_combout\,
	combout => \alu|Mux25~4_combout\);

-- Location: LCCOMB_X59_Y41_N22
\alu|Mux25~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~5_combout\ = (\alu|Mux27~1_combout\ & (((\alu|Mux25~4_combout\)))) # (!\alu|Mux27~1_combout\ & ((\alu|Mux25~4_combout\ & (\alu|ShiftRight1~111_combout\)) # (!\alu|Mux25~4_combout\ & ((\alu|ShiftRight1~109_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~1_combout\,
	datab => \alu|ShiftRight1~111_combout\,
	datac => \alu|ShiftRight1~109_combout\,
	datad => \alu|Mux25~4_combout\,
	combout => \alu|Mux25~5_combout\);

-- Location: LCCOMB_X59_Y41_N20
\alu|Mux25~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~7_combout\ = (\alu|Mux29~14_combout\ & (((!\alu|Mux29~2_combout\)) # (!\alu|Mux25~6_combout\))) # (!\alu|Mux29~14_combout\ & (((\alu|Mux29~2_combout\ & \alu|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~6_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux29~2_combout\,
	datad => \alu|Mux25~5_combout\,
	combout => \alu|Mux25~7_combout\);

-- Location: LCCOMB_X62_Y38_N28
\alu|Mux25\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux25~combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux25~7_combout\ & ((\alu|a32~15_combout\))) # (!\alu|Mux25~7_combout\ & (\alu|ShiftLeft0~70_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~70_combout\,
	datab => \alu|Mux29~3_combout\,
	datac => \alu|a32~15_combout\,
	datad => \alu|Mux25~7_combout\,
	combout => \alu|Mux25~combout\);

-- Location: LCCOMB_X62_Y38_N16
\mux_mem|m_out[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[4]~2_combout\ = (\ctr_mips|pstate.writemem_st~regout\ & (((\alu|Mux25~combout\)))) # (!\ctr_mips|pstate.writemem_st~regout\ & ((\ctr_mips|pstate.readmem_st~regout\ & ((\alu|Mux25~combout\))) # (!\ctr_mips|pstate.readmem_st~regout\ & 
-- (\pc|sr_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(4),
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \ctr_mips|pstate.readmem_st~regout\,
	datad => \alu|Mux25~combout\,
	combout => \mux_mem|m_out[4]~2_combout\);

-- Location: LCFF_X61_Y37_N15
\ir|sr_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(4));

-- Location: LCCOMB_X62_Y41_N12
\actr|alu_ctr[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~34_combout\ = (\ir|sr_out\(1) & ((\ir|sr_out\(2)) # ((!\ir|sr_out\(5) & \ir|sr_out\(3))))) # (!\ir|sr_out\(1) & (((\ir|sr_out\(3)) # (!\ir|sr_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(2),
	datab => \ir|sr_out\(5),
	datac => \ir|sr_out\(1),
	datad => \ir|sr_out\(3),
	combout => \actr|alu_ctr[3]~34_combout\);

-- Location: LCCOMB_X59_Y42_N0
\actr|alu_ctr[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~35_combout\ = (\actr|alu_ctr[3]~34_combout\) # ((\ir|sr_out\(0) & (!\ir|sr_out\(2) & \ir|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(0),
	datab => \ir|sr_out\(2),
	datac => \ir|sr_out\(5),
	datad => \actr|alu_ctr[3]~34_combout\,
	combout => \actr|alu_ctr[3]~35_combout\);

-- Location: LCCOMB_X59_Y42_N20
\actr|alu_ctr[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \actr|alu_ctr[3]~29_combout\ = (\ctr_mips|pstate.rtype_ex_st~regout\ & ((\ir|sr_out\(4)) # (\actr|alu_ctr[3]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.rtype_ex_st~regout\,
	datac => \ir|sr_out\(4),
	datad => \actr|alu_ctr[3]~35_combout\,
	combout => \actr|alu_ctr[3]~29_combout\);

-- Location: LCCOMB_X59_Y40_N22
\alu|Mux29~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux29~19_combout\ = ((\actr|alu_ctr[3]~29_combout\) # (!\alu|ShiftLeft0~52_combout\)) # (!\alu|Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~0_combout\,
	datab => \actr|alu_ctr[3]~29_combout\,
	datad => \alu|ShiftLeft0~52_combout\,
	combout => \alu|Mux29~19_combout\);

-- Location: LCCOMB_X56_Y37_N10
\alu|Mux28~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~8_combout\ = (\alu|Mux29~21_combout\ & (((!\alu|ShiftRight0~70_combout\)))) # (!\alu|Mux29~21_combout\ & ((\alu|ShiftRight0~70_combout\ & ((\alu|ShiftRight1~53_combout\))) # (!\alu|ShiftRight0~70_combout\ & (\alu|ShiftRight1~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight1~116_combout\,
	datab => \alu|ShiftRight1~53_combout\,
	datac => \alu|Mux29~21_combout\,
	datad => \alu|ShiftRight0~70_combout\,
	combout => \alu|Mux28~8_combout\);

-- Location: LCCOMB_X56_Y37_N28
\alu|Mux28~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~9_combout\ = (\alu|Mux29~21_combout\ & ((\alu|Mux28~8_combout\ & (\alu|ShiftRight0~84_combout\)) # (!\alu|Mux28~8_combout\ & ((\alu|ShiftRight1~52_combout\))))) # (!\alu|Mux29~21_combout\ & (((\alu|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftRight0~84_combout\,
	datab => \alu|ShiftRight1~52_combout\,
	datac => \alu|Mux29~21_combout\,
	datad => \alu|Mux28~8_combout\,
	combout => \alu|Mux28~9_combout\);

-- Location: LCCOMB_X58_Y39_N26
\alu|a32~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|a32~12_combout\ = \mux_ulaB|m_out[3]~4_combout\ $ (((\actr|alu_ctr~30_combout\ & (\ir|sr_out\(9))) # (!\actr|alu_ctr~30_combout\ & ((\mux_shift|m_out[3]~90_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr~30_combout\,
	datab => \ir|sr_out\(9),
	datac => \mux_ulaB|m_out[3]~4_combout\,
	datad => \mux_shift|m_out[3]~90_combout\,
	combout => \alu|a32~12_combout\);

-- Location: LCCOMB_X58_Y39_N20
\alu|Mux28~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~5_combout\ = (!\mux_shift|m_out[3]~91_combout\ & (!\mux_ulaB|m_out[3]~4_combout\ & (\actr|alu_ctr[0]~32_combout\ & !\actr|alu_ctr[1]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_ulaB|m_out[3]~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux28~5_combout\);

-- Location: LCCOMB_X58_Y39_N2
\alu|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~0_combout\ = (\actr|alu_ctr[0]~32_combout\ & ((\actr|alu_ctr[1]~31_combout\) # ((\mux_shift|m_out[3]~91_combout\ & \mux_ulaB|m_out[3]~4_combout\)))) # (!\actr|alu_ctr[0]~32_combout\ & (!\actr|alu_ctr[1]~31_combout\ & 
-- ((\mux_shift|m_out[3]~91_combout\) # (\mux_ulaB|m_out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_ulaB|m_out[3]~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \actr|alu_ctr[1]~31_combout\,
	combout => \alu|Mux28~0_combout\);

-- Location: LCCOMB_X58_Y39_N24
\alu|Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~1_combout\ = (\alu|Mux29~7_combout\ & ((\alu|Mux28~0_combout\ & (\alu|Add1~6_combout\)) # (!\alu|Mux28~0_combout\ & ((\alu|ShiftRight1~82_combout\))))) # (!\alu|Mux29~7_combout\ & (\alu|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~7_combout\,
	datab => \alu|Mux28~0_combout\,
	datac => \alu|Add1~6_combout\,
	datad => \alu|ShiftRight1~82_combout\,
	combout => \alu|Mux28~1_combout\);

-- Location: LCCOMB_X58_Y39_N14
\alu|Mux28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~2_combout\ = (\alu|Mux29~5_combout\ & ((\alu|Mux29~6_combout\ & (\alu|tmp[3]~6_combout\)) # (!\alu|Mux29~6_combout\ & ((\alu|Mux28~1_combout\))))) # (!\alu|Mux29~5_combout\ & (((!\alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~5_combout\,
	datab => \alu|tmp[3]~6_combout\,
	datac => \alu|Mux28~1_combout\,
	datad => \alu|Mux29~6_combout\,
	combout => \alu|Mux28~2_combout\);

-- Location: LCCOMB_X58_Y38_N22
\alu|ShiftRight0~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~80_combout\ = (\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftRight1~112_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftRight1~112_combout\,
	combout => \alu|ShiftRight0~80_combout\);

-- Location: LCCOMB_X54_Y38_N6
\alu|ShiftRight0~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~83_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\alu|ShiftRight0~80_combout\) # ((!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datab => \mux_shift|m_out[3]~91_combout\,
	datac => \alu|ShiftRight0~82_combout\,
	datad => \alu|ShiftRight0~80_combout\,
	combout => \alu|ShiftRight0~83_combout\);

-- Location: LCCOMB_X54_Y38_N0
\alu|ShiftRight0~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~125_combout\ = (\alu|ShiftRight0~83_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \alu|ShiftRight0~83_combout\,
	combout => \alu|ShiftRight0~125_combout\);

-- Location: LCCOMB_X58_Y39_N12
\alu|Mux28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~3_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux28~2_combout\ & ((\alu|ShiftRight0~125_combout\))) # (!\alu|Mux28~2_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|Mux28~2_combout\,
	datad => \alu|ShiftRight0~125_combout\,
	combout => \alu|Mux28~3_combout\);

-- Location: LCCOMB_X58_Y39_N10
\alu|Mux28~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~4_combout\ = (\alu|Mux28~3_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux28~3_combout\,
	combout => \alu|Mux28~4_combout\);

-- Location: LCCOMB_X58_Y39_N22
\alu|Mux28~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~6_combout\ = (\alu|Mux29~2_combout\ & ((\alu|Mux29~14_combout\ & (\alu|Mux28~5_combout\)) # (!\alu|Mux29~14_combout\ & ((\alu|Mux28~4_combout\))))) # (!\alu|Mux29~2_combout\ & (\alu|Mux29~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux29~14_combout\,
	datac => \alu|Mux28~5_combout\,
	datad => \alu|Mux28~4_combout\,
	combout => \alu|Mux28~6_combout\);

-- Location: LCCOMB_X58_Y39_N0
\alu|Mux28~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~7_combout\ = (\alu|Mux29~3_combout\ & ((\alu|Mux28~6_combout\ & ((\alu|a32~12_combout\))) # (!\alu|Mux28~6_combout\ & (\alu|ShiftLeft0~61_combout\)))) # (!\alu|Mux29~3_combout\ & (((\alu|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~61_combout\,
	datab => \alu|a32~12_combout\,
	datac => \alu|Mux29~3_combout\,
	datad => \alu|Mux28~6_combout\,
	combout => \alu|Mux28~7_combout\);

-- Location: LCCOMB_X58_Y39_N18
\alu|Mux28~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux28~10_combout\ = (\alu|Mux29~19_combout\ & ((\alu|Mux28~7_combout\))) # (!\alu|Mux29~19_combout\ & (\alu|Mux28~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|Mux29~19_combout\,
	datac => \alu|Mux28~9_combout\,
	datad => \alu|Mux28~7_combout\,
	combout => \alu|Mux28~10_combout\);

-- Location: LCFF_X58_Y39_N19
\regULA|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux28~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(3));

-- Location: LCCOMB_X61_Y40_N26
\pc|sr_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[3]~1_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(3))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux28~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(3),
	datad => \alu|Mux28~10_combout\,
	combout => \pc|sr_out[3]~1_combout\);

-- Location: LCFF_X61_Y40_N27
\pc|sr_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[3]~1_combout\,
	sdata => \ir|sr_out\(1),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(3));

-- Location: LCCOMB_X63_Y38_N18
\mux_mem|m_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[3]~1_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\alu|Mux26~combout\)))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & ((\alu|Mux26~combout\))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- (\pc|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \pc|sr_out\(3),
	datad => \alu|Mux26~combout\,
	combout => \mux_mem|m_out[3]~1_combout\);

-- Location: LCFF_X65_Y38_N25
\ir|sr_out[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(27),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(27));

-- Location: LCCOMB_X66_Y37_N4
\ctr_mips|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux7~0_combout\ = (\ir|sr_out\(29) & (!\ir|sr_out\(28) & ((\ir|sr_out\(26)) # (!\ir|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(28),
	datac => \ir|sr_out\(27),
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|Mux7~0_combout\);

-- Location: LCCOMB_X66_Y37_N20
\ctr_mips|nstate.writemem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.writemem_st~0_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (\ctr_mips|Mux7~0_combout\ & (!\ir|sr_out\(30) & \ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|Mux7~0_combout\,
	datac => \ir|sr_out\(30),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|nstate.writemem_st~0_combout\);

-- Location: LCFF_X66_Y37_N21
\ctr_mips|pstate.writemem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.writemem_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.writemem_st~regout\);

-- Location: LCCOMB_X63_Y38_N28
\mux_mem|m_out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_mem|m_out[2]~0_combout\ = (\ctr_mips|pstate.readmem_st~regout\ & (((\alu|Mux27~combout\)))) # (!\ctr_mips|pstate.readmem_st~regout\ & ((\ctr_mips|pstate.writemem_st~regout\ & ((\alu|Mux27~combout\))) # (!\ctr_mips|pstate.writemem_st~regout\ & 
-- (\pc|sr_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.readmem_st~regout\,
	datab => \ctr_mips|pstate.writemem_st~regout\,
	datac => \pc|sr_out\(2),
	datad => \alu|Mux27~combout\,
	combout => \mux_mem|m_out[2]~0_combout\);

-- Location: LCFF_X65_Y38_N15
\ir|sr_out[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(28),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(28));

-- Location: LCCOMB_X66_Y37_N26
\ctr_mips|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux6~0_combout\ = (\ir|sr_out\(29)) # ((\ir|sr_out\(27) & ((\ir|sr_out\(28)) # (!\ir|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(28),
	datac => \ir|sr_out\(27),
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y37_N10
\ctr_mips|nstate.readmem_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.readmem_st~0_combout\ = (\ctr_mips|pstate.c_mem_add_st~regout\ & (!\ctr_mips|Mux6~0_combout\ & (!\ir|sr_out\(30) & \ir|sr_out\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.c_mem_add_st~regout\,
	datab => \ctr_mips|Mux6~0_combout\,
	datac => \ir|sr_out\(30),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|nstate.readmem_st~0_combout\);

-- Location: LCFF_X66_Y37_N11
\ctr_mips|pstate.readmem_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.readmem_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.readmem_st~regout\);

-- Location: LCCOMB_X63_Y38_N14
\ctr_mips|pstate.ldreg_st~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|pstate.ldreg_st~feeder_combout\ = \ctr_mips|pstate.readmem_st~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctr_mips|pstate.readmem_st~regout\,
	combout => \ctr_mips|pstate.ldreg_st~feeder_combout\);

-- Location: LCFF_X63_Y38_N15
\ctr_mips|pstate.ldreg_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|pstate.ldreg_st~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.ldreg_st~regout\);

-- Location: LCFF_X60_Y42_N5
\regULA|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux31~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(0));

-- Location: LCCOMB_X63_Y40_N4
\breg_data_mux|m_out[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \breg_data_mux|m_out[0]~28_combout\ = (\ctr_mips|pstate.ldreg_st~regout\ & (\rdm|sr_out\(0))) # (!\ctr_mips|pstate.ldreg_st~regout\ & ((\regULA|sr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdm|sr_out\(0),
	datab => \ctr_mips|pstate.ldreg_st~regout\,
	datac => \regULA|sr_out\(0),
	combout => \breg_data_mux|m_out[0]~28_combout\);

-- Location: LCCOMB_X63_Y40_N30
\bcoreg|breg32_rtl_1_bypass[29]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|breg32_rtl_1_bypass[29]~feeder_combout\ = \breg_data_mux|m_out[18]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \breg_data_mux|m_out[18]~13_combout\,
	combout => \bcoreg|breg32_rtl_1_bypass[29]~feeder_combout\);

-- Location: LCFF_X63_Y40_N31
\bcoreg|breg32_rtl_1_bypass[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|breg32_rtl_1_bypass[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bcoreg|breg32_rtl_1_bypass\(29));

-- Location: LCCOMB_X63_Y40_N12
\bcoreg|regB[18]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[18]~31_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_1_bypass\(29)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|breg32~45_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a18\,
	datac => \bcoreg|Equal1~1_combout\,
	datad => \bcoreg|breg32_rtl_1_bypass\(29),
	combout => \bcoreg|regB[18]~31_combout\);

-- Location: LCFF_X63_Y40_N13
\rgB|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[18]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(18));

-- Location: LCCOMB_X65_Y38_N4
\ir|sr_out[31]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ir|sr_out[31]~feeder_combout\ = \mem|altsyncram_component|auto_generated|q_a\(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem|altsyncram_component|auto_generated|q_a\(31),
	combout => \ir|sr_out[31]~feeder_combout\);

-- Location: LCFF_X65_Y38_N5
\ir|sr_out[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ir|sr_out[31]~feeder_combout\,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(31));

-- Location: LCCOMB_X66_Y37_N2
\ctr_mips|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux5~0_combout\ = (\ir|sr_out\(26) & (\ir|sr_out\(31) & (\ir|sr_out\(27) & !\ir|sr_out\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(26),
	datab => \ir|sr_out\(31),
	datac => \ir|sr_out\(27),
	datad => \ir|sr_out\(28),
	combout => \ctr_mips|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y37_N6
\ctr_mips|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux5~2_combout\ = (!\ir|sr_out\(30) & ((\ctr_mips|Mux5~0_combout\) # ((\ctr_mips|Mux5~1_combout\ & !\ir|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|Mux5~1_combout\,
	datab => \ctr_mips|Mux5~0_combout\,
	datac => \ir|sr_out\(30),
	datad => \ir|sr_out\(27),
	combout => \ctr_mips|Mux5~2_combout\);

-- Location: LCCOMB_X62_Y35_N6
\ctr_mips|nstate.c_mem_add_st~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|nstate.c_mem_add_st~0_combout\ = (\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr_mips|pstate.decode_st~regout\,
	datad => \ctr_mips|Mux5~2_combout\,
	combout => \ctr_mips|nstate.c_mem_add_st~0_combout\);

-- Location: LCFF_X62_Y35_N7
\ctr_mips|pstate.c_mem_add_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|nstate.c_mem_add_st~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.c_mem_add_st~regout\);

-- Location: LCCOMB_X65_Y38_N2
\ctr_mips|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux0~0_combout\ = (\ir|sr_out\(28)) # ((\ir|sr_out\(26) & ((!\ir|sr_out\(31)))) # (!\ir|sr_out\(26) & ((\ir|sr_out\(29)) # (\ir|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(29),
	datab => \ir|sr_out\(28),
	datac => \ir|sr_out\(26),
	datad => \ir|sr_out\(31),
	combout => \ctr_mips|Mux0~0_combout\);

-- Location: LCFF_X65_Y38_N1
\ir|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \mem|altsyncram_component|auto_generated|q_a\(29),
	sload => VCC,
	ena => \ctr_mips|ALT_INV_pstate.fetch_st~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ir|sr_out\(29));

-- Location: LCCOMB_X65_Y38_N0
\ctr_mips|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Mux0~1_combout\ = (\ir|sr_out\(31) & (\ir|sr_out\(28) & (\ir|sr_out\(29)))) # (!\ir|sr_out\(31) & (!\ir|sr_out\(28) & ((\ir|sr_out\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(31),
	datab => \ir|sr_out\(28),
	datac => \ir|sr_out\(29),
	datad => \ir|sr_out\(26),
	combout => \ctr_mips|Mux0~1_combout\);

-- Location: LCCOMB_X65_Y38_N24
\ctr_mips|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Selector0~0_combout\ = (\ir|sr_out\(30)) # ((\ir|sr_out\(27) & (\ctr_mips|Mux0~0_combout\)) # (!\ir|sr_out\(27) & ((\ctr_mips|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(30),
	datab => \ctr_mips|Mux0~0_combout\,
	datac => \ir|sr_out\(27),
	datad => \ctr_mips|Mux0~1_combout\,
	combout => \ctr_mips|Selector0~0_combout\);

-- Location: LCCOMB_X66_Y37_N16
\ctr_mips|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Selector0~1_combout\ = (\ctr_mips|WideNor0~1_combout\ & (((\ctr_mips|pstate.decode_st~regout\ & \ctr_mips|Selector0~0_combout\)) # (!\ctr_mips|pstate.readmem_st~regout\))) # (!\ctr_mips|WideNor0~1_combout\ & (\ctr_mips|pstate.decode_st~regout\ & 
-- ((\ctr_mips|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|WideNor0~1_combout\,
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ctr_mips|pstate.readmem_st~regout\,
	datad => \ctr_mips|Selector0~0_combout\,
	combout => \ctr_mips|Selector0~1_combout\);

-- Location: LCCOMB_X63_Y37_N2
\ctr_mips|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|Selector0~2_combout\ = (!\ctr_mips|Selector0~1_combout\ & ((\ctr_mips|Mux5~2_combout\) # (!\ctr_mips|pstate.c_mem_add_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|Mux5~2_combout\,
	datab => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|Selector0~1_combout\,
	combout => \ctr_mips|Selector0~2_combout\);

-- Location: LCFF_X63_Y37_N3
\ctr_mips|pstate.fetch_st\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ctr_mips|Selector0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr_mips|pstate.fetch_st~regout\);

-- Location: LCCOMB_X65_Y36_N4
\ctr_mips|pstate.fetch_st~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr_mips|pstate.fetch_st~_wirecell_combout\ = !\ctr_mips|pstate.fetch_st~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr_mips|pstate.fetch_st~regout\,
	combout => \ctr_mips|pstate.fetch_st~_wirecell_combout\);

-- Location: LCCOMB_X63_Y37_N4
\bcoreg|regB[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \bcoreg|regB[0]~1_combout\ = (!\bcoreg|Equal1~1_combout\ & ((\bcoreg|breg32~45_combout\ & ((\bcoreg|breg32_rtl_0_bypass\(11)))) # (!\bcoreg|breg32~45_combout\ & (\bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcoreg|Equal1~1_combout\,
	datab => \bcoreg|breg32_rtl_1|auto_generated|ram_block1a0~portbdataout\,
	datac => \bcoreg|breg32~45_combout\,
	datad => \bcoreg|breg32_rtl_0_bypass\(11),
	combout => \bcoreg|regB[0]~1_combout\);

-- Location: LCFF_X63_Y37_N5
\rgB|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \bcoreg|regB[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rgB|sr_out\(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug(1),
	combout => \debug~combout\(1));

-- Location: LCCOMB_X65_Y37_N8
\pc|sr_out~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~31_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (((\regULA|sr_out\(0))))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.jump_ex_st~regout\ & ((\alu|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \regULA|sr_out\(0),
	datad => \alu|Mux31~9_combout\,
	combout => \pc|sr_out~31_combout\);

-- Location: LCFF_X65_Y37_N9
\pc|sr_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~31_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(0));

-- Location: LCCOMB_X65_Y37_N0
\data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~0_combout\ = (\debug~combout\(0) & ((\debug~combout\(1)) # ((\alu|Mux31~9_combout\)))) # (!\debug~combout\(0) & (!\debug~combout\(1) & (\pc|sr_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(0),
	datad => \alu|Mux31~9_combout\,
	combout => \data~0_combout\);

-- Location: LCCOMB_X65_Y37_N10
\data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~1_combout\ = (\debug~combout\(1) & ((\data~0_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(0))) # (!\data~0_combout\ & ((\ir|sr_out\(0)))))) # (!\debug~combout\(1) & (((\data~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(0),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(0),
	datad => \data~0_combout\,
	combout => \data~1_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\debug[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_debug(0),
	combout => \debug~combout\(0));

-- Location: LCCOMB_X65_Y37_N30
\pc|sr_out~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~32_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (((\regULA|sr_out\(1))))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.jump_ex_st~regout\ & (\alu|Mux30~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \alu|Mux30~14_combout\,
	datad => \regULA|sr_out\(1),
	combout => \pc|sr_out~32_combout\);

-- Location: LCFF_X65_Y37_N31
\pc|sr_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~32_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(1));

-- Location: LCCOMB_X65_Y37_N12
\data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~2_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(1))) # (!\debug~combout\(1) & ((\pc|sr_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(1),
	datad => \pc|sr_out\(1),
	combout => \data~2_combout\);

-- Location: LCCOMB_X65_Y37_N6
\data~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~3_combout\ = (\debug~combout\(0) & ((\data~2_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(1))) # (!\data~2_combout\ & ((\alu|Mux30~14_combout\))))) # (!\debug~combout\(0) & (((\data~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \mem|altsyncram_component|auto_generated|q_a\(1),
	datac => \alu|Mux30~14_combout\,
	datad => \data~2_combout\,
	combout => \data~3_combout\);

-- Location: LCCOMB_X61_Y40_N18
\data~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~4_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux29~20_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~20_combout\,
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(2),
	datad => \debug~combout\(0),
	combout => \data~4_combout\);

-- Location: LCCOMB_X61_Y40_N4
\data~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~5_combout\ = (\debug~combout\(1) & ((\data~4_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(2))) # (!\data~4_combout\ & ((\ir|sr_out\(2)))))) # (!\debug~combout\(1) & (((\data~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(2),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(2),
	datad => \data~4_combout\,
	combout => \data~5_combout\);

-- Location: LCCOMB_X63_Y35_N8
\data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~6_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & ((\ir|sr_out\(3)))) # (!\debug~combout\(1) & (\pc|sr_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(3),
	datad => \ir|sr_out\(3),
	combout => \data~6_combout\);

-- Location: LCCOMB_X63_Y35_N14
\data~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~7_combout\ = (\debug~combout\(0) & ((\data~6_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(3)))) # (!\data~6_combout\ & (\alu|Mux28~10_combout\)))) # (!\debug~combout\(0) & (((\data~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux28~10_combout\,
	datac => \data~6_combout\,
	datad => \mem|altsyncram_component|auto_generated|q_a\(3),
	combout => \data~7_combout\);

-- Location: LCCOMB_X62_Y38_N18
\data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~8_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux27~combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux27~combout\,
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(4),
	combout => \data~8_combout\);

-- Location: LCCOMB_X63_Y39_N26
\data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~9_combout\ = (\debug~combout\(1) & ((\data~8_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(4)))) # (!\data~8_combout\ & (\ir|sr_out\(4))))) # (!\debug~combout\(1) & (\data~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \data~8_combout\,
	datac => \ir|sr_out\(4),
	datad => \mem|altsyncram_component|auto_generated|q_a\(4),
	combout => \data~9_combout\);

-- Location: LCCOMB_X63_Y38_N6
\data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~10_combout\ = (\debug~combout\(1) & ((\debug~combout\(0)) # ((\ir|sr_out\(5))))) # (!\debug~combout\(1) & (!\debug~combout\(0) & (\pc|sr_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \debug~combout\(0),
	datac => \pc|sr_out\(5),
	datad => \ir|sr_out\(5),
	combout => \data~10_combout\);

-- Location: LCCOMB_X63_Y38_N4
\data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~11_combout\ = (\data~10_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(5))) # (!\debug~combout\(0)))) # (!\data~10_combout\ & (\debug~combout\(0) & ((\alu|Mux26~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~10_combout\,
	datab => \debug~combout\(0),
	datac => \mem|altsyncram_component|auto_generated|q_a\(5),
	datad => \alu|Mux26~combout\,
	combout => \data~11_combout\);

-- Location: LCCOMB_X62_Y38_N26
\data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~12_combout\ = (\debug~combout\(0) & ((\alu|Mux25~combout\) # ((\debug~combout\(1))))) # (!\debug~combout\(0) & (((\pc|sr_out\(6) & !\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux25~combout\,
	datab => \debug~combout\(0),
	datac => \pc|sr_out\(6),
	datad => \debug~combout\(1),
	combout => \data~12_combout\);

-- Location: LCCOMB_X62_Y36_N4
\data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~13_combout\ = (\data~12_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(6))) # (!\debug~combout\(1)))) # (!\data~12_combout\ & (\debug~combout\(1) & ((\ir|sr_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~12_combout\,
	datab => \debug~combout\(1),
	datac => \mem|altsyncram_component|auto_generated|q_a\(6),
	datad => \ir|sr_out\(6),
	combout => \data~13_combout\);

-- Location: LCCOMB_X63_Y34_N24
\data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~14_combout\ = (\debug~combout\(1) & ((\ir|sr_out\(7)) # ((\debug~combout\(0))))) # (!\debug~combout\(1) & (((!\debug~combout\(0) & \pc|sr_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(7),
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(7),
	combout => \data~14_combout\);

-- Location: LCCOMB_X63_Y34_N18
\data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~15_combout\ = (\debug~combout\(0) & ((\data~14_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(7))) # (!\data~14_combout\ & ((\alu|Mux24~combout\))))) # (!\debug~combout\(0) & (((\data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \mem|altsyncram_component|auto_generated|q_a\(7),
	datac => \data~14_combout\,
	datad => \alu|Mux24~combout\,
	combout => \data~15_combout\);

-- Location: LCCOMB_X63_Y34_N28
\data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~16_combout\ = (\debug~combout\(0) & ((\alu|Mux23~9_combout\) # ((\debug~combout\(1))))) # (!\debug~combout\(0) & (((\pc|sr_out\(8) & !\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux23~9_combout\,
	datac => \pc|sr_out\(8),
	datad => \debug~combout\(1),
	combout => \data~16_combout\);

-- Location: LCCOMB_X63_Y34_N2
\data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~17_combout\ = (\debug~combout\(1) & ((\data~16_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(8))) # (!\data~16_combout\ & ((\ir|sr_out\(8)))))) # (!\debug~combout\(1) & (((\data~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(8),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(8),
	datad => \data~16_combout\,
	combout => \data~17_combout\);

-- Location: LCCOMB_X58_Y34_N16
\data~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~18_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(9))) # (!\debug~combout\(1) & ((\pc|sr_out\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(9),
	datad => \pc|sr_out\(9),
	combout => \data~18_combout\);

-- Location: LCCOMB_X58_Y34_N14
\data~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~19_combout\ = (\data~18_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(9)) # ((!\debug~combout\(0))))) # (!\data~18_combout\ & (((\alu|Mux22~11_combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(9),
	datab => \alu|Mux22~11_combout\,
	datac => \data~18_combout\,
	datad => \debug~combout\(0),
	combout => \data~19_combout\);

-- Location: LCCOMB_X63_Y34_N20
\data~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~20_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & ((\alu|Mux21~10_combout\))) # (!\debug~combout\(0) & (\pc|sr_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(10),
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \alu|Mux21~10_combout\,
	combout => \data~20_combout\);

-- Location: LCCOMB_X63_Y36_N16
\data~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~21_combout\ = (\data~20_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(10)) # ((!\debug~combout\(1))))) # (!\data~20_combout\ & (((\ir|sr_out\(10) & \debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(10),
	datab => \data~20_combout\,
	datac => \ir|sr_out\(10),
	datad => \debug~combout\(1),
	combout => \data~21_combout\);

-- Location: LCCOMB_X65_Y36_N8
\data~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~22_combout\ = (\debug~combout\(1) & (((\ir|sr_out\(11)) # (\debug~combout\(0))))) # (!\debug~combout\(1) & (\pc|sr_out\(11) & ((!\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(11),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(11),
	datad => \debug~combout\(0),
	combout => \data~22_combout\);

-- Location: LCCOMB_X65_Y36_N18
\data~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~23_combout\ = (\data~22_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(11)) # (!\debug~combout\(0))))) # (!\data~22_combout\ & (\alu|Mux20~10_combout\ & ((\debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux20~10_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(11),
	datac => \data~22_combout\,
	datad => \debug~combout\(0),
	combout => \data~23_combout\);

-- Location: LCCOMB_X61_Y36_N4
\pc|sr_out[12]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[12]~18_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(12))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux19~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(12),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux19~10_combout\,
	combout => \pc|sr_out[12]~18_combout\);

-- Location: LCFF_X61_Y36_N5
\pc|sr_out[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[12]~18_combout\,
	sdata => \ir|sr_out\(10),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(12));

-- Location: LCCOMB_X61_Y36_N30
\data~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~24_combout\ = (\debug~combout\(0) & ((\alu|Mux19~10_combout\) # ((\debug~combout\(1))))) # (!\debug~combout\(0) & (((\pc|sr_out\(12) & !\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux19~10_combout\,
	datac => \pc|sr_out\(12),
	datad => \debug~combout\(1),
	combout => \data~24_combout\);

-- Location: LCCOMB_X63_Y36_N28
\data~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~25_combout\ = (\data~24_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(12)) # ((!\debug~combout\(1))))) # (!\data~24_combout\ & (((\ir|sr_out\(12) & \debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(12),
	datab => \data~24_combout\,
	datac => \ir|sr_out\(12),
	datad => \debug~combout\(1),
	combout => \data~25_combout\);

-- Location: LCCOMB_X61_Y36_N10
\pc|sr_out[13]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[13]~17_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(13))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux18~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(13),
	datad => \alu|Mux18~10_combout\,
	combout => \pc|sr_out[13]~17_combout\);

-- Location: LCFF_X61_Y36_N11
\pc|sr_out[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[13]~17_combout\,
	sdata => \ir|sr_out\(11),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(13));

-- Location: LCCOMB_X63_Y39_N20
\data~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~26_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(13))) # (!\debug~combout\(1) & ((\pc|sr_out\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(13),
	datad => \pc|sr_out\(13),
	combout => \data~26_combout\);

-- Location: LCCOMB_X63_Y39_N8
\data~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~27_combout\ = (\debug~combout\(0) & ((\data~26_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(13))) # (!\data~26_combout\ & ((\alu|Mux18~10_combout\))))) # (!\debug~combout\(0) & (\data~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \data~26_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(13),
	datad => \alu|Mux18~10_combout\,
	combout => \data~27_combout\);

-- Location: LCCOMB_X61_Y36_N16
\pc|sr_out[14]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[14]~16_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(14))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(14),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux17~10_combout\,
	combout => \pc|sr_out[14]~16_combout\);

-- Location: LCFF_X61_Y36_N17
\pc|sr_out[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[14]~16_combout\,
	sdata => \ir|sr_out\(12),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(14));

-- Location: LCCOMB_X61_Y36_N18
\data~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~28_combout\ = (\debug~combout\(0) & ((\debug~combout\(1)) # ((\alu|Mux17~10_combout\)))) # (!\debug~combout\(0) & (!\debug~combout\(1) & (\pc|sr_out\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \pc|sr_out\(14),
	datad => \alu|Mux17~10_combout\,
	combout => \data~28_combout\);

-- Location: LCCOMB_X65_Y36_N20
\data~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~29_combout\ = (\data~28_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(14)) # (!\debug~combout\(1))))) # (!\data~28_combout\ & (\ir|sr_out\(14) & ((\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(14),
	datab => \mem|altsyncram_component|auto_generated|q_a\(14),
	datac => \data~28_combout\,
	datad => \debug~combout\(1),
	combout => \data~29_combout\);

-- Location: LCCOMB_X60_Y37_N6
\pc|sr_out[15]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[15]~15_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(15))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(15),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux16~10_combout\,
	combout => \pc|sr_out[15]~15_combout\);

-- Location: LCFF_X60_Y37_N7
\pc|sr_out[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[15]~15_combout\,
	sdata => \ir|sr_out\(13),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(15));

-- Location: LCCOMB_X63_Y39_N18
\data~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~30_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & ((\ir|sr_out\(15)))) # (!\debug~combout\(1) & (\pc|sr_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \pc|sr_out\(15),
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(15),
	combout => \data~30_combout\);

-- Location: LCCOMB_X63_Y39_N16
\data~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~31_combout\ = (\debug~combout\(0) & ((\data~30_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(15)))) # (!\data~30_combout\ & (\alu|Mux16~10_combout\)))) # (!\debug~combout\(0) & (((\data~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux16~10_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(15),
	datad => \data~30_combout\,
	combout => \data~31_combout\);

-- Location: LCCOMB_X63_Y34_N22
\data~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~32_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & ((\alu|Mux15~6_combout\))) # (!\debug~combout\(0) & (\pc|sr_out\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(16),
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \alu|Mux15~6_combout\,
	combout => \data~32_combout\);

-- Location: LCCOMB_X65_Y39_N12
\data~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~33_combout\ = (\debug~combout\(1) & ((\data~32_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(16))) # (!\data~32_combout\ & ((\ir|sr_out\(16)))))) # (!\debug~combout\(1) & (((\data~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \mem|altsyncram_component|auto_generated|q_a\(16),
	datac => \ir|sr_out\(16),
	datad => \data~32_combout\,
	combout => \data~33_combout\);

-- Location: LCCOMB_X66_Y39_N12
\data~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~34_combout\ = (\debug~combout\(1) & (((\debug~combout\(0)) # (\ir|sr_out\(17))))) # (!\debug~combout\(1) & (\pc|sr_out\(17) & (!\debug~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(17),
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \ir|sr_out\(17),
	combout => \data~34_combout\);

-- Location: LCCOMB_X66_Y39_N22
\data~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~35_combout\ = (\debug~combout\(0) & ((\data~34_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(17)))) # (!\data~34_combout\ & (\alu|Mux14~11_combout\)))) # (!\debug~combout\(0) & (((\data~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~11_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(17),
	datac => \debug~combout\(0),
	datad => \data~34_combout\,
	combout => \data~35_combout\);

-- Location: LCCOMB_X60_Y37_N10
\pc|sr_out[18]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[18]~13_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(18)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux13~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \alu|Mux13~8_combout\,
	datad => \regULA|sr_out\(18),
	combout => \pc|sr_out[18]~13_combout\);

-- Location: LCFF_X60_Y37_N11
\pc|sr_out[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[18]~13_combout\,
	sdata => \ir|sr_out\(16),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(18));

-- Location: LCCOMB_X63_Y35_N16
\data~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~36_combout\ = (\debug~combout\(0) & ((\debug~combout\(1)) # ((\alu|Mux13~8_combout\)))) # (!\debug~combout\(0) & (!\debug~combout\(1) & ((\pc|sr_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \alu|Mux13~8_combout\,
	datad => \pc|sr_out\(18),
	combout => \data~36_combout\);

-- Location: LCCOMB_X63_Y35_N6
\data~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~37_combout\ = (\data~36_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(18))) # (!\debug~combout\(1)))) # (!\data~36_combout\ & (\debug~combout\(1) & ((\ir|sr_out\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~36_combout\,
	datab => \debug~combout\(1),
	datac => \mem|altsyncram_component|auto_generated|q_a\(18),
	datad => \ir|sr_out\(18),
	combout => \data~37_combout\);

-- Location: LCCOMB_X60_Y37_N20
\pc|sr_out[19]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[19]~12_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & ((\regULA|sr_out\(19)))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & (\alu|Mux12~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux12~8_combout\,
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \regULA|sr_out\(19),
	combout => \pc|sr_out[19]~12_combout\);

-- Location: LCFF_X60_Y37_N21
\pc|sr_out[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[19]~12_combout\,
	sdata => \ir|sr_out\(17),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(19));

-- Location: LCCOMB_X65_Y39_N0
\data~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~38_combout\ = (\debug~combout\(1) & (((\debug~combout\(0)) # (\ir|sr_out\(19))))) # (!\debug~combout\(1) & (\pc|sr_out\(19) & (!\debug~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \pc|sr_out\(19),
	datac => \debug~combout\(0),
	datad => \ir|sr_out\(19),
	combout => \data~38_combout\);

-- Location: LCCOMB_X65_Y39_N2
\data~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~39_combout\ = (\data~38_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(19)) # ((!\debug~combout\(0))))) # (!\data~38_combout\ & (((\debug~combout\(0) & \alu|Mux12~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(19),
	datab => \data~38_combout\,
	datac => \debug~combout\(0),
	datad => \alu|Mux12~8_combout\,
	combout => \data~39_combout\);

-- Location: LCFF_X57_Y35_N5
\regULA|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux11~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(20));

-- Location: LCCOMB_X60_Y35_N18
\pc|sr_out[20]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[20]~11_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(20))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux11~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(20),
	datad => \alu|Mux11~8_combout\,
	combout => \pc|sr_out[20]~11_combout\);

-- Location: LCFF_X60_Y35_N19
\pc|sr_out[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[20]~11_combout\,
	sdata => \ir|sr_out\(18),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(20));

-- Location: LCCOMB_X63_Y35_N18
\data~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~40_combout\ = (\debug~combout\(0) & ((\alu|Mux11~8_combout\) # ((\debug~combout\(1))))) # (!\debug~combout\(0) & (((!\debug~combout\(1) & \pc|sr_out\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux11~8_combout\,
	datac => \debug~combout\(1),
	datad => \pc|sr_out\(20),
	combout => \data~40_combout\);

-- Location: LCCOMB_X63_Y35_N24
\data~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~41_combout\ = (\debug~combout\(1) & ((\data~40_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(20)))) # (!\data~40_combout\ & (\ir|sr_out\(20))))) # (!\debug~combout\(1) & (((\data~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(20),
	datab => \debug~combout\(1),
	datac => \mem|altsyncram_component|auto_generated|q_a\(20),
	datad => \data~40_combout\,
	combout => \data~41_combout\);

-- Location: LCCOMB_X56_Y40_N2
\alu|ShiftLeft0~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~68_combout\ = (!\mux_shift|m_out[3]~91_combout\ & \alu|ShiftLeft0~67_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux_shift|m_out[3]~91_combout\,
	datad => \alu|ShiftLeft0~67_combout\,
	combout => \alu|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X58_Y38_N6
\mux_ulaB|m_out[21]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_ulaB|m_out[21]~46_combout\ = (\mux_ulaB|m_out[31]~31_combout\) # ((!\mux_ulaB|Equal2~2_combout\ & \rgB|sr_out\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|Equal2~2_combout\,
	datac => \rgB|sr_out\(21),
	datad => \mux_ulaB|m_out[31]~31_combout\,
	combout => \mux_ulaB|m_out[21]~46_combout\);

-- Location: LCCOMB_X57_Y40_N14
\alu|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~0_combout\ = (\mux_shift|m_out[21]~36_combout\ & ((\actr|alu_ctr[2]~26_combout\) # (!\mux_ulaB|m_out[21]~46_combout\))) # (!\mux_shift|m_out[21]~36_combout\ & (\mux_ulaB|m_out[21]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[21]~36_combout\,
	datac => \mux_ulaB|m_out[21]~46_combout\,
	datad => \actr|alu_ctr[2]~26_combout\,
	combout => \alu|Mux10~0_combout\);

-- Location: LCCOMB_X56_Y40_N24
\alu|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~1_combout\ = (\alu|Mux8~20_combout\ & ((\alu|Mux8~9_combout\ & ((\alu|Mux10~0_combout\))) # (!\alu|Mux8~9_combout\ & (\alu|ShiftLeft0~68_combout\)))) # (!\alu|Mux8~20_combout\ & (((\alu|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~20_combout\,
	datab => \alu|ShiftLeft0~68_combout\,
	datac => \alu|Mux8~9_combout\,
	datad => \alu|Mux10~0_combout\,
	combout => \alu|Mux10~1_combout\);

-- Location: LCCOMB_X56_Y40_N22
\alu|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~2_combout\ = (\alu|Mux8~19_combout\ & (((\alu|Mux10~1_combout\)))) # (!\alu|Mux8~19_combout\ & ((\alu|Mux10~1_combout\ & ((\alu|ShiftLeft0~90_combout\))) # (!\alu|Mux10~1_combout\ & (\alu|ShiftLeft0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~19_combout\,
	datab => \alu|ShiftLeft0~122_combout\,
	datac => \alu|Mux10~1_combout\,
	datad => \alu|ShiftLeft0~90_combout\,
	combout => \alu|Mux10~2_combout\);

-- Location: LCCOMB_X56_Y40_N0
\alu|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~3_combout\ = (\actr|alu_ctr[2]~26_combout\ & (!\alu|Mux10~0_combout\ & (\actr|alu_ctr[0]~32_combout\))) # (!\actr|alu_ctr[2]~26_combout\ & (((\alu|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~0_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \actr|alu_ctr[2]~26_combout\,
	datad => \alu|Mux10~2_combout\,
	combout => \alu|Mux10~3_combout\);

-- Location: LCCOMB_X57_Y40_N10
\alu|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~5_combout\ = (\alu|Mux10~4_combout\ & (((\alu|Add1~42_combout\) # (!\alu|Mux8~6_combout\)))) # (!\alu|Mux10~4_combout\ & (\alu|ShiftRight1~91_combout\ & (\alu|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~4_combout\,
	datab => \alu|ShiftRight1~91_combout\,
	datac => \alu|Mux8~6_combout\,
	datad => \alu|Add1~42_combout\,
	combout => \alu|Mux10~5_combout\);

-- Location: LCCOMB_X56_Y38_N0
\alu|Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~6_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & (\alu|tmp[21]~42_combout\)) # (!\alu|Mux8~8_combout\ & ((\alu|Mux10~5_combout\))))) # (!\alu|Mux8~7_combout\ & (((!\alu|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|tmp[21]~42_combout\,
	datab => \alu|Mux8~7_combout\,
	datac => \alu|Mux8~8_combout\,
	datad => \alu|Mux10~5_combout\,
	combout => \alu|Mux10~6_combout\);

-- Location: LCCOMB_X56_Y38_N6
\alu|Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~7_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux10~6_combout\ & ((\alu|ShiftRight0~126_combout\))) # (!\alu|Mux10~6_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_ulaB|m_out[31]~36_combout\,
	datab => \alu|Mux29~4_combout\,
	datac => \alu|ShiftRight0~126_combout\,
	datad => \alu|Mux10~6_combout\,
	combout => \alu|Mux10~7_combout\);

-- Location: LCCOMB_X56_Y38_N16
\alu|Mux10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux10~8_combout\ = (\alu|Mux14~12_combout\ & ((\alu|Mux10~3_combout\) # ((\alu|Mux14~10_combout\ & \alu|Mux10~7_combout\)))) # (!\alu|Mux14~12_combout\ & (((\alu|Mux14~10_combout\ & \alu|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux14~12_combout\,
	datab => \alu|Mux10~3_combout\,
	datac => \alu|Mux14~10_combout\,
	datad => \alu|Mux10~7_combout\,
	combout => \alu|Mux10~8_combout\);

-- Location: LCFF_X56_Y38_N17
\regULA|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \alu|Mux10~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \regULA|sr_out\(21));

-- Location: LCCOMB_X60_Y35_N12
\pc|sr_out[21]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[21]~10_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(21))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux10~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr_mips|pstate.branch_ex_st~regout\,
	datab => \regULA|sr_out\(21),
	datad => \alu|Mux10~8_combout\,
	combout => \pc|sr_out[21]~10_combout\);

-- Location: LCFF_X60_Y35_N13
\pc|sr_out[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[21]~10_combout\,
	sdata => \ir|sr_out\(19),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(21));

-- Location: LCCOMB_X60_Y35_N30
\data~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~42_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(21))) # (!\debug~combout\(1) & ((\pc|sr_out\(21))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(21),
	datab => \debug~combout\(0),
	datac => \debug~combout\(1),
	datad => \pc|sr_out\(21),
	combout => \data~42_combout\);

-- Location: LCCOMB_X63_Y35_N12
\data~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~43_combout\ = (\debug~combout\(0) & ((\data~42_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(21)))) # (!\data~42_combout\ & (\alu|Mux10~8_combout\)))) # (!\debug~combout\(0) & (((\data~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux10~8_combout\,
	datab => \mem|altsyncram_component|auto_generated|q_a\(21),
	datac => \debug~combout\(0),
	datad => \data~42_combout\,
	combout => \data~43_combout\);

-- Location: LCCOMB_X60_Y35_N28
\data~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~44_combout\ = (\debug~combout\(0) & ((\alu|Mux9~8_combout\) # ((\debug~combout\(1))))) # (!\debug~combout\(0) & (((!\debug~combout\(1) & \pc|sr_out\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux9~8_combout\,
	datac => \debug~combout\(1),
	datad => \pc|sr_out\(22),
	combout => \data~44_combout\);

-- Location: LCCOMB_X65_Y39_N26
\data~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~45_combout\ = (\debug~combout\(1) & ((\data~44_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(22))) # (!\data~44_combout\ & ((\ir|sr_out\(22)))))) # (!\debug~combout\(1) & (\data~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \data~44_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(22),
	datad => \ir|sr_out\(22),
	combout => \data~45_combout\);

-- Location: LCCOMB_X60_Y35_N8
\pc|sr_out[23]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out[23]~8_combout\ = (\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(23))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & ((\alu|Mux8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(23),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux8~18_combout\,
	combout => \pc|sr_out[23]~8_combout\);

-- Location: LCFF_X60_Y35_N9
\pc|sr_out[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out[23]~8_combout\,
	sdata => \ir|sr_out\(21),
	sclr => \rst~combout\,
	sload => \ctr_mips|pstate.jump_ex_st~regout\,
	ena => \pc|sr_out[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(23));

-- Location: LCCOMB_X63_Y39_N2
\data~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~46_combout\ = (\debug~combout\(0) & (\debug~combout\(1))) # (!\debug~combout\(0) & ((\debug~combout\(1) & (\ir|sr_out\(23))) # (!\debug~combout\(1) & ((\pc|sr_out\(23))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \debug~combout\(1),
	datac => \ir|sr_out\(23),
	datad => \pc|sr_out\(23),
	combout => \data~46_combout\);

-- Location: LCCOMB_X63_Y39_N4
\data~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~47_combout\ = (\debug~combout\(0) & ((\data~46_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(23)))) # (!\data~46_combout\ & (\alu|Mux8~18_combout\)))) # (!\debug~combout\(0) & (((\data~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \alu|Mux8~18_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(23),
	datad => \data~46_combout\,
	combout => \data~47_combout\);

-- Location: LCCOMB_X60_Y36_N18
\mux_shift|m_out[24]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[24]~26_combout\ = (\pc|sr_out\(24) & (!\ctr_mips|pstate.branch_ex_st~regout\ & (!\ctr_mips|pstate.c_mem_add_st~regout\ & !\ctr_mips|pstate.rtype_ex_st~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(24),
	datab => \ctr_mips|pstate.branch_ex_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \ctr_mips|pstate.rtype_ex_st~regout\,
	combout => \mux_shift|m_out[24]~26_combout\);

-- Location: LCCOMB_X60_Y36_N8
\mux_shift|m_out[24]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \mux_shift|m_out[24]~27_combout\ = (\mux_shift|m_out[24]~25_combout\ & (((!\actr|alu_ctr~25_combout\) # (!\actr|alu_ctr~24_combout\)))) # (!\mux_shift|m_out[24]~25_combout\ & (\mux_shift|m_out[24]~26_combout\ & ((!\actr|alu_ctr~25_combout\) # 
-- (!\actr|alu_ctr~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[24]~25_combout\,
	datab => \mux_shift|m_out[24]~26_combout\,
	datac => \actr|alu_ctr~24_combout\,
	datad => \actr|alu_ctr~25_combout\,
	combout => \mux_shift|m_out[24]~27_combout\);

-- Location: LCCOMB_X60_Y36_N2
\alu|Mux7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~7_combout\ = (\actr|alu_ctr[1]~31_combout\) # (((\mux_shift|m_out[24]~27_combout\) # (\mux_ulaB|m_out[24]~43_combout\)) # (!\actr|alu_ctr[0]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \actr|alu_ctr[1]~31_combout\,
	datab => \actr|alu_ctr[0]~32_combout\,
	datac => \mux_shift|m_out[24]~27_combout\,
	datad => \mux_ulaB|m_out[24]~43_combout\,
	combout => \alu|Mux7~7_combout\);

-- Location: LCCOMB_X59_Y39_N0
\alu|ShiftRight0~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~104_combout\ = (!\mux_ulaB|Equal2~2_combout\ & ((\mux_shift|m_out[3]~91_combout\ & (\rgB|sr_out\(31))) # (!\mux_shift|m_out[3]~91_combout\ & ((\alu|ShiftRight0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rgB|sr_out\(31),
	datab => \mux_ulaB|Equal2~2_combout\,
	datac => \alu|ShiftRight0~51_combout\,
	datad => \mux_shift|m_out[3]~91_combout\,
	combout => \alu|ShiftRight0~104_combout\);

-- Location: LCCOMB_X59_Y39_N18
\alu|ShiftRight0~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight0~128_combout\ = (\alu|ShiftRight0~104_combout\) # ((\ir|sr_out\(15) & ((\ctr_mips|pstate.decode_st~regout\) # (\ctr_mips|pstate.c_mem_add_st~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(15),
	datab => \ctr_mips|pstate.decode_st~regout\,
	datac => \ctr_mips|pstate.c_mem_add_st~regout\,
	datad => \alu|ShiftRight0~104_combout\,
	combout => \alu|ShiftRight0~128_combout\);

-- Location: LCCOMB_X59_Y39_N10
\alu|ShiftRight1~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftRight1~96_combout\ = (\alu|ShiftRight1~62_combout\) # ((\alu|ShiftRight0~51_combout\ & \alu|ShiftRight1~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu|ShiftRight0~51_combout\,
	datac => \alu|ShiftRight1~62_combout\,
	datad => \alu|ShiftRight1~63_combout\,
	combout => \alu|ShiftRight1~96_combout\);

-- Location: LCCOMB_X60_Y36_N26
\alu|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~3_combout\ = (\alu|Mux7~2_combout\ & (((\alu|Add1~48_combout\) # (!\alu|Mux8~6_combout\)))) # (!\alu|Mux7~2_combout\ & (\alu|ShiftRight1~96_combout\ & (\alu|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux7~2_combout\,
	datab => \alu|ShiftRight1~96_combout\,
	datac => \alu|Mux8~6_combout\,
	datad => \alu|Add1~48_combout\,
	combout => \alu|Mux7~3_combout\);

-- Location: LCCOMB_X60_Y36_N0
\alu|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~4_combout\ = (\alu|Mux8~7_combout\ & ((\alu|Mux8~8_combout\ & (\alu|tmp[24]~48_combout\)) # (!\alu|Mux8~8_combout\ & ((\alu|Mux7~3_combout\))))) # (!\alu|Mux8~7_combout\ & (!\alu|Mux8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux8~7_combout\,
	datab => \alu|Mux8~8_combout\,
	datac => \alu|tmp[24]~48_combout\,
	datad => \alu|Mux7~3_combout\,
	combout => \alu|Mux7~4_combout\);

-- Location: LCCOMB_X60_Y36_N10
\alu|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~5_combout\ = (\alu|Mux29~4_combout\ & ((\alu|Mux7~4_combout\ & ((\alu|ShiftRight0~128_combout\))) # (!\alu|Mux7~4_combout\ & (\mux_ulaB|m_out[31]~36_combout\)))) # (!\alu|Mux29~4_combout\ & (((\alu|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datab => \mux_ulaB|m_out[31]~36_combout\,
	datac => \alu|ShiftRight0~128_combout\,
	datad => \alu|Mux7~4_combout\,
	combout => \alu|Mux7~5_combout\);

-- Location: LCCOMB_X60_Y36_N28
\alu|Mux7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~6_combout\ = (\alu|Mux7~5_combout\ & ((!\actr|alu_ctr[0]~32_combout\) # (!\alu|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~4_combout\,
	datac => \actr|alu_ctr[0]~32_combout\,
	datad => \alu|Mux7~5_combout\,
	combout => \alu|Mux7~6_combout\);

-- Location: LCCOMB_X60_Y36_N4
\alu|Mux7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~8_combout\ = (\alu|Mux29~2_combout\ & ((\alu|Mux29~14_combout\ & (!\alu|Mux7~7_combout\)) # (!\alu|Mux29~14_combout\ & ((\alu|Mux7~6_combout\))))) # (!\alu|Mux29~2_combout\ & (((\alu|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|Mux29~2_combout\,
	datab => \alu|Mux7~7_combout\,
	datac => \alu|Mux29~14_combout\,
	datad => \alu|Mux7~6_combout\,
	combout => \alu|Mux7~8_combout\);

-- Location: LCCOMB_X58_Y40_N14
\alu|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~0_combout\ = (\alu|ShiftLeft0~131_combout\ & ((\alu|Mux4~2_combout\ & (\alu|ShiftLeft0~117_combout\)) # (!\alu|Mux4~2_combout\ & ((\alu|ShiftLeft0~134_combout\))))) # (!\alu|ShiftLeft0~131_combout\ & (((\alu|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~131_combout\,
	datab => \alu|ShiftLeft0~117_combout\,
	datac => \alu|Mux4~2_combout\,
	datad => \alu|ShiftLeft0~134_combout\,
	combout => \alu|Mux7~0_combout\);

-- Location: LCCOMB_X58_Y40_N16
\alu|ShiftLeft0~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~74_combout\ = (!\mux_shift|m_out[3]~91_combout\ & ((\mux_shift|m_out[2]~89_combout\ & (\alu|ShiftLeft0~155_combout\)) # (!\mux_shift|m_out[2]~89_combout\ & ((\alu|ShiftLeft0~162_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \mux_shift|m_out[2]~89_combout\,
	datac => \alu|ShiftLeft0~155_combout\,
	datad => \alu|ShiftLeft0~162_combout\,
	combout => \alu|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X58_Y40_N22
\alu|ShiftLeft0~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~75_combout\ = (\alu|ShiftLeft0~74_combout\) # ((\mux_shift|m_out[3]~91_combout\ & (!\alu|ShiftLeft0~158_combout\ & \mux_ulaB|m_out[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_shift|m_out[3]~91_combout\,
	datab => \alu|ShiftLeft0~158_combout\,
	datac => \alu|ShiftLeft0~74_combout\,
	datad => \mux_ulaB|m_out[0]~1_combout\,
	combout => \alu|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X58_Y40_N28
\alu|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~1_combout\ = (\alu|ShiftLeft0~131_combout\ & (((\alu|Mux7~0_combout\)))) # (!\alu|ShiftLeft0~131_combout\ & ((\alu|Mux7~0_combout\ & ((\alu|ShiftLeft0~75_combout\))) # (!\alu|Mux7~0_combout\ & (\alu|ShiftLeft0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ShiftLeft0~131_combout\,
	datab => \alu|ShiftLeft0~100_combout\,
	datac => \alu|Mux7~0_combout\,
	datad => \alu|ShiftLeft0~75_combout\,
	combout => \alu|Mux7~1_combout\);

-- Location: LCCOMB_X60_Y36_N14
\alu|Mux7\ : cycloneii_lcell_comb
-- Equation(s):
-- \alu|Mux7~combout\ = (\alu|Mux4~12_combout\ & ((\alu|Mux7~8_combout\ & (\alu|a32~24_combout\)) # (!\alu|Mux7~8_combout\ & ((\alu|Mux7~1_combout\))))) # (!\alu|Mux4~12_combout\ & (((\alu|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu|a32~24_combout\,
	datab => \alu|Mux4~12_combout\,
	datac => \alu|Mux7~8_combout\,
	datad => \alu|Mux7~1_combout\,
	combout => \alu|Mux7~combout\);

-- Location: LCCOMB_X61_Y40_N16
\data~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~48_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & ((\alu|Mux7~combout\))) # (!\debug~combout\(0) & (\pc|sr_out\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(24),
	datab => \debug~combout\(1),
	datac => \alu|Mux7~combout\,
	datad => \debug~combout\(0),
	combout => \data~48_combout\);

-- Location: LCCOMB_X65_Y39_N24
\data~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~49_combout\ = (\debug~combout\(1) & ((\data~48_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(24))) # (!\data~48_combout\ & ((\ir|sr_out\(24)))))) # (!\debug~combout\(1) & (\data~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \data~48_combout\,
	datac => \mem|altsyncram_component|auto_generated|q_a\(24),
	datad => \ir|sr_out\(24),
	combout => \data~49_combout\);

-- Location: LCCOMB_X63_Y35_N10
\data~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~50_combout\ = (\debug~combout\(1) & ((\ir|sr_out\(25)) # ((\debug~combout\(0))))) # (!\debug~combout\(1) & (((!\debug~combout\(0) & \pc|sr_out\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(25),
	datab => \debug~combout\(1),
	datac => \debug~combout\(0),
	datad => \pc|sr_out\(25),
	combout => \data~50_combout\);

-- Location: LCCOMB_X63_Y35_N28
\data~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~51_combout\ = (\debug~combout\(0) & ((\data~50_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(25))) # (!\data~50_combout\ & ((\alu|Mux6~combout\))))) # (!\debug~combout\(0) & (((\data~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \mem|altsyncram_component|auto_generated|q_a\(25),
	datac => \alu|Mux6~combout\,
	datad => \data~50_combout\,
	combout => \data~51_combout\);

-- Location: LCCOMB_X61_Y41_N10
\data~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~52_combout\ = (\debug~combout\(0) & (((\debug~combout\(1)) # (\alu|Mux5~combout\)))) # (!\debug~combout\(0) & (\pc|sr_out\(26) & (!\debug~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|sr_out\(26),
	datab => \debug~combout\(0),
	datac => \debug~combout\(1),
	datad => \alu|Mux5~combout\,
	combout => \data~52_combout\);

-- Location: LCCOMB_X61_Y41_N24
\data~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~53_combout\ = (\debug~combout\(1) & ((\data~52_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(26)))) # (!\data~52_combout\ & (\ir|sr_out\(26))))) # (!\debug~combout\(1) & (((\data~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \ir|sr_out\(26),
	datac => \mem|altsyncram_component|auto_generated|q_a\(26),
	datad => \data~52_combout\,
	combout => \data~53_combout\);

-- Location: LCCOMB_X66_Y39_N0
\data~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~54_combout\ = (\debug~combout\(0) & (((\debug~combout\(1))))) # (!\debug~combout\(0) & ((\debug~combout\(1) & ((\ir|sr_out\(27)))) # (!\debug~combout\(1) & (\pc|sr_out\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \pc|sr_out\(27),
	datac => \debug~combout\(1),
	datad => \ir|sr_out\(27),
	combout => \data~54_combout\);

-- Location: LCCOMB_X66_Y39_N10
\data~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~55_combout\ = (\debug~combout\(0) & ((\data~54_combout\ & (\mem|altsyncram_component|auto_generated|q_a\(27))) # (!\data~54_combout\ & ((\alu|Mux4~combout\))))) # (!\debug~combout\(0) & (((\data~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(0),
	datab => \mem|altsyncram_component|auto_generated|q_a\(27),
	datac => \alu|Mux4~combout\,
	datad => \data~54_combout\,
	combout => \data~55_combout\);

-- Location: LCCOMB_X66_Y38_N20
\data~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~56_combout\ = (\debug~combout\(1) & (((\debug~combout\(0))))) # (!\debug~combout\(1) & ((\debug~combout\(0) & (\alu|Mux3~16_combout\)) # (!\debug~combout\(0) & ((\pc|sr_out\(28))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \alu|Mux3~16_combout\,
	datac => \pc|sr_out\(28),
	datad => \debug~combout\(0),
	combout => \data~56_combout\);

-- Location: LCCOMB_X66_Y38_N26
\data~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~57_combout\ = (\data~56_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(28)) # (!\debug~combout\(1))))) # (!\data~56_combout\ & (\ir|sr_out\(28) & ((\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir|sr_out\(28),
	datab => \mem|altsyncram_component|auto_generated|q_a\(28),
	datac => \data~56_combout\,
	datad => \debug~combout\(1),
	combout => \data~57_combout\);

-- Location: LCCOMB_X66_Y38_N14
\pc|sr_out~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc|sr_out~29_combout\ = (\ctr_mips|pstate.jump_ex_st~regout\ & (\regULA|sr_out\(29))) # (!\ctr_mips|pstate.jump_ex_st~regout\ & ((\ctr_mips|pstate.branch_ex_st~regout\ & (\regULA|sr_out\(29))) # (!\ctr_mips|pstate.branch_ex_st~regout\ & 
-- ((\alu|Mux2~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \regULA|sr_out\(29),
	datab => \ctr_mips|pstate.jump_ex_st~regout\,
	datac => \ctr_mips|pstate.branch_ex_st~regout\,
	datad => \alu|Mux2~11_combout\,
	combout => \pc|sr_out~29_combout\);

-- Location: LCFF_X66_Y38_N15
\pc|sr_out[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pc|sr_out~29_combout\,
	sclr => \rst~combout\,
	ena => \pc|sr_out[31]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pc|sr_out\(29));

-- Location: LCCOMB_X66_Y38_N16
\data~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~58_combout\ = (\debug~combout\(1) & ((\debug~combout\(0)) # ((\ir|sr_out\(29))))) # (!\debug~combout\(1) & (!\debug~combout\(0) & (\pc|sr_out\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \debug~combout\(0),
	datac => \pc|sr_out\(29),
	datad => \ir|sr_out\(29),
	combout => \data~58_combout\);

-- Location: LCCOMB_X66_Y38_N10
\data~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~59_combout\ = (\data~58_combout\ & ((\mem|altsyncram_component|auto_generated|q_a\(29)) # ((!\debug~combout\(0))))) # (!\data~58_combout\ & (((\alu|Mux2~11_combout\ & \debug~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem|altsyncram_component|auto_generated|q_a\(29),
	datab => \alu|Mux2~11_combout\,
	datac => \data~58_combout\,
	datad => \debug~combout\(0),
	combout => \data~59_combout\);

-- Location: LCCOMB_X66_Y38_N12
\data~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~60_combout\ = (\debug~combout\(1) & (\debug~combout\(0))) # (!\debug~combout\(1) & ((\debug~combout\(0) & ((\alu|Mux1~12_combout\))) # (!\debug~combout\(0) & (\pc|sr_out\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \debug~combout\(0),
	datac => \pc|sr_out\(30),
	datad => \alu|Mux1~12_combout\,
	combout => \data~60_combout\);

-- Location: LCCOMB_X66_Y38_N30
\data~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~61_combout\ = (\data~60_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(30)) # (!\debug~combout\(1))))) # (!\data~60_combout\ & (\ir|sr_out\(30) & ((\debug~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~60_combout\,
	datab => \ir|sr_out\(30),
	datac => \mem|altsyncram_component|auto_generated|q_a\(30),
	datad => \debug~combout\(1),
	combout => \data~61_combout\);

-- Location: LCCOMB_X66_Y38_N28
\data~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~62_combout\ = (\debug~combout\(1) & ((\debug~combout\(0)) # ((\ir|sr_out\(31))))) # (!\debug~combout\(1) & (!\debug~combout\(0) & ((\pc|sr_out\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debug~combout\(1),
	datab => \debug~combout\(0),
	datac => \ir|sr_out\(31),
	datad => \pc|sr_out\(31),
	combout => \data~62_combout\);

-- Location: LCCOMB_X66_Y38_N2
\data~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \data~63_combout\ = (\data~62_combout\ & (((\mem|altsyncram_component|auto_generated|q_a\(31))) # (!\debug~combout\(0)))) # (!\data~62_combout\ & (\debug~combout\(0) & (\alu|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data~62_combout\,
	datab => \debug~combout\(0),
	datac => \alu|Mux0~8_combout\,
	datad => \mem|altsyncram_component|auto_generated|q_a\(31),
	combout => \data~63_combout\);

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(0));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(2));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(3));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(4));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(5));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(6));

-- Location: PIN_L30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(7));

-- Location: PIN_M28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(8));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(9));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(10));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(11));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(12));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(13));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(14));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(15));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(16));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(17));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(18));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(19));

-- Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(20));

-- Location: PIN_L27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(21));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(22));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(23));

-- Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(24));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(25));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(26));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(27));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(28));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(29));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(30));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\data[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \data~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_data(31));
END structure;


