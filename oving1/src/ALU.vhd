library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    Port ( clk: in STD_LOGIC;
			  read_data1 : in  std_logic_vector (31 downto 0);
           read_data2 : in  std_logic_vector (31 downto 0);
           instruction : in  std_logic_vector (15 downto 0);
           ALUOp : in  std_logic_vector (1 downto 0);
           Zero : out  std_logic;
           ALUResult : inout  std_logic_vector (31 downto 0);
           ALUSrc : in  std_logic);
end ALU;

architecture Behavioral of ALU is
		type Operation_t is (ALU_ADD, ALU_SUB, ALU_SLT, ALU_AND, ALU_OR, ALU_A, ALU_B);
		signal operation: Operation_t := ALU_ADD;
		signal operatorA: std_logic_vector (31 downto 0);
		signal operatorB: std_logic_vector (31 downto 0);
		signal func: std_logic_vector ( 5 downto 0);
		--signal immediate: std_logic_vector (15 downto 0);
begin
	mux : process(clk, ALUSrc)
	begin
		if ALUSrc = '0' then
			operatorB <= read_data2;
		else
			operatorB <= std_logic_vector(resize(signed(instruction(15 downto 0)), operatorB'length));
		end if;
	end process;

	alu_control: process(clk, ALUOp, instruction)
	begin
		case ALUOp is
			when "00"=> --R-type
				case instruction is
					when x"0020"=>
						operation <= ALU_ADD;
					when x"0024"=>
						operation <= ALU_AND;
					when x"0025"=>
						operation <= ALU_OR;
					when x"002A"=>
						operation <= ALU_SLT;
					when x"0022"=>
						operation <= ALU_SUB;
					when others=>
						null;
				end case;
			when "01"=> --I-Type (LDI, SW, LW)
				operation <= ALU_A;
			when "10"=> --BEQ
				operation <= ALU_SUB;
			when others=>
				null;
		end case;
	end process;
		
	alu_perform_op: process(clk)
	begin
		if rising_edge(clk) then
			case operation is
				when ALU_ADD=>
					ALUResult <= std_logic_vector(signed(operatorA) + signed(operatorB));
				when ALU_SUB=>
					ALUResult <= std_logic_vector(signed(operatorA) - signed(operatorB));
				when ALU_SLT=>
					if operatorA < operatorB then
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
				when others=>
					null;
			end case;
		end if;
	end process;
	
	alu_zero: process(clk, ALUResult)
	begin
		if ALUResult = x"00000000" then
			Zero <= '1';
		else
			Zero <= '0';
		end if;
	end process;

	operatorA <= read_data1;

end Behavioral;

