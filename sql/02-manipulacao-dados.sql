-- 02 - Inserção e atualização de registros
-- Dados fictícios para fins de estudo.

INSERT INTO cliente (nome, cpf, renda)
VALUES
    ('Lucas', '11111111111', 4500.00),
    ('Maria', '22222222222', 3500.00),
    ('Amanda', '33333333333', 2800.00);

INSERT INTO conta (numero_conta, saldo, id_cliente)
VALUES
    ('1001', 30000.00, 1),
    ('1002', 8500.00, 2);

INSERT INTO funcionarios (nome, cargo, salario)
VALUES
    ('Pedro', 'programador', 6500.00),
    ('Elisa', 'engenheira', 7200.00),
    ('Marcos', 'analista', 4800.00);

-- Atualiza a renda da cliente identificada pelo ID.
UPDATE cliente
SET renda = 3800.00
WHERE id_cliente = 2;

-- Consultas simples para conferir os registros.
SELECT * FROM cliente;
SELECT * FROM conta;
SELECT * FROM funcionarios;
