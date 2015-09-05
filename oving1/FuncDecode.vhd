library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;


entity FuncDecode is

    port(
        clk : in std_logic;
		  rst : in std_logic;
		  opcode : in opcode_t;
        
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
		  
end FuncDecode;

architecture Behavioral of FuncDecode is

begin


end Behavioral;

