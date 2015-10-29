library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;

entity Registers is
    generic (
        DATA_WIDTH : natural := 32;
        REG_ADDR_WIDTH : natural := 5
    );
    port (
        clk, reset                              : in std_logic;
        read_reg_1, read_reg_2, write_reg       : in reg_t;
        RegWrite                                : in RegWrite_t;
        MemToReg                                : in MemtoReg_t;
        ALUResult, dmem_data                    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        read_data_1, read_data_2                : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end Registers;

architecture Behavioral of Registers is
    type RegisterFileType is array(0 to 2**REG_ADDR_WIDTH-1) of std_logic_vector(DATA_WIDTH-1 downto 0);
    signal regFile : RegisterFileType;
    signal write_reg_addr : std_logic_vector(REG_ADDR_WIDTH-1 downto 0);
    signal write_data : std_logic_vector(DATA_WIDTH-1 downto 0);
begin
    data_mux: process(clk, MemToReg, ALUresult, dmem_data)
    begin
        if MemToReg = FROM_ALU then
            write_data <= ALUResult;
        else
            write_data <= dmem_data;
        end if;
    end process;

    process (clk, reset)
    begin
        if reset = '1' then
            regFile <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if RegWrite = true then
                regFile(to_integer(unsigned(write_reg))) <= write_data;
            end if;
        end if;
    end process;

    read_data_1 <= regFile(to_integer(unsigned(read_reg_1)));
    read_data_2 <= regFile(to_integer(unsigned(read_reg_2)));
end Behavioral;

