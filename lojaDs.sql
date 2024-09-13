USE lojads;

 
SELECT 
    clientes.nome AS Nome_Cliente,
    produtos.nome_produto AS Produto,
    pedidos.quantidade AS Quantidade,
    pedidos.data_pedido AS Data_Pedido,
    pagamentos.metodo_pagamento AS Metodo_Pagamento
FROM 
    pedidos
INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
INNER JOIN produtos ON pedidos.id_produto = produtos.id_produto
INNER JOIN pagamentos ON pedidos.id_pagamento = pagamentos.id_pagamento
WHERE 
    clientes.nome = 'Maria Oliveira';
    SELECT 
    produtos.nome_produto AS Produto,
    produtos.preco AS Preco,
    fornecedores.nome_fornecedor AS Fornecedor
FROM 
    produtos
INNER JOIN fornecedores ON produtos.id_fornecedor = fornecedores.id_fornecedor
WHERE 
    produtos.preco > 500;

SELECT 
cli.nome AS NomeCliente,
cli.email AS EmailCliente 
FROM Clientes cli
INNER JOIN cidades cid ON cli.id_cidade = cid.id_cidade;
 
SELECT fun.nome_funcionario AS NomeFuncionario,
cli.nome AS NomeCliente,
cli.telefone AS TelefoneCliente,
prod.nome_produto AS DataPedido,
ped.data_pedido AS DataPedido
 FROM pedidos ped
INNER JOIN funcionarios fun ON fun.id_funcionario = ped.id_funcionario
INNER JOIN clientes cli ON cli.id_cliente = ped.id_cliente
INNER JOIN produtos prod ON prod.id_produto = ped.id_produto
WHERE cli.nome = "João Silva";
