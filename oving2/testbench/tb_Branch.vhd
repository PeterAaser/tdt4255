LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use ieee.std_logic_arith.conv_std_logic_vector;
use work.defs.all;
 
ENTITY tb_Branch IS
END tb_Branch;
 
ARCHITECTURE behavior OF tb_Branch IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Branch
    PORT(
         op : IN  std_logic_vector(5 downto 0);
         immediate : IN  std_logic_vector(15 downto 0);
         pc : IN  std_logic_vector(7 downto 0);
         read_data_1 : IN  std_logic_vector(31 downto 0);
         read_data_2 : IN  std_logic_vector(31 downto 0);
         PC_address_src : OUT  PC_addr_source_t;
         address_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(5 downto 0) := (others => '0');
   signal immediate : std_logic_vector(15 downto 0) := (others => '0');
   signal pc : std_logic_vector(7 downto 0) := (others => '0');
   signal read_data_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal read_data_2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PC_address_src : PC_addr_source_t;
   signal address_out : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Branch PORT MAP (
          op => op,
          immediate => immediate,
          pc => pc,
          read_data_1 => read_data_1,
          read_data_2 => read_data_2,
          PC_address_src => PC_address_src,
          address_out => address_out
        );

    stim_proc: process

procedure test_pc(
    op_in                       : in op_t;
    immediate_in                : in integer;
    pc_in                       : in integer;
    read_data_1_in              : in integer;
    read_data_2_in              : in integer;
    expected_pc_source_address  : in PC_addr_source_t;
    expected_address            : in integer)
is
begin
    op                  <= test_get_op_inverse(op_in);
    immediate           <= conv_std_logic_vector(immediate_in, 16);
    pc                  <= conv_std_logic_vector(pc_in, 8);
    read_data_1         <= conv_std_logic_vector(read_data_1_in, 32);
    read_data_1         <= conv_std_logic_vector(read_data_2_in, 32);
    wait for clk_period;
    
    assert address_out = conv_std_logic_vector(expected_address, 8)
        report "YOU FUCKED UP, NIGGA" & lf;

    
end test_pc;
    
    
    begin
        op <= test_get_op_inverse(rtype);
        wait for clk_period;
        
        test_pc(jump, 171, 128, 12, 21, PC_addr, 171);
        test_pc(beq, 18, 128, 4321, 1234, PC_addr, 128); -- what should expected address be?
        test_pc(beq, 18, 128, 1234, 1234, Branch_addr, 18);
        
        assert false report "YOURE WINNER" severity failure;

      wait;
   end process;

END;
