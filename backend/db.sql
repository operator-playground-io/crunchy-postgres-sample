--Script to create the Postgres structure to store the contacts

-- Role: test
-- DROP ROLE test;

CREATE ROLE test WITH
  LOGIN
  NOSUPERUSER
  INHERIT
  NOCREATEDB
  NOCREATEROLE
  NOREPLICATION
  ENCRYPTED PASSWORD 'md5a5dc3f26d9c9719ab75f8f1398d74823';

-- Database: test

-- DROP DATABASE test;

CREATE DATABASE test
    WITH 
    OWNER = test
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Table: public.contacts

-- DROP TABLE public.contacts;

CREATE TABLE public.contacts
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character varying COLLATE pg_catalog."default" NOT NULL,
    email character varying COLLATE pg_catalog."default" NOT NULL
)

TABLESPACE pg_default;

