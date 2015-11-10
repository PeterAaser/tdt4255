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
        id_regs         : in reg_t;
        id_regt         : in reg_t;
        ex_regs         : in reg_t;
        ex_regt         : in reg_t;
        mem_regwrite    : in RegWrite_t;
        wb_regwrite     : in RegWrite_t;
        
        forward_ex_a       : out Forward_t;
        forward_ex_b       : out Forward_t;
        forward_id_a       : out Forward_t;
        forward_id_b       : out Forward_t
        );
end Forwarding;

architecture Behavioral of Forwarding is
begin

    updateIdA: process(wb_regd, id_regs, wb_regwrite)
    begin
        if wb_regd = id_regs and wb_regwrite = true then
            forward_id_a <= WB;
        else
            forward_id_a <= REG;
        end if;
    end process;
    
    updateIdB: process(wb_regd, id_regt, wb_regwrite)
    begin
        if wb_regd = id_regt and wb_regwrite = true then
            forward_id_b <= WB;
        else
            forward_id_b <= REG;
        end if;
    end process;
    
	updateExA: process(mem_regd, wb_regd, ex_regs, mem_regwrite, wb_regwrite)
    begin
    
        if mem_regd = ex_regs and wb_regd = ex_regs then
            if mem_regwrite = true and wb_regwrite = true then
                forward_ex_a <= MEM;
            elsif wb_regwrite = true then
                forward_ex_a <= WB;
            elsif mem_regwrite = true then
                forward_ex_a <= MEM;
            else
                forward_ex_a <= REG;
            end if;
        elsif mem_regd = ex_regs then
            if mem_regwrite = true then
                forward_ex_a <= MEM;
            else
                forward_ex_a <= REG;
            end if;
        elsif wb_regd = ex_regs then
            if wb_regwrite = true then
                forward_ex_a <= WB;
            else
                forward_ex_a <= REG;
            end if;
        else
            forward_ex_a <= REG;
        end if;
    end process;
    
    updateExB: process(mem_regd, wb_regd, ex_regt, mem_regwrite, wb_regwrite)
    begin
        if mem_regd = ex_regt and wb_regd = ex_regt then
            if mem_regwrite = true and wb_regwrite = true then
                forward_ex_b <= MEM;
            elsif wb_regwrite = true then
                forward_ex_b <= WB;
            elsif mem_regwrite = true then
                forward_ex_b <= MEM;
            else
                forward_ex_b <= REG;
            end if;
        elsif mem_regd = ex_regt then
            if mem_regwrite = true then
                forward_ex_b <= MEM;
            else
                forward_ex_b <= REG;
            end if;
        elsif wb_regd = ex_regt then
            if wb_regwrite = true then
                forward_ex_b <= WB;
            else
                forward_ex_b <= REG;
            end if;
        else
            forward_ex_b <= REG;
        end if;
    end process;

end Behavioral;

