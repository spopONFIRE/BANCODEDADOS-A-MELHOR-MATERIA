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

--Exercicio 2
DELIMITER //
CREATE TRIGGER before_delete_clientes
BEFORE DELETE ON Clientes
FOR EACH ROW
BEGIN
    INSERT INTO Auditoria (...) VALUES (CONCAT('exclusão de cliente', NOW()));
END;
//
DELIMITER ;
