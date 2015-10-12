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
use work.Defs.all;

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
    -- PC out signals
    signal program_counter_val : std_logic_vector(ADDR_WIDTH-1 downto 0);
    -- IMEM out signals
    signal instruction : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- Register out signals
    signal read_data_1, read_data_2 : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- ALU out signals
    signal Zero : std_logic; 
    signal ALUResult : std_logic_vector(DATA_WIDTH-1 downto 0);
    -- Control out signals
    signal RegDst : std_logic;
    signal Branch : std_logic;
    signal MemRead : std_logic;
    signal MemToReg : std_logic;
    signal ALUOp : std_logic_vector(1 downto 0);
    signal MemWrite : std_logic;
    signal ALUSrc : std_logic;
    signal RegWrite : std_logic;
begin

    control: entity work.Control
    port map(
        opcode => instruction(31 downto 26),
        RegDst => RegDst,
        Branch => Branch,
        MemRead => MemRead,
        MemToReg => MemToReg,
        ALUOp => ALUOp,
        MemWrite => MemWrite,
        ALUSrc => ALUSrc,
        RegWrite => RegWrite
    );

    program_counter: entity work.ProgramCounter
    generic map(
        ADDR_WIDTH => ADDR_WIDTH
    )
    port map(
        reset => reset,
        clk => clk,
        pc_write => pc_write,
        address_out => program_counter_val
    );
    
    registers: entity work.Registers
    generic map(
        DATA_WIDTH => WIDTH
    )
    port map(
        clk => clk,
        reset => reset,
        read_reg_1 => instruction(25 downto 21),
        read_reg_2 => instruction(20 downto 16),
        read_reg_3 => instruction(15 downto 11),
        ALUResult => ALUResult,
        dmem_data => dmem_data_in,
        MemToReg => MemToReg,
        RegWrite => RegWrite,
        RegDst => RegDst,
        read_data_1 => read_data_1,
        read_data_2 => read_data_2
    );

    alu: entity work.ALU
    port map(
        clk => clk,
        reset => reset,
        read_data_1 => read_data_1,
        read_data_2 => read_data_2,
        instruction => instruction(5 downto 0),
        ALUOp => ALUOp,
        Zero => Zero,
        ALUResult => ALUResult,
        ALUSrc => ALUSrc
    );
    
    -- IMEM
    imem_addres <= program_counter_val;
    instruction <= imem_data_in;
    -- DMEM
    dmem_address <= ALUResult;
end MultiCycleMIPS;
