create database holamundo;
show databases;
use holamundo;
CREATE TABLE animales (
	id int,
    tipo varchar(255),
    estado varchar (255) ,
    PRIMARY KEY (id)
);

-- INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');

ALTER TABLE animales MODIFY COLUMN id int auto_increment;

show CREATE TABLE animales;
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;
INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');

SELECT * FROM animales ;
SELECT * FROM animales WHERE id = 1 ;
SELECT * FROM animales WHERE  estado ='feliz' AND tipo = 'chanchito' ;

UPDATE animales SET estado = 'feliz' where id = 4;

DELETE from animales where estado = 'feliz';
-- Error Code: 1175. You are using safe update mode and you 
-- tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

DELETE from animales where id = 5;
DELETE from animales where id = 4;
DELETE from animales where id = 3;

UPDATE animales set estado= 'triste' where tipo = 'dragon';
-- también larga erro 1175.