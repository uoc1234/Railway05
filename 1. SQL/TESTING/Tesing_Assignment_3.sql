SELECT * FROM testingsystem.account;

-- Lấy một cột bất kỳ

SELECT Email, AccountID
FROM Account;

-- Where
SELECT Email, AccountID
FROM Account
WHERE AccountID>3;

-- EX1
SELECT Email, AccountID
FROM Account
WHERE AccountID =3;

-- EX2 (Like >< not Like)
SELECT *
FROM Account
WHERE FullName LIKE 'Tong Quang Anh';

-- EX IS NULL
SELECT *
FROM Account
WHERE CreateDate IS NOT NULL;

-- Question 3
SELECT * FROM testingsystem.department
WHERE DepartmentName = 'Sale';

-- Question 6
SELECT *
FROM testingsystem.`Group`
WHERE CreateDate < 2019/20/12;

-- AND (OR)
SELECT *
FROM Account
WHERE AccountID < 5 OR AccountID > 9;

-- BETWEEN
SELECT *
FROM Account
WHERE CreateDate BETWEEN '2020-03-05' AND '2020-04-05';

-- Question 8
SELECT examID FROM testingsystem.exam
WHERE Duration >= 60 AND CreateDate < '2019-12-20';

-- Question 9
SELECT * FROM testingsystem.group
WHERE CreateDate;

-- Question 11
SELECT *
FROM testingsystem.`Account`
WHERE FullName LIKE 'D%o';

-- 
SELECT DISTINCT GroupID
FROM groupaccount
ORDER BY GroupID DESC;

--
SELECT *
FROM testingsystem.`Account`
ORDER BY CreateDate DESC, DepartmentID ASC;

-- Max, Min, count, sum, avg
SELECT MAX(CreateDate)
FROM testingsystem.`account`;

-- Question 4
SELECT *
FROM testingsystem.`Account`
WHERE CHAR_LENGTH(FullName) = (SELECT MAX(CHAR_LENGTH(FullName))
						FROM testingsystem.`account`);
                        
-- Limit
SELECT *
FROM testingsystem.`Account`
ORDER BY CreateDate DESC
LIMIT 5;

-- Alias
SELECT AccountID AS 'Ma_So', DepartmentID
FROM testingsystem.`Account`;

-- Question 10
SELECT COUNT(AccountID)
FROM testingsystem.`Account`
WHERE DepartmentID = 2;

-- Update
UPDATE `Account`
SET FullName = 'Nguyen Chien Thang'
WHERE AccountID = 2;
-- Question 1
SELECT DepartmentName
FROM testingsystem.department;
-- Question 3
SELECT DepartmentID
FROM testingsystem.department
WHERE DepartmentName = 'Sale';
-- Question 5
SELECT *
FROM testingsystem.`Account`
WHERE CHAR_LENGTH(FullName) = (SELECT MAX(CHAR_LENGTH(FullName))FROM testingsystem.`account`) AND DepartmentID = 3;
-- Question 6
SELECT GroupName
FROM testingsystem.`group`
WHERE CreateDate < '2019-12-20';
-- Question 7
SELECT GroupName
FROM testingsystem.`group`
WHERE CreateDate < '2019-12-20';
-- Question 9
SELECT * 
FROM testingsystem.group
ORDER BY CreateDate DESC
LIMIT 5;
-- Question 13
UPDATE `Account`
SET FullName = 'Nguyễn Bá Lộc'
WHERE AccountID = '5';
-- Question 7
SELECT QuestionID,COUNT(Content) AS So_luong_Answer
FROM testingsystem.answer
GROUP BY QuestionID
HAVING COUNT(Content)>=4;

-- JOIN
SELECT * -- A.Department, AccountID, FullName, DepartmentName
FROM `Group` G
JOIN `Account` A ON G.CreatorID = A.AccountID
JOIN Department D ON A.DepartmentID = D.DepartmentID;
-- Quesstion 1 (4)
SELECT A.AccountID, A.Username, D.DepartmentName
FROM `Account` A
JOIN `Position` P ON A.PositionID = P.PositionID;
-- Quesstion 4 (4)
	SELECT count(P.PositionID), A.DepartmentID
	FROM `Account` A
	JOIN `Position` P ON A.PositionID = P.PositionID
	GROUP BY P.PositionID
	HAVING count(P.PositionID)>=3;
    -- Quesstion 5 (4)
SELECT 		Q.QuestionID -- , COUNT(EQ.ExamID), GROUP_CONCAT(EQ.ExamID)
FROM 		Question Q
LEFT JOIN	examquestion EQ ON EQ.QuestionID = Q.QuestionID
GROUP BY	Q.QuestionID
HAVING 		COUNT(EQ.ExamID) = (SELECT Max(So_Luong_Exam) 
								FROM ( SELECT 		COUNT(EQ.ExamID) AS So_Luong_Exam
										FROM 		Question Q
										LEFT JOIN	examquestion EQ ON EQ.QuestionID = Q.QuestionID
										GROUP BY	Q.QuestionID) AS statistic_Question_Exam);
    -- Quesstion  (4)
SELECT Q.QuestionID, Q.Content
FROM Question Q
LEFT JOIN Answer A ON A.QuestionID = Q.QuestionID
WhERE 	A.QuestionID IS NULL