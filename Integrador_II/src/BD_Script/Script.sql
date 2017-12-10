create database ProyectoIntegrador_II;


use ProyectoIntegrador_II;


create table paises (
  codigo_pais char(2) NOT NULL,
  nombre_pais varchar(100) NOT NULL,
  PRIMARY KEY (codigo_pais)
);

INSERT INTO paises VALUES

('AU', 'Australia'),
('CN', 'China'),
('TH', 'Thailand'),
('IN', 'India'),
('MY', 'Malaysia'),
('PH', 'Philippines'),
('VN', 'Vietnam'),
('IT', 'Italy'),
('GR', 'Greece'),
('ES', 'Spain'),
('MX', 'Mexico'),
('BR', 'Brazil'),
('PE', 'Peru'),
('CU', 'Cuba'),
('IR', 'Iran'),
('JP','Japon');


select * from paises where codigo_pais='PE';


create table ciudades (
  id_ciudades int not null primary key auto_increment,
  codigo_pais varchar(2) ,
  nombre_ciudad varchar(50) NOT NULL,
      
  foreign key (codigo_pais) references paises(codigo_pais)
);
 
insert into ciudades values(null,'IT', 'roma');
insert into ciudades values(null,'IT', 'sicilia');
insert into ciudades values(null,'IT', 'roma');
insert into ciudades values(null,'PE', 'Lima');
insert into ciudades values(null,'PE', 'Arequipa');
insert into ciudades values(null,'PE', 'Cusco');
insert into ciudades values(null,'CU', 'Habana');
insert into ciudades values(null,'CU', 'Varadero');
insert into ciudades values(null,'CU', 'Cienfuegos');
insert into ciudades values(null,'AU', 'Australia');
insert into ciudades values(null,'AU', 'australia 2');
insert into ciudades values(null,'AU', 'australia 3');
insert into ciudades values(null,'CN', 'shangai');
insert into ciudades values(null,'CN', 'taipe');
insert into ciudades values(null,'CN', 'ciudad amarrila');
insert into ciudades values(null,'JP', 'tokio');
insert into ciudades values(null,'JP', 'kioto');
insert into ciudades values(null,'JP', 'nagasaki');
insert into ciudades values(null,'TH', 'tailandia');
insert into ciudades values(null,'TH', 'tailandia 2');
insert into ciudades values(null,'TH', 'tailandia 5');
insert into ciudades values(null,'IN', 'bagladesh ');
insert into ciudades values(null,'IN', 'vaglis');
insert into ciudades values(null,'IN', 'ponpein');
insert into ciudades values(null,'PH', 'Habana');
insert into ciudades values(null,'PH', 'Varadero');
insert into ciudades values(null,'PH', 'Cienfuegos');
insert into ciudades values(null,'GR', 'Australia');
insert into ciudades values(null,'GR', 'australia 2');
insert into ciudades values(null,'GR', 'australia 3');
insert into ciudades values(null,'VN', 'ciudad e  venesuela');
insert into ciudades values(null,'VN', 'maracaibo');
insert into ciudades values(null,'VN', 'evenesuela');
insert into ciudades values(null,'MX', 'tegusigalpa');
insert into ciudades values(null,'MX', 'ciudad de mexico');
insert into ciudades values(null,'MX', 'colos');
insert into ciudades values(null,'GR', 'neuvacelanda');
insert into ciudades values(null,'GR', 'nueva Zelanda2');
insert into ciudades values(null,'GR', 'bosnia 5');
insert into ciudades values(null,'MY', 'neuvacelanda');
insert into ciudades values(null,'MY', 'nueva Zelanda2');
insert into ciudades values(null,'MY', 'bosnia 5');
insert into ciudades values(null,'BR', 'neuvacelanda');
insert into ciudades values(null,'BR', 'nueva Zelanda2');
insert into ciudades values(null,'BR', 'bosnia 5');
insert into ciudades values(null,'ES', 'barcelona');
insert into ciudades values(null,'ES', 'Ciudad vieja de madrid');
insert into ciudades values(null,'ES', 'madrid');


select nombre_ciudad from ciudades where codigo_pais='PE';


select * from paises order by nombre_pais asc;

create table tipo_documento(
codigo_doc varchar(2) not null,
tipo_doc varchar(50) not null,
primary key(codigo_doc)
);

insert into tipo_documento values('D1', 'DNI'), ('D2','CE'), ('D3','RUC'),('D4', 'Pasaporte');

create table usuarios(
id_usuario int not null primary key auto_increment,
nom_usuario varchar(50) not null,
ape_usuario varchar(50) not null,
fecha_nac date not null,
correo_usuario varchar(50) not null,
pass_usuario varchar(50) not null,
codigo_pais varchar(2) NOT NULL,
codigo_doc varchar(2) not null,
num_doc varchar(20) not null,
admin bit not null default 0,
bloqueado bit not null default 0,
num_intentos int not null default 3,
check(admin in(0,1)),
check(bloqueado in(0,1)),
check (num_intentos>0),
foreign key (codigo_pais) references paises(codigo_pais),
foreign key (codigo_doc) references tipo_documento(codigo_doc)
);

insert into usuarios values(null,'Marcelo', 'Sbrollini', '1997-10-06','admin@hotmail.com', 'adminMarcelo', 'PE', 'D1','72628132',1,0,3);
insert into usuarios values(null,'admin', 'administrator', '1000-10-06','1@1.1', '1234', 'PE', 'D1','12345678',1,0,3);
insert into usuarios(id_usuario, nom_usuario, ape_usuario, fecha_nac, correo_usuario, pass_usuario, codigo_pais, codigo_doc, num_doc) values (null,'aaaa', 'bbbb', '2017-10-27','cccc@dddd.com', 'abc', 'PE', 'D1','12345678');

select * from usuarios;


create table paqueteVuelo(
cod_vuelo char(5) not null primary key,
origen varchar(30) not null,
destino varchar(30) not null,
hora_salida varchar(10) not null,
hora_llegada varchar(10) not null,
tipo_vuelo varchar(50) not null,
precio double not null,
num_asientos int not null
);


-- Procedimiento Almacenado : ListarPaquetes
create procedure listarPaquetes()
select * from paqueteVuelo;

call listarPaquetes;

-- Procedimiento Almacenado : InsertarPaquetes
create procedure InsertarPaquetes(cod_vuelo char(5),origen varchar(30),destino varchar(30),hora_salida varchar(10),hora_llegada varchar(10),
tipo_vuelo varchar(50),precio double,num_asientos int)
 insert into paqueteVuelo values (cod_vuelo, origen, destino, hora_salida, hora_llegada, tipo_vuelo, precio, num_asientos);
 
 
call InsertarPaquetes('V0001','Lima','Bogotá','20:00','23:45','Economy',1200.0,150);

call InsertarPaquetes('V0002','Lima','Quito','23:00','00:00','Premiun Economy',1200.0,150);





select * from usuarios where correo_usuario = 'admin@hotmail.com' && pass_usuario='adminMarcelo';


create table Tipo_Pasaje(
id_tipo_p int not null primary key auto_increment,
nombre_p varchar(20) not null
);

insert into Tipo_Pasaje (id_tipo_p,nombre_p)values(null,'Economico');
insert into Tipo_Pasaje (id_tipo_p,nombre_p)values(null,'Vip');
insert into Tipo_Pasaje (id_tipo_p,nombre_p)values(null,'Media');



CREATE TABLE `reservar_vuelo` (
  `id_reserva_r` int NOT NULL AUTO_INCREMENT,
  `num_doc` varchar(9) NOT NULL,
  `nom_pasajero_r` varchar(20) NOT NULL,
  `tipo_pasaje_r` varchar(15) NOT NULL,
  `fecha_salida_r` date NOT NULL,
  `codigo_pais_r` varchar(20) NOT NULL,
  `ciudad_origen_r` varchar(20) NOT NULL,
  `precio` double DEFAULT '0.2',
  `asientos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reserva_r`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

insert into Reservar_Vuelo values(null,'11111111', 'pasajero1', 'Economico', '1000-10-06','PE','Lima', 1500,1);


select * from Reservar_Vuelo;




create table comprar_pasajes(
id_pasajes_c int not null primary key auto_increment,
id_reserva_r int (11) null default 0,
cod_vuelo varchar(30) ,
tipo_pasaje_r varchar(20),
codigo_pais varchar(2) NOT NULL,
destino_c varchar(50) not null,
fecha_salida_c date not null,
num_doc varchar(20) null,
precio double  null default 0.2,
num_asientos int,
foreign key (cod_vuelo) references paqueteVuelo(cod_vuelo)
);

insert into comprar_pasajes values(null,1,'V0001', 'vip', 'PE','lima', '1017-10-01', '43924578',20,3);
insert into comprar_pasajes values(null,1,'V0001', 'vip', 'PE','lima', '1017-10-01', '43924578',20,3);

insert into comprar_pasajes values(null,null,'V0001', 'vip', 'PE','lima', '1017-10-01', '43924578',20,3);


select *  from comprar_pasajes;





create table cotizar(
id_cotizar int not null primary key auto_increment,
origen_c varchar(50) not null,
destino_c varchar(50) not null,
fecha_ida_c date not null,
fecha_salida_c date not null,
hora_s_c varchar(50) not null,
hora_ll_c varchar(50) not null,
id_tipo_p_c int not null references Tipo_Pasaje,
precio_c int NOT NULL

);


insert into cotizar values(null,'Lima', 'Cusco', '1997-10-06', '1904-11-05','10:10', '17:20', 1,3050);
insert into cotizar values(null,'Lima', 'Tacna', '1991-11-05', '1914-11-05','10:10', '17:20', 2,3050);

insert into cotizar(id_cotizar, origen_c, destino_c, fecha_ida_c, fecha_salida_c, hora_s_c, hora_ll_c, id_tipo_p_c, precio_c) values (null,'Cusco', 'Tacna', '1991-11-05', '1914-11-05','10:10', '17:20', 2,2050);

select * from cotizar;
select count(*) from cotizar;