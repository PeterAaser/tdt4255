library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Registers is
    generic (
        DATA_WIDTH : natural := 32;
        ADDR_WIDTH : natural := 5
    );
    port (
        clk, reset                  : in std_logic;
        read_reg_1, read_reg_2      : in std_logic_vector(ADDR_WIDTH downto 0);
        write_reg_addr              : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        RegWrite                    : in std_logic;
        write_data                  : in std_logic_vector(DATA_WIDTH-1 downto 0);
        read_data_1, read_data_2    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end Registers;

architecture Behavioral of Registers is
begin
    register_file: entity work.RegFile
        generic map(size => 2 ** ADDR_WIDTH)
        port map(
            clk => clk,
            reset => reset,
            write_enable => RegWrite,
            addr1 => to_integer(read_reg_1),
            addr2 => to_integer(read_reg_2),
            data_in => read_reg_2,
            data_out1 => read_data_1,
            data_out2 => read_data_2
        );
end Behavioral;

