--Stathopoulos Georgios 3170152
--Panteleimon Ntoulis 3170124

library ieee;
use ieee.std_logic_1164.all;

entity Selector is
	generic( n: INTEGER := 16);
	port(Reg, Memory, WriteBack: in std_logic_vector(n-1 downto 0);
			Operation: in std_logic_vector(1 downto 0);
			Output: out std_logic_vector(n-1 downto 0));
end Selector;

architecture behavior of Selector is
begin
	with Operation select
		Output <= Reg when "00",
					WriteBack when "01",
					Memory when "10",
					"0000000000000000" when "11";
end architecture behavior;