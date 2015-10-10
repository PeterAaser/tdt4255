--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Defs is
  type state_t is (S_FETCH, S_EXECUTE, S_STALL);
end Defs;


package body Defs is

end Defs;
