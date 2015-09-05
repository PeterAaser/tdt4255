library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;


entity DecodeOp is

    port(
        clk : in std_logic;
		  reset : in std_logic;
		  opcode : in opcode_t;
        
		  -- settings -- 
        RegDst : out std_logic;
        Branch : out std_logic;
		  zero_invert : out std_logic;
		  Jump : out std_logic;
        MemRead : out std_logic;
        MemtoReg : out std_logic;
        MemWrite : out std_logic;
        RegWrite : out std_logic;
		  stall : out std_logic;
		  
		  -- DecodeFunc override --
		  ControlSrc : out std_logic;
		  
		  -- ALU override and issue --
		  ALU_src : out std_logic;
		  ALU_op : out ALU_op_t);
		  
end DecodeOp;

architecture Behavioral of DecodeOp is
begin
   decode : process (clk, reset)
	begin
		
		RegDst <= '0'; 
		Branch <= '0';
		zero_invert <= '0';
		Jump <= '0';
		MemRead <= '0';
		MemtoReg <= '0';
		MemWrite <= '0';
		RegWrite <= '0';
		stall <= '0';
		
		ALU_src <= '0';
		ALU_op <= add;
		
		-- Selects opcode module as control signal driver for select signals --
		ControlSrc <= '1';
		
		if rising_edge(clk) then
			
			case get_format(opcode) is
				when R_TYPE=>
					ControlSrc <= '0';
				when I_TYPE=>
					-- stall (does all I-type stall??)
					stall <= '1';
					
					-- load store? --
					if opcode(5) = '1' then
						ALU_src <= '1';
						ALU_op <= add;
						
						if opcode(3) = '0' then --store
							MemWrite <= '1';
						else -- load --						
							MemtoReg <= '1'; 
							RegWrite <= '1';
						end if;
					
					-- bne beq? --
					else
						branch <= '1';
						ALU_src <= '1';
						ALU_op <= sub;
						if opcode(0) = '0' then -- beq --
							zero_invert <= '0';
						else
							zero_invert <= '1';
						end if;
					end if;
					
				when J_TYPE=>
					jump <= '1';
			end case;
		end if;
	
	
	end process;
end Behavioral;

