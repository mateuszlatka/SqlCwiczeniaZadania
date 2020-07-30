use Shop

Æwiczenie 1.1

SELECT *
FROM Employee

Æwiczenie 1.2

SELECT FirstName, LastName
FROM Employee

Æwiczenie 1.3

SELECT FirstName, LastName
FROM Employee
WHERE Id = 1

Æwiczenie 1.4

SELECT *
FROM Employee
WHERE Salary >= 2500

Æwiczenie 1.5

SELECT *
FROM Employee
WHERE DepartmentId = 3

Æwiczenie 1.6

SELECT *
FROM Employee
WHERE DepartmentId <> 3

Æwiczenie 1.7

SELECT *
FROM Employee
WHERE HireDate > '2012-02-23'

Æwiczenie 1.8

SELECT *
FROM Employee
WHERE Salary > 1000 
AND DepartmentId = 4

Æwiczenie 1.9

SELECT *
FROM Employee
WHERE (Salary = 1000 OR Salary = 2000)
AND DepartmentId = 4

Æwiczenie 1.10

SELECT *
FROM Employee
WHERE Active = 1

Æwiczenie 1.11

SELECT *
FROM Employee
WHERE Active = 0

Æwiczenie 1.12

SELECT * , Salary + 100 AS 'Pensja po podwy¿ce 100 z³'
FROM Employee

Æwiczenie 1.13

SELECT *, Salary + (Salary * 0.1) AS 'Pensja po podwy¿ce 10%'
FROM Employee

Æwiczenie 1.14

SELECT *, Salary + (Salary * 0.1) AS 'Pensja po podwy¿ce 10%'
FROM Employee
WHERE Salary + (Salary * 0.1) > 2500

Æwiczenie 1.15

SELECT *
FROM Employee
WHERE BirthDate > '1990-01-01'
AND Gender = 'M' 

Æwiczenie 1.16

SELECT *
FROM Employee
WHERE Salary <= 2000
AND BirthDate > '1990-01-01'
AND Gender = 'W'

Æwiczenie 1.17

SELECT *
FROM Employee
WHERE Gender = 'M'
AND   Salary >= 1000
AND Salary <= 2000

SELECT *
FROM Employee
WHERE Gender = 'M'
AND   Salary BETWEEN 1000 AND 2000

Æwiczenie 1.18

SELECT *
FROM Employee
WHERE HireDate BETWEEN '2012-01-01' AND '2013-12-31'

Æwiczenie 1.19

SELECT *
FROM Employee
WHERE Salary < 1000
OR Salary > 2000

SELECT *
FROM Employee
WHERE Salary NOT BETWEEN 1000 AND 2000

Æwiczenie 1.20

SELECT *
FROM Employee
WHERE Id IN (1,2,3)

Æwiczenie 1.21

SELECT *
FROM Employee
WHERE Id NOT IN (1,2,3)

Æwiczenie 1.22

SELECT *
FROM Employee
WHERE FirstName = 'John'
AND Salary > 1500

Æwiczenie 1.23

SELECT *
FROM Employee
WHERE FirstName NOT IN ('JOHN') 
AND Salary >1500

SELECT *
FROM Employee
WHERE FirstName <> 'JOHN' 
AND Salary >1500

Æwiczenie 1.24

SELECT *
FROM Employee
WHERE FirstName IN ('John', 'Linda')

Æwiczenie 1.25

SELECT *
FROM Employee
WHERE Gender = 'W'
AND FirstName = 'John'

Æwiczenie 1.26

SELECT *
FROM Employee
WHERE FirstName LIKE 'J%'

Æwiczenie 1.27

SELECT *
FROM Employee
WHERE LastName LIKE '%n'

Æwiczenie 1.28

SELECT *
FROM Employee
WHERE FirstName LIKE '_a%'

Æwiczenie 1.29

SELECT *
FROM Employee
WHERE FirstName LIKE 'jo%n'

Æwiczenie 1.30

SELECT *
FROM Employee
WHERE LastName LIKE 'a_d%n'

Æwiczenie 1.31

Teoretyczne - rozwi¹zanie Magdalena i Katarzyna.

Æwiczenie 1.32

SELECT *
FROM Employee
ORDER BY LastName

Æwiczenie 1.33

SELECT *
FROM Employee
ORDER BY LastName, FirstName

Æwiczenie 1.34

SELECT *
FROM Employee
ORDER BY Salary DESC

Æwiczenie 1.35

SELECT *
FROM Employee
ORDER BY LastName, Salary DESC

Æwiczenie 1.36

SELECT TOP(3) *
FROM Employee
ORDER BY Salary DESC

Æwiczenie 1.37

SELECT TOP(5) WITH TIES *
FROM Employee
ORDER BY Salary DESC

Æwiczenie 1.38

SELECT TOP(20) PERCENT WITH TIES*
FROM Employee
ORDER BY Salary

Æwiczenie 1.39

SELECT DISTINCT LastName
FROM Employee

Æwiczenie 1.40

SELECT *
FROM Employee
WHERE SecondName IS NULL

Æwiczenie 1.41

SELECT *
FROM Employee
WHERE Active = 1
AND RelieveDate IS NOT NULL

Æwiczenie 1.42

SELECT FirstName, ISNULL(SecondName, 'nieznane'), LastName
FROM Employee

Æwiczenie 1.43

SELECT FirstName + ' ' + LastName AS 'FullName'
FROM Employee

Æwiczenie 1.44

SELECT FirstName + ' ' + ISNULL(SecondName,'') + ' ' + LastName AS 'FullName'
FROM Employee

Æwiczenie 1.45

SELECT *
FROM Employee
WHERE Gender = 'W'
OR Gender IS NULL

SELECT *
FROM Employee
WHERE ISNULL(Gender, 'W') = 'W'

Zadanie 1.1

SELECT *
FROM Company
WHERE Name LIKE 'p%'

Zadanie 1.2

SELECT *
FROM Company
WHERE CityId = 1
AND PostCode LIKE '5%'

Zadanie 1.3

SELECT *
FROM Company
WHERE StartDate LIKE '2000-__-__'

SELECT *
FROM Company
WHERE StartDate LIKE '2000%'

SELECT *
FROM Company
WHERE StartDate BETWEEN '2000-01-01' AND '2000-12-31'

Zadanie 1.4

SELECT Name, AnnualIncome, AnnualIncome/12 AS 'Przychód miesiêczny'
FROM Company
WHERE Active = 1
AND EmployeeCount > 1000

Zadanie 1.5

SELECT TOP(3) Name, AnnualIncome/12 AS 'Przychód miesiêczny'
FROM Company
ORDER BY AnnualIncome/12 DESC

Zadanie 1.6

SELECT *
FROM Company
WHERE AnnualIncome/12 > 10000

Zadanie 1.7

SELECT Name, PostCode, Street + ' ' + Number AS 'Adres'
FROM Company
WHERE PostCode IN ('54-621', '78-695', '63-896')

SELECT Name, PostCode, Street + ' ' + Number AS 'Adres'
From Company
WHERE PostCode = '54-621'
OR PostCode = '78-695'
OR PostCode = '63-896'

Zadanie 1.8

SELECT *
FROM Company