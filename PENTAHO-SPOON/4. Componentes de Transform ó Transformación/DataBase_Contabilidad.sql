--
-- PostgreSQL database Contabilidad
--
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;



SET default_tablespace = '';

SET default_with_oids = false;


---
--- drop tables
---
DROP TABLE IF EXISTS planCuentas;
DROP TABLE IF EXISTS libros;
DROP TABLE IF EXISTS persona;
DROP TABLE IF EXISTS voucher;
DROP TABLE IF EXISTS detalleVoucher;


--
-- Name: planCuentas; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE planCuentas (
    planCuentas integer,
	planCuentasOrden integer,
	planCuentasPadre integer,
	numeroCuenta integer,
    nombreCuenta character varying(60),
    nivelCuenta integer,
    cuentaDebe integer,
	cuentaHaber integer,
	xmlvalue text,
	nombreCuentaMD5 text,
	nombreTabla character varying(30)
);


--
-- Name: libros; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE libros (
    libros integer,
	codigoLibro character varying(3),
	nombreLibro character varying(60)
);


--
-- Name: persona; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE persona (
    persona integer,
	nombre character varying(100),
	apellido character varying(100),
	nombreCompleto character varying(100),
	genero character varying(10),
    direccion character varying(100),
	direccionAbreviatura character varying(30),
	dni character varying(8),
	telefono1 character varying(11),
	telefono2 character varying(11),
	departamento character varying(60),
	ubigeo character varying(10)
);


--
-- Name: voucher; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE voucher (
	voucher integer,
	voucherAlternativo integer,
	libros integer,
	fecha date,
	numero character varying(20),
	glosa character varying(255),
	anulado integer
);


--
-- Name: employees; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE detalleVoucher (
    detalleVoucher integer,
	persona integer,
	planCuentas integer,
    voucher integer,
	montoDebe real,
	montoHaber real,
	detalleGlosa character varying(255),
	fechaCuenta date,
	monto real,
	anio character varying(4),
	nroMes character varying(2),
	diaAnio character varying(4),
	diaMes character varying(4),
	diaSemana character varying(4),
	semanaAnio character varying(4)
);




-----------------PRIMARY KEY
-- Name: pk_planCuentas; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY planCuentas
    ADD CONSTRAINT pk_planCuentas PRIMARY KEY (planCuentas);


--
-- Name: pk_persona; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY persona
    ADD CONSTRAINT pk_persona PRIMARY KEY (persona);


--
-- Name: pk_libros; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY libros
    ADD CONSTRAINT pk_libros PRIMARY KEY (libros);


--
-- Name: pk_voucher; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY voucher
    ADD CONSTRAINT pk_voucher PRIMARY KEY (voucher);


--
-- Name: pk_employees; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY detalleVoucher
    ADD CONSTRAINT pk_detalleVoucher PRIMARY KEY (detalleVoucher);


-------------------- FOREIGN KEY
-- Name: fk_orders_customers; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY voucher
    ADD CONSTRAINT fk_voucher FOREIGN KEY (libros) REFERENCES libros;


--
-- Name: fk_detalleVoucher; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY detalleVoucher
    ADD CONSTRAINT fk_detalleVoucher FOREIGN KEY (voucher) REFERENCES voucher;


--
-- Name: fk_persona; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY detalleVoucher
    ADD CONSTRAINT fk_persona FOREIGN KEY (persona) REFERENCES persona;


--
-- Name: fk_planCuentas; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY detalleVoucher
    ADD CONSTRAINT fk_planCuentas FOREIGN KEY (planCuentas) REFERENCES planCuentas;

