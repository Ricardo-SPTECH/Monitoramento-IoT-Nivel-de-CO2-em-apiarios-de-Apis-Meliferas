create database BeeComes;
use BeeComes;

create table Login (
id int not null primary key auto_increment,
Nome varchar (50) not null,
Email varchar (100) not null unique,
Senha varchar (12)
);

create table monitoramento (
Apecuario int not null primary key,
CO2 int not null,
Nível_CO2 varchar (50) not null,
constraint chkCO2 check (Nível_CO2 in ('baixo', 'médio','crítico'))
);

insert into Login (Nome,Email,Senha)
values ('Yasmin','yasmin.nascimento@sptech.school','Urubu100'),
('Maria','Maria.Bispo@sptech.school','Urubu100');

insert into monitoramento (Apecuario,CO2,Nível_CO2)
values (1,1,'baixo');

select * from Login;


select * from monitoramento;

alter table monitoramento
modify column Apecuario int not null;

alter table monitoramento
add column id int not null primary key;

update monitoramento
set id = 1
where apecuario = 1;

insert into monitoramento (id,Apecuario,CO2,Nível_CO2)
values (2,1,1,'crítico');

select * from monitoramento;



