LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY BitInvert IS --Built to be used as a component for operations
	PORT (	b, Binv 	: IN STD_LOGIC ; -- Stating b and Binvert
				f			: OUT STD_LOGIC ) ; -- Stating f
END BitInvert ;

ARCHITECTURE LogicFunc OF BitInvert IS
BEGIN
	PROCESS (b, Binv) -- bit b is reversed base on Binv
	BEGIN
		IF(Binv = '0')THEN
			f <= b ;
		ELSE
			f <= (NOT b) ;
		END IF;
	END PROCESS ; 
END LogicFunc ;
