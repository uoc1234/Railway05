DROP DATABASE IF EXISTS Quan_ly_bai_thi;
CREATE DATABASE Quan_ly_bai_thi;
USE Quan_ly_bai_thi;

-- TABLE 1
CREATE TABLE Department(
DepartmentID		INT UNSIGNED PRIMARY KEY,
DepartmentName		VARCHAR(50)
);
-- TABLE 2
CREATE TABLE Posittion(
PositionID			SMALLINT UNSIGNED PRIMARY KEY,
PositionName		VARCHAR(50)								CHECK( LENGTH(PositionName)>=6)
);
-- TABLE 3
CREATE TABLE `Account`(
AccountID			SMALLINT UNSIGNED PRIMARY KEY,
Email				VARCHAR(50) NOT NULL UNIQUE KEY,
Username			VARCHAR(50), 							CHECK( LENGTH(Username)>=6),
Fullname			VARCHAR(50),							CHECK( LENGTH(Fullname)>=6),
DepartmentID		INT UNSIGNED DEFAULT(1),				-- 1=waiting
PositionID			SMALLINT UNSIGNED NOT NULL DEFAULT(1),	-- 1=waiting
CreateDate			DATE DEFAULT (CURRENT_DATE),
FOREIGN KEY(DepartmentID) REFERENCES Department(DepartmentID)
);
-- TABLE 4
CREATE TABLE `Group`(
GroupID				SMALLINT UNSIGNED PRIMARY KEY,
Groupname			VARCHAR(50),							CHECK( LENGTH(Groupname)>=6),
CreatorID			SMALLINT UNSIGNED,
CreatDate			DATE, 
FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)
);
-- TABLE 5
CREATE TABLE GroupAccount(
GroupID				SMALLINT UNSIGNED,
AccountID			SMALLINT UNSIGNED,
JoinDate			DATE,
PRIMARY KEY (GroupID , AccountID),
FOREIGN KEY (GroupID) REFERENCES `Group`(GroupID)
);
-- TABLE 6
CREATE TABLE TypeQuestion(
TypeID				SMALLINT UNSIGNED PRIMARY KEY,
Typename			VARCHAR(50)
);
-- TABLE 7
CREATE TABLE CategoryQuestion(
CategoryID			SMALLINT UNSIGNED PRIMARY KEY,
CategoryName		VARCHAR(50)
);
-- TABLE 8
CREATE TABLE Question(
QuestionID			SMALLINT UNSIGNED,
Content				VARCHAR(50),
CategoryID			SMALLINT UNSIGNED,
TypeID				SMALLINT UNSIGNED,
CreatorID			SMALLINT UNSIGNED,
CreateDate			DATETIME DEFAULT NOW(),
PRIMARY KEY (QuestionID, CreatorID)
);
-- TABLE 9
CREATE TABLE Answer(
AnswerID			SMALLINT UNSIGNED PRIMARY KEY,
Content				VARCHAR(50),
QuestionID			SMALLINT UNSIGNED,
isCorrect			VARCHAR(50)
);
-- TABLE 10
CREATE TABLE Exam(
ExamID				SMALLINT UNSIGNED,
`Code`				SMALLINT UNSIGNED,
Title				SMALLINT UNSIGNED,
CategoryID			SMALLINT UNSIGNED,
Duration			DATE,
CreatorID			SMALLINT UNSIGNED,
CreateDate			DATETIME DEFAULT NOW(),
PRIMARY KEY(ExamID, CategoryID)
);
-- TABLE 11
CREATE TABLE ExamQuestion(
ExamID				SMALLINT UNSIGNED,
QuestionID			SMALLINT UNSIGNED,
PRIMARY KEY(ExamID, QuestionID)
);