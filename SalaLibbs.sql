CREATE DATABASE sala;

USE sala;

CREATE TABLE professor (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE aluno (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

INSERT INTO professor (nome, idade) VALUES 
('Arthur', 22),
('Samuel', 41);

INSERT INTO aluno (nome, idade) VALUES
('Giovanna', 19),
('Claudia', 23);


CREATE TABLE turma(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idAluno INT,
    idProfessor INT,
    FOREIGN KEY (idProfessor) REFERENCES professor(id),
    FOREIGN KEY (idAluno) REFERENCES aluno(id)
);

SELECT * FROM professor;
SELECT * FROM aluno;

INSERT INTO turma (idProfessor, idAluno) VALUES 
(1, 2),
(2, 1);


SELECT al.nome, al.idade, turma.idProfessor
FROM aluno AS al
INNER JOIN turma ON turma.idAluno = al.id;

SELECT pr.nome, pr.idade, turma.idAluno
FROM professor AS pr
INNER JOIN turma ON turma.idProfessor = pr.id;

SELECT al.nome, al.idade, professor.nome
FROM aluno AS al
INNER JOIN turma ON turma.idAluno = al.id
INNER JOIN professor ON turma.idProfessor = professor.id;

SELECT
al.nome AS AlunoNome,
al.idade AS AlunoIdade,
pr.nome AS NomeProfessor
FROM aluno AS al
INNER JOIN turma AS tr ON tr.idAluno = al.id
INNER JOIN professor AS pr ON tr.idProfessor = pr.id;