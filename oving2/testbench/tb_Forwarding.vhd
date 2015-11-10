LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.defs.all;
 
ENTITY tb_Forwarding IS
END tb_Forwarding;
 
ARCHITECTURE behavior OF tb_Forwarding IS 

    --Constants
    constant DATA_WIDTH : natural := 32;

    signal clk : std_logic;

    --Inputs
    signal mem_regd : reg_t;
    signal wb_regd : reg_t;
    signal ex_regs : reg_t;
    signal ex_regt : reg_t;
    signal mem_regwrite : RegWrite_t;
    signal wb_regwrite : RegWrite_t;
 	--Outputs
    signal forward_a : Forward_t;
    signal forward_b : Forward_t;

    -- Clock period definitions
    constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
    uut: entity work.Forwarding port map(
        mem_regd => mem_regd,
        wb_regd => wb_regd,
        ex_regs => ex_regs,
        ex_regt => ex_regt,
        mem_regwrite => mem_regwrite,
        wb_regwrite => wb_regwrite,
        forward_a => forward_a,
        forward_b => forward_b
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
        -- Sync to rising edge
        wait for clk_period/2;
        -- No dependency, no regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00011";
        ex_regt <= "00100";
        mem_regwrite <= false;
        wb_regwrite <= false;
        wait for clk_period/2;
        assert forward_a = REG;
        assert forward_b = REG;
        wait for clk_period/2;
        -- No dependency, mem_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00011";
        ex_regt <= "00100";
        mem_regwrite <= true;
        wb_regwrite <= false;
        wait for clk_period/2;
        assert forward_a = REG;
        assert forward_b = REG;
        wait for clk_period/2;
        -- No dependency, wb_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00011";
        ex_regt <= "00100";
        mem_regwrite <= false;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = REG;
        assert forward_b = REG;
        wait for clk_period/2;
        -- No dependency, both regwrites
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00011";
        ex_regt <= "00100";
        mem_regwrite <= true;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = REG;
        assert forward_b = REG;
        wait for clk_period/2;
        -- ex_regs = wb_regd, no regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00010";
        ex_regt <= "00100";
        mem_regwrite <= false;
        wb_regwrite <= false;
        wait for clk_period/2;
        assert forward_a = REG;
        assert forward_b = REG;
        wait for clk_period/2;
        -- ex_regs = wb_regd, wb_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00010";
        ex_regt <= "00100";
        mem_regwrite <= false;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = WB;
        assert forward_b = REG;
        wait for clk_period/2;
        -- ex_regs = ex_regt = wb_regd, wb_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00010";
        ex_regt <= "00010";
        mem_regwrite <= false;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = WB;
        assert forward_b = WB;
        wait for clk_period/2;
        -- ex_regs = wb_regd, ex_regt = mem_regd,
        -- wb_regwrite, mem_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00010";
        ex_regt <= "00001";
        mem_regwrite <= true;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = WB;
        assert forward_b = MEM;
        wait for clk_period/2;
        -- ex_regs = wb_regd, ex_regt = mem_regd,
        -- mem_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00010";
        ex_regt <= "00001";
        mem_regwrite <= true;
        wb_regwrite <= false;
        wait for clk_period/2;
        assert forward_a = REG;
        assert forward_b = MEM;
        wait for clk_period/2;
        -- ex_regs = wb_regd, ex_regt = mem_regd,
        -- wb_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00010";
        ex_regt <= "00001";
        mem_regwrite <= false;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = WB;
        assert forward_b = REG;
        wait for clk_period/2;
        -- ex_regs = ex_regt = wb_regd
        -- wb_regwrite, mem_regwrite
        mem_regd <= "00001";
        wb_regd <= "00010";
        ex_regs <= "00001";
        ex_regt <= "00001";
        mem_regwrite <= true;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = MEM;
        assert forward_b = MEM;
        wait for clk_period/2;
        -- ex_regs = mem_regd = wb_regd
        -- ex_regt = mem_regd = wb_regd
        -- wb_regwrite, mem_regwrite
        mem_regd <= "00001";
        wb_regd <= "00001";
        ex_regs <= "00001";
        ex_regt <= "00001";
        mem_regwrite <= true;
        wb_regwrite <= true;
        wait for clk_period/2;
        assert forward_a = MEM;
        assert forward_b = MEM;
        wait for clk_period/2;
        wait;
   end process;

END;
