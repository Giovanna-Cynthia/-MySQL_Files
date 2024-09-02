CREATE DATABASE walmartsenai;

USE walmartsenai;

CREATE TABLE produto(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    quantidade INT
);

CREATE TABLE cliente(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE fornecedor(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedido (
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    id_cliente INT,
    id_fornecedor INT,
    
    FOREIGN KEY (id_produto) REFERENCES produto(id),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id),
     FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id)
);

INSERT INTO produto (nome, quantidade) VALUES
('Celular', 45),
('Notbook', 56),
('Televisao', 63),
('Controle', 100),
('Computador', 150);

INSERT INTO cliente (nome, idade) VALUES
('Giovanna', 19),
('Arthur', 45),
('Vitor', 22),
('Amanda', 10),
('Claudia', 23);

INSERT INTO fornecedor(nome) VALUES
('Apple'),
('Dell'),
('Positivo'),
('Samsung'),
('Axel');

INSERT INTO pedido (id_produto, id_cliente, id_fornecedor) VALUES 
(1, 2, 3),
(2, 1, 4),
(5, 3, 2),
(2, 1, 5),
(3, 4, 1);

SELECT * FROM produto;
SELECT * FROM cliente;
SELECT * FROM fornecedor;

SELECT 
cli.nome AS NomeCliente,
cli.idade AS IdadeCliente
FROM cliente AS cli
INNER JOIN pedido AS ped ON ped.id_cliente = cli.id;