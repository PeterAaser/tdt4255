
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

entity Hazard_detection is
    port (
        control_unit_in : in control_signals_t;
        pc_address_src  : in PC_addr_source_t;
        
        control_out     : out control_signals_t
    );
end Hazard_detection;

architecture Behavioral of Hazard_detection is
    signal bubble_control : control_signals_t;
begin
    
    bubble_control.ALU_source   <= REG2;
    bubble_control.RegDst       <= REGT;
    bubble_control.MemtoReg     <= FROM_ALU;
    
    bubble_control.jump         <= false;
    bubble_control.branch       <= false;
    
    bubble_control.MemWrite     <= false;
    bubble_control.RegWrite     <= false;
    bubble_control.op           <= rtype;
    
    insert_branch_bubble : process(pc_address_src, control_unit_in)
    begin    
        control_out <= control_unit_in;
        if pc_address_src = branch_addr then
            control_out <= bubble_control;
        end if;
    end process insert_branch_bubble;
    
end Behavioral;

