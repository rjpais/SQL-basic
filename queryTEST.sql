-- Criar uma based de dados da empresa X para contactos de funcionarios
CREATE DATABASE contactos;

-- definir a base de dados para manipular
USE contactos;

-- criar uma tabela para o pessoal do trabalho
CREATE TABLE trabalho
(id INTEGER, nome VARCHAR(256), apelido VARCHAR(256), email VARCHAR(256), telefone VARCHAR(256), salario NUMERIC(10, 2)) ;


-- insert data into table one by one
INSERT INTO trabalho (id, nome, apelido, email, telefone, salario)
VALUES ( 1, 'Rui', 'Preto', 'rpreto@gmail.com', '935662221', 1200.0)

INSERT INTO trabalho (id, nome, apelido, email, telefone, salario)
VALUES ( 2, 'Mauro', 'Casto', 'mcastro@gmail.com', '913662221', 1500.0);

-- check names and surnames 

SELECT nome, apelido FROM trabalho;


-- insert 4 more people 
INSERT INTO trabalho (id, nome, apelido, email, telefone, salario)
VALUES ( 3, 'Joao', 'Pinto', 'jpinto@gmail.com', '93122361', 1700.0);

INSERT INTO trabalho (id, nome, apelido, email, telefone, salario)
VALUES ( 4, 'Tiago', 'Pinto', 'tpinto@gmail.com', '931266621', 1000.0);

INSERT INTO trabalho (id, nome, apelido, email, telefone, salario)
VALUES ( 5, 'Rui', 'Alves', 'ralves@gmail.com', '961246421', 2000.0);

INSERT INTO trabalho (id, nome, apelido, email, telefone, salario)
VALUES ( 6, 'Pedro', 'Castro', 'pcastro@gmail.com', '916277277', 1900);   

SELECT id,nome, apelido, email FROM trabalho;

-- obter apenas os colegas com salarias maiores que 1500 Eur
SELECT T.nome,T.apelido FROM trabalho T
WHERE T.salario > 1500;

-- obter o contactos do joao Pinto

SELECT T.nome,T.apelido, email, T.telefone FROM trabalho T
WHERE T.apelido = 'Pinto' AND T.nome = 'Joao';


-- ordenar a lista de nomes e contactos por salario
SELECT T.nome, T.apelido, T.email, T.telefone, T.salario FROM trabalho T
ORDER BY  T.salario DESC;

-- criar uma nova tabela com despesas incluido medias, minimo, maximo e totais
SELECT AVG(salario) FROM trabalho; 
SELECT MIN(T.salario) FROM trabalho T; 
SELECT MAX(T.salario) FROM trabalho T;
SELECT SUM(T.salario) FROM trabalho T;

DROP TABLE despesas

CREATE TABLE despesas   
( id INT, media NUMERIC(10,2), Vmin NUMERIC(10,2) , Vmax NUMERIC(10,2), Vsoma NUMERIC(10,2) );  

SELECT id, media, Vmin, Vmax, Vsoma  FROM despesas;


INSERT INTO despesas(id, media, Vmin, Vmax, Vsoma) 
VALUE (1 ,  1550.0,   1000.0,   2000.0,  9300 );   


-- alterar um valores errados na tabela   
SELECT id, salario, nome, apelido FROM trabalho; 

UPDATE trabalho
SET trabalho.id = 5, trabalho.salario = 1450
WHERE trabalho.nome = 'Rui' AND Trabalho.apelido = 'Alves';

SELECT id, salario, nome, apelido FROM trabalho 
WHERE trabalho.nome = 'Rui' AND Trabalho.apelido = 'Alves';

-- Alterar tabela e adicionar a Idade dos trabalhadores

ALTER TABLE trabalho
ADD idade INT;

SELECT nome, apelido, idade FROM trabalho; -- verificar que estam la apenas valores nulos 

UPDATE trabalho
SET idade = 38 
WHERE id  in (1,3)

UPDATE trabalho
SET idade = 45 
WHERE id  in (5,2)

UPDATE trabalho
SET idade = 42 
WHERE nome Like 'Ped%'
SELECT nome, apelido, idade, salario FROM trabalho; 
