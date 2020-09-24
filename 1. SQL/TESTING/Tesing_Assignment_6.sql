-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các account thuộc phòng ban đó
USE testingsystem;
DROP PROCEDURE IF EXISTS get_department_name;

DELIMITER $$
CREATE PROCEDURE get_department_name (IN Ten_Phong_Ban NCHAR(30))
BEGIN
SELECT *
FROM Department D
JOIN `account` A ON D.DepartmentID = A.DepartmentID
WHERE D.DepartmentName = Ten_Phong_Ban;
END $$
DELIMITER ;
CALL get_department_name ('Sale');

-- Question 2: Tạo store để in ra số lượng account trong mỗi group

USE testingsystem;
DROP PROCEDURE IF EXISTS so_luong_Account;
DELIMITER $$
CREATE PROCEDURE so_luong_Account ()
BEGIN
SELECT G.*, COUNT(GA.GroupID)
FROM `group` G
LEFT JOIN groupaccount GA ON GA.GroupID = G.GroupID
GROUP BY G.GroupID
ORDER BY COUNT(GA.GroupID);
END $$
DELIMITER ;

-- Question 3: Tạo store để thống kê mỗi type question có bao nhiêu question được tạo trong tháng hiện tại

USE testingsystem;
DROP PROCEDURE IF EXISTS so_luong_question;
DELIMITER $$
CREATE PROCEDURE so_luong_question ()
BEGIN 
SELECT Q.Content, Q.CreatorID, COUNT(TypeID)
FROM question Q
RIGHT JOIN typequestion TQ ON TQ.TypeID = Q.TypeID
WHERE MONTH(Q.CreateDate) = MONTH(Now())
GROUP BY TQ.TypeID
ORDER BY TQ.TypeID;
END $$
DELIMITER ;

