#Victor Hugo da Silva

#Parte 1
create database if not exists banco;
create database Victor_Hugo1;
use Victor_Hugo1;
drop database Victor_Hugo1;

#Parte 2
create database Victor_Hugo1;
use Victor_Hugo1;

create table Funcionarios(
codigo int auto_increment,
nome varchar(60) NOT NULL,
depto char (30),
funcao char(60) NOT NULL,
salario decimal(10,2),
primary key(codigo)
);
drop table Funcionarios;
describe Funcionarios;

#Parte 3
INSERT INTO Funcionarios
(nome, depto, funcao, salario)
values('Victor Hugo', 'Hospital', 'Medico', 7000.00),
('Charlote', 'Hospital', 'atendende', 2200.00),
('Gustavo', 'Hospital', 'Diretor', 3000.00),
('João Pedro', 'Hospital', 'psiquiatra', 8000.00),
('Fabricio', 'Hospital', 'secretaria', 2500.00),
('Maria Eduarda', 'Hospital', 'Cirurgião', 15000.00),
('Laura', 'Hospital', 'dentista', 5000.00),
('Valentina', 'Hospital', 'cozinheira', 2000.00),
('Nicole', 'Hospital', 'Faxineira', 1800.00),
('Bruno', 'Hospital', 'Pediatra', 7800.00);
select * from Funcionarios;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/empresa.CSV'
into table Funcionarios
fields terminated by ','
lines terminated by '\n'
(nome, depto, funcao, salario) SET codigo = NULL;

select nome, depto, funcao, salario from Funcionarios where salario <= 1200;

#Parte 4
select nome,funcao from Funcionarios;
select nome,funcao from Funcionarios order by nome;
select nome,funcao from Funcionarios order by nome desc;
select salario from Funcionarios;
select nome,salario from Funcionarios order by salario desc;
select nome,salario from Funcionarios order by salario asc;
select nome,funcao from Funcionarios order by salario desc;
select nome, depto, funcao, salario from Funcionarios where codigo=256;
select nome, funcao, salario from Funcionarios where salario >= 5000 order by salario;
select nome, funcao, salario from Funcionarios where salario <= 10000 order by salario desc;
select nome from Funcionarios where salario between 5000 and 7000 order by salario;

#Parte 5
set SQL_SAFE_UPDATES=0;

update funcionarios set salario = 5000 where funcao = 'Medico';
update funcionarios set nome = 'livia' where codigo = 512;
update funcionarios set funcao = 'Executivo' where salario >=25000;
update funcionarios set funcao = 'Estagiario' where salario <=1212;
update funcionarios set salario = (salario)* 1.10 where salario between 2500 and 5000;

#Parte 6 

delete from funcionarios where codigo = 128;
delete from funcionarios where nome = 'Pryce Mabley';
delete from funcionarios where salario <= 100;

#Parte 7

alter table funcionarios add nascimento DATE NOT NULL;
update funcionarios set nascimento = '2000-01-01' where nome = 'Victor Hugo';
update funcionarios set nascimento = '2004-04-04' where nome = 'Charlote';
update funcionarios set nascimento = '2006-06-06' where nome = 'Gustavo';
update funcionarios set nascimento = '2005-05-05' where nome = 'João Pedro';
update funcionarios set nascimento = '2007-07-07' where nome = 'Fabricio';
update funcionarios set nascimento = '2008-08-08' where nome = 'Maria Eduarda';
update funcionarios set nascimento = '2009-09-09' where nome = 'Laura';
update funcionarios set nascimento = '2002-02-02' where nome = 'Valentina';
update funcionarios set nascimento = '2001-01-01' where nome = 'Nicole';
update funcionarios set nascimento = '2003-03-03' where nome = 'Bruno';

alter table funcionarios add admissao DATE NOT NULL;
update funcionarios set admissao = '2020-01-01' where nome = 'Victor Hugo';
update funcionarios set admissao = '2024-04-04' where nome = 'Charlote';
update funcionarios set admissao = '2023-06-06' where nome = 'Gustavo';
update funcionarios set admissao = '2021-05-05' where nome = 'João Pedro';
update funcionarios set admissao = '2022-07-07' where nome = 'Fabricio';

INSERT INTO Funcionarios
(nome, depto, funcao, salario,nascimento,admissao)
values('xandão', 'Senai', 'Professor', 7000.00, '2003-03-03', '2022-07-07');
