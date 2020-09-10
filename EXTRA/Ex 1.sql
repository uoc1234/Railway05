DROP DATABASE IF EXISTS Quan_ly_sinh_vien;
CREATE DATABASE Quan_ly_sinh_vien;
USE Quan_ly_sinh_vien;
-- Bang 1: thông tin sinh viên
CREATE TABLE Trainee(
TraineeID			INT PRIMARY KEY,
Full_Name			VARCHAR(50),
Birth_Date			DATE,
Gender				ENUM('male','female','unknown') NOT NULL,
ET_IQ				TINYINT UNSIGNED, CHECK(ET_IQ<=20),
ET_Gmath			TINYINT UNSIGNED, CHECK(ET_Gmath<=20),
ET_English			TINYINT UNSIGNED, CHECK(ET_English<=50),
Training_Class		INT,
Evaluation_Notes	VARCHAR(500)
);

