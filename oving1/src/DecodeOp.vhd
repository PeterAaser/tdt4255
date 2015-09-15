library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;


entity DecodeOp is

    port(
        clk : in std_logic;
        reset : in std_logic;
        opcode : in opcode_t;

        -- settings -- 
        RegDst : out RegDst_t := REGT;
        Branch : out std_logic := '0';
        zero_invert : out std_logic := '0';
        Jump : out std_logic := '0';
        MemtoReg : out MemtoReg_t := FROM_ALU;
        MemWrite : out MemWrite_t := NO_WRITE;
        RegWrite : out RegWrite_t := WRITE;
        ALUsrc : out ALU_source_t := REG2;
        stall : out stall_t := false;

        control_signals : out control_signals_t;

        -- Not currently used. Should it?
        op_name : out op_t := j; 

        -- DecodeFunc override --
        decoder_select : out decoder_select_t := OPERATION;

        -- ALU issue if overriding --
        ALU_op : out ALU_op_t := add);
		  
end DecodeOp;

architecture Behavioral of DecodeOp is
begin
    decode : process (clk, reset)
    begin
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
                        branch <= '1';
                        ALU_op <= sub;
                        if opcode(0) = '0' then -- beq --
                            zero_invert <= '0';
                        else
                            zero_invert <= '1';
                        end if;
                    end if;
                    
                when J_TYPE=>
                    ALUsrc <= '1';
                    jump <= '1';
            end case;
        end if;
    end process;
end Behavioral;

