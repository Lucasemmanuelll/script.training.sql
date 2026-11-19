-- 04 - Junções entre cliente e conta

-- INNER JOIN: retorna somente clientes que possuem conta correspondente.
SELECT
    cliente.id_cliente,
    cliente.nome,
    conta.numero_conta,
    conta.saldo
FROM cliente
INNER JOIN conta
    ON cliente.id_cliente = conta.id_cliente;

-- LEFT JOIN: mantém todos os clientes, inclusive os que não possuem conta.
SELECT
    cliente.id_cliente,
    cliente.nome,
    conta.numero_conta
FROM cliente
LEFT JOIN conta
    ON cliente.id_cliente = conta.id_cliente;

-- Clientes que ainda não possuem conta.
SELECT
    cliente.id_cliente,
    cliente.nome
FROM cliente
LEFT JOIN conta
    ON cliente.id_cliente = conta.id_cliente
WHERE conta.id_cliente IS NULL;

-- RIGHT JOIN: mantém todos os registros da tabela conta.
SELECT
    cliente.id_cliente,
    cliente.nome,
    conta.numero_conta
FROM cliente
RIGHT JOIN conta
    ON cliente.id_cliente = conta.id_cliente;
