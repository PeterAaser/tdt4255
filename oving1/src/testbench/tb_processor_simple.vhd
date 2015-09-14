
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY tb_processor_simple IS
END tb_processor_simple;
 
ARCHITECTURE behavior OF tb_processor_simple IS 
 
    COMPONENT MIPSProcessor
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         processor_enable : IN  std_logic;
         imem_data_in : IN  std_logic_vector(31 downto 0);
         imem_address : OUT  std_logic_vector(7 downto 0);
         dmem_data_in : IN  std_logic_vector(31 downto 0);
         dmem_address : OUT  std_logic_vector(7 downto 0);
         dmem_data_out : OUT  std_logic_vector(31 downto 0);
         dmem_write_enable : OUT  std_logic
        );
    END COMPONENT;

   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal processor_enable : std_logic := '0';
   signal imem_data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal dmem_data_in : std_logic_vector(31 downto 0) := (others => '0');

   signal imem_address : std_logic_vector(7 downto 0);
   signal dmem_address : std_logic_vector(7 downto 0);
   signal dmem_data_out : std_logic_vector(31 downto 0);
   signal dmem_write_enable : std_logic;

   constant clk_period : time := 10 ns;
 
BEGIN
 
   uut: MIPSProcessor PORT MAP (
          clk => clk,
          reset => reset,
          processor_enable => processor_enable,
          imem_data_in => imem_data_in,
          imem_address => imem_address,
          dmem_data_in => dmem_data_in,
          dmem_address => dmem_address,
          dmem_data_out => dmem_data_out,
          dmem_write_enable => dmem_write_enable
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
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
