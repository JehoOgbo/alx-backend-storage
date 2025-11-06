-- function that divides the first number by the second
-- return divident or 0 if second number is 0
DELIMITER $$
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE DIVIDEND FLOAT;
	SET DIVIDEND = a / b;

	RETURN DIVIDEND;
END $$

DELIMITER ;
