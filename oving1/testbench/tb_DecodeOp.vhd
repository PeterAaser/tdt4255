library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

 
ENTITY tb_DecodeOp IS
END tb_DecodeOp;
 
ARCHITECTURE behavior OF tb_DecodeOp IS 

 
    COMPONENT DecodeOp
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         opcode : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         Branch : OUT  std_logic;
			Jump : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         MemWrite : OUT  std_logic;
         ALU_src : OUT  std_logic;
         RegWrite : OUT  std_logic;
         stall : OUT  std_logic;
			controlSrc : out std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal opcode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal Branch : std_logic;
	signal Jump : std_logic;
   signal MemRead : std_logic;
   signal MemtoReg : std_logic;
   signal MemWrite : std_logic;
   signal ALU_src : std_logic;
	signal ALU_op : ALU_op_t;
   signal RegWrite : std_logic;
   signal stall : std_logic;
	signal controlSrc : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DecodeOp PORT MAP (
          clk => clk,
          reset => reset,
          opcode => opcode,
          RegDst => RegDst,
          Branch => Branch,
			 Jump => Jump,
          MemRead => MemRead,
          MemtoReg => MemtoReg,
          MemWrite => MemWrite,
          ALU_src => ALU_src,
          RegWrite => RegWrite,
          stall => stall,
			 controlSrc => controlSrc
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

	-- OPS --
	-- j		00 00 10
	-- jal	00 00 11
	-- jr		00 10 00
	-- jalr	00 10 01
	-- beq	00 01 00
	-- bne	00 01 01
	-- lw		10 00 11
	-- sw		10 10 11

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		wait for clk_period;

		--
		-- J-TYPE
		--
		-- j
		-- Do nothing and let the PC sort it out
		opcode <= "000010"; 
		wait for clk_period;
		
		-- jal
		-- Do something with LR???
		opcode <= "000011";
		wait for clk_period;
	
		--
		-- R-TYPE
		--
		-- jr
		-- ??
		opcode <= "000000";
		wait for clk_period;
		
		-- jalr
		-- ??
		opcode <= "000000";
		wait for clk_period;
		
		--
		-- I-TYPE
		--
		-- beq
		-- SUB as ALU OP
		opcode <= "000100";
		wait for clk_period;
		
		-- bne
		-- SUB as ALU OP
		opcode <= "000101";
		wait for clk_period;
		
		-- lw
		opcode <= "100011";
		wait for clk_period;
		
		-- sw
		opcode <= "101011";
		wait for clk_period;
		
		assert false report "TEST SUCCESS" severity failure;
		wait until clk = '1';
      
   end process;

END;
