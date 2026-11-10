-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/08/2026 20:49:56"

-- 
-- Device: Altera EP3C16U484C6 Package UFBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Microproyecto2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	rst : IN std_logic;
	pir_in : IN std_logic;
	LED_TEST : OUT std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Microproyecto2;

-- Design Ports Information
-- LED_TEST	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pir_in	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Microproyecto2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pir_in : std_logic;
SIGNAL ww_LED_TEST : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LED_TEST~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \pir_in~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_ram|mem~15feeder_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \u_pir|pir_sync1~q\ : std_logic;
SIGNAL \u_pir|pir_sync2~q\ : std_logic;
SIGNAL \u_pir|pir_prev~feeder_combout\ : std_logic;
SIGNAL \u_pir|pir_prev~q\ : std_logic;
SIGNAL \u_pir|process_0~0_combout\ : std_logic;
SIGNAL \u_pir|pir_pulse~q\ : std_logic;
SIGNAL \u_control|Selector0~0_combout\ : std_logic;
SIGNAL \u_control|state_reg.IDLE~q\ : std_logic;
SIGNAL \u_control|state_next.READ_ROM~0_combout\ : std_logic;
SIGNAL \u_control|state_reg.READ_ROM~q\ : std_logic;
SIGNAL \u_control|state_reg.WRITE_RAM~feeder_combout\ : std_logic;
SIGNAL \u_control|state_reg.WRITE_RAM~q\ : std_logic;
SIGNAL \u_control|state_reg.READ_RAM~q\ : std_logic;
SIGNAL \u_ram|mem~15_q\ : std_logic;
SIGNAL \u_control|rom_addr_reg[0]~0_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[1]~1_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[2]~2_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[3]~3_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[3]~4_combout\ : std_logic;
SIGNAL \u_rom|q_reg[3]~0_combout\ : std_logic;
SIGNAL \u_control|ram_addr_reg[0]~0_combout\ : std_logic;
SIGNAL \u_control|Add1~0_combout\ : std_logic;
SIGNAL \u_control|Add1~1_combout\ : std_logic;
SIGNAL \u_control|Add1~2_combout\ : std_logic;
SIGNAL \u_ram|mem~29_combout\ : std_logic;
SIGNAL \u_ram|mem~30_combout\ : std_logic;
SIGNAL \u_ram|mem~19_q\ : std_logic;
SIGNAL \u_control|ram_addr_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \u_rom|q_reg[3]~_wirecell_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \u_ram|q_reg[3]~3_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[2]~0_combout\ : std_logic;
SIGNAL \u_ram|mem~26_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~27_combout\ : std_logic;
SIGNAL \u_ram|mem~28_combout\ : std_logic;
SIGNAL \u_ram|q_reg[8]~10_combout\ : std_logic;
SIGNAL \ram_rd_en_d~feeder_combout\ : std_logic;
SIGNAL \ram_rd_en_d~q\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \u_ram|mem~18_q\ : std_logic;
SIGNAL \u_ram|q_reg[2]~2_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \u_ram|mem~17_q\ : std_logic;
SIGNAL \u_ram|q_reg[1]~1_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~16_q\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \u_ram|q_reg[0]~0_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \data_valid_s~feeder_combout\ : std_logic;
SIGNAL \data_valid_s~q\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \u_ram|q_reg[6]~6_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \u_ram|q_reg[7]~7_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \u_ram|q_reg[5]~5_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~31_combout\ : std_logic;
SIGNAL \u_ram|mem~20_q\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \u_ram|q_reg[4]~4_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[13]~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \u_ram|q_reg[8]~9_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \ram_data_display_s[8]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \u_ram|q_reg[9]~8_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \ram_data_display_s[9]~feeder_combout\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL \HEX2~1_combout\ : std_logic;
SIGNAL \HEX2~2_combout\ : std_logic;
SIGNAL \HEX2~3_combout\ : std_logic;
SIGNAL \HEX2~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \u_rom|q_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_control|rom_addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ram_addr_display_s : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_control|ram_addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_ram|mem_rtl_0_bypass\ : std_logic_vector(0 TO 18);
SIGNAL \u_ram|q_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ram_data_display_s : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_control|ALT_INV_state_reg.READ_RAM~q\ : std_logic;
SIGNAL \ALT_INV_HEX2~4_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_rst <= rst;
ww_pir_in <= pir_in;
LED_TEST <= ww_LED_TEST;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & vcc & vcc & vcc & vcc & vcc & 
\u_rom|q_reg[3]~_wirecell_combout\ & \u_rom|q_reg\(3) & \u_rom|q_reg\(2) & \u_rom|q_reg\(1) & \u_rom|q_reg\(0));

\u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_control|ram_addr_reg\(3) & \u_control|ram_addr_reg\(2) & \u_control|ram_addr_reg\(1) & \u_control|ram_addr_reg\(0));

\u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u_control|Add1~2_combout\ & \u_control|Add1~1_combout\ & \u_control|Add1~0_combout\ & \u_control|ram_addr_reg[0]~_wirecell_combout\);

\u_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u_ram|mem_rtl_0|auto_generated|ram_block1a1\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u_ram|mem_rtl_0|auto_generated|ram_block1a2\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u_ram|mem_rtl_0|auto_generated|ram_block1a3\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u_ram|mem_rtl_0|auto_generated|ram_block1a4\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u_ram|mem_rtl_0|auto_generated|ram_block1a5\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u_ram|mem_rtl_0|auto_generated|ram_block1a6\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u_ram|mem_rtl_0|auto_generated|ram_block1a7\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\u_ram|mem_rtl_0|auto_generated|ram_block1a8\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\u_ram|mem_rtl_0|auto_generated|ram_block1a9\ <= \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\u_control|ALT_INV_state_reg.READ_RAM~q\ <= NOT \u_control|state_reg.READ_RAM~q\;
\ALT_INV_HEX2~4_combout\ <= NOT \HEX2~4_combout\;

-- Location: IOOBUF_X0_Y20_N9
\LED_TEST~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pir_in~input_o\,
	devoe => ww_devoe,
	o => \LED_TEST~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X28_Y0_N15
\pir_in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pir_in,
	o => \pir_in~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y11_N4
\u_ram|mem~15feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~15feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_ram|mem~15feeder_combout\);

-- Location: IOIBUF_X0_Y23_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X28_Y25_N5
\u_pir|pir_sync1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \pir_in~input_o\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pir|pir_sync1~q\);

-- Location: FF_X28_Y25_N3
\u_pir|pir_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_pir|pir_sync1~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pir|pir_sync2~q\);

-- Location: LCCOMB_X28_Y25_N26
\u_pir|pir_prev~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_pir|pir_prev~feeder_combout\ = \u_pir|pir_sync2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_pir|pir_sync2~q\,
	combout => \u_pir|pir_prev~feeder_combout\);

-- Location: FF_X28_Y25_N27
\u_pir|pir_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_pir|pir_prev~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pir|pir_prev~q\);

-- Location: LCCOMB_X28_Y25_N10
\u_pir|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_pir|process_0~0_combout\ = (!\u_pir|pir_prev~q\ & \u_pir|pir_sync2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_pir|pir_prev~q\,
	datad => \u_pir|pir_sync2~q\,
	combout => \u_pir|process_0~0_combout\);

-- Location: FF_X28_Y25_N11
\u_pir|pir_pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_pir|process_0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pir|pir_pulse~q\);

-- Location: LCCOMB_X28_Y25_N12
\u_control|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Selector0~0_combout\ = (!\u_control|state_reg.READ_RAM~q\ & ((\u_pir|pir_pulse~q\) # (\u_control|state_reg.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_pir|pir_pulse~q\,
	datab => \u_control|state_reg.READ_RAM~q\,
	datac => \u_control|state_reg.IDLE~q\,
	combout => \u_control|Selector0~0_combout\);

-- Location: FF_X28_Y25_N13
\u_control|state_reg.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state_reg.IDLE~q\);

-- Location: LCCOMB_X28_Y25_N28
\u_control|state_next.READ_ROM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|state_next.READ_ROM~0_combout\ = (\u_pir|pir_pulse~q\ & !\u_control|state_reg.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_pir|pir_pulse~q\,
	datad => \u_control|state_reg.IDLE~q\,
	combout => \u_control|state_next.READ_ROM~0_combout\);

-- Location: FF_X28_Y25_N29
\u_control|state_reg.READ_ROM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|state_next.READ_ROM~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state_reg.READ_ROM~q\);

-- Location: LCCOMB_X27_Y11_N12
\u_control|state_reg.WRITE_RAM~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|state_reg.WRITE_RAM~feeder_combout\ = \u_control|state_reg.READ_ROM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|state_reg.READ_ROM~q\,
	combout => \u_control|state_reg.WRITE_RAM~feeder_combout\);

-- Location: FF_X27_Y11_N13
\u_control|state_reg.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|state_reg.WRITE_RAM~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state_reg.WRITE_RAM~q\);

-- Location: FF_X27_Y11_N9
\u_control|state_reg.READ_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|state_reg.WRITE_RAM~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state_reg.READ_RAM~q\);

-- Location: FF_X24_Y11_N5
\u_ram|mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem~15feeder_combout\,
	clrn => \rst~input_o\,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~15_q\);

-- Location: LCCOMB_X27_Y11_N0
\u_control|rom_addr_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[0]~0_combout\ = \u_control|rom_addr_reg\(0) $ (\u_control|state_reg.WRITE_RAM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|rom_addr_reg\(0),
	datad => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_control|rom_addr_reg[0]~0_combout\);

-- Location: FF_X27_Y11_N1
\u_control|rom_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|rom_addr_reg[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|rom_addr_reg\(0));

-- Location: LCCOMB_X27_Y11_N26
\u_control|rom_addr_reg[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[1]~1_combout\ = \u_control|rom_addr_reg\(1) $ (((\u_control|rom_addr_reg\(0) & \u_control|state_reg.WRITE_RAM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|rom_addr_reg\(0),
	datac => \u_control|rom_addr_reg\(1),
	datad => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_control|rom_addr_reg[1]~1_combout\);

-- Location: FF_X27_Y11_N27
\u_control|rom_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|rom_addr_reg[1]~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|rom_addr_reg\(1));

-- Location: LCCOMB_X27_Y11_N30
\u_control|rom_addr_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[2]~2_combout\ = \u_control|rom_addr_reg\(2) $ (((\u_control|rom_addr_reg\(1) & (\u_control|rom_addr_reg\(0) & \u_control|state_reg.WRITE_RAM~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|rom_addr_reg\(1),
	datab => \u_control|rom_addr_reg\(0),
	datac => \u_control|rom_addr_reg\(2),
	datad => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_control|rom_addr_reg[2]~2_combout\);

-- Location: FF_X27_Y11_N31
\u_control|rom_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|rom_addr_reg[2]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|rom_addr_reg\(2));

-- Location: LCCOMB_X27_Y11_N10
\u_control|rom_addr_reg[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[3]~3_combout\ = (\u_control|rom_addr_reg\(2) & (\u_control|rom_addr_reg\(0) & (\u_control|rom_addr_reg\(1) & \u_control|state_reg.WRITE_RAM~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|rom_addr_reg\(2),
	datab => \u_control|rom_addr_reg\(0),
	datac => \u_control|rom_addr_reg\(1),
	datad => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_control|rom_addr_reg[3]~3_combout\);

-- Location: LCCOMB_X27_Y11_N16
\u_control|rom_addr_reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[3]~4_combout\ = \u_control|rom_addr_reg\(3) $ (\u_control|rom_addr_reg[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|rom_addr_reg\(3),
	datad => \u_control|rom_addr_reg[3]~3_combout\,
	combout => \u_control|rom_addr_reg[3]~4_combout\);

-- Location: FF_X27_Y11_N17
\u_control|rom_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|rom_addr_reg[3]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|rom_addr_reg\(3));

-- Location: LCCOMB_X27_Y11_N14
\u_rom|q_reg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rom|q_reg[3]~0_combout\ = !\u_control|rom_addr_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|rom_addr_reg\(3),
	combout => \u_rom|q_reg[3]~0_combout\);

-- Location: FF_X27_Y11_N15
\u_rom|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_rom|q_reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|q_reg\(3));

-- Location: LCCOMB_X24_Y11_N18
\u_control|ram_addr_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|ram_addr_reg[0]~0_combout\ = !\u_control|ram_addr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|ram_addr_reg\(0),
	combout => \u_control|ram_addr_reg[0]~0_combout\);

-- Location: FF_X24_Y11_N19
\u_control|ram_addr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|ram_addr_reg[0]~0_combout\,
	clrn => \rst~input_o\,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|ram_addr_reg\(0));

-- Location: LCCOMB_X24_Y11_N14
\u_control|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Add1~0_combout\ = \u_control|ram_addr_reg\(1) $ (\u_control|ram_addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|ram_addr_reg\(1),
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_control|Add1~0_combout\);

-- Location: FF_X24_Y11_N3
\u_control|ram_addr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|Add1~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|ram_addr_reg\(1));

-- Location: LCCOMB_X24_Y11_N26
\u_control|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Add1~1_combout\ = \u_control|ram_addr_reg\(2) $ (((\u_control|ram_addr_reg\(1) & \u_control|ram_addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|ram_addr_reg\(1),
	datac => \u_control|ram_addr_reg\(2),
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_control|Add1~1_combout\);

-- Location: FF_X24_Y11_N27
\u_control|ram_addr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|Add1~1_combout\,
	clrn => \rst~input_o\,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|ram_addr_reg\(2));

-- Location: LCCOMB_X24_Y11_N30
\u_control|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Add1~2_combout\ = \u_control|ram_addr_reg\(3) $ (((\u_control|ram_addr_reg\(0) & (\u_control|ram_addr_reg\(2) & \u_control|ram_addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|ram_addr_reg\(0),
	datab => \u_control|ram_addr_reg\(2),
	datac => \u_control|ram_addr_reg\(3),
	datad => \u_control|ram_addr_reg\(1),
	combout => \u_control|Add1~2_combout\);

-- Location: FF_X24_Y11_N31
\u_control|ram_addr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|Add1~2_combout\,
	clrn => \rst~input_o\,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|ram_addr_reg\(3));

-- Location: LCCOMB_X24_Y11_N24
\u_ram|mem~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~29_combout\ = (!\u_control|ram_addr_reg\(2) & (!\u_control|ram_addr_reg\(1) & (!\u_control|ram_addr_reg\(3) & !\u_control|ram_addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|ram_addr_reg\(2),
	datab => \u_control|ram_addr_reg\(1),
	datac => \u_control|ram_addr_reg\(3),
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_ram|mem~29_combout\);

-- Location: LCCOMB_X27_Y11_N4
\u_ram|mem~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~30_combout\ = (\u_ram|mem~29_combout\ & \u_control|state_reg.WRITE_RAM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|mem~29_combout\,
	datad => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_ram|mem~30_combout\);

-- Location: FF_X27_Y11_N23
\u_ram|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_rom|q_reg\(3),
	sload => VCC,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~19_q\);

-- Location: FF_X27_Y11_N3
\u_rom|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|rom_addr_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|q_reg\(0));

-- Location: LCCOMB_X24_Y11_N10
\u_control|ram_addr_reg[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|ram_addr_reg[0]~_wirecell_combout\ = !\u_control|ram_addr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_control|ram_addr_reg[0]~_wirecell_combout\);

-- Location: LCCOMB_X27_Y11_N2
\~QUARTUS_CREATED_GND~I\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: FF_X27_Y11_N25
\u_rom|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|rom_addr_reg\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|q_reg\(1));

-- Location: FF_X27_Y11_N21
\u_rom|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|rom_addr_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|q_reg\(2));

-- Location: LCCOMB_X24_Y11_N22
\u_rom|q_reg[3]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rom|q_reg[3]~_wirecell_combout\ = !\u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(3),
	combout => \u_rom|q_reg[3]~_wirecell_combout\);

-- Location: M9K_X25_Y11_N0
\u_ram|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_memory:u_ram|altsyncram:mem_rtl_0|altsyncram_36k1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 10,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 4,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 10,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_control|state_reg.WRITE_RAM~q\,
	portbre => VCC,
	portbaddrstall => \u_control|ALT_INV_state_reg.READ_RAM~q\,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	portadatain => \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_ram|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y11_N2
\u_ram|q_reg[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[3]~3_combout\ = (\u_ram|mem~15_q\ & ((\u_ram|mem_rtl_0|auto_generated|ram_block1a3\))) # (!\u_ram|mem~15_q\ & (\u_ram|mem~19_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datab => \u_ram|mem~19_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a3\,
	combout => \u_ram|q_reg[3]~3_combout\);

-- Location: LCCOMB_X26_Y11_N8
\u_ram|mem_rtl_0_bypass[12]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[12]~feeder_combout\ = \u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(3),
	combout => \u_ram|mem_rtl_0_bypass[12]~feeder_combout\);

-- Location: FF_X26_Y11_N9
\u_ram|mem_rtl_0_bypass[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(12));

-- Location: FF_X24_Y11_N23
\u_ram|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(1));

-- Location: LCCOMB_X24_Y11_N8
\u_ram|mem_rtl_0_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[3]~feeder_combout\ = \u_control|ram_addr_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|ram_addr_reg\(1),
	combout => \u_ram|mem_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X24_Y11_N9
\u_ram|mem_rtl_0_bypass[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(3));

-- Location: FF_X24_Y11_N13
\u_ram|mem_rtl_0_bypass[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|Add1~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(4));

-- Location: LCCOMB_X24_Y11_N0
\u_ram|mem_rtl_0_bypass[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[2]~0_combout\ = !\u_control|ram_addr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_ram|mem_rtl_0_bypass[2]~0_combout\);

-- Location: FF_X24_Y11_N1
\u_ram|mem_rtl_0_bypass[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[2]~0_combout\,
	clrn => \rst~input_o\,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(2));

-- Location: LCCOMB_X24_Y11_N12
\u_ram|mem~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~26_combout\ = (\u_ram|mem_rtl_0_bypass\(1) & (\u_ram|mem_rtl_0_bypass\(2) & (\u_ram|mem_rtl_0_bypass\(3) $ (!\u_ram|mem_rtl_0_bypass\(4))))) # (!\u_ram|mem_rtl_0_bypass\(1) & (!\u_ram|mem_rtl_0_bypass\(2) & (\u_ram|mem_rtl_0_bypass\(3) $ 
-- (!\u_ram|mem_rtl_0_bypass\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem_rtl_0_bypass\(1),
	datab => \u_ram|mem_rtl_0_bypass\(3),
	datac => \u_ram|mem_rtl_0_bypass\(4),
	datad => \u_ram|mem_rtl_0_bypass\(2),
	combout => \u_ram|mem~26_combout\);

-- Location: FF_X24_Y11_N29
\u_ram|mem_rtl_0_bypass[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|state_reg.WRITE_RAM~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(0));

-- Location: FF_X24_Y11_N7
\u_ram|mem_rtl_0_bypass[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(7));

-- Location: LCCOMB_X24_Y11_N16
\u_ram|mem_rtl_0_bypass[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[8]~feeder_combout\ = \u_control|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|Add1~2_combout\,
	combout => \u_ram|mem_rtl_0_bypass[8]~feeder_combout\);

-- Location: FF_X24_Y11_N17
\u_ram|mem_rtl_0_bypass[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[8]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(8));

-- Location: FF_X24_Y11_N21
\u_ram|mem_rtl_0_bypass[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|Add1~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(6));

-- Location: FF_X24_Y11_N11
\u_ram|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(5));

-- Location: LCCOMB_X24_Y11_N20
\u_ram|mem~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~27_combout\ = (\u_ram|mem_rtl_0_bypass\(7) & (\u_ram|mem_rtl_0_bypass\(8) & (\u_ram|mem_rtl_0_bypass\(6) $ (!\u_ram|mem_rtl_0_bypass\(5))))) # (!\u_ram|mem_rtl_0_bypass\(7) & (!\u_ram|mem_rtl_0_bypass\(8) & (\u_ram|mem_rtl_0_bypass\(6) $ 
-- (!\u_ram|mem_rtl_0_bypass\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem_rtl_0_bypass\(7),
	datab => \u_ram|mem_rtl_0_bypass\(8),
	datac => \u_ram|mem_rtl_0_bypass\(6),
	datad => \u_ram|mem_rtl_0_bypass\(5),
	combout => \u_ram|mem~27_combout\);

-- Location: LCCOMB_X24_Y11_N28
\u_ram|mem~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~28_combout\ = (\u_ram|mem~26_combout\ & (\u_ram|mem_rtl_0_bypass\(0) & \u_ram|mem~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~26_combout\,
	datac => \u_ram|mem_rtl_0_bypass\(0),
	datad => \u_ram|mem~27_combout\,
	combout => \u_ram|mem~28_combout\);

-- Location: LCCOMB_X27_Y11_N8
\u_ram|q_reg[8]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[8]~10_combout\ = \u_control|state_reg.READ_RAM~q\ $ (\u_control|state_reg.WRITE_RAM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state_reg.READ_RAM~q\,
	datad => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_ram|q_reg[8]~10_combout\);

-- Location: FF_X26_Y11_N3
\u_ram|q_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[3]~3_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(12),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(3));

-- Location: LCCOMB_X28_Y25_N22
\ram_rd_en_d~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_rd_en_d~feeder_combout\ = \u_control|state_reg.READ_RAM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state_reg.READ_RAM~q\,
	combout => \ram_rd_en_d~feeder_combout\);

-- Location: FF_X28_Y25_N23
ram_rd_en_d : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ram_rd_en_d~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rd_en_d~q\);

-- Location: FF_X26_Y25_N31
\ram_data_display_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(3));

-- Location: FF_X27_Y11_N7
\u_ram|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_rom|q_reg\(2),
	sload => VCC,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~18_q\);

-- Location: LCCOMB_X26_Y11_N0
\u_ram|q_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[2]~2_combout\ = (\u_ram|mem~15_q\ & (\u_ram|mem_rtl_0|auto_generated|ram_block1a2\)) # (!\u_ram|mem~15_q\ & ((\u_ram|mem~18_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem_rtl_0|auto_generated|ram_block1a2\,
	datab => \u_ram|mem~15_q\,
	datad => \u_ram|mem~18_q\,
	combout => \u_ram|q_reg[2]~2_combout\);

-- Location: LCCOMB_X26_Y11_N4
\u_ram|mem_rtl_0_bypass[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[11]~feeder_combout\ = \u_rom|q_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|q_reg\(2),
	combout => \u_ram|mem_rtl_0_bypass[11]~feeder_combout\);

-- Location: FF_X26_Y11_N5
\u_ram|mem_rtl_0_bypass[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(11));

-- Location: FF_X26_Y11_N1
\u_ram|q_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[2]~2_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(11),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(2));

-- Location: FF_X26_Y25_N29
\ram_data_display_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(2),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(2));

-- Location: FF_X27_Y11_N29
\u_ram|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_rom|q_reg\(1),
	sload => VCC,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~17_q\);

-- Location: LCCOMB_X26_Y11_N12
\u_ram|q_reg[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[1]~1_combout\ = (\u_ram|mem~15_q\ & (\u_ram|mem_rtl_0|auto_generated|ram_block1a1\)) # (!\u_ram|mem~15_q\ & ((\u_ram|mem~17_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datab => \u_ram|mem_rtl_0|auto_generated|ram_block1a1\,
	datad => \u_ram|mem~17_q\,
	combout => \u_ram|q_reg[1]~1_combout\);

-- Location: LCCOMB_X26_Y11_N14
\u_ram|mem_rtl_0_bypass[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[10]~feeder_combout\ = \u_rom|q_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(1),
	combout => \u_ram|mem_rtl_0_bypass[10]~feeder_combout\);

-- Location: FF_X26_Y11_N15
\u_ram|mem_rtl_0_bypass[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(10));

-- Location: FF_X26_Y11_N13
\u_ram|q_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[1]~1_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(10),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(1));

-- Location: FF_X26_Y25_N15
\ram_data_display_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(1));

-- Location: FF_X27_Y11_N5
\u_ram|mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_rom|q_reg\(0),
	sload => VCC,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~16_q\);

-- Location: LCCOMB_X26_Y11_N28
\u_ram|q_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[0]~0_combout\ = (\u_ram|mem~15_q\ & ((\u_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # (!\u_ram|mem~15_q\ & (\u_ram|mem~16_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datab => \u_ram|mem~16_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \u_ram|q_reg[0]~0_combout\);

-- Location: LCCOMB_X26_Y11_N22
\u_ram|mem_rtl_0_bypass[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[9]~feeder_combout\ = \u_rom|q_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(0),
	combout => \u_ram|mem_rtl_0_bypass[9]~feeder_combout\);

-- Location: FF_X26_Y11_N23
\u_ram|mem_rtl_0_bypass[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(9));

-- Location: FF_X26_Y11_N29
\u_ram|q_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[0]~0_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(9),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(0));

-- Location: FF_X26_Y25_N5
\ram_data_display_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(0));

-- Location: LCCOMB_X26_Y25_N24
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (ram_data_display_s(3) & (ram_data_display_s(0) & (ram_data_display_s(2) $ (ram_data_display_s(1))))) # (!ram_data_display_s(3) & (!ram_data_display_s(1) & (ram_data_display_s(2) $ (ram_data_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(3),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(1),
	datad => ram_data_display_s(0),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X28_Y25_N16
\data_valid_s~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_valid_s~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \data_valid_s~feeder_combout\);

-- Location: FF_X28_Y25_N17
data_valid_s : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \data_valid_s~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_valid_s~q\);

-- Location: LCCOMB_X26_Y25_N2
\Mux27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X27_Y25_N4
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (ram_data_display_s(1) & ((ram_data_display_s(0) & ((ram_data_display_s(3)))) # (!ram_data_display_s(0) & (ram_data_display_s(2))))) # (!ram_data_display_s(1) & (ram_data_display_s(2) & (ram_data_display_s(0) $ 
-- (ram_data_display_s(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(1),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(0),
	datad => ram_data_display_s(3),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X26_Y25_N8
\Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X27_Y25_N10
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (ram_data_display_s(2) & (ram_data_display_s(3) & ((ram_data_display_s(1)) # (!ram_data_display_s(0))))) # (!ram_data_display_s(2) & (ram_data_display_s(1) & (!ram_data_display_s(0) & !ram_data_display_s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(1),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(0),
	datad => ram_data_display_s(3),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X27_Y25_N0
\Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datac => \data_valid_s~q\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X27_Y25_N22
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (ram_data_display_s(1) & ((ram_data_display_s(2) & (ram_data_display_s(0))) # (!ram_data_display_s(2) & (!ram_data_display_s(0) & ram_data_display_s(3))))) # (!ram_data_display_s(1) & (!ram_data_display_s(3) & (ram_data_display_s(2) $ 
-- (ram_data_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(1),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(0),
	datad => ram_data_display_s(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\Mux24~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\data_valid_s~q\ & \Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid_s~q\,
	datac => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X27_Y25_N26
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (ram_data_display_s(1) & (((ram_data_display_s(0) & !ram_data_display_s(3))))) # (!ram_data_display_s(1) & ((ram_data_display_s(2) & ((!ram_data_display_s(3)))) # (!ram_data_display_s(2) & (ram_data_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(1),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(0),
	datad => ram_data_display_s(3),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X27_Y25_N24
\Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\data_valid_s~q\ & \Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid_s~q\,
	datac => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X27_Y25_N14
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (ram_data_display_s(1) & (!ram_data_display_s(3) & ((ram_data_display_s(0)) # (!ram_data_display_s(2))))) # (!ram_data_display_s(1) & (ram_data_display_s(0) & (ram_data_display_s(2) $ (!ram_data_display_s(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(1),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(0),
	datad => ram_data_display_s(3),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X28_Y25_N2
\Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X27_Y25_N20
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (ram_data_display_s(0) & ((ram_data_display_s(3)) # (ram_data_display_s(1) $ (ram_data_display_s(2))))) # (!ram_data_display_s(0) & ((ram_data_display_s(1)) # (ram_data_display_s(2) $ (ram_data_display_s(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(1),
	datab => ram_data_display_s(2),
	datac => ram_data_display_s(0),
	datad => ram_data_display_s(3),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X27_Y25_N2
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!\Mux21~0_combout\) # (!\data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux21~0_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X26_Y11_N20
\u_ram|q_reg[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[6]~6_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a6\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \u_ram|q_reg[6]~6_combout\);

-- Location: LCCOMB_X28_Y11_N10
\u_ram|mem_rtl_0_bypass[15]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[15]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_ram|mem_rtl_0_bypass[15]~feeder_combout\);

-- Location: FF_X28_Y11_N11
\u_ram|mem_rtl_0_bypass[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(15));

-- Location: FF_X26_Y11_N21
\u_ram|q_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[6]~6_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(15),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(6));

-- Location: FF_X26_Y25_N27
\ram_data_display_s[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(6),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(6));

-- Location: LCCOMB_X26_Y11_N10
\u_ram|q_reg[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[7]~7_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a7\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \u_ram|q_reg[7]~7_combout\);

-- Location: LCCOMB_X26_Y11_N26
\u_ram|mem_rtl_0_bypass[16]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[16]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_ram|mem_rtl_0_bypass[16]~feeder_combout\);

-- Location: FF_X26_Y11_N27
\u_ram|mem_rtl_0_bypass[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(16));

-- Location: FF_X26_Y11_N11
\u_ram|q_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[7]~7_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(16),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(7));

-- Location: FF_X26_Y25_N17
\ram_data_display_s[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(7),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(7));

-- Location: LCCOMB_X26_Y11_N18
\u_ram|q_reg[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[5]~5_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a5\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \u_ram|q_reg[5]~5_combout\);

-- Location: LCCOMB_X28_Y11_N0
\u_ram|mem_rtl_0_bypass[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[14]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_ram|mem_rtl_0_bypass[14]~feeder_combout\);

-- Location: FF_X28_Y11_N1
\u_ram|mem_rtl_0_bypass[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(14));

-- Location: FF_X26_Y11_N19
\u_ram|q_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[5]~5_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(14),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(5));

-- Location: FF_X26_Y25_N9
\ram_data_display_s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(5),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(5));

-- Location: LCCOMB_X27_Y11_N18
\u_ram|mem~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~31_combout\ = !\u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|q_reg\(3),
	combout => \u_ram|mem~31_combout\);

-- Location: FF_X27_Y11_N19
\u_ram|mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem~31_combout\,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~20_q\);

-- Location: LCCOMB_X26_Y11_N16
\u_ram|q_reg[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[4]~4_combout\ = (\u_ram|mem~15_q\ & ((\u_ram|mem_rtl_0|auto_generated|ram_block1a4\))) # (!\u_ram|mem~15_q\ & (\u_ram|mem~20_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datab => \u_ram|mem~20_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \u_ram|q_reg[4]~4_combout\);

-- Location: LCCOMB_X26_Y11_N30
\u_ram|mem_rtl_0_bypass[13]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[13]~1_combout\ = !\u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(3),
	combout => \u_ram|mem_rtl_0_bypass[13]~1_combout\);

-- Location: FF_X26_Y11_N31
\u_ram|mem_rtl_0_bypass[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(13));

-- Location: FF_X26_Y11_N17
\u_ram|q_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[4]~4_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(13),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(4));

-- Location: FF_X26_Y25_N3
\ram_data_display_s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_ram|q_reg\(4),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(4));

-- Location: LCCOMB_X26_Y25_N22
\Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (ram_data_display_s(6) & (!ram_data_display_s(5) & (ram_data_display_s(7) $ (!ram_data_display_s(4))))) # (!ram_data_display_s(6) & (ram_data_display_s(4) & (ram_data_display_s(7) $ (!ram_data_display_s(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(6),
	datab => ram_data_display_s(7),
	datac => ram_data_display_s(5),
	datad => ram_data_display_s(4),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X26_Y25_N20
\Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux20~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X26_Y25_N6
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (ram_data_display_s(7) & ((ram_data_display_s(4) & ((ram_data_display_s(5)))) # (!ram_data_display_s(4) & (ram_data_display_s(6))))) # (!ram_data_display_s(7) & (ram_data_display_s(6) & (ram_data_display_s(5) $ 
-- (ram_data_display_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(6),
	datab => ram_data_display_s(7),
	datac => ram_data_display_s(5),
	datad => ram_data_display_s(4),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X26_Y25_N0
\Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X26_Y25_N18
\Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (ram_data_display_s(6) & (ram_data_display_s(7) & ((ram_data_display_s(5)) # (!ram_data_display_s(4))))) # (!ram_data_display_s(6) & (!ram_data_display_s(7) & (ram_data_display_s(5) & !ram_data_display_s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(6),
	datab => ram_data_display_s(7),
	datac => ram_data_display_s(5),
	datad => ram_data_display_s(4),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X26_Y25_N14
\Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X26_Y25_N12
\Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (ram_data_display_s(5) & ((ram_data_display_s(6) & ((ram_data_display_s(4)))) # (!ram_data_display_s(6) & (ram_data_display_s(7) & !ram_data_display_s(4))))) # (!ram_data_display_s(5) & (!ram_data_display_s(7) & (ram_data_display_s(6) 
-- $ (ram_data_display_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(6),
	datab => ram_data_display_s(7),
	datac => ram_data_display_s(5),
	datad => ram_data_display_s(4),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X26_Y25_N30
\Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X26_Y25_N10
\Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (ram_data_display_s(5) & (((!ram_data_display_s(7) & ram_data_display_s(4))))) # (!ram_data_display_s(5) & ((ram_data_display_s(6) & (!ram_data_display_s(7))) # (!ram_data_display_s(6) & ((ram_data_display_s(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(6),
	datab => ram_data_display_s(7),
	datac => ram_data_display_s(5),
	datad => ram_data_display_s(4),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X26_Y25_N4
\Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X26_Y25_N26
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (ram_data_display_s(5) & (!ram_data_display_s(7) & ((ram_data_display_s(4)) # (!ram_data_display_s(6))))) # (!ram_data_display_s(5) & (ram_data_display_s(4) & (ram_data_display_s(7) $ (!ram_data_display_s(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(5),
	datab => ram_data_display_s(7),
	datac => ram_data_display_s(6),
	datad => ram_data_display_s(4),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X27_Y25_N16
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\data_valid_s~q\ & \Mux15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid_s~q\,
	datac => \Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X26_Y25_N16
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (ram_data_display_s(4) & ((ram_data_display_s(7)) # (ram_data_display_s(6) $ (ram_data_display_s(5))))) # (!ram_data_display_s(4) & ((ram_data_display_s(5)) # (ram_data_display_s(6) $ (ram_data_display_s(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(6),
	datab => ram_data_display_s(5),
	datac => ram_data_display_s(7),
	datad => ram_data_display_s(4),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X26_Y25_N28
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\data_valid_s~q\) # (!\Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datad => \data_valid_s~q\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X26_Y11_N6
\u_ram|q_reg[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[8]~9_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a8\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem_rtl_0|auto_generated|ram_block1a8\,
	datad => \u_ram|mem~15_q\,
	combout => \u_ram|q_reg[8]~9_combout\);

-- Location: LCCOMB_X28_Y11_N4
\u_ram|mem_rtl_0_bypass[17]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[17]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_ram|mem_rtl_0_bypass[17]~feeder_combout\);

-- Location: FF_X28_Y11_N5
\u_ram|mem_rtl_0_bypass[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(17));

-- Location: FF_X26_Y11_N7
\u_ram|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[8]~9_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(17),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(8));

-- Location: LCCOMB_X28_Y25_N24
\ram_data_display_s[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_data_display_s[8]~feeder_combout\ = \u_ram|q_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_ram|q_reg\(8),
	combout => \ram_data_display_s[8]~feeder_combout\);

-- Location: FF_X28_Y25_N25
\ram_data_display_s[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ram_data_display_s[8]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(8));

-- Location: LCCOMB_X26_Y11_N24
\u_ram|q_reg[9]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[9]~8_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a9\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a9\,
	combout => \u_ram|q_reg[9]~8_combout\);

-- Location: LCCOMB_X28_Y11_N22
\u_ram|mem_rtl_0_bypass[18]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[18]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_ram|mem_rtl_0_bypass[18]~feeder_combout\);

-- Location: FF_X28_Y11_N23
\u_ram|mem_rtl_0_bypass[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[18]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(18));

-- Location: FF_X26_Y11_N25
\u_ram|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[9]~8_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(18),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(9));

-- Location: LCCOMB_X28_Y25_N14
\ram_data_display_s[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ram_data_display_s[9]~feeder_combout\ = \u_ram|q_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_ram|q_reg\(9),
	combout => \ram_data_display_s[9]~feeder_combout\);

-- Location: FF_X28_Y25_N15
\ram_data_display_s[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ram_data_display_s[9]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \ram_rd_en_d~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_data_display_s(9));

-- Location: LCCOMB_X29_Y25_N16
\HEX2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = (\data_valid_s~q\ & (ram_data_display_s(8) & !ram_data_display_s(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid_s~q\,
	datab => ram_data_display_s(8),
	datad => ram_data_display_s(9),
	combout => \HEX2~0_combout\);

-- Location: LCCOMB_X28_Y25_N8
\HEX2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~1_combout\ = (!ram_data_display_s(8) & (ram_data_display_s(9) & \data_valid_s~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_data_display_s(8),
	datac => ram_data_display_s(9),
	datad => \data_valid_s~q\,
	combout => \HEX2~1_combout\);

-- Location: LCCOMB_X28_Y25_N6
\HEX2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~2_combout\ = (ram_data_display_s(8) & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ram_data_display_s(8),
	datad => \data_valid_s~q\,
	combout => \HEX2~2_combout\);

-- Location: LCCOMB_X29_Y25_N2
\HEX2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~3_combout\ = (\data_valid_s~q\ & ((ram_data_display_s(9)) # (ram_data_display_s(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_data_display_s(9),
	datab => ram_data_display_s(8),
	datac => \data_valid_s~q\,
	combout => \HEX2~3_combout\);

-- Location: LCCOMB_X29_Y25_N4
\HEX2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~4_combout\ = (\data_valid_s~q\ & ram_data_display_s(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid_s~q\,
	datad => ram_data_display_s(9),
	combout => \HEX2~4_combout\);

-- Location: FF_X24_Y11_N25
\ram_addr_display_s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_addr_display_s(3));

-- Location: FF_X29_Y25_N5
\ram_addr_display_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_addr_display_s(1));

-- Location: FF_X24_Y11_N15
\ram_addr_display_s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(2),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_addr_display_s(2));

-- Location: FF_X29_Y25_N17
\ram_addr_display_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|ram_addr_reg\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_addr_display_s(0));

-- Location: LCCOMB_X29_Y25_N14
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (ram_addr_display_s(3) & (ram_addr_display_s(0) & (ram_addr_display_s(1) $ (ram_addr_display_s(2))))) # (!ram_addr_display_s(3) & (!ram_addr_display_s(1) & (ram_addr_display_s(2) $ (ram_addr_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X29_Y25_N12
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \data_valid_s~q\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X29_Y25_N30
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (ram_addr_display_s(3) & ((ram_addr_display_s(0) & (ram_addr_display_s(1))) # (!ram_addr_display_s(0) & ((ram_addr_display_s(2)))))) # (!ram_addr_display_s(3) & (ram_addr_display_s(2) & (ram_addr_display_s(1) $ 
-- (ram_addr_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X29_Y25_N24
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datac => \data_valid_s~q\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X29_Y25_N22
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (ram_addr_display_s(3) & (ram_addr_display_s(2) & ((ram_addr_display_s(1)) # (!ram_addr_display_s(0))))) # (!ram_addr_display_s(3) & (ram_addr_display_s(1) & (!ram_addr_display_s(2) & !ram_addr_display_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X29_Y25_N8
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \data_valid_s~q\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X29_Y25_N26
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (ram_addr_display_s(1) & ((ram_addr_display_s(2) & ((ram_addr_display_s(0)))) # (!ram_addr_display_s(2) & (ram_addr_display_s(3) & !ram_addr_display_s(0))))) # (!ram_addr_display_s(1) & (!ram_addr_display_s(3) & (ram_addr_display_s(2) $ 
-- (ram_addr_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X29_Y25_N20
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datac => \data_valid_s~q\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X29_Y25_N18
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (ram_addr_display_s(1) & (!ram_addr_display_s(3) & ((ram_addr_display_s(0))))) # (!ram_addr_display_s(1) & ((ram_addr_display_s(2) & (!ram_addr_display_s(3))) # (!ram_addr_display_s(2) & ((ram_addr_display_s(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X29_Y25_N28
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\data_valid_s~q\ & \Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X29_Y25_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (ram_addr_display_s(1) & (!ram_addr_display_s(3) & ((ram_addr_display_s(0)) # (!ram_addr_display_s(2))))) # (!ram_addr_display_s(1) & (ram_addr_display_s(0) & (ram_addr_display_s(3) $ (!ram_addr_display_s(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X29_Y25_N0
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\data_valid_s~q\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X29_Y25_N6
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (ram_addr_display_s(0) & ((ram_addr_display_s(3)) # (ram_addr_display_s(1) $ (ram_addr_display_s(2))))) # (!ram_addr_display_s(0) & ((ram_addr_display_s(1)) # (ram_addr_display_s(3) $ (ram_addr_display_s(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(3),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\Mux0~0_combout\) # (!\data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_valid_s~q\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

ww_LED_TEST <= \LED_TEST~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


