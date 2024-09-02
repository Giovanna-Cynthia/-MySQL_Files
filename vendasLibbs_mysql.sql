CREATE DATABASE vendaslibbs;
-- indicando o banco de dados que vamos utilizar
USE vendaslibbs;

CREATE TABLE clientes (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE produtos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    preco VARCHAR(30)
);

CREATE TABLE fornecedores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cnpj VARCHAR(16)
);

CREATE TABLE funcionario(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    ncarteira VARCHAR(30),
    salario INT
);

CREATE TABLE pedidos(
id  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
idCliente INT,
idProduto INT,
idFornecedor INT,
idFuncionario INT,
-- fk (colunaAtual) RF tabela (nomeColuna)
-- FOREIGN KEY (Chave estrangeira)
FOREIGN KEY (idCliente) REFERENCES clientes(id),
FOREIGN KEY (idProduto) REFERENCES produtos(id),
FOREIGN KEY (idFornecedor) REFERENCES fornecedores(id),
FOREIGN KEY (idFuncionario) REFERENCES funcionario(id)
);

INSERT INTO clientes (nome, idade) VALUES
('Tiquinho', 27),
('Soares', 23),
('Edson',43);

INSERT INTO produtos(nome, preco) VALUES
('Camiseta da Insider', 'R$120,00'),
('Tenis da Nike', 'R$620,00'),
('Pulseira da Pandora', 'R$1.200,00');

INSERT INTO fornecedores(nome, cnpj) VALUES
('Brás', '21.323/0001-21'),
('Heisenberg', '78.227/0001-32'),
('25Março', '32.921/0001-54');

INSERT INTO funcionario(nome, cpf, ncarteira, salario) VALUES
('Buno', '5694873300', '7965800', 1000),
('Arthur', '7897896545', '7936501', 20000),
('Amanda', '653321478x', '5632302', 30000);

INSERT INTO pedidos (idCliente, idProduto, idFornecedor, idFuncionario) VALUES 
(3, 2, 2, 1),
(2, 1, 3, 2),
(1, 3, 1, 3);

 