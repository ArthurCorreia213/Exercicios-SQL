USE ContosoRetailDW

--DESAFIO 1-A
--SELECT ProductKey
--FROM DimProduct
--O numero de produtos continua igual

-- DESAFIO 1-B
--SELECT CustomerKey
--FROM DimCustomer
--O numero de clientes diminuiu

--DESAFIO 2
--SELECT 
--CustomerKey AS Cliente,
--FirstName AS Nome,
--EmailAddress AS Email,
--BirthDate AS 'Data de Nascimento'
--FROM dimCustomer

--DESAFIO 3-A
--SELECT TOP(100)
--FirstName AS Nome, 
--EmailAddress AS Email,
--BirthDate AS 'Data de nascimento'
--FROM DimCustomer

--DESAFIO 3-B
--SELECT TOP(20) PERCENT FirstName, LastName FROM DimCustomer

--DESAFIO 4
--SELECT BrandName AS Fornecedor FROM DimProduct

--DESAFIO 5
-- SELECT DISTINCT ProductKey FROM DimProduct
-- SELECT DISTINCT ProductKey FROM FactSales
--Um produto ficou sem ser vendido