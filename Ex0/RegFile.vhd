----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:30 08/31/2015 
-- Design Name: 
-- Module Name:    RegFile - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

use work.defs.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegFile is
	generic (
		size : natural := 1024);
	port (
    clk       		: in   std_logic;
    reset       	: in   std_logic;
	 write_enable	: in	 std_logic;
    addr		  		: in   integer;
	 data_in			: in   operand_t;
 	 data_out		: out  operand_t);

end RegFile;

architecture Behavioral of RegFile is
	type RegisterFileType is array(0 to size-1) of operand_t;
	signal regFile : RegisterFileType;
begin
	
		process (clk, reset) is
			begin
				if reset = '1' then
					regFile <= (0 => (others => '0'), others => (others => '0'));
				elsif rising_edge(clk) then
					if write_enable = '1' then
						regFile(addr) <= data_in;
					end if;
				end if;
			end process;
			
		data_out <= regFile(addr-1);

end Behavioral;

