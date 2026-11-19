-- 01 - Estrutura inicial do banco de dados
-- Execute este arquivo uma única vez em um banco de testes vazio.

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    renda NUMERIC(10, 2) NOT NULL
);

CREATE TABLE conta (
    id_conta SERIAL PRIMARY KEY,
    numero_conta VARCHAR(20) NOT NULL UNIQUE,
    saldo NUMERIC(10, 2) NOT NULL,
    id_cliente INTEGER NOT NULL,
    CONSTRAINT fk_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
);

CREATE TABLE funcionarios (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    cargo VARCHAR(20) NOT NULL,
    salario NUMERIC(10, 2) NOT NULL
);
