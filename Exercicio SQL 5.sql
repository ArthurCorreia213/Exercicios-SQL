USE ContosoRetailDW

--EXERCICIO 1
SELECT 
	ProductKey,
	ProductName,
	ProductSubcategoryName
FROM DimProduct A INNER JOIN DimProductSubcategory B ON A.ProductSubcategoryKey = B.ProductSubcategoryKey

--EXERCICIO 2
SELECT
	A.ProductCategoryKey,
	ProductCategoryLabel,
	ProductCategoryName,
	ProductCategoryDescription,
	ProductSubcategoryLabel,
	ProductSubcategoryName,
	ProductSubcategoryDescription
FROM DimProductCategory A LEFT JOIN DimProductSubcategory B ON A.ProductCategoryKey = B.ProductCategoryKey

--EXERCICIO 3
SELECT
	StoreKey,
	StoreName,
	EmployeeCount,
	ContinentName,
	RegionCountryName
FROM DimStore A LEFT JOIN DimGeography B ON A.GeographyKey = B.GeographyKey

--EXERCICIO 4
SELECT
	ProductKey,
	ProductName,
	ProductDescription,
	BrandName,
	ProductSubcategoryDescription
FROM DimProduct A 
	LEFT JOIN DimProductSubcategory B ON A.ProductSubcategoryKey = B.ProductSubcategoryKey
	LEFT JOIN DimProductCategory C ON B.ProductCategoryKey = C.ProductCategoryKey

--EXERCICIO 5
SELECT TOP(100) * FROM FactStrategyPlan
SELECT
	StrategyPlanKey,
	Datekey,
	AccountName,
	Amount
FROM FactStrategyPlan A LEFT JOIN DimAccount B ON A.AccountKey = B.AccountKey

--EXERCICIO 6
SELECT
	StrategyPlanKey,
	Datekey,
	ScenarioName,
	Amount
FROM FactStrategyPlan A INNER JOIN DimScenario B ON A.ScenarioKey = B.ScenarioKey

--EXERCICIO 7
SELECT 
	A.ProductSubcategoryKey,
	B.ProductSubcategoryKey,
	ProductSubcategoryName,
	ProductSubcategoryDescription
FROM DimProduct A RIGHT JOIN DimProductSubcategory B ON A.ProductSubcategoryKey = B.ProductSubcategoryKey
WHERE A.ProductSubcategoryKey IS NULL

--EXERCICIO 8
SELECT DISTINCT
	BrandName,
	ChannelName
FROM DimProduct JOIN DimChannel ON BrandName IS NOT NULL
WHERE BrandName IN ('Contoso', 'Fabrikam', 'Litware')

--EXERCICIO 9
SELECT TOP(1000)
	OnlineSalesKey,
	DateKey,
	PromotionName,
	SalesAmount
FROM FactOnlineSales A INNER JOIN DimPromotion B ON A.PromotionKey = B.PromotionKey
WHERE A.PromotionKey != 1
ORDER BY DateKey ASC


--EXERCICIO 10
SELECT
	SalesKey,
	ChannelName,
	StoreName,
	ProductName,
	SalesAmount
FROM FactSales A
	JOIN DimChannel B ON A.channelKey = B.ChannelKey
	JOIN DimStore C ON A.StoreKey = C.StoreKey
	JOIN DimProduct D ON A.ProductKey = D.ProductKey
ORDER BY SalesAmount DESC