library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.ALL;

entity IFID is
    Generic(
        DATA_WIDTH : integer := 32
    );
    Port ( clk              : in STD_LOGIC;
           imem_data_in     : in STD_LOGIC_VECTOR (DATA_WIDTH-1 downto 0);
           instruction      : out instruction_t
   );
end IFID;

architecture Behavioral of IFID is
begin
    propagate : process(clk)
    begin
        if (rising_edge(clk)) then
            instruction <= make_instruction(imem_data_in);
        end if;
    end process;
end Behavioral;

