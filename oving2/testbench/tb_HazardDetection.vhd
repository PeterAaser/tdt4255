LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_HazardDetection IS
END tb_HazardDetection;
 
ARCHITECTURE behavior OF tb_HazardDetection IS 

    --Inputs
    signal clk : std_logic := '0';
    signal processor_enable : std_logic := '0';
    signal id_reg_a : reg_t;
    signal id_reg_b : reg_t;
    signal ex_reg_dest : reg_t;
    signal ex_op : op_t;
    signal pc_address_src : PC_addr_source_t := PC_addr;
 	--Outputs
    signal control_hazard : std_logic := '0';
    signal data_hazard : std_logic := '0';

    -- Clock period definitions
    constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.Hazard_detection port map(
        clk => clk,
        processor_enable => processor_enable,
        id_reg_a => id_reg_a,
        id_reg_b => id_reg_b,
        ex_reg_dest => ex_reg_dest,
        ex_op => ex_op,
        pc_address_src => pc_address_src,
        control_hazard => control_hazard,
        data_hazard => data_hazard
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
        processor_enable <= '1';
        -- Data hazard
        id_reg_a <= "00001";
        id_reg_b <= "00010";
        ex_reg_dest <= "00001";
        ex_op <= lw;
        wait for clk_period/2;
        assert data_hazard = '1';
        wait for clk_period/2;
        -- Data dependency but no hazard
        id_reg_a <= "00001";
        id_reg_b <= "00010";
        ex_reg_dest <= "00001";
        ex_op <= beq;
        wait for clk_period/2;
        assert data_hazard = '0';
        wait for clk_period/2;
        -- LW, but no dependency
        id_reg_a <= "00001";
        id_reg_b <= "00010";
        ex_reg_dest <= "00101";
        ex_op <= lw;
        wait for clk_period/2;
        assert data_hazard = '0';
        wait for clk_period/2;
        -- Control hazard
        pc_address_src <= BRANCH_ADDR;
        wait for clk_period/2;
        assert control_hazard = '1';
        wait;
   end process;

END;
