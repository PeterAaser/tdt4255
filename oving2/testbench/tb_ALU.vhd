
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
        wb_out_result           : IN std_logic_vector(31 downto 0);
        mem_alu_result          : IN std_logic_vector(31 downto 0);
        
        op                      : IN  op_t;
        ALU_source              : IN  alu_source_t;
        
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
    signal wb_out_result        : std_logic_vector(31 downto 0) := (others => '0');
    signal mem_alu_result       : std_logic_vector(31 downto 0) := (others => '0');
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
        wb_out_result         => wb_out_result,
        mem_alu_result        => mem_alu_result,
        op                    => op,
        ALU_source            => ALU_source,
        result                => result,
        ex_read_data_2_forwarded=>ex_read_data_2_forwarded
    );


    -- Stimulus process
    stim_proc: process
    
    procedure test_op(    
        op_in               : in op_t;
        funct_in            : in ALU_op_t;
        ALU_source_in       : in ALU_source_t;
        forward_a_in        : in forward_t;
        forward_b_in        : in forward_t;
        wb_out_result_in    : in integer;
        mem_alu_result_in   : in integer;
        operand_a_in        : in integer;
        operand_b_in        : in integer;
        immediate           : in integer;
        expected_result     : in integer)
    is
    begin
        op                  <= op_in;
        funct               <= test_get_funct_inverse(funct_in);
        ALU_source          <= ALU_source_in;        
        read_data_1         <= conv_std_logic_vector(operand_a_in, 32);
        read_data_2         <= conv_std_logic_vector(operand_b_in, 32);
        extended_immediate  <= conv_std_logic_vector(immediate, 32);
        forward_a           <= forward_a_in;
        forward_b           <= forward_b_in;
        wb_out_result       <= conv_std_logic_vector(wb_out_result_in, 32);
        mem_alu_result      <= conv_std_logic_vector(mem_alu_result_in, 32);

        wait for clk_period;
        assert result = conv_std_logic_vector(expected_result, 32)
            report "RESULT MISMATCH: " & lf &
            "Operands: read_1 : " & vec_string(read_data_1) & lf &
            "Operands: read_2 : " & vec_string(read_data_2) & lf &
            "Operands: immediate : " & vec_string(extended_immediate) & lf &
            "Operands: mem : " & vec_string(mem_alu_result) & lf &
            "Operands: wb : " & vec_string(wb_out_result) & lf &
            "Operand source: forward_a : " & fw_string(forward_a_in) & lf &
            "Operand source: forward_b : " & fw_string(forward_b_in) & lf &
            "Operations: op " & op_string(op) & "\n" &
            "Operations: Funct " & ALU_op_string(get_funct(funct)) & lf &
            "With result: " & vec_string(result) & lf &
            "Expected result: " & vec_string(conv_std_logic_vector(expected_result, 32)) & lf & lf
            severity error;

        end test_op;
    begin		
        wait for clk_period;
        
        
        
        report "====== Test starting ======";
        
        report "Testing unforwarded operations";
        --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
        test_op(rtype,  add,    		REG2,   REG,  REG,  10,  10,  2,  3,  0,    5);
        test_op(rtype,  add,    		REG2,   REG,  REG,  10,  10,  9,  7,  10,   16);
        test_op(rtype,  sub,    		REG2,   REG,  REG,  10,  10,  9,  7,  10,   2);
        test_op(rtype,  sub,    		REG2,   REG,  REG,  10,  10,  1,  13, 10,  -12);
        test_op(rtype,  slt,    		REG2,   REG,  REG,  10,  10,  15, 5,  10,   0);
        test_op(rtype,  slt,    		REG2,   REG,  REG,  10,  11,  0,  3,  10,   1);
        test_op(rtype,  op_or,    	REG2,   REG,  REG,  10,  10,  1,  2,  1,    3);
        test_op(rtype,  op_and,     REG2,   REG,  REG,  10,  10,  10, 15, 6,    10);        
        
        
        report "Testing mem forwarded operations";
        --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
        test_op(rtype,  add,    		REG2,   MEM,  REG,  2,  11,  1,  3,  0,     14);
        test_op(rtype,  add,    		REG2,   MEM,  REG,  3,  13,  1,  7,  0,  	  20); 
        test_op(rtype,  sub,    		REG2,   MEM,  REG,  4,  7,   1,  7,  0,     0);
        test_op(rtype,  sub,    		REG2,   MEM,  REG,  5,  11,  1,  13, 0,    -2);
        test_op(rtype,  slt,    		REG2,   MEM,  REG,  6,  7,   1,  5,  0,     0);
        test_op(rtype,  slt,    		REG2,   MEM,  REG,  7,  19,  1,  20, 0,     1);
        test_op(rtype,  op_or,    	REG2,   MEM,  REG,  8,  2,   1,  3,  0,     3);
        test_op(rtype,  op_and,    	REG2,   MEM,  REG,  9,  41,  1,  26, 0,     8);
        
		  --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
		  test_op(rtype,  add,    		REG2,   MEM,  MEM,  2,  11,  1,  3,  0,     22);
        test_op(rtype,  add,    		REG2,   MEM,  MEM,  3,  13,  1,  7,  0,     26);
        test_op(rtype,  sub,    		REG2,   MEM,  MEM,  4,  7,   1,  7,  0,     0);
        test_op(rtype,  sub,    		REG2,   MEM,  MEM,  5,  11,  1,  13, 0,     0);
        test_op(rtype,  slt,    		REG2,   MEM,  MEM,  6,  7,   1,  5,  0,     0);
        test_op(rtype,  slt,    		REG2,   MEM,  MEM,  7,  19,  1,  20, 0,     0);
        test_op(rtype,  op_or,    	REG2,   MEM,  MEM,  8,  2,   1,  3,  0,     2);
        test_op(rtype,  op_and,    	REG2,   MEM,  MEM,  9,  41,  1,  26, 0,     41);
		  
		  --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
		  test_op(rtype,  add,    		REG2,   REG,  MEM,  10, 0,   1,  3,  0,     1);
        test_op(rtype,  add,    		REG2,   REG,  MEM,  10, 10,  1,  7,  0,     11);
        test_op(rtype,  sub,    		REG2,   REG,  MEM,  10, 7,   1,  7,  0,    -6);
        test_op(rtype,  sub,    		REG2,   REG,  MEM,  10, 11,  12, 13, 0,     1);
        test_op(rtype,  slt,    		REG2,   REG,  MEM,  10, 7,   1,  5,  0,     1);
        test_op(rtype,  slt,    		REG2,   REG,  MEM,  10, 19,  1,  20, 0,     1);
        test_op(rtype,  op_or,    	REG2,   REG,  MEM,  10, 2,   3,  1,  0,     3);
        test_op(rtype,  op_and,    	REG2,   REG,  MEM,  10, 41,  26, 1,  0,     8);
		  
		  report "Testing wb forwarded operations";
        --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
        test_op(rtype,  add,    		REG2,    WB,  REG,  2,  11,  1,  3,  0,     5);
        test_op(rtype,  add,    		REG2,    WB,  REG,  3,  13,  4,  7,  0,  	  10); 
        test_op(rtype,  sub,    		REG2,    WB,  REG,  4,  7,   6,  7,  0,    -3);
        test_op(rtype,  sub,    		REG2,    WB,  REG,  5,  11,  3,  13, 0,    -8);
        test_op(rtype,  slt,    		REG2,    WB,  REG,  6,  7,   8,  5,  0,     0);
        test_op(rtype,  slt,    		REG2,    WB,  REG,  7,  19,  4,  20, 0,     1);
        test_op(rtype,  op_or,    	REG2,    WB,  REG,  4,  2,   1,  3,  0,     7);
        test_op(rtype,  op_and,    	REG2,    WB,  REG,  41, 4,   5,  26, 0,     8);
        
		  --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
		  test_op(rtype,  add,    		REG2,    WB,   WB,  2,  11,  1,  3,  0,     4);
        test_op(rtype,  add,    		REG2,    WB,   WB,  3,  13,  1,  7,  0,     6);
        test_op(rtype,  sub,    		REG2,    WB,   WB,  4,  7,   1,  7,  0,     0);
        test_op(rtype,  sub,    		REG2,    WB,   WB,  5,  11,  1,  13, 0,     0);
        test_op(rtype,  slt,    		REG2,    WB,   WB,  6,  7,   1,  5,  0,     0);
        test_op(rtype,  slt,    		REG2,    WB,   WB,  7,  19,  1,  20, 0,     0);
        test_op(rtype,  op_or,    	REG2,    WB,   WB,  8,  2,   1,  3,  0,     8);
        test_op(rtype,  op_and,    	REG2,    WB,   WB,  9,  41,  1,  26, 0,     9);
		  
		  --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
		  test_op(rtype,  add,    		REG2,   REG,   WB,  10, 0,   1,  3,  0,     11);
        test_op(rtype,  add,    		REG2,   REG,   WB,  10, 10,  7,  1,  0,     17);
        test_op(rtype,  sub,    		REG2,   REG,   WB,  10, 7,   1,  7,  0,    -9);
        test_op(rtype,  sub,    		REG2,   REG,   WB,  10, 11,  12, 13, 0,     2);
        test_op(rtype,  slt,    		REG2,   REG,   WB,  10, 7,   1,  5,  0,     1);
        test_op(rtype,  slt,    		REG2,   REG,   WB,  10, 19,  1,  20, 0,     1);
        test_op(rtype,  op_or,    	REG2,   REG,   WB,   2, 2,   3,  1,  0,     3);
        test_op(rtype,  op_and,    	REG2,   REG,   WB,  41, 41,  26, 26, 0,     8);
		  
		  report "Testing wb and mem forwarded operations";
		  --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
		  test_op(rtype,  add,    		REG2,    MEM,  WB,  2,  11,  1,  3,  0,     13);
        test_op(rtype,  add,    		REG2,    MEM,  WB,  3,  13,  1,  7,  0,     16);
        test_op(rtype,  sub,    		REG2,    MEM,  WB,  4,  7,   1,  7,  0,     3);
        test_op(rtype,  sub,    		REG2,    MEM,  WB,  5,  11,  1,  13, 0,     6);
        test_op(rtype,  slt,    		REG2,    MEM,  WB,  6,  7,   1,  5,  0,     0);
        test_op(rtype,  slt,    		REG2,    MEM,  WB,  7,  19,  1,  20, 0,     0);
        test_op(rtype,  op_or,    	REG2,    MEM,  WB,  8,  2,   1,  3,  0,     10);
        test_op(rtype,  op_and,    	REG2,    MEM,  WB,  26, 41,  1,  26, 0,     8);
		  
		  --		 op 		func 			alusrc, srca  srcb  wb	mem  r1  r2  imm    expected result
		  test_op(rtype,  add,    		REG2,    WB,  MEM,  10, 0,   1,  3,  0,     10);
        test_op(rtype,  add,    		REG2,    WB,  MEM,  10, 10,  7,  1,  0,     20);
        test_op(rtype,  sub,    		REG2,    WB,  MEM,  10, 7,   1,  7,  0,     3);
        test_op(rtype,  sub,    		REG2,    WB,  MEM,  10, 11,  12, 13, 0,    -1);
        test_op(rtype,  slt,    		REG2,    WB,  MEM,  10, 7,   1,  5,  0,     0);
        test_op(rtype,  slt,    		REG2,    WB,  MEM,  10, 19,  1,  20, 0,     1);
        test_op(rtype,  op_or,    	REG2,    WB,  MEM,   8, 2,   3,  1,  0,     10);
        test_op(rtype,  op_and,    	REG2,    WB,  MEM,  26, 41,  26, 26, 0,     8);
		  
        assert false report "YOURE WINNER" severity failure;
     
        wait;
    end process;

END;
