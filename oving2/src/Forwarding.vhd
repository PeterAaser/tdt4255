library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.Defs.all;

entity Forwarding is
    generic (
        DATA_WIDTH : integer := 32
            );
    port (
        mem_regd        : in reg_t;
        wb_regd         : in reg_t;
        ex_regs         : in reg_t;
        ex_regt         : in reg_t;
        mem_regwrite    : in RegWrite_t;
        wb_regwrite     : in RegWrite_t;
        
        forward_a       : out Forward_t;
        forward_b       : out Forward_t
        );
end Forwarding;

architecture Behavioral of Forwarding is
begin

    update: process(mem_regd, wb_regd, ex_regs, ex_regt, mem_regwrite, wb_regwrite)
    begin
        if ( mem_regwrite and (mem_regd /= b"00000")) then
            if(mem_regd = ex_regs) then forward_a <= MEM; end if; -- 1a
            if(mem_regd = ex_regt) then forward_b <= MEM; end if; -- 1b
        end if;

        if ( wb_regwrite and (wb_regd /= b"00000") and not (mem_regwrite and (mem_regd /= b"00000"))) then
            if(mem_regd /= ex_regs and wb_regd = ex_regs) then forward_a <= WB; end if;   -- 2a
            if(mem_regd /= ex_regt and wb_regd = ex_regt) then forward_b <= WB; end if;   -- 2b
        end if;

    end process;

end Behavioral;

