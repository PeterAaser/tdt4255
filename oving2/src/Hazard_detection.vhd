
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- Hazard detection should detect if an instruction following LW tries to read the destination register of the LW and initiate 
-- stall and bubble. 

-- To calculate this we need the two addresses of the instruction currently ad ID. We will match those with the recipient register
-- which we will collect from the ex stage

-- Once a collission is detected the following needs to happen:
--      EX stage becomes NOP
--      IM and ID stage is stalled such that we dont NOP a valid instruction

entity Hazard_detection is
    port (
        id_reg_a          : in reg_t;
        id_reg_b          : in reg_t;
        ex_reg_dest       : in reg_t;
        
        stall             : out std_logic
    );
end Hazard_detection;

architecture Behavioral of Hazard_detection is
    signal bubble_control : control_signals_t;
begin

    do_lw_stall : process(id_reg_a, id_reg_b, ex_reg_dest)
    begin
        
        stall <= '0';
        if id_reg_a = ex_reg_dest then
            stall <= '1';
        elsif id_reg_b = ex_reg_dest then
            stall <= '1';
        end if;
        
    end process do_lw_stall;
    
end Behavioral;

