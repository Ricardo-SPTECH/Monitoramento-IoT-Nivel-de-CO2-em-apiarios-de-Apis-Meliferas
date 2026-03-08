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
CO2_Porcentagem int not null, 
Nível_CO2 varchar (50) not null,
constraint chkCO2 check (Nível_CO2 in ('baixo', 'médio','crítico'))
);

nsert into Login (Nome,Email,Senha)
values ('Yasmin','yasmin.nascimento@sptech.school','Urubu100'),
('Maria','maria.bispo@sptech.school','Urubu100'),
('Thabata Vitoria','thabata.sousa@sptech.school','Urubu100'),
 ('Maria Clara Minomo','maria.azevedo@sptech.school','Urubu100'),
('Marcelo Carlos','Maria.carvalho@sptech.school','Urubu100'),
('Ricardo','ricardo.inoue@sptech.school', 'Urubu100');

insert into monitoramento (Apecuario,CO2_Porcentagem,Nível_CO2)
values (1,9,'baixo'),
(2,18, 'médio'),
(3,25, 'crítico'),
(4,21, 'médio'),
(5,26, 'crítico');


select * from Login;

select * from monitoramento;

select nome, email from Login;

select Apecuario, Nível_CO2 from monitoramento;

select * from login
where nome like '%B%';

select * from login 
where nome like 'M%';

select * from login 
where nome like '%S';

select * from login 
where nome like 'R%';

select * from login 
where nome not like '%A%';

select * from monitoramento
where Nível_CO2 = 'crítico';

select * from monitoramento
where Nível_CO2 = 'médio';

select * from monitoramento
where Nível_CO2 = 'baixo';

select email,
concat (' O usuário é ', nome,  ' e a senha é: ', senha) as Cadastro
from Login;

select *,
case when Nível_CO2 = 'crítico' 
then concat ('A colmeia ', Apecuario, ' está em nível ', Nível_CO2, ' e exige atenção imediata ' ) 
when Nível_CO2 = 'médio' 
then concat ('A colmeia ', Apecuario, ' está em nível ', Nível_CO2, ' verifique a colmeia ')
else ('Essa Colmeia está controlada')
end  as nível_atenção
from monitoramento;

alter table monitoramento
modify column Apecuario int not null;

alter table monitoramento
add column id int not null primary key;

update monitoramento
set id = 1
where apecuario = 1;




