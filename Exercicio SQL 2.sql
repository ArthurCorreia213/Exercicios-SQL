USE ContosoRetailDW

--Exercicio 1
SELECT TOP(100) 
	SalesKey,
	ProductKey,
	SalesAmount
FROM FactSales
ORDER BY SalesAmount DESC

--Exercicio 2
SELECT TOP(10) 
	ProductName,
	UnitPrice, 
	Weight
FROM DimProduct
ORDER BY UnitPrice DESC, Weight DESC, ProductName DESC

--SELECT TOP(10) * FROM DimProduct
--ORDER BY UnitPrice DESC, Weight DESC, AvailableForSaleDate ASC

--Exercicio 3
SELECT 
	ProductName AS 'Nome do Produto', 
	Weight AS Peso
FROM DimProduct
WHERE Weight >= 220
ORDER BY Weight DESC

--Exercicio 4
SELECT 
	StoreName AS 'Nome da loja', 
	OpenDate AS 'Data de abertura', 
	EmployeeCount AS 'Numero de Funcionarios'
FROM DimStore
WHERE CloseDate IS NULL AND StoreType = 'Store'

--Exercicio 5
SELECT 
	ProductKey,
	ProductName,
	BrandName,
	AvailableForSaleDate
FROM DimProduct 
WHERE ProductName LIKE '%Litware Home Theater System 4.1%' AND AvailableForSaleDate LIKE '%2009%'
ORDER BY AvailableForSaleDate ASC

--Exercicio 6-a
SELECT * 
FROM DimStore
WHERE Status = 'off'

--Exercicio 6-b
SELECT * 
FROM DimStore
WHERE CloseDate IS NOT NULL

--Exercicio 7
SELECT 
	StoreKey,
	StoreName,
	EmployeeCount
FROM DimStore
WHERE CloseDate IS NULL AND EmployeeCount IS NOT NULL AND EmployeeCount BETWEEN 1 AND 20
--WHERE CloseDate IS NULL AND EmployeeCount IS NOT NULL AND EmployeeCount BETWEEN 21 AND 50
--WHERE CloseDate IS NULL AND EmployeeCount IS NOT NULL AND EmployeeCount > 50
ORDER BY EmployeeCount

--Exercicio 8 
SELECT 
	ProductKey,
	ProductDescription,
	UnitPrice
FROM DimProduct
WHERE ProductDescription LIKE '%LCD%'

--Exercicio 9
SELECT 
	ProductKey,
	ProductName,
	BrandName,
	ColorName
FROM DimProduct
WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND BrandName IN ('Contoso', 'Litware', 'Fabrikam')
ORDER BY BrandName

--Exercicio 10
SELECT 
	ProductKey,
	ProductName,
	Manufacturer,
	ColorName,
	UnitPrice
FROM DimProduct
WHERE Manufacturer = 'Contoso, Ltd' AND ColorName = 'Silver' AND UnitPrice BETWEEN 10 AND 30
ORDER BY UnitPrice DESC