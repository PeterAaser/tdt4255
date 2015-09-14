library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

entity ALU is
    generic(
        DATA_WIDTH : integer := 32);
    port(
        clk : in std_logic;
	
        op_A : in signed(DATA_WIDTH - 1 downto 0);
        op_B_reg : in signed(DATA_WIDTH - 1 downto 0);
        op_B_imm : in signed(DATA_WIDTH - 1 downto 0);
        op_sel : in ALU_op_t;
        zero_invert : in std_logic;
        ALUsrc : in std_logic;
        
        zero : out std_logic;
        result : out signed(DATA_WIDTH - 1 downto 0));
		
end ALU;

architecture Behavioral of ALU is
	
begin


calculate_result : process(clk)
    variable op_B : signed(DATA_WIDTH - 1 downto 0) := (DATA_WIDTH - 1 downto 0 => '0');
    begin
        if rising_edge(clk) then
            if ALUsrc = '1' then
                op_B := op_B_imm;
            else
                op_B := op_B_reg;
            end if;
            case op_sel is
                when add=>
                    result <= op_A + op_B;
                when sub=>
                    result <= op_A - op_B;
                when ior=>
                    result <= op_A or op_B;
                when iand=>
                    result <= op_A and op_B;
                when islt=>
                    if op_A > op_B then
                        result <= to_signed(1, data_width);
                    else 
                        result <= to_signed(0, data_width);
                    end if;
                when others=>
                    -- !!panic!!
            end case;
        
        end if;
    end process;
end Behavioral;

