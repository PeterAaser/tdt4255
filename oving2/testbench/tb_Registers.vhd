LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_Registers IS
END tb_Registers;
 
ARCHITECTURE behavior OF tb_Registers IS 

    --Constants
    constant ADDR_WIDTH : natural := 5;
    constant DATA_WIDTH : natural := 32;

    --Inputs
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal processor_enable : std_logic := '0';
    signal read_reg_1 : reg_t;
    signal read_reg_2 : reg_t;
    signal write_reg : reg_t;
    signal write_data : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal RegWrite : boolean := false;
 	--Outputs
    signal read_data_1 : std_logic_vector(DATA_WIDTH-1 downto 0);
    signal read_data_2 : std_logic_vector(DATA_WIDTH-1 downto 0);

    -- Clock period definitions
    constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.Registers port map(
        clk => clk,
        reset => reset,
        processor_enable => processor_enable,
        read_reg_1 => read_reg_1,
        read_reg_2 => read_reg_2,
        write_reg => write_reg,
        write_data => write_data,
        RegWrite => RegWrite,
        read_data_1 => read_data_1,
        read_data_2 => read_data_2
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
        -- reset
        wait for clk_period/2;
        reset <= '1';
        processor_enable <= '1';
        -- Prep for write
        wait for clk_period;
        reset <= '0';
        read_reg_1 <= "00001";
        assert read_data_1 = x"00000000";
        wait for clk_period;
        -- Write to r1 from alu result
        write_data <= x"DEADBEEF";
        RegWrite <= true;
        write_reg <= "00001";
        read_reg_1 <= "00001";
        -- Our requirement is that data is available on the out bus before the next cycle.
        -- Since there is some mux delay, perfectly simultaneous write/read is impossible.
        wait for clk_period/2; 
        assert read_data_1 = x"DEADBEEF";
        RegWrite <= false;
        -- insert stimulus here 
        wait;
   end process;

END;
