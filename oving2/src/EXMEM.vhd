library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.ALL;

entity EXMEM is
    Generic(
        DATA_WIDTH : integer := 32
    );
    Port ( clk                  : in STD_LOGIC;
           control_signals_in   : in control_signals_t;
           ALUResult_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Reg_in              : in reg_t;
           ReadData2_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           
           control_signals_out  : out control_signals_t;
           ALUResult_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Reg_out              : out reg_t;
           ReadData2_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)

   );
end EXMEM;

architecture Behavioral of EXMEM is
begin
    propagate : process(clk)
    begin
        if (rising_edge(clk)) then --and stall = '0') then
            control_signals_out <= control_signals_in;
            ALUResult_out       <= ALUResult_in;
            Reg_out <= Reg_in;
            ReadData2_out <= ReadData2_in;
        end if;
    end process;
end Behavioral;

