library ieee;
use ieee.std_logic_1164.all;

entity tb_Registers is
end tb_Registers;

architecture Behavioral of Registers is
    -- Constants for DUT
    constant REGISTER_WIDTH : natural := 32;
    constant REGISTER_ADDR_WIDTH : natural := 5;

    -- Signals for the DUT
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal read_reg_1 : std_logic_vector(REGISTER_ADDR_WIDTH-1 downto 0);
    signal read_reg_2 : std_logic_vector(REGISTER_ADDR_WIDTH-1 downto 0);

