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

insert into funcionarios(nome,cargo,salario)
values ('lucas','programador',4000);

insert into funcionarios(nome, cargo, salario)
values ('amanda', 'dentista', 4000);

insert into funcionarios(nome, cargo, salario)
values ('jonatas','engenheiro',4000);

insert into funcionarios(nome,cargo,salario)
values ('Lucas','Inpetor',11.000);

insert into public.funcionarios(nome, cargo, salario)
values ('João','Médico',12.000);

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




update funcionarios
set cargo = 'Desenvolvedor Java'
where nome =  'Lucas';

update funcionarios
set salario = 4500
where nome = 'amanda';

select *
from funcionarios
order by salario desc ;




    select nome
    from funcionarios
    where (cargo like 'p%' or cargo like'e%') and salario > 5000
    order by salario desc;

select nome,cargo,salario
from funcionarios
where cargo in ('Programador','Engenheiro')
and salario > 3000
order by salario desc