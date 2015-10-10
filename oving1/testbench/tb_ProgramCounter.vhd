LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_ProgramCounter IS
END tb_ProgramCounter;
 
ARCHITECTURE behavior OF tb_ProgramCounter IS 

    --Inputs
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal pc_write : std_logic := '0';

 	--Outputs
    signal address_out : std_logic_vector(7 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.ProgramCounter port map(
        clk => clk,
        reset => reset,
        pc_write => pc_write,
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
        -- hold reset state for 100 ns.
        reset <= '1';
        wait for clk_period*5;	
        reset <= '0';
        assert address_out = x"00";
        pc_write <= '1';
        wait for clk_period;
        pc_write <= '0';
        assert address_out = x"01";

        -- insert stimulus here 
        wait;
   end process;

END;
