-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/02/2020 17:16:44"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Blackjack IS
    PORT (
	clk : IN std_logic;
	reset_req : IN std_logic;
	chipselect : IN std_logic;
	readd : IN std_logic;
	writee : IN std_logic;
	addCarta : IN std_logic;
	address : IN std_logic_vector(5 DOWNTO 0);
	writedata : IN std_logic_vector(7 DOWNTO 0);
	interrupt : BUFFER std_logic;
	readdata : BUFFER std_logic_vector(7 DOWNTO 0);
	\testEstadoAtual.SL00\ : BUFFER std_logic;
	\testEstadoAtual.SL01\ : BUFFER std_logic;
	\testEstadoAtual.SL01a\ : BUFFER std_logic;
	\testEstadoAtual.SL02\ : BUFFER std_logic;
	\testEstadoAtual.SL03\ : BUFFER std_logic;
	\testEstadoAtual.SL04\ : BUFFER std_logic;
	\testEstadoAtual.SL05\ : BUFFER std_logic;
	\testEstadoAtual.SL06\ : BUFFER std_logic;
	\testEstadoAtual.SL07\ : BUFFER std_logic;
	\testEstadoAtual.SL07a\ : BUFFER std_logic;
	\testEstadoAtual.SL08\ : BUFFER std_logic;
	\testEstadoAtual.SL09\ : BUFFER std_logic;
	\testEstadoAtual.SL09a\ : BUFFER std_logic;
	\testEstadoAtual.SL10\ : BUFFER std_logic;
	\testEstadoAtual.SL11\ : BUFFER std_logic;
	\testEstadoAtual.SL12\ : BUFFER std_logic;
	\testEstadoAtual.SL12a\ : BUFFER std_logic;
	\testEstadoAtual.SL13\ : BUFFER std_logic;
	\testEstadoAtual.SL14\ : BUFFER std_logic;
	\testEstadoAtual.SL15\ : BUFFER std_logic;
	\testEstadoAtual.SL16\ : BUFFER std_logic;
	\testEstadoAtual.SL17\ : BUFFER std_logic;
	\testEstadoAtual.SL18\ : BUFFER std_logic;
	\testEstadoAtual.SL19\ : BUFFER std_logic;
	\testEstadoAtual.SL20\ : BUFFER std_logic;
	\testEstadoAtual.SL21\ : BUFFER std_logic;
	\testEstadoAtual.SL22\ : BUFFER std_logic;
	\testEstadoAtual.SL23\ : BUFFER std_logic;
	\testEstadoAtual.SL24\ : BUFFER std_logic;
	\testEstadoAtual.SL25\ : BUFFER std_logic;
	\testEstadoAtual.SL26\ : BUFFER std_logic;
	\testEstadoAtual.SL27\ : BUFFER std_logic;
	\testEstadoAtual.SL27a\ : BUFFER std_logic;
	\testEstadoAtual.SL28\ : BUFFER std_logic;
	tcmdSetI : BUFFER std_logic;
	tcmdResetI : BUFFER std_logic;
	tcmdSetPontos : BUFFER std_logic;
	tcmdResetPontos : BUFFER std_logic;
	tcmdMultAddress : BUFFER std_logic;
	tcmdMultBaralho : BUFFER std_logic;
	tcmdSetCarta : BUFFER std_logic;
	tcmdResetCarta : BUFFER std_logic;
	tcmdSetBaralhoI : BUFFER std_logic
	);
END Blackjack;

-- Design Ports Information
-- readd	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- interrupt	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL00	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL01	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL01a	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL02	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL03	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL04	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL05	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL06	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL07	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL07a	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL08	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL09	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL09a	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL10	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL11	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL12	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL12a	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL13	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL14	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL15	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL16	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL17	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL18	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL19	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL20	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL21	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL22	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL23	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL24	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL25	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL26	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL27	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL27a	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL28	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdSetI	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdResetI	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdSetPontos	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdResetPontos	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdMultAddress	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdMultBaralho	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdSetCarta	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdResetCarta	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tcmdSetBaralhoI	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipselect	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writee	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_req	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addCarta	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Blackjack IS
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
SIGNAL ww_reset_req : std_logic;
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_readd : std_logic;
SIGNAL ww_writee : std_logic;
SIGNAL ww_addCarta : std_logic;
SIGNAL ww_address : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_interrupt : std_logic;
SIGNAL ww_readdata : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_testEstadoAtual.SL00\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL01\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL01a\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL02\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL03\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL04\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL05\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL06\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL07\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL07a\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL08\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL09\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL09a\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL10\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL11\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL12\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL12a\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL13\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL14\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL15\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL16\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL17\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL18\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL19\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL20\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL21\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL22\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL23\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL24\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL25\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL26\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL27\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL27a\ : std_logic;
SIGNAL \ww_testEstadoAtual.SL28\ : std_logic;
SIGNAL ww_tcmdSetI : std_logic;
SIGNAL ww_tcmdResetI : std_logic;
SIGNAL ww_tcmdSetPontos : std_logic;
SIGNAL ww_tcmdResetPontos : std_logic;
SIGNAL ww_tcmdMultAddress : std_logic;
SIGNAL ww_tcmdMultBaralho : std_logic;
SIGNAL ww_tcmdSetCarta : std_logic;
SIGNAL ww_tcmdResetCarta : std_logic;
SIGNAL ww_tcmdSetBaralhoI : std_logic;
SIGNAL \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset_req~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \readd~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \interrupt~output_o\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL00~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL01~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL01a~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL02~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL03~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL04~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL05~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL06~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL07~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL07a~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL08~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL09~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL09a~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL10~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL11~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL12~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL12a~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL13~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL14~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL15~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL16~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL17~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL18~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL19~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL20~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL21~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL22~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL23~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL24~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL25~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL26~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL27~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL27a~output_o\ : std_logic;
SIGNAL \testEstadoAtual.SL28~output_o\ : std_logic;
SIGNAL \tcmdSetI~output_o\ : std_logic;
SIGNAL \tcmdResetI~output_o\ : std_logic;
SIGNAL \tcmdSetPontos~output_o\ : std_logic;
SIGNAL \tcmdResetPontos~output_o\ : std_logic;
SIGNAL \tcmdMultAddress~output_o\ : std_logic;
SIGNAL \tcmdMultBaralho~output_o\ : std_logic;
SIGNAL \tcmdSetCarta~output_o\ : std_logic;
SIGNAL \tcmdResetCarta~output_o\ : std_logic;
SIGNAL \tcmdSetBaralhoI~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \writee~input_o\ : std_logic;
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[0]~8_combout\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[3]~15\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[4]~16_combout\ : std_logic;
SIGNAL \bloco_operativo|CompPontos21|LessThan0~0_combout\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[4]~17\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[5]~18_combout\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[5]~19\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[6]~20_combout\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[6]~21\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[7]~22_combout\ : std_logic;
SIGNAL \bloco_operativo|CompPontos21|LessThan0~1_combout\ : std_logic;
SIGNAL \bloco_controle|Selector19~0_combout\ : std_logic;
SIGNAL \reset_req~input_o\ : std_logic;
SIGNAL \reset_req~inputclkctrl_outclk\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL15~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL27a~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL28~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL28~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL00~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL00~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL01~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL01~q\ : std_logic;
SIGNAL \bloco_controle|Selector2~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL01a~q\ : std_logic;
SIGNAL \bloco_operativo|CompIMenor13|LessThan0~0_combout\ : std_logic;
SIGNAL \bloco_controle|Selector3~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL02~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL03~q\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[0]~13_combout\ : std_logic;
SIGNAL \bloco_controle|cmdResetI~combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[1]~7_combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[1]~8\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[2]~9_combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[2]~10\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[3]~11_combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[3]~12\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[4]~14_combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[4]~15\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[5]~16_combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[5]~17\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[6]~18_combout\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[6]~19\ : std_logic;
SIGNAL \bloco_operativo|RegI|estadoAtual[7]~20_combout\ : std_logic;
SIGNAL \bloco_operativo|CompIMenor13|LessThan0~1_combout\ : std_logic;
SIGNAL \bloco_controle|Selector5~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL04~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL04~q\ : std_logic;
SIGNAL \bloco_controle|cmdResetPontos~combout\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[0]~9\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[1]~10_combout\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[1]~11\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[2]~12_combout\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[2]~13\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual[3]~14_combout\ : std_logic;
SIGNAL \bloco_operativo|CompPontos16|LessThan0~0_combout\ : std_logic;
SIGNAL \bloco_controle|Selector26~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL22~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL23~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL24~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL24~q\ : std_logic;
SIGNAL \addCarta~input_o\ : std_logic;
SIGNAL \bloco_controle|Selector30~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL26~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL05~q\ : std_logic;
SIGNAL \bloco_controle|Selector7~0_combout\ : std_logic;
SIGNAL \bloco_controle|cmdSetBaralhoI~combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[0]~0_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~0_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~16_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~32_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~17\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~18_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~33_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~19\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~20_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~34_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~21\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~22_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~35_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~23\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~24_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~36_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~25\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~26_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~37_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~27\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~28_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~38_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~29\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~30_combout\ : std_logic;
SIGNAL \bloco_operativo|DecCarta|Add0~39_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[0]~1\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[1]~2_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~1_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[1]~3\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[2]~4_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~2_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[2]~5\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[3]~6_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~3_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[3]~7\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[4]~8_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~4_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[4]~9\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[5]~10_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~5_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[5]~11\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[6]~12_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~6_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[6]~13\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|outp[7]~14_combout\ : std_logic;
SIGNAL \bloco_operativo|IncIRAM|Add0~7_combout\ : std_logic;
SIGNAL \bloco_operativo|CompBaralho|Equal0~0_combout\ : std_logic;
SIGNAL \bloco_operativo|CompBaralho|Equal0~1_combout\ : std_logic;
SIGNAL \bloco_controle|Selector7~1_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL06~q\ : std_logic;
SIGNAL \bloco_controle|Selector8~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL07~q\ : std_logic;
SIGNAL \bloco_controle|Selector9~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL07a~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL08~q\ : std_logic;
SIGNAL \bloco_controle|Selector11~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL09~q\ : std_logic;
SIGNAL \bloco_controle|Selector12~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL09a~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL10~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL10~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL11~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL11~q\ : std_logic;
SIGNAL \bloco_controle|Selector15~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL12~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL12a~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL12a~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL13~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL13~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL14~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL14~q\ : std_logic;
SIGNAL \bloco_controle|Selector22~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL18~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL19~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL19~q\ : std_logic;
SIGNAL \bloco_controle|Selector24~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL20~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL21~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL21~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL16~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL16~q\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL17~feeder_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL17~q\ : std_logic;
SIGNAL \bloco_controle|Selector29~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL25~q\ : std_logic;
SIGNAL \bloco_controle|Selector31~0_combout\ : std_logic;
SIGNAL \bloco_controle|estadoAtual.SL27~q\ : std_logic;
SIGNAL \bloco_controle|WideOr30~0_combout\ : std_logic;
SIGNAL \bloco_controle|WideOr30~combout\ : std_logic;
SIGNAL \bloco_controle|cmdMultAddress~combout\ : std_logic;
SIGNAL \bloco_operativo|RegPontos|estadoAtual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco_operativo|RegI|estadoAtual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco_operativo|RegCarta|estadoAtual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \bloco_controle|ALT_INV_cmdResetPontos~combout\ : std_logic;
SIGNAL \bloco_controle|ALT_INV_cmdResetI~combout\ : std_logic;
SIGNAL \ALT_INV_reset_req~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_req <= reset_req;
ww_chipselect <= chipselect;
ww_readd <= readd;
ww_writee <= writee;
ww_addCarta <= addCarta;
ww_address <= address;
ww_writedata <= writedata;
interrupt <= ww_interrupt;
readdata <= ww_readdata;
\testEstadoAtual.SL00\ <= \ww_testEstadoAtual.SL00\;
\testEstadoAtual.SL01\ <= \ww_testEstadoAtual.SL01\;
\testEstadoAtual.SL01a\ <= \ww_testEstadoAtual.SL01a\;
\testEstadoAtual.SL02\ <= \ww_testEstadoAtual.SL02\;
\testEstadoAtual.SL03\ <= \ww_testEstadoAtual.SL03\;
\testEstadoAtual.SL04\ <= \ww_testEstadoAtual.SL04\;
\testEstadoAtual.SL05\ <= \ww_testEstadoAtual.SL05\;
\testEstadoAtual.SL06\ <= \ww_testEstadoAtual.SL06\;
\testEstadoAtual.SL07\ <= \ww_testEstadoAtual.SL07\;
\testEstadoAtual.SL07a\ <= \ww_testEstadoAtual.SL07a\;
\testEstadoAtual.SL08\ <= \ww_testEstadoAtual.SL08\;
\testEstadoAtual.SL09\ <= \ww_testEstadoAtual.SL09\;
\testEstadoAtual.SL09a\ <= \ww_testEstadoAtual.SL09a\;
\testEstadoAtual.SL10\ <= \ww_testEstadoAtual.SL10\;
\testEstadoAtual.SL11\ <= \ww_testEstadoAtual.SL11\;
\testEstadoAtual.SL12\ <= \ww_testEstadoAtual.SL12\;
\testEstadoAtual.SL12a\ <= \ww_testEstadoAtual.SL12a\;
\testEstadoAtual.SL13\ <= \ww_testEstadoAtual.SL13\;
\testEstadoAtual.SL14\ <= \ww_testEstadoAtual.SL14\;
\testEstadoAtual.SL15\ <= \ww_testEstadoAtual.SL15\;
\testEstadoAtual.SL16\ <= \ww_testEstadoAtual.SL16\;
\testEstadoAtual.SL17\ <= \ww_testEstadoAtual.SL17\;
\testEstadoAtual.SL18\ <= \ww_testEstadoAtual.SL18\;
\testEstadoAtual.SL19\ <= \ww_testEstadoAtual.SL19\;
\testEstadoAtual.SL20\ <= \ww_testEstadoAtual.SL20\;
\testEstadoAtual.SL21\ <= \ww_testEstadoAtual.SL21\;
\testEstadoAtual.SL22\ <= \ww_testEstadoAtual.SL22\;
\testEstadoAtual.SL23\ <= \ww_testEstadoAtual.SL23\;
\testEstadoAtual.SL24\ <= \ww_testEstadoAtual.SL24\;
\testEstadoAtual.SL25\ <= \ww_testEstadoAtual.SL25\;
\testEstadoAtual.SL26\ <= \ww_testEstadoAtual.SL26\;
\testEstadoAtual.SL27\ <= \ww_testEstadoAtual.SL27\;
\testEstadoAtual.SL27a\ <= \ww_testEstadoAtual.SL27a\;
\testEstadoAtual.SL28\ <= \ww_testEstadoAtual.SL28\;
tcmdSetI <= ww_tcmdSetI;
tcmdResetI <= ww_tcmdResetI;
tcmdSetPontos <= ww_tcmdSetPontos;
tcmdResetPontos <= ww_tcmdResetPontos;
tcmdMultAddress <= ww_tcmdMultAddress;
tcmdMultBaralho <= ww_tcmdMultBaralho;
tcmdSetCarta <= ww_tcmdSetCarta;
tcmdResetCarta <= ww_tcmdResetCarta;
tcmdSetBaralhoI <= ww_tcmdSetBaralhoI;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \bloco_operativo|IncIRAM|Add0~7_combout\ & \bloco_operativo|IncIRAM|Add0~6_combout\ & 
\bloco_operativo|IncIRAM|Add0~5_combout\ & \bloco_operativo|IncIRAM|Add0~4_combout\ & \bloco_operativo|IncIRAM|Add0~3_combout\ & \bloco_operativo|IncIRAM|Add0~2_combout\ & \bloco_operativo|IncIRAM|Add0~1_combout\ & \bloco_operativo|IncIRAM|Add0~0_combout\
);

\bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\bloco_operativo|DecCarta|Add0~39_combout\ & \bloco_operativo|DecCarta|Add0~38_combout\ & \bloco_operativo|DecCarta|Add0~37_combout\ & 
\bloco_operativo|DecCarta|Add0~36_combout\ & \bloco_operativo|DecCarta|Add0~35_combout\ & \bloco_operativo|DecCarta|Add0~34_combout\ & \bloco_operativo|DecCarta|Add0~33_combout\ & \bloco_operativo|DecCarta|Add0~32_combout\);

\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(0) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(1) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(2) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(3) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(4) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(5) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(6) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(7) <= \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset_req~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_req~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\bloco_controle|ALT_INV_cmdResetPontos~combout\ <= NOT \bloco_controle|cmdResetPontos~combout\;
\bloco_controle|ALT_INV_cmdResetI~combout\ <= NOT \bloco_controle|cmdResetI~combout\;
\ALT_INV_reset_req~inputclkctrl_outclk\ <= NOT \reset_req~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N23
\interrupt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|WideOr30~combout\,
	devoe => ww_devoe,
	o => \interrupt~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(0),
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(1),
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(2),
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(3),
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(4),
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(5),
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(6),
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_operativo|RegPontos|estadoAtual\(7),
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\testEstadoAtual.SL00~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL00~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\testEstadoAtual.SL01~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL01~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\testEstadoAtual.SL01a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL01a~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\testEstadoAtual.SL02~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL02~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\testEstadoAtual.SL03~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL03~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\testEstadoAtual.SL04~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL04~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\testEstadoAtual.SL05~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL05~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\testEstadoAtual.SL06~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL06~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\testEstadoAtual.SL07~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL07~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\testEstadoAtual.SL07a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL07a~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\testEstadoAtual.SL08~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL08~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\testEstadoAtual.SL09~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL09~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\testEstadoAtual.SL09a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL09a~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\testEstadoAtual.SL10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL10~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\testEstadoAtual.SL11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL11~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\testEstadoAtual.SL12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL12~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\testEstadoAtual.SL12a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL12a~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\testEstadoAtual.SL13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL13~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\testEstadoAtual.SL14~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL14~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\testEstadoAtual.SL15~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL15~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\testEstadoAtual.SL16~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL16~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\testEstadoAtual.SL17~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL17~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\testEstadoAtual.SL18~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL18~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\testEstadoAtual.SL19~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL19~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\testEstadoAtual.SL20~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL20~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\testEstadoAtual.SL21~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL21~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\testEstadoAtual.SL22~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL22~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\testEstadoAtual.SL23~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL23~output_o\);

-- Location: IOOBUF_X3_Y24_N16
\testEstadoAtual.SL24~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL24~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\testEstadoAtual.SL25~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL25~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\testEstadoAtual.SL26~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL26~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\testEstadoAtual.SL27~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL27~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\testEstadoAtual.SL27a~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL27a~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\testEstadoAtual.SL28~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \testEstadoAtual.SL28~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\tcmdSetI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|estadoAtual.SL03~q\,
	devoe => ww_devoe,
	o => \tcmdSetI~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\tcmdResetI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|cmdResetI~combout\,
	devoe => ww_devoe,
	o => \tcmdResetI~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\tcmdSetPontos~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|estadoAtual.SL13~q\,
	devoe => ww_devoe,
	o => \tcmdSetPontos~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\tcmdResetPontos~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|cmdResetPontos~combout\,
	devoe => ww_devoe,
	o => \tcmdResetPontos~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\tcmdMultAddress~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|cmdMultAddress~combout\,
	devoe => ww_devoe,
	o => \tcmdMultAddress~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\tcmdMultBaralho~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|estadoAtual.SL12~q\,
	devoe => ww_devoe,
	o => \tcmdMultBaralho~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\tcmdSetCarta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|estadoAtual.SL09a~q\,
	devoe => ww_devoe,
	o => \tcmdSetCarta~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\tcmdResetCarta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tcmdResetCarta~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\tcmdSetBaralhoI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bloco_controle|cmdSetBaralhoI~combout\,
	devoe => ww_devoe,
	o => \tcmdSetBaralhoI~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y24_N8
\writee~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writee,
	o => \writee~input_o\);

-- Location: IOIBUF_X21_Y24_N1
\chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: FF_X13_Y21_N7
\bloco_operativo|RegCarta|estadoAtual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[3]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(3));

-- Location: IOIBUF_X13_Y24_N8
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: FF_X13_Y21_N5
\bloco_operativo|RegCarta|estadoAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[2]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(2));

-- Location: IOIBUF_X5_Y24_N15
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: FF_X13_Y21_N3
\bloco_operativo|RegCarta|estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[1]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(1));

-- Location: IOIBUF_X13_Y24_N15
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: FF_X13_Y21_N1
\bloco_operativo|RegCarta|estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[0]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(0));

-- Location: LCCOMB_X13_Y20_N4
\bloco_operativo|RegPontos|estadoAtual[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[0]~8_combout\ = (\bloco_operativo|RegPontos|estadoAtual\(0) & (\bloco_operativo|RegCarta|estadoAtual\(0) $ (VCC))) # (!\bloco_operativo|RegPontos|estadoAtual\(0) & (\bloco_operativo|RegCarta|estadoAtual\(0) & VCC))
-- \bloco_operativo|RegPontos|estadoAtual[0]~9\ = CARRY((\bloco_operativo|RegPontos|estadoAtual\(0) & \bloco_operativo|RegCarta|estadoAtual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegPontos|estadoAtual\(0),
	datab => \bloco_operativo|RegCarta|estadoAtual\(0),
	datad => VCC,
	combout => \bloco_operativo|RegPontos|estadoAtual[0]~8_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[0]~9\);

-- Location: IOIBUF_X18_Y24_N8
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: FF_X13_Y21_N9
\bloco_operativo|RegCarta|estadoAtual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[4]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(4));

-- Location: LCCOMB_X13_Y20_N10
\bloco_operativo|RegPontos|estadoAtual[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[3]~14_combout\ = (\bloco_operativo|RegPontos|estadoAtual\(3) & ((\bloco_operativo|RegCarta|estadoAtual\(3) & (\bloco_operativo|RegPontos|estadoAtual[2]~13\ & VCC)) # (!\bloco_operativo|RegCarta|estadoAtual\(3) & 
-- (!\bloco_operativo|RegPontos|estadoAtual[2]~13\)))) # (!\bloco_operativo|RegPontos|estadoAtual\(3) & ((\bloco_operativo|RegCarta|estadoAtual\(3) & (!\bloco_operativo|RegPontos|estadoAtual[2]~13\)) # (!\bloco_operativo|RegCarta|estadoAtual\(3) & 
-- ((\bloco_operativo|RegPontos|estadoAtual[2]~13\) # (GND)))))
-- \bloco_operativo|RegPontos|estadoAtual[3]~15\ = CARRY((\bloco_operativo|RegPontos|estadoAtual\(3) & (!\bloco_operativo|RegCarta|estadoAtual\(3) & !\bloco_operativo|RegPontos|estadoAtual[2]~13\)) # (!\bloco_operativo|RegPontos|estadoAtual\(3) & 
-- ((!\bloco_operativo|RegPontos|estadoAtual[2]~13\) # (!\bloco_operativo|RegCarta|estadoAtual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegPontos|estadoAtual\(3),
	datab => \bloco_operativo|RegCarta|estadoAtual\(3),
	datad => VCC,
	cin => \bloco_operativo|RegPontos|estadoAtual[2]~13\,
	combout => \bloco_operativo|RegPontos|estadoAtual[3]~14_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[3]~15\);

-- Location: LCCOMB_X13_Y20_N12
\bloco_operativo|RegPontos|estadoAtual[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[4]~16_combout\ = ((\bloco_operativo|RegPontos|estadoAtual\(4) $ (\bloco_operativo|RegCarta|estadoAtual\(4) $ (!\bloco_operativo|RegPontos|estadoAtual[3]~15\)))) # (GND)
-- \bloco_operativo|RegPontos|estadoAtual[4]~17\ = CARRY((\bloco_operativo|RegPontos|estadoAtual\(4) & ((\bloco_operativo|RegCarta|estadoAtual\(4)) # (!\bloco_operativo|RegPontos|estadoAtual[3]~15\))) # (!\bloco_operativo|RegPontos|estadoAtual\(4) & 
-- (\bloco_operativo|RegCarta|estadoAtual\(4) & !\bloco_operativo|RegPontos|estadoAtual[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegPontos|estadoAtual\(4),
	datab => \bloco_operativo|RegCarta|estadoAtual\(4),
	datad => VCC,
	cin => \bloco_operativo|RegPontos|estadoAtual[3]~15\,
	combout => \bloco_operativo|RegPontos|estadoAtual[4]~16_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[4]~17\);

-- Location: FF_X13_Y20_N13
\bloco_operativo|RegPontos|estadoAtual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[4]~16_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(4));

-- Location: LCCOMB_X13_Y20_N30
\bloco_operativo|CompPontos21|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompPontos21|LessThan0~0_combout\ = (\bloco_operativo|RegPontos|estadoAtual\(4) & ((\bloco_operativo|RegPontos|estadoAtual\(3)) # ((\bloco_operativo|RegPontos|estadoAtual\(1) & \bloco_operativo|RegPontos|estadoAtual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegPontos|estadoAtual\(3),
	datab => \bloco_operativo|RegPontos|estadoAtual\(1),
	datac => \bloco_operativo|RegPontos|estadoAtual\(2),
	datad => \bloco_operativo|RegPontos|estadoAtual\(4),
	combout => \bloco_operativo|CompPontos21|LessThan0~0_combout\);

-- Location: IOIBUF_X13_Y24_N1
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: FF_X13_Y21_N15
\bloco_operativo|RegCarta|estadoAtual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[7]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(7));

-- Location: IOIBUF_X11_Y24_N15
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: FF_X13_Y21_N13
\bloco_operativo|RegCarta|estadoAtual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[6]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(6));

-- Location: IOIBUF_X13_Y24_N22
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: FF_X13_Y21_N11
\bloco_operativo|RegCarta|estadoAtual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[5]~input_o\,
	sload => VCC,
	ena => \bloco_controle|estadoAtual.SL09a~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegCarta|estadoAtual\(5));

-- Location: LCCOMB_X13_Y20_N14
\bloco_operativo|RegPontos|estadoAtual[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[5]~18_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(5) & ((\bloco_operativo|RegPontos|estadoAtual\(5) & (\bloco_operativo|RegPontos|estadoAtual[4]~17\ & VCC)) # (!\bloco_operativo|RegPontos|estadoAtual\(5) & 
-- (!\bloco_operativo|RegPontos|estadoAtual[4]~17\)))) # (!\bloco_operativo|RegCarta|estadoAtual\(5) & ((\bloco_operativo|RegPontos|estadoAtual\(5) & (!\bloco_operativo|RegPontos|estadoAtual[4]~17\)) # (!\bloco_operativo|RegPontos|estadoAtual\(5) & 
-- ((\bloco_operativo|RegPontos|estadoAtual[4]~17\) # (GND)))))
-- \bloco_operativo|RegPontos|estadoAtual[5]~19\ = CARRY((\bloco_operativo|RegCarta|estadoAtual\(5) & (!\bloco_operativo|RegPontos|estadoAtual\(5) & !\bloco_operativo|RegPontos|estadoAtual[4]~17\)) # (!\bloco_operativo|RegCarta|estadoAtual\(5) & 
-- ((!\bloco_operativo|RegPontos|estadoAtual[4]~17\) # (!\bloco_operativo|RegPontos|estadoAtual\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegCarta|estadoAtual\(5),
	datab => \bloco_operativo|RegPontos|estadoAtual\(5),
	datad => VCC,
	cin => \bloco_operativo|RegPontos|estadoAtual[4]~17\,
	combout => \bloco_operativo|RegPontos|estadoAtual[5]~18_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[5]~19\);

-- Location: FF_X13_Y20_N15
\bloco_operativo|RegPontos|estadoAtual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[5]~18_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(5));

-- Location: LCCOMB_X13_Y20_N16
\bloco_operativo|RegPontos|estadoAtual[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[6]~20_combout\ = ((\bloco_operativo|RegCarta|estadoAtual\(6) $ (\bloco_operativo|RegPontos|estadoAtual\(6) $ (!\bloco_operativo|RegPontos|estadoAtual[5]~19\)))) # (GND)
-- \bloco_operativo|RegPontos|estadoAtual[6]~21\ = CARRY((\bloco_operativo|RegCarta|estadoAtual\(6) & ((\bloco_operativo|RegPontos|estadoAtual\(6)) # (!\bloco_operativo|RegPontos|estadoAtual[5]~19\))) # (!\bloco_operativo|RegCarta|estadoAtual\(6) & 
-- (\bloco_operativo|RegPontos|estadoAtual\(6) & !\bloco_operativo|RegPontos|estadoAtual[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegCarta|estadoAtual\(6),
	datab => \bloco_operativo|RegPontos|estadoAtual\(6),
	datad => VCC,
	cin => \bloco_operativo|RegPontos|estadoAtual[5]~19\,
	combout => \bloco_operativo|RegPontos|estadoAtual[6]~20_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[6]~21\);

-- Location: FF_X13_Y20_N17
\bloco_operativo|RegPontos|estadoAtual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[6]~20_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(6));

-- Location: LCCOMB_X13_Y20_N18
\bloco_operativo|RegPontos|estadoAtual[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[7]~22_combout\ = \bloco_operativo|RegPontos|estadoAtual\(7) $ (\bloco_operativo|RegPontos|estadoAtual[6]~21\ $ (\bloco_operativo|RegCarta|estadoAtual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegPontos|estadoAtual\(7),
	datad => \bloco_operativo|RegCarta|estadoAtual\(7),
	cin => \bloco_operativo|RegPontos|estadoAtual[6]~21\,
	combout => \bloco_operativo|RegPontos|estadoAtual[7]~22_combout\);

-- Location: FF_X13_Y20_N19
\bloco_operativo|RegPontos|estadoAtual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[7]~22_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(7));

-- Location: LCCOMB_X13_Y20_N24
\bloco_operativo|CompPontos21|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompPontos21|LessThan0~1_combout\ = (!\bloco_operativo|RegPontos|estadoAtual\(7) & (!\bloco_operativo|RegPontos|estadoAtual\(5) & !\bloco_operativo|RegPontos|estadoAtual\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegPontos|estadoAtual\(7),
	datac => \bloco_operativo|RegPontos|estadoAtual\(5),
	datad => \bloco_operativo|RegPontos|estadoAtual\(6),
	combout => \bloco_operativo|CompPontos21|LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y20_N26
\bloco_controle|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector19~0_combout\ = (\bloco_controle|estadoAtual.SL14~q\ & ((\bloco_operativo|CompPontos21|LessThan0~0_combout\) # (!\bloco_operativo|CompPontos21|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|CompPontos21|LessThan0~0_combout\,
	datac => \bloco_controle|estadoAtual.SL14~q\,
	datad => \bloco_operativo|CompPontos21|LessThan0~1_combout\,
	combout => \bloco_controle|Selector19~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset_req~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_req,
	o => \reset_req~input_o\);

-- Location: CLKCTRL_G4
\reset_req~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset_req~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset_req~inputclkctrl_outclk\);

-- Location: FF_X13_Y20_N27
\bloco_controle|estadoAtual.SL15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector19~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL15~q\);

-- Location: FF_X12_Y20_N1
\bloco_controle|estadoAtual.SL27a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|estadoAtual.SL27~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL27a~q\);

-- Location: LCCOMB_X12_Y20_N28
\bloco_controle|estadoAtual.SL28~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL28~feeder_combout\ = \bloco_controle|estadoAtual.SL27a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL27a~q\,
	combout => \bloco_controle|estadoAtual.SL28~feeder_combout\);

-- Location: FF_X12_Y20_N29
\bloco_controle|estadoAtual.SL28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL28~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL28~q\);

-- Location: LCCOMB_X12_Y20_N14
\bloco_controle|estadoAtual.SL00~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL00~feeder_combout\ = \bloco_controle|estadoAtual.SL28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL28~q\,
	combout => \bloco_controle|estadoAtual.SL00~feeder_combout\);

-- Location: FF_X12_Y20_N15
\bloco_controle|estadoAtual.SL00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL00~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL00~q\);

-- Location: LCCOMB_X13_Y20_N0
\bloco_controle|estadoAtual.SL01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL01~0_combout\ = !\bloco_controle|estadoAtual.SL00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL00~q\,
	combout => \bloco_controle|estadoAtual.SL01~0_combout\);

-- Location: FF_X14_Y20_N11
\bloco_controle|estadoAtual.SL01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|estadoAtual.SL01~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL01~q\);

-- Location: LCCOMB_X14_Y20_N30
\bloco_controle|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector2~0_combout\ = (\bloco_controle|estadoAtual.SL03~q\) # (!\bloco_controle|estadoAtual.SL01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL01~q\,
	datad => \bloco_controle|estadoAtual.SL03~q\,
	combout => \bloco_controle|Selector2~0_combout\);

-- Location: FF_X14_Y20_N31
\bloco_controle|estadoAtual.SL01a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector2~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL01a~q\);

-- Location: LCCOMB_X14_Y20_N6
\bloco_operativo|CompIMenor13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompIMenor13|LessThan0~0_combout\ = (\bloco_operativo|RegI|estadoAtual\(3) & (\bloco_operativo|RegI|estadoAtual\(2) & ((\bloco_operativo|RegI|estadoAtual\(0)) # (\bloco_operativo|RegI|estadoAtual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(3),
	datab => \bloco_operativo|RegI|estadoAtual\(0),
	datac => \bloco_operativo|RegI|estadoAtual\(1),
	datad => \bloco_operativo|RegI|estadoAtual\(2),
	combout => \bloco_operativo|CompIMenor13|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y20_N8
\bloco_controle|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector3~0_combout\ = (!\bloco_operativo|CompIMenor13|LessThan0~1_combout\ & (\bloco_controle|estadoAtual.SL01a~q\ & !\bloco_operativo|CompIMenor13|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|CompIMenor13|LessThan0~1_combout\,
	datac => \bloco_controle|estadoAtual.SL01a~q\,
	datad => \bloco_operativo|CompIMenor13|LessThan0~0_combout\,
	combout => \bloco_controle|Selector3~0_combout\);

-- Location: FF_X14_Y20_N9
\bloco_controle|estadoAtual.SL02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector3~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL02~q\);

-- Location: FF_X14_Y20_N29
\bloco_controle|estadoAtual.SL03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|estadoAtual.SL02~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL03~q\);

-- Location: LCCOMB_X14_Y20_N0
\bloco_operativo|RegI|estadoAtual[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[0]~13_combout\ = \bloco_operativo|RegI|estadoAtual\(0) $ (\bloco_controle|estadoAtual.SL03~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_operativo|RegI|estadoAtual\(0),
	datad => \bloco_controle|estadoAtual.SL03~q\,
	combout => \bloco_operativo|RegI|estadoAtual[0]~13_combout\);

-- Location: LCCOMB_X14_Y20_N28
\bloco_controle|cmdResetI\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|cmdResetI~combout\ = (\bloco_controle|estadoAtual.SL04~q\) # (!\bloco_controle|estadoAtual.SL01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL01~q\,
	datad => \bloco_controle|estadoAtual.SL04~q\,
	combout => \bloco_controle|cmdResetI~combout\);

-- Location: FF_X14_Y20_N1
\bloco_operativo|RegI|estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[0]~13_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(0));

-- Location: LCCOMB_X14_Y20_N14
\bloco_operativo|RegI|estadoAtual[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[1]~7_combout\ = (\bloco_operativo|RegI|estadoAtual\(1) & (\bloco_operativo|RegI|estadoAtual\(0) $ (VCC))) # (!\bloco_operativo|RegI|estadoAtual\(1) & (\bloco_operativo|RegI|estadoAtual\(0) & VCC))
-- \bloco_operativo|RegI|estadoAtual[1]~8\ = CARRY((\bloco_operativo|RegI|estadoAtual\(1) & \bloco_operativo|RegI|estadoAtual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(1),
	datab => \bloco_operativo|RegI|estadoAtual\(0),
	datad => VCC,
	combout => \bloco_operativo|RegI|estadoAtual[1]~7_combout\,
	cout => \bloco_operativo|RegI|estadoAtual[1]~8\);

-- Location: FF_X14_Y20_N15
\bloco_operativo|RegI|estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[1]~7_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(1));

-- Location: LCCOMB_X14_Y20_N16
\bloco_operativo|RegI|estadoAtual[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[2]~9_combout\ = (\bloco_operativo|RegI|estadoAtual\(2) & (!\bloco_operativo|RegI|estadoAtual[1]~8\)) # (!\bloco_operativo|RegI|estadoAtual\(2) & ((\bloco_operativo|RegI|estadoAtual[1]~8\) # (GND)))
-- \bloco_operativo|RegI|estadoAtual[2]~10\ = CARRY((!\bloco_operativo|RegI|estadoAtual[1]~8\) # (!\bloco_operativo|RegI|estadoAtual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(2),
	datad => VCC,
	cin => \bloco_operativo|RegI|estadoAtual[1]~8\,
	combout => \bloco_operativo|RegI|estadoAtual[2]~9_combout\,
	cout => \bloco_operativo|RegI|estadoAtual[2]~10\);

-- Location: FF_X14_Y20_N17
\bloco_operativo|RegI|estadoAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[2]~9_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(2));

-- Location: LCCOMB_X14_Y20_N18
\bloco_operativo|RegI|estadoAtual[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[3]~11_combout\ = (\bloco_operativo|RegI|estadoAtual\(3) & (\bloco_operativo|RegI|estadoAtual[2]~10\ $ (GND))) # (!\bloco_operativo|RegI|estadoAtual\(3) & (!\bloco_operativo|RegI|estadoAtual[2]~10\ & VCC))
-- \bloco_operativo|RegI|estadoAtual[3]~12\ = CARRY((\bloco_operativo|RegI|estadoAtual\(3) & !\bloco_operativo|RegI|estadoAtual[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(3),
	datad => VCC,
	cin => \bloco_operativo|RegI|estadoAtual[2]~10\,
	combout => \bloco_operativo|RegI|estadoAtual[3]~11_combout\,
	cout => \bloco_operativo|RegI|estadoAtual[3]~12\);

-- Location: FF_X14_Y20_N19
\bloco_operativo|RegI|estadoAtual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[3]~11_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(3));

-- Location: LCCOMB_X14_Y20_N20
\bloco_operativo|RegI|estadoAtual[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[4]~14_combout\ = (\bloco_operativo|RegI|estadoAtual\(4) & (!\bloco_operativo|RegI|estadoAtual[3]~12\)) # (!\bloco_operativo|RegI|estadoAtual\(4) & ((\bloco_operativo|RegI|estadoAtual[3]~12\) # (GND)))
-- \bloco_operativo|RegI|estadoAtual[4]~15\ = CARRY((!\bloco_operativo|RegI|estadoAtual[3]~12\) # (!\bloco_operativo|RegI|estadoAtual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(4),
	datad => VCC,
	cin => \bloco_operativo|RegI|estadoAtual[3]~12\,
	combout => \bloco_operativo|RegI|estadoAtual[4]~14_combout\,
	cout => \bloco_operativo|RegI|estadoAtual[4]~15\);

-- Location: FF_X14_Y20_N21
\bloco_operativo|RegI|estadoAtual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[4]~14_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(4));

-- Location: LCCOMB_X14_Y20_N22
\bloco_operativo|RegI|estadoAtual[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[5]~16_combout\ = (\bloco_operativo|RegI|estadoAtual\(5) & (\bloco_operativo|RegI|estadoAtual[4]~15\ $ (GND))) # (!\bloco_operativo|RegI|estadoAtual\(5) & (!\bloco_operativo|RegI|estadoAtual[4]~15\ & VCC))
-- \bloco_operativo|RegI|estadoAtual[5]~17\ = CARRY((\bloco_operativo|RegI|estadoAtual\(5) & !\bloco_operativo|RegI|estadoAtual[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(5),
	datad => VCC,
	cin => \bloco_operativo|RegI|estadoAtual[4]~15\,
	combout => \bloco_operativo|RegI|estadoAtual[5]~16_combout\,
	cout => \bloco_operativo|RegI|estadoAtual[5]~17\);

-- Location: FF_X14_Y20_N23
\bloco_operativo|RegI|estadoAtual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[5]~16_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(5));

-- Location: LCCOMB_X14_Y20_N24
\bloco_operativo|RegI|estadoAtual[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[6]~18_combout\ = (\bloco_operativo|RegI|estadoAtual\(6) & (!\bloco_operativo|RegI|estadoAtual[5]~17\)) # (!\bloco_operativo|RegI|estadoAtual\(6) & ((\bloco_operativo|RegI|estadoAtual[5]~17\) # (GND)))
-- \bloco_operativo|RegI|estadoAtual[6]~19\ = CARRY((!\bloco_operativo|RegI|estadoAtual[5]~17\) # (!\bloco_operativo|RegI|estadoAtual\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(6),
	datad => VCC,
	cin => \bloco_operativo|RegI|estadoAtual[5]~17\,
	combout => \bloco_operativo|RegI|estadoAtual[6]~18_combout\,
	cout => \bloco_operativo|RegI|estadoAtual[6]~19\);

-- Location: FF_X14_Y20_N25
\bloco_operativo|RegI|estadoAtual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[6]~18_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(6));

-- Location: LCCOMB_X14_Y20_N26
\bloco_operativo|RegI|estadoAtual[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegI|estadoAtual[7]~20_combout\ = \bloco_operativo|RegI|estadoAtual\(7) $ (!\bloco_operativo|RegI|estadoAtual[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(7),
	cin => \bloco_operativo|RegI|estadoAtual[6]~19\,
	combout => \bloco_operativo|RegI|estadoAtual[7]~20_combout\);

-- Location: FF_X14_Y20_N27
\bloco_operativo|RegI|estadoAtual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegI|estadoAtual[7]~20_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetI~combout\,
	ena => \bloco_controle|estadoAtual.SL03~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegI|estadoAtual\(7));

-- Location: LCCOMB_X14_Y20_N12
\bloco_operativo|CompIMenor13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompIMenor13|LessThan0~1_combout\ = (\bloco_operativo|RegI|estadoAtual\(7)) # ((\bloco_operativo|RegI|estadoAtual\(5)) # ((\bloco_operativo|RegI|estadoAtual\(6)) # (\bloco_operativo|RegI|estadoAtual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(7),
	datab => \bloco_operativo|RegI|estadoAtual\(5),
	datac => \bloco_operativo|RegI|estadoAtual\(6),
	datad => \bloco_operativo|RegI|estadoAtual\(4),
	combout => \bloco_operativo|CompIMenor13|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y20_N4
\bloco_controle|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector5~0_combout\ = (\bloco_controle|estadoAtual.SL01a~q\ & ((\bloco_operativo|CompIMenor13|LessThan0~1_combout\) # (\bloco_operativo|CompIMenor13|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|CompIMenor13|LessThan0~1_combout\,
	datac => \bloco_controle|estadoAtual.SL01a~q\,
	datad => \bloco_operativo|CompIMenor13|LessThan0~0_combout\,
	combout => \bloco_controle|Selector5~0_combout\);

-- Location: LCCOMB_X13_Y20_N28
\bloco_controle|estadoAtual.SL04~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL04~feeder_combout\ = \bloco_controle|Selector5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|Selector5~0_combout\,
	combout => \bloco_controle|estadoAtual.SL04~feeder_combout\);

-- Location: FF_X13_Y20_N29
\bloco_controle|estadoAtual.SL04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL04~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL04~q\);

-- Location: LCCOMB_X13_Y20_N20
\bloco_controle|cmdResetPontos\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|cmdResetPontos~combout\ = (\bloco_controle|estadoAtual.SL15~q\) # (\bloco_controle|estadoAtual.SL04~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL15~q\,
	datad => \bloco_controle|estadoAtual.SL04~q\,
	combout => \bloco_controle|cmdResetPontos~combout\);

-- Location: FF_X13_Y20_N5
\bloco_operativo|RegPontos|estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[0]~8_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(0));

-- Location: LCCOMB_X13_Y20_N6
\bloco_operativo|RegPontos|estadoAtual[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[1]~10_combout\ = (\bloco_operativo|RegPontos|estadoAtual\(1) & ((\bloco_operativo|RegCarta|estadoAtual\(1) & (\bloco_operativo|RegPontos|estadoAtual[0]~9\ & VCC)) # (!\bloco_operativo|RegCarta|estadoAtual\(1) & 
-- (!\bloco_operativo|RegPontos|estadoAtual[0]~9\)))) # (!\bloco_operativo|RegPontos|estadoAtual\(1) & ((\bloco_operativo|RegCarta|estadoAtual\(1) & (!\bloco_operativo|RegPontos|estadoAtual[0]~9\)) # (!\bloco_operativo|RegCarta|estadoAtual\(1) & 
-- ((\bloco_operativo|RegPontos|estadoAtual[0]~9\) # (GND)))))
-- \bloco_operativo|RegPontos|estadoAtual[1]~11\ = CARRY((\bloco_operativo|RegPontos|estadoAtual\(1) & (!\bloco_operativo|RegCarta|estadoAtual\(1) & !\bloco_operativo|RegPontos|estadoAtual[0]~9\)) # (!\bloco_operativo|RegPontos|estadoAtual\(1) & 
-- ((!\bloco_operativo|RegPontos|estadoAtual[0]~9\) # (!\bloco_operativo|RegCarta|estadoAtual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegPontos|estadoAtual\(1),
	datab => \bloco_operativo|RegCarta|estadoAtual\(1),
	datad => VCC,
	cin => \bloco_operativo|RegPontos|estadoAtual[0]~9\,
	combout => \bloco_operativo|RegPontos|estadoAtual[1]~10_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[1]~11\);

-- Location: FF_X13_Y20_N7
\bloco_operativo|RegPontos|estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[1]~10_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(1));

-- Location: LCCOMB_X13_Y20_N8
\bloco_operativo|RegPontos|estadoAtual[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|RegPontos|estadoAtual[2]~12_combout\ = ((\bloco_operativo|RegCarta|estadoAtual\(2) $ (\bloco_operativo|RegPontos|estadoAtual\(2) $ (!\bloco_operativo|RegPontos|estadoAtual[1]~11\)))) # (GND)
-- \bloco_operativo|RegPontos|estadoAtual[2]~13\ = CARRY((\bloco_operativo|RegCarta|estadoAtual\(2) & ((\bloco_operativo|RegPontos|estadoAtual\(2)) # (!\bloco_operativo|RegPontos|estadoAtual[1]~11\))) # (!\bloco_operativo|RegCarta|estadoAtual\(2) & 
-- (\bloco_operativo|RegPontos|estadoAtual\(2) & !\bloco_operativo|RegPontos|estadoAtual[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegCarta|estadoAtual\(2),
	datab => \bloco_operativo|RegPontos|estadoAtual\(2),
	datad => VCC,
	cin => \bloco_operativo|RegPontos|estadoAtual[1]~11\,
	combout => \bloco_operativo|RegPontos|estadoAtual[2]~12_combout\,
	cout => \bloco_operativo|RegPontos|estadoAtual[2]~13\);

-- Location: FF_X13_Y20_N9
\bloco_operativo|RegPontos|estadoAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[2]~12_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(2));

-- Location: FF_X13_Y20_N11
\bloco_operativo|RegPontos|estadoAtual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_operativo|RegPontos|estadoAtual[3]~14_combout\,
	clrn => \bloco_controle|ALT_INV_cmdResetPontos~combout\,
	ena => \bloco_controle|estadoAtual.SL13~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_operativo|RegPontos|estadoAtual\(3));

-- Location: LCCOMB_X13_Y20_N22
\bloco_operativo|CompPontos16|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompPontos16|LessThan0~0_combout\ = (\bloco_operativo|RegPontos|estadoAtual\(3)) # ((\bloco_operativo|RegPontos|estadoAtual\(2)) # ((\bloco_operativo|RegPontos|estadoAtual\(0)) # (\bloco_operativo|RegPontos|estadoAtual\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegPontos|estadoAtual\(3),
	datab => \bloco_operativo|RegPontos|estadoAtual\(2),
	datac => \bloco_operativo|RegPontos|estadoAtual\(0),
	datad => \bloco_operativo|RegPontos|estadoAtual\(1),
	combout => \bloco_operativo|CompPontos16|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y20_N22
\bloco_controle|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector26~0_combout\ = (\bloco_controle|estadoAtual.SL19~q\ & (\bloco_operativo|CompPontos21|LessThan0~1_combout\ & ((!\bloco_operativo|RegPontos|estadoAtual\(4)) # (!\bloco_operativo|CompPontos16|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL19~q\,
	datab => \bloco_operativo|CompPontos16|LessThan0~0_combout\,
	datac => \bloco_operativo|RegPontos|estadoAtual\(4),
	datad => \bloco_operativo|CompPontos21|LessThan0~1_combout\,
	combout => \bloco_controle|Selector26~0_combout\);

-- Location: FF_X12_Y20_N23
\bloco_controle|estadoAtual.SL22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector26~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL22~q\);

-- Location: FF_X12_Y20_N21
\bloco_controle|estadoAtual.SL23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|estadoAtual.SL22~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL23~q\);

-- Location: LCCOMB_X12_Y20_N12
\bloco_controle|estadoAtual.SL24~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL24~feeder_combout\ = \bloco_controle|estadoAtual.SL23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL23~q\,
	combout => \bloco_controle|estadoAtual.SL24~feeder_combout\);

-- Location: FF_X12_Y20_N13
\bloco_controle|estadoAtual.SL24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL24~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL24~q\);

-- Location: IOIBUF_X16_Y24_N22
\addCarta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addCarta,
	o => \addCarta~input_o\);

-- Location: LCCOMB_X16_Y21_N26
\bloco_controle|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector30~0_combout\ = (\bloco_controle|estadoAtual.SL24~q\ & \addCarta~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL24~q\,
	datad => \addCarta~input_o\,
	combout => \bloco_controle|Selector30~0_combout\);

-- Location: FF_X16_Y21_N27
\bloco_controle|estadoAtual.SL26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector30~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL26~q\);

-- Location: FF_X16_Y21_N21
\bloco_controle|estadoAtual.SL05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|estadoAtual.SL04~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL05~q\);

-- Location: LCCOMB_X16_Y21_N20
\bloco_controle|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector7~0_combout\ = (\bloco_controle|estadoAtual.SL26~q\) # (\bloco_controle|estadoAtual.SL05~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL26~q\,
	datac => \bloco_controle|estadoAtual.SL05~q\,
	combout => \bloco_controle|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y20_N10
\bloco_controle|cmdSetBaralhoI\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|cmdSetBaralhoI~combout\ = (\bloco_controle|estadoAtual.SL02~q\) # (\bloco_controle|estadoAtual.SL12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|estadoAtual.SL02~q\,
	datad => \bloco_controle|estadoAtual.SL12~q\,
	combout => \bloco_controle|cmdSetBaralhoI~combout\);

-- Location: LCCOMB_X13_Y21_N16
\bloco_operativo|IncIRAM|outp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[0]~0_combout\ = \bloco_operativo|RegI|estadoAtual\(0) $ (VCC)
-- \bloco_operativo|IncIRAM|outp[0]~1\ = CARRY(\bloco_operativo|RegI|estadoAtual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(0),
	datad => VCC,
	combout => \bloco_operativo|IncIRAM|outp[0]~0_combout\,
	cout => \bloco_operativo|IncIRAM|outp[0]~1\);

-- Location: LCCOMB_X14_Y21_N8
\bloco_operativo|IncIRAM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~0_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL12~q\,
	datac => \bloco_operativo|IncIRAM|outp[0]~0_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~0_combout\);

-- Location: LCCOMB_X13_Y21_N0
\bloco_operativo|DecCarta|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~16_combout\ = \bloco_operativo|RegCarta|estadoAtual\(0) $ (VCC)
-- \bloco_operativo|DecCarta|Add0~17\ = CARRY(\bloco_operativo|RegCarta|estadoAtual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegCarta|estadoAtual\(0),
	datad => VCC,
	combout => \bloco_operativo|DecCarta|Add0~16_combout\,
	cout => \bloco_operativo|DecCarta|Add0~17\);

-- Location: LCCOMB_X14_Y21_N24
\bloco_operativo|DecCarta|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~32_combout\ = (\bloco_controle|estadoAtual.SL12~q\ & (((\bloco_operativo|DecCarta|Add0~16_combout\)))) # (!\bloco_controle|estadoAtual.SL12~q\ & ((\bloco_controle|estadoAtual.SL10~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~16_combout\))) # (!\bloco_controle|estadoAtual.SL10~q\ & (\bloco_operativo|RegI|estadoAtual\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL12~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(0),
	datac => \bloco_operativo|DecCarta|Add0~16_combout\,
	datad => \bloco_controle|estadoAtual.SL10~q\,
	combout => \bloco_operativo|DecCarta|Add0~32_combout\);

-- Location: LCCOMB_X13_Y21_N2
\bloco_operativo|DecCarta|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~18_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(1) & (\bloco_operativo|DecCarta|Add0~17\ & VCC)) # (!\bloco_operativo|RegCarta|estadoAtual\(1) & (!\bloco_operativo|DecCarta|Add0~17\))
-- \bloco_operativo|DecCarta|Add0~19\ = CARRY((!\bloco_operativo|RegCarta|estadoAtual\(1) & !\bloco_operativo|DecCarta|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegCarta|estadoAtual\(1),
	datad => VCC,
	cin => \bloco_operativo|DecCarta|Add0~17\,
	combout => \bloco_operativo|DecCarta|Add0~18_combout\,
	cout => \bloco_operativo|DecCarta|Add0~19\);

-- Location: LCCOMB_X14_Y21_N26
\bloco_operativo|DecCarta|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~33_combout\ = (\bloco_controle|estadoAtual.SL10~q\ & (((\bloco_operativo|DecCarta|Add0~18_combout\)))) # (!\bloco_controle|estadoAtual.SL10~q\ & ((\bloco_controle|estadoAtual.SL12~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~18_combout\))) # (!\bloco_controle|estadoAtual.SL12~q\ & (\bloco_operativo|RegI|estadoAtual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL10~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(1),
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|DecCarta|Add0~18_combout\,
	combout => \bloco_operativo|DecCarta|Add0~33_combout\);

-- Location: LCCOMB_X13_Y21_N4
\bloco_operativo|DecCarta|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~20_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(2) & ((GND) # (!\bloco_operativo|DecCarta|Add0~19\))) # (!\bloco_operativo|RegCarta|estadoAtual\(2) & (\bloco_operativo|DecCarta|Add0~19\ $ (GND)))
-- \bloco_operativo|DecCarta|Add0~21\ = CARRY((\bloco_operativo|RegCarta|estadoAtual\(2)) # (!\bloco_operativo|DecCarta|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegCarta|estadoAtual\(2),
	datad => VCC,
	cin => \bloco_operativo|DecCarta|Add0~19\,
	combout => \bloco_operativo|DecCarta|Add0~20_combout\,
	cout => \bloco_operativo|DecCarta|Add0~21\);

-- Location: LCCOMB_X14_Y21_N4
\bloco_operativo|DecCarta|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~34_combout\ = (\bloco_controle|estadoAtual.SL12~q\ & (((\bloco_operativo|DecCarta|Add0~20_combout\)))) # (!\bloco_controle|estadoAtual.SL12~q\ & ((\bloco_controle|estadoAtual.SL10~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~20_combout\))) # (!\bloco_controle|estadoAtual.SL10~q\ & (\bloco_operativo|RegI|estadoAtual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(2),
	datab => \bloco_operativo|DecCarta|Add0~20_combout\,
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_controle|estadoAtual.SL10~q\,
	combout => \bloco_operativo|DecCarta|Add0~34_combout\);

-- Location: LCCOMB_X13_Y21_N6
\bloco_operativo|DecCarta|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~22_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(3) & (\bloco_operativo|DecCarta|Add0~21\ & VCC)) # (!\bloco_operativo|RegCarta|estadoAtual\(3) & (!\bloco_operativo|DecCarta|Add0~21\))
-- \bloco_operativo|DecCarta|Add0~23\ = CARRY((!\bloco_operativo|RegCarta|estadoAtual\(3) & !\bloco_operativo|DecCarta|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegCarta|estadoAtual\(3),
	datad => VCC,
	cin => \bloco_operativo|DecCarta|Add0~21\,
	combout => \bloco_operativo|DecCarta|Add0~22_combout\,
	cout => \bloco_operativo|DecCarta|Add0~23\);

-- Location: LCCOMB_X14_Y21_N6
\bloco_operativo|DecCarta|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~35_combout\ = (\bloco_controle|estadoAtual.SL12~q\ & (((\bloco_operativo|DecCarta|Add0~22_combout\)))) # (!\bloco_controle|estadoAtual.SL12~q\ & ((\bloco_controle|estadoAtual.SL10~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~22_combout\))) # (!\bloco_controle|estadoAtual.SL10~q\ & (\bloco_operativo|RegI|estadoAtual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL12~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(3),
	datac => \bloco_operativo|DecCarta|Add0~22_combout\,
	datad => \bloco_controle|estadoAtual.SL10~q\,
	combout => \bloco_operativo|DecCarta|Add0~35_combout\);

-- Location: LCCOMB_X13_Y21_N8
\bloco_operativo|DecCarta|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~24_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(4) & ((GND) # (!\bloco_operativo|DecCarta|Add0~23\))) # (!\bloco_operativo|RegCarta|estadoAtual\(4) & (\bloco_operativo|DecCarta|Add0~23\ $ (GND)))
-- \bloco_operativo|DecCarta|Add0~25\ = CARRY((\bloco_operativo|RegCarta|estadoAtual\(4)) # (!\bloco_operativo|DecCarta|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegCarta|estadoAtual\(4),
	datad => VCC,
	cin => \bloco_operativo|DecCarta|Add0~23\,
	combout => \bloco_operativo|DecCarta|Add0~24_combout\,
	cout => \bloco_operativo|DecCarta|Add0~25\);

-- Location: LCCOMB_X14_Y21_N20
\bloco_operativo|DecCarta|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~36_combout\ = (\bloco_controle|estadoAtual.SL10~q\ & (((\bloco_operativo|DecCarta|Add0~24_combout\)))) # (!\bloco_controle|estadoAtual.SL10~q\ & ((\bloco_controle|estadoAtual.SL12~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~24_combout\))) # (!\bloco_controle|estadoAtual.SL12~q\ & (\bloco_operativo|RegI|estadoAtual\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL10~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(4),
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|DecCarta|Add0~24_combout\,
	combout => \bloco_operativo|DecCarta|Add0~36_combout\);

-- Location: LCCOMB_X13_Y21_N10
\bloco_operativo|DecCarta|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~26_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(5) & (\bloco_operativo|DecCarta|Add0~25\ & VCC)) # (!\bloco_operativo|RegCarta|estadoAtual\(5) & (!\bloco_operativo|DecCarta|Add0~25\))
-- \bloco_operativo|DecCarta|Add0~27\ = CARRY((!\bloco_operativo|RegCarta|estadoAtual\(5) & !\bloco_operativo|DecCarta|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegCarta|estadoAtual\(5),
	datad => VCC,
	cin => \bloco_operativo|DecCarta|Add0~25\,
	combout => \bloco_operativo|DecCarta|Add0~26_combout\,
	cout => \bloco_operativo|DecCarta|Add0~27\);

-- Location: LCCOMB_X14_Y21_N2
\bloco_operativo|DecCarta|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~37_combout\ = (\bloco_controle|estadoAtual.SL10~q\ & (((\bloco_operativo|DecCarta|Add0~26_combout\)))) # (!\bloco_controle|estadoAtual.SL10~q\ & ((\bloco_controle|estadoAtual.SL12~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~26_combout\))) # (!\bloco_controle|estadoAtual.SL12~q\ & (\bloco_operativo|RegI|estadoAtual\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL10~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(5),
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|DecCarta|Add0~26_combout\,
	combout => \bloco_operativo|DecCarta|Add0~37_combout\);

-- Location: LCCOMB_X13_Y21_N12
\bloco_operativo|DecCarta|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~28_combout\ = (\bloco_operativo|RegCarta|estadoAtual\(6) & ((GND) # (!\bloco_operativo|DecCarta|Add0~27\))) # (!\bloco_operativo|RegCarta|estadoAtual\(6) & (\bloco_operativo|DecCarta|Add0~27\ $ (GND)))
-- \bloco_operativo|DecCarta|Add0~29\ = CARRY((\bloco_operativo|RegCarta|estadoAtual\(6)) # (!\bloco_operativo|DecCarta|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegCarta|estadoAtual\(6),
	datad => VCC,
	cin => \bloco_operativo|DecCarta|Add0~27\,
	combout => \bloco_operativo|DecCarta|Add0~28_combout\,
	cout => \bloco_operativo|DecCarta|Add0~29\);

-- Location: LCCOMB_X14_Y21_N28
\bloco_operativo|DecCarta|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~38_combout\ = (\bloco_controle|estadoAtual.SL10~q\ & (((\bloco_operativo|DecCarta|Add0~28_combout\)))) # (!\bloco_controle|estadoAtual.SL10~q\ & ((\bloco_controle|estadoAtual.SL12~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~28_combout\))) # (!\bloco_controle|estadoAtual.SL12~q\ & (\bloco_operativo|RegI|estadoAtual\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL10~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(6),
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|DecCarta|Add0~28_combout\,
	combout => \bloco_operativo|DecCarta|Add0~38_combout\);

-- Location: LCCOMB_X13_Y21_N14
\bloco_operativo|DecCarta|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~30_combout\ = \bloco_operativo|RegCarta|estadoAtual\(7) $ (!\bloco_operativo|DecCarta|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegCarta|estadoAtual\(7),
	cin => \bloco_operativo|DecCarta|Add0~29\,
	combout => \bloco_operativo|DecCarta|Add0~30_combout\);

-- Location: LCCOMB_X14_Y21_N10
\bloco_operativo|DecCarta|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|DecCarta|Add0~39_combout\ = (\bloco_controle|estadoAtual.SL10~q\ & (((\bloco_operativo|DecCarta|Add0~30_combout\)))) # (!\bloco_controle|estadoAtual.SL10~q\ & ((\bloco_controle|estadoAtual.SL12~q\ & 
-- ((\bloco_operativo|DecCarta|Add0~30_combout\))) # (!\bloco_controle|estadoAtual.SL12~q\ & (\bloco_operativo|RegI|estadoAtual\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL10~q\,
	datab => \bloco_operativo|RegI|estadoAtual\(7),
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|DecCarta|Add0~30_combout\,
	combout => \bloco_operativo|DecCarta|Add0~39_combout\);

-- Location: LCCOMB_X13_Y21_N18
\bloco_operativo|IncIRAM|outp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[1]~2_combout\ = (\bloco_operativo|RegI|estadoAtual\(1) & (!\bloco_operativo|IncIRAM|outp[0]~1\)) # (!\bloco_operativo|RegI|estadoAtual\(1) & ((\bloco_operativo|IncIRAM|outp[0]~1\) # (GND)))
-- \bloco_operativo|IncIRAM|outp[1]~3\ = CARRY((!\bloco_operativo|IncIRAM|outp[0]~1\) # (!\bloco_operativo|RegI|estadoAtual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(1),
	datad => VCC,
	cin => \bloco_operativo|IncIRAM|outp[0]~1\,
	combout => \bloco_operativo|IncIRAM|outp[1]~2_combout\,
	cout => \bloco_operativo|IncIRAM|outp[1]~3\);

-- Location: LCCOMB_X14_Y21_N30
\bloco_operativo|IncIRAM|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~1_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|IncIRAM|outp[1]~2_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~1_combout\);

-- Location: LCCOMB_X13_Y21_N20
\bloco_operativo|IncIRAM|outp[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[2]~4_combout\ = (\bloco_operativo|RegI|estadoAtual\(2) & (\bloco_operativo|IncIRAM|outp[1]~3\ $ (GND))) # (!\bloco_operativo|RegI|estadoAtual\(2) & (!\bloco_operativo|IncIRAM|outp[1]~3\ & VCC))
-- \bloco_operativo|IncIRAM|outp[2]~5\ = CARRY((\bloco_operativo|RegI|estadoAtual\(2) & !\bloco_operativo|IncIRAM|outp[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(2),
	datad => VCC,
	cin => \bloco_operativo|IncIRAM|outp[1]~3\,
	combout => \bloco_operativo|IncIRAM|outp[2]~4_combout\,
	cout => \bloco_operativo|IncIRAM|outp[2]~5\);

-- Location: LCCOMB_X14_Y21_N12
\bloco_operativo|IncIRAM|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~2_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|IncIRAM|outp[2]~4_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~2_combout\);

-- Location: LCCOMB_X13_Y21_N22
\bloco_operativo|IncIRAM|outp[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[3]~6_combout\ = (\bloco_operativo|RegI|estadoAtual\(3) & (!\bloco_operativo|IncIRAM|outp[2]~5\)) # (!\bloco_operativo|RegI|estadoAtual\(3) & ((\bloco_operativo|IncIRAM|outp[2]~5\) # (GND)))
-- \bloco_operativo|IncIRAM|outp[3]~7\ = CARRY((!\bloco_operativo|IncIRAM|outp[2]~5\) # (!\bloco_operativo|RegI|estadoAtual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(3),
	datad => VCC,
	cin => \bloco_operativo|IncIRAM|outp[2]~5\,
	combout => \bloco_operativo|IncIRAM|outp[3]~6_combout\,
	cout => \bloco_operativo|IncIRAM|outp[3]~7\);

-- Location: LCCOMB_X14_Y21_N14
\bloco_operativo|IncIRAM|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~3_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|IncIRAM|outp[3]~6_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~3_combout\);

-- Location: LCCOMB_X13_Y21_N24
\bloco_operativo|IncIRAM|outp[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[4]~8_combout\ = (\bloco_operativo|RegI|estadoAtual\(4) & (\bloco_operativo|IncIRAM|outp[3]~7\ $ (GND))) # (!\bloco_operativo|RegI|estadoAtual\(4) & (!\bloco_operativo|IncIRAM|outp[3]~7\ & VCC))
-- \bloco_operativo|IncIRAM|outp[4]~9\ = CARRY((\bloco_operativo|RegI|estadoAtual\(4) & !\bloco_operativo|IncIRAM|outp[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(4),
	datad => VCC,
	cin => \bloco_operativo|IncIRAM|outp[3]~7\,
	combout => \bloco_operativo|IncIRAM|outp[4]~8_combout\,
	cout => \bloco_operativo|IncIRAM|outp[4]~9\);

-- Location: LCCOMB_X14_Y21_N0
\bloco_operativo|IncIRAM|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~4_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|IncIRAM|outp[4]~8_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~4_combout\);

-- Location: LCCOMB_X13_Y21_N26
\bloco_operativo|IncIRAM|outp[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[5]~10_combout\ = (\bloco_operativo|RegI|estadoAtual\(5) & (!\bloco_operativo|IncIRAM|outp[4]~9\)) # (!\bloco_operativo|RegI|estadoAtual\(5) & ((\bloco_operativo|IncIRAM|outp[4]~9\) # (GND)))
-- \bloco_operativo|IncIRAM|outp[5]~11\ = CARRY((!\bloco_operativo|IncIRAM|outp[4]~9\) # (!\bloco_operativo|RegI|estadoAtual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(5),
	datad => VCC,
	cin => \bloco_operativo|IncIRAM|outp[4]~9\,
	combout => \bloco_operativo|IncIRAM|outp[5]~10_combout\,
	cout => \bloco_operativo|IncIRAM|outp[5]~11\);

-- Location: LCCOMB_X14_Y21_N18
\bloco_operativo|IncIRAM|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~5_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL12~q\,
	datac => \bloco_operativo|IncIRAM|outp[5]~10_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~5_combout\);

-- Location: LCCOMB_X13_Y21_N28
\bloco_operativo|IncIRAM|outp[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[6]~12_combout\ = (\bloco_operativo|RegI|estadoAtual\(6) & (\bloco_operativo|IncIRAM|outp[5]~11\ $ (GND))) # (!\bloco_operativo|RegI|estadoAtual\(6) & (!\bloco_operativo|IncIRAM|outp[5]~11\ & VCC))
-- \bloco_operativo|IncIRAM|outp[6]~13\ = CARRY((\bloco_operativo|RegI|estadoAtual\(6) & !\bloco_operativo|IncIRAM|outp[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RegI|estadoAtual\(6),
	datad => VCC,
	cin => \bloco_operativo|IncIRAM|outp[5]~11\,
	combout => \bloco_operativo|IncIRAM|outp[6]~12_combout\,
	cout => \bloco_operativo|IncIRAM|outp[6]~13\);

-- Location: LCCOMB_X14_Y21_N16
\bloco_operativo|IncIRAM|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~6_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|IncIRAM|outp[6]~12_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~6_combout\);

-- Location: LCCOMB_X13_Y21_N30
\bloco_operativo|IncIRAM|outp[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|outp[7]~14_combout\ = \bloco_operativo|RegI|estadoAtual\(7) $ (\bloco_operativo|IncIRAM|outp[6]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bloco_operativo|RegI|estadoAtual\(7),
	cin => \bloco_operativo|IncIRAM|outp[6]~13\,
	combout => \bloco_operativo|IncIRAM|outp[7]~14_combout\);

-- Location: LCCOMB_X14_Y21_N22
\bloco_operativo|IncIRAM|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|IncIRAM|Add0~7_combout\ = (!\bloco_controle|estadoAtual.SL12~q\ & \bloco_operativo|IncIRAM|outp[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_operativo|IncIRAM|outp[7]~14_combout\,
	combout => \bloco_operativo|IncIRAM|Add0~7_combout\);

-- Location: M9K_X15_Y21_N0
\bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "blocoOperativo:bloco_operativo|MemoriaRAM:RAM|altsyncram:altsyncram_component|altsyncram_0vp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \bloco_controle|cmdSetBaralhoI~combout\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \bloco_operativo|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y21_N4
\bloco_operativo|CompBaralho|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompBaralho|Equal0~0_combout\ = (!\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(2) & (!\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(0) & (!\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(1) & 
-- !\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(2),
	datab => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(0),
	datac => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(1),
	datad => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \bloco_operativo|CompBaralho|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y21_N6
\bloco_operativo|CompBaralho|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_operativo|CompBaralho|Equal0~1_combout\ = (!\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(5) & (!\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(7) & (!\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(6) & 
-- !\bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(5),
	datab => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(7),
	datac => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(6),
	datad => \bloco_operativo|RAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \bloco_operativo|CompBaralho|Equal0~1_combout\);

-- Location: LCCOMB_X16_Y21_N16
\bloco_controle|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector7~1_combout\ = (\bloco_controle|Selector7~0_combout\) # ((\bloco_controle|estadoAtual.SL11~q\ & (\bloco_operativo|CompBaralho|Equal0~0_combout\ & \bloco_operativo|CompBaralho|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL11~q\,
	datab => \bloco_controle|Selector7~0_combout\,
	datac => \bloco_operativo|CompBaralho|Equal0~0_combout\,
	datad => \bloco_operativo|CompBaralho|Equal0~1_combout\,
	combout => \bloco_controle|Selector7~1_combout\);

-- Location: FF_X16_Y21_N17
\bloco_controle|estadoAtual.SL06\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector7~1_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL06~q\);

-- Location: LCCOMB_X16_Y21_N8
\bloco_controle|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector8~0_combout\ = (\bloco_controle|estadoAtual.SL06~q\) # ((\bloco_controle|estadoAtual.SL07~q\ & ((!\chipselect~input_o\) # (!\writee~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writee~input_o\,
	datab => \bloco_controle|estadoAtual.SL06~q\,
	datac => \bloco_controle|estadoAtual.SL07~q\,
	datad => \chipselect~input_o\,
	combout => \bloco_controle|Selector8~0_combout\);

-- Location: FF_X16_Y21_N9
\bloco_controle|estadoAtual.SL07\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector8~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL07~q\);

-- Location: LCCOMB_X16_Y21_N14
\bloco_controle|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector9~0_combout\ = (\writee~input_o\ & (\bloco_controle|estadoAtual.SL07~q\ & \chipselect~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writee~input_o\,
	datac => \bloco_controle|estadoAtual.SL07~q\,
	datad => \chipselect~input_o\,
	combout => \bloco_controle|Selector9~0_combout\);

-- Location: FF_X16_Y21_N15
\bloco_controle|estadoAtual.SL07a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector9~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL07a~q\);

-- Location: FF_X16_Y21_N31
\bloco_controle|estadoAtual.SL08\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bloco_controle|estadoAtual.SL07a~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL08~q\);

-- Location: LCCOMB_X16_Y21_N12
\bloco_controle|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector11~0_combout\ = (\bloco_controle|estadoAtual.SL08~q\) # ((\bloco_controle|estadoAtual.SL09~q\ & ((!\chipselect~input_o\) # (!\writee~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writee~input_o\,
	datab => \chipselect~input_o\,
	datac => \bloco_controle|estadoAtual.SL09~q\,
	datad => \bloco_controle|estadoAtual.SL08~q\,
	combout => \bloco_controle|Selector11~0_combout\);

-- Location: FF_X16_Y21_N13
\bloco_controle|estadoAtual.SL09\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector11~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL09~q\);

-- Location: LCCOMB_X16_Y21_N2
\bloco_controle|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector12~0_combout\ = (\bloco_controle|estadoAtual.SL09~q\ & (\chipselect~input_o\ & \writee~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL09~q\,
	datab => \chipselect~input_o\,
	datac => \writee~input_o\,
	combout => \bloco_controle|Selector12~0_combout\);

-- Location: FF_X16_Y21_N3
\bloco_controle|estadoAtual.SL09a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector12~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL09a~q\);

-- Location: LCCOMB_X16_Y21_N10
\bloco_controle|estadoAtual.SL10~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL10~feeder_combout\ = \bloco_controle|estadoAtual.SL09a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL09a~q\,
	combout => \bloco_controle|estadoAtual.SL10~feeder_combout\);

-- Location: FF_X16_Y21_N11
\bloco_controle|estadoAtual.SL10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL10~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL10~q\);

-- Location: LCCOMB_X16_Y21_N22
\bloco_controle|estadoAtual.SL11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL11~feeder_combout\ = \bloco_controle|estadoAtual.SL10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL10~q\,
	combout => \bloco_controle|estadoAtual.SL11~feeder_combout\);

-- Location: FF_X16_Y21_N23
\bloco_controle|estadoAtual.SL11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL11~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL11~q\);

-- Location: LCCOMB_X16_Y21_N0
\bloco_controle|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector15~0_combout\ = (\bloco_controle|estadoAtual.SL11~q\ & ((!\bloco_operativo|CompBaralho|Equal0~1_combout\) # (!\bloco_operativo|CompBaralho|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL11~q\,
	datac => \bloco_operativo|CompBaralho|Equal0~0_combout\,
	datad => \bloco_operativo|CompBaralho|Equal0~1_combout\,
	combout => \bloco_controle|Selector15~0_combout\);

-- Location: FF_X16_Y21_N1
\bloco_controle|estadoAtual.SL12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector15~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL12~q\);

-- Location: LCCOMB_X12_Y20_N6
\bloco_controle|estadoAtual.SL12a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL12a~feeder_combout\ = \bloco_controle|estadoAtual.SL12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL12~q\,
	combout => \bloco_controle|estadoAtual.SL12a~feeder_combout\);

-- Location: FF_X12_Y20_N7
\bloco_controle|estadoAtual.SL12a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL12a~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL12a~q\);

-- Location: LCCOMB_X12_Y20_N2
\bloco_controle|estadoAtual.SL13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL13~feeder_combout\ = \bloco_controle|estadoAtual.SL12a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL12a~q\,
	combout => \bloco_controle|estadoAtual.SL13~feeder_combout\);

-- Location: FF_X12_Y20_N3
\bloco_controle|estadoAtual.SL13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL13~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL13~q\);

-- Location: LCCOMB_X12_Y20_N16
\bloco_controle|estadoAtual.SL14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL14~feeder_combout\ = \bloco_controle|estadoAtual.SL13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL13~q\,
	combout => \bloco_controle|estadoAtual.SL14~feeder_combout\);

-- Location: FF_X12_Y20_N17
\bloco_controle|estadoAtual.SL14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL14~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL14~q\);

-- Location: LCCOMB_X12_Y20_N18
\bloco_controle|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector22~0_combout\ = (\bloco_controle|estadoAtual.SL14~q\ & (!\bloco_operativo|CompPontos21|LessThan0~0_combout\ & \bloco_operativo|CompPontos21|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|estadoAtual.SL14~q\,
	datac => \bloco_operativo|CompPontos21|LessThan0~0_combout\,
	datad => \bloco_operativo|CompPontos21|LessThan0~1_combout\,
	combout => \bloco_controle|Selector22~0_combout\);

-- Location: FF_X12_Y20_N19
\bloco_controle|estadoAtual.SL18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector22~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL18~q\);

-- Location: LCCOMB_X12_Y20_N30
\bloco_controle|estadoAtual.SL19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL19~feeder_combout\ = \bloco_controle|estadoAtual.SL18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL18~q\,
	combout => \bloco_controle|estadoAtual.SL19~feeder_combout\);

-- Location: FF_X12_Y20_N31
\bloco_controle|estadoAtual.SL19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL19~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL19~q\);

-- Location: LCCOMB_X12_Y20_N24
\bloco_controle|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector24~0_combout\ = (\bloco_controle|estadoAtual.SL19~q\ & (((\bloco_operativo|CompPontos16|LessThan0~0_combout\ & \bloco_operativo|RegPontos|estadoAtual\(4))) # (!\bloco_operativo|CompPontos21|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL19~q\,
	datab => \bloco_operativo|CompPontos16|LessThan0~0_combout\,
	datac => \bloco_operativo|RegPontos|estadoAtual\(4),
	datad => \bloco_operativo|CompPontos21|LessThan0~1_combout\,
	combout => \bloco_controle|Selector24~0_combout\);

-- Location: FF_X12_Y20_N25
\bloco_controle|estadoAtual.SL20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector24~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL20~q\);

-- Location: LCCOMB_X12_Y20_N26
\bloco_controle|estadoAtual.SL21~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL21~feeder_combout\ = \bloco_controle|estadoAtual.SL20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL20~q\,
	combout => \bloco_controle|estadoAtual.SL21~feeder_combout\);

-- Location: FF_X12_Y20_N27
\bloco_controle|estadoAtual.SL21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL21~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL21~q\);

-- Location: LCCOMB_X12_Y20_N10
\bloco_controle|estadoAtual.SL16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL16~feeder_combout\ = \bloco_controle|estadoAtual.SL15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL15~q\,
	combout => \bloco_controle|estadoAtual.SL16~feeder_combout\);

-- Location: FF_X12_Y20_N11
\bloco_controle|estadoAtual.SL16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL16~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL16~q\);

-- Location: LCCOMB_X12_Y20_N8
\bloco_controle|estadoAtual.SL17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|estadoAtual.SL17~feeder_combout\ = \bloco_controle|estadoAtual.SL16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bloco_controle|estadoAtual.SL16~q\,
	combout => \bloco_controle|estadoAtual.SL17~feeder_combout\);

-- Location: FF_X12_Y20_N9
\bloco_controle|estadoAtual.SL17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|estadoAtual.SL17~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL17~q\);

-- Location: LCCOMB_X16_Y21_N24
\bloco_controle|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector29~0_combout\ = (\bloco_controle|estadoAtual.SL24~q\ & !\addCarta~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bloco_controle|estadoAtual.SL24~q\,
	datad => \addCarta~input_o\,
	combout => \bloco_controle|Selector29~0_combout\);

-- Location: FF_X16_Y21_N25
\bloco_controle|estadoAtual.SL25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector29~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL25~q\);

-- Location: LCCOMB_X12_Y20_N4
\bloco_controle|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|Selector31~0_combout\ = (\bloco_controle|estadoAtual.SL21~q\) # ((\bloco_controle|estadoAtual.SL17~q\) # (\bloco_controle|estadoAtual.SL25~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL21~q\,
	datac => \bloco_controle|estadoAtual.SL17~q\,
	datad => \bloco_controle|estadoAtual.SL25~q\,
	combout => \bloco_controle|Selector31~0_combout\);

-- Location: FF_X12_Y20_N5
\bloco_controle|estadoAtual.SL27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bloco_controle|Selector31~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bloco_controle|estadoAtual.SL27~q\);

-- Location: LCCOMB_X16_Y21_N28
\bloco_controle|WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr30~0_combout\ = (\bloco_controle|estadoAtual.SL09~q\) # ((\bloco_controle|estadoAtual.SL07~q\) # ((\bloco_controle|estadoAtual.SL07a~q\) # (\bloco_controle|estadoAtual.SL09a~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bloco_controle|estadoAtual.SL09~q\,
	datab => \bloco_controle|estadoAtual.SL07~q\,
	datac => \bloco_controle|estadoAtual.SL07a~q\,
	datad => \bloco_controle|estadoAtual.SL09a~q\,
	combout => \bloco_controle|WideOr30~0_combout\);

-- Location: LCCOMB_X12_Y20_N0
\bloco_controle|WideOr30\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|WideOr30~combout\ = (\bloco_controle|estadoAtual.SL27~q\) # ((\bloco_controle|estadoAtual.SL27a~q\) # (\bloco_controle|WideOr30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|estadoAtual.SL27~q\,
	datac => \bloco_controle|estadoAtual.SL27a~q\,
	datad => \bloco_controle|WideOr30~0_combout\,
	combout => \bloco_controle|WideOr30~combout\);

-- Location: LCCOMB_X16_Y21_N18
\bloco_controle|cmdMultAddress\ : cycloneive_lcell_comb
-- Equation(s):
-- \bloco_controle|cmdMultAddress~combout\ = (\bloco_controle|estadoAtual.SL12~q\) # (\bloco_controle|estadoAtual.SL10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bloco_controle|estadoAtual.SL12~q\,
	datad => \bloco_controle|estadoAtual.SL10~q\,
	combout => \bloco_controle|cmdMultAddress~combout\);

-- Location: IOIBUF_X7_Y0_N15
\readd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readd,
	o => \readd~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X32_Y24_N22
\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

ww_interrupt <= \interrupt~output_o\;

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

\ww_testEstadoAtual.SL00\ <= \testEstadoAtual.SL00~output_o\;

\ww_testEstadoAtual.SL01\ <= \testEstadoAtual.SL01~output_o\;

\ww_testEstadoAtual.SL01a\ <= \testEstadoAtual.SL01a~output_o\;

\ww_testEstadoAtual.SL02\ <= \testEstadoAtual.SL02~output_o\;

\ww_testEstadoAtual.SL03\ <= \testEstadoAtual.SL03~output_o\;

\ww_testEstadoAtual.SL04\ <= \testEstadoAtual.SL04~output_o\;

\ww_testEstadoAtual.SL05\ <= \testEstadoAtual.SL05~output_o\;

\ww_testEstadoAtual.SL06\ <= \testEstadoAtual.SL06~output_o\;

\ww_testEstadoAtual.SL07\ <= \testEstadoAtual.SL07~output_o\;

\ww_testEstadoAtual.SL07a\ <= \testEstadoAtual.SL07a~output_o\;

\ww_testEstadoAtual.SL08\ <= \testEstadoAtual.SL08~output_o\;

\ww_testEstadoAtual.SL09\ <= \testEstadoAtual.SL09~output_o\;

\ww_testEstadoAtual.SL09a\ <= \testEstadoAtual.SL09a~output_o\;

\ww_testEstadoAtual.SL10\ <= \testEstadoAtual.SL10~output_o\;

\ww_testEstadoAtual.SL11\ <= \testEstadoAtual.SL11~output_o\;

\ww_testEstadoAtual.SL12\ <= \testEstadoAtual.SL12~output_o\;

\ww_testEstadoAtual.SL12a\ <= \testEstadoAtual.SL12a~output_o\;

\ww_testEstadoAtual.SL13\ <= \testEstadoAtual.SL13~output_o\;

\ww_testEstadoAtual.SL14\ <= \testEstadoAtual.SL14~output_o\;

\ww_testEstadoAtual.SL15\ <= \testEstadoAtual.SL15~output_o\;

\ww_testEstadoAtual.SL16\ <= \testEstadoAtual.SL16~output_o\;

\ww_testEstadoAtual.SL17\ <= \testEstadoAtual.SL17~output_o\;

\ww_testEstadoAtual.SL18\ <= \testEstadoAtual.SL18~output_o\;

\ww_testEstadoAtual.SL19\ <= \testEstadoAtual.SL19~output_o\;

\ww_testEstadoAtual.SL20\ <= \testEstadoAtual.SL20~output_o\;

\ww_testEstadoAtual.SL21\ <= \testEstadoAtual.SL21~output_o\;

\ww_testEstadoAtual.SL22\ <= \testEstadoAtual.SL22~output_o\;

\ww_testEstadoAtual.SL23\ <= \testEstadoAtual.SL23~output_o\;

\ww_testEstadoAtual.SL24\ <= \testEstadoAtual.SL24~output_o\;

\ww_testEstadoAtual.SL25\ <= \testEstadoAtual.SL25~output_o\;

\ww_testEstadoAtual.SL26\ <= \testEstadoAtual.SL26~output_o\;

\ww_testEstadoAtual.SL27\ <= \testEstadoAtual.SL27~output_o\;

\ww_testEstadoAtual.SL27a\ <= \testEstadoAtual.SL27a~output_o\;

\ww_testEstadoAtual.SL28\ <= \testEstadoAtual.SL28~output_o\;

ww_tcmdSetI <= \tcmdSetI~output_o\;

ww_tcmdResetI <= \tcmdResetI~output_o\;

ww_tcmdSetPontos <= \tcmdSetPontos~output_o\;

ww_tcmdResetPontos <= \tcmdResetPontos~output_o\;

ww_tcmdMultAddress <= \tcmdMultAddress~output_o\;

ww_tcmdMultBaralho <= \tcmdMultBaralho~output_o\;

ww_tcmdSetCarta <= \tcmdSetCarta~output_o\;

ww_tcmdResetCarta <= \tcmdResetCarta~output_o\;

ww_tcmdSetBaralhoI <= \tcmdSetBaralhoI~output_o\;
END structure;


