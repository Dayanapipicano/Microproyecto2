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

-- DATE "11/08/2026 16:08:17"

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
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \contador_prueba~14_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \contador_prueba~13_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \contador_prueba~12_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \contador_prueba~11_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \contador_prueba~21_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \contador_prueba~19_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \contador_prueba~10_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \contador_prueba~18_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \contador_prueba~17_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \contador_prueba~16_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \contador_prueba~15_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \contador_prueba~20_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \pir_prueba~0_combout\ : std_logic;
SIGNAL \pir_prueba~q\ : std_logic;
SIGNAL \u_control|Selector0~0_combout\ : std_logic;
SIGNAL \u_control|state_reg.IDLE~q\ : std_logic;
SIGNAL \u_control|state_next.READ_ROM~0_combout\ : std_logic;
SIGNAL \u_control|state_reg.READ_ROM~q\ : std_logic;
SIGNAL \u_control|state_reg.WRITE_RAM~q\ : std_logic;
SIGNAL \u_control|state_reg.READ_RAM~feeder_combout\ : std_logic;
SIGNAL \u_control|state_reg.READ_RAM~q\ : std_logic;
SIGNAL \u_ram|mem~15_q\ : std_logic;
SIGNAL \u_control|rom_addr_reg[0]~0_combout\ : std_logic;
SIGNAL \u_control|ram_addr_reg[0]~0_combout\ : std_logic;
SIGNAL \u_control|Add1~0_combout\ : std_logic;
SIGNAL \u_control|Add1~1_combout\ : std_logic;
SIGNAL \u_control|Add1~2_combout\ : std_logic;
SIGNAL \u_ram|mem~29_combout\ : std_logic;
SIGNAL \u_ram|mem~30_combout\ : std_logic;
SIGNAL \u_ram|mem~16_q\ : std_logic;
SIGNAL \u_control|ram_addr_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[1]~1_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[2]~2_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[3]~3_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg[3]~4_combout\ : std_logic;
SIGNAL \u_rom|q_reg[3]~0_combout\ : std_logic;
SIGNAL \u_rom|q_reg[3]~_wirecell_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \u_ram|q_reg[0]~0_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[9]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[1]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[3]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[2]~0_combout\ : std_logic;
SIGNAL \u_ram|mem~26_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[5]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[8]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~27_combout\ : std_logic;
SIGNAL \u_ram|mem~28_combout\ : std_logic;
SIGNAL \u_ram|q_reg[4]~10_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \u_ram|mem~18feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~18_q\ : std_logic;
SIGNAL \u_ram|q_reg[2]~2_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[11]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~19feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~19_q\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \u_ram|q_reg[3]~3_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[12]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \u_ram|mem~17feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~17_q\ : std_logic;
SIGNAL \u_ram|q_reg[1]~1_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[10]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \data_valid_s~feeder_combout\ : std_logic;
SIGNAL \data_valid_s~q\ : std_logic;
SIGNAL \HEX0~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \HEX0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \HEX0~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \HEX0~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \HEX0~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \HEX0~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \HEX0~6_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \u_ram|q_reg[5]~5_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[14]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \u_ram|q_reg[6]~6_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[15]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \u_ram|q_reg[7]~7_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[16]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem~31_combout\ : std_logic;
SIGNAL \u_ram|mem~20_q\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \u_ram|q_reg[4]~4_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[13]~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \HEX1~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \HEX1~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \HEX1~3_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \HEX1~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \HEX1~5_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \HEX1~6_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \u_ram|q_reg[9]~9_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[18]~feeder_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \u_ram|q_reg[8]~8_combout\ : std_logic;
SIGNAL \u_ram|mem_rtl_0_bypass[17]~feeder_combout\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL \HEX2~1_combout\ : std_logic;
SIGNAL \HEX2~2_combout\ : std_logic;
SIGNAL \HEX2~3_combout\ : std_logic;
SIGNAL \HEX2~4_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \HEX3~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \HEX3~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \HEX3~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \HEX3~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \HEX3~5_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \HEX3~6_combout\ : std_logic;
SIGNAL \u_control|rom_addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_ram|mem_rtl_0_bypass\ : std_logic_vector(0 TO 18);
SIGNAL \u_control|ram_addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_rom|q_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_ram|q_reg\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ram_addr_display_s : std_logic_vector(3 DOWNTO 0);
SIGNAL contador_prueba : std_logic_vector(25 DOWNTO 0);
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
	i => \HEX0~0_combout\,
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
	i => \HEX0~1_combout\,
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
	i => \HEX0~2_combout\,
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
	i => \HEX0~3_combout\,
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
	i => \HEX0~4_combout\,
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
	i => \HEX0~5_combout\,
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
	i => \HEX0~6_combout\,
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
	i => \HEX1~0_combout\,
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
	i => \HEX1~1_combout\,
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
	i => \HEX1~2_combout\,
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
	i => \HEX1~3_combout\,
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
	i => \HEX1~4_combout\,
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
	i => \HEX1~5_combout\,
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
	i => \HEX1~6_combout\,
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
	i => \HEX3~0_combout\,
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
	i => \HEX3~1_combout\,
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
	i => \HEX3~2_combout\,
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
	i => \HEX3~3_combout\,
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
	i => \HEX3~4_combout\,
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
	i => \HEX3~5_combout\,
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
	i => \HEX3~6_combout\,
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

-- Location: LCCOMB_X24_Y26_N20
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

-- Location: LCCOMB_X15_Y17_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador_prueba(0) $ (VCC)
-- \Add0~1\ = CARRY(contador_prueba(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: FF_X15_Y17_N7
\contador_prueba[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(0));

-- Location: LCCOMB_X15_Y17_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (contador_prueba(1) & (!\Add0~1\)) # (!contador_prueba(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!contador_prueba(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X15_Y17_N9
\contador_prueba[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(1));

-- Location: LCCOMB_X15_Y16_N0
\Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (contador_prueba(13) & (!\Add0~25\)) # (!contador_prueba(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!contador_prueba(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X15_Y16_N2
\Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (contador_prueba(14) & (\Add0~27\ $ (GND))) # (!contador_prueba(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((contador_prueba(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X16_Y16_N20
\contador_prueba~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~14_combout\ = (\Add0~28_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_prueba~14_combout\);

-- Location: FF_X16_Y16_N21
\contador_prueba[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(14));

-- Location: LCCOMB_X15_Y16_N4
\Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (contador_prueba(15) & (!\Add0~29\)) # (!contador_prueba(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!contador_prueba(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X16_Y16_N4
\contador_prueba~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~13_combout\ = (\Add0~30_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~30_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_prueba~13_combout\);

-- Location: FF_X16_Y16_N5
\contador_prueba[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(15));

-- Location: LCCOMB_X15_Y16_N6
\Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (contador_prueba(16) & (\Add0~31\ $ (GND))) # (!contador_prueba(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((contador_prueba(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X15_Y16_N7
\contador_prueba[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(16));

-- Location: LCCOMB_X15_Y16_N8
\Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (contador_prueba(17) & (!\Add0~33\)) # (!contador_prueba(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!contador_prueba(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X16_Y16_N30
\contador_prueba~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~12_combout\ = (\Add0~34_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_prueba~12_combout\);

-- Location: FF_X16_Y16_N31
\contador_prueba[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(17));

-- Location: LCCOMB_X15_Y16_N10
\Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (contador_prueba(18) & (\Add0~35\ $ (GND))) # (!contador_prueba(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((contador_prueba(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X15_Y16_N11
\contador_prueba[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(18));

-- Location: LCCOMB_X15_Y16_N12
\Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (contador_prueba(19) & (!\Add0~37\)) # (!contador_prueba(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!contador_prueba(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X15_Y16_N26
\contador_prueba~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~11_combout\ = (\Add0~38_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~38_combout\,
	combout => \contador_prueba~11_combout\);

-- Location: FF_X15_Y16_N27
\contador_prueba[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(19));

-- Location: LCCOMB_X15_Y16_N14
\Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (contador_prueba(20) & (\Add0~39\ $ (GND))) # (!contador_prueba(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((contador_prueba(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X16_Y16_N12
\contador_prueba~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~21_combout\ = (\Add0~40_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~40_combout\,
	combout => \contador_prueba~21_combout\);

-- Location: FF_X16_Y16_N13
\contador_prueba[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~21_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(20));

-- Location: LCCOMB_X15_Y16_N16
\Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (contador_prueba(21) & (!\Add0~41\)) # (!contador_prueba(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!contador_prueba(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X15_Y16_N18
\Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (contador_prueba(22) & (\Add0~43\ $ (GND))) # (!contador_prueba(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((contador_prueba(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X14_Y16_N12
\contador_prueba~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~19_combout\ = (\Add0~44_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~3_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~44_combout\,
	combout => \contador_prueba~19_combout\);

-- Location: FF_X14_Y16_N13
\contador_prueba[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~19_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(22));

-- Location: LCCOMB_X15_Y16_N20
\Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (contador_prueba(23) & (!\Add0~45\)) # (!contador_prueba(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!contador_prueba(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X15_Y16_N22
\Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (contador_prueba(24) & (\Add0~47\ $ (GND))) # (!contador_prueba(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((contador_prueba(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X15_Y16_N23
\contador_prueba[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(24));

-- Location: LCCOMB_X15_Y17_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (contador_prueba(2) & (\Add0~3\ $ (GND))) # (!contador_prueba(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((contador_prueba(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X15_Y17_N11
\contador_prueba[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(2));

-- Location: LCCOMB_X15_Y17_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (contador_prueba(3) & (!\Add0~5\)) # (!contador_prueba(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!contador_prueba(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X15_Y17_N13
\contador_prueba[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(3));

-- Location: LCCOMB_X15_Y17_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (contador_prueba(4) & (\Add0~7\ $ (GND))) # (!contador_prueba(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((contador_prueba(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X15_Y17_N15
\contador_prueba[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(4));

-- Location: LCCOMB_X15_Y17_N16
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (contador_prueba(5) & (!\Add0~9\)) # (!contador_prueba(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!contador_prueba(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X15_Y17_N17
\contador_prueba[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(5));

-- Location: LCCOMB_X15_Y17_N18
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (contador_prueba(6) & (\Add0~11\ $ (GND))) # (!contador_prueba(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((contador_prueba(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X15_Y17_N19
\contador_prueba[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(6));

-- Location: LCCOMB_X15_Y17_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (contador_prueba(7) & (!\Add0~13\)) # (!contador_prueba(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!contador_prueba(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X16_Y16_N22
\contador_prueba~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~10_combout\ = (\Add0~14_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Add0~14_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_prueba~10_combout\);

-- Location: FF_X16_Y16_N23
\contador_prueba[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(7));

-- Location: LCCOMB_X15_Y17_N22
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (contador_prueba(8) & (\Add0~15\ $ (GND))) # (!contador_prueba(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((contador_prueba(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X15_Y17_N23
\contador_prueba[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(8));

-- Location: LCCOMB_X15_Y17_N24
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (contador_prueba(9) & (!\Add0~17\)) # (!contador_prueba(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!contador_prueba(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X15_Y17_N25
\contador_prueba[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(9));

-- Location: LCCOMB_X15_Y17_N26
\Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (contador_prueba(10) & (\Add0~19\ $ (GND))) # (!contador_prueba(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((contador_prueba(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X15_Y17_N27
\contador_prueba[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(10));

-- Location: LCCOMB_X15_Y17_N28
\Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (contador_prueba(11) & (!\Add0~21\)) # (!contador_prueba(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!contador_prueba(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_prueba(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X15_Y17_N29
\contador_prueba[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(11));

-- Location: LCCOMB_X14_Y16_N4
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!contador_prueba(16) & (!contador_prueba(24) & (!contador_prueba(18) & !contador_prueba(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(16),
	datab => contador_prueba(24),
	datac => contador_prueba(18),
	datad => contador_prueba(11),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y17_N0
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!contador_prueba(8) & (!contador_prueba(7) & (!contador_prueba(10) & !contador_prueba(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(8),
	datab => contador_prueba(7),
	datac => contador_prueba(10),
	datad => contador_prueba(9),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X14_Y16_N14
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (contador_prueba(0) & (\Equal0~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(0),
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X15_Y16_N28
\contador_prueba~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~18_combout\ = (\Add0~46_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~46_combout\,
	combout => \contador_prueba~18_combout\);

-- Location: FF_X15_Y16_N29
\contador_prueba[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(23));

-- Location: LCCOMB_X15_Y16_N24
\Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = contador_prueba(25) $ (\Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(25),
	cin => \Add0~49\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X15_Y16_N30
\contador_prueba~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~17_combout\ = (\Add0~50_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~7_combout\,
	datad => \Add0~50_combout\,
	combout => \contador_prueba~17_combout\);

-- Location: FF_X15_Y16_N31
\contador_prueba[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~17_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(25));

-- Location: LCCOMB_X14_Y16_N16
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (contador_prueba(21) & (contador_prueba(23) & (contador_prueba(25) & contador_prueba(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(21),
	datab => contador_prueba(23),
	datac => contador_prueba(25),
	datad => contador_prueba(22),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y17_N30
\Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (contador_prueba(12) & (\Add0~23\ $ (GND))) # (!contador_prueba(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((contador_prueba(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X16_Y16_N0
\contador_prueba~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~16_combout\ = (\Add0~24_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~7_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~7_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~24_combout\,
	combout => \contador_prueba~16_combout\);

-- Location: FF_X16_Y16_N1
\contador_prueba[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(12));

-- Location: LCCOMB_X16_Y16_N6
\contador_prueba~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~15_combout\ = (\Add0~26_combout\ & (((!\Equal0~7_combout\) # (!\Equal0~2_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_prueba~15_combout\);

-- Location: FF_X16_Y16_N7
\contador_prueba[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(13));

-- Location: LCCOMB_X16_Y16_N18
\Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (contador_prueba(13) & (contador_prueba(14) & (contador_prueba(6) & contador_prueba(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(13),
	datab => contador_prueba(14),
	datac => contador_prueba(6),
	datad => contador_prueba(12),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X15_Y17_N2
\Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (contador_prueba(2) & (contador_prueba(5) & (contador_prueba(4) & contador_prueba(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(2),
	datab => contador_prueba(5),
	datac => contador_prueba(4),
	datad => contador_prueba(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X16_Y16_N2
\Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (contador_prueba(20) & (contador_prueba(15) & (contador_prueba(19) & contador_prueba(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(20),
	datab => contador_prueba(15),
	datac => contador_prueba(19),
	datad => contador_prueba(17),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X16_Y16_N16
\Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (contador_prueba(1) & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(1),
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X14_Y16_N6
\contador_prueba~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \contador_prueba~20_combout\ = (\Add0~42_combout\ & (((!\Equal0~2_combout\) # (!\Equal0~3_combout\)) # (!\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Add0~42_combout\,
	combout => \contador_prueba~20_combout\);

-- Location: FF_X14_Y16_N7
\contador_prueba[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \contador_prueba~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_prueba(21));

-- Location: LCCOMB_X14_Y16_N26
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!contador_prueba(21) & (!contador_prueba(23) & (!contador_prueba(25) & !contador_prueba(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(21),
	datab => contador_prueba(23),
	datac => contador_prueba(25),
	datad => contador_prueba(22),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y16_N20
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\Equal1~0_combout\ & (\Equal0~0_combout\ & (contador_prueba(0) & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => contador_prueba(0),
	datad => \Equal0~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X16_Y16_N26
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!contador_prueba(13) & (!contador_prueba(14) & (!contador_prueba(6) & !contador_prueba(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(13),
	datab => contador_prueba(14),
	datac => contador_prueba(6),
	datad => contador_prueba(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X15_Y17_N4
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!contador_prueba(3) & (!contador_prueba(5) & (!contador_prueba(4) & !contador_prueba(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(3),
	datab => contador_prueba(5),
	datac => contador_prueba(4),
	datad => contador_prueba(2),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!contador_prueba(20) & (!contador_prueba(15) & (!contador_prueba(19) & !contador_prueba(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_prueba(20),
	datab => contador_prueba(15),
	datac => contador_prueba(19),
	datad => contador_prueba(17),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X16_Y16_N8
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (\Equal1~3_combout\ & (\Equal1~4_combout\ & (!contador_prueba(1) & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~4_combout\,
	datac => contador_prueba(1),
	datad => \Equal1~2_combout\,
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X16_Y16_N10
\Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X16_Y16_N24
\pir_prueba~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pir_prueba~0_combout\ = (\Equal0~8_combout\) # ((\pir_prueba~q\ & ((!\Equal1~5_combout\) # (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~5_combout\,
	datac => \pir_prueba~q\,
	datad => \Equal0~8_combout\,
	combout => \pir_prueba~0_combout\);

-- Location: FF_X16_Y16_N25
pir_prueba : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pir_prueba~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pir_prueba~q\);

-- Location: LCCOMB_X24_Y26_N14
\u_control|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Selector0~0_combout\ = (!\u_control|state_reg.READ_RAM~q\ & ((\u_control|state_reg.IDLE~q\) # (\pir_prueba~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state_reg.READ_RAM~q\,
	datac => \u_control|state_reg.IDLE~q\,
	datad => \pir_prueba~q\,
	combout => \u_control|Selector0~0_combout\);

-- Location: FF_X24_Y26_N15
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

-- Location: LCCOMB_X24_Y26_N4
\u_control|state_next.READ_ROM~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|state_next.READ_ROM~0_combout\ = (!\u_control|state_reg.IDLE~q\ & \pir_prueba~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state_reg.IDLE~q\,
	datad => \pir_prueba~q\,
	combout => \u_control|state_next.READ_ROM~0_combout\);

-- Location: FF_X24_Y26_N5
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

-- Location: FF_X24_Y26_N31
\u_control|state_reg.WRITE_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \u_control|state_reg.READ_ROM~q\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state_reg.WRITE_RAM~q\);

-- Location: LCCOMB_X27_Y26_N8
\u_control|state_reg.READ_RAM~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|state_reg.READ_RAM~feeder_combout\ = \u_control|state_reg.WRITE_RAM~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_control|state_reg.READ_RAM~feeder_combout\);

-- Location: FF_X27_Y26_N9
\u_control|state_reg.READ_RAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_control|state_reg.READ_RAM~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state_reg.READ_RAM~q\);

-- Location: FF_X24_Y26_N21
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

-- Location: LCCOMB_X27_Y26_N26
\u_control|rom_addr_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[0]~0_combout\ = \u_control|state_reg.WRITE_RAM~q\ $ (\u_control|rom_addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state_reg.WRITE_RAM~q\,
	datac => \u_control|rom_addr_reg\(0),
	combout => \u_control|rom_addr_reg[0]~0_combout\);

-- Location: FF_X27_Y26_N27
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

-- Location: FF_X27_Y26_N25
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

-- Location: LCCOMB_X28_Y26_N16
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

-- Location: FF_X28_Y26_N17
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

-- Location: LCCOMB_X24_Y26_N18
\u_control|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Add1~0_combout\ = \u_control|ram_addr_reg\(1) $ (\u_control|ram_addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|ram_addr_reg\(1),
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_control|Add1~0_combout\);

-- Location: FF_X28_Y26_N11
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

-- Location: LCCOMB_X28_Y26_N8
\u_control|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|Add1~1_combout\ = \u_control|ram_addr_reg\(2) $ (((\u_control|ram_addr_reg\(0) & \u_control|ram_addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|ram_addr_reg\(0),
	datac => \u_control|ram_addr_reg\(2),
	datad => \u_control|ram_addr_reg\(1),
	combout => \u_control|Add1~1_combout\);

-- Location: FF_X28_Y26_N9
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

-- Location: LCCOMB_X28_Y26_N26
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

-- Location: FF_X28_Y26_N27
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

-- Location: LCCOMB_X28_Y26_N10
\u_ram|mem~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~29_combout\ = (!\u_control|ram_addr_reg\(0) & (!\u_control|ram_addr_reg\(3) & (!\u_control|ram_addr_reg\(1) & !\u_control|ram_addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|ram_addr_reg\(0),
	datab => \u_control|ram_addr_reg\(3),
	datac => \u_control|ram_addr_reg\(1),
	datad => \u_control|ram_addr_reg\(2),
	combout => \u_ram|mem~29_combout\);

-- Location: LCCOMB_X27_Y26_N22
\u_ram|mem~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~30_combout\ = (\u_control|state_reg.WRITE_RAM~q\ & \u_ram|mem~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state_reg.WRITE_RAM~q\,
	datab => \u_ram|mem~29_combout\,
	combout => \u_ram|mem~30_combout\);

-- Location: FF_X27_Y26_N23
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

-- Location: LCCOMB_X24_Y26_N16
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

-- Location: LCCOMB_X23_Y26_N0
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

-- Location: LCCOMB_X24_Y26_N26
\u_control|rom_addr_reg[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[1]~1_combout\ = \u_control|rom_addr_reg\(1) $ (((\u_control|state_reg.WRITE_RAM~q\ & \u_control|rom_addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state_reg.WRITE_RAM~q\,
	datac => \u_control|rom_addr_reg\(1),
	datad => \u_control|rom_addr_reg\(0),
	combout => \u_control|rom_addr_reg[1]~1_combout\);

-- Location: FF_X24_Y26_N27
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

-- Location: FF_X24_Y26_N17
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

-- Location: LCCOMB_X24_Y26_N8
\u_control|rom_addr_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[2]~2_combout\ = \u_control|rom_addr_reg\(2) $ (((\u_control|rom_addr_reg\(1) & (\u_control|state_reg.WRITE_RAM~q\ & \u_control|rom_addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|rom_addr_reg\(1),
	datab => \u_control|state_reg.WRITE_RAM~q\,
	datac => \u_control|rom_addr_reg\(2),
	datad => \u_control|rom_addr_reg\(0),
	combout => \u_control|rom_addr_reg[2]~2_combout\);

-- Location: FF_X24_Y26_N9
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

-- Location: FF_X24_Y26_N3
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

-- Location: LCCOMB_X24_Y26_N30
\u_control|rom_addr_reg[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[3]~3_combout\ = (\u_control|rom_addr_reg\(1) & (\u_control|rom_addr_reg\(2) & (\u_control|state_reg.WRITE_RAM~q\ & \u_control|rom_addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|rom_addr_reg\(1),
	datab => \u_control|rom_addr_reg\(2),
	datac => \u_control|state_reg.WRITE_RAM~q\,
	datad => \u_control|rom_addr_reg\(0),
	combout => \u_control|rom_addr_reg[3]~3_combout\);

-- Location: LCCOMB_X24_Y26_N6
\u_control|rom_addr_reg[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_control|rom_addr_reg[3]~4_combout\ = \u_control|rom_addr_reg[3]~3_combout\ $ (\u_control|rom_addr_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|rom_addr_reg[3]~3_combout\,
	datac => \u_control|rom_addr_reg\(3),
	combout => \u_control|rom_addr_reg[3]~4_combout\);

-- Location: FF_X24_Y26_N7
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

-- Location: LCCOMB_X24_Y26_N10
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

-- Location: FF_X24_Y26_N11
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

-- Location: LCCOMB_X24_Y26_N2
\u_rom|q_reg[3]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_rom|q_reg[3]~_wirecell_combout\ = !\u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|q_reg\(3),
	combout => \u_rom|q_reg[3]~_wirecell_combout\);

-- Location: M9K_X25_Y26_N0
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

-- Location: LCCOMB_X26_Y26_N20
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

-- Location: LCCOMB_X26_Y26_N8
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

-- Location: FF_X26_Y26_N9
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

-- Location: LCCOMB_X24_Y26_N22
\u_ram|mem_rtl_0_bypass[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[1]~feeder_combout\ = \u_control|ram_addr_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|ram_addr_reg\(0),
	combout => \u_ram|mem_rtl_0_bypass[1]~feeder_combout\);

-- Location: FF_X24_Y26_N23
\u_ram|mem_rtl_0_bypass[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(1));

-- Location: LCCOMB_X24_Y26_N28
\u_ram|mem_rtl_0_bypass[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[3]~feeder_combout\ = \u_control|ram_addr_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|ram_addr_reg\(1),
	combout => \u_ram|mem_rtl_0_bypass[3]~feeder_combout\);

-- Location: FF_X24_Y26_N29
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

-- Location: FF_X24_Y26_N25
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

-- Location: LCCOMB_X24_Y26_N12
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

-- Location: FF_X24_Y26_N13
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

-- Location: LCCOMB_X24_Y26_N24
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

-- Location: LCCOMB_X28_Y26_N22
\u_ram|mem_rtl_0_bypass[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem_rtl_0_bypass[5]~feeder_combout\ = \u_control|ram_addr_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|ram_addr_reg\(2),
	combout => \u_ram|mem_rtl_0_bypass[5]~feeder_combout\);

-- Location: FF_X28_Y26_N23
\u_ram|mem_rtl_0_bypass[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem_rtl_0_bypass[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem_rtl_0_bypass\(5));

-- Location: LCCOMB_X28_Y26_N18
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

-- Location: FF_X28_Y26_N19
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

-- Location: FF_X28_Y26_N13
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

-- Location: FF_X28_Y26_N25
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

-- Location: LCCOMB_X28_Y26_N12
\u_ram|mem~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~27_combout\ = (\u_ram|mem_rtl_0_bypass\(5) & (\u_ram|mem_rtl_0_bypass\(6) & (\u_ram|mem_rtl_0_bypass\(8) $ (!\u_ram|mem_rtl_0_bypass\(7))))) # (!\u_ram|mem_rtl_0_bypass\(5) & (!\u_ram|mem_rtl_0_bypass\(6) & (\u_ram|mem_rtl_0_bypass\(8) $ 
-- (!\u_ram|mem_rtl_0_bypass\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem_rtl_0_bypass\(5),
	datab => \u_ram|mem_rtl_0_bypass\(8),
	datac => \u_ram|mem_rtl_0_bypass\(6),
	datad => \u_ram|mem_rtl_0_bypass\(7),
	combout => \u_ram|mem~27_combout\);

-- Location: FF_X27_Y26_N13
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

-- Location: LCCOMB_X27_Y26_N12
\u_ram|mem~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~28_combout\ = (\u_ram|mem~26_combout\ & (\u_ram|mem~27_combout\ & \u_ram|mem_rtl_0_bypass\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~26_combout\,
	datab => \u_ram|mem~27_combout\,
	datac => \u_ram|mem_rtl_0_bypass\(0),
	combout => \u_ram|mem~28_combout\);

-- Location: LCCOMB_X27_Y26_N2
\u_ram|q_reg[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[4]~10_combout\ = (\u_control|state_reg.READ_RAM~q\) # (\u_control|state_reg.WRITE_RAM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state_reg.READ_RAM~q\,
	datac => \u_control|state_reg.WRITE_RAM~q\,
	combout => \u_ram|q_reg[4]~10_combout\);

-- Location: FF_X26_Y26_N21
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(0));

-- Location: LCCOMB_X27_Y26_N28
\u_ram|mem~18feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~18feeder_combout\ = \u_rom|q_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|q_reg\(2),
	combout => \u_ram|mem~18feeder_combout\);

-- Location: FF_X27_Y26_N29
\u_ram|mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem~18feeder_combout\,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~18_q\);

-- Location: LCCOMB_X26_Y26_N24
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

-- Location: LCCOMB_X27_Y26_N18
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

-- Location: FF_X27_Y26_N19
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

-- Location: FF_X26_Y26_N25
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(2));

-- Location: LCCOMB_X27_Y26_N0
\u_ram|mem~19feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~19feeder_combout\ = \u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(3),
	combout => \u_ram|mem~19feeder_combout\);

-- Location: FF_X27_Y26_N1
\u_ram|mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem~19feeder_combout\,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~19_q\);

-- Location: LCCOMB_X26_Y26_N16
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

-- Location: LCCOMB_X27_Y26_N14
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

-- Location: FF_X27_Y26_N15
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

-- Location: FF_X26_Y26_N17
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(3));

-- Location: LCCOMB_X27_Y26_N4
\u_ram|mem~17feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~17feeder_combout\ = \u_rom|q_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(1),
	combout => \u_ram|mem~17feeder_combout\);

-- Location: FF_X27_Y26_N5
\u_ram|mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|mem~17feeder_combout\,
	ena => \u_ram|mem~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|mem~17_q\);

-- Location: LCCOMB_X26_Y26_N2
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

-- Location: LCCOMB_X27_Y26_N30
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

-- Location: FF_X27_Y26_N31
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

-- Location: FF_X26_Y26_N3
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(1));

-- Location: LCCOMB_X27_Y28_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\u_ram|q_reg\(2) & (!\u_ram|q_reg\(1) & (\u_ram|q_reg\(0) $ (!\u_ram|q_reg\(3))))) # (!\u_ram|q_reg\(2) & (\u_ram|q_reg\(0) & (\u_ram|q_reg\(3) $ (!\u_ram|q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y26_N0
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

-- Location: FF_X24_Y26_N1
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
	ena => \u_control|state_reg.READ_RAM~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_valid_s~q\);

-- Location: LCCOMB_X27_Y28_N22
\HEX0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~0_combout\ = (\Mux6~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \data_valid_s~q\,
	combout => \HEX0~0_combout\);

-- Location: LCCOMB_X27_Y28_N20
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\u_ram|q_reg\(3) & ((\u_ram|q_reg\(0) & ((\u_ram|q_reg\(1)))) # (!\u_ram|q_reg\(0) & (\u_ram|q_reg\(2))))) # (!\u_ram|q_reg\(3) & (\u_ram|q_reg\(2) & (\u_ram|q_reg\(0) $ (\u_ram|q_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\HEX0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~1_combout\ = (\data_valid_s~q\ & \Mux5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux5~0_combout\,
	combout => \HEX0~1_combout\);

-- Location: LCCOMB_X27_Y28_N12
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\u_ram|q_reg\(2) & (\u_ram|q_reg\(3) & ((\u_ram|q_reg\(1)) # (!\u_ram|q_reg\(0))))) # (!\u_ram|q_reg\(2) & (!\u_ram|q_reg\(0) & (!\u_ram|q_reg\(3) & \u_ram|q_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\HEX0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~2_combout\ = (\data_valid_s~q\ & \Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux4~0_combout\,
	combout => \HEX0~2_combout\);

-- Location: LCCOMB_X27_Y28_N24
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\u_ram|q_reg\(1) & ((\u_ram|q_reg\(0) & (\u_ram|q_reg\(2))) # (!\u_ram|q_reg\(0) & (!\u_ram|q_reg\(2) & \u_ram|q_reg\(3))))) # (!\u_ram|q_reg\(1) & (!\u_ram|q_reg\(3) & (\u_ram|q_reg\(0) $ (\u_ram|q_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X28_Y28_N0
\HEX0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~3_combout\ = (\data_valid_s~q\ & \Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_valid_s~q\,
	datad => \Mux3~0_combout\,
	combout => \HEX0~3_combout\);

-- Location: LCCOMB_X27_Y28_N18
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\u_ram|q_reg\(1) & (\u_ram|q_reg\(0) & ((!\u_ram|q_reg\(3))))) # (!\u_ram|q_reg\(1) & ((\u_ram|q_reg\(2) & ((!\u_ram|q_reg\(3)))) # (!\u_ram|q_reg\(2) & (\u_ram|q_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\HEX0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~4_combout\ = (\data_valid_s~q\ & \Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux2~0_combout\,
	combout => \HEX0~4_combout\);

-- Location: LCCOMB_X27_Y28_N14
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\u_ram|q_reg\(0) & (\u_ram|q_reg\(3) $ (((\u_ram|q_reg\(1)) # (!\u_ram|q_reg\(2)))))) # (!\u_ram|q_reg\(0) & (!\u_ram|q_reg\(2) & (!\u_ram|q_reg\(3) & \u_ram|q_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\HEX0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~5_combout\ = (\data_valid_s~q\ & \Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data_valid_s~q\,
	datad => \Mux1~0_combout\,
	combout => \HEX0~5_combout\);

-- Location: LCCOMB_X27_Y28_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\u_ram|q_reg\(0) & ((\u_ram|q_reg\(3)) # (\u_ram|q_reg\(2) $ (\u_ram|q_reg\(1))))) # (!\u_ram|q_reg\(0) & ((\u_ram|q_reg\(1)) # (\u_ram|q_reg\(2) $ (\u_ram|q_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(0),
	datab => \u_ram|q_reg\(2),
	datac => \u_ram|q_reg\(3),
	datad => \u_ram|q_reg\(1),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\HEX0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0~6_combout\ = (!\Mux0~0_combout\) # (!\data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux0~0_combout\,
	combout => \HEX0~6_combout\);

-- Location: LCCOMB_X26_Y26_N18
\u_ram|q_reg[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[5]~5_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a5\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a5\,
	combout => \u_ram|q_reg[5]~5_combout\);

-- Location: LCCOMB_X26_Y26_N4
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

-- Location: FF_X26_Y26_N5
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

-- Location: FF_X26_Y26_N19
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(5));

-- Location: LCCOMB_X26_Y26_N10
\u_ram|q_reg[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[6]~6_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a6\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \u_ram|q_reg[6]~6_combout\);

-- Location: LCCOMB_X26_Y26_N14
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

-- Location: FF_X26_Y26_N15
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

-- Location: FF_X26_Y26_N11
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(6));

-- Location: LCCOMB_X26_Y26_N12
\u_ram|q_reg[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[7]~7_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a7\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a7\,
	combout => \u_ram|q_reg[7]~7_combout\);

-- Location: LCCOMB_X26_Y26_N26
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

-- Location: FF_X26_Y26_N27
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

-- Location: FF_X26_Y26_N13
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(7));

-- Location: LCCOMB_X27_Y26_N16
\u_ram|mem~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|mem~31_combout\ = !\u_rom|q_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_rom|q_reg\(3),
	combout => \u_ram|mem~31_combout\);

-- Location: FF_X27_Y26_N17
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

-- Location: LCCOMB_X26_Y26_N0
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

-- Location: LCCOMB_X27_Y26_N10
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

-- Location: FF_X27_Y26_N11
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

-- Location: FF_X26_Y26_N1
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
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(4));

-- Location: LCCOMB_X26_Y27_N16
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\u_ram|q_reg\(6) & (!\u_ram|q_reg\(5) & (\u_ram|q_reg\(7) $ (!\u_ram|q_reg\(4))))) # (!\u_ram|q_reg\(6) & (\u_ram|q_reg\(4) & (\u_ram|q_reg\(5) $ (!\u_ram|q_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X26_Y27_N30
\HEX1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = (\data_valid_s~q\ & \Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux13~0_combout\,
	combout => \HEX1~0_combout\);

-- Location: LCCOMB_X26_Y27_N28
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\u_ram|q_reg\(5) & ((\u_ram|q_reg\(4) & ((\u_ram|q_reg\(7)))) # (!\u_ram|q_reg\(4) & (\u_ram|q_reg\(6))))) # (!\u_ram|q_reg\(5) & (\u_ram|q_reg\(6) & (\u_ram|q_reg\(7) $ (\u_ram|q_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X26_Y27_N6
\HEX1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~1_combout\ = (\data_valid_s~q\ & \Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux12~0_combout\,
	combout => \HEX1~1_combout\);

-- Location: LCCOMB_X26_Y27_N24
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\u_ram|q_reg\(6) & (\u_ram|q_reg\(7) & ((\u_ram|q_reg\(5)) # (!\u_ram|q_reg\(4))))) # (!\u_ram|q_reg\(6) & (\u_ram|q_reg\(5) & (!\u_ram|q_reg\(7) & !\u_ram|q_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X26_Y27_N22
\HEX1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~2_combout\ = (\data_valid_s~q\ & \Mux11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux11~0_combout\,
	combout => \HEX1~2_combout\);

-- Location: LCCOMB_X26_Y27_N0
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\u_ram|q_reg\(5) & ((\u_ram|q_reg\(6) & ((\u_ram|q_reg\(4)))) # (!\u_ram|q_reg\(6) & (\u_ram|q_reg\(7) & !\u_ram|q_reg\(4))))) # (!\u_ram|q_reg\(5) & (!\u_ram|q_reg\(7) & (\u_ram|q_reg\(6) $ (\u_ram|q_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X26_Y27_N10
\HEX1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~3_combout\ = (\data_valid_s~q\ & \Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux10~0_combout\,
	combout => \HEX1~3_combout\);

-- Location: LCCOMB_X26_Y27_N4
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\u_ram|q_reg\(5) & (((!\u_ram|q_reg\(7) & \u_ram|q_reg\(4))))) # (!\u_ram|q_reg\(5) & ((\u_ram|q_reg\(6) & (!\u_ram|q_reg\(7))) # (!\u_ram|q_reg\(6) & ((\u_ram|q_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X26_Y27_N26
\HEX1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~4_combout\ = (\Mux9~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux9~0_combout\,
	datac => \data_valid_s~q\,
	combout => \HEX1~4_combout\);

-- Location: LCCOMB_X26_Y27_N20
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\u_ram|q_reg\(5) & (!\u_ram|q_reg\(7) & ((\u_ram|q_reg\(4)) # (!\u_ram|q_reg\(6))))) # (!\u_ram|q_reg\(5) & (\u_ram|q_reg\(4) & (\u_ram|q_reg\(6) $ (!\u_ram|q_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X26_Y27_N14
\HEX1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~5_combout\ = (\data_valid_s~q\ & \Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux8~0_combout\,
	combout => \HEX1~5_combout\);

-- Location: LCCOMB_X26_Y27_N12
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\u_ram|q_reg\(4) & ((\u_ram|q_reg\(7)) # (\u_ram|q_reg\(5) $ (\u_ram|q_reg\(6))))) # (!\u_ram|q_reg\(4) & ((\u_ram|q_reg\(5)) # (\u_ram|q_reg\(6) $ (\u_ram|q_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|q_reg\(5),
	datab => \u_ram|q_reg\(6),
	datac => \u_ram|q_reg\(7),
	datad => \u_ram|q_reg\(4),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X26_Y27_N18
\HEX1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1~6_combout\ = (!\Mux7~0_combout\) # (!\data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux7~0_combout\,
	combout => \HEX1~6_combout\);

-- Location: LCCOMB_X26_Y26_N28
\u_ram|q_reg[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[9]~9_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a9\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a9\,
	combout => \u_ram|q_reg[9]~9_combout\);

-- Location: LCCOMB_X26_Y26_N30
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

-- Location: FF_X26_Y26_N31
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

-- Location: FF_X26_Y26_N29
\u_ram|q_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[9]~9_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(18),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(9));

-- Location: LCCOMB_X26_Y26_N6
\u_ram|q_reg[8]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \u_ram|q_reg[8]~8_combout\ = (\u_ram|mem_rtl_0|auto_generated|ram_block1a8\) # (!\u_ram|mem~15_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_ram|mem~15_q\,
	datad => \u_ram|mem_rtl_0|auto_generated|ram_block1a8\,
	combout => \u_ram|q_reg[8]~8_combout\);

-- Location: LCCOMB_X26_Y26_N22
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

-- Location: FF_X26_Y26_N23
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

-- Location: FF_X26_Y26_N7
\u_ram|q_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \u_ram|q_reg[8]~8_combout\,
	asdata => \u_ram|mem_rtl_0_bypass\(17),
	sload => \u_ram|mem~28_combout\,
	ena => \u_ram|q_reg[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_ram|q_reg\(8));

-- Location: LCCOMB_X30_Y26_N12
\HEX2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = (!\u_ram|q_reg\(9) & (\data_valid_s~q\ & \u_ram|q_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|q_reg\(9),
	datac => \data_valid_s~q\,
	datad => \u_ram|q_reg\(8),
	combout => \HEX2~0_combout\);

-- Location: LCCOMB_X30_Y26_N6
\HEX2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~1_combout\ = (\u_ram|q_reg\(9) & (\data_valid_s~q\ & !\u_ram|q_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|q_reg\(9),
	datac => \data_valid_s~q\,
	datad => \u_ram|q_reg\(8),
	combout => \HEX2~1_combout\);

-- Location: LCCOMB_X30_Y26_N0
\HEX2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~2_combout\ = (\data_valid_s~q\ & \u_ram|q_reg\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \u_ram|q_reg\(8),
	combout => \HEX2~2_combout\);

-- Location: LCCOMB_X30_Y26_N2
\HEX2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~3_combout\ = (\data_valid_s~q\ & ((\u_ram|q_reg\(9)) # (\u_ram|q_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_ram|q_reg\(9),
	datac => \data_valid_s~q\,
	datad => \u_ram|q_reg\(8),
	combout => \HEX2~3_combout\);

-- Location: LCCOMB_X30_Y26_N4
\HEX2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX2~4_combout\ = (\data_valid_s~q\ & \u_ram|q_reg\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \u_ram|q_reg\(9),
	combout => \HEX2~4_combout\);

-- Location: FF_X28_Y26_N31
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

-- Location: FF_X28_Y26_N21
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

-- Location: FF_X28_Y26_N5
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

-- Location: FF_X28_Y26_N1
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

-- Location: LCCOMB_X28_Y26_N14
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (ram_addr_display_s(3) & (ram_addr_display_s(0) & (ram_addr_display_s(1) $ (ram_addr_display_s(2))))) # (!ram_addr_display_s(3) & (!ram_addr_display_s(1) & (ram_addr_display_s(0) $ (ram_addr_display_s(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(0),
	datab => ram_addr_display_s(3),
	datac => ram_addr_display_s(1),
	datad => ram_addr_display_s(2),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X28_Y26_N6
\HEX3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = (\data_valid_s~q\ & \Mux27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_valid_s~q\,
	datac => \Mux27~0_combout\,
	combout => \HEX3~0_combout\);

-- Location: LCCOMB_X28_Y26_N2
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (ram_addr_display_s(3) & ((ram_addr_display_s(0) & (ram_addr_display_s(1))) # (!ram_addr_display_s(0) & ((ram_addr_display_s(2)))))) # (!ram_addr_display_s(3) & (ram_addr_display_s(2) & (ram_addr_display_s(0) $ 
-- (ram_addr_display_s(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(0),
	datab => ram_addr_display_s(3),
	datac => ram_addr_display_s(1),
	datad => ram_addr_display_s(2),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X35_Y28_N4
\HEX3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~1_combout\ = (\data_valid_s~q\ & \Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux26~0_combout\,
	combout => \HEX3~1_combout\);

-- Location: LCCOMB_X28_Y26_N28
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (ram_addr_display_s(3) & (ram_addr_display_s(2) & ((ram_addr_display_s(1)) # (!ram_addr_display_s(0))))) # (!ram_addr_display_s(3) & (!ram_addr_display_s(0) & (ram_addr_display_s(1) & !ram_addr_display_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(0),
	datab => ram_addr_display_s(3),
	datac => ram_addr_display_s(1),
	datad => ram_addr_display_s(2),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X28_Y28_N20
\HEX3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~2_combout\ = (\Mux25~0_combout\ & \data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux25~0_combout\,
	datad => \data_valid_s~q\,
	combout => \HEX3~2_combout\);

-- Location: LCCOMB_X28_Y26_N30
\Mux24~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (ram_addr_display_s(1) & ((ram_addr_display_s(2) & (ram_addr_display_s(0))) # (!ram_addr_display_s(2) & (!ram_addr_display_s(0) & ram_addr_display_s(3))))) # (!ram_addr_display_s(1) & (!ram_addr_display_s(3) & (ram_addr_display_s(2) $ 
-- (ram_addr_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(2),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(0),
	datad => ram_addr_display_s(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X29_Y27_N16
\HEX3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~3_combout\ = (\data_valid_s~q\ & \Mux24~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux24~0_combout\,
	combout => \HEX3~3_combout\);

-- Location: LCCOMB_X28_Y26_N4
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (ram_addr_display_s(1) & (ram_addr_display_s(0) & (!ram_addr_display_s(3)))) # (!ram_addr_display_s(1) & ((ram_addr_display_s(2) & ((!ram_addr_display_s(3)))) # (!ram_addr_display_s(2) & (ram_addr_display_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(0),
	datab => ram_addr_display_s(3),
	datac => ram_addr_display_s(1),
	datad => ram_addr_display_s(2),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X35_Y28_N30
\HEX3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~4_combout\ = (\data_valid_s~q\ & \Mux23~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux23~0_combout\,
	combout => \HEX3~4_combout\);

-- Location: LCCOMB_X28_Y26_N0
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (ram_addr_display_s(0) & (ram_addr_display_s(3) $ (((ram_addr_display_s(1)) # (!ram_addr_display_s(2)))))) # (!ram_addr_display_s(0) & (ram_addr_display_s(1) & (!ram_addr_display_s(2) & !ram_addr_display_s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(0),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(2),
	datad => ram_addr_display_s(3),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X35_Y28_N16
\HEX3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~5_combout\ = (\data_valid_s~q\ & \Mux22~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux22~0_combout\,
	combout => \HEX3~5_combout\);

-- Location: LCCOMB_X28_Y26_N20
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (ram_addr_display_s(0) & ((ram_addr_display_s(3)) # (ram_addr_display_s(1) $ (ram_addr_display_s(2))))) # (!ram_addr_display_s(0) & ((ram_addr_display_s(1)) # (ram_addr_display_s(3) $ (ram_addr_display_s(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ram_addr_display_s(0),
	datab => ram_addr_display_s(1),
	datac => ram_addr_display_s(3),
	datad => ram_addr_display_s(2),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X35_Y28_N10
\HEX3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~6_combout\ = (!\Mux21~0_combout\) # (!\data_valid_s~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \data_valid_s~q\,
	datad => \Mux21~0_combout\,
	combout => \HEX3~6_combout\);

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


