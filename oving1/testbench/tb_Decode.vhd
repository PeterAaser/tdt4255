--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:25:30 09/01/2015
-- Design Name:   
-- Module Name:   /media/peter/stuff/sin bin/tdt4255/oving1/testbench/tb_Decode.vhd
-- Project Name:  oving1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstructionDecode
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
 
ENTITY tb_Decode IS
END tb_Decode;
 
ARCHITECTURE behavior OF tb_Decode IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstructionDecode
    PORT(
         clk : IN  std_logic;
         instruction_vector : IN  std_logic_vector(31 downto 0);
         target : OUT  std_logic_vector(25 downto 0);
         immediate : OUT  std_logic_vector(15 downto 0);
         rs : OUT  std_logic_vector(4 downto 0);
         rt : OUT  std_logic_vector(4 downto 0);
         rd : OUT  std_logic_vector(4 downto 0);
         func : OUT  std_logic_vector(4 downto 0);
         RegDst : OUT  std_logic;
         Branch : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         ALUOp : OUT  std_logic_vector(5 downto 0);
         MemWrite : OUT  std_logic;
         ALUsrc : OUT  std_logic;
         RegWrite : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal instruction_vector : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal target : std_logic_vector(25 downto 0);
   signal immediate : std_logic_vector(15 downto 0);
   signal rs : std_logic_vector(4 downto 0);
   signal rt : std_logic_vector(4 downto 0);
   signal rd : std_logic_vector(4 downto 0);
   signal func : std_logic_vector(4 downto 0);
   signal RegDst : std_logic;
   signal Branch : std_logic;
   signal MemRead : std_logic;
   signal MemtoReg : std_logic;
   signal ALUOp : std_logic_vector(5 downto 0);
   signal MemWrite : std_logic;
   signal ALUsrc : std_logic;
   signal RegWrite : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstructionDecode PORT MAP (
          clk => clk,
          instruction_vector => instruction_vector,
          target => target,
          immediate => immediate,
          rs => rs,
          rt => rt,
          rd => rd,
          func => func,
          RegDst => RegDst,
          Branch => Branch,
          MemRead => MemRead,
          MemtoReg => MemtoReg,
          ALUOp => ALUOp,
          MemWrite => MemWrite,
          ALUsrc => ALUsrc,
          RegWrite => RegWrite
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
	
		procedure check_opcode (
		condition : in boolean;
		error_msg : in string;
		operation : in string) is
		begin
			report operation;
		end procedure check_opcode;

	
	
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
