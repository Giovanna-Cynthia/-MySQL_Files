CREATE DATABASE restauranteLibbs;

USE restauranteLibbs;

CREATE TABLE categorias(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE produtos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco VARCHAR(20),
    categoriaId INT,
    
    FOREIGN KEY (categoriaId) REFERENCES categorias(id)
);

CREATE TABLE itenspedidos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    quantidade INT,
    preco_unitario INT,
    pedidoId INT,
    produtoId INT,
    
    FOREIGN KEY (pedidoId) REFERENCES pedidos(id),
    FOREIGN KEY (produtoId) REFERENCES produtos(id)
);

CREATE TABLE clientes(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

CREATE TABLE pedidos( 
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    clienteId INT,
    
    FOREIGN KEY (clienteId) REFERENCES clientes(id)
);

CREATE TABLE pagamentos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    metodo_pagamento VARCHAR(100),
    valor_pago INT,
    data_pagamento DATE,  
    pedidoId INT,
    
    FOREIGN KEY (pedidoId) REFERENCES pedidos(id)
);

INSERT INTO categorias (nome) VALUES
('Eletronico'),
('Alimento'),
('Eletrodomestico');

INSERT INTO clientes(nome, email, telefone) VALUES
('Giovanna', 'giovanna@gmail.com', '1158973654'),
('Vitor', 'vitor@gmail.com', '119986355'),
('Lucas', 'lucas@gmail.com', '119876565');

INSERT INTO pedidos(data_pedido, clienteId) VALUES
('2022-06-03', 1),
('2023-07-01', 2),
('2024-09-02', 3);

INSERT INTO produtos(nome, preco, categoriaId) VALUES
('Celular', 1000, 1),
('Arroz', 20, 2),
('Aspirador', 300, 3);

INSERT INTO pagamentos(metodo_pagamento, valor_pago, data_pagamento, pedidoId) VALUES
('credito', 1000, '2021-06-07', 1),
('dinheiro', 20, '2025-08-04', 2),
('debito', 300, '2023-01-26', 3);


INSERT INTO itenspedidos( quantidade , preco_unitario, pedidoId, produtoId) VALUES
(300, 1000, 2, 1),
(1000, 20, 3, 2),
(60, 300, 1, 3);

SELECT prod.nome,
 prod.preco
 FROM produtos AS prod
 INNER JOIN categorias ON prod.categoriaId = categorias.id; 
 
SELECT cli.nome,
cli.email,
cli.telefone
FROM clientes AS cli
INNER JOIN pedidos ON cli.id = pedidos.id;

SELECT prod.data_pedido,
prod.clienteId
FROM pedidos AS prod
INNER JOIN clientes ON prod.id = clientes.id;

