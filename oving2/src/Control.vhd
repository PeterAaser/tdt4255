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
             instruction         : in std_logic_vector(31 downto 0);		
            
             PCWrite             : out std_logic := '0';
				 
             control_signals     : out control_signals_t
         );
end Control;

architecture Behavioral of Control is
    signal state : state_t := S_OFFLINE;
begin

    state_transitions: process(clk, reset, processor_enable)
    begin

        if processor_enable = '0' then
            state <= S_OFFLINE;
            
        elsif reset = '1' then
            state <= S_FETCH;
            
        elsif rising_edge(clk) then
            PCWrite <= '0';
            if state = S_FETCH then
                PCWrite <= '1';
                state <= S_EXECUTE;
            elsif state = S_EXECUTE then
                if get_op(instruction(31 downto 26)) = lw or get_op(instruction(31 downto 26)) = sw then
                    state <= S_STALL;
                else
                    state <= S_FETCH;
                end if;
            else
                state <= S_FETCH;
            end if;
        end if;
    end process;

    update: process(instruction, state)
    begin
	    
        
        if state = S_FETCH then
 
            -- to make sure we dont do operations twice
            control_signals.RegWrite <= false;

        elsif state = S_EXECUTE then
        
            control_signals.ALU_source <= REG2;
            control_signals.RegDst <= REGT;
            control_signals.MemtoReg <= FROM_ALU;

            control_signals.branch <= false;
            control_signals.jump <= false;
            control_signals.MemWrite <= false;
            control_signals.RegWrite <= false;
            control_signals.op <= rtype;
        
            case get_op(instruction(31 downto 26)) is
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
        elsif state = S_STALL then
            null;
        end if;
    end process;


end Behavioral;

