create database beecomes;

use beecomes;

drop table cadastro;

create table cadastro (
idCliente int primary key auto_increment,
nomeCliente varchar (80) not null,
nomeEmpresa varchar (40) not null,
cpfCliente  char(11) not null,
CnpjCliente char (14) not null,
email varchar(40) not null,
Notificações varchar (10)  default 'Sim',

unique ix_cpf(cpfCliente),
unique ix_cnpj(cnpjCliente),

c

);

desc cadastro;

insert into cadastro (nomeCliente, nomeEmpresa, cpfCliente, cnpjCliente, email, Notificações)
values 
('Airton', 'HoneyA', 12345678900, 98765432100000, 'Honeya$@gmail.com', 'Sim'),
('Benedita', 'HoneyComes', 12345678901, 98765432100001, 'HoneyC0mes@gmail.com', 'Não'),
('Carlota', 'Mel Doce', 12345678902, 9876543210002, 'MelD0ce@gmail.com', 'Não'),
('Daniel', 'Doce Pólen', 12345678903, 98765432100003, 'docepolen@gmail.com', 'Sim'),
('Eliana', 'Ecomel Tech', 12345678904, 98765432100004, 'ecomel.tech@gmail.com', 'Não'),
('Fabrício', 'Flor de Mel', 12345678905, 98765432100005, 'flordemel@gmail.com', 'Sim'),
('Gisele', 'Golden Nectar', 12345678906, 98765432100006, 'goldennectar@gmail.com', 'Não'),
('Heleno', 'Honey IoT', 12345678907, 98765432100007, 'honeyiot@gmail.com', 'Sim'),
('Iara', 'Imperial Honey', 12345678908, 98765432100008, 'imperialhoney@gmail.com', 'Sim'),
('Jonas', 'Jardim do Mel', 12345678909, 98765432100009, 'jardimdomel@gmail.com', 'Não'),
('Kátia', 'K-Mel Distribuidores', 12345678910, 98765432100010, 'kmel@gmail.com', 'Sim'),
('Leonardo', 'Lume Colmeias', 12345678911, 98765432100011, 'lumecolmeias@gmail.com', 'Não'),
('Mirela', 'Mel Puro Bio', 12345678912, 98765432100012, 'melpurobio@gmail.com', 'Sim'),
('Nivaldo', 'Néctar Nativo', 12345678913, 98765432100013, 'nectarnativo@gmail.com', 'Não'),
('Otávio', 'Ouro de Abelha', 12345678914, 98765432100014, 'ourodeabelha@gmail.com', 'Sim'),
('Patrícia', 'Pólen Premium', 12345678915, 98765432100015, 'polenpremium@gmail.com', 'Sim'),
('Queiroz', 'Quintal do Mel', 12345678916, 98765432100016, 'quintaldomel@gmail.com', 'Não'),
('Renata', 'Real Royal Jelly', 12345678917, 98765432100017, 'realroyal@gmail.com', 'Sim'),
('Sérgio', 'Solar Mel', 12345678918, 98765432100018, 'solarmel@gmail.com', 'Não'),
('Tânia', 'Terra das Abelhas', 12345678919, 98765432100019, 'terraabelhas@gmail.com', 'Sim'),
('Uriel', 'Urbano Mel', 12345678920, 98765432100020, 'urbanomel@gmail.com', 'Não'),
('Vitor', 'Vale do Néctar', 12345678921, 98765432100021, 'valenectar@gmail.com', 'Sim'),
('Wagner', 'WebHoney Solutions', 12345678922, 98765432100022, 'webhoney@gmail.com', 'Não'),
('Xavier', 'Xapuri Mel', 12345678923, 98765432100023, 'xapurimel@gmail.com', 'Sim'),
('Yuri', 'Ypê Melarias', 12345678924, 98765432100024, 'ypemelarias@gmail.com', 'Não'),
('Zilda', 'Zênite Apicultura', 12345678925, 98765432100025, 'zeniteapi@gmail.com', 'Sim');
       
       #SELECT 
       
             select * from cadastro;
       
	# Apenas nomes: Selecionar apenas o nome de todos os clientes cadastrados.
       select nomeCliente from cadastro;
       
	# Quem quer receber avisos: Listar todos os dados de quem marcou 'Sim'
       select * from cadastro 
       where Notificações like 'Sim';
       
	# Quem não quer avisos: Listar apenas o nome e o e-mail de quem marcou 'Não'.
       select nomeCliente, email from cadastro
       where Notificações = 'Não';
       
       # Empresa específica: Buscar todos os dados da empresa 'Mel Doce'.
       select * from cadastro
       where nomeEmpresa = 'Mel Doce';
       
	# Busca por CPF: Localizar um cliente específico através de um número de CPF
       select * from cadastro 
       where cpfCliente = 12345678900;
       
	# E-mails do Gmail: Selecionar clientes cujo e-mail termine com @gmail.com.
       select * from cadastro 
       where email like '%@gmail.com';
       
	# Busca parcial de empresa: Listar empresas que tenham a palavra 'Honey' no nome.
       select * from cadastro 
       where nomeEmpresa like '%Honey%';
       
	# Iniciais: Clientes cujo nome começa com a letra 'A'.
       select * from cadastro 
       where nomeCliente like 'A%';
       
	# Terminação de nome: Clientes cujo nome termina com 'a'
       select * from cadastro 
       where nomeCliente like '%_a';
       
	# Ordem Alfabética: Listar todos os clientes ordenados de A a Z.
		select * from cadastro 
		order by nomeCliente asc;
        
	# Ordem Inversa: Listar as empresas de Z a A.
		select * from cadastro 
        order by nomeCliente desc;
        
	# Os primeiros da lista: Selecionar apenas os 5 primeiros registros da tabela.
		select * from cadastro 
        where idCliente >= 1 and idCliente <= 5;
        
	# Os últimos IDs: Selecionar os 3 últimos clientes cadastrados
		select * from cadastro 
        where idCliente <= 26 and idCliente >= 23;
        
	# Total de clientes: Contar quantos clientes existem no total na tabela.
		select count(*) as 'Total Clientes' 
        from cadastro;
        
	# Contagem por preferência: Contar quantos clientes aceitam notificações e quantos não aceitam
		select count(*) as 'Sem Notificação' 
        from cadastro
        where Notificações like 'Não';
        
	# Verificar duplicatas: Contar quantas vezes cada CPF aparece (para garantir que não houve erro de repetição).
		select cpfCliente, count(cpfCliente) as 'Verificação CPF'
		from cadastro group by cpfCliente;
    
    # Identificação rápida: Selecionar o idCliente e o nomeCliente concatenados (ex: "1 - Airton").
		select concat(idCliente, '-'  ,NomeCliente) 
        as 'info Cliente' from cadastro;
    
    # Filtro de CNPJ longo: Selecionar empresas onde o CNPJ tenha mais de 13 dígitos.
		select nomeEmpresa, CnpjCliente from cadastro
        where length(cnpjCliente) > 13;
        
	# Uma lista que mostre o nome do cliente e a empresa, mas apenas para quem possui e-mail com caracteres especiais. ($)
		select nomeCliente, nomeEmpresa from cadastro 
        where email like '%$%';
        
        alter table clientes 
        rename column cnpjCliente to cnpjEmpresa;
        
        
        create table cadastro (
        idCliente int not null primary key auto_increment,
        nomeUsuario varchar(40) not null,
        email varchar(40) not null,
        senha varchar(08) not null,
        
        unique ix_senha(senha)
        
        );
        
        desc cadastro;
        
        alter table cadastro
        modify column senha varchar(10);
        
        
insert into cadastro (nomeUsuario, senha, email)
values 
('honeya', 'HnyA#123', 'Honeya$@gmail.com'),
('honeycomes', 'HnyC!987', 'HoneyC0mes@gmail.com'),
('meldoce', 'MDoce*26', 'MelD0ce@gmail.com'),
('docepolen', 'Polen#26', 'docepolen@gmail.com'),
('ecomeltech', 'EcoT*885', 'ecomel.tech@gmail.com'),
('flordemel', 'Flor@774', 'flordemel@gmail.com'),
('goldennectar', 'Gold!Nct', 'goldennectar@gmail.com'),
('honeyiot', 'HIoT#202', 'honeyiot@gmail.com'),
('imperialhoney', 'Imp@Hney', 'imperialhoney@gmail.com'),
('jardimdomel', 'Jard#Mel', 'jardimdomel@gmail.com'),
('kmeldistribuidores', 'KMel_D26', 'kmel@gmail.com'),
('lumecolmeias', 'Lume*Col', 'lumecolmeias@gmail.com'),
('melpurobio', 'BioP#998', 'melpurobio@gmail.com'),
('nectarnativo', 'Nativ@26', 'nectarnativo@gmail.com'),
('ourodeabelha', 'Ouro#Bee', 'ourodeabelha@gmail.com'),
('polenpremium', 'Prem$Pol', 'polenpremium@gmail.com'),
('quintaldomel', 'Quint*Mel', 'quintaldomel@gmail.com'),
('realroyaljelly', 'Royal*Jl', 'realroyal@gmail.com'),
('solarmel', 'Solar#M1', 'solarmel@gmail.com'),
('terradasabelhas', 'Terra$Ab', 'terraabelhas@gmail.com'),
('urbanomel', 'Urbano#M', 'urbanomel@gmail.com'),
('valedonectar', 'Vale$Nct', 'valenectar@gmail.com'),
('webhoneysolutions', 'WebH#Sol', 'webhoney@gmail.com'),
('xapurimel', 'Xapuri#M', 'xapurimel@gmail.com'),
('ypemelarias', 'Ype*Mel3', 'ypemelarias@gmail.com'),
('zeniteapicultura', 'Zenit*Ap', 'zeniteapi@gmail.com');
        
          #SELECT 
       
             select * from cadastro;
			
		# Domínios Diferentes: Selecionar todos os clientes que não usam @gmail.com
			select * from cadastro 
            where email not like '%@gmail.com%';
            
		# Senhas Curtas: Selecionar usuários que tenham exatamente 8 caracteres na senha.
             select nomeUsuario from cadastro
             where length(senha) = 8;
		
        # Senhas Fracas: Buscar usuários que usam a palavra '123' em qualquer parte da senha.
			select * from cadastro 
            where senha like '%123%';
            
		# Início de Senha: Listar quem começa a senha com a letra 'H'.
			select * from cadastro 
            where senha like 'H%';
            
		# Senhas com Caractere Especial: Filtrar usuários que possuem o símbolo # na senha.
			select * from cadastro 
            where senha like '%#%';
		
        # Senhas Numéricas: Tentar localizar senhas que terminam com o ano '26'.
			Select * from cadastro 
            where senha like '%_26';
            
		# Usuários Curtos: Listar nomes de usuário que tenham menos de 8 caracteres.
			Select * from cadastro 
            where length(nomeUsuario) < 8;
            
		# Usuários de Tecnologia: Buscar logins que contenham os termos 'tech' ou 'solutions'.
			Select * from cadastro 
            where nomeUsuario like 'tech' and nomeUsuario like 'solutions';
            
		# Busca por Sufixo: Listar usuários que terminam com a palavra 'mel'.
			Select * from cadastro 
            where nomeUsuario like '%_mel';
            
		# Usuários com Ponto ou Underscore: Localizar logins que usam caracteres de separação.
			Select * from cadastro 
            where nomeUsuario like '%-%';
            
		# Listar os 3 últimos logins criados
			 select * from cadastro 
             where idCliente > 23;
             
		Create table ApiariosCo2(
        idApiario int primary key auto_increment not null,
        nmColmeias int not null,
        nivelCo2 varchar (10) not null,
        acaoApicultor varchar(40),
        
        constraint chkacoes check (acaoApicultor in ('Iniciada', 'Pendente', 'Sobre controle'))
        
        );
        
        desc ApiariosCo2;
        
        rename table ApiariosCo2 to apiariosCo2;
        
        
insert into apiariosCo2 (nmColmeias, nivelCo2, acaoApicultor)
values
(10, '450ppm', 'Sobre controle'),
(5, '1200ppm', 'Pendente'),
(20, '800ppm', 'Iniciada'),
(40, '400ppm', 'Sobre controle'),
(60, '1500ppm', 'Pendente'),
(20, '950ppm', 'Iniciada'),
(10, '500ppm', 'Sobre controle'),
(100, '2000ppm', 'Pendente'),
(50, '1100ppm', 'Iniciada'),
(90, '420ppm', 'Sobre controle');


 # SELECTS
 
		select * from apiariosCo2;
        
 alter table apiariosCo2 auto_increment = 100;       
        
alter table apiariosCo2 add column idCliente int;


update apiariosCo2
set idCliente = 1 where idApiario = 100;

update apiariosCo2
set idCliente = 2 where idApiario = 101;

update apiariosCo2
set idCliente = 3 where idApiario = 102;

update apiariosCo2
set idCliente = 4 where idApiario = 103;

update apiariosCo2
set idCliente = 5 where idApiario = 104;   
 
update apiariosCo2
set idCliente = 6 where idApiario = 105;  

update apiariosCo2
set idCliente = 7 where idApiario = 106;  

update apiariosCo2
set idCliente = 8 where idApiario = 107;

update apiariosCo2
set idCliente = 9 where idApiario = 108;

update apiariosCo2
set idCliente = 10 where idApiario = 109;
        

# Leituras de um Cliente Específico: Selecionar todas as colmeias e níveis de CO2 que pertencem ao
select nivelCo2, idApiario from apiariosCo2 
where idCliente = 1;

# O Filtro de Alerta: selecionar apenas as colmeias onde o nível de CO2 é exatamente '1500ppm'
select idApiario, idCliente, nivelCo2 from apiariosCo2
where nivelCo2 = '1500ppm';

# O Dono das Colmeias: todos os dados que pertencem apenas ao idCliente número 3
select * from apiariosCo2
where idCliente = 3;

# A Lista de Pendências: mostrar apenas as colmeias que estão com a acaoApicultor como 'Pendente'
select * from apiariosCo2 
where acaoApicultor like 'Pendente';

# Contagem por Dono: contar quantas apiarios o idCliente número 1 possui registrados
select  count(*) as 'quantos apiarios registrados' from apiariosCo2
where idCliente = 1;

# Contagem por Dono: contar quantas apiarios o idCliente número 8 possui registrados
select nmColmeias as 'Colmeias registradas' from apiariosCo2
where idCliente = 8;

# A União de Textos: Uma coluna chamada "Status_Geral" que mostre o nmColmeias e a acaoApicultor separados por um " - "
select nmColmeias, acaoApicultor, 
concat(nmColmeias, '-', acaoApicultor) as 'Status_Geral'
from apiariosCo2;

# O Ranking de CO2: ordenar a tabela para que as colmeias com o maior nivelCo2 apareçam primeiro na lista
select idApiario, nivelCo2 from apiariosCo2
order by nivelCo2 asc;

# Busca por Intervalo: selecionar as colmeias que têm o número (nmColmeias) entre 100 e 150
select * from apiariosCo2
where nmColmeias >= 100 and nmColmeias <= 105;

# Diferente de Controle:selecionar todas as linhas, exceto aquelas que já estão com o status 'Sobre controle'
select * from apiariosCo2 
where acaoApicultor not like 'Sobre controle';

# Os IDs Ativos: listar todos os idCliente que aparecem nessa tabela, mas sem repetir os números;
select idCliente from apiariosCo2 
order by idCliente asc;
