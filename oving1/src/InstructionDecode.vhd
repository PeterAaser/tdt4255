library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

-- This is somewhat of a misnomer, as the all this module does is decide between R, I and J type
entity InstructionDecode is

    port(
        clk : in std_logic;
		  rst : in std_logic;
		  instruction_vector : in instruction_t;
        
		  -- instruction pieces --
		  target : out target_t;
		  immediate : out immediate_t;
		  rs : out r_t;
		  rt : out r_t;
		  rd : out r_t;
		  func : out func_t;
		  
		  -- settings -- 
        RegDst : out std_logic;
        Branch : out std_logic;
        MemRead : out std_logic;
        MemtoReg : out std_logic;
        ALUOp : out std_logic_vector(5 downto 0);
        MemWrite : out std_logic;
        ALUsrc : out std_logic;
        RegWrite : out std_logic);
		  
end InstructionDecode;

architecture Behavioral of InstructionDecode is

	type state_t is (S_FETCH, EXECUTE, S_STALL);
	signal state : state_t;

   signal format : instruction_format_t;
   signal opcode : opcode_t;
begin
   
   decode : process (clk, rst)
	begin
		if rst then 
			state <= S_FETCH;
		else
			case state is 
				when S_FETCH=>
					state <= S_EXECUTE;
				when S_STALL=>
					state <= S_FETCH;
				when S_EXECUTE=>
					
					
			end case;
		end if;
	end process;
end Behavioral;

