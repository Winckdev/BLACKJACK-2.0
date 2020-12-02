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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/09/2020 16:34:43"
                                                            
-- Vhdl Test Bench template for design  :  blocoOperativo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
--use work.pkg_Estado.all;                                

ENTITY Blackjack_vhd_tst IS
END Blackjack_vhd_tst;
ARCHITECTURE Blackjack_arch OF Blackjack_vhd_tst IS
	type Estado is (
		SL00 ,SL01, SL01a, SL02, SL03, SL04, SL05, SL06, SL07, SL07a, SL08, 
		SL09, SL09a, SL10, SL11, SL12, SL12a, SL13, SL14, SL15, 
		SL16, SL17, SL18, SL19, SL20, SL21, SL22, SL23, SL24, SL25, SL26, SL27, SL27a, SL28
	);
-- constants
constant PERIODO : time := 10 ns;                                                 
-- signals                                                   
SIGNAL addCarta : STD_LOGIC;
SIGNAL address : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL chipselect : STD_LOGIC;
SIGNAL clk : STD_LOGIC := '0';
SIGNAL interrupt : STD_LOGIC;
SIGNAL readd : STD_LOGIC;
SIGNAL readdata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset_req : STD_LOGIC;
SIGNAL writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writee : STD_LOGIC;

SIGNAL testEstadoAtual: Estado;

SIGNAL cmdSetI: std_logic;
SIGNAL cmdResetI: std_logic;
SIGNAL cmdSetPontos: std_logic;
SIGNAL cmdResetPontos: std_logic;
SIGNAL cmdMultAddress: std_logic;
SIGNAL cmdSetCarta: std_logic;
SIGNAL cmdResetCarta: std_logic;
SIGNAL cmdSetBaralhoI: std_logic;
SIGNAL cmdMultBaralho: std_logic;
SIGNAL sttPontosMaiorDezesseis:  std_logic;
SIGNAL sttPontosMaiorVinte:  std_logic;
SIGNAL sttCompBaralho: std_logic;
SIGNAL sttIMenor13: std_logic;
SIGNAL sttAddCarta: std_logic;


COMPONENT blocoOperativo
	PORT (
	clk : IN STD_LOGIC;
	reset_req : IN STD_LOGIC;
	address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	writedata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	addCarta : IN STD_LOGIC;
	readdata : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	cmdSetI, cmdResetI, cmdSetPontos,cmdResetPontos, cmdMultAddress,
			cmdSetCarta, cmdResetCarta, cmdSetBaralhoI, cmdMultBaralho: BUFFER std_logic;
	sttPontosMaiorDezesseis, sttPontosMaiorVinte, sttCompBaralho, sttIMenor13, sttAddCarta: in std_logic;
	testEstadoAtual: BUFFER Estado
	);
END COMPONENT;
BEGIN

	clk_process: process
	begin
		clk <= '0';
		wait for 5 ns;
		clk <= '1';
		wait for 5 ns;
	end process;

	--clock antigo
	--clk <=  '1' after 5 ns when clk = '0' else
        --'0' after 5 ns when clk = '1';

	i1 : blocoOperativo
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reset_req => reset_req,
	address => address,
	writedata => writedata,
	addCarta => addCarta,
	readdata => readdata,
	cmdSetI => cmdSetI,
	cmdResetI => cmdResetI,
	cmdSetPontos => cmdSetPontos,
	cmdResetPontos => cmdResetPontos,
	cmdMultAddress => cmdMultAddress,
	cmdSetCarta => cmdSetCarta,
	cmdResetCarta => cmdResetCarta,
	cmdSetBaralhoI => cmdSetBaralhoI,
	cmdMultBaralho => cmdMultBaralho,
	sttPontosMaiorDezesseis => sttPontosMaiorDezesseis,
	sttPontosMaiorVinte => sttPontosMaiorVinte,
	sttCompBaralho => sttCompBaralho,
	sttIMenor13 => sttIMenor13,
	sttAddCarta => sttAddCarta,
	testEstadoAtual => testEstadoAtual
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN           
	--Inicializacao das variaveis, precisam estar em 0 para o funcionamento da FSM
	AddCarta <= '1';
	sttIMenor13 <= '1';
	sttPontosMaiorVinte <= '0';
	sttPontosMaiorDezesseis <= '0';
	sttCompBaralho <= '0';
	chipselect <= '0';
	reset_req <= '0';
	writedata <= "00000000";
	--address <= "000000";
	
	--tempo que demoraria para o sistema popular a ram
	wait for 500 ns;
	
	sttIMenor13 <= '0';
	
	wait for 20 ns;
	
	chipselect <= '1';
	writee <= '1';
	
	wait for 5 ns;
	
	chipselect <= '0';
	writee <= '0';
	
	wait for 5 ns;
	
	chipselect <= '1';
	writee <= '1';

	wait for 15 ns;
	
	sttCompBaralho <= '1';
	
	wait for 20 ns;
	
	sttPontosMaiorVinte <= '0';
	
	wait for 20 ns;
	
	sttPontosMaiorDezesseis <= '0';
	
	
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Blackjack_arch;
