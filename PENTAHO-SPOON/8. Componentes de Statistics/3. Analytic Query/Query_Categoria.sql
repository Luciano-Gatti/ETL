---
--- drop tables
---
DROP TABLE IF EXISTS Categoria;


--
-- Name: PreciosProducto; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE Categoria (
	Categoria character varying(50),
	fechaVenta date,
	Monto integer
);


--
-- Insertar Datos en la tabla pais
--
insert into Categoria values ('Lacteos','01-01-2021',110000);
insert into Categoria values ('Lacteos','01-02-2021',120000);
insert into Categoria values ('Lacteos','01-03-2021',150000);
insert into Categoria values ('Lacteos','01-04-2021',100000);
insert into Categoria values ('Lacteos','01-05-2021',90000);
insert into Categoria values ('Lacteos','01-06-2021',170000);
insert into Categoria values ('Lacteos','01-07-2021',145000);
insert into Categoria values ('Lacteos','01-08-2021',180000);
insert into Categoria values ('Lacteos','01-09-2021',70000);
insert into Categoria values ('Lacteos','01-10-2021',95000);
insert into Categoria values ('Abarrotes','01-01-2021',80000);
insert into Categoria values ('Abarrotes','01-02-2021',90000);
insert into Categoria values ('Abarrotes','01-03-2021',120000);
insert into Categoria values ('Abarrotes','01-04-2021',70000);
insert into Categoria values ('Abarrotes','01-05-2021',110000);
insert into Categoria values ('Abarrotes','01-06-2021',110000);
insert into Categoria values ('Abarrotes','01-07-2021',95000);
insert into Categoria values ('Abarrotes','01-08-2021',170000);
insert into Categoria values ('Abarrotes','01-09-2021',170000);
insert into Categoria values ('Abarrotes','01-10-2021',100000);

