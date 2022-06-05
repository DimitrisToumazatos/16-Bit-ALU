LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY ALU_1Bit IS
	PORT (	a, b, AInv, BInv, CIn  : IN STD_LOGIC ; --Stating the variables(a,b for operations,Ainvert,Binvert and CarryIn)
				Op							  : IN STD_LOGIC_VECTOR(1 DOWNTO 0) ;-- Stating Op,used in the multiplexer to choose the operation
				Cout, Result			  : OUT STD_LOGIC ) ;--Stating CarryOut and the Result of the operation
END ALU_1Bit;
ARCHITECTURE Structural OF ALU_1Bit IS
	COMPONENT fullAdd --This component is a FullAdder
		PORT ( Cin, a, b : IN STD_LOGIC ;--Stating CarryIn,a,b 
				 sum, Cout : OUT STD_LOGIC ) ;--Stating sum for the result of the FullAdder and Cout is the CarryOut
	END COMPONENT ;
	COMPONENT BitInvert --Based on Binvert,b is reversed or not and result is saved in f
		PORT (	b, Binv 	: IN STD_LOGIC ;--Stating b,Binv
					f			: OUT STD_LOGIC ) ;--Stating f
	END COMPONENT ;
	SIGNAL a1, b1, R0, R1, R2, R3 : STD_LOGIC ;
BEGIN
	I0: BitInvert PORT MAP ( a, AInv, a1 ) ;
	I1: BitInvert PORT MAP ( b, BInv, b1 ) ;
	I2: R0 <= a1 AND b1 ;-- Operation AND,NAND
	I3: R1 <= a1 OR b1 ;--Operation OR,NOR
	I4: fullAdd PORT MAP ( Cin, a1, b1, R2, Cout ) ; --Operations ADD,SUB
	I5: R3 <= a1 XOR b1 ;--Operation XOR
	I6: WITH Op SELECT--MUltiplexer
				Result <= R0 WHEN "00",
							 R1 WHEN "01",
							 R2 WHEN "10",
							 R3 WHEN "11" ; 
END Structural ;