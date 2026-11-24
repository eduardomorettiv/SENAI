-- 1
DELIMITER /

CREATE TRIGGER tr_pedido_Claudiane

AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
    IF OLD.valor <> NEW.valor THEN
        INSERT INTO novo_valor (id_pedido, preco_antigo, preco_novo, data)
        VALUES (24, 35, 30, NOW());
    END IF;
END/

DELIMITER ;

-- 2
DELIMITER /

CREATE TRIGGER tr_pedido_Diogo
AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
    IF OLD.valor <> NEW.valor THEN
        INSERT INTO novo_valor (id_pedido, preco_antigo, preco_novo, data)
        VALUES (50, 35, 30, NOW());
    END IF;
END/

DELIMITER ;

-- 3
DELIMITER /

CREATE TRIGGER tr_pedido_Eder
AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
    IF OLD.valor <> NEW.valor THEN
        INSERT INTO novo_valor (id_pedido, preco_antigo, preco_novo, data)
        VALUES (24, 35, 30, NOW());
    END IF;
END/

DELIMITER ;