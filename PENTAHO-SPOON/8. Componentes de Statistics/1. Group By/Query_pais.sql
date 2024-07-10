---
--- drop tables
---
DROP TABLE IF EXISTS pais;


--
-- Name: pais; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE pais (
	pais character varying(50),
	salario integer
);


--
-- Insertar Datos en la tabla pais
--
INSERT INTO pais VALUES ('Alemania',20000);
INSERT INTO pais VALUES ('Alemania',20000);
INSERT INTO pais VALUES ('Alemania',20000);
INSERT INTO pais VALUES ('Mexico',18000);
INSERT INTO pais VALUES ('Mexico',18000);
INSERT INTO pais VALUES ('Francia',15000);
INSERT INTO pais VALUES ('Francia',15000);
INSERT INTO pais VALUES ('Francia',15000);
INSERT INTO pais VALUES ('Francia',15000);
INSERT INTO pais VALUES ('España',17000);
INSERT INTO pais VALUES ('Canada',20000);
INSERT INTO pais VALUES ('Argentina',19000);
INSERT INTO pais VALUES ('Argentina',19000);
INSERT INTO pais VALUES ('Mexico',18000);
INSERT INTO pais VALUES ('Brazil',19000);
INSERT INTO pais VALUES ('Brazil',19000);
INSERT INTO pais VALUES ('Canada',20000);
INSERT INTO pais VALUES ('España',17000);
INSERT INTO pais VALUES ('Alemania',20000);
INSERT INTO pais VALUES ('Francia',15000);


--
-- Consulta
--
SELECT pais, sum(salario) from pais
group by pais;