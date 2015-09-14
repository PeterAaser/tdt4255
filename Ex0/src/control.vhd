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

  -- Fill in type and signal declarations here.
  signal state 	: integer := 0; 

begin  -- architecture behavioural

	process(rst, clk, empty) is
		begin
			if rst='1' then
				state <= 0;
				read <= '0';
				push <= '0';
				pop <= '0';
				a_wen <= '0';
				b_wen <= '0';
		

			
			elsif rising_edge(clk) then
			
				if state = 0 then -- IDLE
					push <= '0';
					state <= 1;
				end if;	
				
				if state = 1 and empty = '0' then -- FETCH
					read <= '1';
					state <= 2;
				
				elsif state = 2 then -- DECODE
					read <= '0';
					if instruction(9) = '0' and instruction(8) = '0' then
						state <= state + 1;
					else
						state <= state + 2;
					end if;
				
				elsif state = 3 then -- PUSH_OPERAND
					stack_src <= STACK_INPUT_OPERAND;
					push <= '1';
					state <= 0;
					
				elsif state = 4 then -- POP_B
					b_wen <= '1';
					pop <= '1';
					state <= state + 1;
				
				elsif state = 5 then -- POP_A
					b_wen <= '0';
					a_wen <= '1';
					state <= state + 1;
					
				elsif state = 6 then -- COMPUTE
					a_wen <= '0';
					pop <= '0';
					if instruction(8) = '1' then
						alu_sel <= ALU_ADD;
					else
						alu_sel <= ALU_SUB;
					end if;
					state <= state + 1;
					
				elsif state = 7 then -- PUSH_RESULT
					stack_src <= STACK_INPUT_RESULT;
					push <= '1';
					state <= 0;
				end if;
			end if;
	end process;
	operand <= instruction(7 downto 0);
end architecture behavioural;
