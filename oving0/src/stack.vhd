library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

entity stack is
  
  generic (
    size : natural := 1024);            -- Maximum number of operands on stack

  port (
    clk       : in  std_logic;
    rst       : in  std_logic;
    value_in  : in  operand_t;
    push      : in  std_logic;
    pop       : in  std_logic;
    top       : out operand_t);

end entity stack;

architecture behavioural of stack is
  signal stack_ptr : integer;


begin  -- architecture behavioural
	
	store: entity work.storage
	port map (clk => clk, push => push, pop => pop, stack_ptr => stack_ptr, stack_in => value_in, stack_top => top, rst => rst);
	
	do_stack_thangz : process(rst, pop, push, clk)
	begin
		if rst = '1' then
			stack_ptr <= 0;
		end if;
		if rising_edge(clk) then
			if push = '1' then
				stack_ptr <= stack_ptr + 1;
			end if;
		end if;
	end process;
	


  -- Fill in processes here.

end architecture behavioural;
