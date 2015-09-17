LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_control IS
END tb_control;
 
ARCHITECTURE behavior OF tb_control IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         empty : IN  std_logic;
         stall : IN  std_logic;
         enable : in std_logic;
         fetch : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal empty : std_logic := '0';
   signal stall : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal fetch : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control PORT MAP (
          clk => clk,
          reset => reset,
          empty => empty,
          enable => enable,
          stall => stall,
          fetch => fetch
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
      -- hold reset state for 100 ns.
      reset <= '1';
      stall <= '1'; 
      enable <= '0';
      wait for clk_period/4;
      wait for clk_period;
      reset <= '0';
      stall <= '0';
      wait for clk_period;
      stall <= '1';
      wait for clk_period;
      stall <= '0';
      wait for clk_period;
      enable <= '1';
      wait for clk_period;
      report "fetch";
      wait for clk_period;
      report "execute";
      wait for clk_period;
      report "fetch";
      wait for clk_period;
      report "execute load/store";
      stall <= '1';
      wait for clk_period;
      report "stall";
      stall <= '0';
      wait for clk_period;
      report "fetch";
      wait for clk_period;
		assert false report "DONE" severity failure;
		wait until clk = '1';


      wait;
   end process;

END;
