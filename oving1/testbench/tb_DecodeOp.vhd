--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:15:30 09/03/2015
-- Design Name:   
-- Module Name:   /media/peter/stuff/sin bin/tdt4255/oving1/testbench/tb_DecodeOp.vhd
-- Project Name:  oving1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DecodeOp
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_DecodeOp IS
END tb_DecodeOp;
 
ARCHITECTURE behavior OF tb_DecodeOp IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DecodeOp
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         opcode : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         Branch : OUT  std_logic;
			Jump : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         MemWrite : OUT  std_logic;
         ALUsrc : OUT  std_logic;
         RegWrite : OUT  std_logic;
         stall : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal opcode : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal Branch : std_logic;
	signal Jump : std_logic;
   signal MemRead : std_logic;
   signal MemtoReg : std_logic;
   signal MemWrite : std_logic;
   signal ALUsrc : std_logic;
   signal RegWrite : std_logic;
   signal stall : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DecodeOp PORT MAP (
          clk => clk,
          rst => rst,
          opcode => opcode,
          RegDst => RegDst,
          Branch => Branch,
			 Jump => Jump,
          MemRead => MemRead,
          MemtoReg => MemtoReg,
          MemWrite => MemWrite,
          ALUsrc => ALUsrc,
          RegWrite => RegWrite,
          stall => stall
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
		opcode <= "000010"; 
		wait for clk_period;
		
		-- jal
		opcode <= "000011";
		wait for clk_period;
	
		--
		-- R-TYPE
		--
		-- jr
		opcode <= "000000";
		wait for clk_period;
		
		-- jalr
		opcode <= "000000";
		wait for clk_period;
		
		--
		-- I-TYPE
		--
		-- beq
		opcode <= "000100";
		wait for clk_period;
		
		-- bne
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
