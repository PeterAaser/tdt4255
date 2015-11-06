library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.all;

entity ProgramCounter is
    generic (
        ADDR_WIDTH : integer := 8
    );
    port (
        clk, reset          : in std_logic;
        branch_address_in   : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        stall               : in std_logic;
        pc_address_src      : in PC_addr_source_t;
		processor_enable	: in std_logic;
        
        if_pc               : out std_logic_vector(ADDR_WIDTH-1 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal address : std_logic_vector(ADDR_WIDTH - 1 downto 0) := (others => '0');
begin
    update: process(clk, reset, address)
    begin
        if reset = '1' then
            address <= (others => '0');
        elsif rising_edge(clk) then
				if processor_enable = '1' then
					if stall = '0' then
                         if_pc <= address;
						 if (pc_address_src = Branch_addr) then
							  address <= branch_address_in;
						 else
							  address <= std_logic_vector(unsigned(address) + 1);
						 end if;
					end if;
				end if;
        end if;
    end process;
    
end Behavioral;

