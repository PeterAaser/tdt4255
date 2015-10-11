library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Registers is
    generic (
        DATA_WIDTH : natural := 32;
        ADDR_WIDTH : natural := 5
    );
    port (
        clk, reset                              : in std_logic;
        read_reg_1, read_reg_2, read_reg_3      : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        RegWrite                                : in std_logic;
        RegDst                                  : in std_logic;
        write_data                              : in std_logic_vector(DATA_WIDTH-1 downto 0);
        read_data_1, read_data_2                : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end Registers;

architecture Behavioral of Registers is
    type RegisterFileType is array(0 to 2**ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal regFile : RegisterFileType;
    signal write_reg_addr : std_logic_vector(ADDR_WIDTH-1 downto 0);
begin

    mux: process(RegDst)
    begin
        if RegDst = '0' then
            write_reg_addr <= read_reg_2;
        else
            write_reg_addr <= read_reg_3;
    end process;

    process (clk, reset) is
    begin
        if reset = '1' then
            regFile <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if write_enable = '1' then
                regFile(write_reg_addr) <= write_data;
            end if;
        end if;
    end process;

    read_data_1 <= regFile(read_reg_1);
    read_data_2 <= regFile(read_reg_2);
end Behavioral;

