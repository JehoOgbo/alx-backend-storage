-- create a trigger
-- resets valid email when an email has been changed
DELIMITER //
CREATE TRIGGER reset_email
    BEFORE UPDATE ON users
    FOR EACH ROW
    BEGIN
        IF NEW.email != OLD.email THEN
            SET NEW.valid_email = 0;
        END IF;
    END; //
