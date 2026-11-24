mysql -u root 
use pizzaria;

=========================================================================================================
DELIMITER /

CREATE TRIGGER tr_atualizar_valor
AFTER UPDATE ON pedidos
FOR EACH ROW
BEGIN
    IF OLD.valor <> NEW.valor THEN
        INSERT INTO novo_valor (id_pedido, preco_antigo, preco_novo, data)
        VALUES (LAST_INSERT_ID, OLD.VALOR, NEW.VALOR, NOW());
    END IF;
END/

DELIMITER ;

=======================================================================================================

SELECT cliente_id, nome
FROM clientes
WHERE nome IN (
    'Claudiane Mendes Trigueiro Silva',
    'Diogo Matos da Silva',
    'Eder Almeida Batista de Oliveira'
);

SELECT pizza_id, nome, valor
FROM pizzas
WHERE nome IN ('Aliche', 'Firense', 'Toscana', 'Grega', 'Gregas', 'Canadense', 'Margherita');

=======================================================================================================

-- Criar pedido da Claudine
INSERT INTO pedidos VALUES (DEFAULT, 14, CURDATE(), NOW(), 0);
SET @ped_claudiane = LAST_INSERT_ID();

INSERT INTO itens_pedido VALUES (@ped_claudiane, 3, 2, 32.61);
INSERT INTO itens_pedido VALUES (@ped_claudiane, 16, 1, 35.33);

-- Criar pedido da Diogo
INSERT INTO pedidos VALUES (DEFAULT, 23, CURDATE(), NOW(), 0);
SET @ped_diogo = LAST_INSERT_ID();

INSERT INTO itens_pedido VALUES (@ped_diogo, 39, 2, 29.41);
INSERT INTO itens_pedido VALUES (@ped_diogo, 20, 1, 34.69);

-- Criar pedido da Eder
INSERT INTO pedidos VALUES (DEFAULT, 27, CURDATE(), NOW(), 0);
SET @ped_eder = LAST_INSERT_ID();

INSERT INTO itens_pedido VALUES (@ped_eder, 11, 1, 31.33);
INSERT INTO itens_pedido VALUES (@ped_eder, 22, 2, 34.37);

=======================================================================================================

SELECT p.pedido_id, c.nome AS cliente, p.valor AS valor_total
FROM pedidos p
JOIN clientes c ON c.cliente_id = p.cliente_id
WHERE p.pedido_id IN (@ped_claudiane, @ped_diogo, @ped_eder);

=======================================================================================================