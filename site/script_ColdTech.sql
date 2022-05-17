create database coldtech;

use coldtech;


create table empresa
(idempresa int primary key auto_increment,
cnpj varchar (20),
nomeEmpresa varchar (45),
telefoneFixo varchar(45),
telefoneCel varchar(45),
cep varchar(45),
numero varchar (45));


create table usuario
(idusuario int primary key auto_increment,
nome varchar(45),
email varchar(45),
senha varchar (45),
fkEmpresa int,
foreign key (fkEmpresa) references empresa (idempresa));

create table caminhao
(idcaminhao int primary key auto_increment,
fkEmpresa int,
foreign key (fkEmpresa) references empresa (idempresa));

create table sensor
(idsensor int primary key auto_increment,
tipoSensor varchar (45),
fkcaminhao int,
foreign key (fkcaminhao) references caminhao (idcaminhao));

create table dado
(idDado int primary key auto_increment,
dadosTemp double,
dataHora datetime,
fksensor int,
foreign key (fksensor) references sensor (idsensor));

insert into usuario (nome,email,senha) values 
('João','joao@email.com','101521'),
('Vitoria','vitoria@email.com','312455'),
('Pedro','pedro@email.com','346784'),
('Josue','josue@gmail.com','212201'),
('Victor','victor@gmail.com','667122'),
('Roberto','roberto@email.com','141911');


insert into empresa (cnpj,nomeEmpresa,telefoneFixo,telefoneCel,cep,numero) values
('01020304050','techCarne','92365178','998732156','01387544','172'),
('01020378950','RoadCarne','92365178','998732156','01387544','72'),
('01123304050','Carne n Carne','92365178','998732156','01387544','992'),
('01028974050','Meat','92365178','998732156','01387544','782'),
('01443304050','Irmaos Carne','92365178','998732156','01387544','342'),
('01654304050','Niku Niku','92365178','998732156','01387544','512');


insert into caminhao (idcaminhao) values
(1),
(2),
(3),
(4),
(5),
(6);

insert into sensor (tipoSensor) values
('Lm35'),
('Lm35'),
('Lm35'),
('Lm35'),
('Lm35'),
('Lm35');

insert into dado (dadosTemp,datahora) values
('15.2','2022-01-01-13.51'),
('10.2','2022-10-29-14.00'),
('09.2','2022-11-25-06.01'),
('17.2','2022-02-11-9.11'),
('22.2','2022-05-10-10.31'),
('01.2','2022-08-15-16.21');

update caminhao set fkempresa = 3 where idcaminhao = 4;
update caminhao set fkempresa = 4 where idcaminhao = 1;
update caminhao set fkempresa = 6 where idcaminhao = 2;
update caminhao set fkempresa = 2 where idcaminhao = 5;
update caminhao set fkempresa = 1 where idcaminhao = 3;
update caminhao set fkempresa = 5 where idcaminhao = 6;

update usuario set fkEmpresa = 2 where idusuario = 4;
update usuario set fkEmpresa = 1 where idusuario = 6;
update usuario set fkEmpresa = 3 where idusuario = 2;
update usuario set fkEmpresa = 4 where idusuario = 1;
update usuario set fkEmpresa = 5 where idusuario = 3;
update usuario set fkEmpresa = 6 where idusuario = 5;


update sensor set fkcaminhao = 1 where idsensor =2;
update sensor set fkcaminhao = 5 where idsensor =6;
update sensor set fkcaminhao = 6 where idsensor =3;
update sensor set fkcaminhao = 2 where idsensor =5;
update sensor set fkcaminhao = 3 where idsensor =4;
update sensor set fkcaminhao = 4 where idsensor =1;



update dado set fksensor = 5 where idDado = 3;
update dado set fksensor = 6 where idDado = 2;
update dado set fksensor = 4 where idDado = 5;
update dado set fksensor = 2 where idDado = 1;
update dado set fksensor = 3 where idDado = 4;
update dado set fksensor = 1 where idDado = 6;


select * from usuario;
select * from empresa;
select * from caminhao;
select * from sensor;
select * from dado;

select * from usuario as pessoa
	join empresa on idempresa = fkempresa;
    
    
select * from empresa 
	join caminhao on idempresa = fkempresa;

select * from caminhao
	join empresa on idempresa = fkempresa;
    
select * from sensor
	join caminhao on idcaminhao = fkcaminhao;
    
select * from dado
	join sensor on idsensor = fksensor;

select * from sensor
	join caminhao on idcaminhao	= fkcaminhao
		join empresa on idempresa = fkempresa;
        
select * from usuario
	join empresa on idempresa = fkempresa;
        
SELECT * FROM sensor 
	join caminhao on caminhao.idcaminhao = sensor.fkcaminhao
	join empresa on empresa.idempresa = caminhao.fkempresa 
	JOIN usuario as pessoa on empresa.idempresa = pessoa.fkEmpresa;
    
SELECT * FROM dado
	join sensor on idsensor = fksensor
	join caminhao on caminhao.idcaminhao = sensor.fkcaminhao
	join empresa on empresa.idempresa = caminhao.fkempresa 
	JOIN usuario as pessoa on empresa.idempresa = pessoa.fkEmpresa;
    
SELECT * FROM dado
	join sensor on idsensor = fksensor
	join caminhao on caminhao.idcaminhao = sensor.fkcaminhao
	join empresa on empresa.idempresa = caminhao.fkempresa 
	JOIN usuario as pessoa on empresa.idempresa = pessoa.fkEmpresa where nome = 'joao';
    

select * from usuario
	join empresa on idempresa = fkempresa where idempresa like 3;
    
select * from empresa 
	join caminhao on idempresa = fkempresa like 6;
    
select avg(dadostemp)  from dado;




        