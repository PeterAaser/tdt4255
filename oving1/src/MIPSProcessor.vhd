-- Part of TDT4255 Computer Design laboratory exercises
-- Group for Computer Architecture and Design
-- Department of Computer and Information Science
-- Norwegian University of Science and Technology

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;

entity MIPSProcessor is
    generic (
        ADDRESS_WIDTH : integer := 8;
        DATA_WIDTH : integer := 32
    );
    port (
        clk, reset                      : in std_logic;
        processor_enable                : in std_logic;
        imem_data_in                    : in std_logic_vector(31 downto 0);     -- This is a 32 bit architecture, not an abstractProcessorFactoryFactoryFactory
        imem_address                    : out std_logic_vector(ADDRESS_WIDTH-1 downto 0);
        dmem_data_in                    : in std_logic_vector(DATA_WIDTH-1 downto 0);
        dmem_address                    : out std_logic_vector(ADDRESS_WIDTH-1 downto 0);
        dmem_data_out                   : out std_logic_vector(DATA_WIDTH-1 downto 0);
        dmem_write_enable               : out std_logic
    );
end MIPSProcessor;

architecture Behavioral of MIPSProcessor is
        
    -- Control signals
    signal control_signals : control_signals_t;

    signal opcode : opcode_t;
    signal r_s : reg_t;
    signal r_t : reg_t;
    signal r_d : reg_t;
    signal shift : shift_t;
    signal func : func_t;
    signal immediate : immediate_t;
    signal target : target_t;
    signal extended_immediate : std_logic_vector(31 downto 0);

    signal data1 : signed(DATA_WIDTH-1 downto 0);
    signal data2 : signed(DATA_WIDTH-1 downto 0);

    signal programCounter : std_logic_vector(ADDRESS_WIDTH-1 downto 0);
    signal fetch : std_logic;
    signal result_zero : std_logic;

    signal write_data : signed(DATA_WIDTH-1 downto 0);

    signal ALU_op : ALU_op_t;
    signal ALU_result : signed(DATA_WIDTH-1 downto 0);

    signal empty : std_logic;

    signal zero_invert : std_logic;
    signal zero : std_logic;
        

begin

    control: entity work.Control
    generic map(
        DATA_WIDTH => DATA_WIDTH,
        ADDRESS_WIDTH => ADDRESS_WIDTH
    )
    port map(
        reset => reset,
        clk => clk,

        empty => empty, 
        stall => stall,
        enable => processor_enable,
        fetch => fetch
    );

    program_counter: entity work.ProgramCounter
        generic map(
            ADDRESS_WIDTH => ADDRESS_WIDTH
        )
        port map(
            reset => reset,
            clk => clk,
            
            branch => Branch,
            zero => result_zero,
            jump => Jump,
            tick => fetch,
            
            op_target => target,
            op_immediate => immediate,
            address_out => ProgramCounter
        );
    
    registers: entity work.registers
        generic map(
            DATA_WIDTH => DATA_WIDTH
        )
        port map(
            reset => reset,
            clk => clk,
            
            RegWrite => RegWrite,
            read1_reg => r_s,
            read2_reg => r_t,
            write_reg => r_d,
            write_data => write_data,
    
            data1 => data1,
            data2 => data2
        );
            
    decode: entity work.Decode
        port map(
            reset => reset,
            clk => clk,
            func => func,
            opcode => opcode,
    
            -- settings -- 
            RegDst => RegDst,
            Branch => Branch,
            Jump => Jump,
            MemtoReg => MemtoReg,
            MemWrite => MemWrite,
            RegWrite => RegWrite,
            stall => stall,
            ALUsrc => ALUsrc,

            ALU_op => ALU_op);
    
    ALU: entity work.ALU
        generic map(
            DATA_WIDTH => DATA_WIDTH
        )
        port map(
            clk => clk,
    
            op_A => data1,
            op_B_reg => data2,
            op_B_imm => signed(extended_immediate),
            op_sel => ALU_op,
            zero => zero,
            zero_invert => zero_invert,
            ALUsrc => ALUsrc,
            
            result => ALU_result
        );
    
    fetch_next_instruction : process(clk)
    begin
        if fetch = '1' then
            imem_address <= ProgramCounter;
        end if;
    end process;
    
    access_RAM : process(clk)
    begin
        write_data <= signed(dmem_data_in);
        dmem_data_out <= std_logic_vector(data2);
        dmem_address <= std_logic_vector(ALU_result(ADDRESS_WIDTH-1 downto 0));
        if MemWrite = '1' then
            dmem_write_enable <= '1';       
        else
            dmem_write_enable <= '0';
        end if;
    end process;


    recieve_instruction : process(clk)
    begin
        opcode <= imem_data_in(31 downto 26);
        r_s <= imem_data_in(25 downto 21);
        r_t <= imem_data_in(20 downto 16);
        r_d <= imem_data_in(15 downto 11);
        shift <= imem_data_in(10 downto 6);
        func <= imem_data_in(5 downto 0);
        immediate <= imem_data_in(15 downto 0);
        target <= imem_data_in(25 downto 0);
        
        -- Sign extender --
        extended_immediate(31 downto 16 ) <= (others => imem_data_in(15));
        extended_immediate(15 downto 0) <= (imem_data_in(15 downto 0));
    end process;


end Behavioral;
