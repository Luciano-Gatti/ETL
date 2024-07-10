---
--- drop tables
---
DROP TABLE IF EXISTS empleado;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE empleado (
	id integer,
    nombre character varying(50),
	apellido character varying(50),
	salario integer
);