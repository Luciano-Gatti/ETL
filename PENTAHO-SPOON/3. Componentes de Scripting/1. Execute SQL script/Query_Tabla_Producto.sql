--
-- Eliminar la tabla si existe
--
DROP TABLE IF EXISTS producto;

--
-- Tabla: Producto
--
CREATE TABLE producto(
productoId integer,
producto character varying(60),
cantidad integer,
precioUnitario real,
DescuentoPct real
);


--
-- Insertar Datos
--
INSERT INTO producto VALUES(1,'Papa',4,4,0.1);
INSERT INTO producto VALUES(2,'Palomitas',2,3,0.1);
INSERT INTO producto VALUES(3,'Frituras de maíz',1,3,0.1);
INSERT INTO producto VALUES(4,'Cacahuates',2,3,0.1);
INSERT INTO producto VALUES(5,'Botanas saladas',2,3,0.1);
INSERT INTO producto VALUES(6,'Barras alimenticias',5,4,0.1);
INSERT INTO producto VALUES(7,'Nueces y semillas',5,4,0.1);
INSERT INTO producto VALUES(8,'Caramelos',6,2,0.1);
INSERT INTO producto VALUES(9,'Dulces enchilados',3,2,0.1);
INSERT INTO producto VALUES(10,'Chocolate de mesa',2,2,0.1);
INSERT INTO producto VALUES(11,'Chocolate en polvo',1,2,0.1);
INSERT INTO producto VALUES(12,'Chocolates',4,4,0.1);
INSERT INTO producto VALUES(13,'Gomas de mascar',2,3,0.1);
INSERT INTO producto VALUES(14,'Mazapán',6,2,0.1);
INSERT INTO producto VALUES(15,'Malvaviscos',5,3,0.1);
INSERT INTO producto VALUES(16,'Pulpa de tamarindo',4,4,0.1);
INSERT INTO producto VALUES(17,'Pastillas de dulce',6,4,0.1);
INSERT INTO producto VALUES(18,'Paletas de dulce',1,4,0.1);
INSERT INTO producto VALUES(19,'Tortillas de harina/maíz',1,2,0.1);
INSERT INTO producto VALUES(20,'Galletas dulces',3,3,0.1);
INSERT INTO producto VALUES(21,'Galletas saladas',1,3,0.1);
INSERT INTO producto VALUES(22,'Pastelillos',5,4,0.1);
INSERT INTO producto VALUES(23,'Pan de caja',3,3,0.1);
INSERT INTO producto VALUES(24,'Pan dulce',3,3,0.1);
INSERT INTO producto VALUES(25,'Pan molido',5,4,0.1);
INSERT INTO producto VALUES(26,'Pan tostado',4,2,0.1);
INSERT INTO producto VALUES(27,'Aguacates',4,3,0.1);
INSERT INTO producto VALUES(28,'Ajos',2,4,0.1);
INSERT INTO producto VALUES(29,'Cebollas',1,3,0.1);
INSERT INTO producto VALUES(30,'Chiles',3,3,0.1);
INSERT INTO producto VALUES(31,'Cilantro/Perejil',4,2,0.1);
INSERT INTO producto VALUES(32,'Jitomate',4,4,0.1);
INSERT INTO producto VALUES(33,'Papas',4,4,0.1);
INSERT INTO producto VALUES(34,'Limones',2,2,0.1);
INSERT INTO producto VALUES(35,'Manzanas',1,2,0.1);
INSERT INTO producto VALUES(36,'Naranjas',5,3,0.1);
INSERT INTO producto VALUES(37,'Plátanos',2,2,0.1);