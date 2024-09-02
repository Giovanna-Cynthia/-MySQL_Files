CREATE DATABASE operadores_libbs;

USE operadores_libbs;

CREATE TABLE clientes (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT
);

CREATE TABLE empregados(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT,
    salario INT
);

ALTER TABLE empregados
 MODIFY COLUMN salario VARCHAR(40);

CREATE TABLE produtos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    preco INT,
    quantidade INT
);

INSERT INTO clientes(nome, idade)
VALUES ('roger', 18), ('vitor', 25), ('ana', 40);

INSERT INTO empregados (nome, idade, salario)
VALUES  ('viviane', 21, 'R$10.000,00'),
		('joao', 41, 'R$2,00'),
        ('igor', 96, 'R$500,00');
        
INSERT INTO produtos (nome, preco, quantidade)
VALUES  ('torradeira', 4000, 5),
		('celular', 7000, 3),
        ('oculos de sol', 90, 20),
        ('torradeira', 4000, 5);
        