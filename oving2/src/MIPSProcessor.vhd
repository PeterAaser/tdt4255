-- Part of TDT4255 Computer Design laboratory exercises
-- Group for Computer Architecture and Design
-- Department of Computer and Information Science
-- Norwegian University of Science and Technology

-- MIPSProcessor.vhd
-- The MIPS processor component to be used in Exercise 1 and 2.

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
        clk, reset 			    : in std_logic;
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
    signal pc_address_src : pc_addr_source_t;
    signal branch_address : std_logic_vector(ADDR_WIDTH-1 downto 0);
    
    -- Forward
    signal forward_id_a : Forward_t;
    signal forward_id_b : Forward_t;
    signal forward_ex_a : Forward_t;
    signal forward_ex_b : Forward_t;
    signal ex_read_data_2_forwarded : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    -- IF
    signal if_stall : std_logic;
    signal if_instruction : instruction_t;
    signal if_pc : std_logic_vector(ADDR_WIDTH-1 downto 0);
    
    -- ID
    signal id_instruction : instruction_t;
    signal id_stall : std_logic;
    signal id_pc : std_logic_vector(ADDR_WIDTH - 1 downto 0);
    signal id_read_data_1: std_logic_vector(DATA_WIDTH-1 downto 0);
    signal id_read_data_2: std_logic_vector(DATA_WIDTH-1 downto 0);
    
    
    -- EX
    signal ex_control_signals : control_signals_t;
    signal tmp_control_signals : control_signals_t;
    signal ex_funct : funct_t;
    signal ex_extended_immediate : std_logic_vector(DATA_WIDTH-1 downto 0); 
    signal ex_read_data_1 : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ex_read_data_2 : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal ex_reg_s     : reg_t;
    signal ex_reg_t     : reg_t;
    signal ex_reg_d     : reg_t;
    signal ex_reg_mux   : reg_t;
    
    -- MEM
    signal mem_read_data_2 : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal alu_result : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal mem_alu_result : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal mem_zero : std_logic;
    signal mem_control_signals : control_signals_t;
    signal mem_write_reg : reg_t;
    
    -- WB
    signal wb_control_signals : control_signals_t;
    signal wb_write_reg : reg_t;
    signal wb_alu_result : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal wb_out : std_logic_vector(DATA_WIDTH-1 downto 0);
    
    -- hazards
    signal data_hazard : std_logic;
    signal control_hazard : std_logic;
    
begin
    
    control: entity work.Control
    generic map(
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        clk => clk,
        instruction => id_instruction,
        
        control_signals => tmp_control_signals,
        
        data_hazard      => data_hazard,
        control_hazard   => control_hazard
    );

    program_counter: entity work.ProgramCounter
    generic map(
        ADDR_WIDTH => ADDR_WIDTH
    )
    port map(
        reset => reset,
        clk => clk,
		processor_enable => processor_enable,
        pc_address_src => pc_address_src,
        branch_address_in => branch_address,
        if_pc => if_pc,
        stall => data_hazard
    );
    
    registers: entity work.Registers
    generic map(
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        clk => clk,
        reset => reset,
        processor_enable => processor_enable,
        read_reg_1 => id_instruction.regs,
        read_reg_2 => id_instruction.regt,
        write_reg => wb_write_reg,
        write_data => wb_out,
        RegWrite => wb_control_signals.RegWrite,
        read_data_1 => id_read_data_1,
        read_data_2 => id_read_data_2
    );
    
    branch: entity work.Branch
    generic map(
        ADDR_WIDTH => ADDR_WIDTH,
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        op                  => id_instruction.opcode,
        immediate           => id_instruction.immediate,
        pc                  => id_pc,

        read_data_1         => id_read_data_1,
        read_data_2         => id_read_data_2,
        
        pc_address_src      => pc_address_src,
        address_out         => branch_address
    );

    alu: entity work.ALU
    port map(
        read_data_1 => ex_read_data_1,
        read_data_2 => ex_read_data_2,
        extended_immediate => ex_extended_immediate,
        
        forward_a => forward_ex_a,
        forward_b => forward_ex_b,
        wb_out_result => wb_out,
        mem_alu_result => mem_alu_result,
        
        op => ex_control_signals.op,
        funct => ex_funct,
        ALU_source => ex_control_signals.ALU_source,
        
        result => alu_result,
        ex_read_data_2_forwarded => ex_read_data_2_forwarded
    );
    
    hazard_detector: entity work.Hazard_detection
    port map(
        clk                 => clk,
        id_reg_a            => id_instruction.regs,
        id_reg_b            => id_instruction.regt,
        ex_reg_dest         => ex_reg_d,
		processor_enable 	=> processor_enable,
        ex_op               => ex_control_signals.op,
        
        pc_address_src      => pc_address_src,
        
        data_hazard         => data_hazard,
        control_hazard      => control_hazard 
    );
    
    forward: entity work.Forwarding
    port map(
        mem_regd            => mem_write_reg,
        wb_regd             => wb_write_reg,
        id_regs             => id_instruction.regs,
        id_regt             => id_instruction.regt,
        ex_regs             => ex_reg_s,
        ex_regt             => ex_reg_t,
        mem_regwrite        => mem_control_signals.RegWrite,
        wb_regwrite         => wb_control_signals.RegWrite,
        forward_id_a           => forward_id_a,
        forward_id_b           => forward_id_b,
        forward_ex_a           => forward_ex_a,
        forward_ex_b           => forward_ex_b
    );
    
    ifid_inst: entity work.IFID
    generic map(
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        clk => clk,
        stall => data_hazard,
        
        imem_address => imem_address,
        instruction_in => if_instruction,
        
        instruction_out => id_instruction,
        pc_in => if_pc,
        pc_out => id_pc
    );
    
    idex: entity work.IDEX
    generic map(
        DATA_WIDTH => DATA_WIDTH
    )
    port map(
        clk => clk,
        stall               => data_hazard,
        ControlSignals_in   => tmp_control_signals,
        ReadData1_in        => id_read_data_1,
        ReadData2_in        => id_read_data_2,
        ForwardedData_in    => wb_out,
        ForwardData1        => forward_id_a,
        ForwardData2        => forward_id_b,
        Immidiate_in        => id_instruction.immediate,
        RegS_in             => id_instruction.regs,
        RegT_in             => id_instruction.regt,
        RegD_in             => id_instruction.regd,
        Funct_in            => id_instruction.funct,
        ControlSignals_out  => ex_control_signals,
        ReadData1_out       => ex_read_data_1,
        ReadData2_out       => ex_read_data_2,
        Immidiate_out       => ex_extended_immediate,
        RegS_out            => ex_reg_s,
        RegT_out            => ex_reg_t,
        RegD_out            => ex_reg_d,
        RegMux              => ex_reg_mux,
        Funct_out           => ex_funct
        );
    
    exmem: entity work.EXMEM
    port map(
        clk => clk,
        control_signals_in  => ex_control_signals,
        ALUResult_in        => alu_result,
        Reg_in              => ex_reg_mux,
        ReadData2_in        => ex_read_data_2_forwarded,
        control_signals_out => mem_control_signals,
        ALUResult_out       => mem_alu_result,
        Reg_out             => mem_write_reg,
        ReadData2_out       => mem_read_data_2
        );
    
    memwb: entity work.MEMWB
    port map(
        clk => clk,
        control_signals_in  => mem_control_signals,
        ALUResult_in        => mem_alu_result,
        Reg_in              => mem_write_reg,
        control_signals_out => wb_control_signals,
        ALUResult_out       => wb_alu_result,
        Reg_out             => wb_write_reg
    );

    wb_mux: process(wb_control_signals.MemtoReg, wb_alu_result, dmem_data_in)
    begin
        if(wb_control_signals.MemtoReg = FROM_ALU) then
            wb_out <= wb_alu_result;
        else
            wb_out <= dmem_data_in;
        end if;
    end process;


    -- DMEM
    if_instruction <= make_instruction(imem_data_in);
    dmem_address <= mem_alu_result(7 downto 0);
    dmem_data_out <= mem_read_data_2;

    dmem_write_enable <= '1' when mem_control_signals.MemWrite else '0';
end MultiCycleMIPS;

