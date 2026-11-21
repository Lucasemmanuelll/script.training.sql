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

INSERT INTO cliente (id_cliente,nome, cpf)
VALUES ('Lucas', '49374388839');

INSERT INTO conta (numero_conta, saldo, id_cliente)
VALUES ('1001', 30000.00, 1);

SELECT * FROM cliente;
SELECT * FROM conta;

select cliente.id_cliente
from cliente
inner join conta
on cliente.id_cliente = conta.id_cliente
;

select *
from   funcionarios
where (salario >= 10.000);


insert into cliente(nome, cpf, renda)
values ('Maria',44444444444,3000.00);

update cliente
set renda = 3500
where CPF = 44444444444;

select cliente.nome,
       cliente.cpf,
       conta.numero_conta,
       conta.saldo
from cliente
inner join conta
on cliente.id_cliente = conta.id_cliente;

select cliente.nome, conta.numero_conta
from cliente
left join conta
 on cliente.id_cliente = conta.id_cliente
where conta.id_cliente is null;

select
    cliente.nome,
    cliente.cpf,
    cliente.id_cliente
from cliente
right join conta
on cliente.id_cliente = conta.id_cliente;

select
    cliente.id_cliente,
    cliente.nome,
    coalesce(sum(saldo),0) as saldo_total,
    count(conta.id_conta) as quantidade_contas
from cliente
left join conta
on cliente.id_cliente = conta.id_cliente
group by cliente.id_cliente, cliente.nome;

select count(*) as total_clientes
from cliente;

select sum(saldo) as saldo_total
from conta;

select avg(saldo) as saldo_médio
from conta;

select *
from conta
where saldo > (select avg(saldo)
               from conta);

select nome
from cliente
where id_cliente in (
    select id_cliente
    from conta
    );
select nome
    from cliente
    where id_cliente not in (
        select id_cliente
        from conta
    );

select nome
from  cliente
where exists(
    select 1
    from conta
    where conta.id_cliente = cliente.id_cliente
);

with resumo_clientes as(

    select
        cliente.id_cliente,
        cliente.nome,
        count(conta.id_conta) as quantidade_contas,
        coalesce(sum(conta.saldo),0) as saldo_total
        from cliente
        left join conta
         on cliente.id_cliente = conta.id_cliente
        group by cliente.id_cliente, cliente.nome
)
select *
from resumo_clientes;

with saldo_media as (
    select
    coalesce(avg(saldo),0) as media_saldos
    from conta
)
select
    numero_conta,
    saldo
    from conta
    where saldo > (
    select media_saldos
    from saldo_media
);
create index idx_id_conta
    on conta (id_cliente);

    EXPLAIN ANALYZE
    SELECT *
    FROM conta
    WHERE id_cliente = 1;

    SELECT
        indexname,
        indexdef
    FROM pg_indexes
    WHERE tablename = 'conta';

begin;

update conta
set saldo = saldo - 1000
where id_conta = 1;

update conta
set saldo = saldo + 1000
where id_conta = 2
returning id_conta,saldo;

commit;

select id_conta,saldo
from conta
where id_conta in (1,2);