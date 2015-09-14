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

  -- Fill in type and signal declarations here.
  signal stack_ptr 	: integer := 1;  
  signal empty			: std_logic;

begin  -- architecture behavioural

  -- Fill in processes here.

	process(clk, rst) is
		begin
		if rst = '1' then
			--empty <= '1';
			stack_ptr <= 1;
		elsif rising_edge(clk) then
			if push = '1' then
				--if empty = '0' then
					stack_ptr <= stack_ptr + 1;
				--else
				--	empty <= '0';
				--end if;
			elsif pop = '1' then
				--if empty = '0' then
				--	if stack_ptr = 1 then
				--		empty <= '1';
				--	else
						stack_ptr <= stack_ptr - 1;
				--	end if;
				--end if;
			end if;
		end if;
	end process;

	register_file: entity work.RegFile
	generic map( size => size )
	port map(
		clk => clk,
		reset => rst,
		write_enable => push,
		addr => stack_ptr,
		data_in => value_in,
		data_out => top
	);
	
	
end architecture behavioural;
