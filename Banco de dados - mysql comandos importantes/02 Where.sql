      #Bando de dados utilisado Sakila
#Where (filtro, pesquisa e mostre dados deacordo com a cláusula de pesquisa)

#select(selecione) *(todos os dados) from(da) film(tabela) where(onde) rental_duration < 7;(condição para ser exibido)
Select * 
from film 
where rental_duration < 7;

#mostrar mais de uma coluna de uma tabela e usando maior que
Select description, rental_rate 
from film 
where rental_duration >=2.99;

# procurar valores iguais
select description, special_features, rating
from film
where rating = "PG";

#procurar valores onde é diferente de.
select description, special_features, rating
from film
where rating <> "R";

#clásula Where - Between - ond - or

#metodo sem utilizar Between
Select * from film
where rental_rate >= 1 and rental_rate <= 3;

#utilizando Between
# selecionar todos os dados da tabela filme onde rental_duration é >=2 e <=8
Select * from film
where rental_duration between 2 and 8;

#base de dados utilizada world
Select * from city
where Population between 1700000 and 2300000;

      #base de dados utilizada sakila
#orderbody ordenar do menor pra maior 
#selecione todos os dados da tabela filme e ordene do menor pro maior deacordo com a coluna rental_rate
select * from film
order by rental_rate;

#ordenar de forma descendente do maior pro menor
select * from film
order by rental_rate desc;

#and é usado quando os dois critérios forem verdadeiros para ser executado corretamente
select * from film
where rental_rate < 1 and rental_duration <1;
	# /\possui dados assim        /\ não possui dados assim
# or precisa que só 1 dos critérios seja para ser executado;
select * from film
where rental_rate < 1 or rental_duration <1;
	# /\possui dados assim        /\ não possui dados assim
    
    #bando utilizado World
#Clásura Where - is null  - is not null

#mostrar todos os registros onde IndepYer são nulos
Select * from country
where IndepYear is null;

#mostrar todos os registros onde population não são nulos
Select * from country
where Population is not null;

# like '%' pesquisar procurando parte de nome dos itens
#( selecione todos os dados na tabela city na coluna name onde tem dados que começem com ka 
select * from city
where Name like 'ka%';

#( selecione todos os dados na tabela city na coluna name onde tem dados que terminem com ka
select * from city
where Name like '%ka';