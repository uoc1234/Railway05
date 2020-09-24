-- create database Thuc_Tap
DROP DATABASE IF EXISTS Thuc_Tap;
CREATE DATABASE IF NOT EXISTS Thuc_Tap;
USE Thuc_Tap;

-- create table Giang_Vien
DROP TABLE IF EXISTS Giang_Vien;
CREATE TABLE Giang_Vien(
Ma_GV		INT(10) UNIQUE NOT NULL AUTO_INCREMENT,
Ho_ten		VARCHAR(50) NOT NULL,
Luong		INT(10),
PRIMARY KEY (Ma_GV)
);

-- create table Sinh_Vien
DROP TABLE IF EXISTS Sinh_Vien;
CREATE TABLE Sinh_Vien(
Ma_SV		INT(10) UNIQUE NOT NULL AUTO_INCREMENT,
Ho_ten		VARCHAR(50) NOT NULL,
Nam_sinh	DATE,
Que_quan	VARCHAR(50),
Khoa		VARCHAR(50),
PRIMARY KEY (Ma_SV)
);

-- create table De_Tai
DROP TABLE IF EXISTS De_Tai;
CREATE TABLE De_Tai(
Ma_DT		INT(10) UNIQUE NOT NULL AUTO_INCREMENT,
Ten_DT		VARCHAR(250) NOT NULL,
Kinh_phi	INT(10),
Noi_TT		VARCHAR(100),
PRIMARY KEY (Ma_DT)
);

-- create table Huong_Dan
DROP TABLE IF EXISTS Huong_Dan;
CREATE TABLE Huong_Dan(
ID			INT(10) UNIQUE NOT NULL AUTO_INCREMENT,
Ma_SV		INT(10) UNIQUE,
Ma_DT		INT(10) UNIQUE,
Ma_GV		INT(10) UNIQUE,
Ket_qua		VARCHAR(250),
PRIMARY KEY(ID),
FOREIGN KEY (Ma_SV) REFERENCES Sinh_Vien(Ma_SV),
FOREIGN KEY (Ma_DT) REFERENCES De_Tai(Ma_DT),
FOREIGN KEY (Ma_GV) REFERENCES Giang_Vien(Ma_GV)
);

-- Thêm dữ liệu vào bảng Bảng Giang_Vien
INSERT INTO Giang_Vien 
(Ho_ten,					Luong	) VALUES
('Nguyen Duy Chien',		7000000),
('Nguyen Tien Dat',			5000000),
('Vu_Thi_Mua',				9000000);

-- Thêm dữ liệu vào bảng Sinh_Vien
INSERT INTO Sinh_Vien
(Ho_ten,			Nam_sinh, 		Que_quan, 		Khoa) VALUES
('Vu Van Uoc',		'1996-02-02',	'Hung Yen', 	'Cong nghe sinh học'),
('Nguyen Tuan Anh', '1995-05-06',	'Thai Binh',	'Cong nghe sinh học'),
('Pham Ngoc Huyen',	'1997-08-07',	'Ha Noi',		'Tin hoc');

-- Thêm dữ liệu vào bảng De_Tai
INSERT INTO De_Tai
(Ten_DT, 			Kinh_phi, 		Noi_TT		) VALUES
('Nghien cuu Java',	1000000,	 	'Nam Tu Liem'),
('Nghien cuu PHP', 	1500000, 		'Bac Tu Liem'),
('Nghien cuu C++', 	2000000, 		'My Dinh'	);

-- Thêm dữ liệu vào bảng Huong_Dan
INSERT INTO Huong_Dan
(Ma_SV, Ma_DT, Ma_GV, 	Ket_qua) VALUES
(1,		2,		3,		'Dat'),
(2,		1,		1,		'Truot'),
(3,		3,		2,		'Dat');

-- 2.  Viết lệnh để
-- a)  Lấy tất cả các sinh viên chưa có đề tài hướng dẫn 
SELECT *
FROM Sinh_Vien S
LEFT JOIN Huong_Dan H
ON S.Ma_SV = H.Ma_SV
WHERE H.Ma_SV IS NULL;

-- b)  Lấy ra số sinh viên của khoa ‘CONG NGHE SINH HOC’
SELECT Khoa, count(Ma_sv) AS 'So luong SV'
FROM Sinh_Vien
WHERE `khoa`='Cong nghe sinh hoc';	-- count(`khoa`='Cong nghe sinh hoc')

-- 3.  Tạo view có tên là "SinhVienInfo" lấy các thông tin về học sinh bao gồm: mã số, họ tên và tên đề tài
-- (Nếu sinh viên chưa có đề tài thì column tên đề tài sẽ in ra "Chưa có")
CREATE VIEW SinhVienInfo AS
SELECT SV.Ma_SV, SV.Ho_ten -- aa
FROM Sinh_vien SV
JOIN Huong_Dan HD
ON SV.Ma_SV = HD.Ma_SV

-- 4. Tạo trigger cho table SinhVien khi insert sinh viên có năm sinh <= 1900 
-- thì hiện ra thông báo "năm sinh phải > 1900

DROP TRIGGER IF EXISTS Sinh_vien
DELIMITER $$
CREATE TRIGGER Sinh_vien ()
BEFORE INSERT	
















-- Hãy cấu hình table sao cho khi xóa 1 sinh viên nào đó thì sẽ tất cả thông tin trong table HuongDan liên quan tới sinh viên đó sẽ bị xóa đi














