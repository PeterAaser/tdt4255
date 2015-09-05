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
        RegDst : out std_logic;
        Branch : out std_logic;
		  Jump : out std_logic;
        MemtoReg : out std_logic;
        MemWrite : out std_logic;
        RegWrite : out std_logic;
		  stall : out std_logic;
		  
		  -- ALU issue --
		  ALU_select : out std_logic;
		  ALU_op : out ALU_op_t);
	
end Decode;

architecture Behavioral of Decode is
	-- DecodeFunc override --
	signal ControlSrc : std_logic;

	-- Probably a better way to do this...
	signal opRegDst : std_logic;
	signal opBranch : std_logic;
	signal opJump : std_logic;
	signal opMemtoReg : std_logic;
	signal opMemWrite : std_logic;
	signal opRegWrite : std_logic;
	signal opstall : std_logic;
	signal opALU_op : ALU_op_t;
	
	signal funcRegDst : std_logic;
	signal funcBranch : std_logic;
	signal funcJump : std_logic;
	signal funcMemtoReg : std_logic;
	signal funcMemWrite : std_logic;
	signal funcRegWrite : std_logic;
	signal funcstall : std_logic;
	signal funcALU_op : ALU_op_t;
	
	signal ALU_src : std_logic;
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
			stall => funcstall
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
			
			ALU_src => ALU_src,
		   ALU_op => opALU_op
		);
	
	select_decoder : process(ALU_src)
	begin
		ALU_select <= ALU_src;
		if ALU_src = '1' then
			RegDst <= opRegDst;
			Branch <= opBranch;
			Jump <= opJump;
			MemtoReg <= opMemtoReg;
			MemWrite <= opMemWrite;
			RegWrite <= opRegWrite;
			stall <= opstall;
			ALU_op <= opALU_op;
		else
			RegDst <= funcRegDst;
			Branch <= funcBranch;
			Jump <= funcJump;
			MemtoReg <= funcMemtoReg;
			MemWrite <= funcMemWrite;
			RegWrite <= funcRegWrite;
			stall <= funcstall;
			ALU_op <= funcALU_op;
		end if;
	end process;



end Behavioral;

