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
        pc_src              : in std_logic;
        incremented_address : out std_logic_vector(ADDR_WIDTH-1 downto 0);
        imem_address        : out std_logic_vector(ADDR_WIDTH-1 downto 0)
    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal address : std_logic_vector(ADDR_WIDTH - 1 downto 0);
begin
    update: process(clk, reset, address)
    begin
        if reset = '1' then
            address <= (others => '0');
        elsif rising_edge(clk) then
            if (pc_src = '1') then
                address <= branch_address_in;
            else
                address <= std_logic_vector(unsigned(address) + 1);
            end if;
            
        end if;
        imem_address <= address;
        incremented_address <= std_logic_vector(unsigned(address) + 1);
    end process;
    
end Behavioral;

