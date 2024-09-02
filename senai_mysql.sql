CREATE DATABASE senai; -- criar um database

USE senai; -- Selecionando database que vamos utilizar
-- cntrl + shift + enter => Executa o codigo
CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- INT -> inteiro
    -- PRIMARY KEY -> indica chave primaria
    -- NOT NULL -> Nunca vai ser vazio
    -- AUTO_INREMENT -> Auto adicionar novo numero
	nome VARCHAR(60),
	materia VARCHAR(30)
);

INSERT INTO professores (nome, materia) VALUES
('Arthur Rosa', 'Banco de dados'),
('Samuel Bruce', 'Flutter'),
('Giovanni Vicking', 'React Native');

-- * -> Indica que estoou buscando todas as colunas
SELECT * FROM professores;

-- Atualizar dados
-- Atualize a tabela professores, ajuste materia = back-end
-- Onde o id deja igual a 1
-- if (id == 1) {atualiza a materia}
UPDATE professores SET materia = 'Back-end' WHERE id = 1; 
-- WHERE -> if
DELETE FROM professores WHERE id = 1;

CREATE TABLE alunos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR (60),
    idade INT (2)
);

INSERT INTO alunos (nome, idade) VALUES
	('Giovanna Cynthia', '19'),
    ('Amanda Lara', '20'),
    ('Vitor', '20'),
    ('Cecilia Bruna', '52');
    
SELECT * FROM alunos;

-- Deletar todos os dados
-- TRUNCATE TABLE ALUNOS;
-- Deletar tabela
-- DROP TABLE alunos;

-- Deletar mais de um ID
-- DELETE FROM alunos WHERE id IN (1, 2, 3);

 -- Atualizar mais de um ID
 UPDATE aluos SET nome = 'Arthur', idade = 22 WHERE id IN (1, 2, 3);
 
 
 -- Colunas - Modificar o tipo da coluna 
 ALTER TABLE alunos
 MODIFY COLUMN nome VARCHAR(40);
 
 -- Adicionar nova coluna
 ALTER TABLE alunos
 ADD COLUMN matricula VARCHAR(10);
 
 -- Deletar uma coluna
 ALTER TABLE alunos
 DROP COLUMN matricula;
 
 -- Trocar o nome 
 ALTER TABLE alunos
 CHANGE COLUMN novoNome nome VARCHAR(30);
 
 -- Alterar o nome da tabela
 ALTER TABLE alunos
 RENAME TO estudantes; 