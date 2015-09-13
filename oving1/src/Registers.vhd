library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.defs.all;

-- In the ARM architectures the PC is accesible, however in MIPS it is not, and is thus not an entity in the register module
-- To actually access the PC one must do so indirectly via a jump and peeking in the link register.

entity Registers is
	generic(
		DATA_WIDTH : integer := 32);
	port(
		clk : in std_logic;
		reset : in std_logic;
		read1_reg : in reg_t; 
		read2_reg : in reg_t;
		write_reg : in reg_t;
		write_data : in signed(DATA_WIDTH-1 downto 0);
		RegWrite : in std_logic;
		
		data1 : out signed(DATA_WIDTH-1 downto 0);
		data2 : out signed(DATA_WIDTH-1 downto 0)
		);
		
end Registers;

architecture Behavioral of Registers is
	subtype register_t is signed(DATA_WIDTH-1 downto 0);
	type register_bank_t is array (integer range <>) of register_t;
	signal registers : register_bank_t(0 to 31);
begin
	
	access_registers : process (clk)
		variable r1 : unsigned(4 downto 0);
		variable r2 : unsigned(4 downto 0);
		variable rd : unsigned(4 downto 0);
	begin
		if rising_edge(clk) then
			if reset = '1' then
				report "I am actually resetting";
				-- registers(0) <= x"00000000";
				registers(0 to 31) <= (others => (others => '0'));
		
			else
				r1 := unsigned(read1_reg);
				r2 := unsigned(read2_reg);
				rd := unsigned(write_reg);

				data1 <= signed(registers(to_integer(unsigned(std_logic_vector(r1)))));
				data2 <= signed(registers(to_integer(unsigned(std_logic_vector(r2)))));
			
				if RegWrite = '1' then
					if rd = (4 downto 0 => '0') then
						report "Attempt to set 0 register";
					else
						report "Attempt to set register" & integer'image(to_integer(rd));
						registers(to_integer(rd)) <= write_data;
					end if;
				end if;
			end if;
		end if;
	end process;
	
end Behavioral;

