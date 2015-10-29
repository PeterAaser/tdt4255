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
		type Operation_t is (ALU_ADD, ALU_SUB, ALU_SLT, ALU_AND, ALU_OR, ALU_A, ALU_B, ALU_SL16);
		signal operation: Operation_t := ALU_ADD;
begin

	alu_control: process(read_data_1, read_data_2, op, extended_immediate)	
	begin

		case op is
			when rtype => --R-type
				case get_function(extended_immediate(21 downto 15)) is -- assume sh bits is never usedS
					when add =>
						operation <= ALU_ADD;
					when op_and =>
						operation <= ALU_AND;
					when op_or =>
						operation <= ALU_OR;
					when slt =>
						operation <= ALU_SLT;
					when sub =>
						operation <= ALU_SUB;
					when others=>
						null;
				end case;
			when lw =>
				operation <= ALU_ADD;
            when sw =>
				operation <= ALU_ADD;
			when beq => 
				operation <= ALU_SUB;
			when lui =>
				operation <= ALU_SL16;
			when others=>
				null;
		end case;
	end process;
		
	alu_perform_op: process(operation, read_data_1, read_data_2, extended_immediate, ALUSrc)
		variable operatorA: std_logic_vector (31 downto 0);
		variable operatorB: std_logic_vector (31 downto 0);
	begin
		operatorA := read_data_1;
		if ALUSrc = REG2 then
			operatorB := read_data_2;

		else
			operatorB := extended_immediate;

		end if;

		case operation is
			when ALU_ADD=>
				ALUResult <= std_logic_vector(signed(operatorA) + signed(operatorB));
			when ALU_SUB=>
				ALUResult <= std_logic_vector(signed(operatorA) - signed(operatorB));
			when ALU_SLT=>
				if signed(read_data_1) < signed(read_data_2) then
					ALUResult <= x"00000001";
				else
					ALUResult <= x"00000000";
				end if;
			when ALU_AND=>
				ALUResult <= operatorA and operatorB;
			when ALU_OR=>
				ALUResult <= operatorA or operatorB;
			when ALU_A=>
				ALUResult <= operatorA;
			when ALU_B=>
				ALUResult <= operatorB;
			when ALU_SL16=>
				ALUResult <= operatorB(15 downto 0) & x"0000";
			when others=>
				null;
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

