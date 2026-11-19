# Estudos de SQL com PostgreSQL

Repositório dedicado aos meus estudos práticos de SQL utilizando **PostgreSQL** e **DataGrip**. O objetivo é consolidar os fundamentos de bancos de dados relacionais por meio de scripts progressivos, exercícios e consultas aplicadas a um cenário de clientes, contas bancárias e funcionários.

> Este é um repositório de aprendizagem. Os dados utilizados nos exemplos são fictícios e os scripts devem ser executados em um banco de testes.

## Tecnologias e ferramentas

- **SGBD:** PostgreSQL
- **IDE:** DataGrip
- **Versionamento:** Git e GitHub
- **Linguagem:** SQL

## Organização dos scripts

Os arquivos estão separados por assunto e numerados para indicar uma sequência sugerida de estudo:

| Arquivo | Conteúdo |
| --- | --- |
| [01-criacao-tabelas.sql](sql/01-criacao-tabelas.sql) | Criação de tabelas, tipos de dados, chaves primárias, chaves estrangeiras e constraints. |
| [02-manipulacao-dados.sql](sql/02-manipulacao-dados.sql) | Inserção e atualização de registros com INSERT e UPDATE. |
| [03-consultas-filtros.sql](sql/03-consultas-filtros.sql) | SELECT, WHERE, LIKE, BETWEEN, IS NULL e ORDER BY. |
| [04-joins.sql](sql/04-joins.sql) | Relacionamento entre tabelas com INNER JOIN, LEFT JOIN e RIGHT JOIN. |
| [05-agregacoes.sql](sql/05-agregacoes.sql) | COUNT, SUM, AVG, GROUP BY e COALESCE. |
| [06-subconsultas-e-ctes.sql](sql/06-subconsultas-e-ctes.sql) | Subconsultas com IN, NOT IN, EXISTS, consultas escalares e CTEs com WITH. |
| [07-indices.sql](sql/07-indices.sql) | Criação de índice com CREATE INDEX. |

## Modelo utilizado nos exercícios

Os scripts trabalham principalmente com três tabelas:

- **cliente:** dados de identificação e renda dos clientes.
- **conta:** número, saldo e cliente relacionado por chave estrangeira.
- **funcionarios:** nome, cargo e salário para exercícios de filtros e ordenação.

O relacionamento principal é **cliente (1) → (N) conta**: um cliente pode possuir várias contas, e cada conta referencia um cliente por meio de `id_cliente`.

## Como executar

1. Crie ou selecione um banco de dados de testes no PostgreSQL.
2. Abra os arquivos na ordem indicada utilizando o DataGrip.
3. Execute primeiro `01-criacao-tabelas.sql` para criar a estrutura.
4. Execute `02-manipulacao-dados.sql` para inserir os dados fictícios.
5. Depois, pratique os arquivos de consultas, junções, agregações e subconsultas.
6. Execute `07-indices.sql` para criar o índice utilizado no exercício.

Os scripts de criação e inserção são destinados a uma execução inicial em um banco vazio. Para repetir os exercícios, recrie o banco de testes ou prepare comandos de limpeza adequados antes de executar novamente, pois algumas operações não são idempotentes.

## Conteúdos praticados

- Modelagem relacional e criação de tabelas.
- Chaves primárias, chaves estrangeiras e restrições.
- Manipulação de registros.
- Consultas e filtros.
- Junções entre tabelas.
- Funções de agregação e agrupamento.
- Subconsultas e CTEs.
- Índices.

## Próximos passos

- Aprofundar consultas e modelagem relacional.
- Praticar mais cenários com JOIN, subconsultas e CTEs.
- Estudar transações, normalização e índices.
- Avançar para JDBC e integração de aplicações Java com PostgreSQL.

## Acompanhamento da evolução

Utilizo Git e GitHub para versionar os scripts, registrar alterações e acompanhar minha evolução nos estudos.

**Aprender, praticar, revisar e evoluir — um commit de cada vez.**
