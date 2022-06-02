LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY fullAdd IS
	PORT ( Cin, a, b   : IN STD_LOGIC ;
				sum, Cout : OUT STD_LOGIC ) ;
END fullAdd ;
ARCHITECTURE Behavioral OF fullAdd IS
BEGIN
	I0: sum <= (a AND (NOT b) AND (NOT Cin)) OR ((NOT a) AND b AND (NOT Cin)) OR ((NOT a) AND (NOT b) AND Cin) OR (a AND b AND Cin) ;
	I1: Cout <= (a AND b) OR (Cin AND a) OR (Cin AND b) ;
END Behavioral ;