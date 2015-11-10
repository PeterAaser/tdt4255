LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.defs.all;
 
ENTITY tb_ProgramCounter IS
END tb_ProgramCounter;
 
ARCHITECTURE behavior OF tb_ProgramCounter IS 
 
    constant ADDR_SIZE : natural := 8;

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal branch_address_in : std_logic_vector(ADDR_SIZE-1 downto 0) := (others => '0');
   signal stall : std_logic;
   signal pc_address_src : PC_addr_source_t;
   signal processor_enable : std_logic;

 	--Outputs
   signal if_pc: std_logic_vector(ADDR_SIZE-1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.ProgramCounter PORT MAP (
          clk => clk,
          reset => reset,
          branch_address_in => branch_address_in,
          stall => stall,
          pc_address_src => pc_address_src,
          processor_enable => processor_enable,
          if_pc => if_pc
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
      wait for clk_period/2;
      reset <= '1';
      pc_address_src <= PC_ADDR;
      wait for clk_period;
      reset <= '0';
      
      assert if_pc = x"00";
      
      wait for clk_period;

      assert if_pc = x"01";
      
      wait for clk_period;
      branch_address_in <= x"AB";
      pc_address_src <= BRANCH_ADDR;
      assert if_pc = x"AB";
      
      wait for clk_period;
      pc_address_src  <= PC_ADDR;
      assert if_pc = x"AC";
      
      wait;
   end process;

END;
