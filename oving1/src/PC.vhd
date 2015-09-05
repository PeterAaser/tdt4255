library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

entity ProgramCounter is
	generic(
		-- TODO assert that address width is supported
		ADDRESS_WIDTH : integer := 8);
   port(
      clk : in std_logic;
      reset : in std_logic;
      op_target : in target_t;
      op_immediate : in immediate_t;
      branch : in std_logic;
      -- name zero refers to condition to drive this signal to 1. Maybe refactor?
      zero : in std_logic;
      jump : in std_logic;
		tick : in std_logic;
      
      address_out : out std_logic_vector(ADDRESS_WIDTH - 1 downto 0));

end ProgramCounter;

architecture Behavioral of ProgramCounter is
   signal address : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
   signal jump_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
   signal branch_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
   signal branch_mux : std_logic;
   signal extended_immediate : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
	signal next_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
begin
   
   update : process(clk, reset)
   begin

      if reset = '1' then
			address <= (others => '0');
			jump_addr <= (others => '0');
			branch_addr <= (others => '0');
			next_addr <= (others => '0');
			
		elsif rising_edge(clk) then

			-- CALC JUMP ADDR --
			jump_addr(1 downto 0) <= "00";
			jump_addr(ADDRESS_WIDTH-1 downto ADDRESS_WIDTH-4) <= next_addr(ADDRESS_WIDTH-1 downto ADDRESS_WIDTH-4);
			jump_addr(ADDRESS_WIDTH-5 downto 2) <= op_target;
			
			-- SIGN EXTEND BRANCH ADDR --
			-- While data and address width is constrained, we walways assume 32 bit intructions
			extended_immediate(15 downto 0 ) <= (others => op_immediate(15));
			extended_immediate(31 downto 16) <= (op_immediate(15 downto 0));
			
			-- CALC BRANCH ADDR --
			--branch_addr <= next_addr + to_integer(unsigned(extended_immediate))(ADDRESS_WIDTH-1 downto 0);
			--branch_mux <= zero and branch;
			next_addr <= std_logic_vector(unsigned(address) + 1);
					
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
	
	get_next : process (tick)
	begin
		if tick = '1' then
			address_out <= address;
		end if;
	end process;
	
	
	
        
end Behavioral;