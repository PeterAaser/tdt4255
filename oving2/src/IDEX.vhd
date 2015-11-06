library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.ALL;

entity IDEX is
    Generic(
        DATA_WIDTH : integer := 32
    );
    Port ( clk                  : in STD_LOGIC;
           stall                : in STD_LOGIC;
           ControlSignals_in    : in control_signals_t;
           ReadData1_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           ReadData2_in         : in STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Immidiate_in         : in immediate_t;
           RegS_in              : in reg_t;
           RegT_in              : in reg_t;
           RegD_in              : in reg_t;
           Funct_in             : in funct_t;
           ControlSignals_out   : inout control_signals_t;
           ReadData1_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           ReadData2_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           Immidiate_out        : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
           RegS_out             : out reg_t;
           RegT_out             : out reg_t;
           RegD_out             : out reg_t;
           RegMux               : out reg_t;
           Funct_out            : out funct_t
   );
end IDEX;

architecture Behavioral of IDEX is
begin
    propagate : process(clk)
    begin
        if (rising_edge(clk)) then
            if (stall = '1') then
                ControlSignals_out.RegWrite <= false;
                ControlSignals_out.MemWrite <= false;
            else
                ControlSignals_out <= ControlSignals_in;
            end if;
            ReadData1_out <= ReadData1_in;
            ReadData2_out <= ReadData2_in;
            Immidiate_out <= std_logic_vector(resize(signed(Immidiate_in), 32));
            if (ControlSignals_in.RegDst = REGT) then
                RegMux  <= RegT_in;
            else
                RegMux  <= RegD_in;
            end if;
            RegD_out <= RegD_in;
            RegS_out <= RegS_in;
            RegT_out <= RegT_in;
            Funct_out <= Funct_in;
        end if;
    end process;
end Behavioral;

