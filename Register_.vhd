LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Register16 IS
	PORT
	(
		D			: in std_logic_vector (15 downto 0) ;
		Clock			: in std_logic ;
		Rin			: in std_logic ;
		Q			: buffer std_logic_vector (15 downto 0)
	);
END reg;

Architecture Structure of Register_ is
begin
	Process (Clock)
	begin
		if (rising_edge(Clock) and Rin = '1') then
			Q <= D;
		end if;
	end Process;
end Structure;