library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

-- This is somewhat of a misnomer, as the all this module does is decide between R, I and J type
entity InstructionDecode is

    port(
        clk : in std_logic;
 
		  instruction_vector : in instruction_t);
		  
		 
end InstructionDecode;

architecture Behavioral of InstructionDecode is
   signal instruction : instruction_record;
begin
	instruction <= decompose_instruction(instruction_vector);
end Behavioral;

