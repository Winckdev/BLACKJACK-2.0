library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decrementador is
	generic(
		dataWidth: positive := 8;
		isSigned: boolean := false
	);
	port(
		inp: in std_logic_vector(dataWidth-1 downto 0);
		outp: out std_logic_vector(dataWidth-1 downto 0)
	);
end entity;

architecture behavioural of decrementador is
begin
	sig: if isSigned generate
		outp <= std_logic_vector(signed(signed(inp)-1));
	end generate;
	
	unsig: if not isSigned generate
		outp <= std_logic_vector(unsigned(unsigned(inp)-1)); 
	end generate;
end;