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
         tick : OUT  std_logic;
         read_instruction : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal empty : std_logic := '0';
   signal stall : std_logic := '0';

 	--Outputs
   signal tick : std_logic;
   signal read_instruction : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control PORT MAP (
          clk => clk,
          reset => reset,
          empty => empty,
          stall => stall,
          tick => tick,
          read_instruction => read_instruction
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
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
