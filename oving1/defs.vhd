library IEEE;
use IEEE.STD_LOGIC_1164.all;

package defs is
	subtype address_t is std_logic_vector(31 downto 0);
	subtype instruction_t is std_logic_vector(31 downto 0);
end defs;

