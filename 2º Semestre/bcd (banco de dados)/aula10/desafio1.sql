show function status;

-- FUNÇÃO em SQL para inserir novos 3 dados
DELIMITER //
CREATE PROCEDURE pedidoDeUmItem (cli_id int, piz_id int, qtd int)
BEGIN
    INSERT INTO pedidos VALUES (cli_id);
    INSERT INTO itens_pedido VALUES (piz_id, qtd);
END
// --Termina o código
DELIMITER ; --Faz o DELIMITER voltar ao padrão, opcional

-- 1
CALL pedidoDeUmItem(96, 41, 1);

-- 2
CALL pedidoDeUmItem(105, 39, 2);

-- 3
CALL pedidoDeUmItem(93, 11, 1);
CALL pedidoDeUmItem(93, 14, 2);