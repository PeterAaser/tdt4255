use work.defs.all;

entity InstructionDecode is

    port(
        clk : in std_logic;
		  rst : in std_logic;
		  opcode : in opcode_t;
        
		  -- settings -- 
        RegDst : out std_logic;
        Branch : out std_logic;
        MemRead : out std_logic;
        MemtoReg : out std_logic;
        MemWrite : out std_logic;
        ALUsrc : out std_logic;
        RegWrite : out std_logic;
		  stall : out std_logic);
		  
end InstructionDecode;

architecture Behavioral of InstructionDecode is
	signal op_type : instruction_format_t;

begin
   decode : process (clk, rst)
	begin
		op_type <= get_format(opcode);
		if op_type = R_TYPE then
			report "R-TAIPU!";
		elsif op_type = I_TYPE then
			report "I-TAIPU!";
		else
			report "J-TAIPU!";
		end if;
	end process;
end Behavioral;

