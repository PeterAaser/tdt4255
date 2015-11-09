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

	updateA: process(mem_regd, wb_regd, ex_regs, mem_regwrite, wb_regwrite)
    begin
    
        if mem_regd = ex_regs and wb_regd = ex_regs then
            if mem_regwrite = true and wb_regwrite = true then
                forward_a <= MEM;
            elsif wb_regwrite = true then
                forward_a <= WB;
            elsif mem_regwrite = true then
                forward_a <= MEM;
            else
                forward_a <= REG;
            end if;
        elsif mem_regd = ex_regs then
            if mem_regwrite = true then
                forward_a <= MEM;
            else
                forward_a <= REG;
            end if;
        elsif wb_regd = ex_regs then
            if wb_regwrite = true then
                forward_a <= WB;
            else
                forward_a <= REG;
            end if;
        else
            forward_a <= REG;
        end if;
        
        
--        if mem_regwrite = True and wb_regwrite = True and mem_regd /= b"00000" then
--            if mem_regd = ex_regs then
--                forward_a <= MEM;
--            else
--                forward_a <= REG;
--            end if;
--        elsif mem_regwrite = True and mem_regd /= b"00000" then
--            if mem_regd = ex_regs then
--                forward_a <= MEM;
--            else
--                forward_a <= REG;
--            end if;
--        elsif wb_regwrite = True and wb_regd /= b"00000" then
--            if wb_regd = ex_regs then
--                forward_a <= WB;
--            else
--                forward_a <= REG;
--            end if;
--        else
--            forward_a <= REG;
--        end if;
    end process;
    
    updateB: process(mem_regd, wb_regd, ex_regt, mem_regwrite, wb_regwrite)
    begin
        if mem_regd = ex_regt and wb_regd = ex_regt then
            if mem_regwrite = true and wb_regwrite = true then
                forward_b <= MEM;
            elsif wb_regwrite = true then
                forward_b <= WB;
            elsif mem_regwrite = true then
                forward_b <= MEM;
            else
                forward_b <= REG;
            end if;
        elsif mem_regd = ex_regt then
            if mem_regwrite = true then
                forward_b <= MEM;
            else
                forward_b <= REG;
            end if;
        elsif wb_regd = ex_regt then
            if wb_regwrite = true then
                forward_b <= WB;
            else
                forward_b <= REG;
            end if;
        else
            forward_b <= REG;
        end if;
    
    
--        if mem_regwrite = True and wb_regwrite = True and mem_regd /= b"00000" then
--            if mem_regd = ex_regt then
--                forward_b <= MEM;
--            else
--                forward_b <= REG;
--            end if;
--        elsif mem_regwrite = True and mem_regd /= b"00000" then
--            if mem_regd = ex_regt then
--                forward_b <= MEM;
--            else
--                forward_b <= REG;
--            end if;
--        elsif wb_regwrite = True and wb_regd /= b"00000" then
--            if wb_regd = ex_regt then
--                forward_b <= WB;
--            else
--                forward_b <= REG;
--            end if;
--        else
--            forward_b <= REG;
--        end if;
    end process;

end Behavioral;

