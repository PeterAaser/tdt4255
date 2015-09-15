library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;


entity DecodeOp is

    port(
        clk : in std_logic;
        reset : in std_logic;
        opcode : in opcode_t;

        control_signals : out control_signals_t;

        -- Not currently used. Should it?
        op_name : out op_t := j; 

        decoder_select : out decoder_select_t := OPERATION);

		  
end DecodeOp;

architecture Behavioral of DecodeOp is
begin
    decode : process (clk, reset)
    begin

        control_signals.ALUsrc <= REG2;
        control_signals.RegDst <= REGT;
        control_signals.MemtoReg <= FROM_ALU;

        control_signals.branch <= false;
        control_signals.jump <= false;
        control_signals.MemWrite <= false;
        control_signals.RegWrite <= false;
        control_signals.stall <= false;
        control_signals.ALU_op <= add:


        if rising_edge(clk) then
            
            -- Currently only here as a debug tool
            op_name <= get_op( opcode);
            
            -- Selects opcode module as control signal driver for select signals --
            decoder_select <= OPERATION;
            control_signals.ALU_source <= REG2 ; 
            control_signals.stall <= false;
            
            case get_format(opcode) is
                when R_TYPE=>
                    decoder_select <= FUNCT;
                when I_TYPE=>
                    -- stall (does all I-type stall??)
                    control_signals.stall <= true;
                    
                    -- load store? --
                    if opcode(5) = '1' then
                        control_signals.ALU_op <= add;
                        
                        if opcode(3) = '0' then --store
                            control_signals.MemWrite <= WRITE;
                        else -- load --						
                            control_signals.MemtoReg <= FROM_MEM; 
                            control_signals.RegWrite <= WRITE;
                        end if;
                    
                    -- bne beq? --
                    else
                        branch <= true;
                        ALU_op <= sub;
                        if opcode(0) = '0' then -- beq --
                            zero_invert <= '0';
                        else
                            zero_invert <= '1';
                        end if;
                    end if;
                    
                when J_TYPE=>
                    ALUsrc <= INSTR;
                    jump <= true;
            end case;
        end if;
    end process;
end Behavioral;

