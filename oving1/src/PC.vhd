library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

entity ProgramCounter is
	
   port(
      clk : in std_logic;
      rst : in std_logic;
      op_target : in target_t;
      op_immediate : in immediate_t;
      branch : in std_logic;
      -- name zero refers to condition to drive this signal to 1 -- 
      zero : in std_logic;
      jump : in std_logic;
      
      address_out : out address_t);

end ProgramCounter;

architecture Behavioral of ProgramCounter is
   signal address : address_t;
   signal jump_addr : address_t;
   signal branch_addr : address_t;
   signal branch_mux : std_logic;
   signal extended_immediate : std_logic_vector(31 downto 0);
	signal next_addr : address_t;
begin
   
   tick : process(clk, rst)
   begin

      if rst = '1' then
			address <= (31 downto 0 => '0');
			jump_addr <= (31 downto 0 => '0');
			branch_addr <= (31 downto 0 => '0');
			next_addr <= x"00000001";
			
		elsif rising_edge(clk) then

			jump_addr(27 downto 2) <= op_target;
			jump_addr(31 downto 28) <= next_addr(31 downto 28);
			jump_addr(1 downto 0) <= "00";
			
			extended_immediate(15 downto 0 ) <= (others => '0');
			extended_immediate(31 downto 16) <= (op_immediate(15 downto 0));
			
			branch_addr <= next_addr + to_integer(unsigned(extended_immediate));
			branch_mux <= zero and branch;
			
			address_out <= address;
			next_addr <= address + 1;
					
         if jump = '1' then
            if branch_mux = '1' then
					report "branchin";
					address <= branch_addr;
				else
					report "Jumpin";
					address <= jump_addr;
				end if;
         else
				address <= next_addr;
         end if; 
      end if;
   end process;
	
	
        
end Behavioral;