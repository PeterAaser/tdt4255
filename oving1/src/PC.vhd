library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.defs.all;

entity ProgramCounter is
	
    port(
        clk : in std_logic;
        rst : in std_logic;

        next_addr : in address_t;
        current_addr : out address_t);

end ProgramCounter;

architecture Behavioral of ProgramCounter is
    
begin
    
    tick : process(clk, rst)
    begin
        if rst = '1' then
            current_addr <= (31 downto 0 => '0');
        elsif rising_edge(clk) then
            current_addr <= next_addr;
        end if;
    end process;
        
end Behavioral;