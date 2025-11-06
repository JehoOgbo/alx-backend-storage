-- function that divides the first number by the second
-- return divident or 0 if second number is 0
DROP FUNCTION IF EXISTS SafeDiv;
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE DIVIDEND FLOAT;
	IF b = 0 THEN
		SET DIVIDEND = 0;
	ELSE
		SET DIVIDEND = a / b;
	END IF;

	RETURN DIVIDEND;
END $$

DELIMITER ;
