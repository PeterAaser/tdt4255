
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
use work.testutil.all;

ENTITY tb_PC IS
END tb_PC;
 
ARCHITECTURE behavior OF tb_PC IS 
 
   COMPONENT ProgramCounter
   PORT(
      clk : IN  std_logic;
      reset : IN  std_logic;
      op_target : IN  std_logic_vector(25 downto 0);
      op_immediate : IN  std_logic_vector(15 downto 0);
      branch : IN  std_logic;
      zero : IN  std_logic;
      jump : IN  std_logic;
      address_out : OUT  std_logic_vector(7 downto 0);
      tick : in std_logic
      );
   END COMPONENT;
    
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal op_target : std_logic_vector(25 downto 0) := (others => '0');
   signal op_immediate : std_logic_vector(15 downto 0) := (others => '0');
   signal branch : std_logic := '0';
   signal zero : std_logic := '0';
   signal jump : std_logic := '0';
   signal address_in : std_logic_vector(7 downto 0) := (others => '0');
	signal tick : std_logic;

 	--Outputs
   signal address_out : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          clk => clk,
          reset =>reset,
          op_target => op_target,
          op_immediate => op_immediate,
          branch => branch,
          zero => zero,
          jump => jump,
          address_out => address_out,
			 tick => tick
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
		
		tick <= '0';
		op_target <= b"11111111111111111111111111";
		op_immediate <= x"FFFF";
		
		wait for clk_period/4;
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period;
		check(address_out = x"00", "Address out should be 0 after reset");
		report "Test 1 passed" severity note;
		
		wait for clk_period;
		check(address_out = x"00", "Address out should not increment when tick is not driven");
		report "Test 2 passed" severity note;
		
		tick <= '1';
		wait for clk_period;
		check(address_out = x"01", "Address out should increment when tick is driven");
		report "Test 3 passed" severity note;
		
		tick <= '0';
		wait for clk_period;
		check(address_out = x"01", "Address out should not increment when tick is not driven");
		report "Test 4 passed" severity note;
		
		jump <= '1';
		wait for clk_period;
		check(address_out = x"01", "Jump should only be issued on tick");
		report "Test 5 passed" severity note;
		
		branch <= '1';
		wait for clk_period;
		check(address_out = x"01", "branch and jump should only be issued on tick");
		report "Test 6 passed" severity note;
		
		jump <= '0';
		wait for clk_period;
		check(address_out = x"01", "Jump should only be issued on tick");
		report "Test 7 passed" severity note;
		
		jump <= '1';
		branch <= '0';
		tick <= '1';
		wait for clk_period;
		check(address_out = b"00001100", "Jump should be issued on tick and jump");
		report "Test 8 passed" severity note;
		
		wait for clk_period;
		assert false report " ### TEST SUCCESS ### " severity failure;
		wait until clk = '1';
		
		
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
