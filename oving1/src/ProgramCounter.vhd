library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.all;

entity ProgramCounter is
    generic (
        ADDR_WIDTH : integer := 8;
		  INSTR_WIDTH : integer := 26
    );
    port (
        clk, reset          : in std_logic;
        pc_write            : in std_logic;
		  jump					 : in std_logic;
		  branch					 : in std_logic; 
		  zero					 : in std_logic;
        instruction			 : in std_logic_vector(INSTR_WIDTH - 1 downto 0);
        address_out         : out std_logic_vector(ADDR_WIDTH - 1 downto 0)
		  --dbg_extended			 : out std_logic_vector(INSTR_WIDTH - 1 downto 0);
		  --dbg_extended_sig	 : out std_logic_vector(INSTR_WIDTH - 1 downto 0)

    );
end ProgramCounter;

architecture Behavioral of ProgramCounter is
    signal address : std_logic_vector(ADDR_WIDTH - 1 downto 0);
begin

    update: process(clk, reset)
	 	  variable extended : std_logic_vector(INSTR_WIDTH - 1 downto 0);
		  variable jump_adr : std_logic_vector(INSTR_WIDTH - 1 downto 0);
    begin
		  --extended := std_logic_vector(resize(signed(instruction(15 downto 0)), INSTR_WIDTH ));
		  --dbg_extended_sig <= std_logic_vector(resize(signed(instruction(15 downto 0)), INSTR_WIDTH ));

		  
        if reset = '1' then
            address <= (others => '0');
        elsif rising_edge(clk) and pc_write = '1' then
			
            if jump = '1' then
					address <= instruction(7 downto 0);
				else
					if branch = '1' and zero = '1' then
						address <= std_logic_vector(unsigned(address) + 1 + unsigned(instruction(7 downto 0)));
					else
						address <= std_logic_vector(unsigned(address) + 1);
					end if;
            end if;
        end if;
		  --dbg_extended_sig <= extended_sig;
		  --dbg_extended <= extended;
    end process;

    address_out <= address;
    
end Behavioral;

