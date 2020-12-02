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

-- DATE "12/02/2020 18:52:14"

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

ENTITY 	blocoControle IS
    PORT (
	clk : IN std_logic;
	reset_req : IN std_logic;
	chipselect : IN std_logic;
	readd : IN std_logic;
	writee : IN std_logic;
	addCarta : IN std_logic;
	sttPontosMaiorDezesseis : IN std_logic;
	sttPontosMaiorVinte : IN std_logic;
	sttCompBaralho : IN std_logic;
	sttIMenor13 : IN std_logic;
	sttAddCarta : IN std_logic;
	interrupt : BUFFER std_logic;
	cmdSetI : BUFFER std_logic;
	cmdResetI : BUFFER std_logic;
	cmdSetPontos : BUFFER std_logic;
	cmdResetPontos : BUFFER std_logic;
	cmdMultAddress : BUFFER std_logic;
	cmdMultBaralho : BUFFER std_logic;
	cmdSetCarta : BUFFER std_logic;
	cmdResetCarta : BUFFER std_logic;
	cmdSetBaralhoI : BUFFER std_logic;
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
	\testEstadoAtual.SL28\ : BUFFER std_logic
	);
END blocoControle;

-- Design Ports Information
-- readd	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttAddCarta	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- interrupt	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetI	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdResetI	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetPontos	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdResetPontos	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdMultAddress	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdMultBaralho	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetCarta	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdResetCarta	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cmdSetBaralhoI	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL00	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL01	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL01a	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL02	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL03	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL04	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL05	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL06	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL07	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL07a	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL08	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL09	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL09a	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL10	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL11	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL12	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL12a	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL13	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL14	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL15	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL16	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL17	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL18	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL19	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL20	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL21	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL22	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL23	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL24	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL25	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL26	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL27	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL27a	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- testEstadoAtual.SL28	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addCarta	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipselect	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writee	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_req	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttIMenor13	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttPontosMaiorVinte	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttCompBaralho	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sttPontosMaiorDezesseis	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF blocoControle IS
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
SIGNAL ww_sttPontosMaiorDezesseis : std_logic;
SIGNAL ww_sttPontosMaiorVinte : std_logic;
SIGNAL ww_sttCompBaralho : std_logic;
SIGNAL ww_sttIMenor13 : std_logic;
SIGNAL ww_sttAddCarta : std_logic;
SIGNAL ww_interrupt : std_logic;
SIGNAL ww_cmdSetI : std_logic;
SIGNAL ww_cmdResetI : std_logic;
SIGNAL ww_cmdSetPontos : std_logic;
SIGNAL ww_cmdResetPontos : std_logic;
SIGNAL ww_cmdMultAddress : std_logic;
SIGNAL ww_cmdMultBaralho : std_logic;
SIGNAL ww_cmdSetCarta : std_logic;
SIGNAL ww_cmdResetCarta : std_logic;
SIGNAL ww_cmdSetBaralhoI : std_logic;
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
SIGNAL \reset_req~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \readd~input_o\ : std_logic;
SIGNAL \sttAddCarta~input_o\ : std_logic;
SIGNAL \addCarta~input_o\ : std_logic;
SIGNAL \interrupt~output_o\ : std_logic;
SIGNAL \cmdSetI~output_o\ : std_logic;
SIGNAL \cmdResetI~output_o\ : std_logic;
SIGNAL \cmdSetPontos~output_o\ : std_logic;
SIGNAL \cmdResetPontos~output_o\ : std_logic;
SIGNAL \cmdMultAddress~output_o\ : std_logic;
SIGNAL \cmdMultBaralho~output_o\ : std_logic;
SIGNAL \cmdSetCarta~output_o\ : std_logic;
SIGNAL \cmdResetCarta~output_o\ : std_logic;
SIGNAL \cmdSetBaralhoI~output_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sttPontosMaiorDezesseis~input_o\ : std_logic;
SIGNAL \sttPontosMaiorVinte~input_o\ : std_logic;
SIGNAL \sttCompBaralho~input_o\ : std_logic;
SIGNAL \writee~input_o\ : std_logic;
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \sttIMenor13~input_o\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset_req~input_o\ : std_logic;
SIGNAL \reset_req~inputclkctrl_outclk\ : std_logic;
SIGNAL \estadoAtual.SL02~q\ : std_logic;
SIGNAL \estadoAtual.SL03~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL03~q\ : std_logic;
SIGNAL \estadoAtual.SL27a~q\ : std_logic;
SIGNAL \estadoAtual.SL28~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL28~q\ : std_logic;
SIGNAL \estadoAtual.SL00~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL00~q\ : std_logic;
SIGNAL \estadoAtual.SL01~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL01~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL01a~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL04~q\ : std_logic;
SIGNAL \estadoAtual.SL05~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL05~q\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL22~q\ : std_logic;
SIGNAL \estadoAtual.SL23~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL23~q\ : std_logic;
SIGNAL \estadoAtual.SL26~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL26~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL06~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL07~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL07a~q\ : std_logic;
SIGNAL \estadoAtual.SL08~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL08~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL09~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL09a~q\ : std_logic;
SIGNAL \estadoAtual.SL10~q\ : std_logic;
SIGNAL \estadoAtual.SL11~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL11~q\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL12~q\ : std_logic;
SIGNAL \estadoAtual.SL12a~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL12a~q\ : std_logic;
SIGNAL \estadoAtual.SL13~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL13~q\ : std_logic;
SIGNAL \estadoAtual.SL14~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL14~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL18~q\ : std_logic;
SIGNAL \estadoAtual.SL19~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL19~q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL20~q\ : std_logic;
SIGNAL \estadoAtual.SL21~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL21~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL15~q\ : std_logic;
SIGNAL \estadoAtual.SL16~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL16~q\ : std_logic;
SIGNAL \estadoAtual.SL17~feeder_combout\ : std_logic;
SIGNAL \estadoAtual.SL17~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \estadoAtual.SL27~q\ : std_logic;
SIGNAL \WideOr30~0_combout\ : std_logic;
SIGNAL \WideOr30~combout\ : std_logic;
SIGNAL \cmdResetI~0_combout\ : std_logic;
SIGNAL \cmdResetPontos~0_combout\ : std_logic;
SIGNAL \cmdMultAddress~0_combout\ : std_logic;
SIGNAL \cmdSetBaralhoI~0_combout\ : std_logic;
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
ww_sttPontosMaiorDezesseis <= sttPontosMaiorDezesseis;
ww_sttPontosMaiorVinte <= sttPontosMaiorVinte;
ww_sttCompBaralho <= sttCompBaralho;
ww_sttIMenor13 <= sttIMenor13;
ww_sttAddCarta <= sttAddCarta;
interrupt <= ww_interrupt;
cmdSetI <= ww_cmdSetI;
cmdResetI <= ww_cmdResetI;
cmdSetPontos <= ww_cmdSetPontos;
cmdResetPontos <= ww_cmdResetPontos;
cmdMultAddress <= ww_cmdMultAddress;
cmdMultBaralho <= ww_cmdMultBaralho;
cmdSetCarta <= ww_cmdSetCarta;
cmdResetCarta <= ww_cmdResetCarta;
cmdSetBaralhoI <= ww_cmdSetBaralhoI;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset_req~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset_req~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_req~inputclkctrl_outclk\ <= NOT \reset_req~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N9
\interrupt~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr30~combout\,
	devoe => ww_devoe,
	o => \interrupt~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\cmdSetI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoAtual.SL03~q\,
	devoe => ww_devoe,
	o => \cmdSetI~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\cmdResetI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmdResetI~0_combout\,
	devoe => ww_devoe,
	o => \cmdResetI~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\cmdSetPontos~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoAtual.SL13~q\,
	devoe => ww_devoe,
	o => \cmdSetPontos~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\cmdResetPontos~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmdResetPontos~0_combout\,
	devoe => ww_devoe,
	o => \cmdResetPontos~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\cmdMultAddress~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmdMultAddress~0_combout\,
	devoe => ww_devoe,
	o => \cmdMultAddress~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\cmdMultBaralho~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoAtual.SL12~q\,
	devoe => ww_devoe,
	o => \cmdMultBaralho~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\cmdSetCarta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \estadoAtual.SL09a~q\,
	devoe => ww_devoe,
	o => \cmdSetCarta~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\cmdResetCarta~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cmdResetCarta~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\cmdSetBaralhoI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cmdSetBaralhoI~0_combout\,
	devoe => ww_devoe,
	o => \cmdSetBaralhoI~output_o\);

-- Location: IOOBUF_X21_Y0_N9
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

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X3_Y0_N2
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

-- Location: IOOBUF_X28_Y0_N2
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

-- Location: IOOBUF_X34_Y17_N16
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

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X1_Y24_N9
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

-- Location: IOOBUF_X1_Y24_N2
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

-- Location: IOOBUF_X28_Y24_N16
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

-- Location: IOOBUF_X16_Y0_N9
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

-- Location: IOOBUF_X16_Y0_N2
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

-- Location: IOOBUF_X32_Y0_N23
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

-- Location: IOOBUF_X13_Y0_N2
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

-- Location: IOOBUF_X34_Y4_N16
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

-- Location: IOOBUF_X34_Y2_N23
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

-- Location: IOOBUF_X32_Y0_N16
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

-- Location: IOOBUF_X23_Y24_N9
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

-- Location: IOOBUF_X28_Y24_N23
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

-- Location: IOOBUF_X34_Y4_N23
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X34_Y18_N16
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

-- Location: IOOBUF_X30_Y24_N23
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X34_Y7_N9
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

-- Location: IOOBUF_X30_Y24_N2
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

-- Location: IOOBUF_X30_Y0_N9
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

-- Location: IOOBUF_X23_Y24_N2
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

-- Location: IOOBUF_X23_Y24_N16
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X34_Y2_N16
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X28_Y24_N9
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

-- Location: IOIBUF_X13_Y24_N15
\sttPontosMaiorDezesseis~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sttPontosMaiorDezesseis,
	o => \sttPontosMaiorDezesseis~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\sttPontosMaiorVinte~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sttPontosMaiorVinte,
	o => \sttPontosMaiorVinte~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\sttCompBaralho~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sttCompBaralho,
	o => \sttCompBaralho~input_o\);

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

-- Location: IOIBUF_X16_Y24_N1
\chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\sttIMenor13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sttIMenor13,
	o => \sttIMenor13~input_o\);

-- Location: LCCOMB_X11_Y22_N28
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\sttIMenor13~input_o\ & \estadoAtual.SL01a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttIMenor13~input_o\,
	datad => \estadoAtual.SL01a~q\,
	combout => \Selector3~0_combout\);

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

-- Location: FF_X11_Y22_N29
\estadoAtual.SL02\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL02~q\);

-- Location: LCCOMB_X11_Y22_N0
\estadoAtual.SL03~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL03~feeder_combout\ = \estadoAtual.SL02~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL02~q\,
	combout => \estadoAtual.SL03~feeder_combout\);

-- Location: FF_X11_Y22_N1
\estadoAtual.SL03\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL03~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL03~q\);

-- Location: FF_X12_Y22_N13
\estadoAtual.SL27a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estadoAtual.SL27~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL27a~q\);

-- Location: LCCOMB_X12_Y22_N4
\estadoAtual.SL28~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL28~feeder_combout\ = \estadoAtual.SL27a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL27a~q\,
	combout => \estadoAtual.SL28~feeder_combout\);

-- Location: FF_X12_Y22_N5
\estadoAtual.SL28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL28~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL28~q\);

-- Location: LCCOMB_X11_Y22_N18
\estadoAtual.SL00~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL00~feeder_combout\ = \estadoAtual.SL28~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL28~q\,
	combout => \estadoAtual.SL00~feeder_combout\);

-- Location: FF_X11_Y22_N19
\estadoAtual.SL00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL00~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL00~q\);

-- Location: LCCOMB_X11_Y22_N24
\estadoAtual.SL01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL01~0_combout\ = !\estadoAtual.SL00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL00~q\,
	combout => \estadoAtual.SL01~0_combout\);

-- Location: FF_X11_Y22_N25
\estadoAtual.SL01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL01~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL01~q\);

-- Location: LCCOMB_X11_Y22_N12
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\estadoAtual.SL03~q\) # (!\estadoAtual.SL01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoAtual.SL03~q\,
	datad => \estadoAtual.SL01~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X11_Y22_N13
\estadoAtual.SL01a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL01a~q\);

-- Location: LCCOMB_X11_Y22_N6
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\sttIMenor13~input_o\ & \estadoAtual.SL01a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttIMenor13~input_o\,
	datad => \estadoAtual.SL01a~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X11_Y22_N7
\estadoAtual.SL04\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL04~q\);

-- Location: LCCOMB_X11_Y22_N16
\estadoAtual.SL05~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL05~feeder_combout\ = \estadoAtual.SL04~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL04~q\,
	combout => \estadoAtual.SL05~feeder_combout\);

-- Location: FF_X11_Y22_N17
\estadoAtual.SL05\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL05~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL05~q\);

-- Location: LCCOMB_X13_Y22_N24
\Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\sttPontosMaiorDezesseis~input_o\ & \estadoAtual.SL19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttPontosMaiorDezesseis~input_o\,
	datad => \estadoAtual.SL19~q\,
	combout => \Selector26~0_combout\);

-- Location: FF_X13_Y22_N25
\estadoAtual.SL22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector26~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL22~q\);

-- Location: LCCOMB_X13_Y22_N12
\estadoAtual.SL23~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL23~feeder_combout\ = \estadoAtual.SL22~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL22~q\,
	combout => \estadoAtual.SL23~feeder_combout\);

-- Location: FF_X13_Y22_N13
\estadoAtual.SL23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL23~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL23~q\);

-- Location: LCCOMB_X13_Y22_N26
\estadoAtual.SL26~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL26~feeder_combout\ = \estadoAtual.SL23~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL23~q\,
	combout => \estadoAtual.SL26~feeder_combout\);

-- Location: FF_X13_Y22_N27
\estadoAtual.SL26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL26~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL26~q\);

-- Location: LCCOMB_X12_Y22_N16
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estadoAtual.SL05~q\) # ((\estadoAtual.SL26~q\) # ((\sttCompBaralho~input_o\ & \estadoAtual.SL11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sttCompBaralho~input_o\,
	datab => \estadoAtual.SL11~q\,
	datac => \estadoAtual.SL05~q\,
	datad => \estadoAtual.SL26~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X12_Y22_N17
\estadoAtual.SL06\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL06~q\);

-- Location: LCCOMB_X12_Y22_N8
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estadoAtual.SL06~q\) # ((\estadoAtual.SL07~q\ & ((!\writee~input_o\) # (!\chipselect~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \writee~input_o\,
	datac => \estadoAtual.SL07~q\,
	datad => \estadoAtual.SL06~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X12_Y22_N9
\estadoAtual.SL07\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL07~q\);

-- Location: LCCOMB_X12_Y22_N6
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\chipselect~input_o\ & (\estadoAtual.SL07~q\ & \writee~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \estadoAtual.SL07~q\,
	datad => \writee~input_o\,
	combout => \Selector9~0_combout\);

-- Location: FF_X12_Y22_N7
\estadoAtual.SL07a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL07a~q\);

-- Location: LCCOMB_X12_Y22_N10
\estadoAtual.SL08~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL08~feeder_combout\ = \estadoAtual.SL07a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL07a~q\,
	combout => \estadoAtual.SL08~feeder_combout\);

-- Location: FF_X12_Y22_N11
\estadoAtual.SL08\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL08~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL08~q\);

-- Location: LCCOMB_X12_Y22_N28
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\estadoAtual.SL08~q\) # ((\estadoAtual.SL09~q\ & ((!\writee~input_o\) # (!\chipselect~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \writee~input_o\,
	datac => \estadoAtual.SL09~q\,
	datad => \estadoAtual.SL08~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X12_Y22_N29
\estadoAtual.SL09\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL09~q\);

-- Location: LCCOMB_X12_Y22_N14
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\writee~input_o\ & (\chipselect~input_o\ & \estadoAtual.SL09~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writee~input_o\,
	datac => \chipselect~input_o\,
	datad => \estadoAtual.SL09~q\,
	combout => \Selector12~0_combout\);

-- Location: FF_X12_Y22_N15
\estadoAtual.SL09a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector12~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL09a~q\);

-- Location: FF_X12_Y22_N25
\estadoAtual.SL10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estadoAtual.SL09a~q\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL10~q\);

-- Location: LCCOMB_X12_Y22_N18
\estadoAtual.SL11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL11~feeder_combout\ = \estadoAtual.SL10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL10~q\,
	combout => \estadoAtual.SL11~feeder_combout\);

-- Location: FF_X12_Y22_N19
\estadoAtual.SL11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL11~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL11~q\);

-- Location: LCCOMB_X12_Y22_N2
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (!\sttCompBaralho~input_o\ & \estadoAtual.SL11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttCompBaralho~input_o\,
	datad => \estadoAtual.SL11~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X12_Y22_N3
\estadoAtual.SL12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL12~q\);

-- Location: LCCOMB_X12_Y22_N20
\estadoAtual.SL12a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL12a~feeder_combout\ = \estadoAtual.SL12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL12~q\,
	combout => \estadoAtual.SL12a~feeder_combout\);

-- Location: FF_X12_Y22_N21
\estadoAtual.SL12a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL12a~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL12a~q\);

-- Location: LCCOMB_X13_Y22_N0
\estadoAtual.SL13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL13~feeder_combout\ = \estadoAtual.SL12a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL12a~q\,
	combout => \estadoAtual.SL13~feeder_combout\);

-- Location: FF_X13_Y22_N1
\estadoAtual.SL13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL13~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL13~q\);

-- Location: LCCOMB_X13_Y22_N16
\estadoAtual.SL14~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL14~feeder_combout\ = \estadoAtual.SL13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL13~q\,
	combout => \estadoAtual.SL14~feeder_combout\);

-- Location: FF_X13_Y22_N17
\estadoAtual.SL14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL14~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL14~q\);

-- Location: LCCOMB_X13_Y22_N22
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\sttPontosMaiorVinte~input_o\ & \estadoAtual.SL14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttPontosMaiorVinte~input_o\,
	datad => \estadoAtual.SL14~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X13_Y22_N23
\estadoAtual.SL18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL18~q\);

-- Location: LCCOMB_X13_Y22_N18
\estadoAtual.SL19~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL19~feeder_combout\ = \estadoAtual.SL18~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoAtual.SL18~q\,
	combout => \estadoAtual.SL19~feeder_combout\);

-- Location: FF_X13_Y22_N19
\estadoAtual.SL19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL19~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL19~q\);

-- Location: LCCOMB_X13_Y22_N2
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\sttPontosMaiorDezesseis~input_o\ & \estadoAtual.SL19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttPontosMaiorDezesseis~input_o\,
	datad => \estadoAtual.SL19~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X13_Y22_N3
\estadoAtual.SL20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL20~q\);

-- Location: LCCOMB_X13_Y22_N10
\estadoAtual.SL21~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL21~feeder_combout\ = \estadoAtual.SL20~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL20~q\,
	combout => \estadoAtual.SL21~feeder_combout\);

-- Location: FF_X13_Y22_N11
\estadoAtual.SL21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL21~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL21~q\);

-- Location: LCCOMB_X13_Y22_N6
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\sttPontosMaiorVinte~input_o\ & \estadoAtual.SL14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sttPontosMaiorVinte~input_o\,
	datad => \estadoAtual.SL14~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X13_Y22_N7
\estadoAtual.SL15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector19~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL15~q\);

-- Location: LCCOMB_X13_Y22_N20
\estadoAtual.SL16~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL16~feeder_combout\ = \estadoAtual.SL15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL15~q\,
	combout => \estadoAtual.SL16~feeder_combout\);

-- Location: FF_X13_Y22_N21
\estadoAtual.SL16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL16~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL16~q\);

-- Location: LCCOMB_X13_Y22_N28
\estadoAtual.SL17~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estadoAtual.SL17~feeder_combout\ = \estadoAtual.SL16~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estadoAtual.SL16~q\,
	combout => \estadoAtual.SL17~feeder_combout\);

-- Location: FF_X13_Y22_N29
\estadoAtual.SL17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estadoAtual.SL17~feeder_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL17~q\);

-- Location: LCCOMB_X12_Y22_N30
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\estadoAtual.SL21~q\) # (\estadoAtual.SL17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoAtual.SL21~q\,
	datad => \estadoAtual.SL17~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X12_Y22_N31
\estadoAtual.SL27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector31~0_combout\,
	clrn => \ALT_INV_reset_req~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estadoAtual.SL27~q\);

-- Location: LCCOMB_X12_Y22_N0
\WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr30~0_combout\ = (\estadoAtual.SL07a~q\) # ((\estadoAtual.SL07~q\) # ((\estadoAtual.SL09a~q\) # (\estadoAtual.SL09~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoAtual.SL07a~q\,
	datab => \estadoAtual.SL07~q\,
	datac => \estadoAtual.SL09a~q\,
	datad => \estadoAtual.SL09~q\,
	combout => \WideOr30~0_combout\);

-- Location: LCCOMB_X12_Y22_N12
WideOr30 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr30~combout\ = (\estadoAtual.SL27~q\) # ((\estadoAtual.SL27a~q\) # (\WideOr30~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estadoAtual.SL27~q\,
	datac => \estadoAtual.SL27a~q\,
	datad => \WideOr30~0_combout\,
	combout => \WideOr30~combout\);

-- Location: LCCOMB_X11_Y22_N2
\cmdResetI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmdResetI~0_combout\ = (\estadoAtual.SL04~q\) # (!\estadoAtual.SL01~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoAtual.SL01~q\,
	datad => \estadoAtual.SL04~q\,
	combout => \cmdResetI~0_combout\);

-- Location: LCCOMB_X12_Y22_N22
\cmdResetPontos~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmdResetPontos~0_combout\ = (\estadoAtual.SL04~q\) # (\estadoAtual.SL15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoAtual.SL04~q\,
	datad => \estadoAtual.SL15~q\,
	combout => \cmdResetPontos~0_combout\);

-- Location: LCCOMB_X12_Y22_N24
\cmdMultAddress~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmdMultAddress~0_combout\ = (\estadoAtual.SL10~q\) # (\estadoAtual.SL12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estadoAtual.SL10~q\,
	datad => \estadoAtual.SL12~q\,
	combout => \cmdMultAddress~0_combout\);

-- Location: LCCOMB_X11_Y22_N30
\cmdSetBaralhoI~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmdSetBaralhoI~0_combout\ = (\estadoAtual.SL02~q\) # (\estadoAtual.SL12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estadoAtual.SL02~q\,
	datad => \estadoAtual.SL12~q\,
	combout => \cmdSetBaralhoI~0_combout\);

-- Location: IOIBUF_X13_Y0_N15
\readd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_readd,
	o => \readd~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\sttAddCarta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sttAddCarta,
	o => \sttAddCarta~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\addCarta~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addCarta,
	o => \addCarta~input_o\);

ww_interrupt <= \interrupt~output_o\;

ww_cmdSetI <= \cmdSetI~output_o\;

ww_cmdResetI <= \cmdResetI~output_o\;

ww_cmdSetPontos <= \cmdSetPontos~output_o\;

ww_cmdResetPontos <= \cmdResetPontos~output_o\;

ww_cmdMultAddress <= \cmdMultAddress~output_o\;

ww_cmdMultBaralho <= \cmdMultBaralho~output_o\;

ww_cmdSetCarta <= \cmdSetCarta~output_o\;

ww_cmdResetCarta <= \cmdResetCarta~output_o\;

ww_cmdSetBaralhoI <= \cmdSetBaralhoI~output_o\;

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
END structure;


