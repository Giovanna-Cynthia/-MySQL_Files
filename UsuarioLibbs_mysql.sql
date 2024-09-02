CREATE DATABASE usuarioLibbs;

USE usuarioLibbs;

CREATE TABLE usuarios (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(40)
);

INSERT INTO usuarios (nome, email, senha)
VALUES ('arthur', 'a.rthur@gmail.com', '123'),
	   ('giovanna', 'giovannac@gmail.com', '456'),
	   ('lucas', 'lucas.inuti@gmail.com', '789');
       
UPDATE usuarios SET nome = "lucas santos" WHERE id = 3; --  Atuallizar
SELECT * FROM usuarios; -- Visualizar todas as colunas

CREATE TABLE produtos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    preco INT,
    quantidade INT
);

INSERT INTO produtos (nome, preco, quantidade)
VALUES ('celular', 500, 10),
	   ('computador', 1000, 60),
	   ('geladeira', 8000, 7),
       ('teclado', 700, 60),
       ('mouse', 70, 100);
       
	SELECT * FROM produtos;
    
-- SOMAR
SELECT SUM(preco) FROM produtos;
-- MEDIA
SELECT AVG(preco) FROM produtos; 

CREATE TABLE pedidos(
id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idUsuario INT,
idProduto INT,
FOREIGN KEY (idUsuario) REFERENCES usuarios(id),
FOREIGN KEY (idProduto) REFERENCES produtos(id)
);
  
INSERT INTO pedidos (idUsuario, idProduto)
	VALUES (1, 2),
		(2, 1),
		(3, 3);

