/**/

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*AQUI EU CRIEI A PRIMEIRA TABELA QUE SE REFERE A MINHA ENTIDADE PRINCIPAL, NESSE CASO,
COMO VOU FALAR DE CARROS, CRIEI UMA TABELA DE MARCAS DE CARROS.
EXEMPO:
- CHEVROLET
- VOLKSWAGEN
- ETC...*/
create table carros(
	id serial primary key,
	marca varchar(20) not null);

/*AQUI EU INSERI AS MARCAS DE CARROS PAR DEPOIS PODER ASSOCIAR A CADA MODELO NA TABELA modelo_carros*/
insert into carros (marca) values ('Chevrolet');
insert into carros (marca) values ('Fiat');
insert into carros (marca) values ('Ford');
insert into carros (marca) values ('VolksWagen');
insert into carros (marca) values ('Renault');
insert into carros (marca) values ('Jeep');
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
create table categorias(
	id serial primary key,
	nome_categoria varchar(50) not null);

/*AQUI EU INSERI AS MARCAS DE CARROS PAR DEPOIS PODER ASSOCIAR A CADA MODELO NA TABELA modelo_carros*/
insert into categorias (nome_categoria) values ('Hatch');
insert into categorias (nome_categoria) values ('Sedan');
insert into categorias (nome_categoria) values ('Pick-up');
insert into categorias (nome_categoria) values ('SUV');
insert into categorias (nome_categoria) values ('Coupés');
insert into categorias (nome_categoria) values ('Conversível');
insert into categorias (nome_categoria) values ('Station Wagons');
insert into categorias (nome_categoria) values ('Minivans');
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*AQUI EU CRIEI UMA TABELA QUE VAI RECEBER VÁRIOS CARROS. CADA CARRO SERÁ SERA RELACIONADO
A SUA MARCA.
EXEMPLO:
- ONIX, 2017, 1.0, R$ 45.000, CHEVROLET*/
create table modelo_carros(
	id serial primary key,
	nome_modelo varchar(15) not null,
	ano_modelo int not null,
	potencia_modelo float not null,
	preco_medio money not null,
	marca_carro_id int references carros(id) not null); /*(ESSE ÚLTIMO CAMPO SERÁ PUXADO DA TABELA ACIMA POR MEIO DO "FOREING KEY")*/

/*NESSE MOMENTO EU COMEÇO A INSERIR REGISTROS NA TABELA modelo_carros*/
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Scenic Mégane', 2001, 2000, 9000, 5);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Sandero Vibe', 2017, 1000, 37.250, 5);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Onix', 2018, 1400, 54.209, 1);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Gol', 2022, 1000, 57.660, 4);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Duster', 2019, 2000, 72.884, 5);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Spin', 2020, 1800, 83.068, 1);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Renegade', 2020, 1800, 92.988, 6);
insert into modelo_carros (nome_modelo, ano_modelo, potencia_modelo, preco_medio, marca_carro_id) values ('Ranger', 2008, 3000, 50.781, 3);

insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Pálio', 2010, 1000, 21.195, 2, 1);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Strada', 2015, 1400, 50.718, 2, 3);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Siena', 2016, 1400, 38.550, 2, 2);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Astra', 2005, 2000, 19.378, 1, 2);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Toro', 2021, 1800, 99.693, 2, 3);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Compass', 2021, 2000, 141.654, 6, 4);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Classic', 2014, 1000, 25.367, 1, 2);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Clio', 2004, 1000, 10.147, 5, 1);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Pálio Weekend', 2000, 1600, 9.000, 2, 7);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Uno', 2013, 1000, 22.215, 2, 1);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Zafira', 2005, 2000, 23.125, 1, 8);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('Ka', 2021, 1000, 58.101, 3, 1);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, marca_carro_id, categoria_modelo_id)
values ('EcoSport', 2021, 1500, 83.965, 3, 4);
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio, categoria_modelo_id)
values ('Fox', 2021, 1600, 60.452, 4);
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*ESTE COMANDO SERVE PARA PODER VISUALIZAR UMA TABELA.*/
select * from carros; /*NESSE CASO EU ESTOU MOSTRANDO A TABELA carros*/
select * from modelo_carros mc; /*E AQUI A TABELA modelo_carros*/
select * from categorias;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> ALTERAÇÃO DE VALORES NOS REGISTROS DAS TABELAS
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*USEI ESSE COMANDO ABAIXO PARA ATUALIZAR O VALOR DO CAMPO potencia_modelo APENAS DA LINHA DO Scenic Megane*/
UPDATE  modelo_carros /*APÓS O UPDATE DIZEMOS O NOME DA TABELA QUE QUEREMOS ATUALIZAR*/
SET potencia_modelo = 2000 /*E APÓS O set NÓS INFORMAMOS QUAL O NOME DO CAMPO QUE QUEREMOS ALTERAR*/
where nome_modelo = 'Scenic Mégane'; /*AQUI É IMPORTANTE INFORMAR EM QUAL REGISTRO NÓS QUEREMOS ALTERAR PORQUE SE NÃO, 
O COMANDO IRÁ ALTERAR TODAS AS LINHAS DESTE CAMPO NA TABELA*/

/*APÓS EU TER CRIADO UMA NOVA TABELA CHAMADA CATEGORIA EU USEI OS COMANDOS ABAIXO PARA ADICIONAR UMA CATEGORIA PARA OS CARROS JÁ CADASTRADOS*/
UPDATE  modelo_carros SET categoria_modelo_id = 8 where nome_modelo = 'Scenic Mégane';
UPDATE  modelo_carros SET categoria_modelo_id = 1 where nome_modelo = 'Sandero Vibe';
UPDATE  modelo_carros SET categoria_modelo_id = 1 where nome_modelo = 'Onix';
UPDATE  modelo_carros SET categoria_modelo_id = 1 where nome_modelo = 'Gol';
UPDATE  modelo_carros SET categoria_modelo_id = 4 where nome_modelo = 'Duster';
UPDATE  modelo_carros SET categoria_modelo_id = 8 where nome_modelo = 'Spin';
UPDATE  modelo_carros SET categoria_modelo_id = 4 where nome_modelo = 'Renegade';
UPDATE  modelo_carros SET categoria_modelo_id = 3 where nome_modelo = 'Ranger';
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> ALTERAÇÃO UM CAMPO DE UMA TABELA.
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/ 
/*NESSE EXEMPLO EU ALTERO O NOME DO CAMPO:*/ 
ALTER TABLE public.modelo_carros RENAME COLUMN potencia_modelo TO cilindradas; /*MUDAR O NOME estado PARA localização*/

/*NESSE EXEMPLO EU ALTERO A OBRIGATORIEDADE DE PREENCHIMENTO DO CAMPO:*/
ALTER TABLE public.modelo_carros ALTER COLUMN marca_carro_id DROP NOT NULL; /*MUDAR O 'NOTT NULL' DE True PARA False*/

ALTER TABLE public.modelo_carros ALTER COLUMN marca_carro_id SET NOT NULL; /*MUDAR O 'NOTT NULL' DE False PARA True*/

ALTER TABLE public.modelo_carros ADD categoria_modelo_id int references categorias(id) NULL; /*ADICIONAR UM NOVO CAMPO NA TABELA modelo_carros*/

delete from modelo_carros 
where id = 23;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> JUNÇÃO DE TABELAS
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*AQUI EU SELECIONEI AS DUAS TABELAS RELACIONADAS POR MEIO DO join*/
select * from carros c inner join modelo_carros mc
on mc.marca_carro_id = c.id /*NESTA LINHA NÓS SELECIONAMOS OS CAMPOS QUE QUEREMOS RELACIONAR DE CADA TABELA. EXEMPLO:
TEMOS A TABELA modelo_carro COM O CAMPO marca_carro_id SELECIONADO QUE DE VE SER IGUAL = AO CAMPO id DA TABELA CARROS
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
NA TABELA modelo_carros TEMOS:
nome_modelo = Onix
marca_carro_id = 6
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
NA TABELA carros TEMOS:
id = 6 
marca = Chevrolet
-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
PERCEBEMOS QUE O VALOR NO CAMPO marca_carro_id NA TABELA modelo_carros E O CAMPO id NA TABELA carros, SÃO IGUAIS.*/
order by c.id asc; /*COLOQUEI TAMBÉM ESTA LINHA DE COMANDO PRA ORDENAR A VISUALIZAÇÃO PELO ID DE FORMA CRESCENTE*/

select * from carros c right join modelo_carros mc
on mc.marca_carro_id = c.id order by c.id asc;

select * from carros c left join modelo_carros mc
on mc.marca_carro_id = c.id order by c.id asc;

SELECT * FROM carros c INNER JOIN modelo_carros mc on mc.marca_carro_id = c.id
INNER JOIN categorias ca on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 3
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> USANDO O INNER JOIN:
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*A PARTIR DOS CÓDIGOS ABAIXO EU EXIBO TODOS OS CARROS DE CADA MARCA SEPARADAMENTE.
 EXEMPLO: --> TODOS OS CARROS DA MARCA --CHEVROLET--*/ 
SELECT * FROM carros c INNER JOIN modelo_carros mc
on mc.marca_carro_id = c.id
where mc.marca_carro_id = 1

--> TODOS OS CARROS DA MARCA --FIAT--
SELECT * FROM carros c INNER JOIN modelo_carros mc
on mc.marca_carro_id = c.id
where mc.marca_carro_id = 2

--> TODOS OS CARROS DA MARCA --FORD--
SELECT * FROM carros c INNER JOIN modelo_carros mc
on mc.marca_carro_id = c.id
where mc.marca_carro_id = 3

--> TODOS OS CARROS DA MARCA --VOLKSWAGEN--
SELECT * FROM carros c INNER JOIN modelo_carros mc
on mc.marca_carro_id = c.id
where mc.marca_carro_id = 4

--> TODOS OS CARROS DA MARCA --RENAULT--
SELECT * FROM carros c INNER JOIN modelo_carros mc
on mc.marca_carro_id = c.id
where mc.marca_carro_id = 5

--> TODOS OS CARROS DA MARCA --JEEP--
SELECT * FROM carros c INNER JOIN modelo_carros mc
on mc.marca_carro_id = c.id
where mc.marca_carro_id = 6
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*APARTIR DOS CÓDIGOS ABAIXO EU VOU EXIBIR OS CARROS POR CATEGORIA DA CARROCERIA
EXEMPLO: TODOS O CARROS QUE SÃO --HATCHES--*/
SELECT * FROM categorias ca INNER JOIN modelo_carros mc
on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 1

--> TODOS O CARROS QUE SÃO --SEDANS--
SELECT * FROM categorias ca INNER JOIN modelo_carros mc
on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 2

--> TODOS O CARROS QUE SÃO --PICK-UPs--
SELECT * FROM categorias ca INNER JOIN modelo_carros mc
on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 3

--> TODOS O CARROS QUE SÃO --SUVs--
SELECT * FROM categorias ca INNER JOIN modelo_carros mc
on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 4

--> TODOS O CARROS QUE SÃO --STATION WAGONS--
SELECT * FROM categorias ca INNER JOIN modelo_carros mc
on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 7

--> TODOS O CARROS QUE SÃO --MINIVANS--
SELECT * FROM categorias ca INNER JOIN modelo_carros mc
on mc.categoria_modelo_id = ca.id
where mc.categoria_modelo_id = 8
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> USANO O LEFT JOIN:
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*VAMOS SELECIONAR TODOS OSA CARROS E SUAS CATEGORIAS, INCLUSIVE OS QUE NÃO TEM NENHUMA CATEGORIA
-- PRIMEIRO VAMOS ADICIONAR UM CARRO QUE NÃO TEM NENHUMA CATEGORIA NA TABELA:*/
insert into modelo_carros (nome_modelo, ano_modelo, cilindradas, preco_medio)
values ('Hafei Furgão', 2011, 1400, 15467);
-- AGORA PODEMOS CONSUTAR AS TABELAS modelo_carros E A TABELA categorias POR MEIO DO LEFT JOIN:
select nome_modelo, nome_categoria from modelo_carros mc left join categorias c 
ON mc.categoria_modelo_id = c.id;
-- AGORA VAMOS SELECIONAR TODAS AS CATEGORIAS E SEUS CARROS INCLUSIVE AQUELAS QUE NÃO TEM NENHUM CARRO:
select nome_categoria, nome_modelo from categorias c left join modelo_carros mc 
on mc.categoria_modelo_id = c.id 
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> USANDO O RIGHT JOIN:
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*VAMOS SELECIONAR TODOS OSA CARROS E SUAS CATEGORIAS, INCLUSIVE OS QUE NÃO TEM NENHUMA CATEGORIA*/
-- AGORA PODEMOS CONSUTAR AS TABELAS modelo_carros E A TABELA categorias POR MEIO DO RIGHT JOIN:
select nome_categoria, nome_modelo from categorias c right join  modelo_carros mc 
on mc.categoria_modelo_id = c.id;
-- AGORA VAMOS SELECIONAR TODAS AS CATEGORIAS E SEUS CARROS INCLUSIVE AQUELAS QUE NÃO TEM NENHUM CARRO:
select nome_modelo, nome_categoria from modelo_carros mc right join categorias c 
ON mc.categoria_modelo_id = c.id;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/


--> EXIBINDO OS CARROS PELOS PREÇOS*/
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*APENAS OS CARROS QUE CUSTAM ATÉ R$ 30.000*/
select * from modelo_carros mc 
where cast(preco_medio as numeric) <= 30000 /*AQUI FOI PRECISO USAR A FUNÇÃO cast(). ESSA FUNÇÃO CONVERTE O TIPO money PARA numeric
APENAS PARA SER USADO NESSA OPERAÇÃO, ISSO PORQUE NÃO PODEMOS USAR CARACTERES DE OPERAÇÃO COM O TIPO MONEY*/
order by cast(preco_medio as  numeric) asc; /*TABELA ORDENADA DO MENOR PREÇO PARA O MAIOR PREÇO*/

/*APENAS OS CARROS QUE CUSTAM ENTRE R$ 31.000 E R$ 90.000*/
select * from modelo_carros mc 
where cast(preco_medio as numeric) between 31000 and 90000
order by cast(preco_medio as numeric) asc;

/*APENAS OS CARROS QUE CUSTAM ENTRE R$ 91.000 E R$ 200.000*/
select * from modelo_carros mc 
where cast(preco_medio as numeric) between 91000 and 200000
order by cast(preco_medio as numeric) asc;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> EXIBINDO OS CARROS DE ACORDO COM O ANO DO MODELO:
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*APENAS OS CARROS DE ANO ATÉ 2005*/
select * from modelo_carros mc 
where ano_modelo <= 2005
order by ano_modelo asc;

/*APENAS OS CARROS DE ANO ENTRE 2006 E 2017*/
select * from modelo_carros mc 
where ano_modelo between 2006 and 2017
order by ano_modelo asc;

/*APENAS OS CARROS DE ANO ENTRE 2018 E 2022*/
select * from modelo_carros mc 
where ano_modelo between 2018 and 2022
order by ano_modelo asc;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/

--> EXIBINDO OS CARROS DE ACORDO COM A POTÊNCIA DO MOTOR
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
/*LISTA DOS CARROS ORDENADA PELA POTÊNCIA DO MOTOR. DA MAIOR PARA A MENOR:*/
select nome_modelo, cilindradas from modelo_carros mc 
order by cilindradas desc;
/* APENAS OS CARROS DE 1000 CILINDRADAS:*/
select * from modelo_carros mc 
where cilindradas  = 1000
order by preco_medio asc;
/* APENAS OS CARROS DE 1600 CILINDRADAS:*/
select * from modelo_carros mc 
where cilindradas = 1600
order by preco_medio asc;
/* APENAS OS CARROS DE 2000 CILINDRADAS:*/
select * from modelo_carros mc 
where cilindradas = 2000
order by preco_medio asc;
/*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/











