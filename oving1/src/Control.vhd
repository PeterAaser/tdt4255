library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Defs.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values                  
--use IEEE.NUMERIC_STD.ALL;


entity Control is
    port (
        clk                 : in std_logic;
        reset               : in std_logic;
        processor_enable    : in std_logic;
        opcode              : in std_logic_vector(5 downto 0);
        RegDst              : out std_logic;
        Branch              : out std_logic;
        Jump                : out std_logic;
        MemToReg            : out std_logic;
        ALUOp               : out std_logic_vector(1 downto 0);
        MemWrite            : out std_logic;
        ALUSrc              : out std_logic;
        RegWrite            : out std_logic;
        PCWrite             : out std_logic
    );
end Control;

architecture Behavioral of Control is
    signal state : state_t;
begin

    state_transitions: process(clk, reset)
    begin
        if processor_enable = '0' then
            state <= S_OFFLINE;
        elsif reset = '1' then 
            RegDst <= '0';
            Branch <= '0';
            Jump <= '0';
            MemToReg <= '0';
            ALUOp <= "00";
            MemWrite <= '0';
            ALUSrc <= '0';
            RegWrite <= '0';
            PCWrite <= '0';
            state <= S_FETCH;
        elsif rising_edge(clk) then
            if state = S_FETCH then
                state <= S_EXECUTE;
            elsif state = S_EXECUTE then
                if opcode = b"100011" or opcode = b"101011" then
                    state <= S_STALL;
                else
                    state <= S_FETCH;
                end if;
            else
                state <= S_FETCH;
            end if;
        end if;
    end process;

    update: process(clk)
    begin
        if rising_edge(clk) then
            if state = S_FETCH then
                case opcode is
                    when b"000000" =>
                        RegDst <= '1';
                        Branch <= '0';
                        MemToReg <= '0';
                        Jump <= '0';
                        ALUOp <= "00";
                        MemWrite <= '0';
                        ALUSrc <= '0';
                        RegWrite <= '0';
                        PCWrite <= '0';
                    when b"000100" =>
                        Branch <= '1';
                        Jump <= '0';
                        ALUOp <= "10";
                        MemWrite <= '0';
                        ALUSrc <= '0';
                        RegWrite <= '0';
                        PCWrite <= '0';
                    when b"100011" =>
                        MemToReg <= '1';
                        Branch <= '0';
                        Jump <= '0';
                        ALUOp <= "01";
                        MemWrite <= '0';
                        ALUSrc <= '1';
                        RegWrite <= '0';
                        PCWrite <= '0';
                    when b"101011" =>
                        Branch <= '0';
                        Jump <= '0';
                        ALUOp <= "01";
                        MemWrite <= '0';
                        RegWrite <= '0';
                        PCWrite <= '0';
                    when b"000010" =>
                        Jump <= '1';
                        MemWrite <= '0';
                        RegWrite <= '0';
                        PCWrite <= '0';
                    when others =>
                        null;
                end case;
             elsif state = S_EXECUTE then
                 case opcode is
                    when b"000000" =>
                        RegWrite <= '1';
                        PCWrite <= '1';
                    when b"000100" =>
                        PCWrite <= '1';
                    when b"100011" =>
                        RegWrite <= '1';
                        PCWrite <= '1';
                    when b"101011" =>
                        MemWrite <= '1';
                        PCWrite <= '1';
                    when b"000010" =>
                        PCWrite <= '1';
                    when others =>
                        null;
                 end case;
             end if;
        end if;
    end process;


end Behavioral;

