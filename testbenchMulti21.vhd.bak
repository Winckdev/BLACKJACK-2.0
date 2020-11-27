library ieee;
use ieee.std_logic_1164.all;

entity testbench_mux2x1 is
end entity;

architecture arch of testbench_mux2x1 is
	component mux2x1 
		generic(n: positive := 32);
		port(a,b: in std_logic_vector(n-1 downto 0);
			sel: in std_logic;
			s: out std_logic_vector(n-1 downto 0)
		);
	end component;
	signal a,b: std_logic_vector(n-1 downto 0);
	signal sel: in std_logic;
	signal s: out std_logic_vector(n-1 downto 0);
	constant latencia: integer := 1;
begin

	uut: mux2x1 generic map(4) port map(a,b,sel,s);

	process
	begin
		a <= "0000";
		b <= "1111";
		sel <= '0';
		wait for latencia ns;
		assert s="0000" report "Ferrou" severity error;
		sel <= '1';
		wait for latencia ns;
		assert s="1111" report "Ferrou" severity error;
		b <= "1010";
		wait for latencia ns;
		assert s="1010" report "Ferrou" severity error;
		-- ... continue
		wait
	end process;
end;
