create table cliente(
    id_cliente serial primary key,
    nome varchar(100) not null,
    cpf varchar(11) not null
);
create table conta(
    id_conta serial primary key,
    numero_conta varchar(20) not null unique,
    saldo numeric(10,2) not null,
    id_cliente int not null,

    constraint fk_cliente
                  foreign key (id_cliente)
                  references cliente (id_cliente)

);

create table funcionarios(
    id_funcionario serial primary key,
    nome varchar(50) not null,
    cargo varchar(20) not null,
    salario numeric(10,2) not null
);

create table cliente(
    id_cliente serial primary key,
    nome varchar(50) not null,
    cpf varchar(11) not null unique,
    renda numeric(10,2) not null
);

insert into cliente(nome, cpf)
values ('Lucas',49374388839);
insert into conta(numero_conta, saldo, id_cliente)
values(1001,30000,1);

select *
from   funcionarios
where (salario >= 10.000);


insert into cliente(nome, cpf, renda)
values ('Maria',44444444444,3000.00);

update cliente
set renda = 3500
where CPF = 44444444444;

select *
from funcionarios
where   salario >= 5.000;




ALTER TABLE cliente
    ADD COLUMN cpf VARCHAR(11);

ALTER TABLE cliente
    RENAME COLUMN razao_social TO nome;

select *
from funcionarios
order by salario desc ;




    select nome
    from funcionarios
    where (cargo like 'p%' or cargo like'e%') and salario > 5000
    order by salario desc;

select nome,cargo,salario
from funcionarios
where salario between 3000 and 7000
and salario > 3000
order by salario desc;

select nome,cargo,salario
from funcionarios
where cargo is null
order by salario desc;