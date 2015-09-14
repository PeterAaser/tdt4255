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
        RegDst : out std_logic := '0';
        Branch : out std_logic := '0';
		  zero_invert : out std_logic := '0';
		  Jump : out std_logic := '0';
        MemRead : out std_logic := '0';
        MemtoReg : out std_logic := '0';
        MemWrite : out std_logic := '0';
        RegWrite : out std_logic := '0';
		  stall : out std_logic := '0';
		  
		  -- Not currently used. Should it?
		  op : out op_t := j; 
		  
		  -- DecodeFunc override --
		  ControlSrc : out std_logic := '0';
		  
		  -- ALU issue if overriding --
		  ALU_op : out ALU_op_t := add);
		  
end DecodeOp;

architecture Behavioral of DecodeOp is
begin
   decode : process (clk, reset)
begin
	if rising_edge(clk) then
		
		-- Currently only here as a debug tool
		op <= get_op( opcode);
		
		-- Selects opcode module as control signal driver for select signals --
		ControlSrc <= '1';
		
		stall <= '0';
		
			case get_format(opcode) is
				when R_TYPE=>
					ControlSrc <= '0';
				when I_TYPE=>
					-- stall (does all I-type stall??)
					stall <= '1';
					
					-- load store? --
					if opcode(5) = '1' then
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

