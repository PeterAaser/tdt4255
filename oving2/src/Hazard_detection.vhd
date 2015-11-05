
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- Hazard detection should detect if an instruction following LW tries to read the destination register of the LW and initiate 
-- stall and bubble. 

-- To calculate this we need the two addresses of the instruction currently ad ID. We will match those with the recipient register
-- which we will collect from the ex stage

-- Once a collission is detected the following needs to happen:
--      ID overrides instruction in ID stage to NOP
--      IM is stalled so the overriden instruction wont get lost

-- This is the only data hazard we will consider, since we expect the forwarder to solve other dependencies

-- The second hazard to consider is branch hazards, which happens whenver a branch is taken

entity Hazard_detection is
    port (
        id_reg_a          : in reg_t;
        id_reg_b          : in reg_t;
        ex_reg_dest       : in reg_t;
		  processor_enable  : in std_logic;
        
        pc_address_src    : in PC_addr_source_t;
        
        control_hazard    : out std_logic := '0';
        data_hazard       : out std_logic := '0'
    );
end Hazard_detection;

architecture Behavioral of Hazard_detection is
    signal bubble_control : control_signals_t;
begin

    detect_data_hazard : process(id_reg_a, id_reg_b, ex_reg_dest)
    begin
        if processor_enable = '1' then
			  data_hazard <= '0';
			  if id_reg_a = ex_reg_dest then
					data_hazard <= '1';
			  elsif id_reg_b = ex_reg_dest then
					data_hazard <= '1';
			  else
					data_hazard <= '0';
			  end if;
		  end if;
        
    end process detect_data_hazard;
    
    detect_control_hazard : process(pc_address_src)
    begin
		  if processor_enable = '1' then
			  control_hazard <= '0';
			  if pc_address_src = branch_addr then
					control_hazard <= '1';
			  end if;
		  else
			  control_hazard <= '0';
		  end if;
		  
    end process detect_control_hazard;
    
end Behavioral;

