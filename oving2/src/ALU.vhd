library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.defs.all;

entity ALU is
    Port ( read_data_1              : in std_logic_vector (31 downto 0);
           read_data_2              : in std_logic_vector (31 downto 0);
           extended_immediate       : in std_logic_vector(31 downto 0);
           funct                    : in funct_t;       -- this is a bit vector whose function must be looked up
           
           forward_a                : in forward_t;
           forward_b                : in forward_t;
           wb_alu_result_in            : in std_logic_vector(31 downto 0);
           mem_alu_result_in           : in std_logic_vector(31 downto 0);
           
           op                       : in op_t;          -- on the other hand this is an enumerated type.
           ALU_source               : in ALU_source_t;
           
           Zero                     : out  std_logic;
           result                   : out  std_logic_vector (31 downto 0) := (others => '0');
           ex_read_data_2_forwarded : out  std_logic_vector (31 downto 0) := (others => '0')
         );
           
end ALU;

architecture Behavioral of ALU is
    signal ALU_op : ALU_op_t;
    signal s_operandA:  signed (31 downto 0);
    signal s_operandB:  signed (31 downto 0);
    signal s_result:    signed (31 downto 0) := (others => '0');
    --signal temp_ex_read: std_logic_vector(31 downto 0) := (others => '0');
begin

	alu_control: process(op, extended_immediate)	
    begin
		if op = rtype then
            ALU_op <= get_funct(extended_immediate(20 downto 15));
        else
			ALU_op <= get_op_funct(op);
        end if;
    end process;

	mux: process(forward_a, forward_b, read_data_1, read_data_2, ALU_source, mem_alu_result_in, wb_alu_result_in)	
        --variable temp_ex_read: std_logic_vector(31 downto 0);
    begin
        
        case forward_a is
            when REG =>
                s_operandA <= signed(read_data_1);
            when WB =>
                s_operandA <= signed(wb_alu_result_in);
            when MEM =>
                s_operandA <= signed(mem_alu_result_in);
            when others =>
                null;
        end case;
        
--        case forward_b is
--            when REG =>
--                ex_read_data_2_forwarded <= read_data_2;
--            when WB =>
--                ex_read_data_2_forwarded <= wb_alu_result;
--            when MEM =>
--                ex_read_data_2_forwarded <= mem_alu_result;
--            when others =>
--                null;
--        end case;
--
--        if ALU_source = REG2 then
--            s_operandB <= signed(temp_ex_read);
--        else
--            s_operandB <= signed(extended_immediate);
--        end if;
        
	end process;


	alu_perform_op: process(ALU_op, s_operandA, s_operandB, s_result, extended_immediate)
    begin

		case ALU_op is
			when ADD =>     s_result   <= s_operandA + s_operandB;
			when SUB =>     s_result   <= s_operandA - s_operandB;
			when SLT =>
                if s_operandA < s_operandB then
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

