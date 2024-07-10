---
--- drop tables
---
DROP TABLE IF EXISTS alumno2;


--
-- Name: alumno; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE alumno2 (
	Id integer,	
	nombre character varying(50),
    apellido character varying(50),
	materia character varying(50),
	nota integer
);