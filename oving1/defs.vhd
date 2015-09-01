library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

package defs is
	subtype address_t is std_logic_vector(31 downto 0);
	subtype instruction_t is std_logic_vector(31 downto 0);
	
	subtype opcode_t is std_logic_vector(6 downto 0);
	subtype r_t is std_logic_vector(5 downto 0);
	subtype shift_t is std_logic_vector(5 downto 0);
	subtype func_t is std_logic_vector(5 downto 0);
	subtype immediate_t is std_logic_vector(15 downto 0);
	subtype target_t is std_logic_vector(25 downto 0);
	
	-- enumerates the three formats we will conside
	type instruction_format_t is (R_TYPE, I_TYPE, J_TYPE);
   
   -- not all used. 
   type func_op_t is (
      add, sub, addu, subu, mult, div, multu, divu, mfhi, mflo, 
      iand, ior, inor, ixor, isll, isrl, isra, islt, isltu, jr, jalr
   );
	   
   function get_format ( op : opcode_t) return instruction_format_t;
	function get_function ( func : func_t) return func_op_t;
   function "+" (lhs : address_t; rhs : integer) return address_t;
   
  
end package defs;


package body defs is

   function "+" (lhs : address_t; rhs : integer) return address_t is
   begin
      return address_t( std_logic_vector( unsigned( lhs ) + rhs));
   end "+";

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

   

   function get_function ( func : func_t) return func_op_t is
   begin
      case func is
         when "100000" => return add;
         when "100001" => return addu;
         when "100100" => return iand;
         when "011010" => return div;
         when "011011" => return divu;
         when "001000" => return jr;
         when "001001" => return jalr;
         when "010000" => return mfhi;
         when "010010" => return mflo;
         when "011000" => return mult;
         when "011001" => return multu;
         when "100111" => return inor;
         when "100110" => return ixor;
         when "100101" => return ior;
         when "101010" => return islt;
         when "101011" => return isltu;
         when "000000" => return isll;
         when "000010" => return isrl;
         when "000011" => return isra;
         when "100010" => return sub;
         when "100011" => return subu;
         when others => return add;
      end case;
   end get_function;

end defs;
