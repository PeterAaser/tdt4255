library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.ALL;

entity MEMWB is
    Generic(
        DATA_WIDTH : integer := 32
    );
    Port ( clk                  : in STD_LOGIC;
           control_signals_in   : in control_signals_t;
           ALUResult_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Reg_in               : in reg_t;
           
           control_signals_out  : out control_signals_t;
           ALUResult_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Reg_out              : out reg_t

   );
end MEMWB;

architecture Behavioral of MEMWB is
begin
    propagate : process(clk)
    begin
        if (rising_edge(clk)) then
            control_signals_out <= control_signals_in;
            ALUResult_out       <= ALUResult_in;
            Reg_out <= Reg_in;

        end if;
    end process;
end Behavioral;

