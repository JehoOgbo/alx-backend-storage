-- stored procedure that computes and stores
-- average score for a student
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$ ;
CREATE PROCEDURE ComputeAverageScoreForUser(user_id INT)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE totaler INT DEFAULT 0;

    SELECT COUNT(*)
        INTO counter
        FROM corrections
        WHERE corrections.user_id = user_id;

    SELECT SUM(score)
        INTO totaler
        FROM corrections
        WHERE corrections.user_id = user_id;

    UPDATE users
        SET users.average_score = IF(counter = 0, 0, totaler / counter)
        WHERE users.id = user_id;
END $$
DELIMITER ;
