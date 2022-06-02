LIBRARY IEEE ;
USE IEEE.STD_LOGIC_1164.all ;

ENTITY BitInvert IS
	PORT (	b, Binv 	: IN STD_LOGIC ;
				f			: OUT STD_LOGIC ) ;
END BitInvert ;

ARCHITECTURE LogicFunc OF BitInvert IS
BEGIN
	PROCESS (b, Binv)
	BEGIN
		IF(Binv = '0')THEN
			f <= b ;
		ELSE
			f <= (NOT b) ;
		END IF;
	END PROCESS ; 
END LogicFunc ;
