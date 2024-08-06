#Banco de dados utilizado test
##CASCADE
Create table Clientes (
	id_cliente int primary key,
    nome varchar(50),
    email varchar(100)
);

#cascade se utiliza para alterar dados em mais de uma tabela que tem relação entre si
Create table pedidos(
	id_pedido int primary key,
    #será uma chave estranjeira, ira receber os dados do id cliente de outra tabela
    id_cliente int,
    descricao varchar(100),
    valor decimal (10.3),
    #pegar o id cliente da tabela clientes e associar a esta tabela e com o cascade se apagar ou 
    #alterar algum algum cliente que tenha um pedido cadastrado este pedido será alterado igualmente
    foreign key (id_cliente) references Clientes(id_cliente) ON DELETE CASCADE ON UPDATE CASCADE
);

#POPULAR DADOS Clientes
INSERT INTO Clientes (id_cliente, nome, email)
Values
	(1, 'João Silva', 'joao.silva@gmail.com'),
    (2, 'Maria Tina', 'tina.m@gmail.com'),
    (3, 'Cleber Carvalho', 'cleber123@gmail.com');
    
INSERT INTO Pedidos (id_pedido, id_cliente, descricao, valor)
Values
	(101,1, 'Notebook', 2000.00),
    (102,1, 'Telefone', 1000.00),
    (103,2, 'Monitor', 500.00),
    (104,3, 'Teclado', 50.00);
    
    Select * from Clientes;
	Select * from pedidos;
    
    #testar cascade
    delete from clientes 
    where id_cliente=1;
    
    update clientes set id_cliente = 10 where id_cliente = 2;
    
##SET NULL
#CASO EXCLUSAO DE UMA TABELA COM VARIOS ITENS LInkados apenas setar o valor como null
# um departamente pode ter vários funcionarios, se um departamente for excluido, não apagar os funcionarios 
#mas sim trocar o numero do departamento do funcionário para null

CREATE TABLE Departamentos (
	id_departamento int primary key,
    nome_departamento varchar(50)
);

CREATE TABLE Funcionarios(
	id_funcionario int primary key,
    id_departamento int,
    nome_funcionario varchar(50),
    foreign key (id_departamento) references Departamentos(id_departamento) ON DELETE SET NULL on update SET NULL
);

#popular dados
INSERT INTO Departamentos (id_departamento, nome_departamento)
values
	(1, 'RH'),
    (2, 'Contabilidade');
    
Insert into Funcionarios (id_funcionario, id_departamento, nome_funcionario)
	Values
		(101, 1, 'João Silva'),
        (102, 2, 'Gabriela Moreira'),
        (103, 1, 'Pablo Escobar');

#visualizar dados
Select * from Funcionarios;
Select * from Departamentos;

#Mudar o id do departamento sem excluir os funfionarios que pertenciam a ele, apenas adicionando null no lugar do departamento
Update Departamentos set id_departamento = 3 where id_departamento =1;

delete  from Departamentos where id_departamento = 2;



#utilizar database test3
# on update/delete restrict
# se tentar atualizar ou excluir algum dado na tabela, será impedido de ser feito caso o tenha aogo relacionado a outra tabela
# se o cliente tiver dado linkado na tabela compra o mysql não permitirar edição
create database test3;

Create table Clientes (
	id_cliente int primary key,
    nome varchar(50),
    email varchar(100)
);

create table compras (
	id_compra int primary key,
    id_cliente int,
    produto varchar(100),
    quantidade int,
	foreign key(id_cliente)
		references Clientes(id_cliente) on update restrict on delete restrict
);

INSERT INTO Clientes (id_cliente, nome, email)
Values
	(1, 'João Silva', 'joao.silva@gmail.com'),
    (2, 'Maria Tina', 'tina.m@gmail.com'),
    (3, 'Cleber Carvalho', 'cleber123@gmail.com');
    
INSERT INTO compras (id_compra, id_cliente, produto, quantidade)
Values
	(101,1, 'Notebook', 2),
    (102,1, 'Telefone', 1),
    (103,2, 'Monitor', 4),
    (104,3, 'Teclado', 3);
    
Select * from clientes;
Select * from compras;

delete from Clientes where id_cliente = 1;