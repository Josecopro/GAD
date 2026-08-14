CREATE DATABASE IF NOT EXISTS gad;
USE gad;

DELIMITER $$

DROP FUNCTION IF EXISTS fn_summation_02$$

CREATE FUNCTION fn_summation_02 (p_min INTEGER, p_max INTEGER)
	RETURNS int
	DETERMINISTIC
	BEGIN 
		DECLARE total INTEGER DEFAULT 0;
		DECLARE i INTEGER DEFAULT p_min;
		
		for i in p_min..p_max DO 
            if i % 2 != 0 then
                SET total := total + i;
            end if; 
        END FOR;
		
		RETURN total;
	END$$

DELIMITER ;

SELECT fn_summation_02(1, 10);
	

