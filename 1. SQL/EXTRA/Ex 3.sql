DROP DATABASE IF EXISTS Thong_tin;
CREATE DATABASE Thong_tin;
USE Thong_tin;

CREATE TABLE TT_SV(
ID					INT PRIMARY KEY AUTO_INCREMENT,
`Name`				VARCHAR(50),CHECK( LENGTH(`Name`)>=6),
BirthDate			DATE,
Gender				BIT NULL, -- 0: Male, 1: Femail, Null: Unknow
IsDeletedFlag		BIT DEFAULT(0) -- 0: đang hoạt động, 1: đã xóa
);