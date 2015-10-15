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
    signal RegDst : std_logic := '0';
    signal Branch : std_logic := '0';
    signal Jump : std_logic := '0';
    signal MemRead : std_logic := '0';
    signal MemToReg : std_logic := '0';
    signal ALUOp : std_logic_vector(1 downto 0) := "00";
    signal MemWrite : std_logic := '0';
    signal ALUSrc : std_logic := '0';
    signal RegWrite : std_logic := '0';
    signal PCWrite : std_logic := '0';
begin

    control: entity work.Control
    generic map(
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        clk => clk,
        reset => reset,
        processor_enable => processor_enable,
        instruction => imem_data_in,
        RegDst => RegDst,
        Branch => Branch,
        Jump => Jump,
        MemToReg => MemToReg,
        ALUOp => ALUOp,
        MemWrite => MemWrite,
        ALUSrc => ALUSrc,
        RegWrite => RegWrite,
        PCWrite => PCWrite
    );

    program_counter: entity work.ProgramCounter
    generic map(
        ADDR_WIDTH => ADDR_WIDTH
    )
    port map(
        reset => reset,
        clk => clk,
		  jump => Jump,
		  branch => Branch,
		  zero => Zero,
		  instruction => imem_data_in(25 downto 0),
        pc_write => PCWrite,
        address_out => program_counter_val
    );
    
    registers: entity work.Registers
    generic map(
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        clk => clk,
        reset => reset,
        read_reg_1 => imem_data_in(25 downto 21),
        read_reg_2 => imem_data_in(20 downto 16),
        read_reg_3 => imem_data_in(15 downto 11),
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
        read_data_1 => read_data_1,
        read_data_2 => read_data_2,
        instruction => imem_data_in(15 downto 0),
        ALUOp => ALUOp,
        Zero => Zero,
        ALUResult => ALUResult,
        ALUSrc => ALUSrc
    );
    
    -- IMEM
    imem_address <= program_counter_val;
    -- DMEM
    dmem_address <= ALUResult(7 downto 0);
    dmem_data_out <= read_data_2;
    dmem_write_enable <= MemWrite;
end MultiCycleMIPS;

