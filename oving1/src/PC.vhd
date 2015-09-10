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
   signal j_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
   signal b_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
   signal branch_mux : std_logic;
	signal next_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
	
begin
   update : process(clk, reset)
		variable jump_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
		variable branch_addr : std_logic_vector(ADDRESS_WIDTH - 1 downto 0);
   begin
      if reset = '1' then
			address <= (others => '0');
			address_out <= (others => '0');
			jump_addr := (others => '0');
			branch_addr := (others => '0');
			next_addr <= (others => '0');
			
		elsif rising_edge(clk) then
			
			address_out <= address;


			
			-- CALC JUMP ADDR --
			-- 4 most significant PC bits
			jump_addr(ADDRESS_WIDTH-1 downto ADDRESS_WIDTH-4) := next_addr(ADDRESS_WIDTH-1 downto ADDRESS_WIDTH-4);
			
			-- 2 least bits to 0
			jump_addr(1 downto 0) := "00";
			
			-- remaining bits set to target t
			jump_addr(ADDRESS_WIDTH-5 downto ADDRESS_WIDTH-6) := op_target(1 downto 0);
			
			
			
			-- CALC BRANCH ADDR --
			-- pointless with 8 bit address space...
			-- extended_immediate := std_logic_vector(resize(signed(op_immediate)
			-- branch_addr <= next_addr + to_integer(unsigned(extended_immediate))(ADDRESS_WIDTH-1 downto 0);
			-- branch_mux <= zero and branch;
			
			next_addr <= std_logic_vector(unsigned(address) + 1);
			
			if tick = '1' then
				if jump = '1' then
					if branch_mux = '1' then
						address <= branch_addr;
						address_out <= branch_addr;
						-- report "branchin'";
					else
						address <= jump_addr;
						address_out <= jump_addr;
						-- report "jumpin'";
					end if;
				else
					-- report "Incrementin'";
					address <= next_addr;
					address_out <= next_addr;
				end if; 
			end if;
      end if;
		
		j_addr <= jump_addr;
		b_addr <= branch_addr;
		
   end process;	
	      
end Behavioral;