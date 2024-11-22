CREATE DATABASE rainbank;

USE rainbank;

CREATE TABLE conta_bancaria (
	id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100),
    -- 10 casas antes do . e duas casas depois
    -- 5600.00
    saldo DECIMAL(10, 2)
);

-- INSERT INTO
-- Definindo o inicio e depois o fim da procedure
DELIMITER //
-- Funcao nomeFuncao ( parametros)
CREATE PROCEDURE add_contabancaria(
	IN cb_nome VARCHAR(100),
    IN cb_saldo DECIMAL (10, 2)
)
BEGIN
	INSERT INTO conta_bancaria (cliente, saldo)
    VALUES (cb_nome, cb_saldo);
END //
DELIMITER ;

CALL add_contabancaria("Arthur Rosa", 100.00);

CALL add_contabancaria("Neymar", 101.00);
CALL add_contabancaria("Cr7", 90.00);

DELIMITER //
-- Funcao nomeFuncao ( parametros)
CREATE PROCEDURE update_contabancaria(
	IN cb_id INT,
	IN cb_nome VARCHAR(100),
    IN cb_saldo DECIMAL (10, 2)
)
BEGIN
	UPDATE conta_bancaria 
    SET cliente = cb_nome, 
    saldo = cb_saldo
    WHERE id = cb_id;
END //
DELIMITER ;

CALL update_contabancaria(2, "Neymar", 101.00);
CALL update_contabancaria(3, "Cr7", 90.00);
CALL update_contabancaria(1, "Arthur Rosa", 100.00);