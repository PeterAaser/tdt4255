LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS 

   --Inputs
   signal clk : std_logic := '0';
   signal read_data1 : std_logic_vector(31 downto 0) := (others => '0');
   signal read_data2 : std_logic_vector(31 downto 0) := (others => '0');
   signal instruction : std_logic_vector(15 downto 0) := (others => '0');
   signal ALUOp : std_logic_vector(1 downto 0) := (others => '0');
   signal ALUSrc : std_logic := '0';

 	--Outputs
   signal Zero : std_logic;
   signal ALUResult : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: entity work.ALU PORT MAP (
          clk => clk,
          read_data_1 => read_data_1,
          read_data_2 => read_data_2,
          instruction => instruction,
          ALUOp => ALUOp,
          Zero => Zero,
          ALUResult => ALUResult,
          ALUSrc => ALUSrc
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

      wait for clk_period*5;

      -- insert stimulus here 

		read_data_1 <= x"00000002";
		read_data_2 <= x"00000003";

		ALUOp <= "00";
		Instruction <= x"0020";
		
		wait for clk_period;
		
		assert Zero = '0';
		assert ALUResult = x"00000005";

		wait for clk_period*3;

		-- test sub		
		read_data_2 <= x"00000010";
		Instruction <= b"100010";
		
		wait for clk_period*3;
		
		assert Zero = '0';
		assert ALUResult = x"FFFFFFF2";
		wait for clk_period*3;

		-- test beq
		ALUOp <= "10";
		read_data1 <= x"00001234";
		read_data2 <= x"00001234";

		wait for clk_period;
		
		assert Zero = '1';
		
		read_data1 <= x"00001231";

		wait for clk_period;
		
		assert Zero = '0';
		wait for clk_period*3;

		--test or
		ALUOp <= "00";
		instruction <= x"0025";
		read_data1 <= x"01000010";
		read_data2 <= x"00011011";	
		
		wait for clk_period;
		
		assert ALUResult = x"01011011";		
		wait for clk_period*3;

		--test and
		instruction <= x"0024";
		read_data1 <= x"01110110";
		read_data2 <= x"11011011";		
		
		wait for clk_period;
		
		assert ALUResult = x"01010010";
		
      wait;
   end process;

END;
