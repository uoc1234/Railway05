-- Question 12: Lấy ra thông tin exam trong đó:
-- Duration <= 30 thì sẽ đổi thành giá trị "Short time"
-- 30 < Duration <= 60 thì sẽ đổi thành giá trị "Medium time"
-- Duration > 60 thì sẽ đổi thành giá trị "Long time"
USE testingsystem;
SELECT Duration, CreateDate, CASE
		WHEN Duration <=30 THEN 'Short_time'
        WHEN Duration <= 60 THEN 'Medium_time'
        ELSE 'long_time'
        END AS Thoi_gian_bai_thi
FROM	Exam;

-- Trigger
USE testingsystem;
DROP PROCEDURE IF EXISTS get_department_name;
DELIMITER $$
CREATE TRIGGER Check_Email_valid_trigger
BEFORE INSERT ON `account`
FOR EACH ROW
BEGIN 
DECLARE input_email VARCHAR(50);
SELECT NEW .Email INTO input_email;
-- CHeck Email
IF input_email NOT LIKE '%Gmail.com' THEN
-- disscard insert statement
SIGNAL SQLSTATE '123456'account
SET MESSAGE_TEXT = 'Email ko hop le';
END IF;
-- Check user
IF NEW.Username NOT LIKE '%1' THEN
-- discard insert statement
SIGNAL SQLSTATE '123456'
SET MESSAGE_TEXT = 'User ko hop le';
END IF;
DELIMITER ;
