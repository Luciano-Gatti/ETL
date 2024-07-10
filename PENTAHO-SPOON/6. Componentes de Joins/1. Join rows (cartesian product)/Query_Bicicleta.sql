---
--- drop tables
---
DROP TABLE IF EXISTS bicicleta;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE bicicleta (
	id integer,
    Marca character varying(50),
	Aro real,
	Material character varying(50),
	Colores character varying(50)
);