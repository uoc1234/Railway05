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
-- Question 3: Tạo view có chứa câu hỏi có những content quá dài (content quá 18 từ
-- được coi là quá dài) và xóa nó đi (De cu la 300 tu nhung do thiet ke db tu dau nen sua lai 18 tu de demo
CREATE OR REPLACE VIEW vw_ContenTren18Tu
AS
	SELECT 	LENGTH(Content)
	FROM	Question
	WHERE	LENGTH(Content) > 18;
	
SELECT 	* 
FROM 	vw_ContenTren18Tu;
-- EX:  Subquery

-- Question 4 Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
SELECT *
FROM testingsystem.Department D
JOIN `Account` A ON D.DepartmentID = A.DepartmentID

