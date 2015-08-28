library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

entity control is
  
  port (
    clk : in std_logic;
    rst : in std_logic;

    -- Communication
    instruction : in  instruction_t;
    empty       : in  std_logic;
    read        : out std_logic;

    -- Stack control
    push      : out std_logic;
    pop       : out std_logic;
    stack_src : out stack_input_select_t;
    operand   : out operand_t;

    -- ALU control
    a_wen   : out std_logic;
    b_wen   : out std_logic;
    alu_sel : out alu_operation_t);


end entity control;

architecture behavioural of control is
  
	type state_type is (S_IDLE, S_FETCH, S_DECODE, S_PUSH_OPERAND, S_POP_B, S_POP_A, S_COMPUTE, S_PUSH);
	signal state : state_type;
	signal op_code : operand_t;

begin

    do_state_thangz : process(clk, rst)
    begin
        if rst = '1' then
			state <= S_IDLE;
		elsif (rising_edge(clk)) then
			case state is	  
				when S_IDLE=>
					if empty = '1' then
					   state <= S_IDLE;
					else 
					   state <= S_FETCH;
					end if;
					
				when S_FETCH=>
					state <= S_DECODE;
					
				when S_DECODE=>
					if op_code = (7 downto 0 => '0') then
					   state <= S_PUSH_OPERAND;
					else 
						state <= S_POP_B;
					end if;
					
				when S_PUSH_OPERAND=>
					state <= S_IDLE;
				
				when S_POP_B=>
					state <= S_POP_A;
				
				when S_POP_A=>
					state <= S_COMPUTE;
				
				when S_COMPUTE=>
					state <= S_PUSH;
				
				when S_PUSH=>
					state <= S_IDLE;
					
			end case;
		end if;
	end process;

	say_state_thangz : process(clk, state, instruction, empty, state, op_code)
	begin
		push <= '0';
		pop <= '0';
		read <= '0';
		a_wen <= '0';
		b_wen <= '0';
		stack_src <= STACK_INPUT_OPERAND;
		operand <= instruction(7 downto 0);
		
		case state is
			when S_FETCH=>
				read <= '1';
				op_code <= instruction(15 downto 8);
				
			when S_PUSH_OPERAND=>
				push <= '1';
				stack_src <= STACK_INPUT_OPERAND;
			
			when S_POP_B=>
				pop <= '1';
				b_wen <= '1';
			
			when S_POP_A=>
				pop <= '1';
				a_wen <= '1';
			
			when S_COMPUTE=>
				if op_code = "00000001" then
					alu_sel <= ALU_ADD;
				else
					alu_sel <= ALU_SUB;
				end if;
			
			when S_PUSH=>
				stack_src <= STACK_INPUT_RESULT;
				push <= '1';
				
			when others=>
				null;
		end case;
	end process;

  
end architecture behavioural;
