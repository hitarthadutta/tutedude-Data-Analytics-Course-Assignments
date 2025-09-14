
CREATE TABLE Employees (
   EmpID INT PRIMARY KEY,
   Name VARCHAR(50),
   DateOfBirth DATE,
   JoinDate DATE
);


INSERT INTO Employees (EmpID, Name, DateOfBirth, JoinDate) VALUES
   (1, 'Alice Johnson', '1985-05-20', '2010-06-15'),
   (2, 'Bob Smith',     '1990-08-10', '2015-09-01'),
   (3, 'Charlie Brown', '1988-03-25', '2012-11-12'),
   (4, 'Diana Prince',  '1992-01-30', '2017-07-08'),
   (5, 'Eve Adams',     '1987-12-05', '2013-03-20');



SELECT SYSDATETIME() AS CurrentDateTime;


SELECT Name, DATEDIFF(YEAR, DateOfBirth, GETDATE()) AS Age
FROM Employees;


SELECT Name, DATEDIFF(YEAR, JoinDate, GETDATE()) AS YearsExperience
FROM Employees;


SELECT Name,
       YEAR(DateOfBirth)  AS BirthYear,
       MONTH(DateOfBirth) AS BirthMonth,
       DAY(DateOfBirth)   AS BirthDay
FROM Employees;


SELECT Name
FROM Employees
WHERE MONTH(DateOfBirth) = 8;

DECLARE @Today DATE = '2025-12-01';

SELECT Name,
       DateOfBirth,
       DATEADD(YEAR, DATEDIFF(YEAR, DateOfBirth, @Today), DateOfBirth) AS ThisYearBirthday
FROM Employees
WHERE DATEADD(YEAR, DATEDIFF(YEAR, DateOfBirth, @Today), DateOfBirth)
      BETWEEN @Today AND DATEADD(DAY, 30, @Today)
   OR DATEADD(YEAR, DATEDIFF(YEAR, DateOfBirth, @Today) + 1, DateOfBirth)
      BETWEEN @Today AND DATEADD(DAY, 30, @Today);


