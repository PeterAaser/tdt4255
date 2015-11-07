library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IFID is
    generic (
        DATA_WIDTH : integer := 32
    );
    port (
        clk, stall          : in std_logic;
        instruction_in      : in instruction_t;
        instruction_out     : out instruction_t
    );
end IFID;

architecture Behavioral of IFID is
begin
    update: process(clk)
    begin
        if rising_edge(clk) and stall = '0' then
            instruction_out <= instruction_in;
        end if;
    end process;
end Behavioral;

