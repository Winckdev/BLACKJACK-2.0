library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CompMaior is
	generic (tam: positive := 8);
	port (
		a: in std_logic_vector(tam-1 downto 0);
		b: in std_logic_vector(tam-1 downto 0);
		saida: out std_logic
	);
end entity;

architecture arch of CompMaior is
begin
	saida <= '1' when std_logic_vector(unsigned(a)) > std_logic_vector(unsigned(b)) else '0';
end architecture;