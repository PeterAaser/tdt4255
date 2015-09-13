LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
use work.testutil.all;

ENTITY tb_Decode IS
END tb_Decode;
 
ARCHITECTURE behavior OF tb_Decode IS 

 
    COMPONENT Decode
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         opcode : IN  std_logic_vector(5 downto 0);
         func : IN  std_logic_vector(5 downto 0);
         zero_invert : OUT  std_logic;
         RegDst : OUT  std_logic;
         Branch : OUT  std_logic;
         Jump : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         MemWrite : OUT  std_logic;
         RegWrite : OUT  std_logic;
         stall : OUT  std_logic;
         ALU_select : OUT  std_logic;
         ALU_op : OUT  ALU_op_t
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal opcode : std_logic_vector(5 downto 0) := (others => '0');
   signal func : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal zero_invert : std_logic;
   signal RegDst : std_logic;
   signal Branch : std_logic;
   signal Jump : std_logic;
   signal MemtoReg : std_logic;
   signal MemWrite : std_logic;
   signal RegWrite : std_logic;
   signal stall : std_logic;
   signal ALU_select : std_logic;
   signal ALU_op : ALU_op_t;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decode PORT MAP (
          clk => clk,
          reset => reset,
          opcode => opcode,
          func => func,
          zero_invert => zero_invert,
          RegDst => RegDst,
          Branch => Branch,
          Jump => Jump,
          MemtoReg => MemtoReg,
          MemWrite => MemWrite,
          RegWrite => RegWrite,
          stall => stall,
          ALU_select => ALU_select,
          ALU_op => ALU_op
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	
	-- FUNCS --
	-- add	10 00 00
	-- sub	10 00 10
	-- or		10 01 01
	-- and	10 01 00
	-- slt	10 10 10
	
	-- OPS --
	-- j		00 00 10
	-- jal	00 00 11
	-- jr		00 10 00
	-- jalr	00 10 01
	-- beq	00 01 00
	-- bne	00 01 01
	-- lw		10 00 11
	-- sw		10 10 11
	-- R		00 00 00
 

   -- Stimulus process
   stim_proc: process
   begin
		report "###";
		report "### SIMULATING DECODE UNIT";
		report "###";
		wait for clk_period/4;
		
		--
		--
		-- J-TYPE
		--
		-- j
		-- Do nothing and let the PC sort it out
		report "j";
		opcode <= "000010";
		func <= "101011";	--sw
		wait for clk_period;
		
		-- jal
		-- Do something with LR???
		report "jal";
		opcode <= "000011";
		func <= "001000";	--jr
		wait for clk_period;
	
		--
		-- R-TYPE
		--
		-- add
		report "add";
		opcode <= "000000";
		func <= "100000";
		wait for clk_period;
		
		-- sub
		report "sub";
		func <= "100010";
		wait for clk_period;
		
		-- or
		report "or";
		func <= "100101";
		wait for clk_period;
		
		-- and
		report "and";
		func <= "100100";
		wait for clk_period;
		
		-- slt
		report "slt";
		func <= "101010";
		wait for clk_period;
		
		--
		-- I-TYPE
		--
		-- beq
		-- SUB as ALU OP
		report "beq";
		opcode <= "000100";
		wait for clk_period;
		
		-- bne
		-- SUB as ALU OP
		report "bne";
		opcode <= "000101";
		wait for clk_period;
		
		-- lw
		report "lw";
		opcode <= "100011";
		func <= "100100"; --and
		wait for clk_period;
		
		-- sw
		report "sw";
		opcode <= "101011";
		func <= "100101"; --or
		wait for clk_period;
		
		assert false report "DONE" severity failure;
		wait until clk = '1';

      wait;
   end process;

END;
