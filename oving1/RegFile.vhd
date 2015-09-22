library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity RegFile is
    generic (
        size : natural := 32
    );
    port (
        clk             : in   std_logic;
        reset           : in   std_logic;
        write_enable    : in   std_logic;
        addr            : in   integer;
        data_in         : in   operand_t;
        data_out        : out  operand_t);
end RegFile;

architecture Behavioral of RegFile is
    type RegisterFileType is array(0 to size-1) of operand_t;
    signal regFile : RegisterFileType;
begin

    process (clk, reset) is
    begin
        if reset = '1' then
            regFile <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if write_enable = '1' then
                regFile(addr) <= data_in;
            end if;
        end if;
    end process;

    data_out <= regFile(addr-1);

end Behavioral;

