library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

 
ENTITY tb_DecodeFunc IS
END tb_DecodeFunc;
 
ARCHITECTURE behavior OF tb_DecodeFunc IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DecodeFunc
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         func : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         Branch : OUT  std_logic;
         Jump : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         MemWrite : OUT  std_logic;
         RegWrite : OUT  std_logic;
         stall : OUT  std_logic;
         ALU_op : OUT  ALU_op_t
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal func : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal Branch : std_logic;
   signal Jump : std_logic;
   signal MemtoReg : std_logic;
   signal MemWrite : std_logic;
   signal RegWrite : std_logic;
   signal stall : std_logic;
   signal ALU_op : ALU_op_t;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DecodeFunc PORT MAP (
          clk => clk,
          reset => reset,
          func => func,
          RegDst => RegDst,
          Branch => Branch,
          Jump => Jump,
          MemtoReg => MemtoReg,
          MemWrite => MemWrite,
          RegWrite => RegWrite,
          stall => stall,
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
 
	-- OPS --
	-- add	10 00 00
	-- sub	10 00 10
	-- or		10 01 01
	-- and	10 01 00
	-- slt	10 10 10

   -- Stimulus process
   stim_proc: process
   begin
	
      wait for clk_period;
		-- add
		func <= b"100000";
		wait for clk_period;
		
		-- sub 
		func <= b"100010";
		wait for clk_period;
		
		report "What the fuck is going on?";
		
		assert false report "DONE" severity failure;
		wait until clk = '1';
 
   end process;

END;
