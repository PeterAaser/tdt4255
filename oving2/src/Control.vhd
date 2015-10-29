library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Defs.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values                  
--use IEEE.NUMERIC_STD.ALL;


entity Control is
    generic (
                DATA_WIDTH : integer := 32
            );
    port (
             clk                 : in std_logic;
             reset               : in std_logic;
             processor_enable    : in std_logic;
             instruction         : in instruction_t;
				 
             control_signals     : out control_signals_t
         );
end Control;

architecture Behavioral of Control is
begin

    update: process(instruction)
    begin
  
        control_signals.ALU_source <= REG2;
        control_signals.RegDst <= REGT;
        control_signals.MemtoReg <= FROM_ALU;

        control_signals.branch <= false;
        control_signals.jump <= false;
        control_signals.MemWrite <= false;
        control_signals.RegWrite <= false;
        control_signals.op <= rtype;
    
        case get_op(instruction.opcode) is
            when rtype => -- R-Type
                control_signals.RegDst <= REGD;
                control_signals.RegWrite <= true;
                control_signals.op <= rtype;
                
            when beq => -- beq
                control_signals.branch <= true;
                control_signals.op <= beq;
                
            when lw => -- LW
                control_signals.MemtoReg <= FROM_MEM;
                control_signals.op <= lw;
                control_signals.ALU_source <= INSTR;
                control_signals.RegWrite <= true;
                
            when sw => --SW
                control_signals.op <= sw;
                control_signals.ALU_source <= INSTR;
                control_signals.MemWrite <= true;

            when jump => --J
                control_signals.jump <= true;
                control_signals.op <= jump;
                
            when lui => --lui
                control_signals.op <= lui;
                control_signals.RegWrite <= true;
                control_signals.ALU_source <= INSTR;

            when others =>
                null;
        end case;
    end process;


end Behavioral;

