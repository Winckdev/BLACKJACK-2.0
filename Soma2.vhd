library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Soma2 is
    generic (dataWidth: positive := 8);
    port ( NUM1 : in  STD_LOGIC_VECTOR (dataWidth-1 downto 0);
           NUM2 : in  STD_LOGIC_VECTOR (dataWidth-1 downto 0);
           SUM : out  STD_LOGIC_VECTOR (dataWidth-1 downto 0)
			  );
			  
end entity;

architecture Behavioral of Soma2 is
begin

    SUM <= std_logic_vector(unsigned(NUM1) + unsigned(NUM2));

end architecture;