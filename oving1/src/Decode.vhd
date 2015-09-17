library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- This module is a multiplexer deciding wether func or op decides how to proceed

entity Decode is
    port(
        clk : in std_logic;
        reset : in std_logic;
        opcode : in opcode_t;
        func : in func_t;

        -- op code exclusive --
        zero_invert : out std_logic;
	control_signals : out control_signals_t);

        -- selector
	
end Decode;

architecture Behavioral of Decode is
signal decoder_select : decoder_select_t := OPERATION;

    op_signals : control_signals_t;
    func_signals : control_signals_t;
    decoder_select : in decoder_select_t;

    -- Currently only for debug
    signal op_name : op_t;

begin
    decode_func: entity work.DecodeFunc
        port map(
            reset => reset,
            clk => clk,
            func => func,

            control_signals => func_signals;
        );

    decode_op: entity work.DecodeOp	
        port map(
            reset => reset,
            clk => clk,
            opcode => opcode,
            op_name => op_name
            zero_invert => zero_invert,
        
            control_signals => op_signals; 
            decoder_select => decoder_select,
        );

    select_decoder : process(clk, decoder_select)
    begin
        if rising_edge(clk) then
            if decoder_select = OPERATION then
                report "op decoder selected";
                control_signals <= op_signals;
                
            elsif decoder_select = FUNCT then
                report "func decoder selected";
                control_signals <= func_signals;

            end if;
        end if;
    end process;

end Behavioral;

