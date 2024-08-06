#inserir dados
create table if not exists vendas (
	#not null, obrigar a inserir algo na coluna
    #auto_increment, inserir registro automático
    id int(50) primary key not null auto_increment,
    produtos varchar(50),
    #not null default, se não inserir nada colocar um valor base, valor vazio é diferente de null
    vendedor varchar(50) not null default '',
    #obriga a inserir valor
    quantidade int (10) not null,
    #(10,2) até 10 digitos e somente 2 casas depois da virgula
    preco decimal(10,2),
    data_venda date,
    #enum, colocar obrigatoriamente um valor ou outro, se não colocar ele insere não automático
    vendido enum ('Não', 'Sim') default 'Não'

);

#insert into(inserir) vendas(na tabela) ()(nas colunas) values()(os valores);
insert into vendas (produtos,vendedor, quantidade) values('monitor', 'João', 3);

insert into vendas (produtos,quantidade, preco, vendido) values('mouse', 28, 128.2, 'Sim');

select * from vendas;