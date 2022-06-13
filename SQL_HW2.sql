--TASK 1

USE HOMEWORK2
CREATE TABLE SIZE(
Id int PRIMARY KEY IDENTITY,
Name int
)
CREATE TABLE Shoes(
Id int PRIMARY KEY IDENTITY,
Name nvarchar(50)
)
INSERT INTO SIZE VALUES (40),
						(41),
						(42),
						(43)
SELECT * FROM SIZE
INSERT INTO Shoes VALUES ('Nike')

SELECT * From Shoes CROSS JOIN SIZE




--TASK 2

USE HOMEWORK2
CREATE TABLE Department(
Id int PRIMARY KEY Identity,
Name nvarchar(50) NOT NULL CHECK(LEN(Name)>2)
)


CREATE DATABASE HOMEWORK2
USE HOMEWORK2
CREATE TABLE Employees(
Id int PRIMARY KEY IDENTITY ,
FullName nvarchar(50) NOT NULL CHECK(LEN(FullName)>3),
Salary int CHECK(Salary>0),
Email nvarchar(50) UNIQUE,
DepartmentId int FOREIGN KEY REFERENCES Department(Id)
)