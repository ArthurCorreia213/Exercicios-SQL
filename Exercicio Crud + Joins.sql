--EXERCICIO 1

SELECT 
	NomeCliente,
	PedidoID
FROM dbo.Clientes A
INNER JOIN Pedidos B ON A.ClienteID = B.ClienteID

--EXERCICIO 2

SELECT 
	NomeCliente,
	PedidoID
FROM dbo.Clientes A
LEFT JOIN Pedidos B ON A.ClienteID = B.ClienteID

--EXERCICIO 3

SELECT 
	NomeCliente
FROM Clientes
UNION
SELECT 
	NomeCliente
FROM Clientes A
INNER JOIN Pedidos B ON A.ClienteID = B.ClienteID

--EXERCICIO 4

SELECT 
	NomeCliente
FROM Clientes
UNION ALL
SELECT 
	NomeCliente
FROM Clientes A
INNER JOIN Pedidos B ON A.ClienteID = B.ClienteID

--EXERCICIO 5

SELECT
	NomeCliente,
	NomeProduto,
	Quantidade,
	DataPedido
FROM Clientes A
INNER JOIN Pedidos B ON A.ClienteID = B.ClienteID

INNER JOIN DetalhesPedidos C ON C.PedidoID = B.PedidoID

INNER JOIN Produtos D ON D.ProdutoID = C.ProdutoID
ORDER BY DataPedido DESC

--EXERCICIO 6
SELECT
	NomeCliente,
	COUNT(DISTINCT A.ProdutoID) AS 'Numero de pedidos'
FROM DetalhesPedidos A
INNER JOIN Pedidos B ON A.PedidoID = B.PedidoID
INNER JOIN Clientes C ON B.ClienteID = C.ClienteID
GROUP BY NomeCliente

--EXERCICIO 7

SELECT
	B.PedidoID,
	AVG(A.Quantidade) AS 'Media de itens'
FROM DetalhesPedidos A
INNER JOIN Pedidos B ON A.PedidoID = B.PedidoID
GROUP BY B.PedidoID

--EXERCICIO 8

SELECT
	MONTH(DataPedido) AS 'Mês',
	COUNT(PedidoID) AS 'Numero de pedidos'
FROM Pedidos A
GROUP BY YEAR(DataPedido), MONTH(DataPedido)

--EXERCICIO 9

SELECT
	NomeCategoria,
	SUM(Quantidade * Preco) AS 'Valor total vendido'
FROM DetalhesPedidos A
INNER JOIN produtos B ON A.ProdutoID = B.ProdutoID
INNER JOIN Categorias C ON B.CategoriaID = C.CategoriaID
GROUP BY NomeCategoria

--EXERCICIO 10

SELECT
	NomeCliente,
	MAX(Total) AS 'Valor do pedido mais caro'
FROM Clientes A
INNER JOIN Pedidos B ON A.ClienteID = B.ClienteID
GROUP BY NomeCliente