create database if not exists test;

create table inventario(
	id int primary key auto_increment,
    preco decimal(10, 2),
    quantidade int
);

insert into inventario (preco, quantidade) 
Values(23.90,50), (20.49, 100), (50.25, 30);

select * from inventario;

#alter table alterar itens dentro de tabelas
# alterar a tabela inventário, adiconando uma coluna e falando o tipo dela
alter table inventario
ADD column descricao varchar(255) ;

create table venda(
	id int primary key auto_increment,
    nome varchar(55) not null default 'falta nome',
    preco decimal(10, 2),
    quantidade int,
    data_venda date,
    descricao varchar(25)
);
select * from venda;

insert into venda (nome, preco, quantidade, data_venda, descricao)
Values ('Livro1', 10.20, 4, '2024-12-12', 'a'),
('Livro2', 9.30, 2, '2024-05-09', 'b'),
('Livro3', 22.50, 40, '2024-12-03', 'c'),
('Livro4', 45.10, 24, '2024-02-01', 'd');

#excluir somente uma coluna
alter table venda
drop column descricao;

alter table venda
ADD column estatus varchar(255) ;

#renomear coluna e mudar tipo da coluna
alter table venda
change column estatus status boolean;

#modificar tipo da coluna
alter table venda
modify column nome varchar(220);

#renomear colunas
alter table venda
rename column data_venda to data_da_venda;