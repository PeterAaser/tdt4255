
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_InstructionDecode IS
END tb_InstructionDecode;
 
ARCHITECTURE behavior OF tb_InstructionDecode IS 
   COMPONENT InstructionDecoder
    PORT(
        );
    END COMPONENT;
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	
   uut: InstructionDecoder PORT MAP (
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
