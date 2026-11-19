-- 03 - Consultas, filtros e ordenação

-- Seleciona funcionários com salário acima de 5.000.
SELECT nome, cargo, salario
FROM funcionarios
WHERE salario > 5000
ORDER BY salario DESC;

-- Combina padrões de cargo com uma condição salarial.
SELECT nome, cargo, salario
FROM funcionarios
WHERE (cargo LIKE 'p%' OR cargo LIKE 'e%')
  AND salario > 5000
ORDER BY salario DESC;

-- Filtra salários dentro de um intervalo.
SELECT nome, cargo, salario
FROM funcionarios
WHERE salario BETWEEN 3000 AND 7000
ORDER BY salario DESC;

-- Pesquisa registros em que a coluna cargo não possui valor.
SELECT nome, cargo, salario
FROM funcionarios
WHERE cargo IS NULL
ORDER BY salario DESC;
