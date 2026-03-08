create database bee_comes;
use bee_comes;
create table pessoas (
Usuario varchar(40) primary key,
senha varchar(40),
email varchar(50)
);

create table apiarios (
Usuario varchar(40),
id_apiario int primary key,
qtd_apiarios int
);

create table colmeias (
id_apiario int,
id_colmeia int primary key,
qtd_colmeia int
);

create table sensor(
id_colmeia int,
qtd_co2_ppm int
);

alter table sensor
modify column id_colmeia int primary key;

insert into pessoas
values('mario27','Ma6767','mariofgg@gmail.com'),
('lalaport99','6220PIqq','laurafer@gmail.com'),
('lipe232','PL2Lima','felipeaug@gmail.com');

alter table apiarios
drop column qtd_apiarios;

alter table colmeias
drop column qtd_colmeia;

insert into apiarios
values('mario27','1'),
('mario27','4'),
('lipe232','2'),
('lalaport99','3');

insert into colmeias
values('1','1'),
('1','2'),
('4', '3'),
('2','4');


insert into sensor
values('1', '5000'),
('2','4000'),
('3','4200'),
('4','3000');

select * from sensor;

select id_colmeia, qtd_co2_ppm, concat(qtd_co2_ppm / 1000 , '%') as porcentagem from sensor;




