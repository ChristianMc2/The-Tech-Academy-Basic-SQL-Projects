USE AdventureWorks2014;
GO
CREATE PROCEDURE dbo.spGetPay2 @NationalIDNumber INT = NULL, @ShiftID INT = NULL
AS
SELECT [HumanResources].[Employee].JobTitle, [HumanResources].[Employee].VacationHours, [HumanResources].[EmployeePayHistory].PayFrequency, [HumanResources].[EmployeeDepartmentHistory].ShiftID, [HumanResources].[EmployeePayHistory].Rate
FROM HumanResources.Employee
INNER JOIN [HumanResources].[EmployeePayHistory] ON [HumanResources].[Employee].BusinessEntityID = [HumanResources].[EmployeePayHistory].BusinessEntityID
INNER JOIN [HumanResources].[EmployeeDepartmentHistory] ON [HumanResources].[EmployeeDepartmentHistory].BusinessEntityID = [HumanResources].[Employee].BusinessEntityID
WHERE  [HumanResources].[EmployeeDepartmentHistory].ShiftID = ISNULL(@ShiftID,ShiftID)
AND @NationalIDNumber = ISNULL(@NationalIDNumber ,NationalIDNumber)
GO





EXEC dbo.spGetPay2 @NationalIDNumber = 295847284