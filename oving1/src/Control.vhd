library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;


entity Control is
    port (
        opcode      : in std_logic_vector(5 downto 0);
        RegDst      : out std_logic;
        Branch      : out std_logic;
        MemRead     : out std_logic;
        MemToReg    : out std_logic;
        ALUOp       : out std_logic_vector(1 downto 0);
        MemWrite    : out std_logic;
        ALUSrc      : out std_logic;
        RegWrite    : out std_logic;
        PWRite      : out std_logic
    );
end Control;

architecture Behavioral of Control is

begin


end Behavioral;

