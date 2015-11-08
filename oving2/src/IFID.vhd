library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;


entity IFID is
    generic (
        DATA_WIDTH : integer := 32;
        ADDR_WIDTH : integer := 8;
        INSTR_WIDTH : integer := 32
    );
    port (
        clk, stall          : in std_logic;
        imem_data_in        : in std_logic_vector(INSTR_WIDTH - 1 downto 0);
        imem_address        : out std_logic_vector(ADDR_WIDTH - 1 downto 0);

        instruction_out     : out instruction_t;
        pc_in               : in std_logic_vector(ADDR_WIDTH - 1 downto 0);
        pc_out              : out std_logic_vector(ADDR_WIDTH - 1 downto 0)
    );
end IFID;

architecture Behavioral of IFID is
begin
    update : process(clk)
    begin
        if rising_edge(clk) and stall = '0' then
            pc_out <= pc_in;
        end if;
    end process;
    
    fetch : process(pc_in, stall)
    begin
        if stall = '0' then
            imem_address <= pc_in;
        end if;
    end process;
    
    instruction_out <= make_instruction(imem_data_in);
    
end Behavioral;

