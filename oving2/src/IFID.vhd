library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;


entity IFID is
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 8
    );
    port (
        clk, stall          : in std_logic;
        instruction_in      : in instruction_t;
        instruction_out     : out instruction_t;
        pc_in               : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        pc_out              : out std_logic_vector(ADDR_WIDTH - 1 downto 0)
    );
end IFID;

architecture Behavioral of IFID is
begin
    update: process(clk)
    begin
        if rising_edge(clk) and stall = '0' then
            instruction_out <= instruction_in;
            pc_out <= pc_in;
        end if;
    end process;
end Behavioral;

