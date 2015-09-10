library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- at the moment a fairly pointless module, but present for extendibility

entity DecodeFunc is
    port(
        clk : in std_logic;
		  reset : in std_logic;
		  func : in func_t;
        
		  -- settings -- 
        RegDst : out std_logic;
        Branch : out std_logic;
		  Jump : out std_logic;
        MemtoReg : out std_logic;
        MemWrite : out std_logic;
        RegWrite : out std_logic;
		  stall : out std_logic;
		  
		  ALU_op : out ALU_op_t);
		  
end DecodeFunc;

architecture Behavioral of DecodeFunc is
begin
	decode : process (clk, reset)
	begin
		if rising_edge(clk) then
		
			RegDst <= '0'; 
			Branch <= '0';
			Jump <= '0';
			MemtoReg <= '0';
			MemWrite <= '0';
			RegWrite <= '0';
			stall <= '0';
		
			case get_function(func) is
				when add=>
					RegWrite <= '1';
					RegDst <= '1';
				when sub=>
					RegWrite <= '1';
					RegDst <= '1';
				when islt=>
					RegWrite <= '1';
					RegDst <= '1';
				when iand=>
					RegWrite <= '1';
					RegDst <= '1';
				when ior=>
					RegWrite <= '1';
					RegDst <= '1';
				when others=>
			end case;
			
			ALU_op <= get_function(func);
		end if;
	end process;
end Behavioral;

