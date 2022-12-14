drop database dbCasadeApostas;

create database dbCasadeApostas;

use dbCasadeApostas;


create table tbusuarios(
codUsu int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codusu));


create table tbjogadores(
codJog int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
primary key(codJog));

create table tbtimes(
codtime int not null auto_increment,
nome varchar(100),
localidade varchar(100),
serie char(1),
codjog int not null,
primary key (codTime),
foreign key(codJog)references tbjogadores(codJog));


create table tbApostas(
codApt int not null auto_increment,
codTime int not null,
data date,
hora time,
valor decimal(9,2) default 0 check(valor > 0),
codusu int not null,
primary key(codApt),
foreign key(codTime)references tbTimes(codtime),
foreign key(codUsu)references tbUsuarios(codusu));

-- inserindo registros nas Tabelas

insert into tbusuarios(nome,email,cpf)
	values('Alemao Vice','alemao.vice@hotmail.com','254.323.311.55');


insert into tbjogadores(nome,email,cpf)
values( 'Edson Arantes do Nascimento','edson.anascimento@hotmail.com','325.215.254.22');

insert into tbtimes(nome,localidade,serie,codJog)
values ('Vasco FC','vasco-Rj','A',1);

insert into tbApostas(codTime,data,hora,valor,codUsu)
values(1,'2022-11-28','11:14:00',5.00,1);

insert into tbjogadores(nome,email,cpf)
values( 'Paulo Henrique','paulo.henrique@hotmail.com','545.215.254.42');

insert into tbtimes(nome,localidade,serie,codJog)
values ('Corinthians','Diadema-SP','A',2);

insert into tbtimes(nome,localidade,serie,codJog)
values ('Barcelona','Madri-ESP','A',3);

insert into tbjogadores(nome,email,cpf)
values( 'Marcos Lima','marcos.lima@hotmail.com','355.215.294.82');



-- visualizando a Estruturas das Tabelas 

desc tbusuarios;
desc tbjogadores;
desc tbTimes;
desc tbApostas;

-- visualizando registros das tabelas

select * from tbusuarios;
select * from tbjogadores;
select * from tbTimes;
select * from tbApostas;

