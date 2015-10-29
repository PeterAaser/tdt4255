library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.all;

entity Branch is
    generic (
        ADDR_WIDTH : integer := 8;
        DATA_WIDTH : integer := 32
    );
    port (
        op              : in opcode_t;
        immediate       : in immediate_t;
        pc              : in std_logic_vector(ADDR_WIDTH-1 downto 0);
        read_data_1     : in std_logic_vector(DATA_WIDTH-1 downto 0);
        read_data_2     : in std_logic_vector(DATA_WIDTH-1 downto 0);
        
        pc_address_src  : out PC_addr_source_t;
        address_out     : out std_logic_vector(ADDR_WIDTH-1 downto 0)
    );
end Branch;

architecture Behavioral of Branch is

begin

    update: process (op, immediate, read_data_1, read_data_2, pc)
    begin
        case get_op(op) is
            when beq =>
                if (read_data_1 = read_data_2) then
                    address_out <= std_logic_vector(unsigned(pc) + unsigned(immediate(ADDR_WIDTH-1 downto 0)));
                    pc_address_src <= Branch_addr;
                else
                    pc_address_src <= PC_addr;
                end if;
            when jump =>
                address_out <= immediate(ADDR_WIDTH-1 downto 0);
                pc_address_src <= Branch_addr;
            when others =>
                pc_address_src <= PC_addr;
        end case;
    end process;

end Behavioral;

