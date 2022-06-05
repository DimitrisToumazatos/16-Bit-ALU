LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY fullAdd IS -- Built to be used as a component for operations
	PORT ( Cin, a, b   : IN STD_LOGIC ; -- Stating a,b and CarryIN
				sum, Cout : OUT STD_LOGIC ) ; -- Stating sum and CarryOut
END fullAdd ;
ARCHITECTURE Behavioral OF fullAdd IS
BEGIN
	I0: sum <= (a AND (NOT b) AND (NOT Cin)) OR ((NOT a) AND b AND (NOT Cin)) OR ((NOT a) AND (NOT b) AND Cin) OR (a AND b AND Cin) ; -- Calculating result of sum
	I1: Cout <= (a AND b) OR (Cin AND a) OR (Cin AND b) ; -- Calculating CarryOut
END Behavioral ;