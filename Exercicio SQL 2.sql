USE ContosoRetailDW

--Exercicio 1
--SELECT TOP(100) *
--FROM FactSales
--ORDER BY SalesAmount DESC

--Exercicio 2
--SELECT TOP(10) UnitPrice, Weight
--FROM DimProduct
--ORDER BY UnitPrice DESC, Weight DESC, ProductName DESC

--Exercicio 3
--SELECT 
--	ProductName AS 'Nome do Produto', 
--	Weight AS Peso
--FROM DimProduct
--WHERE Weight >= 220
--ORDER BY Weight DESC

--Exercicio 4
--SELECT 
--	StoreName AS 'Nome da loja', 
--	OpenDate AS 'Data de abertura', 
--	EmployeeCount AS 'Numero de Funcionarios'
--FROM DimStore
--WHERE CloseDate IS NULL AND StoreType = 'Store'

--Exercicio 5
--SELECT 
--	ProductKey,
--	ProductName,
--	BrandName,
--	AvailableForSaleDate
--FROM DimProduct 
--WHERE ProductName LIKE '%Litware Home Theater System 4.1%' AND AvailableForSaleDate LIKE '%2009%'
--ORDER BY AvailableForSaleDate ASC

--Exercicio 6-a
--SELECT * 
--FROM DimStore
--WHERE Status = 'off'

--Exercicio 6-b
--SELECT * 
--FROM DimStore
--WHERE CloseDate IS NOT NULL

--Exercicio 7
--SELECT 
--	StoreKey,
--	StoreName,
--	EmployeeCount
--FROM DimStore
--WHERE CloseDate IS NULL AND EmployeeCount IS NOT NULL
--ORDER BY EmployeeCount
-- Categoria 1 - Lojas 1 a 69
--Categoria 2 - Lojas 70 a 250
--Categoria 3 - > Loja 250

--Exercicio 8 
--SELECT 
--	ProductKey,
--	ProductName,
--	UnitPrice
--FROM DimProduct
--WHERE ProductName LIKE '%LCD%'

--Exercicio 9
--SELECT 
--	ProductKey,
--	ProductName,
--	Manufacturer,
--	ColorName
--FROM DimProduct
--WHERE ColorName IN ('Green', 'Orange', 'Black', 'Silver', 'Pink') AND Manufacturer IN ('Contoso, Ltd', 'Litware, Inc.', 'Fabrikam, Inc.')

--Exercicio 10
--SELECT 
--	ProductKey,
--	ProductName,
--	Manufacturer,
--	ColorName,
--	UnitPrice
--FROM DimProduct
--WHERE Manufacturer = 'Contoso, Ltd' AND ColorName = 'Silver' AND UnitPrice BETWEEN 10 AND 30
--ORDER BY UnitPrice DESC