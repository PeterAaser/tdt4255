library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;


entity Control is
	generic(
		DATA_WIDTH : integer := 32;
		ADDRESS_WIDTH : integer := 8);
	port (
		clk : in std_logic;
		reset : in std_logic;
		-- from PC --
		address : in std_logic_vector(ADDRESS_WIDTH downto 0);
		-- from instruction mem --
		instruction : in instruction_t;
		empty : in std_logic;
		-- from decodeOp --
		stall : in std_logic;
		
		-- to PC
		tick : out std_logic;
		-- to instruction mem
		read : out std_logic);
		
end Control;

architecture Behavioral of Control is

	type state_type is (S_FETCH, S_EXECUTE, S_STALL);
	signal state : state_type;
	signal current_instruction : instruction_t;
	signal current_address : std_logic_vector(ADDRESS_WIDTH downto 0);

begin

	control_state : process(clk, reset)
	begin
		if reset = '1' then
			state <= S_FETCH;
		elsif rising_edge(clk) then
			case state is
				when S_FETCH=>
					state <= S_EXECUTE;
				when S_EXECUTE=>
					if stall = '0' then
						state <= S_FETCH;
					else
						state <= S_STALL;
					end if;
				when S_STALL=>
					state <= S_FETCH;
			end case;
		end if;
	end process;
	
	-- TODO experiment with sensitivity lists --
	control_execution : process(clk, reset, stall)
	begin
		if rising_edge(clk) then
			case state is 
				when S_FETCH=>
					read <= '1';
				when S_EXECUTE=>
					read <= '0';
					if stall = '0' then
						tick <= '1';
					else
						tick <= '0';
					end if;
				when S_STALL=>
					read <= '0';
					tick <= '1';
			end case;
		end if;
	end process;

end Behavioral;

