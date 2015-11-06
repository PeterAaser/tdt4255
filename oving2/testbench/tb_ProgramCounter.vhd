LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_ProgramCounter IS
END tb_ProgramCounter;
 
ARCHITECTURE behavior OF tb_ProgramCounter IS 
 
    constant ADDR_SIZE : natural := 8;
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ProgramCounter
    PORT(
         clk                    : IN  std_logic;
         reset                  : IN  std_logic;
         branch_address_in      : IN  std_logic_vector(ADDR_SIZE-1 downto 0);
         pc_src                 : IN  std_logic;
         incremented_address    : OUT  std_logic_vector(ADDR_SIZE-1 downto 0);
         imem_address           : OUT  std_logic_vector(ADDR_SIZE-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal branch_address_in : std_logic_vector(ADDR_SIZE-1 downto 0) := (others => '0');
   signal pc_src : std_logic := '0';

 	--Outputs
   signal incremented_address : std_logic_vector(ADDR_SIZE-1 downto 0);
   signal imem_address : std_logic_vector(ADDR_SIZE-1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramCounter PORT MAP (
          clk => clk,
          reset => reset,
          branch_address_in => branch_address_in,
          pc_src => pc_src,
          incremented_address => incremented_address,
          imem_address => imem_address
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
      
      reset <= '1';
      wait for clk_period;
      reset <= '0';
      
      assert imem_address = x"00";
      assert incremented_address = x"01";
      
      wait for clk_period;

      assert imem_address = x"01";
      assert incremented_address = x"02";
      
      branch_address_in <= x"AB";
      wait for clk_period;
      
      assert imem_address = x"02";
      assert incremented_address = x"03";
      
      pc_src <= '1';
      wait for clk_period;

      assert imem_address = x"AB";
      assert incremented_address = x"AC";
      
      pc_src <= '0';
      wait for clk_period;
      
      assert imem_address = x"AC";
      assert incremented_address = x"AD";
      
      wait for clk_period;

      assert imem_address = x"AD";
      assert incremented_address = x"AE";
      
      wait;
   end process;

END;
