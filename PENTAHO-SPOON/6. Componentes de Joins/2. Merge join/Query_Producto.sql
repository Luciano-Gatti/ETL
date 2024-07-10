---
--- drop tables
---
DROP TABLE IF EXISTS producto;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE producto (
	Id integer,	
	NombreProducto character varying(50),
	ProductoId integer,
    Categoria character varying(50),
	NombreSubCategoria character varying(100),
	Descripcion text,
	Color character varying(20)
);