library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;

entity ALU is
    Port ( clk: in STD_LOGIC;
		   read_data_1 : in  std_logic_vector (31 downto 0);
           read_data_2 : in  std_logic_vector (31 downto 0);
           extended_immediate : in std_logic_vector(31 downto 0);
           funct : in std_logic_vector(5 downto 0);
           
           op     : in op_t;
           ALUSrc : in ALU_source_t;
           
           Zero : out  std_logic;
           ALUResult : inout  std_logic_vector (31 downto 0)
         );
           
end ALU;

architecture Behavioral of ALU is
    signal ALU_op : ALU_op_t;
begin

	alu_control: process(read_data_1, read_data_2, op, extended_immediate)	
	begin
		if op = rtype then
            ALU_op <= get_funct(extended_immediate(20 downto 15));
        else
			ALU_op <= get_op_funct(op);
        end if;
	end process;
		
	alu_perform_op: process(ALU_op, read_data_1, read_data_2, extended_immediate, ALUSrc)
		variable operandA: std_logic_vector (31 downto 0);
		variable operandB: std_logic_vector (31 downto 0);
	begin
		operandA:= read_data_1;
		if ALUSrc = REG2 then
			operandB := read_data_2;
		else
			operandB := extended_immediate;
		end if;

		case ALU_op is
			when ADD =>
				ALUResult <= std_logic_vector(signed(operandA) + signed(operandB));
			when SUB =>
				ALUResult <= std_logic_vector(signed(operandA) - signed(operandB));
			when SLT =>
				if signed(read_data_1) < signed(read_data_2) then
					ALUResult <= x"00000001";
				else
					ALUResult <= x"00000000";
				end if;
			when op_AND =>
				ALUResult <= operandA and operandB;
			when op_OR =>
				ALUResult <= operandA or operandB;
			when SL16=>
				ALUResult <= operandB(15 downto 0) & x"0000";
			when others=>
				ALUResult <= x"00000000";
		end case;

	end process;
	
	alu_zero: process(ALUResult)
	begin
		if ALUResult = x"00000000" then
			Zero <= '1';
		else
			Zero <= '0';
		end if;
	end process;

end Behavioral;

