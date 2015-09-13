library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;
 
ENTITY tb_registers IS
END tb_registers;
 
ARCHITECTURE behavior OF tb_registers IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Registers
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         read1_reg : IN  reg_t;
         read2_reg : IN  reg_t;
         write_reg : IN  reg_t;
         write_data : IN  signed(31 downto 0);
         RegWrite : IN  std_logic;
         data1 : OUT  signed(31 downto 0);
         data2 : OUT  signed(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal read1_reg : reg_t := (others => '0');
   signal read2_reg : reg_t := (others => '0');
   signal write_reg : reg_t := (others => '0');
   signal write_data : signed(31 downto 0) := (others => '0');
   signal RegWrite : std_logic := '0';

 	--Outputs
   signal data1 : signed(31 downto 0);
   signal data2 : signed(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Registers PORT MAP (
          clk => clk,
          reset => reset,
          read1_reg => read1_reg,
          read2_reg => read2_reg,
          write_reg => write_reg,
          write_data => write_data,
          RegWrite => RegWrite,
          data1 => data1,
          data2 => data2
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
		reset <= '1';
		wait for clk_period;
		reset <= '0';
		wait for clk_period;
		
		

		-- Try writing some registers
		regwrite <= '1';
		wait for clk_period;
		write_reg <= "00011";
		write_data <= x"3FFF1234";
		wait for clk_period;
		write_reg <= "00101";
		write_data <= x"5FFFABCD";
		wait for clk_period;
		write_reg <= "00111";
		write_data <= x"7FFFB00B";
		wait for clk_period;
		write_reg <= "00001";
		write_data <= x"1FFFDEAD";
		wait for clk_period;
		write_reg <= "00010";
		write_data <= x"2FFF2222";
		wait for clk_period;
		write_reg <= "00000";
		write_data <= x"0FFFBBBB";
		wait for clk_period;
		write_reg <= "00110";
		write_data <= x"6FFF1235";
		wait for clk_period;
		
      
		wait for clk_period;
		wait for clk_period;
		
		assert false report "TEST SUCCESS" severity failure;
		
   end process;

END;
