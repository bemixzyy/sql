USE AdventureWorks2019
GO

SELECT * FROM HumanResources.Employee
SELECT * FROM HumanResources.Department WHERE DepartmentID > 15

SELECT DepartmentID, Name, GroupName FROM HumanResources.Department WHERE DepartmentID > 15

GO

DECLARE @deptID INT 
SELECT @deptID=12
SELECT DepartmentID, Name, GroupName FROM HumanResources.Department
                    WHERE DepartmentID >= @deptID

GO

USE Northwnd
GO

SELECT * FROM Categories
SELECT CategoryID, CategoryName, [Description] FROM Categories
SELECT EmployeeID, LastName, FirstName FROM Employees
SELECT TOP 1 * FROM Employees

SELECT @@LANGUAGE
SELECT @@VERSION

GO
USE AdventureWorks2019
GO

SELECT SUM(StandardCost) FROM Production.ProductCostHistory
SELECT AVG(StandardCost) FROM Production.ProductCostHistory
SELECT MAX(StandardCost) FROM Production.ProductCostHistory

SELECT COUNT(*) AS TotalRecords FROM Production.ProductPhoto
SELECT GETDATE()
SELECT DATEPART(hh,GETDATE())
SELECT CONVERT(varChar(50), GETDATE(), 103)
SELECT DB_ID('AdventureWorks')

USE EXAMPLE3

INSERT INTO Contacts values ('xeko@gmail.com' , N'Nguyen Van A' ,9898998,N'Ha Noi')
INSERT INTO Contacts values ('lynk@gmail.com' , N'Nguyen Thi B' ,4329234,N'Ha Noi')
INSERT INTO Contacts values ('tranvanC@gmail.com' , N'Tran Van C' ,905243524,N'Ha Noi')
INSERT INTO Contacts values ('vand@gmail.com' , N'Trinh Van D' ,4563576,N'Ha Noi')

SELECT * FROM Contacts

DELETE FROM Contacts WHERE MailID='tranvanC@yahoo.com'

UPDATE Contacts SET Name=N'Nguyen Viet Anh' WHERE MailID='vand@gmail.com'

CREATE LOGIN example3 WITH PASSWORD='acBx12@m'
CREATE USER example3 FROM LOGIN example3

REVOKE ALL ON Contacts FROM example3
GRANT SELECT ON Contacts TO example3