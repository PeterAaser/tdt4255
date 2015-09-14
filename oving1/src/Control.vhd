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
		empty : in std_logic;
		stall : in std_logic;
        enable : in std_logic;
		
		tick : out std_logic;
		read_instruction : out std_logic);
		
end Control;


architecture Behavioral of Control is

	type state_type is (S_FETCH, S_EXECUTE, S_STALL, S_OFFLINE);
	signal state : state_type;

begin

	control_state : process(clk)
	begin
		if enable = '0' then
            state <= S_OFFLINE;
            read_instruction <= '0';
            tick <= '0';
		elsif reset = '1' then
			state <= S_FETCH;
		elsif rising_edge(clk) then
            read_instruction <= '0';
            tick <= '0';
			case state is
                when S_FETCH=>
                    state <= S_EXECUTE;
                    tick <= '1';
				when S_EXECUTE=>
					if stall = '0' then
                        read_instruction <= '1';
                        state <= S_FETCH;
					else
                        state <= S_STALL;
					end if;
				when S_STALL=>
                    state <= S_FETCH;
                    read_instruction <= '1';
				when S_OFFLINE=>
					state <= S_FETCH;
               read_instruction <= '1';
			end case;
		end if;
	end process;
	
end Behavioral;

