LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY ALU_16Bit IS
	PORT (	a, b  				  : IN STD_LOGIC_VECTOR(15 DOWNTO 0) ;
				Opcode				  : IN STD_LOGIC_VECTOR(2 DOWNTO 0) ;
				Result				  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) ;
				Overflow				  : OUT STD_LOGIC ) ;
END ALU_16Bit;
ARCHITECTURE Structural OF ALU_16Bit IS
	COMPONENT ALU_1Bit
		PORT (	a, b, AInv, BInv, CIn  : IN STD_LOGIC ;
					Op							  : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
			   	Cout, Result			  : OUT STD_LOGIC ) ;
	END COMPONENT ;	
	SIGNAL  Cin, AInv, BInv : STD_LOGIC ;
	SIGNAL  Op					: STD_LOGIC_VECTOR(1 DOWNTO 0) ;
	SIGNAL  Cout 				: STD_LOGIC_VECTOR(15 DOWNTO 0) ;	
BEGIN
	PROCESS (Opcode) IS
	BEGIN
			CASE Opcode IS
					WHEN "000"=> Op <= "00" ; AInv <= '0' ; BInv <= '0' ; CIn <= '0' ;
					WHEN "001"=> Op <= "01" ; AInv <= '0' ; BInv <= '0' ; CIn <= '0' ;
					WHEN "010"=> Op <= "10" ; AInv <= '0' ; BInv <= '0' ; CIn <= '0' ;
					WHEN "011"=> Op <= "10" ; AInv <= '0' ; BInv <= '1' ; CIn <= '1' ;
					WHEN "100"=> Op <= "00" ; AInv <= '1' ; BInv <= '1' ; CIn <= '0' ;
					WHEN "101"=> Op <= "01" ; AInv <= '1' ; BInv <= '1' ; CIn <= '0' ;
					WHEN "110"=> Op <= "11" ; AInv <= '0' ; BInv <= '0' ; CIn <= '0' ;
					WHEN OTHERS => NULL ;
			END CASE ; 
	END PROCESS ;
	I0:  ALU_1Bit PORT MAP ( a(0), b(0), AInv, BInv, CIn, Op, Cout(0), Result(0) ) ; 
	I1:  ALU_1Bit PORT MAP ( a(1), b(1), AInv, BInv, Cout(0), Op, Cout(1), Result(1) ) ; 
	I2:  ALU_1Bit PORT MAP ( a(2), b(2), AInv, BInv, Cout(1), Op, Cout(2), Result(2) ) ; 
	I3:  ALU_1Bit PORT MAP ( a(3), b(3), AInv, BInv, Cout(2), Op, Cout(3), Result(3) ) ; 
	I4:  ALU_1Bit PORT MAP ( a(4), b(4), AInv, BInv, Cout(3), Op, Cout(4), Result(4) ) ; 
	I5:  ALU_1Bit PORT MAP ( a(5), b(5), AInv, BInv, Cout(4), Op, Cout(5), Result(5) ) ; 
	I6:  ALU_1Bit PORT MAP ( a(6), b(6), AInv, BInv, Cout(5), Op, Cout(6), Result(6) ) ; 
	I7:  ALU_1Bit PORT MAP ( a(7), b(7), AInv, BInv, Cout(6), Op, Cout(7), Result(7) ) ; 
	I8:  ALU_1Bit PORT MAP ( a(8), b(8), AInv, BInv, Cout(7), Op, Cout(8), Result(8) ) ; 
	I9:  ALU_1Bit PORT MAP ( a(9), b(9), AInv, BInv, Cout(8), Op, Cout(9), Result(9) ) ; 
	I10: ALU_1Bit PORT MAP ( a(10), b(10), AInv, BInv, Cout(9), Op, Cout(10), Result(10) ) ;  
	I11: ALU_1Bit PORT MAP ( a(11), b(11), AInv, BInv, Cout(10), Op, Cout(11), Result(11) ) ; 
	I12: ALU_1Bit PORT MAP ( a(12), b(12), AInv, BInv, Cout(11), Op, Cout(12), Result(12) ) ; 
	I13: ALU_1Bit PORT MAP ( a(13), b(13), AInv, BInv, Cout(12), Op, Cout(13), Result(13) ) ; 
	I14: ALU_1Bit PORT MAP ( a(14), b(14), AInv, BInv, Cout(13), Op, Cout(14), Result(14) ) ; 
	I15: ALU_1Bit PORT MAP ( a(15), b(15), AInv, BInv, Cout(14), Op, Cout(15), Result(15) ) ; 
	PROCESS (Cout(14), Cout(15)) IS
			BEGIN
				Overflow <= Cout(14) XOR Cout(15) ;
	END PROCESS ;
END Structural ;