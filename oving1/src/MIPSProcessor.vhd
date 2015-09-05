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
use work.defs.all;

entity MIPSProcessor is
	generic (
		ADDR_WIDTH : integer := 8;
		DATA_WIDTH : integer := 32
	);
	port (
		clk, reset 				: in std_logic;
		processor_enable		: in std_logic;
		imem_data_in			: in std_logic_vector(DATA_WIDTH-1 downto 0);
		imem_address			: out std_logic_vector(ADDR_WIDTH-1 downto 0);
		dmem_data_in			: in std_logic_vector(DATA_WIDTH-1 downto 0);
		dmem_address			: out std_logic_vector(ADDR_WIDTH-1 downto 0);
		dmem_data_out			: out std_logic_vector(DATA_WIDTH-1 downto 0);
		dmem_write_enable		: out std_logic
	);
end MIPSProcessor;

architecture Behavioral of MIPSProcessor is
	
	-- Control signals
	signal RegDst : std_logic;
	signal Branch : std_logic;
	signal Jump : std_logic;
	signal MemRead : std_logic;
	signal MemtoReg : std_logic;
	signal MemWrite : std_logic;
	signal ALUsrc : std_logic;
	signal RegWrite : std_logic;
	signal stall : std_logic;
	
	signal opcode : opcode_t;
	signal r_s : reg_t;
	signal r_t : reg_t;
	signal r_d : reg_t;
	signal shift : shift_t;
	signal func : func_t;
	signal immediate : immediate_t;
	signal target : target_t;
	
	signal data1 : signed(DATA_WIDTH-1 downto 0);
	signal data2 : signed(DATA_WIDTH-1 downto 0);
	
	signal programCounter : std_logic_vector(DATA_WIDTH-1 downto 0);
	signal tick : std_logic;
	signal result_zero : std_logic;

begin

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
			tick => tick
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
			write_data => write_reg_data,
		
			data1 => data1,
			data2 => data2
		);
	
	dmem_write_enable <= processor_enable;
	imem_address <= (others => '0');
	--dmem_address <= std_logic_vector(counterReg(7 downto 0));
	--dmem_data_out <= std_logic_vector(counterReg);

end Behavioral;

