#Database utilizada World
#select(Selecione) *(todos os dados) from(da) country(tabela);

#consulta imprecisa "*" puxa tudo
Select * FROM world.city;

#consulta simples
Select * From country;

#selecionar apenas uma coluna
Select Name from country;

#selecionar mais de uma coluna
Select Name, SurfaceArea From country;

#consulta mais precsa
Select Name, Continent, Region, LifeExpectancy
from country;

#consulta com duplicidade
Select * from country;
select * from city;

#Mostrar dados sem duplicidade (distinct)
select distinct CountryCode from city;
#select distinct CountryCode, Name from city; (adicionar pesquisa)


