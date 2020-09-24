-- Question 1: Tạo view có chứa danh sách nhân viên thuộc phòng ban sale
CREATE VIEW Danh_sach AS
SELECT A.AccountID, A.Email, A.FullName
FROM testingsystem.Department D
INNER JOIN `Account` A ON D.DepartmentID = A.DepartmentID
WHERE D.DepartmentID = 2;
-- CHẠY BẰNG CTE

CREATE OR REPLACE VIEW vw_InfAccountMaxGroup
AS
SELECT 		A.*, COUNT(GA.AccountID) AS 'SO LUONG'
FROM		`Account` A 
INNER JOIN 	GroupAccount GA ON A.AccountID = GA.AccountID
GROUP BY	A.AccountID
HAVING		COUNT(GA.AccountID) = (
									SELECT 		COUNT(GA.AccountID) 
									FROM		`Account` A 
									INNER JOIN 	GroupAccount GA ON A.AccountID = GA.AccountID
									GROUP BY	A.AccountID
									ORDER BY	COUNT(GA.AccountID) DESC
									LIMIT		1
								  );
                                  
 -- Question 2: Tạo view có chứa thông tin các account tham gia vào nhiều group nhất --

use `Quan_ly_phong_ban`;
CREATE view  thong_tin_account_tham_gia_group  as
SELECT 
    A.account_id,COUNT(GR.group_id) as so_luong_tham_gia_group
FROM
    `group_account` GR
        LEFT JOIN
    `account` A ON GR.account_id = A.account_id
GROUP BY GR.group_id
HAVING COUNT(GR.group_id) = (SELECT 
        MAX(so_luong_group)
FROM (SELECT COUNT(GR.group_id) AS so_luong_group
		FROM `group_account` GR
		LEFT JOIN `account` A ON GR.account_id = A.account_id
        GROUP BY GR.group_id) AS bang_group);
-- Question 3: Tạo view có chứa câu hỏi có những content quá dài (content quá 18 từ
-- được coi là quá dài) và xóa nó đi (De cu la 300 tu nhung do thiet ke db tu dau nen sua lai 20 tu de demo
CREATE OR REPLACE VIEW vw_ContenTren18Tu AS
	SELECT 	LENGTH(Content)
	FROM	Question
	WHERE	LENGTH(Content) > 20;
	
SELECT 	* 
FROM 	vw_ContenTren18Tu;
-- EX:  Subquery

-- Question 4 Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
USE `quan_ly_phong_ban`;
CREATE VIEW number_of_department as
SELECT 
    D.department_id, D.department_name, count(A.account_id)
FROM
    `account` A
LEFT JOIN `department` D 
ON A.department_id = D.department_id
GROUP BY A.department_id
HAVING COUNT(A.department_id) = (SELECT 
										MAX(number_of_department)
								FROM
										(SELECT 
											COUNT(A.department_id) AS number_of_department
								FROM`account` A
								LEFT JOIN `department` D ON A.department_id = D.department_id
								GROUP BY A.department_id
								HAVING COUNT(A.department_id)) AS so_lương_department);
        
-- dung cte--
WITH   so_department AS
(SELECT 
            COUNT(A.department_id) AS number_of_department
FROM `department` D
LEFT JOIN `account` A ON A.department_id = D.department_id
GROUP BY D.department_id)
SELECT*
FROM `account`
GROUP BY department_id
HAVING count(department_id) = (SELECT max(number_of_department)
								FROM so_department);


 -- Question 5: Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo --
USE `quan_ly_phong_ban`;
CREATE VIEW questions_of_their_creator_cao AS
SELECT Q.question_id, A.fullname, A.account_id
FROM question Q
LEFT JOIN `account` A ON Q.creator_id = A.account_id
GROUP BY Q.question_id
HAVING A.account_id = (SELECT account_id AS nguoi_tao_co_ho_cao
						FROM `account`
						WHERE fullname LIKE 'cao%');

