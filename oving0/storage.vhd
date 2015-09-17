----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:42:16 08/26/2015 
-- Design Name: 
-- Module Name:    storage - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity storage is
    Port ( stack_in : in  operand_t;
           clk : in  STD_LOGIC;
			  push : in std_logic;
			  pop : in std_logic;
           stack_ptr : in integer;
           stack_top : out operand_t;
			  rst : std_logic);
end storage;

architecture Behavioral of storage is
	signal ram : ram_t := (others => (others => '0'));	
begin

	do_RAM_stuff : process(clk, rst)
	begin
		if rst = '1' then
			stack_top <= (others => '0');
		elsif rising_edge(clk) then
			if push = '1' then
				ram(stack_ptr + 1) <= stack_in;
				stack_top <= stack_in;
			elsif pop = '1' then
				stack_top <= ram(stack_ptr - 1);
			else
				stack_top <= ram(stack_ptr);
			end if;
		end if;
	end process;
	


end Behavioral;

