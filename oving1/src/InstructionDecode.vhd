library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.defs.all;

-- This is somewhat of a misnomer, as the all this module does is decide between R, I and J type
entity InstructionDecode is

    port(
        clk : in std_logic;
		  instruction_vector : in instruction_t;
        
        RegDst : out std_logic;
        Branch : out std_logic;
        MemRead : out std_logic;
        MemtoReg : out std_logic;
        ALUOp : out std_logic_vector(5 downto 0);
        MemWrite : out std_logic;
        ALUsrc : out std_logic;
        RegWrite : out std_logic);
		  
end InstructionDecode;

architecture Behavioral of InstructionDecode is
   signal format : instruction_format_t;
   signal opcode : opcode_t;
   signal func : func_t;
begin
   opcode <= instruction_vector(31 downto 26);
   format <= get_format(opcode);
   
   RegDst <= '0';
   Branch <= '0';
   MemRead <= '0';
   MemtoReg <= '0';
   ALUOp <= "000000";
   MemWrite <= '0';
   ALUsrc <= '0';
   RegWrite <= '0';
   
   decode : process (clk)
   begin
      if format = R_TYPE then
         
         
      elsif format = I_TYPE then
      else
      end if;
   end process;
   
end Behavioral;

