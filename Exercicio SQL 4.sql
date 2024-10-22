USE ContosoRetailDW

--Exercicio 1-A
SELECT
	ChannelKey,
	SUM(SalesQuantity) AS 'Numero total de vendas'
FROM FactSales
GROUP BY channelKey

--Exercicio 1-B
SELECT 
	StoreKey,
	SUM(SalesQuantity) AS 'Total de vendas',
	SUM(ReturnQuantity) AS 'Total de devoluções'
FROM FactSales
Group BY StoreKey

--Exercicio 1-C
SELECT
	channelKey,
	SUM(SalesAmount) AS 'Arrecadação total de vendas'
FROM FactSales
WHERE DateKey LIKE '%2007%'
GROUP BY channelKey

--Exercicio 2-A
SELECT TOP(10)
	productKey,
	SUM(SalesAmount) AS 'Valor total de vendas'
FROM FactSales
GROUP BY productKey
--HAVING SUM(SalesAmount) >= 5000000
ORDER BY SUM(SalesAmount) DESC

--Exercicio 3-A
SELECT TOP 1
	CustomerKey,
	SUM(SalesQuantity) AS 'Total de compra'
FROM FactOnlineSales
GROUP BY CustomerKey
ORDER BY SUM(SalesQuantity) DESC

--Exercicio 3-B
SELECT TOP 3
	ProductKey,
	CustomerKey,
	SUM(SalesQuantity) AS 'Total de compra'
FROM FactOnlineSales
WHERE CustomerKey = '19037'
GROUP BY ProductKey, CustomerKey
ORDER BY SUM(SalesQuantity) DESC

--Exercicio 4-A
SELECT 
	BrandName,
	COUNT(BrandName) AS 'Total de produtos da marca'
FROM DimProduct
GROUP BY BrandName

--Exercicio 4-B
SELECT
	ClassName,
	AVG(UnitPrice) AS 'Media de preço'
FROM DimProduct
GROUP BY ClassName

--Exercicio 4-C
SELECT
	ColorName,
	SUM(Weight) AS 'Peso total'
FROM DimProduct
GROUP BY ColorName

--Exercicio 5
SELECT
	StockTypeName,
	SUM(Weight) AS 'Peso total'
FROM DimProduct
WHERE BrandName = 'Contoso'
GROUP BY StockTypeName
ORDER BY SUM(Weight) DESC

--Exercicio 6
SELECT
	BrandName,
	COUNT(DISTINCT ColorName) AS 'Cor'
FROM DimProduct
GROUP BY BrandName

--Exercicio 7
SELECT
	Gender,
	COUNT(Gender) AS 'Total de clientes',
	AVG(YearlyIncome) AS 'Media de salario anual'
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender

--Exercicio 8
SELECT
	Education,
	COUNT(Education) AS 'Total de clientes',
	AVG(YearlyIncome) AS 'Media de salario anual'
FROM DimCustomer
WHERE Education IS NOT NULL
GROUP BY Education

--Exercicio 9
SELECT
	DepartmentName,
	Count(DepartmentName) AS 'Total de funcionarios'
FROM DimEmployee
WHERE EndDate IS NULL
GROUP BY DepartmentName

--Exercicio 10
SELECT
	Title,
	SUM(VacationHours) AS 'Media de horas de folga'
FROM DimEmployee
WHERE EndDate IS NULL AND Gender = 'F' AND DepartmentName IN('Production', 'Marketing', 'Engineering', 'Finance')  AND HireDate BETWEEN '1999-01-01' AND '2000-12-31'
GROUP BY Title