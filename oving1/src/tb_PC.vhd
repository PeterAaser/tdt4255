--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:54:13 09/01/2015
-- Design Name:   
-- Module Name:   /home/peter/Documents/Datateknikk/DM kons/tdt4255/oving1/src/tb_PC.vhd
-- Project Name:  oving1
-- Target Device:  

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
use work.testutil.all;
 
ENTITY tb_ProgramCounter IS
END tb_ProgramCounter;
 
ARCHITECTURE behavior OF tb_ProgramCounter IS 

    COMPONENT ProgramCounter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         next_addr : IN  std_logic_vector(31 downto 0);
         current_addr : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal next_addr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal current_addr : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          clk => clk,
          rst => rst,
          next_addr => next_addr,
          current_addr => current_addr
        );

   -- Clock process definitions
   clk_process : process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
    stim_proc: process
    begin
        -- hold reset state for 100 ns.
        wait for 100 ns;	
        wait for clk_period*10;

        -- start tests
        rst <= '1';
        wait for clk_period;
        rst <= '0';
        wait for clk_period;
        check(current_addr = x"00000000",
            "current_addr should be 0 after reset");
        report "#1  :^) next addr is 0 after reset (^:" severity note;
        
        next_addr <= x"1234abcd";
        check(current_addr = x"00000000",
            "current_addr should not be updated before clk edge");
        report "#2  :^) current addr did not update before clk edge(^:" severity note;
        
        wait for clk_period;
        check(current_addr = x"1234abcd",
            "current_addr was not updated after clk edge");
        report "#3  :^) current addr updated after clk edge (^:" severity note;
        
        wait for clk_period;
        rst <= '1';
        wait for clk_period;
        rst <= '0';
        -- If we waited for a clk period here we would simply reaquire next_addr which is not reset
        check(current_addr = x"00000000",
            "current_addr did not reset correctly");
        report "#4  :^) next addr resets correctly after being driven (^:" severity note;
        
        wait for clk_period;
        report ":^) Test complete  (^:" severity failure;

    end process;

END;
