library ieee;
use ieee.std_logic_1164.all;

entity testbench_mux2x1 is
end entity;

architecture arch of testbench_mux2x1 is
	component Multi21 
		generic(tam: positive := 8);
		port(a,b: in std_logic_vector(tam-1 downto 0);
			sel: in std_logic;
			s: out std_logic_vector(tam-1 downto 0)
		);
	end component;
	signal a,b: std_logic_vector(8 downto 0);
	signal sel: std_logic;
	signal s: std_logic_vector(8 downto 0);
	constant latencia: integer := 1;
begin

	uut: Multi21 generic map(8) port map(a,b,sel,s);

	process
	begin
		a <= "00000000";
		b <= "11111111";
		sel <= '0';
		wait for 1 ns;
		assert s="00000000" report "Ferrou" severity error;
		sel <= '1';
		wait for 1 ns;
		assert s="11111111" report "Ferrou" severity error;
		b <= "10101010";
		wait for 1 ns;
		assert s="10101010" report "Ferrou" severity error;
		-- ... continue
	end process;
end;
