library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package defs is
	subtype address_t is std_logic_vector(31 downto 0);
	subtype instruction_t is std_logic_vector(31 downto 0);
	
	subtype opcode_t is std_logic_vector(6 downto 0);
	subtype r_t is std_logic_vector(5 downto 0);
	subtype shift_t is std_logic_vector(5 downto 0);
	subtype func_t is std_logic_vector(6 downto 0);
	subtype immediate_t is std_logic_vector(15 downto 0);
	subtype target_t is std_logic_vector(25 downto 0);
	
	-- enumerates the three formats we will conside
	type instruction_format_t is (R_TYPE, I_TYPE, J_TYPE);
	
	type instruction_record is 
		record
         format : instruction_format_t;
			opcode : opcode_t;
			rs : r_t;
			rt : r_t;
			rd : r_t;
			shift : shift_t;
			func : func_t;
		end record;
      
   function get_format ( op : opcode_t) return instruction_format_t;
	function decompose_instruction ( instruction : instruction_t) return instruction_record;
   
end package defs;


package body defs is

   function get_format ( op : opcode_t) return instruction_format_t is
   begin
      if op = "000000" then
         return R_TYPE;
      elsif op(1) = '0' and op(4) = '0' then
         return I_TYPE;
      else
         return J_TYPE;
      end if;
   end get_format;
      
	function decompose_instruction ( instruction : instruction_t) return instruction_record is
		variable r : instruction_record;
	begin
		r.opcode := instruction(31 downto 26);
		r.rs := instruction(25 downto 21);
		r.rt := instruction(20 downto 16);
		r.rd := instruction(15 downto 11);
		r.shift := instruction(10 downto 6);
		r.func := instruction(5 downto 0);
      r.format := get_format(instruction(31 downto 26));
		return r;
	end decompose_instruction;
end defs;
