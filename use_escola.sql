USE escola;

SELECT nome FROM alunos WHERE aluno_id = 1;
SELECT nome FROM alunos WHERE aluno_id = 3;

-- in -> subconsulta
SELECT nome FROM alunos WHERE aluno_id IN (1,3);

-- Selecionar duas turmas com base no ID
SELECT descricao FROM turmas WHERE turma_id IN (1, 2);

-- NOT IN
-- precisamos listar os alunos que não estão na turma de Historia
-- Turma de Historia tem o ID 2 
SELECT nome FROM alunos WHERE turma_id NOT IN (2);

-- ANY -> Qualquer
-- Vamos listar os alunos que tem pelo menos uma nota maior que 8.0
SELECT nome FROM alunos WHERE aluno_id = ANY (
	SELECT aluno_id
    FROM notas
    WHERE nota > 8.0
);

-- EXISTS -> Existe
-- Vamos listar os professores que tem pelo menos uma turma associada
SELECT nome FROM professores AS p
WHERE EXISTS (
	SELECT 1
    FROM Turma_Professor AS tp
    WHERE tp.professor_id = p.professor_id
);

-- ALL -> Todos
-- IN -> Entre
-- ANY -> Qualquer
-- Liste todos os alunos que estão na turma de historia (id = 2)
-- E que a nota 8 seja maior que todas as notas dadas em atividades dessa turma
SELECT nome 
FROM alunos
WHERE aluno_id = ANY (
	SELECT aluno_id
    FROM notas
    WHERE atividade_id IN (
		SELECT atividade_id
        FROM atividades
        WHERE turma_id = 2 -- todas as atividades da turma 2
    )
) AND 8.0 > ALL (
	SELECT nota
    FROM notas
    WHERE atividade_id IN (
		SELECT atividade_id
        FROM atividades
        WHERE turma_id = 2
	)
)
