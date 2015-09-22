library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Registers is
    generic (
        REGISTER_WIDTH : integer := 32;
        REGISTER_ADDR_WIDTH : integer := 5;
    );
    port (
        clk, reset                  : in std_logic;
        read_reg_1, read_reg_2      : in std_logic_vector(REGISTER_ADDR_WIDTH-1 downto 0);
        write_reg_addr              : in std_logic_vector(REGISTER_ADDR_WIDTH-1 downto 0);
        write_reg                   : in std_logic;
        write_data                  : in std_logic_vector(REGISTER_WIDTH-1 downto 0);
        read_data_1, read_data_2    : out std_logic_vector(REGISTER_WIDTH-1 downto 0);
    );
end Registers;

architecture Behavioral of Registers is
    signal regfile_addr : std_logic_vector;
begin
    register_file: entity work.RegFile
        generic map(size => 32)
        port map(
            clk => clk,
            reset => reset,
            write_enable => write_reg,
            addr => to_integer(regfile_addr);
end Behavioral;

