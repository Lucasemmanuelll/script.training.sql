-- 06 - Subconsultas e expressões de tabela comuns (CTEs)

-- Subconsulta escalar: contas com saldo acima da média.
SELECT numero_conta, saldo
FROM conta
WHERE saldo > (
    SELECT AVG(saldo)
    FROM conta
);

-- IN: clientes que possuem conta.
SELECT nome
FROM cliente
WHERE id_cliente IN (
    SELECT id_cliente
    FROM conta
);

-- NOT IN: clientes que não possuem conta.
SELECT nome
FROM cliente
WHERE id_cliente NOT IN (
    SELECT id_cliente
    FROM conta
);

-- EXISTS: verifica a existência de conta relacionada ao cliente.
SELECT cliente.nome
FROM cliente
WHERE EXISTS (
    SELECT 1
    FROM conta
    WHERE conta.id_cliente = cliente.id_cliente
);

-- CTE: resume a quantidade de contas e o saldo total por cliente.
WITH resumo_clientes AS (
    SELECT
        cliente.id_cliente,
        cliente.nome,
        COUNT(conta.id_conta) AS quantidade_contas,
        COALESCE(SUM(conta.saldo), 0) AS saldo_total
    FROM cliente
    LEFT JOIN conta
        ON cliente.id_cliente = conta.id_cliente
    GROUP BY cliente.id_cliente, cliente.nome
)
SELECT *
FROM resumo_clientes;

-- CTE: calcula a média dos saldos e compara cada conta com ela.
WITH saldo_medio AS (
    SELECT COALESCE(AVG(saldo), 0) AS media_saldos
    FROM conta
)
SELECT
    numero_conta,
    saldo
FROM conta
WHERE saldo > (
    SELECT media_saldos
    FROM saldo_medio
);
