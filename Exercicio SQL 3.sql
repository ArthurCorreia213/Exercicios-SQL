--Exercicio 1
SELECT
SUM(SalesQuantity) AS 'QTD. Vendida'
FROM FactSales

SELECT
SUM(ReturnQuantity) AS 'QTD. Devolvida'
FROM FactSales

--Exercicio 2
SELECT 
	AVG(YearlyIncome) AS 'Media Salarial Anual'
FROM DimCustomer
WHERE Occupation = 'Professional'

--Exercicio 3
SELECT 
	StoreName,
	EmployeeCount
FROM DimStore
WHERE EmployeeCount = (SELECT MAX(EmployeeCount) FROM DimStore)

SELECT 
	StoreName,
	EmployeeCount
FROM DimStore
WHERE EmployeeCount = (SELECT MIN(EmployeeCount) FROM DimStore)

--Exercicio 4
SELECT
	COUNT(EmployeeKey) AS 'Numero de Funcionarios homens'
FROM DimEmployee
WHERE Gender = 'M' AND EndDate IS NULL

SELECT
	COUNT(EmployeeKey) AS 'Numero de Funcionarias mulheres'
FROM DimEmployee
WHERE Gender = 'F'  AND EndDate IS NULL 

--Funcionário mais antigo
SELECT 
	FirstName,
	LastName,
	EmailAddress,
	HireDate
FROM DimEmployee
WHERE HireDate = 
	(
	SELECT MIN(HireDate) 
	FROM DimEmployee 
	WHERE Gender = 'M' AND EndDate IS NULL
	)

--SELECT TOP(1)
--	FirstName,
--	LastName,
--	EmailAddress,
--	HireDate
--FROM DimEmployee
--WHERE Gender = 'M'
--ORDER BY HireDate ASC

--Funcionaria mais antiga
SELECT 
	FirstName,
	LastName,
	EmailAddress,
	HireDate
FROM DimEmployee
WHERE HireDate = 
	(
	SELECT MIN(HireDate) 
	FROM DimEmployee 
	WHERE Gender = 'F' AND EndDate IS NULL
	)

--Exercicio 5
SELECT
	COUNT(DISTINCT ColorName) AS 'Cores unicas'
FROM DimProduct

SELECT
	COUNT(DISTINCT BrandName) AS 'Marcas unicas'
FROM DimProduct

SELECT
	COUNT(DISTINCT ClassName) AS 'Classes unicas'
FROM DimProduct