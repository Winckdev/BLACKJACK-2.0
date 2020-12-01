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

-- DATE "11/30/2020 15:16:18"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	blocoOperativo IS
    PORT (
	clk : IN std_logic;
	reset_req : IN std_logic;
	address : IN std_logic_vector(7 DOWNTO 0);
	writedata : IN std_logic_vector(7 DOWNTO 0);
	addCarta : IN std_logic;
	readdata : BUFFER std_logic_vector(7 DOWNTO 0);
	cmdSetI : IN std_logic;
	cmdResetI : IN std_logic;
	cmdSetPontos : IN std_logic;
	cmdResetPontos : IN std_logic;
	cmdMultAddress : IN std_logic;
	cmdSetCarta : IN std_logic;
	cmdResetCarta : IN std_logic;
	cmdSetBaralhoI : IN std_logic;
	cmdMultBaralho : IN std_logic;
	sttPontosMaiorDezesseis : BUFFER std_logic;
	sttPontosMaiorVinte : BUFFER std_logic;
	sttCompBaralho : BUFFER std_logic;
	sttIMenor13 : BUFFER std_logic;
	sttAddCarta : BUFFER std_logic
	);
END blocoOperativo;

-- Design Ports Information
-- reset_req	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addCarta	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttPontosMaiorDezesseis	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttPontosMaiorVinte	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttCompBaralho	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttIMenor13	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttAddCarta	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdResetPontos	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetPontos	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetBaralhoI	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdMultBaralho	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdMultAddress	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetI	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdResetI	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdResetCarta	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetCarta	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF blocoOperativo IS
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
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addCarta : std_logic;
SIGNAL ww_readdata : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cmdSetI : std_logic;
SIGNAL ww_cmdResetI : std_logic;
SIGNAL ww_cmdSetPontos : std_logic;
SIGNAL ww_cmdResetPontos : std_logic;
SIGNAL ww_cmdMultAddress : std_logic;
SIGNAL ww_cmdSetCarta : std_logic;
SIGNAL ww_cmdResetCarta : std_logic;
SIGNAL ww_cmdSetBaralhoI : std_logic;
SIGNAL ww_cmdMultBaralho : std_logic;
SIGNAL ww_sttPontosMaiorDezesseis : std_logic;
SIGNAL ww_sttPontosMaiorVinte : std_logic;
SIGNAL ww_sttCompBaralho : std_logic;
SIGNAL ww_sttIMenor13 : std_logic;
SIGNAL ww_sttAddCarta : std_logic;
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \cmdResetI~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmdResetCarta~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmdResetPontos~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset_req~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \addCarta~input_o\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \sttPontosMaiorDezesseis~output_o\ : std_logic;
SIGNAL \sttPontosMaiorVinte~output_o\ : std_logic;
SIGNAL \sttCompBaralho~output_o\ : std_logic;
SIGNAL \sttIMenor13~output_o\ : std_logic;
SIGNAL \sttAddCarta~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \cmdResetCarta~input_o\ : std_logic;
SIGNAL \cmdResetCarta~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmdSetCarta~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[0]~8_combout\ : std_logic;
SIGNAL \cmdResetPontos~input_o\ : std_logic;
SIGNAL \cmdResetPontos~inputclkctrl_outclk\ : std_logic;
SIGNAL \cmdSetPontos~input_o\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[0]~9\ : std_logic;
SIGNAL \RegPontos|estadoAtual[1]~10_combout\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[1]~11\ : std_logic;
SIGNAL \RegPontos|estadoAtual[2]~12_combout\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[2]~13\ : std_logic;
SIGNAL \RegPontos|estadoAtual[3]~14_combout\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[3]~15\ : std_logic;
SIGNAL \RegPontos|estadoAtual[4]~16_combout\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[4]~17\ : std_logic;
SIGNAL \RegPontos|estadoAtual[5]~18_combout\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[5]~19\ : std_logic;
SIGNAL \RegPontos|estadoAtual[6]~20_combout\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \RegPontos|estadoAtual[6]~21\ : std_logic;
SIGNAL \RegPontos|estadoAtual[7]~22_combout\ : std_logic;
SIGNAL \CompPontos16|LessThan0~0_combout\ : std_logic;
SIGNAL \CompPontos16|LessThan0~1_combout\ : std_logic;
SIGNAL \CompPontos16|LessThan0~2_combout\ : std_logic;
SIGNAL \CompPontos21|LessThan0~2_combout\ : std_logic;
SIGNAL \CompPontos21|LessThan0~3_combout\ : std_logic;
SIGNAL \cmdSetBaralhoI~input_o\ : std_logic;
SIGNAL \cmdMultBaralho~input_o\ : std_logic;
SIGNAL \cmdSetI~input_o\ : std_logic;
SIGNAL \RegI|estadoAtual[0]~7_combout\ : std_logic;
SIGNAL \cmdResetI~input_o\ : std_logic;
SIGNAL \cmdResetI~inputclkctrl_outclk\ : std_logic;
SIGNAL \IncIRAM|outp[0]~0_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~0_combout\ : std_logic;
SIGNAL \cmdMultAddress~input_o\ : std_logic;
SIGNAL \DecCarta|Add0~0_combout\ : std_logic;
SIGNAL \DecCarta|Add0~2_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[1]~8_combout\ : std_logic;
SIGNAL \DecCarta|Add0~1\ : std_logic;
SIGNAL \DecCarta|Add0~3_combout\ : std_logic;
SIGNAL \DecCarta|Add0~5_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[1]~9\ : std_logic;
SIGNAL \RegI|estadoAtual[2]~10_combout\ : std_logic;
SIGNAL \DecCarta|Add0~4\ : std_logic;
SIGNAL \DecCarta|Add0~6_combout\ : std_logic;
SIGNAL \DecCarta|Add0~8_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[2]~11\ : std_logic;
SIGNAL \RegI|estadoAtual[3]~12_combout\ : std_logic;
SIGNAL \DecCarta|Add0~7\ : std_logic;
SIGNAL \DecCarta|Add0~9_combout\ : std_logic;
SIGNAL \DecCarta|Add0~11_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[3]~13\ : std_logic;
SIGNAL \RegI|estadoAtual[4]~14_combout\ : std_logic;
SIGNAL \DecCarta|Add0~10\ : std_logic;
SIGNAL \DecCarta|Add0~12_combout\ : std_logic;
SIGNAL \DecCarta|Add0~14_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[4]~15\ : std_logic;
SIGNAL \RegI|estadoAtual[5]~16_combout\ : std_logic;
SIGNAL \DecCarta|Add0~13\ : std_logic;
SIGNAL \DecCarta|Add0~15_combout\ : std_logic;
SIGNAL \DecCarta|Add0~17_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[5]~17\ : std_logic;
SIGNAL \RegI|estadoAtual[6]~18_combout\ : std_logic;
SIGNAL \DecCarta|Add0~16\ : std_logic;
SIGNAL \DecCarta|Add0~18_combout\ : std_logic;
SIGNAL \DecCarta|Add0~20_combout\ : std_logic;
SIGNAL \RegI|estadoAtual[6]~19\ : std_logic;
SIGNAL \RegI|estadoAtual[7]~20_combout\ : std_logic;
SIGNAL \DecCarta|Add0~19\ : std_logic;
SIGNAL \DecCarta|Add0~21_combout\ : std_logic;
SIGNAL \DecCarta|Add0~23_combout\ : std_logic;
SIGNAL \IncIRAM|outp[0]~1\ : std_logic;
SIGNAL \IncIRAM|outp[1]~2_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~1_combout\ : std_logic;
SIGNAL \IncIRAM|outp[1]~3\ : std_logic;
SIGNAL \IncIRAM|outp[2]~4_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~2_combout\ : std_logic;
SIGNAL \IncIRAM|outp[2]~5\ : std_logic;
SIGNAL \IncIRAM|outp[3]~6_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~3_combout\ : std_logic;
SIGNAL \IncIRAM|outp[3]~7\ : std_logic;
SIGNAL \IncIRAM|outp[4]~8_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~4_combout\ : std_logic;
SIGNAL \IncIRAM|outp[4]~9\ : std_logic;
SIGNAL \IncIRAM|outp[5]~10_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~5_combout\ : std_logic;
SIGNAL \IncIRAM|outp[5]~11\ : std_logic;
SIGNAL \IncIRAM|outp[6]~12_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~6_combout\ : std_logic;
SIGNAL \IncIRAM|outp[6]~13\ : std_logic;
SIGNAL \IncIRAM|outp[7]~14_combout\ : std_logic;
SIGNAL \IncIRAM|Add0~7_combout\ : std_logic;
SIGNAL \CompBaralho|Equal0~1_combout\ : std_logic;
SIGNAL \CompBaralho|Equal0~0_combout\ : std_logic;
SIGNAL \CompBaralho|Equal0~2_combout\ : std_logic;
SIGNAL \CompIMenor13|LessThan0~0_combout\ : std_logic;
SIGNAL \CompIMenor13|LessThan0~1_combout\ : std_logic;
SIGNAL \CompIMenor13|LessThan0~2_combout\ : std_logic;
SIGNAL \RegPontos|estadoAtual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegI|estadoAtual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegCarta|estadoAtual\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_cmdResetPontos~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cmdResetCarta~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_cmdResetI~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_req <= reset_req;
ww_address <= address;
ww_writedata <= writedata;
ww_addCarta <= addCarta;
readdata <= ww_readdata;
ww_cmdSetI <= cmdSetI;
ww_cmdResetI <= cmdResetI;
ww_cmdSetPontos <= cmdSetPontos;
ww_cmdResetPontos <= cmdResetPontos;
ww_cmdMultAddress <= cmdMultAddress;
ww_cmdSetCarta <= cmdSetCarta;
ww_cmdResetCarta <= cmdResetCarta;
ww_cmdSetBaralhoI <= cmdSetBaralhoI;
ww_cmdMultBaralho <= cmdMultBaralho;
sttPontosMaiorDezesseis <= ww_sttPontosMaiorDezesseis;
sttPontosMaiorVinte <= ww_sttPontosMaiorVinte;
sttCompBaralho <= ww_sttCompBaralho;
sttIMenor13 <= ww_sttIMenor13;
sttAddCarta <= ww_sttAddCarta;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \IncIRAM|Add0~7_combout\ & \IncIRAM|Add0~6_combout\ & \IncIRAM|Add0~5_combout\ & \IncIRAM|Add0~4_combout\ & 
\IncIRAM|Add0~3_combout\ & \IncIRAM|Add0~2_combout\ & \IncIRAM|Add0~1_combout\ & \IncIRAM|Add0~0_combout\);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DecCarta|Add0~23_combout\ & \DecCarta|Add0~20_combout\ & \DecCarta|Add0~17_combout\ & \DecCarta|Add0~14_combout\ & \DecCarta|Add0~11_combout\ & \DecCarta|Add0~8_combout\ & 
\DecCarta|Add0~5_combout\ & \DecCarta|Add0~2_combout\);

\RAM|altsyncram_component|auto_generated|q_a\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_a\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_a\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|altsyncram_component|auto_generated|q_a\(3) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM|altsyncram_component|auto_generated|q_a\(4) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM|altsyncram_component|auto_generated|q_a\(5) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM|altsyncram_component|auto_generated|q_a\(6) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM|altsyncram_component|auto_generated|q_a\(7) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\cmdResetI~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cmdResetI~input_o\);

\cmdResetCarta~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cmdResetCarta~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\cmdResetPontos~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cmdResetPontos~input_o\);
\ALT_INV_cmdResetPontos~inputclkctrl_outclk\ <= NOT \cmdResetPontos~inputclkctrl_outclk\;
\ALT_INV_cmdResetCarta~inputclkctrl_outclk\ <= NOT \cmdResetCarta~inputclkctrl_outclk\;
\ALT_INV_cmdResetI~inputclkctrl_outclk\ <= NOT \cmdResetI~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(0),
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(1),
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(2),
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(3),
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(4),
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(5),
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(6),
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RegPontos|estadoAtual\(7),
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\sttPontosMaiorDezesseis~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CompPontos16|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \sttPontosMaiorDezesseis~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\sttPontosMaiorVinte~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CompPontos21|LessThan0~3_combout\,
	devoe => ww_devoe,
	o => \sttPontosMaiorVinte~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sttCompBaralho~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CompBaralho|Equal0~2_combout\,
	devoe => ww_devoe,
	o => \sttCompBaralho~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sttIMenor13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CompIMenor13|LessThan0~2_combout\,
	devoe => ww_devoe,
	o => \sttIMenor13~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\sttAddCarta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sttAddCarta~output_o\);

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

-- Location: IOIBUF_X30_Y0_N8
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\cmdResetCarta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdResetCarta,
	o => \cmdResetCarta~input_o\);

-- Location: CLKCTRL_G4
\cmdResetCarta~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cmdResetCarta~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cmdResetCarta~inputclkctrl_outclk\);

-- Location: IOIBUF_X13_Y0_N15
\cmdSetCarta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdSetCarta,
	o => \cmdSetCarta~input_o\);

-- Location: FF_X16_Y3_N25
\RegCarta|estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[0]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(0));

-- Location: LCCOMB_X17_Y3_N12
\RegPontos|estadoAtual[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[0]~8_combout\ = (\RegPontos|estadoAtual\(0) & (\RegCarta|estadoAtual\(0) $ (VCC))) # (!\RegPontos|estadoAtual\(0) & (\RegCarta|estadoAtual\(0) & VCC))
-- \RegPontos|estadoAtual[0]~9\ = CARRY((\RegPontos|estadoAtual\(0) & \RegCarta|estadoAtual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(0),
	datab => \RegCarta|estadoAtual\(0),
	datad => VCC,
	combout => \RegPontos|estadoAtual[0]~8_combout\,
	cout => \RegPontos|estadoAtual[0]~9\);

-- Location: IOIBUF_X34_Y12_N15
\cmdResetPontos~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdResetPontos,
	o => \cmdResetPontos~input_o\);

-- Location: CLKCTRL_G9
\cmdResetPontos~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cmdResetPontos~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cmdResetPontos~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y0_N1
\cmdSetPontos~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdSetPontos,
	o => \cmdSetPontos~input_o\);

-- Location: FF_X17_Y3_N13
\RegPontos|estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[0]~8_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(0));

-- Location: IOIBUF_X28_Y0_N1
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: FF_X16_Y3_N31
\RegCarta|estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[1]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(1));

-- Location: LCCOMB_X17_Y3_N14
\RegPontos|estadoAtual[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[1]~10_combout\ = (\RegPontos|estadoAtual\(1) & ((\RegCarta|estadoAtual\(1) & (\RegPontos|estadoAtual[0]~9\ & VCC)) # (!\RegCarta|estadoAtual\(1) & (!\RegPontos|estadoAtual[0]~9\)))) # (!\RegPontos|estadoAtual\(1) & 
-- ((\RegCarta|estadoAtual\(1) & (!\RegPontos|estadoAtual[0]~9\)) # (!\RegCarta|estadoAtual\(1) & ((\RegPontos|estadoAtual[0]~9\) # (GND)))))
-- \RegPontos|estadoAtual[1]~11\ = CARRY((\RegPontos|estadoAtual\(1) & (!\RegCarta|estadoAtual\(1) & !\RegPontos|estadoAtual[0]~9\)) # (!\RegPontos|estadoAtual\(1) & ((!\RegPontos|estadoAtual[0]~9\) # (!\RegCarta|estadoAtual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(1),
	datab => \RegCarta|estadoAtual\(1),
	datad => VCC,
	cin => \RegPontos|estadoAtual[0]~9\,
	combout => \RegPontos|estadoAtual[1]~10_combout\,
	cout => \RegPontos|estadoAtual[1]~11\);

-- Location: FF_X17_Y3_N15
\RegPontos|estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[1]~10_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(1));

-- Location: IOIBUF_X30_Y0_N1
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: FF_X16_Y3_N21
\RegCarta|estadoAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[2]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(2));

-- Location: LCCOMB_X17_Y3_N16
\RegPontos|estadoAtual[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[2]~12_combout\ = ((\RegPontos|estadoAtual\(2) $ (\RegCarta|estadoAtual\(2) $ (!\RegPontos|estadoAtual[1]~11\)))) # (GND)
-- \RegPontos|estadoAtual[2]~13\ = CARRY((\RegPontos|estadoAtual\(2) & ((\RegCarta|estadoAtual\(2)) # (!\RegPontos|estadoAtual[1]~11\))) # (!\RegPontos|estadoAtual\(2) & (\RegCarta|estadoAtual\(2) & !\RegPontos|estadoAtual[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(2),
	datab => \RegCarta|estadoAtual\(2),
	datad => VCC,
	cin => \RegPontos|estadoAtual[1]~11\,
	combout => \RegPontos|estadoAtual[2]~12_combout\,
	cout => \RegPontos|estadoAtual[2]~13\);

-- Location: FF_X17_Y3_N17
\RegPontos|estadoAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[2]~12_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(2));

-- Location: IOIBUF_X16_Y0_N1
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: FF_X16_Y3_N3
\RegCarta|estadoAtual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[3]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(3));

-- Location: LCCOMB_X17_Y3_N18
\RegPontos|estadoAtual[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[3]~14_combout\ = (\RegCarta|estadoAtual\(3) & ((\RegPontos|estadoAtual\(3) & (\RegPontos|estadoAtual[2]~13\ & VCC)) # (!\RegPontos|estadoAtual\(3) & (!\RegPontos|estadoAtual[2]~13\)))) # (!\RegCarta|estadoAtual\(3) & 
-- ((\RegPontos|estadoAtual\(3) & (!\RegPontos|estadoAtual[2]~13\)) # (!\RegPontos|estadoAtual\(3) & ((\RegPontos|estadoAtual[2]~13\) # (GND)))))
-- \RegPontos|estadoAtual[3]~15\ = CARRY((\RegCarta|estadoAtual\(3) & (!\RegPontos|estadoAtual\(3) & !\RegPontos|estadoAtual[2]~13\)) # (!\RegCarta|estadoAtual\(3) & ((!\RegPontos|estadoAtual[2]~13\) # (!\RegPontos|estadoAtual\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegCarta|estadoAtual\(3),
	datab => \RegPontos|estadoAtual\(3),
	datad => VCC,
	cin => \RegPontos|estadoAtual[2]~13\,
	combout => \RegPontos|estadoAtual[3]~14_combout\,
	cout => \RegPontos|estadoAtual[3]~15\);

-- Location: FF_X17_Y3_N19
\RegPontos|estadoAtual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[3]~14_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(3));

-- Location: IOIBUF_X16_Y0_N22
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: FF_X16_Y3_N29
\RegCarta|estadoAtual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[4]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(4));

-- Location: LCCOMB_X17_Y3_N20
\RegPontos|estadoAtual[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[4]~16_combout\ = ((\RegPontos|estadoAtual\(4) $ (\RegCarta|estadoAtual\(4) $ (!\RegPontos|estadoAtual[3]~15\)))) # (GND)
-- \RegPontos|estadoAtual[4]~17\ = CARRY((\RegPontos|estadoAtual\(4) & ((\RegCarta|estadoAtual\(4)) # (!\RegPontos|estadoAtual[3]~15\))) # (!\RegPontos|estadoAtual\(4) & (\RegCarta|estadoAtual\(4) & !\RegPontos|estadoAtual[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(4),
	datab => \RegCarta|estadoAtual\(4),
	datad => VCC,
	cin => \RegPontos|estadoAtual[3]~15\,
	combout => \RegPontos|estadoAtual[4]~16_combout\,
	cout => \RegPontos|estadoAtual[4]~17\);

-- Location: FF_X17_Y3_N21
\RegPontos|estadoAtual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[4]~16_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(4));

-- Location: IOIBUF_X23_Y0_N8
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: FF_X16_Y3_N23
\RegCarta|estadoAtual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[5]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(5));

-- Location: LCCOMB_X17_Y3_N22
\RegPontos|estadoAtual[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[5]~18_combout\ = (\RegPontos|estadoAtual\(5) & ((\RegCarta|estadoAtual\(5) & (\RegPontos|estadoAtual[4]~17\ & VCC)) # (!\RegCarta|estadoAtual\(5) & (!\RegPontos|estadoAtual[4]~17\)))) # (!\RegPontos|estadoAtual\(5) & 
-- ((\RegCarta|estadoAtual\(5) & (!\RegPontos|estadoAtual[4]~17\)) # (!\RegCarta|estadoAtual\(5) & ((\RegPontos|estadoAtual[4]~17\) # (GND)))))
-- \RegPontos|estadoAtual[5]~19\ = CARRY((\RegPontos|estadoAtual\(5) & (!\RegCarta|estadoAtual\(5) & !\RegPontos|estadoAtual[4]~17\)) # (!\RegPontos|estadoAtual\(5) & ((!\RegPontos|estadoAtual[4]~17\) # (!\RegCarta|estadoAtual\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(5),
	datab => \RegCarta|estadoAtual\(5),
	datad => VCC,
	cin => \RegPontos|estadoAtual[4]~17\,
	combout => \RegPontos|estadoAtual[5]~18_combout\,
	cout => \RegPontos|estadoAtual[5]~19\);

-- Location: FF_X17_Y3_N23
\RegPontos|estadoAtual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[5]~18_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(5));

-- Location: IOIBUF_X13_Y0_N1
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: FF_X16_Y3_N1
\RegCarta|estadoAtual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[6]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(6));

-- Location: LCCOMB_X17_Y3_N24
\RegPontos|estadoAtual[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[6]~20_combout\ = ((\RegCarta|estadoAtual\(6) $ (\RegPontos|estadoAtual\(6) $ (!\RegPontos|estadoAtual[5]~19\)))) # (GND)
-- \RegPontos|estadoAtual[6]~21\ = CARRY((\RegCarta|estadoAtual\(6) & ((\RegPontos|estadoAtual\(6)) # (!\RegPontos|estadoAtual[5]~19\))) # (!\RegCarta|estadoAtual\(6) & (\RegPontos|estadoAtual\(6) & !\RegPontos|estadoAtual[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegCarta|estadoAtual\(6),
	datab => \RegPontos|estadoAtual\(6),
	datad => VCC,
	cin => \RegPontos|estadoAtual[5]~19\,
	combout => \RegPontos|estadoAtual[6]~20_combout\,
	cout => \RegPontos|estadoAtual[6]~21\);

-- Location: FF_X17_Y3_N25
\RegPontos|estadoAtual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[6]~20_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(6));

-- Location: IOIBUF_X16_Y0_N8
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: FF_X16_Y3_N19
\RegCarta|estadoAtual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \writedata[7]~input_o\,
	clrn => \ALT_INV_cmdResetCarta~inputclkctrl_outclk\,
	sload => VCC,
	ena => \cmdSetCarta~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegCarta|estadoAtual\(7));

-- Location: LCCOMB_X17_Y3_N26
\RegPontos|estadoAtual[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegPontos|estadoAtual[7]~22_combout\ = \RegPontos|estadoAtual\(7) $ (\RegPontos|estadoAtual[6]~21\ $ (\RegCarta|estadoAtual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(7),
	datad => \RegCarta|estadoAtual\(7),
	cin => \RegPontos|estadoAtual[6]~21\,
	combout => \RegPontos|estadoAtual[7]~22_combout\);

-- Location: FF_X17_Y3_N27
\RegPontos|estadoAtual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegPontos|estadoAtual[7]~22_combout\,
	clrn => \ALT_INV_cmdResetPontos~inputclkctrl_outclk\,
	ena => \cmdSetPontos~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegPontos|estadoAtual\(7));

-- Location: LCCOMB_X17_Y3_N28
\CompPontos16|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompPontos16|LessThan0~0_combout\ = (\RegPontos|estadoAtual\(0)) # ((\RegPontos|estadoAtual\(3)) # ((\RegPontos|estadoAtual\(1)) # (\RegPontos|estadoAtual\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(0),
	datab => \RegPontos|estadoAtual\(3),
	datac => \RegPontos|estadoAtual\(1),
	datad => \RegPontos|estadoAtual\(2),
	combout => \CompPontos16|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y3_N30
\CompPontos16|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompPontos16|LessThan0~1_combout\ = (!\RegPontos|estadoAtual\(5) & (!\RegPontos|estadoAtual\(7) & !\RegPontos|estadoAtual\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(5),
	datac => \RegPontos|estadoAtual\(7),
	datad => \RegPontos|estadoAtual\(6),
	combout => \CompPontos16|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y3_N4
\CompPontos16|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompPontos16|LessThan0~2_combout\ = ((\CompPontos16|LessThan0~0_combout\ & \RegPontos|estadoAtual\(4))) # (!\CompPontos16|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CompPontos16|LessThan0~0_combout\,
	datac => \CompPontos16|LessThan0~1_combout\,
	datad => \RegPontos|estadoAtual\(4),
	combout => \CompPontos16|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y3_N10
\CompPontos21|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompPontos21|LessThan0~2_combout\ = (\RegPontos|estadoAtual\(4) & ((\RegPontos|estadoAtual\(3)) # ((\RegPontos|estadoAtual\(2) & \RegPontos|estadoAtual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(3),
	datab => \RegPontos|estadoAtual\(2),
	datac => \RegPontos|estadoAtual\(1),
	datad => \RegPontos|estadoAtual\(4),
	combout => \CompPontos21|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y3_N8
\CompPontos21|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompPontos21|LessThan0~3_combout\ = (\RegPontos|estadoAtual\(5)) # ((\RegPontos|estadoAtual\(6)) # ((\RegPontos|estadoAtual\(7)) # (\CompPontos21|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegPontos|estadoAtual\(5),
	datab => \RegPontos|estadoAtual\(6),
	datac => \RegPontos|estadoAtual\(7),
	datad => \CompPontos21|LessThan0~2_combout\,
	combout => \CompPontos21|LessThan0~3_combout\);

-- Location: IOIBUF_X16_Y24_N1
\cmdSetBaralhoI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdSetBaralhoI,
	o => \cmdSetBaralhoI~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\cmdMultBaralho~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdMultBaralho,
	o => \cmdMultBaralho~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\cmdSetI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdSetI,
	o => \cmdSetI~input_o\);

-- Location: LCCOMB_X13_Y3_N26
\RegI|estadoAtual[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[0]~7_combout\ = \cmdSetI~input_o\ $ (\RegI|estadoAtual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmdSetI~input_o\,
	datad => \RegI|estadoAtual\(0),
	combout => \RegI|estadoAtual[0]~7_combout\);

-- Location: IOIBUF_X0_Y11_N22
\cmdResetI~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdResetI,
	o => \cmdResetI~input_o\);

-- Location: CLKCTRL_G3
\cmdResetI~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cmdResetI~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cmdResetI~inputclkctrl_outclk\);

-- Location: FF_X14_Y3_N25
\RegI|estadoAtual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \RegI|estadoAtual[0]~7_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(0));

-- Location: LCCOMB_X14_Y3_N2
\IncIRAM|outp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[0]~0_combout\ = \RegI|estadoAtual\(0) $ (VCC)
-- \IncIRAM|outp[0]~1\ = CARRY(\RegI|estadoAtual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegI|estadoAtual\(0),
	datad => VCC,
	combout => \IncIRAM|outp[0]~0_combout\,
	cout => \IncIRAM|outp[0]~1\);

-- Location: LCCOMB_X14_Y3_N24
\IncIRAM|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~0_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultBaralho~input_o\,
	datad => \IncIRAM|outp[0]~0_combout\,
	combout => \IncIRAM|Add0~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\cmdMultAddress~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cmdMultAddress,
	o => \cmdMultAddress~input_o\);

-- Location: LCCOMB_X16_Y3_N4
\DecCarta|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~0_combout\ = \RegCarta|estadoAtual\(0) $ (VCC)
-- \DecCarta|Add0~1\ = CARRY(\RegCarta|estadoAtual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegCarta|estadoAtual\(0),
	datad => VCC,
	combout => \DecCarta|Add0~0_combout\,
	cout => \DecCarta|Add0~1\);

-- Location: LCCOMB_X16_Y3_N24
\DecCarta|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~2_combout\ = (\cmdMultAddress~input_o\ & (\DecCarta|Add0~0_combout\)) # (!\cmdMultAddress~input_o\ & ((\RegI|estadoAtual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultAddress~input_o\,
	datab => \DecCarta|Add0~0_combout\,
	datad => \RegI|estadoAtual\(0),
	combout => \DecCarta|Add0~2_combout\);

-- Location: LCCOMB_X13_Y3_N0
\RegI|estadoAtual[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[1]~8_combout\ = (\RegI|estadoAtual\(1) & (\RegI|estadoAtual\(0) $ (VCC))) # (!\RegI|estadoAtual\(1) & (\RegI|estadoAtual\(0) & VCC))
-- \RegI|estadoAtual[1]~9\ = CARRY((\RegI|estadoAtual\(1) & \RegI|estadoAtual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(1),
	datab => \RegI|estadoAtual\(0),
	datad => VCC,
	combout => \RegI|estadoAtual[1]~8_combout\,
	cout => \RegI|estadoAtual[1]~9\);

-- Location: FF_X13_Y3_N1
\RegI|estadoAtual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[1]~8_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(1));

-- Location: LCCOMB_X16_Y3_N6
\DecCarta|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~3_combout\ = (\RegCarta|estadoAtual\(1) & (\DecCarta|Add0~1\ & VCC)) # (!\RegCarta|estadoAtual\(1) & (!\DecCarta|Add0~1\))
-- \DecCarta|Add0~4\ = CARRY((!\RegCarta|estadoAtual\(1) & !\DecCarta|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegCarta|estadoAtual\(1),
	datad => VCC,
	cin => \DecCarta|Add0~1\,
	combout => \DecCarta|Add0~3_combout\,
	cout => \DecCarta|Add0~4\);

-- Location: LCCOMB_X16_Y3_N20
\DecCarta|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~5_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~3_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(1),
	datab => \cmdMultAddress~input_o\,
	datad => \DecCarta|Add0~3_combout\,
	combout => \DecCarta|Add0~5_combout\);

-- Location: LCCOMB_X13_Y3_N2
\RegI|estadoAtual[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[2]~10_combout\ = (\RegI|estadoAtual\(2) & (!\RegI|estadoAtual[1]~9\)) # (!\RegI|estadoAtual\(2) & ((\RegI|estadoAtual[1]~9\) # (GND)))
-- \RegI|estadoAtual[2]~11\ = CARRY((!\RegI|estadoAtual[1]~9\) # (!\RegI|estadoAtual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegI|estadoAtual\(2),
	datad => VCC,
	cin => \RegI|estadoAtual[1]~9\,
	combout => \RegI|estadoAtual[2]~10_combout\,
	cout => \RegI|estadoAtual[2]~11\);

-- Location: FF_X13_Y3_N3
\RegI|estadoAtual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[2]~10_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(2));

-- Location: LCCOMB_X16_Y3_N8
\DecCarta|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~6_combout\ = (\RegCarta|estadoAtual\(2) & ((GND) # (!\DecCarta|Add0~4\))) # (!\RegCarta|estadoAtual\(2) & (\DecCarta|Add0~4\ $ (GND)))
-- \DecCarta|Add0~7\ = CARRY((\RegCarta|estadoAtual\(2)) # (!\DecCarta|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegCarta|estadoAtual\(2),
	datad => VCC,
	cin => \DecCarta|Add0~4\,
	combout => \DecCarta|Add0~6_combout\,
	cout => \DecCarta|Add0~7\);

-- Location: LCCOMB_X16_Y3_N30
\DecCarta|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~8_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~6_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultAddress~input_o\,
	datab => \RegI|estadoAtual\(2),
	datad => \DecCarta|Add0~6_combout\,
	combout => \DecCarta|Add0~8_combout\);

-- Location: LCCOMB_X13_Y3_N4
\RegI|estadoAtual[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[3]~12_combout\ = (\RegI|estadoAtual\(3) & (\RegI|estadoAtual[2]~11\ $ (GND))) # (!\RegI|estadoAtual\(3) & (!\RegI|estadoAtual[2]~11\ & VCC))
-- \RegI|estadoAtual[3]~13\ = CARRY((\RegI|estadoAtual\(3) & !\RegI|estadoAtual[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegI|estadoAtual\(3),
	datad => VCC,
	cin => \RegI|estadoAtual[2]~11\,
	combout => \RegI|estadoAtual[3]~12_combout\,
	cout => \RegI|estadoAtual[3]~13\);

-- Location: FF_X13_Y3_N5
\RegI|estadoAtual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[3]~12_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(3));

-- Location: LCCOMB_X16_Y3_N10
\DecCarta|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~9_combout\ = (\RegCarta|estadoAtual\(3) & (\DecCarta|Add0~7\ & VCC)) # (!\RegCarta|estadoAtual\(3) & (!\DecCarta|Add0~7\))
-- \DecCarta|Add0~10\ = CARRY((!\RegCarta|estadoAtual\(3) & !\DecCarta|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegCarta|estadoAtual\(3),
	datad => VCC,
	cin => \DecCarta|Add0~7\,
	combout => \DecCarta|Add0~9_combout\,
	cout => \DecCarta|Add0~10\);

-- Location: LCCOMB_X16_Y3_N2
\DecCarta|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~11_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~9_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(3),
	datab => \cmdMultAddress~input_o\,
	datad => \DecCarta|Add0~9_combout\,
	combout => \DecCarta|Add0~11_combout\);

-- Location: LCCOMB_X13_Y3_N6
\RegI|estadoAtual[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[4]~14_combout\ = (\RegI|estadoAtual\(4) & (!\RegI|estadoAtual[3]~13\)) # (!\RegI|estadoAtual\(4) & ((\RegI|estadoAtual[3]~13\) # (GND)))
-- \RegI|estadoAtual[4]~15\ = CARRY((!\RegI|estadoAtual[3]~13\) # (!\RegI|estadoAtual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(4),
	datad => VCC,
	cin => \RegI|estadoAtual[3]~13\,
	combout => \RegI|estadoAtual[4]~14_combout\,
	cout => \RegI|estadoAtual[4]~15\);

-- Location: FF_X13_Y3_N7
\RegI|estadoAtual[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[4]~14_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(4));

-- Location: LCCOMB_X16_Y3_N12
\DecCarta|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~12_combout\ = (\RegCarta|estadoAtual\(4) & ((GND) # (!\DecCarta|Add0~10\))) # (!\RegCarta|estadoAtual\(4) & (\DecCarta|Add0~10\ $ (GND)))
-- \DecCarta|Add0~13\ = CARRY((\RegCarta|estadoAtual\(4)) # (!\DecCarta|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegCarta|estadoAtual\(4),
	datad => VCC,
	cin => \DecCarta|Add0~10\,
	combout => \DecCarta|Add0~12_combout\,
	cout => \DecCarta|Add0~13\);

-- Location: LCCOMB_X16_Y3_N28
\DecCarta|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~14_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~12_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(4),
	datab => \cmdMultAddress~input_o\,
	datad => \DecCarta|Add0~12_combout\,
	combout => \DecCarta|Add0~14_combout\);

-- Location: LCCOMB_X13_Y3_N8
\RegI|estadoAtual[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[5]~16_combout\ = (\RegI|estadoAtual\(5) & (\RegI|estadoAtual[4]~15\ $ (GND))) # (!\RegI|estadoAtual\(5) & (!\RegI|estadoAtual[4]~15\ & VCC))
-- \RegI|estadoAtual[5]~17\ = CARRY((\RegI|estadoAtual\(5) & !\RegI|estadoAtual[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegI|estadoAtual\(5),
	datad => VCC,
	cin => \RegI|estadoAtual[4]~15\,
	combout => \RegI|estadoAtual[5]~16_combout\,
	cout => \RegI|estadoAtual[5]~17\);

-- Location: FF_X13_Y3_N9
\RegI|estadoAtual[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[5]~16_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(5));

-- Location: LCCOMB_X16_Y3_N14
\DecCarta|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~15_combout\ = (\RegCarta|estadoAtual\(5) & (\DecCarta|Add0~13\ & VCC)) # (!\RegCarta|estadoAtual\(5) & (!\DecCarta|Add0~13\))
-- \DecCarta|Add0~16\ = CARRY((!\RegCarta|estadoAtual\(5) & !\DecCarta|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegCarta|estadoAtual\(5),
	datad => VCC,
	cin => \DecCarta|Add0~13\,
	combout => \DecCarta|Add0~15_combout\,
	cout => \DecCarta|Add0~16\);

-- Location: LCCOMB_X16_Y3_N22
\DecCarta|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~17_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~15_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultAddress~input_o\,
	datab => \RegI|estadoAtual\(5),
	datad => \DecCarta|Add0~15_combout\,
	combout => \DecCarta|Add0~17_combout\);

-- Location: LCCOMB_X13_Y3_N10
\RegI|estadoAtual[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[6]~18_combout\ = (\RegI|estadoAtual\(6) & (!\RegI|estadoAtual[5]~17\)) # (!\RegI|estadoAtual\(6) & ((\RegI|estadoAtual[5]~17\) # (GND)))
-- \RegI|estadoAtual[6]~19\ = CARRY((!\RegI|estadoAtual[5]~17\) # (!\RegI|estadoAtual\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(6),
	datad => VCC,
	cin => \RegI|estadoAtual[5]~17\,
	combout => \RegI|estadoAtual[6]~18_combout\,
	cout => \RegI|estadoAtual[6]~19\);

-- Location: FF_X13_Y3_N11
\RegI|estadoAtual[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[6]~18_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(6));

-- Location: LCCOMB_X16_Y3_N16
\DecCarta|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~18_combout\ = (\RegCarta|estadoAtual\(6) & ((GND) # (!\DecCarta|Add0~16\))) # (!\RegCarta|estadoAtual\(6) & (\DecCarta|Add0~16\ $ (GND)))
-- \DecCarta|Add0~19\ = CARRY((\RegCarta|estadoAtual\(6)) # (!\DecCarta|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegCarta|estadoAtual\(6),
	datad => VCC,
	cin => \DecCarta|Add0~16\,
	combout => \DecCarta|Add0~18_combout\,
	cout => \DecCarta|Add0~19\);

-- Location: LCCOMB_X16_Y3_N0
\DecCarta|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~20_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~18_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(6),
	datab => \cmdMultAddress~input_o\,
	datad => \DecCarta|Add0~18_combout\,
	combout => \DecCarta|Add0~20_combout\);

-- Location: LCCOMB_X13_Y3_N12
\RegI|estadoAtual[7]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RegI|estadoAtual[7]~20_combout\ = \RegI|estadoAtual[6]~19\ $ (!\RegI|estadoAtual\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RegI|estadoAtual\(7),
	cin => \RegI|estadoAtual[6]~19\,
	combout => \RegI|estadoAtual[7]~20_combout\);

-- Location: FF_X13_Y3_N13
\RegI|estadoAtual[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \RegI|estadoAtual[7]~20_combout\,
	clrn => \ALT_INV_cmdResetI~inputclkctrl_outclk\,
	ena => \cmdSetI~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegI|estadoAtual\(7));

-- Location: LCCOMB_X16_Y3_N18
\DecCarta|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~21_combout\ = \RegCarta|estadoAtual\(7) $ (!\DecCarta|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegCarta|estadoAtual\(7),
	cin => \DecCarta|Add0~19\,
	combout => \DecCarta|Add0~21_combout\);

-- Location: LCCOMB_X16_Y3_N26
\DecCarta|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DecCarta|Add0~23_combout\ = (\cmdMultAddress~input_o\ & ((\DecCarta|Add0~21_combout\))) # (!\cmdMultAddress~input_o\ & (\RegI|estadoAtual\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cmdMultAddress~input_o\,
	datac => \RegI|estadoAtual\(7),
	datad => \DecCarta|Add0~21_combout\,
	combout => \DecCarta|Add0~23_combout\);

-- Location: LCCOMB_X14_Y3_N4
\IncIRAM|outp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[1]~2_combout\ = (\RegI|estadoAtual\(1) & (!\IncIRAM|outp[0]~1\)) # (!\RegI|estadoAtual\(1) & ((\IncIRAM|outp[0]~1\) # (GND)))
-- \IncIRAM|outp[1]~3\ = CARRY((!\IncIRAM|outp[0]~1\) # (!\RegI|estadoAtual\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(1),
	datad => VCC,
	cin => \IncIRAM|outp[0]~1\,
	combout => \IncIRAM|outp[1]~2_combout\,
	cout => \IncIRAM|outp[1]~3\);

-- Location: LCCOMB_X14_Y3_N30
\IncIRAM|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~1_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultBaralho~input_o\,
	datac => \IncIRAM|outp[1]~2_combout\,
	combout => \IncIRAM|Add0~1_combout\);

-- Location: LCCOMB_X14_Y3_N6
\IncIRAM|outp[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[2]~4_combout\ = (\RegI|estadoAtual\(2) & (\IncIRAM|outp[1]~3\ $ (GND))) # (!\RegI|estadoAtual\(2) & (!\IncIRAM|outp[1]~3\ & VCC))
-- \IncIRAM|outp[2]~5\ = CARRY((\RegI|estadoAtual\(2) & !\IncIRAM|outp[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(2),
	datad => VCC,
	cin => \IncIRAM|outp[1]~3\,
	combout => \IncIRAM|outp[2]~4_combout\,
	cout => \IncIRAM|outp[2]~5\);

-- Location: LCCOMB_X14_Y3_N28
\IncIRAM|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~2_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmdMultBaralho~input_o\,
	datad => \IncIRAM|outp[2]~4_combout\,
	combout => \IncIRAM|Add0~2_combout\);

-- Location: LCCOMB_X14_Y3_N8
\IncIRAM|outp[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[3]~6_combout\ = (\RegI|estadoAtual\(3) & (!\IncIRAM|outp[2]~5\)) # (!\RegI|estadoAtual\(3) & ((\IncIRAM|outp[2]~5\) # (GND)))
-- \IncIRAM|outp[3]~7\ = CARRY((!\IncIRAM|outp[2]~5\) # (!\RegI|estadoAtual\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegI|estadoAtual\(3),
	datad => VCC,
	cin => \IncIRAM|outp[2]~5\,
	combout => \IncIRAM|outp[3]~6_combout\,
	cout => \IncIRAM|outp[3]~7\);

-- Location: LCCOMB_X14_Y3_N26
\IncIRAM|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~3_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultBaralho~input_o\,
	datac => \IncIRAM|outp[3]~6_combout\,
	combout => \IncIRAM|Add0~3_combout\);

-- Location: LCCOMB_X14_Y3_N10
\IncIRAM|outp[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[4]~8_combout\ = (\RegI|estadoAtual\(4) & (\IncIRAM|outp[3]~7\ $ (GND))) # (!\RegI|estadoAtual\(4) & (!\IncIRAM|outp[3]~7\ & VCC))
-- \IncIRAM|outp[4]~9\ = CARRY((\RegI|estadoAtual\(4) & !\IncIRAM|outp[3]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \RegI|estadoAtual\(4),
	datad => VCC,
	cin => \IncIRAM|outp[3]~7\,
	combout => \IncIRAM|outp[4]~8_combout\,
	cout => \IncIRAM|outp[4]~9\);

-- Location: LCCOMB_X14_Y3_N20
\IncIRAM|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~4_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmdMultBaralho~input_o\,
	datad => \IncIRAM|outp[4]~8_combout\,
	combout => \IncIRAM|Add0~4_combout\);

-- Location: LCCOMB_X14_Y3_N12
\IncIRAM|outp[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[5]~10_combout\ = (\RegI|estadoAtual\(5) & (!\IncIRAM|outp[4]~9\)) # (!\RegI|estadoAtual\(5) & ((\IncIRAM|outp[4]~9\) # (GND)))
-- \IncIRAM|outp[5]~11\ = CARRY((!\IncIRAM|outp[4]~9\) # (!\RegI|estadoAtual\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(5),
	datad => VCC,
	cin => \IncIRAM|outp[4]~9\,
	combout => \IncIRAM|outp[5]~10_combout\,
	cout => \IncIRAM|outp[5]~11\);

-- Location: LCCOMB_X14_Y3_N22
\IncIRAM|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~5_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmdMultBaralho~input_o\,
	datad => \IncIRAM|outp[5]~10_combout\,
	combout => \IncIRAM|Add0~5_combout\);

-- Location: LCCOMB_X14_Y3_N14
\IncIRAM|outp[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[6]~12_combout\ = (\RegI|estadoAtual\(6) & (\IncIRAM|outp[5]~11\ $ (GND))) # (!\RegI|estadoAtual\(6) & (!\IncIRAM|outp[5]~11\ & VCC))
-- \IncIRAM|outp[6]~13\ = CARRY((\RegI|estadoAtual\(6) & !\IncIRAM|outp[5]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(6),
	datad => VCC,
	cin => \IncIRAM|outp[5]~11\,
	combout => \IncIRAM|outp[6]~12_combout\,
	cout => \IncIRAM|outp[6]~13\);

-- Location: LCCOMB_X14_Y3_N0
\IncIRAM|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~6_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmdMultBaralho~input_o\,
	datac => \IncIRAM|outp[6]~12_combout\,
	combout => \IncIRAM|Add0~6_combout\);

-- Location: LCCOMB_X14_Y3_N16
\IncIRAM|outp[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|outp[7]~14_combout\ = \IncIRAM|outp[6]~13\ $ (\RegI|estadoAtual\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \RegI|estadoAtual\(7),
	cin => \IncIRAM|outp[6]~13\,
	combout => \IncIRAM|outp[7]~14_combout\);

-- Location: LCCOMB_X14_Y3_N18
\IncIRAM|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \IncIRAM|Add0~7_combout\ = (!\cmdMultBaralho~input_o\ & \IncIRAM|outp[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cmdMultBaralho~input_o\,
	datad => \IncIRAM|outp[7]~14_combout\,
	combout => \IncIRAM|Add0~7_combout\);

-- Location: M9K_X15_Y3_N0
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "MemoriaRAM:RAM|altsyncram:altsyncram_component|altsyncram_0vp3:auto_generated|ALTSYNCRAM",
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
	portawe => \cmdSetBaralhoI~input_o\,
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X13_Y3_N22
\CompBaralho|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompBaralho|Equal0~1_combout\ = (!\RAM|altsyncram_component|auto_generated|q_a\(7) & (!\RAM|altsyncram_component|auto_generated|q_a\(5) & (!\RAM|altsyncram_component|auto_generated|q_a\(4) & !\RAM|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(7),
	datab => \RAM|altsyncram_component|auto_generated|q_a\(5),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(4),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(6),
	combout => \CompBaralho|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y4_N24
\CompBaralho|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompBaralho|Equal0~0_combout\ = (!\RAM|altsyncram_component|auto_generated|q_a\(2) & (!\RAM|altsyncram_component|auto_generated|q_a\(0) & (!\RAM|altsyncram_component|auto_generated|q_a\(1) & !\RAM|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|altsyncram_component|auto_generated|q_a\(2),
	datab => \RAM|altsyncram_component|auto_generated|q_a\(0),
	datac => \RAM|altsyncram_component|auto_generated|q_a\(1),
	datad => \RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \CompBaralho|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y4_N12
\CompBaralho|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompBaralho|Equal0~2_combout\ = (\CompBaralho|Equal0~1_combout\ & \CompBaralho|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CompBaralho|Equal0~1_combout\,
	datad => \CompBaralho|Equal0~0_combout\,
	combout => \CompBaralho|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y3_N24
\CompIMenor13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompIMenor13|LessThan0~0_combout\ = (((!\RegI|estadoAtual\(1) & !\RegI|estadoAtual\(0))) # (!\RegI|estadoAtual\(3))) # (!\RegI|estadoAtual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(1),
	datab => \RegI|estadoAtual\(2),
	datac => \RegI|estadoAtual\(3),
	datad => \RegI|estadoAtual\(0),
	combout => \CompIMenor13|LessThan0~0_combout\);

-- Location: LCCOMB_X13_Y3_N18
\CompIMenor13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompIMenor13|LessThan0~1_combout\ = (!\RegI|estadoAtual\(6) & (!\RegI|estadoAtual\(7) & (!\RegI|estadoAtual\(5) & !\RegI|estadoAtual\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegI|estadoAtual\(6),
	datab => \RegI|estadoAtual\(7),
	datac => \RegI|estadoAtual\(5),
	datad => \RegI|estadoAtual\(4),
	combout => \CompIMenor13|LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y3_N28
\CompIMenor13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CompIMenor13|LessThan0~2_combout\ = (\CompIMenor13|LessThan0~0_combout\ & \CompIMenor13|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CompIMenor13|LessThan0~0_combout\,
	datad => \CompIMenor13|LessThan0~1_combout\,
	combout => \CompIMenor13|LessThan0~2_combout\);

-- Location: IOIBUF_X28_Y24_N1
\reset_req~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_req,
	o => \reset_req~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X30_Y24_N22
\addCarta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addCarta,
	o => \addCarta~input_o\);

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

ww_sttPontosMaiorDezesseis <= \sttPontosMaiorDezesseis~output_o\;

ww_sttPontosMaiorVinte <= \sttPontosMaiorVinte~output_o\;

ww_sttCompBaralho <= \sttCompBaralho~output_o\;

ww_sttIMenor13 <= \sttIMenor13~output_o\;

ww_sttAddCarta <= \sttAddCarta~output_o\;
END structure;


