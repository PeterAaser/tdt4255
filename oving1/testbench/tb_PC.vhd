--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:12:33 09/01/2015
-- Design Name:   
-- Module Name:   /home/peter/Documents/Datateknikk/DM kons/tdt4255/oving1/testbench/tb_PC.vhd
-- Project Name:  oving1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ProgramCounter
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
use work.defs.all;
use work.testutil.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_PC IS
END tb_PC;
 
ARCHITECTURE behavior OF tb_PC IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProgramCounter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         op_target : IN  std_logic_vector(25 downto 0);
         op_immediate : IN  std_logic_vector(15 downto 0);
         branch : IN  std_logic;
         zero : IN  std_logic;
         jump : IN  std_logic;
         address_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal op_target : std_logic_vector(25 downto 0) := (others => '0');
   signal op_immediate : std_logic_vector(15 downto 0) := (others => '0');
   signal branch : std_logic := '0';
   signal zero : std_logic := '0';
   signal jump : std_logic := '0';
   signal address_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal address_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          clk => clk,
          rst => rst,
          op_target => op_target,
          op_immediate => op_immediate,
          branch => branch,
          zero => zero,
          jump => jump,
          address_out => address_out
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
   begin		
		wait for clk_period/4;
		rst <= '1';
		wait for clk_period;
		rst <= '0';
		wait for clk_period;
		check(address_out = x"00000000", "Address out should be 0 after reset");
		report "Test 1 passed" severity note;
		
		wait for clk_period;
		check(address_out = x"00000001", "Address out should increment at clock edge by default");
		report "Test 2 passed" severity note;
		
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		
		op_target <= "01000000010101000001010000";
		op_immediate <= "1010101010101001";
		wait for clk_period;
		wait for clk_period;
		wait for clk_period;
		jump <= '1';
		branch <= '1';
		wait for clk_period;
		check(address_out = x"00000001", "Address out should increment at clock edge by default");
		report "Test 4 passed" severity note;
		
		assert false report "TEST SUCCESS" severity failure;
		wait until clk = '1';
		
		
   end process;

END;
