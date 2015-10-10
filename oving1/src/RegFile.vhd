library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity RegFile is
    generic (
        DATA_WIDTH : natural := 32;
        SIZE : natural := 16
    );
    port (
        clk             : in   std_logic;
        reset           : in   std_logic;
        write_enable    : in   std_logic;
        addr1           : in   integer;
        addr2           : in   integer;
        data_in         : in   std_logic_vector(DATA_WIDTH-1 downto 0);
        data_out1       : out  std_logic_vector(DATA_WIDTH-1 downto 0);
        data_out2       : out  std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end RegFile;

architecture Behavioral of RegFile is
    type RegisterFileType is array(0 to SIZE-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal regFile : RegisterFileType;
begin

    process (clk, reset) is
    begin
        if reset = '1' then
            regFile <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if write_enable = '1' then
                regFile(addr1) <= data_in;
            end if;
        end if;
    end process;

    data_out1 <= regFile(addr1);
    data_out2 <= regFile(addr2);
end Behavioral;

