LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;
use work.pkg_Estado.all;                                

ENTITY testbenchBlackjack IS
	generic(
		latencia: time := 550 ns
	);
END testbenchBlackjack;
ARCHITECTURE testbenchBlackjack_arch OF testbenchBlackjack IS
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
SIGNAL testEstadoAtual: Estado;



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
	writee : IN STD_LOGIC;
	testEstadoAtual: BUFFER Estado
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
	writee => writee,
	testEstadoAtual => testEstadoAtual
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
	writedata <= "00000100";
	
	wait for latencia;
	
	writedata <= "00000101";
	
	wait for latencia;
	
	writedata <= "00000011";
	addCarta <= '0';
	
	wait for latencia;
	
	writedata <= "00000111";
	
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
END testbenchBlackjack_arch;