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
--SIGNAL testEstadoAtual: Estado;
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
			cmdSetCarta, cmdResetCarta, cmdSetBaralhoI, cmdMultBaralho: IN std_logic;
	sttPontosMaiorDezesseis, sttPontosMaiorVinte, sttCompBaralho, sttIMenor13, sttAddCarta: BUFFER std_logic
	--testEstadoAtual: BUFFER STD_LOGIC_VECTOR(7 downto 0)
	);
END COMPONENT;
BEGIN

	clk <=  '1' after 5 ns when clk = '0' else
        '0' after 5 ns when clk = '1';

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
	sttAddCarta => sttAddCarta
	
	--testEstadoAtual => testEstadoAtual
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN
	--instanciar variaveis em zero
	cmdMultBaralho <= '0';
	
	cmdSetBaralhoI <= '0';
	
	cmdResetCarta <= '0';
	
	cmdSetCarta <= '0';
	
	cmdMultAddress <= '0';
	
	cmdResetPontos <= '0';
	
	cmdSetPontos <= '0';
	
	cmdResetI <= '0';
	
	cmdSetI <= '1';
	
	addCarta <= '1';
	
	--Inicio do Algoritmo
	--Reset em algumas variaveis
	
	writedata <= "00000000";
	
	--SL01 -- Inicio do ALgoritmo
	
	cmdResetI <= '1';
	cmdMultAddress <= '0';
	
	wait for 10 ns;
	
	cmdSetCarta <= '1';
	
	wait for 5 ns;
	
	--Populando a memoria ram ----------------------------
	
	--Varios loops até o sttIMenor13 for igual a 0
	--SL02
	cmdSetBaralhoI <= '1';
	cmdResetI <= '0';
	
	wait for 5 ns;
	
	--SL03
	cmdSetI <= '1';
	
	wait for 60 ns;
	--wait for 60 ns;
	
	--SL04
	cmdResetPontos <= '0';
	
	wait for 5 ns;
	--SL09a
	cmdSetCarta <= '1';
	
	wait for 5 ns;
	--SL10
	cmdSetBaralhoI <= '0';
	cmdMultBaralho <= '0';
	cmdMultAddress <= '1';
	
	wait for 5 ns;
	--SL12
	cmdSetBaralhoI <= '1';
	cmdMultBaralho <= '1';
	cmdMultAddress <= '1';
	
	wait for 5 ns;
	
	--SL13 --- Testando a soma dos pontos ------------------
	
	cmdSetPontos <= '1';
	
	wait for 5 ns; 
	
	--- Testando a troca da carta --------------------
	
	cmdSetPontos <= '0';
	
	writedata <= "00001100";
	
	wait for 10 ns;
	--SL09a
	cmdSetCarta <= '1';
	
	wait for 5 ns;
	--SL10
	cmdSetBaralhoI <= '0';
	cmdMultBaralho <= '0';
	cmdMultAddress <= '1';
	
	wait for 5 ns;
	--SL12
	cmdSetBaralhoI <= '1';
	cmdMultBaralho <= '1';
	cmdMultAddress <= '1';
	
	---- Somando os pontos da nova carta -----------------
	
	wait for 5 ns;
	--SL13
	cmdSetPontos <= '1';
	
	wait for 10 ns;
	
	cmdResetPontos <= '0';
	
	---------- Testando uma nova carta --------------------
	
	cmdSetPontos <= '0';
	
	writedata <= "00001101";
	
	wait for 10 ns;
	--SL09a
	cmdSetCarta <= '1';
	
	wait for 5 ns;
	--SL10
	cmdSetBaralhoI <= '0';
	cmdMultBaralho <= '0';
	cmdMultAddress <= '1';
	
	wait for 5 ns;
	--SL12
	cmdSetBaralhoI <= '1';
	cmdMultBaralho <= '1';
	cmdMultAddress <= '1';
	
	---- Somando os pontos da nova carta -----------------
	
	wait for 5 ns;
	--SL13
	cmdSetPontos <= '1';
	
	wait for 10 ns;
	
	----- Mesma carta n pode ser somada mais de uma vez ---------
	cmdSetPontos <= '0';
	cmdResetPontos <= '0';

	
	
	
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
