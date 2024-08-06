select * from vendas;

#update(NUNCA DÊ UPDATE SEM WHERE, SE NÃO PODE ATUALIZAR TODOS OS ITENS DA TABELA)
#atualize na tabela vendas na coluna quantidade para o valor 5 onde o id for igual a 2
update vendas set quantidade = 5
where id = 2;

update vendas set preco = 250.90
where id = 1;

#mais de uma condição
update vendas set vendedor ='Antonio'
where id = 2 and vendido = 'Sim';

#delete from (utilizar com cuidado pois não precisa de where)
delete from vendas
where id =2;
