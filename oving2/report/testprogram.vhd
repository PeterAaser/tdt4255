X"8C010001", --lw $1, 1($0)		/$1 =  2	
X"8C020002", --lw $2, 2($0)		/$2 = 10	
X"00221820", --add $3, $1, $2	   /$3 = 12		
X"AC030005", --sw $3, 5($0)		/Saving value 12 on address 5	
X"10000002", --beq $0, $0, 2		/Jumping to adress +2 = 8	
X"AC030003", --sw $3, 3($0)      /SKIPPED (Saving value 12 on address 3)			
X"AC030004", --sw $3, 4($0)		/SKIPPED	(Saving value 12 on address 4)
X"AC030006", --sw $3, 6($0)		/Saving value 12 on address 6	
X"AC030007", --sw $3, 7($0)		/Saving value 12 on address 7	
X"3C030006", --lui $3, 6			/$3 = 6 * 2^16 = 393216 = 0x60000
X"AC030008", --sw $3, 8($0)		/Saving value 0x60000 on address 8	
X"00231820", --add $3, $1, $3		/$3 = 393218 = 0x60002	
X"AC030009", --sw $3, 9($0)		/Saving 0x60002 on address 9	
X"10400002", --beq $2, $0, 2		/No branch	
X"0001982A", --slt $19, $0, $1	/$19 = 1		
X"AC13000C", --sw $19, 12($0)		/Saving 1 on address 12	
X"08000013", --j 19					/jump to 19
X"AC030001", --sw $3, 1($0)		/SKIPPED (Saving 0x60002 on address 1)	
X"1000FFFD", --beq $0, $0, -3		/SKIPPED (Branch back three steps)	
X"00622022", --sub $4, $3, $2		/$4 = 0x5FFF8 	
X"00822022", --sub $4, $4, $2		/$4 = 0x5FFEE
X"AC04000D", --sw $4, 13($0)		/Saving value 0x5FFEE on address 13 	
X"00221820", --add $3, $1, $2		/$3 = 12	
X"00432024", --and $4, $2, $3		/$4 = 1000 = 8	
X"00432825", --or $5, $2, $3		/$5 = 1110 = 14	
X"AC04000F", --sw $4, 15($0)		/Saving value 8 on address 15	
X"AC050010", --sw $5, 16($0)		/Saving value 14 (= 0xE) on address 16	
X"002A5020", --add $10, $1, $10  /add $1 to $ 10 and place in $10
X"1000FFFF", --beq $0, $0, -1	/Branch back one step to hold off code at this spot
X"AC050012" --sw $5, 18($0)		/SHOULD NEVER HAPPEN (Saving value 14 (= 0xE) on address 18.