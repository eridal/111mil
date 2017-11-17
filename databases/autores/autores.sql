create database if not exists libreria;

use libreria;

drop table if exists autores_libros;
drop table if exists libros;
drop table if exists tipo_libros;
drop table if exists autores;
drop table if exists editoriales;

create table editoriales (
    id int auto_increment primary key
  , nombre varchar(100) not null
  , unique key (nombre)
);

create table tipo_libros (
    id int auto_increment primary key
  , nombre varchar(100) not null
  , unique key (nombre)
);

create table libros (
    id int auto_increment primary key
  , tipo int
  , nombre varchar(100) not null
  , publicado boolean default false
  , editorial int null
  , foreign key (editorial)
      references editoriales(id)
      on update cascade
  , foreign key (tipo)
      references tipo_libros(id)
);

create table autores (
    id int auto_increment primary key
  , nombre varchar(50) not null
  , edad int not null
);

create table autores_libros (
    libro int
  , autor int
  , primary key (libro, autor)
  , foreign key (libro)
      references libros(id)
  , foreign key (autor)
      references autores(id)
);

insert into tipo_libros(nombre)
  values ('Novela')
       , ('Policial')
       , ('Deportivo')
       , ('Historia')
       , ('Suspenso')
       , ('Accion')
;
insert into editoriales (id, nombre)
  values (4, 'Aranda de Ávalos')
       , (9, 'Borrego de Concepción')
       , (10, 'Bravo-Loya')
       , (3, 'Cabán, Partida y Téllez')
       , (5, 'Castañeda e Hijos')
       , (7, 'Dueñas y Coronado')
       , (1, 'Iglesias y Asoc.')
       , (8, 'Montoya de Quiñónez')
       , (2, 'Paredes y Cazares')
       , (6, 'Valladares de Orta')
;
insert into autores(id, nombre, edad)
  values (1, 'María Alejandra Carrera', 58)
       , (2, 'Ivan Nazario', 68)
       , (3, 'Nadia Villareal Tercero', 62)
       , (4, 'Sra. Emma Bermúdez', 71)
       , (5, 'Dr. Valentín Aponte Segundo', 78)
       , (6, 'Dante Valdivia', 17)
       , (7, 'Ignacio Delafuente', 44)
       , (8, 'Kevin Valdivia Hijo', 67)
       , (9, 'Sergio Altamirano', 27)
       , (10, 'Ing. María Camila Amador Segundo', 29)
       , (11, 'Alexander Sauceda', 45)
       , (12, 'Andrés Vargas', 27)
       , (13, 'Valentino Reynoso', 61)
       , (14, 'Lic. Isabel Arguello Hijo', 46)
       , (15, 'Horacio Urbina', 46)
       , (16, 'Paulina Carrero', 62)
       , (17, 'Leonardo Esparza Hijo', 58)
       , (18, 'Isaac Carmona', 57)
       , (19, 'Ing. Axel Valdez', 18)
       , (20, 'Paula Niño', 21)
       , (21, 'Marcelo Barreira', 37)
;
insert into libros (id, tipo, nombre, publicado, editorial)
  values (1, 5, 'Doloribus est consectetur debitis optio.', 1, 9)
       , (2, 3, 'Dignissimos provident voluptatem recusandae.', 1, 1)
       , (3, 3, 'Hic voluptas enim dolorem provident.', 1, 8)
       , (4, 1, 'Voluptatem sint eum eaque quos repudiandae.', 1, 10)
       , (5, 2, 'Eos et dolore recusandae ea consequatur est sed.', 1, 2)
       , (6, 3, 'Atque voluptatem assumenda ut.', 1, 9)
       , (7, 3, 'Possimus sit soluta nisi praesentium.', 1, 5)
       , (8, 3, 'Quo non et alias adipisci possimus id.', 1, 1)
       , (9, 3, 'Dolorem fugit nam distinctio.', 1, 7)
       , (10, 2, 'Non aut voluptas dolores dignissimos voluptas.', 1, 4)
       , (11, 4, 'Porro qui aut et enim.', 0, 9)
       , (12, 5, 'Voluptatem neque error et nobis.', 0, 2)
       , (13, 3, 'Molestias qui amet qui aliquid aut dolores quae.', 0, 7)
       , (14, 2, 'Vel non iste quos et nostrum quos.', 0, 7)
       , (15, 2, 'Velit laborum facilis eum.', 1, 3)
       , (16, 1, 'Doloribus laudantium sint perferendis.', 1, 3)
       , (17, 1, 'Harum et sint adipisci magnam quas et doloremque.', 0, 7)
       , (18, 2, 'Saepe et et vel voluptate dolores.', 0, 7)
       , (19, 2, 'Aut nobis accusamus voluptas debitis voluptates.', 1, 5)
       , (20, 3, 'Iusto ut et voluptatibus ipsum eos.', 1, 8)
       , (21, 4, 'Voluptatem deleniti eum et.', 0, 1)
       , (22, 3, 'Dolorum accusamus est sed.', 1, 2)
       , (23, 3, 'Eaque iusto eum est minima omnis.', 1, 1)
       , (24, 1, 'Ea est sequi voluptates perferendis et dolorem.', 1, 10)
       , (25, 4, 'Nulla sed earum beatae voluptatem.', 1, 6)
       , (26, 2, 'Aperiam voluptatum possimus consequuntur debitis.', 0, 4)
       , (27, 3, 'Sed temporibus atque sit molestiae nulla nisi.', 1, 3)
       , (28, 3, 'Pariatur rerum eos natus ipsa harum nobis.', 0, null)
       , (29, 5, 'Temporibus sunt qui repellendus.', 0, 10)
       , (30, 4, 'Vero quibusdam qui consequatur.', 1, 2)
       , (31, 1, 'Est magnam molestiae officia ut numquam.', 1, 8)
       , (32, 3, 'Quo illo eius ipsum error dolorum.', 1, 2)
       , (33, 3, 'Molestiae maxime delectus blanditiis quia.', 1, 9)
       , (34, 4, 'Labore dignissimos animi autem magnam aut est.', 0, null)
       , (35, 2, 'Excepturi qui odit labore est sit rerum ipsum.', 1, 3)
       , (36, 3, 'Aliquid eligendi culpa sit voluptatem.', 1, 10)
       , (37, 2, 'Voluptatem ab est non rem voluptas quia.', 1, 1)
       , (38, 1, 'Magni quia aut sit ut. Magni iusto iure et.', 1, 9)
       , (39, 1, 'Sed dignissimos sed ut.', 1, 4)
       , (40, 4, 'Quas sequi corrupti et autem totam est.', 1, 10)
       , (41, 5, 'Non eaque in non corporis.', 0, null)
       , (42, 2, 'Sit qui aut facilis sed harum perspiciatis.', 1, 4)
       , (43, 2, 'Ut facere magnam qui saepe.', 1, 8)
       , (44, 2, 'A non officia incidunt non a magnam.', 0, 2)
       , (45, 4, 'Perferendis id nobis at vel quasi harum ad.', 1, 10)
       , (46, 2, 'Laudantium ullam ullam est quo similique.', 1, 9)
       , (47, 4, 'Aut odit sequi non nam.', 1, 9)
       , (48, 1, 'Nesciunt non quod optio enim nam est qui.', 1, 2)
       , (49, 4, 'Et aut soluta rerum.', 1, 8)
       , (50, 5, 'Enim occaecati autem ab totam enim harum est.', 1, 1)
;

insert into autores_libros (libro, autor)
  values (49, 17), (1, 12), (23, 2), (20, 19), (50, 15),
         (30, 9), (33, 1), (37, 7), (3, 10), (46, 10),
         (23, 1), (32, 4), (3, 14), (12, 13), (25, 19),
         (38, 19), (47, 3), (43, 19), (16, 11), (24, 1),
         (46, 11), (26, 17), (50, 9), (2, 9), (23, 14),
         (30, 11), (16, 17), (8, 5), (7, 16), (29, 2),
         (47, 9), (49, 16), (44, 6), (16, 7), (17, 5),
         (44, 17), (2, 18), (14, 2), (16, 15), (37, 18),
         (12, 1), (37, 8), (14, 16), (1, 9), (27, 12),
         (24, 10), (50, 10), (13, 18), (37, 12), (11, 2),
         (40, 2), (45, 17), (48, 4), (46, 5), (44, 13),
         (8, 3), (34, 18), (25, 18), (32, 10), (18, 4),
         (3, 17), (31, 1), (13, 20), (46, 20), (23, 3),
         (2, 5), (10, 19), (4, 3), (5, 20), (20, 20),
         (30, 12), (4, 6), (21, 12), (12, 2), (3, 12),
         (9, 2), (20, 16), (8, 14), (32, 3), (9, 14),
         (18, 8), (31, 9), (25, 14), (20, 18), (33, 20),
         (21, 15), (13, 17), (14, 10), (42, 7), (3, 1),
         (21, 9), (41, 12), (6, 10), (31, 15), (29, 16),
         (21, 19), (7, 1), (17, 13), (36, 15), (26, 8),
         (35, 19), (5, 19), (38, 8), (22, 12), (34, 10),
         (31, 2), (32, 1), (44, 5), (39, 10), (1, 4),
         (19, 3), (11, 14), (40, 19), (20, 6), (15, 2),
         (12, 8), (2, 20), (37, 9), (28, 8), (24, 17),
         (29, 3), (18, 13), (42, 6), (27, 1), (48, 7),
         (49, 7), (31, 6), (22, 17), (32, 9), (40, 8),
         (39, 17), (26, 5), (19, 11), (26, 15), (8, 9),
         (6, 20), (34, 13), (47, 1)
;
