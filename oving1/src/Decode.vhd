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
        
        -- settings -- 
        RegDst : out RegDst_t;
        Branch : out std_logic;
        Jump : out std_logic;
        MemtoReg : out MemtoReg_t;
        MemWrite : out MemWrite_t;
        RegWrite : out RegWrite_t;
        stall : out stall_t;
        ALUsrc : out ALU_source_t;
		  
        -- ALU issue --
        ALU_op : out ALU_op_t);
	
end Decode;

architecture Behavioral of Decode is
-- DecodeFunc override --
signal decoder_select : decoder_select_t := eOPERATION;

    -- Probably a better way to do this...
    signal opRegDst : RegDst_t;
    signal opBranch : std_logic;
    signal opJump : std_logic;
    signal opMemtoReg : MemtoReg_t;
    signal opMemWrite : MemWrite_t;
    signal opRegWrite : RegWrite_t;
    signal opstall : stall_t;
    signal opALUsrc : ALU_source_t;
    signal opALU_op : ALU_op_t;

    signal funcRegDst : RegDst_t;
    signal funcBranch : std_logic;
    signal funcJump : std_logic;
    signal funcMemtoReg : MemtoReg_t;
    signal funcMemWrite : MemWrite_t;
    signal funcRegWrite : RegWrite_t;
    signal funcstall : stall_t;
    signal funcALUsrc : ALU_source_t;
    signal funcALU_op : ALU_op_t;

    -- Currently only for debug
    signal op_name : op_t;

begin
    decode_func: entity work.DecodeFunc
        port map(
            reset => reset,
            clk => clk,
            func => func,
        
          -- settings -- 
            RegDst => funcRegDst,
            Branch => funcBranch,
            Jump => funcJump,
            MemtoReg => funcMemtoReg,
            MemWrite => funcMemWrite,
            RegWrite => funcRegWrite,
            stall => funcstall,
            
            ALUsrc => funcALUsrc,
            ALU_op => funcALU_op
        );

    decode_op: entity work.DecodeOp	
        port map(
            reset => reset,
            clk => clk,
            opcode => opcode,
            
            zero_invert => zero_invert,
        
          -- settings -- 
            RegDst => opRegDst,
            Branch => opBranch,
            Jump => opJump,
            MemtoReg => opMemtoReg,
            MemWrite => opMemWrite,
            RegWrite => opRegWrite,
            stall => opstall,
            
            decoder_select => decoder_select,
            ALUsrc => opALUsrc,
            ALU_op => opALU_op,
            op_name => op_name
        );

    select_decoder : process(clk, decoder_select)
    begin
        if rising_edge(clk) then
            if decoder_select = OPERATION then
                report "op decoder selected";
                RegDst <= opRegDst;
                Branch <= opBranch;
                Jump <= opJump;
                MemtoReg <= opMemtoReg;
                MemWrite <= opMemWrite;
                RegWrite <= opRegWrite;
                stall <= opstall;
                ALU_op <= opALU_op;
                ALUsrc <= opALUsrc;
                
            elsif decoder_select = FUNCT then
                report "func decoder selected";
                RegDst <= funcRegDst;
                Branch <= funcBranch;
                Jump <= funcJump;
                MemtoReg <= funcMemtoReg;
                MemWrite <= funcMemWrite;
                RegWrite <= funcRegWrite;
                stall <= funcstall;
                ALU_op <= funcALU_op;
                ALUsrc <= funcALUsrc;
            end if;
        end if;
    end process;



end Behavioral;

