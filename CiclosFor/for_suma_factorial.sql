CREATE DATABASE IF NOT EXISTS gad;
USE gad;

DELIMITER $$

DROP FUNCTION IF EXISTS fn_factorial_summation$$

CREATE FUNCTION fn_factorial_summation (p_val INTEGER)
	RETURNS int
	DETERMINISTIC
	BEGIN 
		DECLARE total INTEGER DEFAULT 1;
		DECLARE i INTEGER DEFAULT p_val;
        declare total_summation INTEGER DEFAULT 0;
		
		for i in 1..p_val DO 
            SET total := total * i;
        END FOR;

        while total > 0 do
            set total_summation := total_summation + (total % 10);
            set total := floor(total / 10);
        end while;

		
		RETURN total_summation;
	END$$

DELIMITER ;

SELECT fn_factorial_summation(6);
	

