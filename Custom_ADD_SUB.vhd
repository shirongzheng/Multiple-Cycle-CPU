LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

ENTITY Custom_ADD_SUB IS
	PORT
	(
		Rx			: in std_logic_vector (15 downto 0) ;
		Ry			: in std_logic_vector (15 downto 0) ;
		to_sign			: in std_logic;
		result		: buffer std_logic_vector (15 downto 0)
	);
END Custom_ADD_SUB;

Architecture Structure of Custom_ADD_SUB is
begin
	result <= std_logic_vector(unsigned(Rx) + unsigned(Ry)) 
		when to_sign = '1' 
			else std_logic_vector(unsigned(Rx) - unsigned(Ry));
end Structure;
