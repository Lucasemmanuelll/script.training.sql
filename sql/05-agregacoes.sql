-- 05 - Funções de agregação e agrupamento

-- COUNT: quantidade total de clientes.
SELECT COUNT(*) AS total_clientes
FROM cliente;

-- SUM: soma dos saldos das contas.
SELECT SUM(saldo) AS saldo_total
FROM conta;

-- AVG: média dos saldos.
SELECT AVG(saldo) AS saldo_medio
FROM conta;

-- GROUP BY: quantidade de contas por cliente.
SELECT
    cliente.id_cliente,
    cliente.nome,
    COUNT(conta.id_conta) AS quantidade_contas
FROM cliente
LEFT JOIN conta
    ON cliente.id_cliente = conta.id_cliente
GROUP BY cliente.id_cliente, cliente.nome;

-- COALESCE: substitui o resultado nulo por zero.
SELECT
    cliente.id_cliente,
    cliente.nome,
    COALESCE(SUM(conta.saldo), 0) AS saldo_total,
    COUNT(conta.id_conta) AS quantidade_contas
FROM cliente
LEFT JOIN conta
    ON cliente.id_cliente = conta.id_cliente
GROUP BY cliente.id_cliente, cliente.nome;
