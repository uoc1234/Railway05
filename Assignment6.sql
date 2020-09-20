-- create database testing_system
DROP DATABASE IF EXISTS testing_system;
CREATE DATABASE IF NOT EXISTS testing_system;
USE testing_system;

-- create table departments
DROP TABLE IF EXISTS departments;
CREATE TABLE departments (
	department_id 			INT(10) AUTO_INCREMENT,
    department_name 		VARCHAR(255) UNIQUE NOT NULL,
PRIMARY KEY (department_id)
);

-- create table positions
DROP TABLE IF EXISTS positions;
CREATE TABLE positions (
	position_id 			INT(10) AUTO_INCREMENT,
    position_name 			VARCHAR(255) UNIQUE NOT NULL, 
PRIMARY KEY (position_id)
);

-- create table accounts
DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
	account_id  			INT(10) AUTO_INCREMENT,
    email 					VARCHAR(100) UNIQUE NOT NULL,
    user_name   			VARCHAR(50) UNIQUE NOT NULL,
    full_name   			VARCHAR(255),
    department_id 			INT(10),
    position_id 			INT(10),
    create_date 			TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (account_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (position_id) REFERENCES positions(position_id)
);

-- create table groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
	group_id 				INT(10) AUTO_INCREMENT,
    group_name 				VARCHAR(255) UNIQUE NOT NULL,
    creator_id 				INT(10),
    create_date 			TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (group_id),
FOREIGN KEY (creator_id) REFERENCES accounts(account_id)
);

-- create table group_account
DROP TABLE IF EXISTS group_account;
CREATE TABLE group_account (
	group_id 				INT(10),
    account_id 				INT(10),
    join_date 				TIMESTAMP,
PRIMARY KEY (group_id, account_id),
FOREIGN KEY (group_id) REFERENCES `groups`(group_id),
FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);

-- create table type_question
DROP TABLE IF EXISTS type_question;
CREATE TABLE type_question (
	type_id 				INT(10) AUTO_INCREMENT,
    type_name 				VARCHAR(50) UNIQUE NOT NULL,
PRIMARY KEY (type_id)
);

-- create table category_question
DROP TABLE IF EXISTS category_question;
CREATE TABLE category_question (
	category_id 			INT(10) AUTO_INCREMENT,
    category_name 			VARCHAR(50) UNIQUE NOT NULL,
PRIMARY KEY (category_id)
);

-- create table questions
DROP TABLE IF EXISTS questions;
CREATE TABLE questions (
	question_id 			INT(10) AUTO_INCREMENT,
    content 				TEXT,
    category_id 			INT(10),
    type_id 				INT(10),
    creator_id 				INT(10),
    create_date 			TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (question_id),
FOREIGN KEY (category_id) REFERENCES category_question(category_id),
FOREIGN KEY (type_id) REFERENCES type_question(type_id),
FOREIGN KEY (creator_id) REFERENCES accounts(account_id)
);

-- create table answers
DROP TABLE IF EXISTS answers;
CREATE TABLE answers (
	answer_id 				INT(10) AUTO_INCREMENT,
    content 				TEXT,
    question_id 			INT(10),
    is_correct				BIT DEFAULT 0,
PRIMARY KEY (answer_id),
FOREIGN KEY (question_id) REFERENCES questions(question_id)
);

-- create table exams
DROP TABLE IF EXISTS exams;
CREATE TABLE exams (
	exam_id 				INT(10) AUTO_INCREMENT,
    `code` 					VARCHAR(10) UNIQUE NOT NULL,
    title 					VARCHAR(50) NOT NULL,
    category_id 			INT(10),
    duration 				INT(10),
    creator_id 				INT(10),
    create_date 			TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (exam_id),
FOREIGN KEY (category_id) REFERENCES category_question(category_id),
FOREIGN KEY (creator_id) REFERENCES accounts(account_id)
);

-- create table exam_question
DROP TABLE IF EXISTS exam_question;
CREATE TABLE exam_question (
	exam_id 				INT(10),
    question_id 			INT(10),
PRIMARY KEY (exam_id, question_id),
FOREIGN KEY (exam_id) REFERENCES exams(exam_id),
FOREIGN KEY (question_id) REFERENCES questions(question_id)
);

-- Question 1: Them it nhat 10 ban ghi vao moi bang
-- Bang Department
INSERT INTO departments (department_name)
VALUES					('Production'),
						('Research and Development'),
                        ('Sale'),
                        ('Marketing'),
                        ('Human Resource Management'),
                        ('Accounting and Finance'),
                        ('Waiting Room');
                        
                        
-- Bang Position
INSERT INTO positions (position_name)
VALUES				  ('Developer'),
					  ('Tester'),
                      ('Comtor'),
                      ('Business Analysis'),
                      ('Quality Assurance'),
                      ('Project Manager'),
                      ('Solution Architect'),
                      ('Scrum Master');
                
-- Bang Account
INSERT INTO accounts 
(email, 							user_name, 			full_name, 					department_id, 		position_id) VALUES
('tfermer0@ucla.edu', 				'tfermer0', 		'Tully Fermer', 			1, 					1		   ),
('tgatchell1@bbb.org', 				'tgatchell1', 		'Tuck Gatchell', 			2, 					1		   ),
('bsoutherell2@tripadvisor.com', 	'bsoutherell2', 	'Beatrisa Fermer', 			3, 					2		   ),
('dtomley3@nymag.com', 				'dtomley3', 		'Denis Tomley', 			2, 					1		   ),
('asteaning4@paginegialle.it', 		'asteaning4', 		'Allis Steaning', 			5, 					5		   ),
('rwynrehame5@census.gov', 			'rwynrehame5', 		'Rodina Wynrehame', 		6, 					6		   ),
('atanti6@eventbrite.com', 			'atanti6', 			'Amabelle Tanti', 			5, 					7		   ),
('olewington7@seesaa.net', 			'olewington7', 		'Ophelia Lewington', 		1, 					5		   ),
('glinklater8@w3.org', 				'glinklater8', 		'Germain Linklater', 		5, 					1		   ),
('mmcorkil9@reference.com', 		'mmcorkil9', 		'Michaeline McOrkil', 		2, 					2		   ),
('cjonuzia@irs.gov', 				'cjonuzia', 		'Cheri Jonuzi', 			3, 					3		   ),
('tlamontb@ow.ly', 					'tlamontb', 		'Tessi Lamont', 			3, 					3		   ),
('dkelsallc@ftc.gov', 				'dkelsallc', 		'Dosi Kelsall', 			4, 					4		   ),
('cbleackleyd@myspace.com', 		'cbleackleyd', 		'Carley Bleackley', 		5, 					8		   ),
('agerrarde@altervista.org', 		'agerrarde', 		'Annnora Gerrard', 			3, 					4		   ),
('mkevisf@photobucket.com', 		'mkevisf', 			'Mae Kevis', 				4, 					3		   ),
('ewahlbergg@independent.co.uk', 	'ewahlbergg', 		'Etienne Wahlberg', 		6, 					7		   ),
('fcoyh@baidu.com', 				'fcoyh', 			'Fionna Coy', 				5, 					7		   ),
('lcuruclisi@eepurl.com', 			'lcuruclisi', 		'Lorettalorna Curuclis', 	2, 					8		   ),
('eribeiroj@unblog.fr', 			'eribeiroj', 		'Elsey Ribeiro', 			5, 					2		   );		

-- Bang Group
INSERT INTO `groups` (group_name, 				creator_id)
VALUES				 ('Annihilators',			1		  ),
					 ('Avengers',				3		  ),
                     ('Bad to The Bone',		5		  ),
                     ('Black Panthers',			7		  ),
                     ('Black Widows',			9		  ),
                     ('Blitzkrieg ',			11		  ),
                     ('Braindead Zombies',		13		  ),
                     ('Brewmaster Crew',		15		  ),
                     ('Brute Force',			17		  ),
                     ('Butchers ',				19	      );

-- Bang GroupAccount
INSERT INTO group_account (group_id, 	account_id, 	join_date)
VALUES					  (1,		 	1,				'2020-01-01'),
						  (1,			2,				'2020-01-01'),
                          (2,			1,				'2020-01-01'),
                          (2,			4,				'2020-01-01'),
                          (3,			5,				'2020-01-01'),
                          (3,			2,				'2020-01-01'),
                          (4,			7,				'2020-01-01'),
                          (4,			8,				'2020-01-01'),
                          (5,			9,				'2020-01-01'),
                          (5,			10,				'2020-01-01'),
                          (6,			11,				'2020-01-01'),
                          (6,			12,				'2020-01-01'),
                          (7,			13,				'2020-01-01'),
                          (7,			14,				'2020-01-01'),
                          (8,			15,				'2020-01-01'),
                          (8,			16,				'2020-01-01'),
                          (1,			17,				'2020-01-01'),
                          (1,			18,				'2020-01-01'),
                          (1,			19,				'2020-01-01'),
                          (1,			20,				'2020-01-01');
                          
-- Bang TypeQuestion
INSERT INTO type_question (type_name)
VALUES					  ('Essay Question'),
						  ('Multiple Choice Question'),
                          ('Rank Order Scaling Question'),
                          ('Text Slider Question'),
                          ('Likert Scale Question'),
                          ('Semantic Differential Scale'),
                          ('Stapel Scale Question'),
                          ('Constant Sum Question'),
                          ('Comment Box Open Ended Question'),
                          ('Text Question');

-- Bang CategoryQuestion
INSERT INTO category_question (category_name)
VALUES						  ('Java'),
							  ('C'),
                              ('Python'),
                              ('C++'),
                              ('C#'),
                              ('Visual Basic .Net'),
                              ('JavaScript'),
                              ('PHP'),
                              ('Swift'),
                              ('SQL');
                        
-- Bang Question
INSERT INTO questions 
(content, category_id, type_id, creator_id) VALUES
('Please explain what you understand by computer programming.',
1, 1, 1),
('Can you enumerate and explain the various types of errors that can occur during the execution of a computer program?',
1, 2, 3),
('Please explain an algorithm. What are some of its important features?',
2, 2, 5),
('What do you understand by maintaining and updating a computer program?',
2, 4, 7),
('Please provide a brief explanation on variables.',
2, 4, 9),
('Every programming language has reserved words. What are they? Give some examples.',
3, 4, 11),
('What do you understand by loops? Briefly explain the various types of loops.',
3, 6, 13),
('Please explain program documentation. Why is it important?',
3, 8, 15),
('What are constants? Explain their types.',
3, 8, 17),
('Please explain the operators.',
5, 1, 19),
('Program documentation is the written description of the algorithm(s), coding method, design, testing, and proper use of a particular computer program. It is valuable for those who use the program on a day-to-day basis and also for the programmer(s) who are meant to correct, modify, and update the computer program. Program documentation is the written description of the algorithm(s), coding method, design, testing, and proper use of a particular computer program. It is valuable for those who use the program on a day-to-day basis and also for the programmer(s) who are meant to correct, modify, and update the computer program.',
2, 2, 1);

-- Bang Answer
INSERT INTO answers 
(content, question_id, is_correct) VALUES
('Also known as coding or programming, computer programming is the process of encoding an algorithm into a notation, typically a computer program, by means of some programming language so that it can be executed by a computer.',
1, 1),
('Three types of errors can occur during the execution of a computer program.',
1, 0),
('An algorithm can be defined as a set of finite steps that when followed helps in accomplishing a particular task. Important features of an algorithm are clarity, efficiency, and finiteness.',
3, 0),
('The maintenance and updating process of a computer program starts post its successful installation. While program maintenance is the continuous process of monitoring the computer program for bugs and errors, updating the computer program means making it better with minor and major changes over time.',
3, 1),
('Variables are used for storing the input of a program as well as the computational results during program execution. These are actually named memory locations. The value stored in a variable can change during the program execution.',
3, 0),
('Reserved words, also known as keywords, are the words that have predefined meanings in a particular programming language. These reserved words can’t be used or redefined for serving other purposes. Following are some examples of reserved words.',
4, 1),
('A loop is a structure in programming that can repeat a defined set of statements for a set number of times or until a particular condition is satisfied. There are three important types of loops.',
4, 1),
('Program documentation is the written description of the algorithm(s), coding method, design, testing, and proper use of a particular computer program. It is valuable for those who use the program on a day-to-day basis and also for the programmer(s) who are meant to correct, modify, and update the computer program.',
5, 0),
('A constant is a programming entity whose value can’t be changed or modified during program execution. Constants are of two main types.',
5, 1),
('Operators are used for performing certain operations on data in a computer program. These are represented by symbols. For example, / represent mathematical division while * represents multiplication.',
1, 0);

-- Bang Exam
INSERT INTO exams (`code`, 		title, 								category_id, 	duration, 	creator_id)
VALUES			  ('E001', 		'Exam for Java', 					1, 			 	60, 		1		  ),
				  ('E002', 		'Exam for C', 						2, 			 	120, 		3		  ),
                  ('E003', 		'Exam for Python', 					3, 				180, 		5		  ),
                  ('E004', 		'Exam for C++', 					4, 				20, 		7		  ),
                  ('E005', 		'Exam for C#', 						5, 				120, 		9		  ),
                  ('E006', 		'Exam for Visual Basic .Net', 		6, 				180, 		11		  ),
                  ('E007', 		'Exam for JavaScript', 				7, 				60, 		13		  ),
                  ('E008', 		'Exam for PHP', 					8, 				30, 		15		  ),
                  ('E009', 		'Exam for Swift', 					9, 				45, 		17		  ),
                  ('E010', 		'Exam for SQL', 					10, 			45, 		19		  );

-- Bang ExamQuestion
INSERT INTO exam_question (exam_id, question_id)
VALUES					  (1, 		1		   ),
						  (2, 		1		   ),
                          (3, 		1		   ),
                          (4, 		1		   ),
                          (5, 		2		   ),
                          (6, 		2		   ),
                          (7, 		2		   ),
                          (8, 		2		   ),
                          (3, 		10		   ),
                          (10, 		9		   );

-- Question 1: Tao store de nguoi dung nhap vao ten phong ban 
-- va in ra tat ca cac account thuoc phong ban do
DROP PROCEDURE IF EXISTS dept_acc_info;
DELIMITER $$
CREATE PROCEDURE dept_acc_info(IN in_dept_name VARCHAR(255))
BEGIN
	SELECT 
		*
	FROM
		accounts a
			JOIN
		departments d ON a.department_id = d.department_id
	WHERE
		d.department_name = in_dept_name;
END$$
DELIMITER ;

CALL dept_acc_info('Production');
CALL dept_acc_info('Sale');

-- Question 2: Tao store de in ra so luong account trong moi group
DROP PROCEDURE IF EXISTS number_of_accounts_in_group;
DELIMITER $$
CREATE PROCEDURE number_of_accounts_per_group()
BEGIN
	SELECT g.group_name,
    COUNT(ga.account_id) AS number_of_accounts
    FROM
    `groups` g
        LEFT JOIN
    group_account ga ON g.group_id = ga.group_id
	GROUP BY g.group_name
    ORDER BY g.group_name;
END$$
DELIMITER ;

CALL number_of_accounts_per_group();

-- Question 3: Tao store de thong ke moi type question co bao nhieu question 
-- duoc tao trong thang hien tai
DROP PROCEDURE IF EXISTS number_of_questions_per_type_question_created_this_month;
DELIMITER $$
CREATE PROCEDURE number_of_questions_per_type_question_created_this_month()
BEGIN
	SELECT 
		tq.type_name,
		COUNT(q.question_id) AS number_of_questions,
		q.create_date
	FROM
		questions q
			RIGHT JOIN
		type_question tq ON q.type_id = tq.type_id
	WHERE
		MONTH(q.create_date) = MONTH(NOW())
	GROUP BY tq.type_name
	ORDER BY tq.type_name;
END$$
DELIMITER ;

CALL number_of_questions_per_type_question_created_this_month();

-- Question 4: Tao store de tra ra id cua type question co nhieu cau hoi nhat
DROP PROCEDURE IF EXISTS list_of_type_question_have_the_most_questions;
DELIMITER $$
CREATE PROCEDURE list_of_type_question_have_the_most_questions()
BEGIN
	SELECT type_id FROM type_question
    WHERE type_id IN
	(WITH list_of_type_question_have_the_most_questions AS(
		SELECT type_id, COUNT(question_id) AS number_of_questions
		FROM questions  
		GROUP BY type_id
		HAVING number_of_questions = 
		(WITH list_of_type_question_with_number_of_questions AS(
			SELECT type_id, COUNT(question_id) AS number_of_questions
			FROM questions  
			GROUP BY type_id)
		SELECT MAX(number_of_questions) FROM list_of_type_question_with_number_of_questions))
    SELECT type_id FROM list_of_type_question_have_the_most_questions);
END$$
DELIMITER ;

CALL list_of_type_question_have_the_most_questions();

-- Question 5: Su dung store o question 4 de tim ra ten cua type question
DROP PROCEDURE IF EXISTS list_of_type_name_have_the_most_questions;
DELIMITER $$
CREATE PROCEDURE list_of_type_name_have_the_most_questions()
BEGIN
	SELECT type_name FROM type_question
    WHERE type_id IN
	(WITH list_of_type_question_have_the_most_questions AS(
		SELECT type_id, COUNT(question_id) AS number_of_questions
		FROM questions  
		GROUP BY type_id
		HAVING number_of_questions = 
		(WITH list_of_type_question_with_number_of_questions AS(
			SELECT type_id, COUNT(question_id) AS number_of_questions
			FROM questions  
			GROUP BY type_id)
		SELECT MAX(number_of_questions) FROM list_of_type_question_with_number_of_questions))
    SELECT type_id FROM list_of_type_question_have_the_most_questions);
END$$
DELIMITER ;

CALL list_of_type_name_have_the_most_questions();

-- Question 6: Viet 1 store cho phep nguoi dung nhap vao 1 chuoi 
-- va tra ve group co ten chua chuoi cua nguoi dung nhap vao
-- hoac tra ve user co username chua chuoi cua nguoi dung nhap vao
DROP PROCEDURE IF EXISTS get_product_user_contain_input_string;
DELIMITER $$
CREATE PROCEDURE get_product_user_contain_input_string(IN input_string VARCHAR(255))
BEGIN
	SELECT g.group_name, a.user_name 
    FROM `groups` g
    JOIN group_account ga ON g.group_id = ga.group_id
    JOIN accounts a ON ga.account_id = a.account_id
    WHERE g.group_name LIKE CONCAT('%', input_string, '%') OR a.user_name LIKE CONCAT('%', input_string, '%');
END$$
DELIMITER ;

CALL get_product_user_contain_input_string('ey');

DROP PROCEDURE IF EXISTS get_product_user_contain_input_string_2;
DELIMITER $$
CREATE PROCEDURE get_product_user_contain_input_string_2(IN input_string VARCHAR(255))
BEGIN
	SELECT g.group_name
    FROM `groups` g
    WHERE g.group_name LIKE CONCAT('%', input_string, '%');
    
    SELECT a.user_name
    FROM accounts a
    WHERE a.user_name LIKE CONCAT('%', input_string, '%');
END$$
DELIMITER ;

CALL get_product_user_contain_input_string_2('a');

-- Question 7: Viet 1 store cho phep nguoi dung nhap vao thong tin full name, email 
-- va trong store se tu dong gan
-- username se giong email nhung bo phan @... di
-- positionID se co default la developer
-- departmentID se duoc cho vao 1 phong cho
-- sau do in ra ket qua tao thanh cong
DROP PROCEDURE IF EXISTS insert_account;
DELIMITER $$
CREATE PROCEDURE insert_account(IN in_full_name VARCHAR(255), IN in_email VARCHAR(100))
BEGIN
	DECLARE v_department_id INT(10) DEFAULT 0;
    DECLARE v_position_id INT(10) DEFAULT 0;
    
    SELECT department_id INTO v_department_id
    FROM departments 
    WHERE department_name = 'Waiting Room';
       
	SELECT position_id INTO v_position_id
    FROM positions 
    WHERE position_name = 'Developer';
    
    INSERT INTO accounts 
	(email, 		user_name, 								full_name, 		department_id, 		position_id) VALUES
    (in_email, 		SUBSTRING_INDEX(in_email, '@', 1), 		in_full_name, 	v_department_id, 	v_position_id);
    
    IF ROW_COUNT() > 0 THEN
		SELECT 'You created record successfully!';
    ELSE 
		SELECT 'You did not create record successfully!';
	END IF;
END$$
DELIMITER ;

CALL insert_account('Nguyen Van Hien', 'vanhientk111@gmail.com');

SELECT * FROM accounts
ORDER BY account_id DESC;

-- Question 8: Viet 1 store cho phep nguoi dung nhap vao Essay hoac Multiple-Choice
-- de thong ke cau hoi essay hoac multiple-choice nao co content dai nhat
DROP PROCEDURE IF EXISTS get_question_longest_content_ess_mul;
DELIMITER $$
CREATE PROCEDURE get_question_longest_content_ess_mul (IN in_type_name ENUM('Essay Question', 'Multiple Choice Question'))
BEGIN
	SELECT q.content, LENGTH(q.content) AS length_of_content
    FROM questions q
    WHERE LENGTH(q.content) = (SELECT MAX(LENGTH(q.content))
							   FROM questions q
							   JOIN type_question tq ON q.type_id = tq.type_id
                               WHERE tq.type_name = in_type_name);
END$$
DELIMITER ; 

CALL get_question_longest_content_ess_mul('Essay Question');

CALL get_question_longest_content_ess_mul('Multiple Choice Question');

-- Question 9: Viet 1 store cho phep nguoi dung xoa exam dua vao ID
DROP PROCEDURE IF EXISTS delete_exam_by_exam_id;
DELIMITER $$
CREATE PROCEDURE delete_exam_by_exam_id(IN in_exam_id INT)
BEGIN
	DELETE FROM exam_question 
    WHERE exam_id = in_exam_id;
    
    DELETE FROM exams
    WHERE exam_id = in_exam_id;
END$$
DELIMITER ;

CALL delete_exam_by_exam_id(2);

-- Question 10: Tim ra cac exam duoc tao tu 3 nam truoc va xoa cac exam do di
-- sau do in ra so luong ban ghi da xoa tu cac bang lien quan trong khi xoa
DROP PROCEDURE IF EXISTS delete_exam_created_from_3_years_ago;
DELIMITER $$
CREATE PROCEDURE delete_exam_created_from_3_years_ago()
BEGIN
	DECLARE deleted_records_in_exam_question INT;
    DECLARE deleted_records_in_exams INT;

	DELETE FROM exam_question
    WHERE exam_id IN (SELECT exam_id FROM exams
					  WHERE (YEAR(NOW()) - YEAR(create_date)) = 3);
    SELECT ROW_COUNT() INTO deleted_records_in_exam_question;
    
	DELETE FROM exams
    WHERE (YEAR(NOW()) - YEAR(create_date)) = 3;
    SELECT ROW_COUNT() INTO deleted_records_in_exams;  
    
    SELECT deleted_records_in_exam_question, deleted_records_in_exams;
END$$
DELIMITER ;

UPDATE exams
SET create_date = '2017-06-03 16:42:39'
WHERE exam_id IN (1, 2, 3);

CALL delete_exam_created_from_3_years_ago();

-- Question 11: Viet store cho phep nguoi dung xoa phong ban bang cach nguoi dung 
-- nhap vao ten phong ban va cac account thuoc phong ban do se duoc chuyen ve
-- phong ban default la phong ban cho viec
DROP PROCEDURE IF EXISTS delete_department_by_name;
DELIMITER $$
CREATE PROCEDURE delete_department_by_name(IN in_department_name VARCHAR(255))
BEGIN
	DECLARE id_of_waiting_room INT;
    DECLARE id_of_in_department_name INT;
    
    SELECT department_id INTO id_of_waiting_room
    FROM departments
    WHERE department_name = 'Waiting Room';
    
    SELECT department_id INTO id_of_in_department_name
    FROM departments
    WHERE department_name = in_department_name;
    
    UPDATE accounts
    SET department_id = id_of_waiting_room
    WHERE department_id = id_of_in_department_name;
    
    DELETE FROM departments
    WHERE department_name = in_department_name;
END$$
DELIMITER ;

CALL delete_department_by_name('Production');

SELECT * FROM departments;

SELECT * FROM accounts;

-- Question 12: Viet store de in ra moi thang co bao nhieu cau hoi duoc tao trong nam nay
DROP PROCEDURE IF EXISTS number_of_questions_created_per_month_this_year;
DELIMITER $$
CREATE PROCEDURE number_of_questions_created_per_month_this_year()
BEGIN
	SELECT months_in_year.`month`, COUNT(q.question_id) AS number_of_questions
	FROM questions q 
    RIGHT JOIN (SELECT 1 AS `month` UNION
		  SELECT 2 AS `month` UNION
		  SELECT 3 AS `month` UNION
		  SELECT 4 AS `month` UNION
		  SELECT 5 AS `month` UNION
		  SELECT 6 AS `month` UNION
		  SELECT 7 AS `month` UNION
		  SELECT 8 AS `month` UNION
		  SELECT 9 AS `month` UNION
		  SELECT 10 AS `month` UNION
		  SELECT 11 AS `month` UNION
		  SELECT 12 AS `month`) AS months_in_year
	ON MONTH(q.create_date) = months_in_year.`month`
	WHERE YEAR(q.create_date) = YEAR(NOW())
	-- WHERE DATE_FORMAT(q.create_date, '%Y') = DATE_FORMAT(NOW(), '%Y')
	GROUP BY months_in_year.`month`;
END$$
DELIMITER ;

CALL number_of_questions_created_per_month_this_year();

-- Question 13: Viet store de in ra moi thang co bao nhieu cau hoi duoc tao trong 
-- 6 thang gan day nhat (neu thang nao khong co thi se in ra la 'khong co cau hoi nao trong thang')
DROP PROCEDURE IF EXISTS number_of_questions_created_last_six_months;
DELIMITER $$
CREATE PROCEDURE number_of_questions_created_last_six_months()
BEGIN
	SELECT last_six_months.`month`, 
    IF(COUNT(q.question_id) = 0, 'khong co cau hoi nao trong thang', COUNT(q.question_id)) AS number_of_questions
	FROM (SELECT MONTH(CURRENT_DATE - INTERVAL 5 MONTH) AS `month` UNION
		  SELECT MONTH(CURRENT_DATE - INTERVAL 4 MONTH) AS `month` UNION
		  SELECT MONTH(CURRENT_DATE - INTERVAL 3 MONTH) AS `month` UNION
		  SELECT MONTH(CURRENT_DATE - INTERVAL 2 MONTH) AS `month` UNION
		  SELECT MONTH(CURRENT_DATE - INTERVAL 1 MONTH) AS `month` UNION
		  SELECT MONTH(CURRENT_DATE - INTERVAL 0 MONTH) AS `month`) AS last_six_months
	LEFT JOIN questions q ON last_six_months.`month` = MONTH(q.create_date)
	GROUP BY last_six_months.`month`;
END$$
DELIMITER ;

CALL number_of_questions_created_last_six_months();


