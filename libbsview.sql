CREATE DATABASE  libbsview;

USE libbsview;

CREATE TABLE produtos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10, 2),
    descricao VARCHAR(100)
);

CREATE TABLE clientes(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(100)
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    idProduto INT,
    idCliente INT,
    FOREIGN KEY (idProduto) REFERENCES produtos(id),
    FOREIGN KEY (idCliente) REFERENCES clientes(id)
);

INSERT INTO produtos (nome, descricao, preco, quantidade) VALUES
('coca cola', 'gelada é bom', 20.00, 3),
('camisa do corinthians', 'o melhor', 1000.00, 1),
('gs1200', 'randandan', 10000.00, 7),
('tiger', 'vrruuummm', 2000.00, 3);

INSERT INTO clientes (nome, email, senha) VALUES
('arthur rosa', 'arthur@gmail.com', '123'),
('giovanni', 'giovanni@gmail.com', '321'),
('samuel', 'samuca@gmail.com', '777');

INSERT INTO pedidos (idProduto, idCliente) VALUES
(1,1),
(2, 2),
(3, 3);

-- Saber a quantidade total do estoque
SELECT SUM(quantidade) AS QuantidadeTotal FROM produtos;

CREATE VIEW visualizar_total_estoque AS
SELECT SUM(quantidade) AS QuantidadeTotal FROM produtos;

SELECT * FROM visualizar_total_estoque;

-- Calcular o faturamento total do estoque
SELECT SUM(quantidade * preco) AS Total_Estoque FROM produtos;

CREATE VIEW visualizar_faturamento_total AS
SELECT SUM(quantidade * preco) AS Total_Estoque FROM produtos;

SELECT * FROM visualizar_faturamento_total;

-- Crie uma consulta que vai selecionar todos os produtos que foram pedidos
-- Criar VIEW 

CREATE VIEW visualizar_produtos_pedidos AS
SELECT idProduto, produtos.nome FROM pedidos
INNER JOIN produtos ON pedidos.idProduto = produtos.id;

SELECT * FROM visualizar_produtos_pedidos;

-- VISUALIZAR OS CLIENTES, PEDIDO E PRODUTO
-- INNER JOIN -> INNER JOIN
-- CRIAR UMA VIEW

SELECT 
	clientes.nome AS NomeCliente,
    produtos.nome AS NomeProduto,
    produtos.preco AS PrecoProuto

 FROM clientes
INNER JOIN pedidos ON pedidos.idCliente = clientes.id
INNER JOIN produtos ON produtos.idProduto = produtos.id;

CREATE VIEW visualizar_pedidos_clientes AS
SELECT
	clientes.nome AS NomeCliente,
    produtos.nome AS NomeProduto,
    produtos.preco AS PrecoProuto
FROM clientes
INNER JOIN pedidos ON pedidos.idCliente = clientes.id
INNER JOIN produtos ON produtos.idProduto = produtos.id;
