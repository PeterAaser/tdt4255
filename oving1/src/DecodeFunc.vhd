library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- at the moment a fairly pointless module, but present for extendibility

entity DecodeFunc is
    port(
        clk : in std_logic;
        reset : in std_logic;
        func : in func_t;
        
        control_signals : out control_signals_t);
		  
end DecodeFunc;

architecture Behavioral of DecodeFunc is
begin
    decode : process (clk, reset)
    begin
    
        control_signals.ALUsrc <= REG2;
        control_signals.RegDst <= REGD;
        control_signals.MemtoReg <= FROM_ALU;

        control_signals.branch <= false;
        control_signals.jump <= false;
        control_signals.MemWrite <= false;
        control_signals.RegWrite <= false;
        control_signals.stall <= false;

        if rising_edge(clk) then
            ALUsrc <= REG2;
            case get_function(func) is
                when add=>

                    control_signals.RegWrite <= true;
                    control_signals.RegDst <= REGD;
                when sub=>

                    control_signals.RegWrite <= true;
                    control_signals.RegDst <= REGD;
                when islt=>

                    control_signals.RegWrite <= true;
                    control_signals.RegDst <= REGD;
                when iand=>

                    control_signals.RegWrite <= true;
                    control_signals.RegDst <= REGD;
                when ior=>

                    control_signals.RegWrite <= true;
                    control_signals.RegDst <= REGD;
                when others=>
            end case;
			
            control_signals.ALU_op <= get_function(func);
        end if;
    end process;
end Behavioral;

