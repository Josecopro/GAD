CREATE DATABASE IF NOT EXISTS gad;
USE gad;

DELIMITER $$

DROP FUNCTION IF EXISTS fn_summation_01$$

CREATE FUNCTION fn_summation_01 (p_min INTEGER, p_max INTEGER)
	RETURNS int
	DETERMINISTIC
	BEGIN 
		DECLARE total INTEGER DEFAULT 0;
		DECLARE i INTEGER DEFAULT p_min;
		
		for i in p_min..p_max DO 
            SET total := total + i;
        END FOR;
		
		RETURN total;
	END$$

DELIMITER ;

SELECT fn_summation_01(1, 20);
	

