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
                                                            
-- Vhdl Test Bench template for design  :  Blackjack
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
SIGNAL address : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL chipselect : STD_LOGIC;
SIGNAL clk : STD_LOGIC := '0';
SIGNAL interrupt : STD_LOGIC;
SIGNAL readd : STD_LOGIC;
SIGNAL readdata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset_req : STD_LOGIC;
SIGNAL writedata : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL writee : STD_LOGIC;
--SIGNAL testEstadoAtual: Estado;



COMPONENT Blackjack
	PORT (
	addCarta : IN STD_LOGIC;
	address : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	chipselect : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	interrupt : BUFFER STD_LOGIC;
	readd : IN STD_LOGIC;
	readdata : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset_req : IN STD_LOGIC;
	writedata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	writee : IN STD_LOGIC
	--testEstadoAtual: BUFFER STD_LOGIC_VECTOR(7 downto 0)
	);
END COMPONENT;
BEGIN

	clk <=  '1' after 5 ns when clk = '0' else
        '0' after 5 ns when clk = '1';

	i1 : Blackjack
	PORT MAP (
-- list connections between master ports and signals
	addCarta => addCarta,
	address => address,
	chipselect => chipselect,
	clk => clk,
	interrupt => interrupt,
	readd => readd,
	readdata => readdata,
	reset_req => reset_req,
	writedata => writedata,
	writee => writee
	--testEstadoAtual => testEstadoAtual
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	reset_req <= '0';
	chipselect <= '1';
	readd <= '0';
	writee <= '1';
	addCarta <= '1';
	address <= "000000";
	writedata <= "00001100";
	
	wait for 550 ns;
	
	writedata <= "00001101";
	
	wait for 550 ns;
	
	writedata <= "00000011";
	
	
	wait for 550 ns;
	
	writedata <= "00000111";
	addCarta <= '0';
	
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
