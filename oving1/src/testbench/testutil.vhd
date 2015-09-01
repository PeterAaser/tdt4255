
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.defs.all;

package testutil is
    
	procedure check (
		condition : in boolean;
      error_msg : in string);

end package testutil;

package body testutil is
    
	procedure check (
		condition : in boolean;
      error_msg : in string) is
   begin
		assert condition report error_msg severity failure;
   end procedure check;

end package body testutil;