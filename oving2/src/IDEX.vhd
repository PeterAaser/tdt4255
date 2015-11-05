library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.ALL;

entity IDEX is
    Generic(
        DATA_WIDTH : integer := 32
    );
    Port ( clk                  : in STD_LOGIC;
           ControlSignals_in    : in control_signals_t;
           ReadData1_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           ReadData2_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Immidiate_in         : in immediate_t;
           RegT_in              : in reg_t;
           RegD_in              : in reg_t;
           ControlSignals_out   : out control_signals_t;
           ReadData1_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           ReadData2_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Immidiate_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           RegT_out             : out reg_t;
           RegD_out             : out reg_t
   );
end IDEX;

architecture Behavioral of IDEX is
begin
    propagate : process(clk)
    begin
        if (rising_edge(clk)) then
           ReadData1_out <= ReadData1_in;
           ReadData2_out <= ReadData2_in;
           Immidiate_out <= std_logic_vector(resize(signed(Immidiate_in), 32));
           RegT_out      <= RegT_in;
           RegT_out      <= RegD_in;
       end if;
    end process;
end Behavioral;

