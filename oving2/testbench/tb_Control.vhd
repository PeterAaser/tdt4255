library ieee;
use ieee.std_logic_1164.all;
use work.defs.all;

entity tb_Control is
end tb_Control;

architecture behavior of tb_Control is
    -- Inputs
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal processor_enable : std_logic := '0';
    signal instruction : instruction_t;
    signal control_hazard : std_logic := '0';
    signal data_hazard : std_logic := '0';
    
    -- Outputs
    signal control_signals : control_signals_t;

    -- Clock
    constant clk_period : time := 10 ns;
begin

    uut: entity work.Control
    port map(
        clk => clk,
        reset => reset,
        processor_enable => processor_enable,
        instruction => instruction,
        control_hazard => control_hazard,
        data_hazard => data_hazard,
        control_signals => control_signals
    );

    clk_process: process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin
        wait for clk_period/2;
        -- Reset
        reset <= '1';
        wait for clk_period;
        reset <= '0';
        processor_enable <= '1';
        wait for clk_period;
        -- R-Type
        instruction <= make_instruction(x"00000000");
        wait for clk_period/2;
        assert control_signals.ALU_source = REG2;
        assert control_signals.RegDst = REGD;
        assert control_signals.MemtoReg = FROM_ALU;
        assert control_signals.Branch = false;
        assert control_signals.Jump = false;
        assert control_signals.MemWrite = false;
        assert control_signals.RegWrite = true;
        assert control_signals.op = rtype;
        wait for clk_period/2;
        -- beq
        instruction <= make_instruction(x"10000000");
        wait for clk_period/2;
        assert control_signals.Branch = true;
        assert control_signals.op = beq;
        wait for clk_period/2;
        -- LW
        instruction <= make_instruction(x"8C000000");
        wait for clk_period/2;
        assert control_signals.MemtoReg = FROM_MEM;
        assert control_signals.op = lw;
        assert control_signals.ALU_source = INSTR;
        assert control_signals.RegWrite = true;
        wait for clk_period/2;
        -- SW
        instruction <= make_instruction(x"AC000000");
        wait for clk_period/2;
        assert control_signals.op = sw;
        assert control_signals.ALU_source = INSTR;
        assert control_signals.MemWrite = true;
        wait for clk_period/2;
        -- J
        instruction <= make_instruction(x"08000000");
        wait for clk_period/2;
        assert control_signals.Jump = true;
        assert control_signals.op = jump;
        wait for clk_period/2;
        -- LUI
        instruction <= make_instruction(x"3C000000");
        wait for clk_period/2;
        assert control_signals.op = lui;
        assert control_signals.RegWrite = true;
        assert control_signals.ALU_source = INSTR;
        wait for clk_period/2;
        -- Control hazard
        instruction <= make_instruction(x"AC000000");
        control_hazard <= '1';
        wait for clk_period/2;
        assert control_signals.ALU_source = REG2;
        assert control_signals.RegDst = REGT;
        assert control_signals.MemtoReg = FROM_ALU;
        assert control_signals.Branch = false;
        assert control_signals.Jump = false;
        assert control_signals.MemWrite = false;
        assert control_signals.RegWrite = false;
        assert control_signals.op = rtype;
        wait for clk_period/2;
        -- LUI to verify data_hazard reset
        instruction <= make_instruction(x"3C000000");
        control_hazard <= '0';
        wait for clk_period/2;
        assert control_signals.op = lui;
        assert control_signals.RegWrite = true;
        assert control_signals.ALU_source = INSTR;
        wait for clk_period/2;
        -- Data hazard
        instruction <= make_instruction(x"3C000000");
        data_hazard <= '1';
        wait for clk_period/2;
        assert control_signals.ALU_source = REG2;
        assert control_signals.RegDst = REGT;
        assert control_signals.MemtoReg = FROM_ALU;
        assert control_signals.Branch = false;
        assert control_signals.Jump = false;
        assert control_signals.MemWrite = false;
        assert control_signals.RegWrite = false;
        assert control_signals.op = rtype;
        wait;
    end process;
end;
