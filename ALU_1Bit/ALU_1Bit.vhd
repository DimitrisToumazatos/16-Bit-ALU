LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY ALU_1Bit IS
	PORT (	a, b, AInv, BInv, CIn  : IN STD_LOGIC ;
				Op							  : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;
				Cout, Result			  : OUT STD_LOGIC ) ;
END ALU_1Bit;
ARCHITECTURE Structural OF ALU_1Bit IS
	COMPONENT fullAdd
		PORT ( Cin, a, b : IN STD_LOGIC ;
				 sum, Cout : OUT STD_LOGIC ) ;
	END COMPONENT ;
	COMPONENT BitInvert
		PORT (	b, Binv 	: IN STD_LOGIC ;
					f			: OUT STD_LOGIC ) ;
	END COMPONENT ;
	SIGNAL a1, b1, R0, R1, R2, R3 : STD_LOGIC ;
BEGIN
	I0: BitInvert PORT MAP ( a, AInv, a1 ) ;
	I1: BitInvert PORT MAP ( b, BInv, b1 ) ;
	I2: R0 <= a1 AND b1 ;
	I3: R1 <= a1 OR b1 ;
	I4: fullAdd PORT MAP ( Cin, a1, b1, R2, Cout ) ;
	I5: R3 <= a1 XOR b1 ;
	I6: WITH Op SELECT
				Result <= R0 WHEN "00",
							 R1 WHEN "01",
							 R2 WHEN "10",
							 R3 WHEN "11" ; 
END Structural ;