--
-- PostgreSQL database dump
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
DROP TABLE IF EXISTS REGIONS;
DROP TABLE IF EXISTS COUNTRIES;
DROP TABLE IF EXISTS LOCATIONS;
DROP TABLE IF EXISTS DEPARTMENTS;
DROP TABLE IF EXISTS JOBS;
DROP TABLE IF EXISTS EMPLOYEES;
DROP TABLE IF EXISTS JOB_HISTORY;


--
-- Name: REGIONS; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE REGIONS (
    REGION_ID integer,
    REGION_NAME character varying(25)
);


--
-- Name: COUNTRIES; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE COUNTRIES (
    COUNTRY_ID character varying(2),
	COUNTRY_NAME character varying(40),
	REGION_ID integer
);


--
-- Name: LOCATIONS; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE LOCATIONS (
    LOCATION_ID integer,
	STREET_ADDRESS character varying(40),
	POSTAL_CODE character varying(12),
	CITY character varying(30),
	STATE_PROVINCE character varying(25),
	COUNTRY_ID character varying(2)
);


--
-- Name: DEPARTMENTS; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE DEPARTMENTS (
    DEPARTMENT_ID integer,
	DEPARTMENT_NAME character varying(30),
	MANAGER_ID integer,
	LOCATION_ID integer
);


--
-- Name: JOBS; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE JOBS (
    JOB_ID character varying(10),
	JOB_TITLE character varying(35),
	MIN_SALARY real,
	MAX_SALARY real
);


--
-- Name: EMPLOYEES; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID integer,
	FIRST_NAME character varying(20),
	LAST_NAME character varying(25),
	EMAIL character varying(25),
	PHONE_NUMBER character varying(20),
	HIRE_DATE date,
	JOB_ID character varying(10),
	SALARY real,
	COMMISSION_PCT real,
	MANAGER_ID integer,
	DEPARTMENT_ID integer
);


--
-- Name: JOB_HISTORY; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--
CREATE TABLE JOB_HISTORY (
    EMPLOYEE_ID integer,
	START_DATE date,
	END_DATE date,
	JOB_ID character varying(10),
	DEPARTMENT_ID integer
);



-------PRIMARY KEY
-- Name: pk_regions; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY REGIONS
    ADD CONSTRAINT pk_regions PRIMARY KEY (REGION_ID);


--
-- Name: pk_countries; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY COUNTRIES
    ADD CONSTRAINT pk_countries PRIMARY KEY (COUNTRY_ID);
	
	
--
-- Name: pk_locations; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY LOCATIONS
    ADD CONSTRAINT pk_locations PRIMARY KEY (LOCATION_ID);
	
	
--
-- Name: pk_departments; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY DEPARTMENTS
    ADD CONSTRAINT pk_departments PRIMARY KEY (DEPARTMENT_ID);
	
	
--
-- Name: pk_jobs; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY JOBS
    ADD CONSTRAINT pk_jobs PRIMARY KEY (JOB_ID);


--
-- Name: pk_employees; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--
ALTER TABLE ONLY EMPLOYEES
    ADD CONSTRAINT pk_employees PRIMARY KEY (EMPLOYEE_ID);
	
	
-------FOREIGN KEY
-- Name: fk_regions_country; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY COUNTRIES
    ADD CONSTRAINT fk_regions_country FOREIGN KEY (REGION_ID) REFERENCES REGIONS;
	
	
--
-- Name: fk_country_locations; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY LOCATIONS
    ADD CONSTRAINT fk_country_locations FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRIES;
	
	
--
-- Name: fk_departments_locations; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY DEPARTMENTS
    ADD CONSTRAINT fk_departments_locations FOREIGN KEY (LOCATION_ID) REFERENCES LOCATIONS;
	
	
--
-- Name: fk_departments_employees; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY EMPLOYEES
    ADD CONSTRAINT fk_departments_employees FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS;
	
	
--
-- Name: fk_jobs_employees; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY EMPLOYEES
    ADD CONSTRAINT fk_jobs_employees FOREIGN KEY (JOB_ID) REFERENCES JOBS;
	
	
--
-- Name: fk_employees; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY EMPLOYEES
    ADD CONSTRAINT fk_employees FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEES;
	
	
--
-- Name: fk_departments_job_history; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY JOB_HISTORY
    ADD CONSTRAINT fk_departments_job_history FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENTS;
	
	
--
-- Name: fk_jobs_job_history; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY JOB_HISTORY
    ADD CONSTRAINT fk_jobs_job_history FOREIGN KEY (JOB_ID) REFERENCES JOBS;
	
	
--
-- Name: fk_employees_job_history; Type: Constraint; Schema: -; Owner: -
--
ALTER TABLE ONLY JOB_HISTORY
    ADD CONSTRAINT fk_employees_job_history FOREIGN KEY (EMPLOYEE_ID) REFERENCES EMPLOYEES;