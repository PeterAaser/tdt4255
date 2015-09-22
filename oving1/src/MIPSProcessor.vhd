-- Part of TDT4255 Computer Design laboratory exercises
-- Group for Computer Architecture and Design
-- Department of Computer and Information Science
-- Norwegian University of Science and Technology

-- MIPSProcessor.vhd
-- The MIPS processor component to be used in Exercise 1 and 2.

-- TODO replace the architecture DummyArch with a working Behavioral

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MIPSProcessor is
    generic (
        ADDR_WIDTH : integer := 8;
        DATA_WIDTH : integer := 32
    );
    port (
        clk, reset 			: in std_logic;
        processor_enable		: in std_logic;
        imem_data_in			: in std_logic_vector(DATA_WIDTH-1 downto 0);
        imem_address			: out std_logic_vector(ADDR_WIDTH-1 downto 0);
        dmem_data_in			: in std_logic_vector(DATA_WIDTH-1 downto 0);
        dmem_address			: out std_logic_vector(ADDR_WIDTH-1 downto 0);
        dmem_data_out			: out std_logic_vector(DATA_WIDTH-1 downto 0);
        dmem_write_enable		: out std_logic
    );
end MIPSProcessor;

architecture MultiCycleMIPS of MIPSProcessor is
    signal program_counter : std_logic_vector(ADDR_WIDTH-1 downto 0) := (others=> '0');
    signal if_register : std_logic_vector(DATA_WIDTH-1 downto 0);
    type state_t is (S_FETCH, S_EXECUTE, S_STALL);
    signal state : state_t;
begin

    state_transitions : process(clk, reset)
    begin
        if reset = '1' then
            state <= S_FETCH;
        elsif rising_edge(clk) then
            case state is
                when S_FETCH=>
                    state <= S_EXECUTE;
                when S_EXECUTE=>
                    state <= S_FETCH;
                when others=>
                    null;
            end case;
        end if;
    end process;

    state_operations : process(state)
    begin
        case state is
            when S_FETCH=>
                if_register <= imem_data_in;
                program_counter <= std_logic_vector(unsigned(program_counter) + 1);
            when others=>
                null;
        end case;
                
    end process;

    dmem_write_enable <= processor_enable;
    imem_address <= program_counter;
    dmem_address <= (others=> '0');
    dmem_data_out <= (others=>'0');

end MultiCycleMIPS;

