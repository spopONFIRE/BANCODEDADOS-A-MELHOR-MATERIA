--Exercicio 1
DELIMITER //
CREATE TRIGGER after_insert_clientes
AFTER INSERT ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (...) VALUES (CONCAT('Novo cliente', NOW()));
END;
//
DELIMITER ;
