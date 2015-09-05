library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- at the moment a fairly pointless module, but present for extendibility

entity DecodeFunc is
    port(
        clk : in std_logic;
		  rst : in std_logic;
		  func : in func_t;
        
		  -- settings -- 
        RegDst : out std_logic;
        Branch : out std_logic;
		  Jump : out std_logic;
        MemRead : out std_logic;
        MemtoReg : out std_logic;
        MemWrite : out std_logic;
        ALUsrc : out std_logic;
        RegWrite : out std_logic;
		  stall : out std_logic);
		  
end DecodeFunc;

architecture Behavioral of DecodeFunc is
begin
	decode : process (clk, rst)
	begin
	
		RegDst <= '0'; 
		Branch <= '0';
		Jump <= '0';
		MemRead <= '0';
		MemtoReg <= '0';
		MemWrite <= '0';
		ALUsrc <= '0';
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
	end process;
end Behavioral;

