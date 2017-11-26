create database ProyectoIntegrador_II;

use ProyectoIntegrador_II;

create table paises (
  codigo_pais char(2) NOT NULL,
  nombre_pais varchar(100) NOT NULL,
  PRIMARY KEY (codigo_pais)
);

INSERT INTO paises VALUES
<<<<<<< HEAD
('AU', 'Australia'),
('CN', 'China'),
('JP', 'Japan'),
('TH', 'Thailand'),
('IN', 'India'),
('MY', 'Malaysia'),
('HK', 'Hong Kong'),
('TW', 'Taiwan'),
('PH', 'Philippines'),
('VN', 'Vietnam'),
('IT', 'Italy'),
('GR', 'Greece'),
('ES', 'Spain'),
('AT', 'Austria'),
('GB', 'United Kingdom'),
('NL', 'Netherlands'),
('AE', 'United Arab Emirates'),
('PT', 'Portugal'),
('US', 'United States'),
('MX', 'Mexico'),
('BR', 'Brazil'),
('LU', 'Luxembourg'),
('PA', 'Panama'),
('DO', 'Dominican Republic'),
('PR', 'Puerto Rico'),
('NZ', 'New Zealand'),
('SG', 'Singapore'),
('AR', 'Argentina'),
('ME', 'Montenegro'),
('PE', 'Peru'),
('CO', 'Colombia'),
('VE', 'Venezuela'),
('CL', 'Chile'),
('EC', 'Ecuador'),
('BO', 'Bolivia'),
('EG', 'Egypt'),
('MG', 'Madagascar'),
('CV', 'Cape Verde'),
('CR', 'Costa Rica'),
('JM', 'Jamaica'),
('GT', 'Guatemala'),
('AW', 'Aruba'),
('PY', 'Paraguay'),
('TT', 'Trinidad and Tobago'),
('AD', 'Andorra'),
('HT', 'Haiti'),
('SV', 'El Salvador'),
('HN', 'Honduras'),
('UY', 'Uruguay'),
('DM', 'Dominica'),
('NI', 'Nicaragua'),
('GY', 'Guyana'),
('CU', 'Cuba');
=======

('DK', 'Denmark'),
('IR', 'Iran'),
('US', 'United States'),
('MX', 'Mexico'),
('BR', 'Brazil'),
('DO', 'Dominican Republic'),
('HT', 'Haiti'),
('PE','Peru'),
('JP','Japon')
('FM', 'Micronesi'),
('SV', 'El Salvador'),
('HN', 'Honduras'),
('LA', 'Lao People''s Democratic Republic'),
('CU', 'Cuba'),
('ET', 'Ethiopia');
>>>>>>> 20272224edbb187f36802c616ccc6a683cecbc8e

select * from paises order by nombre_pais asc;


create table ciudades (
  id_ciudades int not null primary key auto_increment,
  codigo_pais varchar(2) ,
  nombre_ciudad varchar(50) NOT NULL,
      
  foreign key (codigo_pais) references paises(codigo_pais)
);

insert into ciudades values(null,'PE', 'Lima');
insert into ciudades values(null,'PE', 'Arequipa');
insert into ciudades values(null,'PE', 'Cusco');
insert into ciudades values(null,'CU', 'Habana');
insert into ciudades values(null,'CU', 'Varadero');
insert into ciudades values(null,'CU', 'Cienfuegos');
insert into ciudades values(null,'AU', 'Lima');
insert into ciudades values(null,'AU', 'Arequipa');
insert into ciudades values(null,'AU', 'Cusco');
insert into ciudades values(null,'CN', 'Habana');
insert into ciudades values(null,'CN', 'Varadero');
insert into ciudades values(null,'CN', 'Cienfuegos');
insert into ciudades values(null,'JP', 'Lima');
insert into ciudades values(null,'JP', 'Arequipa');
insert into ciudades values(null,'JP', 'Cusco');
insert into ciudades values(null,'TH', 'Habana');
insert into ciudades values(null,'TH', 'Varadero');
insert into ciudades values(null,'TH', 'Cienfuegos');


select nombre_ciudad from ciudades where codigo_pais='PE';
select nombre_ciudad from ciudades where codigo_pais='PE'

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

insert into usuarios( nom_usuario, ape_usuario, fecha_nac, correo_usuario, pass_usuario, codigo_pais, codigo_doc, num_doc) values (?,'','5','2','1',0,0,0);

select * from usuarios;

--Creación de Paquetes de Vuelos
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













///////////////////////////////////////////////////
select * from usuarios;
select * from usuarios where correo_usuario = 'admin@hotmail.com' && pass_usuario='adminMarcelo';

delete  from usuarios where correo_usuario='admin@hotmail.com';

select validar('admin@hotmail.com','121');

//////////////////////////



select validar('admin77@hotmail.com','1218')

DELIMITER //
CREATE  FUNCTION validar(correo varchar(20), num varchar(20)) RETURNS int
BEGIN
    if exists(select nom_usuario from usuarios where correo_usuario=correo or num_doc = num)
    then
        RETURN 1;
    else 
        RETURN 0;
    end if;
END
//



select validar('admin@hotmail.com','121');




create table Tipo_Pasaje(
id_tipo_p int not null primary key auto_increment,
nombre_p varchar(20) not null
);

insert into Tipo_Pasaje (id_tipo_p,nombre_p)values(null,'Economico');
insert into Tipo_Pasaje (id_tipo_p,nombre_p)values(null,'Vip');
insert into Tipo_Pasaje (id_tipo_p,nombre_p)values(null,'Media');


drop table Reservar_Vuelo

create table Reservar_Vuelo(
id_reserva_r int not null primary key auto_increment,
num_doc varchar(20) not null,
nom_pasajero_r varchar(20) not null,
tipo_pasaje_r varchar(10) not null,
fecha_salida_r date not null,
codigo_pais_r varchar(20) NOT NULL,
ciudad_origen_r varchar(20) NOT NULL,
ciudad_destino_r varchar(20)not null
);



insert into Reservar_Vuelo values(null,'11111111', 'pasajero1', 'Economico', '1000-10-06','PE','Lima', 'Cusco');

insert into Reservar_Vuelo (id_reserva_r,num_doc,nom_pasajero_r,tipo_pasaje_r,fecha_salida_r,codigo_pais_r,ciudad_origen_r,ciudad_destino_r)values(select sp_Generar_Reserva(),'22222222', 'pasajero2', 'Vip', '1100-10-05','Lima', 'Havana');


insert into Reservar_Vuelo values(select sp_Generar_Reserva(),'22222222', 'pasajero2', 'Vip', '2000-11-16','PE'+'Lima', 'Havana');


select * from Reservar_Vuelo;

select execute sp_Generar_Reserva()+'-';

DROP PROCEDURE IF EXISTS sp_Generar_Reserva
DELIMITER //
CREATE function sp_Generar_Reserva() RETURNS VARCHAR(20)
BEGIN
    DECLARE contador INT;
    DECLARE p_codigo_secundario varchar(20);
    BEGIN
        SET contador= (SELECT COUNT(*)+1 FROM Reservar_Vuelo); 
        IF(contador<10)THEN
            SET p_codigo_secundario= CONCAT('R000',contador);
             RETURN p_codigo_secundario;
            ELSE IF(contador<100) THEN
                SET p_codigo_secundario= CONCAT('R00',contador);
                 RETURN p_codigo_secundario;
                ELSE IF(contador<1000)THEN
                    SET p_codigo_secundario= CONCAT('R0',contador);
                     RETURN p_codigo_secundario;
                END IF;
            END IF;
        END IF; 
        
    END;
END
//

DELIMITER // ;

 
DELIMITER //

CREATE function holaMundo() RETURNS VARCHAR(20)
BEGIN
    RETURN ‘HolaMundo’;
END
//



create table comprar_pasajes(
id_pasajes_c int not null primary key auto_increment,
origen_c varchar(50) not null,
destino_c varchar(50) not null,
fecha_ida_c date not null,
fecha_salida_c date not null,
correo_usuario varchar(50) not null,
pass_usuario varchar(50) not null,
codigo_pais varchar(2) NOT NULL,
codigo_doc varchar(2) not null,
num_doc varchar(20) null,
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

insert into usuarios( nom_usuario, ape_usuario, fecha_nac, correo_usuario, pass_usuario, codigo_pais, codigo_doc, num_doc) values (?,'','5','2','1',0,0,0);







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




DROP function IF EXISTS sp_Generar_Codigo

DELIMITER $$
CREATE function sp_Generar_Codigo() RETURNS VARCHAR(4)
BEGIN
   DECLARE contador INT ;
    declare p_codigo_secundario varchar(4);
    BEGIN
        SET contador=(SELECT COUNT(*)+1 from tb_empleados); 
        IF(contador<10)THEN
            SET p_codigo_secundario= CONCAT('EM00',contador);
            ELSE IF(contador<100) THEN
                SET p_codigo_secundario= CONCAT('EM0',contador);
                ELSE IF(contador<1000)THEN
                    SET p_codigo_secundario= CONCAT('EM',contador);
                END IF;
            END IF;
        END IF; 

    END;
return p_codigo_secundario;
END
$$



delimiter //
CREATE FUNCTION validaru(u varchar (10)  ,p varchar(7)) RETURNS int
 as
if (select count(*) from login where usuario=u and pass =p )>1
begin 
return 1;
end
else
return -1;	
go
end;
delimiter ;

select validaru3 ('jjose' ,'123') as resultado ;








------------------------------------------------------------------------------


create TABLE puesto(
    codpuesto int NOT NULL AUTO_INCREMENT,
    nompuesto VARCHAR(40) NOT NULL,
    PRIMARY KEY (codpuesto)
);
//
insert into puesto values(null,'Gerente Logistica');//
insert into puesto values(null,'Gerente Marketing');//
insert into puesto values(null,'Gerente de Produccion');//
insert into puesto values(null,'Gerente de Telecomunicaciones');//
insert into puesto values(null,'Gerente de RRHH');//
insert into puesto values(null,'Gerente de PLANTA');//



create procedure sp_Comb_Nombre_Perfil_GP(cod int)
select nompuesto from puesto where codpuesto=cod;//

call sp_Comb_Nombre_Perfil_GP(1);

/* --------------------------------------------- */
create TABLE perfilgerentespublicos(
    codpuesto int NOT NULL,
    codcompetencias int not null,
	niveldeseado int(1)not null,
    PRIMARY KEY (codpuesto,codcompetencias),
 key  codpuesto (codpuesto),
  FOREIGN KEY (codpuesto) REFERENCES puesto (codpuesto),
  FOREIGN KEY (codcompetencias) REFERENCES competencias (codcompetencias)
      );
insert into perfilgerentespublicos values(1,1,5);
insert into perfilgerentespublicos values(1,2,4);
insert into perfilgerentespublicos values(1,3,3);
insert into perfilgerentespublicos values(1,4,2);
insert into perfilgerentespublicos values(1,5,2);
insert into perfilgerentespublicos values(1,6,3);
insert into perfilgerentespublicos values(2,1,5);
insert into perfilgerentespublicos values(2,2,4);
insert into perfilgerentespublicos values(2,3,3);
insert into perfilgerentespublicos values(2,4,2);
insert into perfilgerentespublicos values(2,5,2);
insert into perfilgerentespublicos values(2,6,3);
insert into perfilgerentespublicos values(3,1,5);
insert into perfilgerentespublicos values(3,2,4);
insert into perfilgerentespublicos values(3,3,3);
insert into perfilgerentespublicos values(3,4,2);
insert into perfilgerentespublicos values(3,5,2);
insert into perfilgerentespublicos values(3,6,3);
insert into perfilgerentespublicos values(4,1,5);
insert into perfilgerentespublicos values(4,2,1);
insert into perfilgerentespublicos values(4,3,2);
insert into perfilgerentespublicos values(4,4,5);
insert into perfilgerentespublicos values(4,5,4);
insert into perfilgerentespublicos values(4,6,2);
insert into perfilgerentespublicos values(5,1,1);
insert into perfilgerentespublicos values(5,2,5);
insert into perfilgerentespublicos values(5,3,4);
insert into perfilgerentespublicos values(5,4,3);
insert into perfilgerentespublicos values(5,5,2);
insert into perfilgerentespublicos values(5,6,3);
insert into perfilgerentespublicos values(6,1,4);
insert into perfilgerentespublicos values(6,2,4);
insert into perfilgerentespublicos values(6,3,3);
insert into perfilgerentespublicos values(6,4,1);
insert into perfilgerentespublicos values(6,5,2);
insert into perfilgerentespublicos values(6,6,2);

create procedure sp_listarPerfilGerentePublico(cod int)
select c.codpuesto,c.codcompetencias,p.nomcompetencia,c.niveldeseado from perfilgerentespublicos c inner join competencias p on p.codcompetencias= c.codcompetencias where c.codpuesto=cod;

call sp_listarPerfilGerentePublico(3);



create procedure sp_actualizarPerfilGerentePublico( nivel int , n1 int,n2 int)
update perfilgerentespublicos set niveldeseado=nivel  where codpuesto=n1 and codcompetencias=n2;
call sp_actualizarPerfilGerentePublico (5,1,1);



create procedure sp_llenarcmbPerfilGP()
select nompuesto from puesto ;



create table evaluacioncualitativademetas(
   codgerente char(7) ,
    codmeta int ,
    relacionconpoi varchar(50) null,
    peso int not null ,
	planaccion varchar(50) not null,
    evaluacion varchar (60)null,
PRIMARY KEY ( codgerente ,codmeta)
      );
      
   insert into evaluacioncualitativademetas values( 'G100001',1,"cumplimiento de Actividades",15,"enviar los correos en su tiempo","");   
   insert into evaluacioncualitativademetas values('G100001',2,"Empleabilidade del Personal",10,"sustentar el manejo del personal","");  
   insert into evaluacioncualitativademetas values('G100001',3,"eficiencia de los empleado",20,"Comprobacion de sus tareas","");   
   insert into evaluacioncualitativademetas values('G100001',4,"Accesibilidad alos recurso programados",30,"Lograr que los recursos llegue a todos","");  
   insert into evaluacioncualitativademetas values('G100001',5,"supervision adecuada a los obrero",6,"Inspeccion adecuada","");   
  
  
create procedure sp_evaluacioncaulitava(cod char(7))
select * from evaluacioncualitativademetas where codgerente='G100001' ;

call sp_evaluacioncaulitava ('G100001');
      select * from  evaluacioncualitativademetas

select codgerente,codmeta ,relacionconpoi,peso,planaccion,evaluacion from  evaluacioncualitativademetas
