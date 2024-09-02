-- AS -> Apelido
-- Operadores Aritmeticos
SELECT 10 + 5 AS soma;
SELECT 10 - 5 AS subtracao;
SELECT 10 * 5 AS multiplicacao;
SELECT 10 / 5 AS divisao;
SELECT 10 % 5 AS modulo; 

-- Operadores de Comparacao
SELECT * FROM clientes WHERE idade = 25; -- todo mundo que tem
SELECT * FROM clientes WHERE idade != 25; -- todo mundo que não tem
SELECT * FROM produtos WHERE preco > 100; -- maior
SELECT * FROM produtos WHERE preco < 50; -- menor
SELECT * FROM produtos WHERE preco >= 500; -- maior igual
SELECT * FROM produtos WHERE preco <= 1000; -- menor igual
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 100; -- Esteja entre

-- Procura todas as pessoas com o mesmo nome na tabela
SELECT * FROM clientes WHERE nome IN ('vitor', 'roger'); -- Diversos

-- like = % busca no banco de dados o resto da palavra
SELECT * FROM clientes WHERE nome LIKE ('ro%'); -- oger
SELECT * FROM clientes WHERE nome LIKE ('%r%'); -- vito
SELECT * FROM clientes WHERE nome LIKE ('%ger'); -- ro

SELECT * FROM clientes WHERE nome IS NULL; -- Selecionando quem é nulo

-- Operadores Lógicos
SELECT * FROM clientes WHERE idade > 15 AND idade < 25; -- &&
SELECT * FROM clientes WHERE idade > 15 OR idade < 25; -- ||
-- Vai selecionar todo mundo que não tem aquela idade
SELECT * FROM clientes WHERE NOT idade = 18; -- Não seja 

-- Função de agregaçãoptimize
SELECT COUNT(*) FROM clientes; -- Contar as linhas do banco
SELECT SUM(quantidade) FROM produtos; -- Somar
SELECT AVG(quantidade) FROM produtos; -- media
SELECT MIN(quantidade) FROM produtos; -- minimo
SELECT MAX(quantidade) FROM produtos; -- maximo

-- Função de String
SELECT CONCAT(nome, idade) FROM clientes; -- concatenar
SELECT LOWER(nome) FROM clientes; -- deixar tudo minusculo
SELECT UPPER(nome) FROM clientes; -- deixar tudo maiusculo
SELECT SUBSTRING(nome, 5, 10) FROM clientes; -- cortar palavra, inicio e fim

-- Função de data e hora
SELECT NOW(); -- Retorna a data e hora atual
SELECT CURDATE(); -- Retorna a data atual
SELECT CURTIME(); -- Retorna a hora atual

-- Funções matematicas
SELECT CEIL(45.97); -- Arredonda para um numero inteiro
SELECT CEILING(43.65); -- Arredonda para um numero inteiro

SELECT FLOOR(45.97); -- Arredonda para baixo
SELECT ROUND(45.44, 0); -- Arredondar com base nas casas

SELECT SQRT(26);