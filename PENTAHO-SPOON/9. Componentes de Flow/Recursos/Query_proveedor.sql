---
--- drop tables
---
DROP TABLE IF EXISTS proveedor;


--
-- Name: proveedor; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE proveedor (
	ID integer not null,
	compania character varying(50) not null,
	proveedor character varying(50) not null,
	cargo character varying(50) not null,
	direccion character varying(50) not null,
	ciudad character varying(50) not null,
	region character varying(50) not null,
	pais character varying(50) not null,
	telefono character varying(50) not null
);