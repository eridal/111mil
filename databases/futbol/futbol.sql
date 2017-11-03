create database if not exists futbol;

use futbol;

drop table if exists partidos;
drop table if exists jugadores;
drop table if exists equipos;

create table equipos (
    id int auto_increment primary key
  , nombre varchar(50) not null
  , unique key (nombre)
);

create table jugadores (
    id int auto_increment primary key
  , nombre varchar(00) not null
  , posicion int not null
  , equipo int not null
  , foreign key (equipo)
      references equipos(id)
      on update cascade
      on delete restrict
);

create table partidos (
    id int auto_increment primary key
  , fecha timestamp not null
  , local_equipo int not null
  , visit_equipo int not null
  , local_goles int not null
  , visit_goles int not null
  , foreign key (local_equipo) references equipos(id)
  , foreign key (visit_equipo) references equipos(id)
);

insert into equipos (id, nombre)
  values (1, 'Deportivo La Tristeza')
       , (2, 'Defensores de Medrano')
       , (3, 'C.A. Perros Unidos')
;

insert into jugadores (nombre, posicion, equipo)
  values ('Dr. Diego Alejandro Cisneros Segundo', 4, 1)
       , ('Lic. Franco Ureña Hijo', 8, 3)
       , ('Alejandra Acuña', 3, 3)
       , ('Julia Gaytan', 1, 3)
       , ('Camilo Arreola', 1, 1)
       , ('Carlos Velazquez', 10, 1)
       , ('Dn. Hugo Caraballo', 3, 1)
       , ('Thiago Moya Segundo', 10, 3)
       , ('Matias Palacios', 1, 2)
       , ('Sra. Jazmin Oquendo Hijo', 7, 2)
       , ('Maria Santillan', 10, 2)
       , ('Bianca Alva', 4, 3)
       , ('Dr. Antonio Aguilera', 9, 1)
       , ('Bruno Castro', 9, 3)
       , ('Pedro Arroyo', 4, 3)
       , ('Sara Sofia Coronado', 11, 1)
       , ('Ing. Dante Santillan', 8, 1)
       , ('Lic. Dylan Leiva', 4, 3)
       , ('Magdalena Orosco', 6, 2)
       , ('Maria Jose Gamboa', 1, 2)
       , ('Facundo Delagarza', 5, 2)
       , ('Lic. Isabella Campos', 4, 2)
       , ('Dn. Jacobo Rosado', 8, 2)
       , ('Sebastian Delvalle Segundo', 9, 3)
       , ('Sara Sofia Urbina', 1, 3)
       , ('Alexa Mora', 5, 3)
       , ('Elena  Carmona', 1, 1)
       , ('Mario Chavarria', 9, 2)
       , ('Ing. Dante Mares', 8, 1)
       , ('Jesus Ceja Segundo', 7, 1)
       , ('Lic. Ariana Venegas Hijo', 8, 2)
       , ('Oliva Alvarado', 5, 2)
       , ('Sra. Alejandra Salgado', 2, 1)
       , ('Alessandra Alcala', 6, 1)
       , ('Ing. Rafaela Matos', 8, 1)
       , ('Victoria Sosa', 2, 3)
       , ('Isaac Luna', 7, 3)
       , ('Ing. Axel Roybal Segundo', 11, 3)
       , ('Santino Sedillo Hijo', 5, 2)
       , ('Sergio Ozuna', 3, 2)
       , ('Lautaro Calderon', 11, 2)
       , ('Juan Pablo Holguin', 3, 1)
       , ('Julian Longoria', 2, 2)
       , ('Bianca Munguia', 7, 2)
       , ('Damian Robledo Hijo', 9, 1)
;

insert into partidos (fecha, local_equipo, visit_equipo, local_goles, visit_goles)
  values ('20170428 11:06:30', 3, 2, 7, 2)
       , ('20170601 03:15:30', 2, 2, 7, 5)
       , ('20170518 19:33:09', 3, 3, 4, 5)
       , ('20170511 15:18:58', 1, 1, 3, 1)
       , ('20161203 11:27:53', 3, 2, 5, 2)
       , ('20170430 17:37:31', 2, 1, 5, 3)
       , ('20170207 11:19:23', 3, 3, 3, 4)
       , ('20170813 23:50:44', 2, 2, 0, 4)
       , ('20170530 03:23:29', 1, 1, 7, 5)
       , ('20170614 04:26:10', 1, 1, 2, 5)
       , ('20170813 14:13:51', 1, 2, 6, 0)
       , ('20170906 19:11:49', 3, 3, 0, 3)
       , ('20161113 01:16:14', 3, 2, 7, 1)
       , ('20161108 05:36:06', 1, 2, 5, 5)
       , ('20170913 13:10:53', 1, 3, 6, 3)
       , ('20171031 08:38:24', 1, 2, 1, 4)
       , ('20170915 14:17:32', 2, 1, 4, 4)
       , ('20170902 07:39:33', 3, 2, 7, 1)
       , ('20170223 00:39:30', 1, 1, 2, 4)
       , ('20170318 17:29:52', 2, 1, 4, 4)
       , ('20170812 10:13:29', 2, 1, 7, 0)
       , ('20171005 15:10:53', 2, 3, 6, 1)
       , ('20170810 18:15:27', 1, 3, 5, 5)
       , ('20170425 01:33:14', 1, 3, 6, 0)
       , ('20170201 03:28:20', 2, 3, 5, 1)
       , ('20170228 13:27:31', 3, 1, 6, 5)
       , ('20161120 15:31:01', 2, 3, 4, 3)
       , ('20171012 16:42:51', 3, 1, 2, 0)
       , ('20161113 18:54:44', 2, 1, 5, 5)
       , ('20161206 09:53:45', 1, 1, 4, 3)
       , ('20170529 09:33:59', 3, 3, 2, 2)
       , ('20170529 21:03:40', 3, 1, 2, 3)
       , ('20171031 13:12:32', 1, 3, 3, 4)
       , ('20170323 13:34:41', 1, 3, 7, 5)
       , ('20170224 22:30:44', 1, 3, 0, 0)
       , ('20171011 22:59:41', 3, 2, 0, 1)
       , ('20170525 22:27:43', 2, 1, 3, 4)
       , ('20170721 12:36:44', 1, 1, 2, 5)
       , ('20170126 06:25:47', 3, 3, 2, 1)
       , ('20170113 13:20:47', 1, 2, 0, 2)
       , ('20170317 02:48:07', 3, 2, 1, 2)
       , ('20170101 09:01:06', 3, 3, 6, 2)
       , ('20170913 00:08:17', 2, 2, 6, 1)
       , ('20170610 13:49:24', 3, 1, 4, 1)
       , ('20161120 20:32:19', 2, 3, 1, 2)
       , ('20161230 18:45:59', 3, 2, 3, 2)
       , ('20170601 22:23:33', 1, 3, 1, 5)
       , ('20170820 10:40:31', 2, 1, 2, 2)
       , ('20170910 07:44:52', 2, 2, 0, 3)
       , ('20170618 01:06:33', 1, 3, 0, 5)
;
