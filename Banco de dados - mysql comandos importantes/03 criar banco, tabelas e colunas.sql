# criar banco de dados se já não existir um com esse nome
create database if not exists test01;

#apagar banco de dados
drop database test01;

create database if not exists BD01;

#criar tabela
create table produtos (
	#criar colunas
    #tipos de dados int/TINYINT/BIGINT, float/double, decimal, char/varchar, TEXT, DATA/DATETIME, BOOLEAN (TINYINT(1) 1 sig verdadeiro)
    #id(nome da coluna) INT (tipo de dados)
    #primary key, chave primaria da tabela item principal 
    id int primary key,
    nome varchar(36),
    data_reg datetime,
    data_atualizacao date,
    status boolean
);

#criar se já não existir
create table if not exists categorias(
	id int primary key,
    nome varchar(36)
);

#apagar tabela
drop table categorias;
