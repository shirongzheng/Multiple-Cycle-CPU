LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY Counter IS
	PORT
	(
		Clock			: in std_logic ;
		Clear		: in std_logic ;
		Q			: out std_logic_vector (1 downto 0)
	);
END Counter;

Architecture Structure of Counter is
	signal counter : std_logic_vector(1 downto 0);
begin
	process(Clock)
	begin
		if (rising_edge(Clock)) then
			if clear = '1' then
				counter <= "00";
			else 
				counter <= counter + 1;
			end if;
		end if;
	end process;
	Q <= counter;
end Structure;
