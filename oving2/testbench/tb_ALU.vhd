
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.conv_std_logic_vector;
use ieee.numeric_std.all;
use work.defs.all;


entity tb_ALU is
end tb_ALU;
 
architecture behavior OF tb_ALU IS 
 

  --  function str(n: data_t) return string is begin return integer'image(to_integer(n)); end str;  
 
    component alu
    port(
        read_data_1             : IN  std_logic_vector(31 downto 0);
        read_data_2             : IN  std_logic_vector(31 downto 0);
        extended_immediate      : IN  std_logic_vector(31 downto 0);
        funct                   : IN  funct_t;
        
        forward_a               : IN forward_t;
        forward_b               : IN forward_t;
        wb_alu_result           : IN std_logic_vector(31 downto 0);
        mem_alu_result          : IN std_logic_vector(31 downto 0);
        
        op                      : IN  op_t;
        ALU_source              : IN  alu_source_t;
        
        Zero                    : OUT  std_logic;
        result                  : OUT  std_logic_vector(31 downto 0);
        ex_read_data_2_forwarded: OUT  std_logic_vector(31 downto 0)
);
    end component;

    --Inputs
    signal read_data_1          : std_logic_vector(31 downto 0) := (others => '0');
    signal read_data_2          : std_logic_vector(31 downto 0) := (others => '0');
    signal extended_immediate   : std_logic_vector(31 downto 0) := (others => '0');
    signal funct                : funct_t;
    signal forward_a            : forward_t := REG;
    signal forward_b            : forward_t := REG;
    signal wb_alu_result        : std_logic_vector(31 downto 0) := (others => '0');
    signal mem_alu_result        : std_logic_vector(31 downto 0) := (others => '0');
    signal op                   : op_t;
    signal ALU_source           : alu_source_t;

    --Outputs
    signal Zero                 : std_logic;
    signal result               : std_logic_vector(31 downto 0) := (others => '0');
    signal ex_read_data_2_forwarded: std_logic_vector(31 downto 0) := (others => '0');

    constant clk_period         : time := 10 ns;
   
    signal expected_result      : integer := 0;
begin
 
	-- Instantiate the Unit Under Test (UUT)
    uut: ALU port map(
        read_data_1           => read_data_1,
        read_data_2           => read_data_2,
        extended_immediate    => extended_immediate,
        funct                 => funct,
        forward_a             => forward_a,
        forward_b             => forward_b,
        wb_alu_result         => wb_alu_result,
        mem_alu_result         => mem_alu_result,
        op                    => op,
        ALU_source            => ALU_source,
        Zero                  => Zero,
        result                => result,
        ex_read_data_2_forwarded=>ex_read_data_2_forwarded
    );


    -- Stimulus process
    stim_proc: process
    
    procedure test_op(    
        op_in               : in op_t;
        funct_in            : in ALU_op_t;
        ALU_source_in       : in ALU_source_t;
        operand_a           : in integer;
        operand_b           : in integer;
        immediate           : in integer;
        expected_result     : in integer;
        expected_zero       : in boolean)
    is
    begin
        op                  <= op_in;
        funct               <= test_get_funct_inverse(funct_in);      
        read_data_1         <= conv_std_logic_vector(operand_a, 32);
        read_data_2         <= conv_std_logic_vector(operand_b, 32);
        extended_immediate  <= conv_std_logic_vector(immediate, 32);
        ALU_source          <= ALU_source_in;

        wait for clk_period;
        assert result = conv_std_logic_vector(expected_result, 32)
            report "RESULT MISMATCH: " & lf &
            "Operands: read_1 : " & vec_string(read_data_1) & lf &
            "Operands: read_2 : " & vec_string(read_data_1) & lf &
            "Operands: immediate : " & vec_string(extended_immediate) & lf &
            "Operations: op " & op_string(op) & "\n" &
            "Operations: Funct " & ALU_op_string(get_funct(funct)) & lf &
            "With result: " & vec_string(result) & lf &
            "Expected result: " & vec_string(conv_std_logic_vector(expected_result, 32))
            severity error;

        assert (zero = '0') = expected_zero 
            report "ZERO MISMATCH: " & lf &
            "Operands: read_1 : " & vec_string(read_data_1) & lf &
            "Operands: read_2 : " & vec_string(read_data_1) & lf &
            "Operands: immediate : " & vec_string(extended_immediate) & lf &
            "Operations: op " & op_string(op) & lf &
            "Operations: Funct " & ALU_op_string(get_funct(funct)) & lf &
            "With result: " & vec_string(result) & "\n " &
            "Expected result: " & vec_string(conv_std_logic_vector(expected_result, 32)) & lf &
            "With Zero: " & bool_string(zero = '0') & lf &
            "Expected Zero: " & bool_string(expected_zero)
            severity error;     
        end test_op;
    begin		
        wait for clk_period;
        
        report "====== Test starting ======";
        
        report "Testing operations on 0";
        -- ZEROS
        test_op(rtype,  add,    REG2, 0, 0, 0, 0, true);
        test_op(rtype,  sub,    REG2, 0, 0, 0, 0, true);
        test_op(rtype,  op_and, REG2, 0, 0, 0, 0, true);
        test_op(rtype,  op_or,  REG2, 0, 0, 0, 0, true);
        
        test_op(rtype,  add,    REG2, 0, 0, 0, 0, true);
        test_op(rtype,  sub,    REG2, 0, 0, 0, 0, true);
        test_op(rtype,  op_and, REG2, 0, 0, 0, 0, true);
        test_op(rtype,  op_or,  REG2, 0, 0, 0, 0, true);
        
        -- read_data_1
        
        assert false report "YOURE WINNER" severity failure;
     
        wait;
    end process;

END;
