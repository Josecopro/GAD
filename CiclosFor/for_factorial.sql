CREATE DATABASE IF NOT EXISTS gad;
USE gad;

DELIMITER $$

DROP FUNCTION IF EXISTS fn_factorial_01$$

CREATE FUNCTION fn_factorial_01 (p_val1 INTEGER)
	RETURNS int
	DETERMINISTIC
	BEGIN 
		DECLARE total INTEGER DEFAULT 1;
		DECLARE i INTEGER DEFAULT p_val1;
		
		for i in 1..p_val1 DO 
                SET total := total * i;
        END FOR;
		
		RETURN total;
	END$$

DELIMITER ;

SELECT fn_factorial_01(5);
	

