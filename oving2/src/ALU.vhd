library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;

entity ALU is
    Port ( clk: in STD_LOGIC;
		   read_data_1              : in std_logic_vector (31 downto 0);
           read_data_2              : in std_logic_vector (31 downto 0);
           extended_immediate       : in std_logic_vector(31 downto 0);
           funct                    : in funct_t;       -- this is a bit vector whose function must be looked up
           
           op                       : in op_t;          -- on the other hand this is an enumerated type.
           ALU_source               : in ALU_source_t;
           
           Zero                     : out  std_logic;
           result                   : out  std_logic_vector (31 downto 0) := (others => '0')
         );
           
end ALU;

architecture Behavioral of ALU is
    signal ALU_op : ALU_op_t;
    signal s_operandA:  signed (31 downto 0);
    signal s_operandB:  signed (31 downto 0);
    signal s_result:    signed (31 downto 0) := (others => '0');
begin

	alu_control: process(read_data_1, read_data_2, op, extended_immediate)	
	begin
		if op = rtype then
            ALU_op <= get_funct(extended_immediate(20 downto 15));
        else
			ALU_op <= get_op_funct(op);
        end if;
        
        s_operandA <= signed(read_data_1);
		if ALU_source = REG2 then
			s_operandB <= signed(read_data_2);
		else
			s_operandB <= signed(extended_immediate);
		end if;
        
	end process;


	alu_perform_op: process(ALU_op, read_data_1, read_data_2, extended_immediate)
	begin

		case ALU_op is
			when ADD =>     s_result   <= s_operandA + s_operandB;
			when SUB =>     s_result   <= s_operandA - s_operandB;
			when SLT =>
                if signed(read_data_1) < signed(read_data_2) then
                            s_result   <= x"00000001";
				else        s_result   <= x"00000000";
				end if;
			when op_AND =>  s_result   <= s_operandA and s_operandB;
			when op_OR =>   s_result   <= s_operandA or  s_operandB;
			when SL16=>     s_result   <= s_operandB(15 downto 0) & x"0000";
			when others=>   s_result   <= x"00000000";
		end case;
                
        if s_result = 0 then
            zero <= '1';
        else 
            zero <= '0';
        end if;
    
	end process;
    
    result <= std_logic_vector(s_result);

end Behavioral;

