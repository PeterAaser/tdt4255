
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

 
ENTITY tb_ALU IS
END tb_ALU;
 
ARCHITECTURE behavior OF tb_ALU IS
	constant data_width : integer := 32;
	subtype data_t is signed(31 downto 0);
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
        clk : IN  std_logic;
        op_A : in signed(DATA_WIDTH - 1 downto 0);
        op_B_reg : in signed(DATA_WIDTH - 1 downto 0);
        op_B_imm : in signed(DATA_WIDTH - 1 downto 0);
        op_sel : IN  ALU_op_t;
        zero_invert : IN  std_logic;
        zero : OUT  std_logic;
        result : OUT  signed(DATA_WIDTH - 1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal op_A : signed(DATA_WIDTH - 1 downto 0);
   signal op_B : signed(DATA_WIDTH - 1 downto 0);
   signal op_sel : alu_op_t;
   signal zero_invert : std_logic := '0';

 	--Outputs
   signal zero : std_logic;
   signal result : signed(DATA_WIDTH - 1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          clk => clk,
          op_A => op_A,
          op_B => op_B,
          op_sel => op_sel,
          zero_invert => zero_invert,
          zero => zero,
          result => result
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
		wait for clk_period;
		op_A <= x"0011001A";
		op_B <= x"0011001A";
		op_sel <= add;
      
		wait for clk_period;
		wait for clk_period;
		
		assert false report "TEST SUCCESS" severity failure;
   end process;

END;
