USE ContosoRetailDW

--Exercicio 1
SELECT
	SUM(SalesQuantity) AS 'QTD. Vendida',
	SUM(ReturnQuantity) AS 'QTD. Devolvida'
FROM FactSales
WHERE ChannelKey = 1

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
WHERE Gender = 'M'

SELECT
	COUNT(EmployeeKey) AS 'Numero de Funcionarias mulheres'
FROM DimEmployee
WHERE Gender = 'F' 

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
	WHERE Gender = 'M'
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
	WHERE Gender = 'F'
	)

--Exercicio 5
SELECT
	COUNT(DISTINCT ColorName) AS 'Cores unicas',
	COUNT(DISTINCT BrandName) AS 'Marcas unicas',
	COUNT(DISTINCT ClassName) AS 'Classes unicas'
FROM DimProduct