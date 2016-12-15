--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE anandhi;
ALTER ROLE anandhi WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5cdcfc2b0647f88c9cde5b5ece34ac782';
CREATE ROLE anandhianu;
ALTER ROLE anandhianu WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md572bd7e0ef5045dc284e7bd17f3e4bf6c';
CREATE ROLE anandhimarimuthu;
ALTER ROLE anandhimarimuthu WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE chris;
ALTER ROLE chris WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS;
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md53175bce1d3201d16594cebf9d7eb3f9d';
CREATE ROLE redmine;
ALTER ROLE redmine WITH NOSUPERUSER NOINHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md56a8d9cc5f28054f2a988e6c220ed42ca' VALID UNTIL 'infinity';
CREATE ROLE redmine_default;
ALTER ROLE redmine_default WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md5bd9a7989fba7868c2ec8c8ff9e11910a';
CREATE ROLE supranimbus06;
ALTER ROLE supranimbus06 WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md50a344b06d036c46d93b61206ba16bedf';






--
-- Database creation
--

CREATE DATABASE "Customer_development" WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE "Customer_test" WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE "Library_Management_development" WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE "Library_Management_development_new" WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE "Library_Management_test" WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE app_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE app_test WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE college_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE college_test WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE company_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE company_test WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE myproject_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE myproject_test WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE redmine WITH TEMPLATE = template0 OWNER = redmine;
CREATE DATABASE redmine_default WITH TEMPLATE = template0 OWNER = postgres;
CREATE DATABASE store_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE store_test WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE supranimbus_wiki_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE supranimbus_wiki_test WITH TEMPLATE = template0 OWNER = supranimbus06;
REVOKE ALL ON DATABASE template1 FROM PUBLIC;
REVOKE ALL ON DATABASE template1 FROM postgres;
GRANT ALL ON DATABASE template1 TO postgres;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;
CREATE DATABASE test_app_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE test_appp_development WITH TEMPLATE = template0 OWNER = supranimbus06;
CREATE DATABASE test_appp_test WITH TEMPLATE = template0 OWNER = supranimbus06;


\connect "Customer_development"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: blorgh_products; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE blorgh_products (
    id integer NOT NULL,
    name character varying,
    "Price" integer,
    description character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE blorgh_products OWNER TO supranimbus06;

--
-- Name: blorgh_products_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE blorgh_products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blorgh_products_id_seq OWNER TO supranimbus06;

--
-- Name: blorgh_products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE blorgh_products_id_seq OWNED BY blorgh_products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY blorgh_products ALTER COLUMN id SET DEFAULT nextval('blorgh_products_id_seq'::regclass);


--
-- Data for Name: blorgh_products; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY blorgh_products (id, name, "Price", description, created_at, updated_at) FROM stdin;
1	Chocolate	20	Milk chocolate	2016-10-12 12:11:30.140629	2016-10-12 12:11:30.140629
\.


--
-- Name: blorgh_products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('blorgh_products_id_seq', 1, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20161012111250
\.


--
-- Name: blorgh_products_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY blorgh_products
    ADD CONSTRAINT blorgh_products_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect "Customer_test"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect "Library_Management_development"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE books (
    id integer NOT NULL,
    name character varying,
    author_name character varying,
    edition integer,
    price numeric,
    isbn_no numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE books OWNER TO supranimbus06;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO supranimbus06;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE categories OWNER TO supranimbus06;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO supranimbus06;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE customers (
    id integer NOT NULL,
    name character varying,
    membership_no integer,
    place character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE customers OWNER TO supranimbus06;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO supranimbus06;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY books (id, name, author_name, edition, price, isbn_no, created_at, updated_at) FROM stdin;
1	adad	daafda	2	2535.0	14342345.0	2016-10-28 05:24:57.56959	2016-10-28 05:24:57.56959
2	fsfd	asds	1	1313.0	12131.0	2016-10-28 05:25:08.839635	2016-10-28 05:25:08.839635
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('books_id_seq', 2, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY categories (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('categories_id_seq', 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY customers (id, name, membership_no, place, created_at, updated_at) FROM stdin;
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('customers_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20160806044110
20160806044351
20160806044439
\.


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect "Library_Management_development_new"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE books (
    id integer NOT NULL,
    name character varying,
    author_name character varying,
    edition integer,
    price numeric,
    isbn_no numeric,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE books OWNER TO supranimbus06;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO supranimbus06;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE categories OWNER TO supranimbus06;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE categories_id_seq OWNER TO supranimbus06;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE customers (
    id integer NOT NULL,
    name character varying,
    membership_no integer,
    place character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE customers OWNER TO supranimbus06;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO supranimbus06;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY books (id, name, author_name, edition, price, isbn_no, created_at, updated_at) FROM stdin;
1	adad	daafda	2	2535.0	14342345.0	2016-10-28 05:24:57.56959	2016-10-28 05:24:57.56959
2	fsfd	asds	1	1313.0	12131.0	2016-10-28 05:25:08.839635	2016-10-28 05:25:08.839635
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('books_id_seq', 2, true);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY categories (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('categories_id_seq', 1, false);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY customers (id, name, membership_no, place, created_at, updated_at) FROM stdin;
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('customers_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20160806044110
20160806044351
20160806044439
\.


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect "Library_Management_test"

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect app_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: companies; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE companies (
    id integer NOT NULL,
    name character varying,
    place character varying,
    category integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE companies OWNER TO supranimbus06;

--
-- Name: companies_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE companies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE companies_id_seq OWNER TO supranimbus06;

--
-- Name: companies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE companies_id_seq OWNED BY companies.id;


--
-- Name: company1s; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE company1s (
    id integer NOT NULL,
    name character varying,
    address character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE company1s OWNER TO supranimbus06;

--
-- Name: company1s_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE company1s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE company1s_id_seq OWNER TO supranimbus06;

--
-- Name: company1s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE company1s_id_seq OWNED BY company1s.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE customers (
    id integer NOT NULL,
    customerid integer,
    customername character varying,
    contactname character varying,
    addres character varying,
    city character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE customers OWNER TO supranimbus06;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customers_id_seq OWNER TO supranimbus06;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE customers_id_seq OWNED BY customers.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE employees (
    id integer NOT NULL,
    name character varying,
    "position" character varying,
    salary integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE employees OWNER TO supranimbus06;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE employees_id_seq OWNER TO supranimbus06;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE employees_id_seq OWNED BY employees.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: staffs; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE staffs (
    id integer NOT NULL,
    name character varying,
    "position" character varying,
    salary integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE staffs OWNER TO supranimbus06;

--
-- Name: staffs_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE staffs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE staffs_id_seq OWNER TO supranimbus06;

--
-- Name: staffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE staffs_id_seq OWNED BY staffs.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY companies ALTER COLUMN id SET DEFAULT nextval('companies_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY company1s ALTER COLUMN id SET DEFAULT nextval('company1s_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY customers ALTER COLUMN id SET DEFAULT nextval('customers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY employees ALTER COLUMN id SET DEFAULT nextval('employees_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY staffs ALTER COLUMN id SET DEFAULT nextval('staffs_id_seq'::regclass);


--
-- Data for Name: companies; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY companies (id, name, place, category, created_at, updated_at) FROM stdin;
\.


--
-- Name: companies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('companies_id_seq', 1, true);


--
-- Data for Name: company1s; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY company1s (id, name, address, created_at, updated_at) FROM stdin;
1	dfdg	dfdfd	2016-09-12 06:26:56.407279	2016-09-12 06:26:56.407279
2	Infosys" \nexit\n	chennai	2016-09-12 07:27:56.002566	2016-09-12 07:34:55.617262
3	hj	yjytk	2016-09-12 11:55:15.057342	2016-09-12 11:55:15.057342
\.


--
-- Name: company1s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('company1s_id_seq', 3, true);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY customers (id, customerid, customername, contactname, addres, city, created_at, updated_at) FROM stdin;
1	1	Alfreds Futterkiste	maria anders	obere str.57	berlin	2016-09-12 09:45:39.504177	2016-09-12 09:45:39.504177
2	2	Ana Trujillo Emparedados y helados	Ana Trujillo	Avda. de la Constitución 2222	berlin	2016-09-12 10:03:01.195816	2016-09-12 10:03:01.195816
3	3	Antonio Moreno Taquería	Antonio Moreno	Mataderos 2312	México D.F.	2016-09-12 10:17:09.147866	2016-09-12 10:17:09.147866
4	4	Around the Horn	Thomas Hardy	120 Hanover Sq.	London	2016-09-12 11:00:40.394045	2016-09-12 11:00:40.394045
5	5	Berglunds snabbköp	Christina Berglund	Berguvsvägen 8	Luleå	2016-09-12 11:01:58.571873	2016-09-12 11:01:58.571873
\.


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('customers_id_seq', 5, true);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY employees (id, name, "position", salary, created_at, updated_at) FROM stdin;
1	viji	developer	8000	2016-09-12 05:26:27.901102	2016-09-12 05:26:27.901102
2	raji	cto	100000	2016-09-12 05:27:15.047684	2016-09-12 05:27:15.047684
3	Mani	Developer	1000	2016-09-12 07:26:58.723256	2016-09-12 07:32:50.546324
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('employees_id_seq', 3, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20160912041748
20160912052130
20160912052518
20160912061854
20160912093504
\.


--
-- Data for Name: staffs; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY staffs (id, name, "position", salary, created_at, updated_at) FROM stdin;
\.


--
-- Name: staffs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('staffs_id_seq', 1, false);


--
-- Name: companies_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY companies
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);


--
-- Name: company1s_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY company1s
    ADD CONSTRAINT company1s_pkey PRIMARY KEY (id);


--
-- Name: customers_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: employees_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: staffs_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY staffs
    ADD CONSTRAINT staffs_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect app_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect college_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE departments (
    id integer NOT NULL,
    name character varying,
    department character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE departments OWNER TO supranimbus06;

--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departments_id_seq OWNER TO supranimbus06;

--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE departments_id_seq OWNED BY departments.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: tests; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE tests (
    id integer NOT NULL,
    name character varying,
    "Year" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tests OWNER TO supranimbus06;

--
-- Name: tests_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE tests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tests_id_seq OWNER TO supranimbus06;

--
-- Name: tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE tests_id_seq OWNED BY tests.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY departments ALTER COLUMN id SET DEFAULT nextval('departments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY tests ALTER COLUMN id SET DEFAULT nextval('tests_id_seq'::regclass);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY departments (id, name, department, year, created_at, updated_at) FROM stdin;
1	anuanandhi	cse	2016	2016-09-07 07:16:32.258119	2016-09-07 07:38:52.221243
2	maniaru	MCA	2	2016-09-07 07:23:21.535093	2016-09-07 07:39:34.425471
4	viji	mba	2006	2016-09-07 07:40:15.948916	2016-09-07 07:40:15.948916
\.


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('departments_id_seq', 4, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20160907040737
20160912040702
\.


--
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY tests (id, name, "Year", created_at, updated_at) FROM stdin;
\.


--
-- Name: tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('tests_id_seq', 1, false);


--
-- Name: departments_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: tests_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect college_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect company_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect company_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect myproject_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE books (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE books OWNER TO supranimbus06;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO supranimbus06;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY books (id, created_at, updated_at) FROM stdin;
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('books_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20160906125124
\.


--
-- Name: books_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect myproject_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect redmine

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: attachments; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE attachments (
    id integer NOT NULL,
    container_id integer,
    container_type character varying(30),
    filename character varying DEFAULT ''::character varying NOT NULL,
    disk_filename character varying DEFAULT ''::character varying NOT NULL,
    filesize bigint DEFAULT 0 NOT NULL,
    content_type character varying DEFAULT ''::character varying,
    digest character varying(40) DEFAULT ''::character varying NOT NULL,
    downloads integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    description character varying,
    disk_directory character varying
);


ALTER TABLE attachments OWNER TO redmine;

--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE attachments_id_seq OWNER TO redmine;

--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE attachments_id_seq OWNED BY attachments.id;


--
-- Name: auth_sources; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE auth_sources (
    id integer NOT NULL,
    type character varying(30) DEFAULT ''::character varying NOT NULL,
    name character varying(60) DEFAULT ''::character varying NOT NULL,
    host character varying(60),
    port integer,
    account character varying,
    account_password character varying DEFAULT ''::character varying,
    base_dn character varying(255),
    attr_login character varying(30),
    attr_firstname character varying(30),
    attr_lastname character varying(30),
    attr_mail character varying(30),
    onthefly_register boolean DEFAULT false NOT NULL,
    tls boolean DEFAULT false NOT NULL,
    filter text,
    timeout integer
);


ALTER TABLE auth_sources OWNER TO redmine;

--
-- Name: auth_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE auth_sources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_sources_id_seq OWNER TO redmine;

--
-- Name: auth_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE auth_sources_id_seq OWNED BY auth_sources.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE boards (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description character varying,
    "position" integer,
    topics_count integer DEFAULT 0 NOT NULL,
    messages_count integer DEFAULT 0 NOT NULL,
    last_message_id integer,
    parent_id integer
);


ALTER TABLE boards OWNER TO redmine;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE boards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boards_id_seq OWNER TO redmine;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE boards_id_seq OWNED BY boards.id;


--
-- Name: changes; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE changes (
    id integer NOT NULL,
    changeset_id integer NOT NULL,
    action character varying(1) DEFAULT ''::character varying NOT NULL,
    path text NOT NULL,
    from_path text,
    from_revision character varying,
    revision character varying,
    branch character varying
);


ALTER TABLE changes OWNER TO redmine;

--
-- Name: changes_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE changes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE changes_id_seq OWNER TO redmine;

--
-- Name: changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE changes_id_seq OWNED BY changes.id;


--
-- Name: changeset_parents; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE changeset_parents (
    changeset_id integer NOT NULL,
    parent_id integer NOT NULL
);


ALTER TABLE changeset_parents OWNER TO redmine;

--
-- Name: changesets; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE changesets (
    id integer NOT NULL,
    repository_id integer NOT NULL,
    revision character varying NOT NULL,
    committer character varying,
    committed_on timestamp without time zone NOT NULL,
    comments text,
    commit_date date,
    scmid character varying,
    user_id integer
);


ALTER TABLE changesets OWNER TO redmine;

--
-- Name: changesets_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE changesets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE changesets_id_seq OWNER TO redmine;

--
-- Name: changesets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE changesets_id_seq OWNED BY changesets.id;


--
-- Name: changesets_issues; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE changesets_issues (
    changeset_id integer NOT NULL,
    issue_id integer NOT NULL
);


ALTER TABLE changesets_issues OWNER TO redmine;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE comments (
    id integer NOT NULL,
    commented_type character varying(30) DEFAULT ''::character varying NOT NULL,
    commented_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    comments text,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL
);


ALTER TABLE comments OWNER TO redmine;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO redmine;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: custom_field_enumerations; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE custom_field_enumerations (
    id integer NOT NULL,
    custom_field_id integer NOT NULL,
    name character varying NOT NULL,
    active boolean DEFAULT true NOT NULL,
    "position" integer DEFAULT 1 NOT NULL
);


ALTER TABLE custom_field_enumerations OWNER TO redmine;

--
-- Name: custom_field_enumerations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE custom_field_enumerations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE custom_field_enumerations_id_seq OWNER TO redmine;

--
-- Name: custom_field_enumerations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE custom_field_enumerations_id_seq OWNED BY custom_field_enumerations.id;


--
-- Name: custom_fields; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE custom_fields (
    id integer NOT NULL,
    type character varying(30) DEFAULT ''::character varying NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    field_format character varying(30) DEFAULT ''::character varying NOT NULL,
    possible_values text,
    regexp character varying DEFAULT ''::character varying,
    min_length integer,
    max_length integer,
    is_required boolean DEFAULT false NOT NULL,
    is_for_all boolean DEFAULT false NOT NULL,
    is_filter boolean DEFAULT false NOT NULL,
    "position" integer,
    searchable boolean DEFAULT false,
    default_value text,
    editable boolean DEFAULT true,
    visible boolean DEFAULT true NOT NULL,
    multiple boolean DEFAULT false,
    format_store text,
    description text
);


ALTER TABLE custom_fields OWNER TO redmine;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE custom_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE custom_fields_id_seq OWNER TO redmine;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE custom_fields_id_seq OWNED BY custom_fields.id;


--
-- Name: custom_fields_projects; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE custom_fields_projects (
    custom_field_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE custom_fields_projects OWNER TO redmine;

--
-- Name: custom_fields_roles; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE custom_fields_roles (
    custom_field_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE custom_fields_roles OWNER TO redmine;

--
-- Name: custom_fields_trackers; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE custom_fields_trackers (
    custom_field_id integer DEFAULT 0 NOT NULL,
    tracker_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE custom_fields_trackers OWNER TO redmine;

--
-- Name: custom_values; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE custom_values (
    id integer NOT NULL,
    customized_type character varying(30) DEFAULT ''::character varying NOT NULL,
    customized_id integer DEFAULT 0 NOT NULL,
    custom_field_id integer DEFAULT 0 NOT NULL,
    value text
);


ALTER TABLE custom_values OWNER TO redmine;

--
-- Name: custom_values_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE custom_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE custom_values_id_seq OWNER TO redmine;

--
-- Name: custom_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE custom_values_id_seq OWNED BY custom_values.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE documents (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    description text,
    created_on timestamp without time zone
);


ALTER TABLE documents OWNER TO redmine;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE documents_id_seq OWNER TO redmine;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE documents_id_seq OWNED BY documents.id;


--
-- Name: email_addresses; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE email_addresses (
    id integer NOT NULL,
    user_id integer NOT NULL,
    address character varying NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    notify boolean DEFAULT true NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL
);


ALTER TABLE email_addresses OWNER TO redmine;

--
-- Name: email_addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE email_addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE email_addresses_id_seq OWNER TO redmine;

--
-- Name: email_addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE email_addresses_id_seq OWNED BY email_addresses.id;


--
-- Name: enabled_modules; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE enabled_modules (
    id integer NOT NULL,
    project_id integer,
    name character varying NOT NULL
);


ALTER TABLE enabled_modules OWNER TO redmine;

--
-- Name: enabled_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE enabled_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE enabled_modules_id_seq OWNER TO redmine;

--
-- Name: enabled_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE enabled_modules_id_seq OWNED BY enabled_modules.id;


--
-- Name: enumerations; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE enumerations (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    "position" integer,
    is_default boolean DEFAULT false NOT NULL,
    type character varying,
    active boolean DEFAULT true NOT NULL,
    project_id integer,
    parent_id integer,
    position_name character varying(30)
);


ALTER TABLE enumerations OWNER TO redmine;

--
-- Name: enumerations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE enumerations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE enumerations_id_seq OWNER TO redmine;

--
-- Name: enumerations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE enumerations_id_seq OWNED BY enumerations.id;


--
-- Name: groups_users; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE groups_users (
    group_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE groups_users OWNER TO redmine;

--
-- Name: import_items; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE import_items (
    id integer NOT NULL,
    import_id integer NOT NULL,
    "position" integer NOT NULL,
    obj_id integer,
    message text
);


ALTER TABLE import_items OWNER TO redmine;

--
-- Name: import_items_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE import_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE import_items_id_seq OWNER TO redmine;

--
-- Name: import_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE import_items_id_seq OWNED BY import_items.id;


--
-- Name: imports; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE imports (
    id integer NOT NULL,
    type character varying,
    user_id integer NOT NULL,
    filename character varying,
    settings text,
    total_items integer,
    finished boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE imports OWNER TO redmine;

--
-- Name: imports_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE imports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE imports_id_seq OWNER TO redmine;

--
-- Name: imports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE imports_id_seq OWNED BY imports.id;


--
-- Name: issue_categories; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE issue_categories (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    name character varying(60) DEFAULT ''::character varying NOT NULL,
    assigned_to_id integer
);


ALTER TABLE issue_categories OWNER TO redmine;

--
-- Name: issue_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE issue_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_categories_id_seq OWNER TO redmine;

--
-- Name: issue_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE issue_categories_id_seq OWNED BY issue_categories.id;


--
-- Name: issue_relations; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE issue_relations (
    id integer NOT NULL,
    issue_from_id integer NOT NULL,
    issue_to_id integer NOT NULL,
    relation_type character varying DEFAULT ''::character varying NOT NULL,
    delay integer
);


ALTER TABLE issue_relations OWNER TO redmine;

--
-- Name: issue_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE issue_relations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_relations_id_seq OWNER TO redmine;

--
-- Name: issue_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE issue_relations_id_seq OWNED BY issue_relations.id;


--
-- Name: issue_statuses; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE issue_statuses (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    is_closed boolean DEFAULT false NOT NULL,
    "position" integer,
    default_done_ratio integer
);


ALTER TABLE issue_statuses OWNER TO redmine;

--
-- Name: issue_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE issue_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_statuses_id_seq OWNER TO redmine;

--
-- Name: issue_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE issue_statuses_id_seq OWNED BY issue_statuses.id;


--
-- Name: issues; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE issues (
    id integer NOT NULL,
    tracker_id integer NOT NULL,
    project_id integer NOT NULL,
    subject character varying DEFAULT ''::character varying NOT NULL,
    description text,
    due_date date,
    category_id integer,
    status_id integer NOT NULL,
    assigned_to_id integer,
    priority_id integer NOT NULL,
    fixed_version_id integer,
    author_id integer NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    start_date date,
    done_ratio integer DEFAULT 0 NOT NULL,
    estimated_hours double precision,
    parent_id integer,
    root_id integer,
    lft integer,
    rgt integer,
    is_private boolean DEFAULT false NOT NULL,
    closed_on timestamp without time zone
);


ALTER TABLE issues OWNER TO redmine;

--
-- Name: issues_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE issues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issues_id_seq OWNER TO redmine;

--
-- Name: issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE issues_id_seq OWNED BY issues.id;


--
-- Name: journal_details; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE journal_details (
    id integer NOT NULL,
    journal_id integer DEFAULT 0 NOT NULL,
    property character varying(30) DEFAULT ''::character varying NOT NULL,
    prop_key character varying(30) DEFAULT ''::character varying NOT NULL,
    old_value text,
    value text
);


ALTER TABLE journal_details OWNER TO redmine;

--
-- Name: journal_details_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE journal_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE journal_details_id_seq OWNER TO redmine;

--
-- Name: journal_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE journal_details_id_seq OWNED BY journal_details.id;


--
-- Name: journals; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE journals (
    id integer NOT NULL,
    journalized_id integer DEFAULT 0 NOT NULL,
    journalized_type character varying(30) DEFAULT ''::character varying NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    notes text,
    created_on timestamp without time zone NOT NULL,
    private_notes boolean DEFAULT false NOT NULL
);


ALTER TABLE journals OWNER TO redmine;

--
-- Name: journals_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE journals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE journals_id_seq OWNER TO redmine;

--
-- Name: journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE journals_id_seq OWNED BY journals.id;


--
-- Name: member_roles; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE member_roles (
    id integer NOT NULL,
    member_id integer NOT NULL,
    role_id integer NOT NULL,
    inherited_from integer
);


ALTER TABLE member_roles OWNER TO redmine;

--
-- Name: member_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE member_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE member_roles_id_seq OWNER TO redmine;

--
-- Name: member_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE member_roles_id_seq OWNED BY member_roles.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE members (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    mail_notification boolean DEFAULT false NOT NULL
);


ALTER TABLE members OWNER TO redmine;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE members_id_seq OWNER TO redmine;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE messages (
    id integer NOT NULL,
    board_id integer NOT NULL,
    parent_id integer,
    subject character varying DEFAULT ''::character varying NOT NULL,
    content text,
    author_id integer,
    replies_count integer DEFAULT 0 NOT NULL,
    last_reply_id integer,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    locked boolean DEFAULT false,
    sticky integer DEFAULT 0
);


ALTER TABLE messages OWNER TO redmine;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE messages_id_seq OWNER TO redmine;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE news (
    id integer NOT NULL,
    project_id integer,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    summary character varying(255) DEFAULT ''::character varying,
    description text,
    author_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    comments_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE news OWNER TO redmine;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE news_id_seq OWNER TO redmine;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: open_id_authentication_associations; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE open_id_authentication_associations (
    id integer NOT NULL,
    issued integer,
    lifetime integer,
    handle character varying,
    assoc_type character varying,
    server_url bytea,
    secret bytea
);


ALTER TABLE open_id_authentication_associations OWNER TO redmine;

--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE open_id_authentication_associations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE open_id_authentication_associations_id_seq OWNER TO redmine;

--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE open_id_authentication_associations_id_seq OWNED BY open_id_authentication_associations.id;


--
-- Name: open_id_authentication_nonces; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE open_id_authentication_nonces (
    id integer NOT NULL,
    "timestamp" integer NOT NULL,
    server_url character varying,
    salt character varying NOT NULL
);


ALTER TABLE open_id_authentication_nonces OWNER TO redmine;

--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE open_id_authentication_nonces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE open_id_authentication_nonces_id_seq OWNER TO redmine;

--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE open_id_authentication_nonces_id_seq OWNED BY open_id_authentication_nonces.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE projects (
    id integer NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description text,
    homepage character varying DEFAULT ''::character varying,
    is_public boolean DEFAULT true NOT NULL,
    parent_id integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    identifier character varying,
    status integer DEFAULT 1 NOT NULL,
    lft integer,
    rgt integer,
    inherit_members boolean DEFAULT false NOT NULL,
    default_version_id integer
);


ALTER TABLE projects OWNER TO redmine;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE projects_id_seq OWNER TO redmine;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: projects_trackers; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE projects_trackers (
    project_id integer DEFAULT 0 NOT NULL,
    tracker_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE projects_trackers OWNER TO redmine;

--
-- Name: queries; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE queries (
    id integer NOT NULL,
    project_id integer,
    name character varying DEFAULT ''::character varying NOT NULL,
    filters text,
    user_id integer DEFAULT 0 NOT NULL,
    column_names text,
    sort_criteria text,
    group_by character varying,
    type character varying,
    visibility integer DEFAULT 0,
    options text
);


ALTER TABLE queries OWNER TO redmine;

--
-- Name: queries_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE queries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE queries_id_seq OWNER TO redmine;

--
-- Name: queries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE queries_id_seq OWNED BY queries.id;


--
-- Name: queries_roles; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE queries_roles (
    query_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE queries_roles OWNER TO redmine;

--
-- Name: repositories; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE repositories (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    url character varying DEFAULT ''::character varying NOT NULL,
    login character varying(60) DEFAULT ''::character varying,
    password character varying DEFAULT ''::character varying,
    root_url character varying(255) DEFAULT ''::character varying,
    type character varying,
    path_encoding character varying(64),
    log_encoding character varying(64),
    extra_info text,
    identifier character varying,
    is_default boolean DEFAULT false,
    created_on timestamp without time zone
);


ALTER TABLE repositories OWNER TO redmine;

--
-- Name: repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE repositories_id_seq OWNER TO redmine;

--
-- Name: repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE repositories_id_seq OWNED BY repositories.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    "position" integer,
    assignable boolean DEFAULT true,
    builtin integer DEFAULT 0 NOT NULL,
    permissions text,
    issues_visibility character varying(30) DEFAULT 'default'::character varying NOT NULL,
    users_visibility character varying(30) DEFAULT 'all'::character varying NOT NULL,
    time_entries_visibility character varying(30) DEFAULT 'all'::character varying NOT NULL,
    all_roles_managed boolean DEFAULT true NOT NULL,
    settings text
);


ALTER TABLE roles OWNER TO redmine;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_id_seq OWNER TO redmine;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: roles_managed_roles; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE roles_managed_roles (
    role_id integer NOT NULL,
    managed_role_id integer NOT NULL
);


ALTER TABLE roles_managed_roles OWNER TO redmine;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO redmine;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE settings (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    value text,
    updated_on timestamp without time zone
);


ALTER TABLE settings OWNER TO redmine;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE settings_id_seq OWNER TO redmine;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: time_entries; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE time_entries (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    issue_id integer,
    hours double precision NOT NULL,
    comments character varying(1024),
    activity_id integer NOT NULL,
    spent_on date NOT NULL,
    tyear integer NOT NULL,
    tmonth integer NOT NULL,
    tweek integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL
);


ALTER TABLE time_entries OWNER TO redmine;

--
-- Name: time_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE time_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE time_entries_id_seq OWNER TO redmine;

--
-- Name: time_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE time_entries_id_seq OWNED BY time_entries.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE tokens (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    action character varying(30) DEFAULT ''::character varying NOT NULL,
    value character varying(40) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone
);


ALTER TABLE tokens OWNER TO redmine;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tokens_id_seq OWNER TO redmine;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE tokens_id_seq OWNED BY tokens.id;


--
-- Name: trackers; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE trackers (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    is_in_chlog boolean DEFAULT false NOT NULL,
    "position" integer,
    is_in_roadmap boolean DEFAULT true NOT NULL,
    fields_bits integer DEFAULT 0,
    default_status_id integer
);


ALTER TABLE trackers OWNER TO redmine;

--
-- Name: trackers_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE trackers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE trackers_id_seq OWNER TO redmine;

--
-- Name: trackers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE trackers_id_seq OWNED BY trackers.id;


--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE user_preferences (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    others text,
    hide_mail boolean DEFAULT true,
    time_zone character varying
);


ALTER TABLE user_preferences OWNER TO redmine;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE user_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_preferences_id_seq OWNER TO redmine;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE user_preferences_id_seq OWNED BY user_preferences.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE users (
    id integer NOT NULL,
    login character varying DEFAULT ''::character varying NOT NULL,
    hashed_password character varying(40) DEFAULT ''::character varying NOT NULL,
    firstname character varying(30) DEFAULT ''::character varying NOT NULL,
    lastname character varying(255) DEFAULT ''::character varying NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    last_login_on timestamp without time zone,
    language character varying(5) DEFAULT ''::character varying,
    auth_source_id integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    type character varying,
    identity_url character varying,
    mail_notification character varying DEFAULT ''::character varying NOT NULL,
    salt character varying(64),
    must_change_passwd boolean DEFAULT false NOT NULL,
    passwd_changed_on timestamp without time zone
);


ALTER TABLE users OWNER TO redmine;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO redmine;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE versions (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying,
    effective_date date,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    wiki_page_title character varying,
    status character varying DEFAULT 'open'::character varying,
    sharing character varying DEFAULT 'none'::character varying NOT NULL
);


ALTER TABLE versions OWNER TO redmine;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE versions_id_seq OWNER TO redmine;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE versions_id_seq OWNED BY versions.id;


--
-- Name: watchers; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE watchers (
    id integer NOT NULL,
    watchable_type character varying DEFAULT ''::character varying NOT NULL,
    watchable_id integer DEFAULT 0 NOT NULL,
    user_id integer
);


ALTER TABLE watchers OWNER TO redmine;

--
-- Name: watchers_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE watchers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE watchers_id_seq OWNER TO redmine;

--
-- Name: watchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE watchers_id_seq OWNED BY watchers.id;


--
-- Name: wiki_content_versions; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE wiki_content_versions (
    id integer NOT NULL,
    wiki_content_id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    data bytea,
    compression character varying(6) DEFAULT ''::character varying,
    comments character varying(1024) DEFAULT ''::character varying,
    updated_on timestamp without time zone NOT NULL,
    version integer NOT NULL
);


ALTER TABLE wiki_content_versions OWNER TO redmine;

--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE wiki_content_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_content_versions_id_seq OWNER TO redmine;

--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE wiki_content_versions_id_seq OWNED BY wiki_content_versions.id;


--
-- Name: wiki_contents; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE wiki_contents (
    id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    text text,
    comments character varying(1024) DEFAULT ''::character varying,
    updated_on timestamp without time zone NOT NULL,
    version integer NOT NULL
);


ALTER TABLE wiki_contents OWNER TO redmine;

--
-- Name: wiki_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE wiki_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_contents_id_seq OWNER TO redmine;

--
-- Name: wiki_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE wiki_contents_id_seq OWNED BY wiki_contents.id;


--
-- Name: wiki_pages; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE wiki_pages (
    id integer NOT NULL,
    wiki_id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_on timestamp without time zone NOT NULL,
    protected boolean DEFAULT false NOT NULL,
    parent_id integer
);


ALTER TABLE wiki_pages OWNER TO redmine;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE wiki_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_pages_id_seq OWNER TO redmine;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE wiki_pages_id_seq OWNED BY wiki_pages.id;


--
-- Name: wiki_redirects; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE wiki_redirects (
    id integer NOT NULL,
    wiki_id integer NOT NULL,
    title character varying,
    redirects_to character varying,
    created_on timestamp without time zone NOT NULL,
    redirects_to_wiki_id integer NOT NULL
);


ALTER TABLE wiki_redirects OWNER TO redmine;

--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE wiki_redirects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_redirects_id_seq OWNER TO redmine;

--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE wiki_redirects_id_seq OWNED BY wiki_redirects.id;


--
-- Name: wikis; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE wikis (
    id integer NOT NULL,
    project_id integer NOT NULL,
    start_page character varying(255) NOT NULL,
    status integer DEFAULT 1 NOT NULL
);


ALTER TABLE wikis OWNER TO redmine;

--
-- Name: wikis_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE wikis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wikis_id_seq OWNER TO redmine;

--
-- Name: wikis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE wikis_id_seq OWNED BY wikis.id;


--
-- Name: workflows; Type: TABLE; Schema: public; Owner: redmine
--

CREATE TABLE workflows (
    id integer NOT NULL,
    tracker_id integer DEFAULT 0 NOT NULL,
    old_status_id integer DEFAULT 0 NOT NULL,
    new_status_id integer DEFAULT 0 NOT NULL,
    role_id integer DEFAULT 0 NOT NULL,
    assignee boolean DEFAULT false NOT NULL,
    author boolean DEFAULT false NOT NULL,
    type character varying(30),
    field_name character varying(30),
    rule character varying(30)
);


ALTER TABLE workflows OWNER TO redmine;

--
-- Name: workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine
--

CREATE SEQUENCE workflows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workflows_id_seq OWNER TO redmine;

--
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine
--

ALTER SEQUENCE workflows_id_seq OWNED BY workflows.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY attachments ALTER COLUMN id SET DEFAULT nextval('attachments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY auth_sources ALTER COLUMN id SET DEFAULT nextval('auth_sources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY boards ALTER COLUMN id SET DEFAULT nextval('boards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY changes ALTER COLUMN id SET DEFAULT nextval('changes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY changesets ALTER COLUMN id SET DEFAULT nextval('changesets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY custom_field_enumerations ALTER COLUMN id SET DEFAULT nextval('custom_field_enumerations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY custom_fields ALTER COLUMN id SET DEFAULT nextval('custom_fields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY custom_values ALTER COLUMN id SET DEFAULT nextval('custom_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY documents ALTER COLUMN id SET DEFAULT nextval('documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY email_addresses ALTER COLUMN id SET DEFAULT nextval('email_addresses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY enabled_modules ALTER COLUMN id SET DEFAULT nextval('enabled_modules_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY enumerations ALTER COLUMN id SET DEFAULT nextval('enumerations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY import_items ALTER COLUMN id SET DEFAULT nextval('import_items_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY imports ALTER COLUMN id SET DEFAULT nextval('imports_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issue_categories ALTER COLUMN id SET DEFAULT nextval('issue_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issue_relations ALTER COLUMN id SET DEFAULT nextval('issue_relations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issue_statuses ALTER COLUMN id SET DEFAULT nextval('issue_statuses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issues ALTER COLUMN id SET DEFAULT nextval('issues_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY journal_details ALTER COLUMN id SET DEFAULT nextval('journal_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY journals ALTER COLUMN id SET DEFAULT nextval('journals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY member_roles ALTER COLUMN id SET DEFAULT nextval('member_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY open_id_authentication_associations ALTER COLUMN id SET DEFAULT nextval('open_id_authentication_associations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY open_id_authentication_nonces ALTER COLUMN id SET DEFAULT nextval('open_id_authentication_nonces_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY queries ALTER COLUMN id SET DEFAULT nextval('queries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY repositories ALTER COLUMN id SET DEFAULT nextval('repositories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY time_entries ALTER COLUMN id SET DEFAULT nextval('time_entries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY tokens ALTER COLUMN id SET DEFAULT nextval('tokens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY trackers ALTER COLUMN id SET DEFAULT nextval('trackers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY user_preferences ALTER COLUMN id SET DEFAULT nextval('user_preferences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY versions ALTER COLUMN id SET DEFAULT nextval('versions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY watchers ALTER COLUMN id SET DEFAULT nextval('watchers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_content_versions ALTER COLUMN id SET DEFAULT nextval('wiki_content_versions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_contents ALTER COLUMN id SET DEFAULT nextval('wiki_contents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_pages ALTER COLUMN id SET DEFAULT nextval('wiki_pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_redirects ALTER COLUMN id SET DEFAULT nextval('wiki_redirects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wikis ALTER COLUMN id SET DEFAULT nextval('wikis_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY workflows ALTER COLUMN id SET DEFAULT nextval('workflows_id_seq'::regclass);


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY attachments (id, container_id, container_type, filename, disk_filename, filesize, content_type, digest, downloads, author_id, created_on, description, disk_directory) FROM stdin;
1	1	Document	college.tar.gz	160908162503_college.tar.gz	344117	application/gzip	09300e6bb828e39c1f0df50f7d21cd64	0	1	2016-09-08 16:25:03.145614	hfydjhfjhfh	2016/09
2	1	Project	issues.pdf	160909104125_issues.pdf	97265	application/pdf	c25c79e918736e22eb71e012fcd1f97f	0	4	2016-09-09 10:41:25.703369		2016/09
3	\N	\N	Gemfile	160917111920_Gemfile	1510	\N	846c7d2d730c21b7a762c43aa15f3b65	0	1	2016-09-17 11:19:20.086762	\N	2016/09
4	6	WikiPage	Gemfile	160917114322_Gemfile	1510	\N	846c7d2d730c21b7a762c43aa15f3b65	0	16	2016-09-17 11:43:22.503788		2016/09
5	6	WikiPage	README.rdoc	160917114404_README.rdoc	478	\N	cd3025c95c0abdebb5200a4e60d02b3b	0	16	2016-09-17 11:44:04.603354	redme doc	2016/09
6	7	WikiPage	Rakefile	160917114506_Rakefile	249	\N	3f56a3a454f385b883652b625e9e51f0	0	16	2016-09-17 11:45:06.24099		2016/09
7	3	WikiPage	rvm.sh	160917131434_rvm.sh	22865	application/x-shellscript	0b819d4e6c9f0130cf7de44b2317321d	0	16	2016-09-17 13:14:34.856701	cgfhf	2016/09
\.


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('attachments_id_seq', 7, true);


--
-- Data for Name: auth_sources; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY auth_sources (id, type, name, host, port, account, account_password, base_dn, attr_login, attr_firstname, attr_lastname, attr_mail, onthefly_register, tls, filter, timeout) FROM stdin;
\.


--
-- Name: auth_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('auth_sources_id_seq', 1, false);


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY boards (id, project_id, name, description, "position", topics_count, messages_count, last_message_id, parent_id) FROM stdin;
2	4	isi	asfkajsifjawewa	1	0	0	\N	\N
3	1	jgfg	fgfndh	1	0	0	\N	\N
\.


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('boards_id_seq', 3, true);


--
-- Data for Name: changes; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changes (id, changeset_id, action, path, from_path, from_revision, revision, branch) FROM stdin;
\.


--
-- Name: changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('changes_id_seq', 1, false);


--
-- Data for Name: changeset_parents; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changeset_parents (changeset_id, parent_id) FROM stdin;
\.


--
-- Data for Name: changesets; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changesets (id, repository_id, revision, committer, committed_on, comments, commit_date, scmid, user_id) FROM stdin;
\.


--
-- Name: changesets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('changesets_id_seq', 1, false);


--
-- Data for Name: changesets_issues; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY changesets_issues (changeset_id, issue_id) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY comments (id, commented_type, commented_id, author_id, comments, created_on, updated_on) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: custom_field_enumerations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_field_enumerations (id, custom_field_id, name, active, "position") FROM stdin;
\.


--
-- Name: custom_field_enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('custom_field_enumerations_id_seq', 1, false);


--
-- Data for Name: custom_fields; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields (id, type, name, field_format, possible_values, regexp, min_length, max_length, is_required, is_for_all, is_filter, "position", searchable, default_value, editable, visible, multiple, format_store, description) FROM stdin;
1	DocumentCategoryCustomField	fgfgfg	string	\N		\N	\N	f	f	f	1	f		t	t	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: ''\nurl_pattern: ''\n	
2	GroupCustomField	gr	string	\N		\N	\N	f	f	f	1	f		t	t	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: ''\nurl_pattern: ''\n	sdsdsd
3	DocumentCustomField	sfdsfsfs	string	\N		\N	\N	f	f	f	1	f		t	t	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: ''\nurl_pattern: ''\n	ddd
4	GroupCustomField	gfhf	string	\N		5	10	f	f	f	2	f	aaaaaaa	t	t	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: ''\nurl_pattern: ''\n	nbhvh
5	GroupCustomField	hfd	string	\N	 ^[A-Z0-9]+$	3	10	t	f	f	3	f		t	t	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: ''\nurl_pattern: ''\n	fgjfj
6	ProjectCustomField	Duration	string	\N		\N	\N	f	f	f	1	f		t	t	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\ntext_formatting: ''\nurl_pattern: ''\n	ddfdfcdfd
\.


--
-- Name: custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('custom_fields_id_seq', 6, true);


--
-- Data for Name: custom_fields_projects; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields_projects (custom_field_id, project_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields_roles (custom_field_id, role_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_trackers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_fields_trackers (custom_field_id, tracker_id) FROM stdin;
\.


--
-- Data for Name: custom_values; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY custom_values (id, customized_type, customized_id, custom_field_id, value) FROM stdin;
1	Enumeration	10	1	
2	Principal	11	2	mk
3	Principal	11	4	abcdfefkek
4	Principal	12	2	sf
5	Principal	12	4	sgsgrr_sg
\.


--
-- Name: custom_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('custom_values_id_seq', 5, true);


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY documents (id, project_id, category_id, title, description, created_on) FROM stdin;
1	1	6	hjkhk		2016-09-08 16:25:39.86541
\.


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('documents_id_seq', 1, true);


--
-- Data for Name: email_addresses; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY email_addresses (id, user_id, address, is_default, notify, created_on, updated_on) FROM stdin;
1	1	admin@example.net	t	t	2016-09-08 15:39:07.390945	2016-09-08 15:39:07.390945
3	6	e@g.com	t	t	2016-09-08 16:12:19.054416	2016-09-08 16:12:19.054416
4	7	ananth.raj@supranimbus.com	t	t	2016-09-08 16:42:17.422835	2016-09-08 16:42:17.422835
5	8	ananth.raj@supranimbus.co	t	t	2016-09-08 16:44:09.499796	2016-09-08 16:44:09.499796
6	9	chellam.shanmugam@supranimbus.co	t	t	2016-09-08 17:27:51.60224	2016-09-08 17:27:51.60224
7	10	manikandan.arumugam@g.co	t	t	2016-09-09 09:30:40.004865	2016-09-09 09:30:40.004865
8	13	adsf@g.com	t	t	2016-09-09 10:44:52.673848	2016-09-09 10:44:52.673848
9	14	asf@g.com	t	t	2016-09-09 10:51:27.844899	2016-09-09 10:51:27.844899
10	15	a@a.co	t	t	2016-09-09 13:23:01.513157	2016-09-09 13:23:01.513157
11	16	anandha.lakshmi@supranimbus.co	t	t	2016-09-17 11:03:28.078176	2016-09-17 11:03:28.078176
\.


--
-- Name: email_addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('email_addresses_id_seq', 11, true);


--
-- Data for Name: enabled_modules; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY enabled_modules (id, project_id, name) FROM stdin;
1	1	issue_tracking
2	1	time_tracking
3	1	news
4	1	documents
5	1	files
6	1	wiki
7	1	repository
8	1	boards
9	1	calendar
10	1	gantt
11	2	issue_tracking
12	2	time_tracking
13	2	news
14	2	documents
15	2	files
16	2	wiki
17	2	repository
18	2	boards
19	2	calendar
20	2	gantt
21	3	issue_tracking
22	3	time_tracking
23	3	news
24	3	documents
25	3	files
26	3	wiki
27	3	repository
28	3	boards
29	3	calendar
30	3	gantt
31	4	issue_tracking
32	4	time_tracking
33	4	news
34	4	documents
35	4	files
36	4	wiki
37	4	repository
38	4	boards
39	4	calendar
40	4	gantt
41	5	issue_tracking
42	5	time_tracking
43	5	news
44	5	documents
45	5	files
46	5	wiki
47	5	repository
48	5	boards
49	5	calendar
50	5	gantt
51	6	documents
52	6	wiki
53	6	boards
54	7	issue_tracking
55	7	time_tracking
56	7	news
57	7	documents
58	7	files
59	7	wiki
60	7	repository
61	7	boards
62	7	calendar
63	7	gantt
64	8	issue_tracking
65	8	time_tracking
66	8	news
67	8	documents
68	8	files
69	8	wiki
70	8	repository
71	8	boards
72	8	calendar
73	8	gantt
\.


--
-- Name: enabled_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('enabled_modules_id_seq', 73, true);


--
-- Data for Name: enumerations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY enumerations (id, name, "position", is_default, type, active, project_id, parent_id, position_name) FROM stdin;
1	Low	1	f	IssuePriority	t	\N	\N	lowest
2	Normal	2	t	IssuePriority	t	\N	\N	default
3	High	3	f	IssuePriority	t	\N	\N	high3
4	Urgent	4	f	IssuePriority	t	\N	\N	high2
5	Immediate	5	f	IssuePriority	t	\N	\N	highest
6	User documentation	1	f	DocumentCategory	t	\N	\N	\N
7	Technical documentation	2	f	DocumentCategory	t	\N	\N	\N
8	Design	1	f	TimeEntryActivity	t	\N	\N	\N
9	Development	2	f	TimeEntryActivity	t	\N	\N	\N
10	gdsfdfd	3	f	DocumentCategory	t	\N	\N	\N
\.


--
-- Name: enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('enumerations_id_seq', 10, true);


--
-- Data for Name: groups_users; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY groups_users (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: import_items; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY import_items (id, import_id, "position", obj_id, message) FROM stdin;
\.


--
-- Name: import_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('import_items_id_seq', 1, false);


--
-- Data for Name: imports; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY imports (id, type, user_id, filename, settings, total_items, finished, created_at, updated_at) FROM stdin;
\.


--
-- Name: imports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('imports_id_seq', 1, false);


--
-- Data for Name: issue_categories; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issue_categories (id, project_id, name, assigned_to_id) FROM stdin;
1	1	new	\N
\.


--
-- Name: issue_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issue_categories_id_seq', 1, true);


--
-- Data for Name: issue_relations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issue_relations (id, issue_from_id, issue_to_id, relation_type, delay) FROM stdin;
\.


--
-- Name: issue_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issue_relations_id_seq', 1, false);


--
-- Data for Name: issue_statuses; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issue_statuses (id, name, is_closed, "position", default_done_ratio) FROM stdin;
1	New	f	1	\N
2	In Progress	f	2	\N
3	Resolved	f	3	\N
4	Feedback	f	4	\N
5	Closed	t	5	\N
6	Rejected	t	6	\N
7	ffdfd	f	7	\N
\.


--
-- Name: issue_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issue_statuses_id_seq', 7, true);


--
-- Data for Name: issues; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY issues (id, tracker_id, project_id, subject, description, due_date, category_id, status_id, assigned_to_id, priority_id, fixed_version_id, author_id, lock_version, created_on, updated_on, start_date, done_ratio, estimated_hours, parent_id, root_id, lft, rgt, is_private, closed_on) FROM stdin;
1	1	4	yrdy	rsrs	2016-09-09	\N	1	\N	2	\N	4	0	2016-09-09 09:55:32.391047	2016-09-09 09:55:32.391047	2016-09-09	0	0.200000000000000011	\N	1	1	2	f	\N
2	1	1	asfasf		2016-09-09	\N	1	\N	2	\N	4	0	2016-09-09 09:56:51.647731	2016-09-09 09:56:51.647731	2016-09-09	0	0.200000000000000011	\N	2	1	2	f	\N
3	1	5	bnfhfjh,		\N	\N	1	\N	2	\N	9	3	2016-09-09 13:48:41.560911	2016-09-09 13:49:37.974413	2016-09-09	0	\N	\N	3	1	2	f	\N
4	2	1	login		\N	\N	1	\N	2	\N	1	0	2016-09-14 13:11:31.128299	2016-09-14 13:11:31.128299	2016-09-14	0	\N	\N	4	1	2	f	\N
\.


--
-- Name: issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('issues_id_seq', 4, true);


--
-- Data for Name: journal_details; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY journal_details (id, journal_id, property, prop_key, old_value, value) FROM stdin;
\.


--
-- Name: journal_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('journal_details_id_seq', 1, false);


--
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY journals (id, journalized_id, journalized_type, user_id, notes, created_on, private_notes) FROM stdin;
1	3	Issue	9	jchjkhxxv	2016-09-09 13:48:58.415315	f
2	3	Issue	9	Viji Vijay wrote:\r\n> jchjkhxxv\r\n\r\nfgjhfgj	2016-09-09 13:49:32.155919	f
3	3	Issue	9	rutrurtdurtu	2016-09-09 13:49:37.9785	f
\.


--
-- Name: journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('journals_id_seq', 3, true);


--
-- Data for Name: member_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY member_roles (id, member_id, role_id, inherited_from) FROM stdin;
5	5	6	\N
6	6	6	\N
7	7	6	\N
10	10	4	\N
11	11	4	\N
12	12	4	\N
13	13	4	\N
\.


--
-- Name: member_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('member_roles_id_seq', 13, true);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY members (id, user_id, project_id, created_on, mail_notification) FROM stdin;
5	6	4	2016-09-08 16:17:25.875406	f
6	6	1	2016-09-08 16:17:25.880999	f
7	6	2	2016-09-08 16:17:25.886442	f
10	16	4	2016-09-17 11:41:03.330785	f
11	16	3	2016-09-17 11:41:03.352368	f
12	16	7	2016-09-17 12:27:38.043614	f
13	16	8	2016-09-17 12:28:50.715221	f
\.


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('members_id_seq', 13, true);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY messages (id, board_id, parent_id, subject, content, author_id, replies_count, last_reply_id, created_on, updated_on, locked, sticky) FROM stdin;
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('messages_id_seq', 4, true);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY news (id, project_id, title, summary, description, author_id, created_on, comments_count) FROM stdin;
1	4	lk4aehgrlkdghjdkgh		fe'fhjkfhrkjgh	1	2016-09-08 16:23:13.289097	0
2	2	gffdgfdgd	dfgfdgdfg	dfgdfgdfgdfgdf	1	2016-09-08 17:41:52.672776	0
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('news_id_seq', 2, true);


--
-- Data for Name: open_id_authentication_associations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY open_id_authentication_associations (id, issued, lifetime, handle, assoc_type, server_url, secret) FROM stdin;
\.


--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('open_id_authentication_associations_id_seq', 1, false);


--
-- Data for Name: open_id_authentication_nonces; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY open_id_authentication_nonces (id, "timestamp", server_url, salt) FROM stdin;
\.


--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('open_id_authentication_nonces_id_seq', 1, false);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY projects (id, name, description, homepage, is_public, parent_id, created_on, updated_on, identifier, status, lft, rgt, inherit_members, default_version_id) FROM stdin;
5	ddhfdfhfdhfdh	sdgsgsrgrs		t	\N	2016-09-09 10:12:19.963782	2016-09-09 10:12:19.963782	ddhfdfhfdhfdh	1	1	2	f	\N
4	project 1			t	\N	2016-09-08 16:11:37.803363	2016-09-08 16:14:51.226164	project	1	3	6	t	\N
1	Redmine	about redmine	www.example.com	t	\N	2016-09-08 15:48:06.306566	2016-09-08 15:48:06.306566	redmine	1	11	12	f	\N
2	sagjqh	smhdgmds hga	www.google.com	t	\N	2016-09-08 15:48:59.883873	2016-09-08 15:48:59.883873	sagjqh	1	15	16	f	\N
6	Redmine234	adf		t	\N	2016-09-09 10:43:14.396991	2016-09-09 10:43:14.396991	redmine234	1	13	14	f	\N
3	project 1		project1	t	\N	2016-09-08 16:06:16.730819	2016-09-08 16:06:16.730819	project-1	1	7	10	t	\N
7	project1sub			t	3	2016-09-17 12:27:37.893073	2016-09-17 12:27:37.893073	project1sub	1	8	9	f	\N
8	projectsub			t	4	2016-09-17 12:28:50.634017	2016-09-17 12:28:50.634017	projectsub	1	4	5	f	\N
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('projects_id_seq', 8, true);


--
-- Data for Name: projects_trackers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY projects_trackers (project_id, tracker_id) FROM stdin;
1	1
1	2
1	3
2	1
2	2
2	3
3	1
3	2
3	3
4	1
4	2
4	3
5	1
5	2
5	3
6	1
6	2
6	3
7	1
7	2
7	3
8	1
8	2
8	3
\.


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY queries (id, project_id, name, filters, user_id, column_names, sort_criteria, group_by, type, visibility, options) FROM stdin;
\.


--
-- Name: queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('queries_id_seq', 1, true);


--
-- Data for Name: queries_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY queries_roles (query_id, role_id) FROM stdin;
\.


--
-- Data for Name: repositories; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY repositories (id, project_id, url, login, password, root_url, type, path_encoding, log_encoding, extra_info, identifier, is_default, created_on) FROM stdin;
\.


--
-- Name: repositories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('repositories_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY roles (id, name, "position", assignable, builtin, permissions, issues_visibility, users_visibility, time_entries_visibility, all_roles_managed, settings) FROM stdin;
1	Non member	0	t	1	---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default	all	all	t	\N
2	Anonymous	0	t	2	---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_files\n- :browse_repository\n- :view_changesets\n	default	all	all	t	\N
6	Manager	3	t	0	---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :manage_boards\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :view_time_entries\n- :view_wiki_pages\n- :view_wiki_edits\n	default	all	all	f	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: '1'\n  add_issues: '1'\n  edit_issues: '1'\n  add_issue_notes: '1'\n  delete_issues: '1'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n
5	Reporter	2	t	0	---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default	all	all	t	\N
4	Developer	1	t	0	---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :manage_boards\n- :view_calendar\n- :view_documents\n- :add_documents\n- :edit_documents\n- :view_files\n- :manage_files\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :save_queries\n- :manage_categories\n- :manage_news\n- :comment_news\n- :view_changesets\n- :browse_repository\n- :commit_access\n- :manage_related_issues\n- :view_time_entries\n- :log_time\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_wiki\n	default	all	all	t	--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\npermissions_all_trackers: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: '1'\n  add_issues: '1'\n  edit_issues: '1'\n  add_issue_notes: '1'\n  delete_issues: '1'\npermissions_tracker_ids: !ruby/hash:ActiveSupport::HashWithIndifferentAccess\n  view_issues: []\n  add_issues: []\n  edit_issues: []\n  add_issue_notes: []\n  delete_issues: []\n
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('roles_id_seq', 6, true);


--
-- Data for Name: roles_managed_roles; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY roles_managed_roles (role_id, managed_role_id) FROM stdin;
6	6
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY schema_migrations (version) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
20090214190337
20090312172426
20090312194159
20090318181151
20090323224724
20090401221305
20090401231134
20090403001910
20090406161854
20090425161243
20090503121501
20090503121505
20090503121510
20090614091200
20090704172350
20090704172355
20090704172358
20091010093521
20091017212227
20091017212457
20091017212644
20091017212938
20091017213027
20091017213113
20091017213151
20091017213228
20091017213257
20091017213332
20091017213444
20091017213536
20091017213642
20091017213716
20091017213757
20091017213835
20091017213910
20091017214015
20091017214107
20091017214136
20091017214236
20091017214308
20091017214336
20091017214406
20091017214440
20091017214519
20091017214611
20091017214644
20091017214720
20091017214750
20091025163651
20091108092559
20091114105931
20091123212029
20091205124427
20091220183509
20091220183727
20091220184736
20091225164732
20091227112908
20100129193402
20100129193813
20100221100219
20100313132032
20100313171051
20100705164950
20100819172912
20101104182107
20101107130441
20101114115114
20101114115359
20110220160626
20110223180944
20110223180953
20110224000000
20110226120112
20110226120132
20110227125750
20110228000000
20110228000100
20110401192910
20110408103312
20110412065600
20110511000000
20110902000000
20111201201315
20120115143024
20120115143100
20120115143126
20120127174243
20120205111326
20120223110929
20120301153455
20120422150750
20120705074331
20120707064544
20120714122000
20120714122100
20120714122200
20120731164049
20120930112914
20121026002032
20121026003537
20121209123234
20121209123358
20121213084931
20130110122628
20130201184705
20130202090625
20130207175206
20130207181455
20130215073721
20130215111127
20130215111141
20130217094251
20130602092539
20130710182539
20130713104233
20130713111657
20130729070143
20130911193200
20131004113137
20131005100610
20131124175346
20131210180802
20131214094309
20131215104612
20131218183023
20140228130325
20140903143914
20140920094058
20141029181752
20141029181824
20141109112308
20141122124142
20150113194759
20150113211532
20150113213922
20150113213955
20150208105930
20150510083747
20150525103953
20150526183158
20150528084820
20150528092912
20150528093249
20150725112753
20150730122707
20150730122735
20150921204850
20150921210243
20151020182334
20151020182731
20151021184614
20151021185456
20151021190616
20151024082034
20151025072118
20151031095005
20160404080304
20160416072926
20160529063352
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY settings (id, name, value, updated_on) FROM stdin;
1	cross_project_issue_relations	0	2016-09-08 16:41:20.507822
2	link_copied_issue	ask	2016-09-08 16:41:20.519753
3	cross_project_subtasks	tree	2016-09-08 16:41:20.528089
4	issue_group_assignment	0	2016-09-08 16:41:20.536996
5	default_issue_start_date_to_creation_date	1	2016-09-08 16:41:20.54456
6	display_subprojects_issues	1	2016-09-08 16:41:20.553119
7	issue_done_ratio	issue_field	2016-09-08 16:41:20.561388
8	non_working_week_days	---\n- '6'\n- '7'\n	2016-09-08 16:41:20.571097
9	issues_export_limit	500	2016-09-08 16:41:20.57789
10	gantt_items_limit	500	2016-09-08 16:41:20.587199
11	parent_issue_dates	derived	2016-09-08 16:41:20.595896
12	parent_issue_priority	derived	2016-09-08 16:41:20.603054
13	parent_issue_done_ratio	derived	2016-09-08 16:41:20.610947
14	issue_list_default_columns	---\n- tracker\n- status\n- priority\n- subject\n- assigned_to\n- updated_on\n	2016-09-08 16:41:20.620309
15	issue_list_default_totals	--- []\n	2016-09-08 16:41:20.627899
\.


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('settings_id_seq', 15, true);


--
-- Data for Name: time_entries; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY time_entries (id, project_id, user_id, issue_id, hours, comments, activity_id, spent_on, tyear, tmonth, tweek, created_on, updated_on) FROM stdin;
3	1	4	\N	8	i completed home page	9	2016-09-09	2016	9	36	2016-09-09 10:36:37.005383	2016-09-09 10:36:37.005383
2	1	4	2	2		8	2016-09-09	2016	9	36	2016-09-09 09:57:48.98199	2016-09-09 09:57:48.98199
1	1	4	2	1	zvvzdd	8	2016-09-09	2016	9	36	2016-09-09 09:57:36.13244	2016-09-09 09:57:36.13244
\.


--
-- Name: time_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('time_entries_id_seq', 3, true);


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY tokens (id, user_id, action, value, created_on, updated_on) FROM stdin;
55	13	feeds	aef7778815ca2e7f2fdac0384de399dd23f0a303	2016-09-09 10:47:43.224618	2016-09-09 10:47:43.224618
3	1	feeds	78757f49279feb37b582855b6b86375d073afd29	2016-09-08 15:46:47.630576	2016-09-08 15:46:47.630576
14	6	feeds	96c4c10ef0240c0ad99eef216eb4d68a16382393	2016-09-08 16:12:55.575602	2016-09-08 16:12:55.575602
75	16	feeds	166a1034ba65b6f06d72fc808fea1d550b14c82e	2016-09-17 11:04:59.397312	2016-09-17 11:04:59.397312
58	1	session	78f134036aee95ca1d235464f621be6286d936c5	2016-09-09 10:51:51.082118	2016-09-09 10:52:26.479827
70	14	feeds	c3924b50e4c38de1d7cff4f2ca76ddd9dde94de5	2016-09-13 13:12:53.695112	2016-09-13 13:12:53.695112
51	9	feeds	e8fc996f50697c2555c519116e7bebccdce91271	2016-09-09 10:39:25.665776	2016-09-09 10:39:25.665776
35	10	feeds	2b829174cdc5ccf685276dbb121356ad0066887d	2016-09-09 09:35:14.630769	2016-09-09 09:35:14.630769
86	16	session	3d2f9e206765d1e276cb1e8180fb09aa3fe53b0b	2016-09-17 15:58:39.291494	2016-09-19 16:15:39.282653
\.


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('tokens_id_seq', 86, true);


--
-- Data for Name: trackers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY trackers (id, name, is_in_chlog, "position", is_in_roadmap, fields_bits, default_status_id) FROM stdin;
1	Bug	t	1	f	0	1
2	Feature	t	2	t	0	1
3	Support	f	3	f	0	1
\.


--
-- Name: trackers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('trackers_id_seq', 3, true);


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY user_preferences (id, user_id, others, hide_mail, time_zone) FROM stdin;
1	1	---\n:no_self_notified: '1'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: '1'\n:gantt_zoom: 2\n:gantt_months: 6\n	t	
4	7	---\n:no_self_notified: true\n	t	\N
5	8	---\n:no_self_notified: true\n	t	\N
7	10	---\n:no_self_notified: '1'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: '1'\n:my_page_layout:\n  top: []\n  left: []\n  right: []\n	t	
3	6	---\n:no_self_notified: true\n:activity_scope:\n- issues\n- changesets\n- news\n- documents\n- files\n- time_entries\n	t	\N
8	13	---\n:no_self_notified: '1'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: '1'\n	t	
10	15	---\n:no_self_notified: true\n	t	\N
6	9	---\n:no_self_notified: true\n:activity_scope:\n- time_entries\n:my_page_layout:\n  top:\n  - news\n  - calendar\n  left: []\n  right: []\n:gantt_zoom: 3\n:gantt_months: 6\n	t	\N
9	14	---\n:no_self_notified: true\n:gantt_zoom: 2\n:gantt_months: 6\n	t	\N
11	16	---\n:no_self_notified: '1'\n:comments_sorting: asc\n:warn_on_leaving_unsaved: '1'\n:gantt_zoom: 2\n:gantt_months: 6\n	t	
\.


--
-- Name: user_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('user_preferences_id_seq', 11, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY users (id, login, hashed_password, firstname, lastname, admin, status, last_login_on, language, auth_source_id, created_on, updated_on, type, identity_url, mail_notification, salt, must_change_passwd, passwd_changed_on) FROM stdin;
2				Anonymous users	f	1	\N		\N	2016-09-08 15:39:06.905616	2016-09-08 15:39:06.905616	GroupAnonymous	\N		\N	f	\N
3				Non member users	f	1	\N		\N	2016-09-08 15:39:06.927722	2016-09-08 15:39:06.927722	GroupNonMember	\N		\N	f	\N
4				Anonymous	f	0	\N		\N	2016-09-08 15:45:35.943918	2016-09-08 15:45:35.943918	AnonymousUser	\N	only_my_events	\N	f	\N
8	a	74e53b1d84246a2215a5c279a8316a80fc3a08ec	a	b	f	1	\N	en	\N	2016-09-08 16:44:09.496463	2016-09-08 17:30:05.66961	User	\N	only_my_events	d765d83b66033fa8af11b3a98f445e1a	f	2016-09-08 16:44:09
7	ananth	232d589e85c37c5d91b3fb09bf7c9522548b8320	ananth	raj	f	1	\N	en	\N	2016-09-08 16:42:17.417464	2016-09-08 17:30:07.109431	User	\N	only_my_events	f5b595625d7e9076a2c039548d26b1e9	f	2016-09-08 16:42:17
13	abc	aec7e8d26b865306324d38ca8cb9e725766ff63a	wrw	wrw	f	1	2016-09-09 10:47:43.0663	en	\N	2016-09-09 10:44:52.671104	2016-09-09 10:48:00.623505	User	\N	only_my_events	99f26ad49307a5fb1ee5234145664278	f	2016-09-09 10:48:00
10	Mani	9b82b09d60a2d9a87922564a0b62e1170fb1b8ab	M	K	t	1	2016-09-09 09:35:14.478361	en	\N	2016-09-09 09:30:39.975372	2016-09-09 09:35:00.168296	User	\N	only_my_events	3b4b85c1d18616db3dc190498c2feebd	f	2016-09-09 09:30:39
11				yfdr	f	1	\N		\N	2016-09-09 09:45:50.129958	2016-09-09 09:45:50.129958	Group	\N		\N	f	\N
12				sdvd	f	1	\N		\N	2016-09-09 09:46:12.228627	2016-09-09 09:46:12.228627	Group	\N		\N	f	\N
1	admin	e359c5907b25a22f9c947794130798506a2f194a	Redmine	Admin	t	1	2016-09-17 15:57:15.611292		\N	2016-09-08 15:38:48.92444	2016-09-08 15:46:34.075719	User	\N	all	f76bb73efb4f934e2348cbda1739f141	f	2016-09-08 15:46:34
16	anandhi	314193f8b33801ffe2ed64e9022adc6e1bf3f84d	anandhi	snipl	f	1	2016-09-17 15:58:39.253685	en	\N	2016-09-17 11:03:28.054979	2016-09-17 11:04:33.013461	User	\N	only_my_events	882a927aebe873f29d03e9335dcfefb3	f	2016-09-17 11:03:28
15	a12	c1d2aceefe49ebda4d4308d2837f71eb4c61412f	a	a	f	2	\N	en	\N	2016-09-09 13:23:01.45403	2016-09-09 13:23:01.45403	User	\N	only_my_events	7726e360ba54edc8805ebfb985a49cba	f	2016-09-09 13:23:01
9	Viji	cab2e7faa9a97410f5ae54fc76c7e1b307564d2c	Viji	Vijay	f	1	2016-09-09 13:55:35.384064	en	\N	2016-09-08 17:27:51.599421	2016-09-08 17:30:08.075444	User	\N	only_my_events	0ccbd13ad236af33614b9aa748c302a0	f	2016-09-08 17:27:51
6	qwerty	31467fb3b5ccd75d6bba0ee5acaa30ce2bd2abb2	q	w	f	1	2016-09-09 13:59:58.103705	en	\N	2016-09-08 16:12:19.05091	2016-09-09 09:42:10.617714	User	\N	only_my_events	60812a727706dc60a8670a65ee16eb86	f	2016-09-08 16:12:19
14	sup	36d1bd3abfaba1c7d0e9cc75ba268bb8a3c820c4	s	u	f	1	2016-09-14 15:03:10.981671	en	\N	2016-09-09 10:51:27.838391	2016-09-09 13:23:54.569489	User	\N	only_my_events	1808bd3401968c91be1e78621323dd1a	f	2016-09-09 10:51:27
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('users_id_seq', 16, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY versions (id, project_id, name, description, effective_date, created_on, updated_on, wiki_page_title, status, sharing) FROM stdin;
1	5	st		\N	2016-09-09 10:31:17.526163	2016-09-09 10:31:17.526163		open	descendants
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('versions_id_seq', 1, true);


--
-- Data for Name: watchers; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY watchers (id, watchable_type, watchable_id, user_id) FROM stdin;
2	News	1	1
9	News	2	1
\.


--
-- Name: watchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('watchers_id_seq', 15, true);


--
-- Data for Name: wiki_content_versions; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_content_versions (id, wiki_content_id, page_id, author_id, data, compression, comments, updated_on, version) FROM stdin;
1	1	1	1	\\x68312e2057696b6920676a6664676c206a6b6c6768646b6c20686c6b6864736c6b2068726c			2016-09-08 16:26:00.030155	1
2	2	2	4	\\x68312e2057696b69		jlh;om	2016-09-09 10:43:35.804122	1
3	3	3	1	\\x68312e2057696b69		this is wiki	2016-09-17 11:18:13.979071	1
4	4	4	1	\\x68312e204b6a676b6a676b6a676b67			2016-09-17 11:23:09.354807	1
5	5	5	1	\\x77696b692070616765			2016-09-17 11:23:46.797263	1
6	6	6	16	\\x44657369676e		gemfile description	2016-09-17 11:43:39.753619	1
7	7	7	16	\\x417263686974656374		rake file	2016-09-17 11:45:13.887009	1
8	7	7	16	\\x41726368697465637431			2016-09-17 12:21:58.913563	2
9	8	8	16	\\x70726f6a656374312073756277696b69			2016-09-17 12:28:02.236749	1
11	10	10	16	\\x6c69742064657363			2016-09-17 13:56:22.4369	1
\.


--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_content_versions_id_seq', 11, true);


--
-- Data for Name: wiki_contents; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_contents (id, page_id, author_id, text, comments, updated_on, version) FROM stdin;
1	1	1	h1. Wiki gjfdgl jklghdkl hlkhdslk hrl		2016-09-08 16:26:00.030155	1
2	2	4	h1. Wiki	jlh;om	2016-09-09 10:43:35.804122	1
3	3	1	h1. Wiki	this is wiki	2016-09-17 11:18:13.979071	1
4	4	1	h1. Kjgkjgkjgkg		2016-09-17 11:23:09.354807	1
5	5	1	wiki page		2016-09-17 11:23:46.797263	1
6	6	16	Design	gemfile description	2016-09-17 11:43:39.753619	1
7	7	16	Architect1		2016-09-17 12:21:58.913563	2
8	8	16	project1 subwiki		2016-09-17 12:28:02.236749	1
10	10	16	lit desc		2016-09-17 13:56:22.4369	1
\.


--
-- Name: wiki_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_contents_id_seq', 10, true);


--
-- Data for Name: wiki_pages; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_pages (id, wiki_id, title, created_on, protected, parent_id) FROM stdin;
1	1	Wiki	2016-09-08 16:26:00.026119	f	\N
2	6	Wiki	2016-09-09 10:43:35.781579	f	\N
4	4	Kjgkjgkjgkg	2016-09-17 11:23:09.352322	f	\N
5	4	Wiki1	2016-09-17 11:23:46.795104	f	\N
7	3	Architect	2016-09-17 11:45:13.884737	f	\N
8	7	Wiki	2016-09-17 12:28:02.234722	f	\N
3	4	Wiki	2016-09-17 11:18:13.890065	f	\N
6	3	Wiki	2016-09-17 11:43:39.749168	f	\N
10	3	Literature	2016-09-17 13:56:22.434299	f	\N
\.


--
-- Name: wiki_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_pages_id_seq', 10, true);


--
-- Data for Name: wiki_redirects; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wiki_redirects (id, wiki_id, title, redirects_to, created_on, redirects_to_wiki_id) FROM stdin;
\.


--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wiki_redirects_id_seq', 1, false);


--
-- Data for Name: wikis; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY wikis (id, project_id, start_page, status) FROM stdin;
1	1	Wiki	1
2	2	Wiki	1
3	3	Wiki	1
4	4	Wiki	1
5	5	Wiki	1
6	6	Wiki	1
7	7	Wiki	1
8	8	Wiki	1
\.


--
-- Name: wikis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('wikis_id_seq', 8, true);


--
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: redmine
--

COPY workflows (id, tracker_id, old_status_id, new_status_id, role_id, assignee, author, type, field_name, rule) FROM stdin;
91	1	1	2	4	f	f	WorkflowTransition	\N	\N
92	1	1	3	4	f	f	WorkflowTransition	\N	\N
93	1	1	4	4	f	f	WorkflowTransition	\N	\N
94	1	1	5	4	f	f	WorkflowTransition	\N	\N
95	1	2	3	4	f	f	WorkflowTransition	\N	\N
96	1	2	4	4	f	f	WorkflowTransition	\N	\N
97	1	2	5	4	f	f	WorkflowTransition	\N	\N
98	1	3	2	4	f	f	WorkflowTransition	\N	\N
99	1	3	4	4	f	f	WorkflowTransition	\N	\N
100	1	3	5	4	f	f	WorkflowTransition	\N	\N
101	1	4	2	4	f	f	WorkflowTransition	\N	\N
102	1	4	3	4	f	f	WorkflowTransition	\N	\N
103	1	4	5	4	f	f	WorkflowTransition	\N	\N
104	2	1	2	4	f	f	WorkflowTransition	\N	\N
105	2	1	3	4	f	f	WorkflowTransition	\N	\N
106	2	1	4	4	f	f	WorkflowTransition	\N	\N
107	2	1	5	4	f	f	WorkflowTransition	\N	\N
108	2	2	3	4	f	f	WorkflowTransition	\N	\N
109	2	2	4	4	f	f	WorkflowTransition	\N	\N
110	2	2	5	4	f	f	WorkflowTransition	\N	\N
111	2	3	2	4	f	f	WorkflowTransition	\N	\N
112	2	3	4	4	f	f	WorkflowTransition	\N	\N
113	2	3	5	4	f	f	WorkflowTransition	\N	\N
114	2	4	2	4	f	f	WorkflowTransition	\N	\N
115	2	4	3	4	f	f	WorkflowTransition	\N	\N
116	2	4	5	4	f	f	WorkflowTransition	\N	\N
117	3	1	2	4	f	f	WorkflowTransition	\N	\N
118	3	1	3	4	f	f	WorkflowTransition	\N	\N
119	3	1	4	4	f	f	WorkflowTransition	\N	\N
120	3	1	5	4	f	f	WorkflowTransition	\N	\N
121	3	2	3	4	f	f	WorkflowTransition	\N	\N
122	3	2	4	4	f	f	WorkflowTransition	\N	\N
123	3	2	5	4	f	f	WorkflowTransition	\N	\N
124	3	3	2	4	f	f	WorkflowTransition	\N	\N
125	3	3	4	4	f	f	WorkflowTransition	\N	\N
126	3	3	5	4	f	f	WorkflowTransition	\N	\N
127	3	4	2	4	f	f	WorkflowTransition	\N	\N
128	3	4	3	4	f	f	WorkflowTransition	\N	\N
129	3	4	5	4	f	f	WorkflowTransition	\N	\N
130	1	1	5	5	f	f	WorkflowTransition	\N	\N
131	1	2	5	5	f	f	WorkflowTransition	\N	\N
132	1	3	5	5	f	f	WorkflowTransition	\N	\N
133	1	4	5	5	f	f	WorkflowTransition	\N	\N
134	1	3	4	5	f	f	WorkflowTransition	\N	\N
135	2	1	5	5	f	f	WorkflowTransition	\N	\N
136	2	2	5	5	f	f	WorkflowTransition	\N	\N
137	2	3	5	5	f	f	WorkflowTransition	\N	\N
138	2	4	5	5	f	f	WorkflowTransition	\N	\N
139	2	3	4	5	f	f	WorkflowTransition	\N	\N
140	3	1	5	5	f	f	WorkflowTransition	\N	\N
141	3	2	5	5	f	f	WorkflowTransition	\N	\N
142	3	3	5	5	f	f	WorkflowTransition	\N	\N
143	3	4	5	5	f	f	WorkflowTransition	\N	\N
144	3	3	4	5	f	f	WorkflowTransition	\N	\N
\.


--
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine
--

SELECT pg_catalog.setval('workflows_id_seq', 144, true);


--
-- Name: attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: auth_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY auth_sources
    ADD CONSTRAINT auth_sources_pkey PRIMARY KEY (id);


--
-- Name: boards_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: changes_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY changes
    ADD CONSTRAINT changes_pkey PRIMARY KEY (id);


--
-- Name: changesets_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY changesets
    ADD CONSTRAINT changesets_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: custom_field_enumerations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY custom_field_enumerations
    ADD CONSTRAINT custom_field_enumerations_pkey PRIMARY KEY (id);


--
-- Name: custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY custom_fields
    ADD CONSTRAINT custom_fields_pkey PRIMARY KEY (id);


--
-- Name: custom_values_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY custom_values
    ADD CONSTRAINT custom_values_pkey PRIMARY KEY (id);


--
-- Name: documents_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: email_addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY email_addresses
    ADD CONSTRAINT email_addresses_pkey PRIMARY KEY (id);


--
-- Name: enabled_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY enabled_modules
    ADD CONSTRAINT enabled_modules_pkey PRIMARY KEY (id);


--
-- Name: enumerations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY enumerations
    ADD CONSTRAINT enumerations_pkey PRIMARY KEY (id);


--
-- Name: import_items_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY import_items
    ADD CONSTRAINT import_items_pkey PRIMARY KEY (id);


--
-- Name: imports_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY imports
    ADD CONSTRAINT imports_pkey PRIMARY KEY (id);


--
-- Name: issue_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issue_categories
    ADD CONSTRAINT issue_categories_pkey PRIMARY KEY (id);


--
-- Name: issue_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issue_relations
    ADD CONSTRAINT issue_relations_pkey PRIMARY KEY (id);


--
-- Name: issue_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issue_statuses
    ADD CONSTRAINT issue_statuses_pkey PRIMARY KEY (id);


--
-- Name: issues_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY issues
    ADD CONSTRAINT issues_pkey PRIMARY KEY (id);


--
-- Name: journal_details_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY journal_details
    ADD CONSTRAINT journal_details_pkey PRIMARY KEY (id);


--
-- Name: journals_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY journals
    ADD CONSTRAINT journals_pkey PRIMARY KEY (id);


--
-- Name: member_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY member_roles
    ADD CONSTRAINT member_roles_pkey PRIMARY KEY (id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: open_id_authentication_associations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY open_id_authentication_associations
    ADD CONSTRAINT open_id_authentication_associations_pkey PRIMARY KEY (id);


--
-- Name: open_id_authentication_nonces_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY open_id_authentication_nonces
    ADD CONSTRAINT open_id_authentication_nonces_pkey PRIMARY KEY (id);


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: queries_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY queries
    ADD CONSTRAINT queries_pkey PRIMARY KEY (id);


--
-- Name: repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY repositories
    ADD CONSTRAINT repositories_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: settings_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: time_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY time_entries
    ADD CONSTRAINT time_entries_pkey PRIMARY KEY (id);


--
-- Name: tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: trackers_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY trackers
    ADD CONSTRAINT trackers_pkey PRIMARY KEY (id);


--
-- Name: user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: watchers_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY watchers
    ADD CONSTRAINT watchers_pkey PRIMARY KEY (id);


--
-- Name: wiki_content_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_content_versions
    ADD CONSTRAINT wiki_content_versions_pkey PRIMARY KEY (id);


--
-- Name: wiki_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_contents
    ADD CONSTRAINT wiki_contents_pkey PRIMARY KEY (id);


--
-- Name: wiki_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_pages
    ADD CONSTRAINT wiki_pages_pkey PRIMARY KEY (id);


--
-- Name: wiki_redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wiki_redirects
    ADD CONSTRAINT wiki_redirects_pkey PRIMARY KEY (id);


--
-- Name: wikis_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY wikis
    ADD CONSTRAINT wikis_pkey PRIMARY KEY (id);


--
-- Name: workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine
--

ALTER TABLE ONLY workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- Name: boards_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX boards_project_id ON boards USING btree (project_id);


--
-- Name: changeset_parents_changeset_ids; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX changeset_parents_changeset_ids ON changeset_parents USING btree (changeset_id);


--
-- Name: changeset_parents_parent_ids; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX changeset_parents_parent_ids ON changeset_parents USING btree (parent_id);


--
-- Name: changesets_changeset_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX changesets_changeset_id ON changes USING btree (changeset_id);


--
-- Name: changesets_issues_ids; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX changesets_issues_ids ON changesets_issues USING btree (changeset_id, issue_id);


--
-- Name: changesets_repos_rev; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX changesets_repos_rev ON changesets USING btree (repository_id, revision);


--
-- Name: changesets_repos_scmid; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX changesets_repos_scmid ON changesets USING btree (repository_id, scmid);


--
-- Name: custom_fields_roles_ids; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX custom_fields_roles_ids ON custom_fields_roles USING btree (custom_field_id, role_id);


--
-- Name: custom_values_customized; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX custom_values_customized ON custom_values USING btree (customized_type, customized_id);


--
-- Name: documents_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX documents_project_id ON documents USING btree (project_id);


--
-- Name: enabled_modules_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX enabled_modules_project_id ON enabled_modules USING btree (project_id);


--
-- Name: groups_users_ids; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX groups_users_ids ON groups_users USING btree (group_id, user_id);


--
-- Name: index_attachments_on_author_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_attachments_on_author_id ON attachments USING btree (author_id);


--
-- Name: index_attachments_on_container_id_and_container_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_attachments_on_container_id_and_container_type ON attachments USING btree (container_id, container_type);


--
-- Name: index_attachments_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_attachments_on_created_on ON attachments USING btree (created_on);


--
-- Name: index_auth_sources_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_auth_sources_on_id_and_type ON auth_sources USING btree (id, type);


--
-- Name: index_boards_on_last_message_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_boards_on_last_message_id ON boards USING btree (last_message_id);


--
-- Name: index_changesets_on_committed_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_changesets_on_committed_on ON changesets USING btree (committed_on);


--
-- Name: index_changesets_on_repository_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_changesets_on_repository_id ON changesets USING btree (repository_id);


--
-- Name: index_changesets_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_changesets_on_user_id ON changesets USING btree (user_id);


--
-- Name: index_comments_on_author_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_comments_on_author_id ON comments USING btree (author_id);


--
-- Name: index_comments_on_commented_id_and_commented_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_comments_on_commented_id_and_commented_type ON comments USING btree (commented_id, commented_type);


--
-- Name: index_custom_fields_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_custom_fields_on_id_and_type ON custom_fields USING btree (id, type);


--
-- Name: index_custom_fields_projects_on_custom_field_id_and_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX index_custom_fields_projects_on_custom_field_id_and_project_id ON custom_fields_projects USING btree (custom_field_id, project_id);


--
-- Name: index_custom_fields_trackers_on_custom_field_id_and_tracker_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX index_custom_fields_trackers_on_custom_field_id_and_tracker_id ON custom_fields_trackers USING btree (custom_field_id, tracker_id);


--
-- Name: index_custom_values_on_custom_field_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_custom_values_on_custom_field_id ON custom_values USING btree (custom_field_id);


--
-- Name: index_documents_on_category_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_documents_on_category_id ON documents USING btree (category_id);


--
-- Name: index_documents_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_documents_on_created_on ON documents USING btree (created_on);


--
-- Name: index_email_addresses_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_email_addresses_on_user_id ON email_addresses USING btree (user_id);


--
-- Name: index_enumerations_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_enumerations_on_id_and_type ON enumerations USING btree (id, type);


--
-- Name: index_enumerations_on_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_enumerations_on_project_id ON enumerations USING btree (project_id);


--
-- Name: index_issue_categories_on_assigned_to_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issue_categories_on_assigned_to_id ON issue_categories USING btree (assigned_to_id);


--
-- Name: index_issue_relations_on_issue_from_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issue_relations_on_issue_from_id ON issue_relations USING btree (issue_from_id);


--
-- Name: index_issue_relations_on_issue_from_id_and_issue_to_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX index_issue_relations_on_issue_from_id_and_issue_to_id ON issue_relations USING btree (issue_from_id, issue_to_id);


--
-- Name: index_issue_relations_on_issue_to_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issue_relations_on_issue_to_id ON issue_relations USING btree (issue_to_id);


--
-- Name: index_issue_statuses_on_is_closed; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issue_statuses_on_is_closed ON issue_statuses USING btree (is_closed);


--
-- Name: index_issue_statuses_on_position; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issue_statuses_on_position ON issue_statuses USING btree ("position");


--
-- Name: index_issues_on_assigned_to_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_assigned_to_id ON issues USING btree (assigned_to_id);


--
-- Name: index_issues_on_author_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_author_id ON issues USING btree (author_id);


--
-- Name: index_issues_on_category_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_category_id ON issues USING btree (category_id);


--
-- Name: index_issues_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_created_on ON issues USING btree (created_on);


--
-- Name: index_issues_on_fixed_version_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_fixed_version_id ON issues USING btree (fixed_version_id);


--
-- Name: index_issues_on_priority_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_priority_id ON issues USING btree (priority_id);


--
-- Name: index_issues_on_root_id_and_lft_and_rgt; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_root_id_and_lft_and_rgt ON issues USING btree (root_id, lft, rgt);


--
-- Name: index_issues_on_status_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_status_id ON issues USING btree (status_id);


--
-- Name: index_issues_on_tracker_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_issues_on_tracker_id ON issues USING btree (tracker_id);


--
-- Name: index_journals_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_journals_on_created_on ON journals USING btree (created_on);


--
-- Name: index_journals_on_journalized_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_journals_on_journalized_id ON journals USING btree (journalized_id);


--
-- Name: index_journals_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_journals_on_user_id ON journals USING btree (user_id);


--
-- Name: index_member_roles_on_member_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_member_roles_on_member_id ON member_roles USING btree (member_id);


--
-- Name: index_member_roles_on_role_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_member_roles_on_role_id ON member_roles USING btree (role_id);


--
-- Name: index_members_on_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_members_on_project_id ON members USING btree (project_id);


--
-- Name: index_members_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_members_on_user_id ON members USING btree (user_id);


--
-- Name: index_members_on_user_id_and_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX index_members_on_user_id_and_project_id ON members USING btree (user_id, project_id);


--
-- Name: index_messages_on_author_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_messages_on_author_id ON messages USING btree (author_id);


--
-- Name: index_messages_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_messages_on_created_on ON messages USING btree (created_on);


--
-- Name: index_messages_on_last_reply_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_messages_on_last_reply_id ON messages USING btree (last_reply_id);


--
-- Name: index_news_on_author_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_news_on_author_id ON news USING btree (author_id);


--
-- Name: index_news_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_news_on_created_on ON news USING btree (created_on);


--
-- Name: index_projects_on_lft; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_projects_on_lft ON projects USING btree (lft);


--
-- Name: index_projects_on_rgt; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_projects_on_rgt ON projects USING btree (rgt);


--
-- Name: index_queries_on_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_queries_on_project_id ON queries USING btree (project_id);


--
-- Name: index_queries_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_queries_on_user_id ON queries USING btree (user_id);


--
-- Name: index_repositories_on_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_repositories_on_project_id ON repositories USING btree (project_id);


--
-- Name: index_roles_managed_roles_on_role_id_and_managed_role_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX index_roles_managed_roles_on_role_id_and_managed_role_id ON roles_managed_roles USING btree (role_id, managed_role_id);


--
-- Name: index_settings_on_name; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_settings_on_name ON settings USING btree (name);


--
-- Name: index_time_entries_on_activity_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_time_entries_on_activity_id ON time_entries USING btree (activity_id);


--
-- Name: index_time_entries_on_created_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_time_entries_on_created_on ON time_entries USING btree (created_on);


--
-- Name: index_time_entries_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_time_entries_on_user_id ON time_entries USING btree (user_id);


--
-- Name: index_tokens_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_tokens_on_user_id ON tokens USING btree (user_id);


--
-- Name: index_user_preferences_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_user_preferences_on_user_id ON user_preferences USING btree (user_id);


--
-- Name: index_users_on_auth_source_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_users_on_auth_source_id ON users USING btree (auth_source_id);


--
-- Name: index_users_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_users_on_id_and_type ON users USING btree (id, type);


--
-- Name: index_users_on_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_users_on_type ON users USING btree (type);


--
-- Name: index_versions_on_sharing; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_versions_on_sharing ON versions USING btree (sharing);


--
-- Name: index_watchers_on_user_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_watchers_on_user_id ON watchers USING btree (user_id);


--
-- Name: index_watchers_on_watchable_id_and_watchable_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_watchers_on_watchable_id_and_watchable_type ON watchers USING btree (watchable_id, watchable_type);


--
-- Name: index_wiki_content_versions_on_updated_on; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_wiki_content_versions_on_updated_on ON wiki_content_versions USING btree (updated_on);


--
-- Name: index_wiki_contents_on_author_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_wiki_contents_on_author_id ON wiki_contents USING btree (author_id);


--
-- Name: index_wiki_pages_on_parent_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_wiki_pages_on_parent_id ON wiki_pages USING btree (parent_id);


--
-- Name: index_wiki_pages_on_wiki_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_wiki_pages_on_wiki_id ON wiki_pages USING btree (wiki_id);


--
-- Name: index_wiki_redirects_on_wiki_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_wiki_redirects_on_wiki_id ON wiki_redirects USING btree (wiki_id);


--
-- Name: index_workflows_on_new_status_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_workflows_on_new_status_id ON workflows USING btree (new_status_id);


--
-- Name: index_workflows_on_old_status_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_workflows_on_old_status_id ON workflows USING btree (old_status_id);


--
-- Name: index_workflows_on_role_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX index_workflows_on_role_id ON workflows USING btree (role_id);


--
-- Name: issue_categories_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX issue_categories_project_id ON issue_categories USING btree (project_id);


--
-- Name: issues_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX issues_project_id ON issues USING btree (project_id);


--
-- Name: journal_details_journal_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX journal_details_journal_id ON journal_details USING btree (journal_id);


--
-- Name: journals_journalized_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX journals_journalized_id ON journals USING btree (journalized_id, journalized_type);


--
-- Name: messages_board_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX messages_board_id ON messages USING btree (board_id);


--
-- Name: messages_parent_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX messages_parent_id ON messages USING btree (parent_id);


--
-- Name: news_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX news_project_id ON news USING btree (project_id);


--
-- Name: projects_trackers_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX projects_trackers_project_id ON projects_trackers USING btree (project_id);


--
-- Name: projects_trackers_unique; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX projects_trackers_unique ON projects_trackers USING btree (project_id, tracker_id);


--
-- Name: queries_roles_ids; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX queries_roles_ids ON queries_roles USING btree (query_id, role_id);


--
-- Name: time_entries_issue_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX time_entries_issue_id ON time_entries USING btree (issue_id);


--
-- Name: time_entries_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX time_entries_project_id ON time_entries USING btree (project_id);


--
-- Name: tokens_value; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX tokens_value ON tokens USING btree (value);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: redmine
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: versions_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX versions_project_id ON versions USING btree (project_id);


--
-- Name: watchers_user_id_type; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX watchers_user_id_type ON watchers USING btree (user_id, watchable_type);


--
-- Name: wiki_content_versions_wcid; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX wiki_content_versions_wcid ON wiki_content_versions USING btree (wiki_content_id);


--
-- Name: wiki_contents_page_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX wiki_contents_page_id ON wiki_contents USING btree (page_id);


--
-- Name: wiki_pages_wiki_id_title; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX wiki_pages_wiki_id_title ON wiki_pages USING btree (wiki_id, title);


--
-- Name: wiki_redirects_wiki_id_title; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX wiki_redirects_wiki_id_title ON wiki_redirects USING btree (wiki_id, title);


--
-- Name: wikis_project_id; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX wikis_project_id ON wikis USING btree (project_id);


--
-- Name: wkfs_role_tracker_old_status; Type: INDEX; Schema: public; Owner: redmine
--

CREATE INDEX wkfs_role_tracker_old_status ON workflows USING btree (role_id, tracker_id, old_status_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect redmine_default

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: attachments; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE attachments (
    id integer NOT NULL,
    container_id integer,
    container_type character varying(30) DEFAULT NULL::character varying,
    filename character varying(255) DEFAULT ''::character varying NOT NULL,
    disk_filename character varying(255) DEFAULT ''::character varying NOT NULL,
    filesize integer DEFAULT 0 NOT NULL,
    content_type character varying(255) DEFAULT ''::character varying,
    digest character varying(40) DEFAULT ''::character varying NOT NULL,
    downloads integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    description character varying(255),
    disk_directory character varying(255)
);


ALTER TABLE attachments OWNER TO redmine_default;

--
-- Name: attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE attachments_id_seq OWNER TO redmine_default;

--
-- Name: attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE attachments_id_seq OWNED BY attachments.id;


--
-- Name: auth_sources; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE auth_sources (
    id integer NOT NULL,
    type character varying(30) DEFAULT ''::character varying NOT NULL,
    name character varying(60) DEFAULT ''::character varying NOT NULL,
    host character varying(60),
    port integer,
    account character varying(255),
    account_password character varying(255) DEFAULT ''::character varying,
    base_dn character varying(255),
    attr_login character varying(30),
    attr_firstname character varying(30),
    attr_lastname character varying(30),
    attr_mail character varying(30),
    onthefly_register boolean DEFAULT false NOT NULL,
    tls boolean DEFAULT false NOT NULL,
    filter character varying(255),
    timeout integer
);


ALTER TABLE auth_sources OWNER TO redmine_default;

--
-- Name: auth_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE auth_sources_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_sources_id_seq OWNER TO redmine_default;

--
-- Name: auth_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE auth_sources_id_seq OWNED BY auth_sources.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE boards (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    description character varying(255),
    "position" integer DEFAULT 1,
    topics_count integer DEFAULT 0 NOT NULL,
    messages_count integer DEFAULT 0 NOT NULL,
    last_message_id integer,
    parent_id integer
);


ALTER TABLE boards OWNER TO redmine_default;

--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE boards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boards_id_seq OWNER TO redmine_default;

--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE boards_id_seq OWNED BY boards.id;


--
-- Name: changes; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE changes (
    id integer NOT NULL,
    changeset_id integer NOT NULL,
    action character varying(1) DEFAULT ''::character varying NOT NULL,
    path text NOT NULL,
    from_path text,
    from_revision character varying(255),
    revision character varying(255),
    branch character varying(255)
);


ALTER TABLE changes OWNER TO redmine_default;

--
-- Name: changes_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE changes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE changes_id_seq OWNER TO redmine_default;

--
-- Name: changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE changes_id_seq OWNED BY changes.id;


--
-- Name: changeset_parents; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE changeset_parents (
    changeset_id integer NOT NULL,
    parent_id integer NOT NULL
);


ALTER TABLE changeset_parents OWNER TO redmine_default;

--
-- Name: changesets; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE changesets (
    id integer NOT NULL,
    repository_id integer NOT NULL,
    revision character varying(255) NOT NULL,
    committer character varying(255),
    committed_on timestamp without time zone NOT NULL,
    comments text,
    commit_date date,
    scmid character varying(255),
    user_id integer
);


ALTER TABLE changesets OWNER TO redmine_default;

--
-- Name: changesets_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE changesets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE changesets_id_seq OWNER TO redmine_default;

--
-- Name: changesets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE changesets_id_seq OWNED BY changesets.id;


--
-- Name: changesets_issues; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE changesets_issues (
    changeset_id integer NOT NULL,
    issue_id integer NOT NULL
);


ALTER TABLE changesets_issues OWNER TO redmine_default;

--
-- Name: comments; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE comments (
    id integer NOT NULL,
    commented_type character varying(30) DEFAULT ''::character varying NOT NULL,
    commented_id integer DEFAULT 0 NOT NULL,
    author_id integer DEFAULT 0 NOT NULL,
    comments text,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL
);


ALTER TABLE comments OWNER TO redmine_default;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comments_id_seq OWNER TO redmine_default;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: custom_fields; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE custom_fields (
    id integer NOT NULL,
    type character varying(30) DEFAULT ''::character varying NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    field_format character varying(30) DEFAULT ''::character varying NOT NULL,
    possible_values text,
    regexp character varying(255) DEFAULT ''::character varying,
    min_length integer DEFAULT 0 NOT NULL,
    max_length integer DEFAULT 0 NOT NULL,
    is_required boolean DEFAULT false NOT NULL,
    is_for_all boolean DEFAULT false NOT NULL,
    is_filter boolean DEFAULT false NOT NULL,
    "position" integer DEFAULT 1,
    searchable boolean DEFAULT false,
    default_value text,
    editable boolean DEFAULT true,
    visible boolean DEFAULT true NOT NULL,
    multiple boolean DEFAULT false
);


ALTER TABLE custom_fields OWNER TO redmine_default;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE custom_fields_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE custom_fields_id_seq OWNER TO redmine_default;

--
-- Name: custom_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE custom_fields_id_seq OWNED BY custom_fields.id;


--
-- Name: custom_fields_projects; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE custom_fields_projects (
    custom_field_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE custom_fields_projects OWNER TO redmine_default;

--
-- Name: custom_fields_roles; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE custom_fields_roles (
    custom_field_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE custom_fields_roles OWNER TO redmine_default;

--
-- Name: custom_fields_trackers; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE custom_fields_trackers (
    custom_field_id integer DEFAULT 0 NOT NULL,
    tracker_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE custom_fields_trackers OWNER TO redmine_default;

--
-- Name: custom_values; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE custom_values (
    id integer NOT NULL,
    customized_type character varying(30) DEFAULT ''::character varying NOT NULL,
    customized_id integer DEFAULT 0 NOT NULL,
    custom_field_id integer DEFAULT 0 NOT NULL,
    value text
);


ALTER TABLE custom_values OWNER TO redmine_default;

--
-- Name: custom_values_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE custom_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE custom_values_id_seq OWNER TO redmine_default;

--
-- Name: custom_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE custom_values_id_seq OWNED BY custom_values.id;


--
-- Name: documents; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE documents (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    category_id integer DEFAULT 0 NOT NULL,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    description text,
    created_on timestamp without time zone
);


ALTER TABLE documents OWNER TO redmine_default;

--
-- Name: documents_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE documents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE documents_id_seq OWNER TO redmine_default;

--
-- Name: documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE documents_id_seq OWNED BY documents.id;


--
-- Name: enabled_modules; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE enabled_modules (
    id integer NOT NULL,
    project_id integer,
    name character varying(255) NOT NULL
);


ALTER TABLE enabled_modules OWNER TO redmine_default;

--
-- Name: enabled_modules_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE enabled_modules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE enabled_modules_id_seq OWNER TO redmine_default;

--
-- Name: enabled_modules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE enabled_modules_id_seq OWNED BY enabled_modules.id;


--
-- Name: enumerations; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE enumerations (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    "position" integer DEFAULT 1,
    is_default boolean DEFAULT false NOT NULL,
    type character varying(255),
    active boolean DEFAULT true NOT NULL,
    project_id integer,
    parent_id integer,
    position_name character varying(30)
);


ALTER TABLE enumerations OWNER TO redmine_default;

--
-- Name: enumerations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE enumerations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE enumerations_id_seq OWNER TO redmine_default;

--
-- Name: enumerations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE enumerations_id_seq OWNED BY enumerations.id;


--
-- Name: groups_users; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE groups_users (
    group_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE groups_users OWNER TO redmine_default;

--
-- Name: issue_categories; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE issue_categories (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    assigned_to_id integer
);


ALTER TABLE issue_categories OWNER TO redmine_default;

--
-- Name: issue_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE issue_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_categories_id_seq OWNER TO redmine_default;

--
-- Name: issue_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE issue_categories_id_seq OWNED BY issue_categories.id;


--
-- Name: issue_relations; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE issue_relations (
    id integer NOT NULL,
    issue_from_id integer NOT NULL,
    issue_to_id integer NOT NULL,
    relation_type character varying(255) DEFAULT ''::character varying NOT NULL,
    delay integer
);


ALTER TABLE issue_relations OWNER TO redmine_default;

--
-- Name: issue_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE issue_relations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_relations_id_seq OWNER TO redmine_default;

--
-- Name: issue_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE issue_relations_id_seq OWNED BY issue_relations.id;


--
-- Name: issue_statuses; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE issue_statuses (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    is_closed boolean DEFAULT false NOT NULL,
    is_default boolean DEFAULT false NOT NULL,
    "position" integer DEFAULT 1,
    default_done_ratio integer
);


ALTER TABLE issue_statuses OWNER TO redmine_default;

--
-- Name: issue_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE issue_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issue_statuses_id_seq OWNER TO redmine_default;

--
-- Name: issue_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE issue_statuses_id_seq OWNED BY issue_statuses.id;


--
-- Name: issues; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE issues (
    id integer NOT NULL,
    tracker_id integer NOT NULL,
    project_id integer NOT NULL,
    subject character varying(255) DEFAULT ''::character varying NOT NULL,
    description text,
    due_date date,
    category_id integer,
    status_id integer NOT NULL,
    assigned_to_id integer,
    priority_id integer NOT NULL,
    fixed_version_id integer,
    author_id integer NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    start_date date,
    done_ratio integer DEFAULT 0 NOT NULL,
    estimated_hours double precision,
    parent_id integer,
    root_id integer,
    lft integer,
    rgt integer,
    is_private boolean DEFAULT false NOT NULL,
    closed_on timestamp without time zone
);


ALTER TABLE issues OWNER TO redmine_default;

--
-- Name: issues_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE issues_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE issues_id_seq OWNER TO redmine_default;

--
-- Name: issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE issues_id_seq OWNED BY issues.id;


--
-- Name: journal_details; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE journal_details (
    id integer NOT NULL,
    journal_id integer DEFAULT 0 NOT NULL,
    property character varying(30) DEFAULT ''::character varying NOT NULL,
    prop_key character varying(30) DEFAULT ''::character varying NOT NULL,
    old_value text,
    value text
);


ALTER TABLE journal_details OWNER TO redmine_default;

--
-- Name: journal_details_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE journal_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE journal_details_id_seq OWNER TO redmine_default;

--
-- Name: journal_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE journal_details_id_seq OWNED BY journal_details.id;


--
-- Name: journals; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE journals (
    id integer NOT NULL,
    journalized_id integer DEFAULT 0 NOT NULL,
    journalized_type character varying(30) DEFAULT ''::character varying NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    notes text,
    created_on timestamp without time zone NOT NULL,
    private_notes boolean DEFAULT false NOT NULL
);


ALTER TABLE journals OWNER TO redmine_default;

--
-- Name: journals_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE journals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE journals_id_seq OWNER TO redmine_default;

--
-- Name: journals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE journals_id_seq OWNED BY journals.id;


--
-- Name: member_roles; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE member_roles (
    id integer NOT NULL,
    member_id integer NOT NULL,
    role_id integer NOT NULL,
    inherited_from integer
);


ALTER TABLE member_roles OWNER TO redmine_default;

--
-- Name: member_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE member_roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE member_roles_id_seq OWNER TO redmine_default;

--
-- Name: member_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE member_roles_id_seq OWNED BY member_roles.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE members (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    mail_notification boolean DEFAULT false NOT NULL
);


ALTER TABLE members OWNER TO redmine_default;

--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE members_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE members_id_seq OWNER TO redmine_default;

--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE members_id_seq OWNED BY members.id;


--
-- Name: messages; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE messages (
    id integer NOT NULL,
    board_id integer NOT NULL,
    parent_id integer,
    subject character varying(255) DEFAULT ''::character varying NOT NULL,
    content text,
    author_id integer,
    replies_count integer DEFAULT 0 NOT NULL,
    last_reply_id integer,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL,
    locked boolean DEFAULT false,
    sticky integer DEFAULT 0
);


ALTER TABLE messages OWNER TO redmine_default;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE messages_id_seq OWNER TO redmine_default;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE messages_id_seq OWNED BY messages.id;


--
-- Name: news; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE news (
    id integer NOT NULL,
    project_id integer,
    title character varying(60) DEFAULT ''::character varying NOT NULL,
    summary character varying(255) DEFAULT ''::character varying,
    description text,
    author_id integer DEFAULT 0 NOT NULL,
    created_on timestamp without time zone,
    comments_count integer DEFAULT 0 NOT NULL
);


ALTER TABLE news OWNER TO redmine_default;

--
-- Name: news_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE news_id_seq OWNER TO redmine_default;

--
-- Name: news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE news_id_seq OWNED BY news.id;


--
-- Name: open_id_authentication_associations; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE open_id_authentication_associations (
    id integer NOT NULL,
    issued integer,
    lifetime integer,
    handle character varying(255),
    assoc_type character varying(255),
    server_url bytea,
    secret bytea
);


ALTER TABLE open_id_authentication_associations OWNER TO redmine_default;

--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE open_id_authentication_associations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE open_id_authentication_associations_id_seq OWNER TO redmine_default;

--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE open_id_authentication_associations_id_seq OWNED BY open_id_authentication_associations.id;


--
-- Name: open_id_authentication_nonces; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE open_id_authentication_nonces (
    id integer NOT NULL,
    "timestamp" integer NOT NULL,
    server_url character varying(255),
    salt character varying(255) NOT NULL
);


ALTER TABLE open_id_authentication_nonces OWNER TO redmine_default;

--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE open_id_authentication_nonces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE open_id_authentication_nonces_id_seq OWNER TO redmine_default;

--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE open_id_authentication_nonces_id_seq OWNED BY open_id_authentication_nonces.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE projects (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    description text,
    homepage character varying(255) DEFAULT ''::character varying,
    is_public boolean DEFAULT true NOT NULL,
    parent_id integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    identifier character varying(255),
    status integer DEFAULT 1 NOT NULL,
    lft integer,
    rgt integer,
    inherit_members boolean DEFAULT false NOT NULL
);


ALTER TABLE projects OWNER TO redmine_default;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE projects_id_seq OWNER TO redmine_default;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: projects_trackers; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE projects_trackers (
    project_id integer DEFAULT 0 NOT NULL,
    tracker_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE projects_trackers OWNER TO redmine_default;

--
-- Name: queries; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE queries (
    id integer NOT NULL,
    project_id integer,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    filters text,
    user_id integer DEFAULT 0 NOT NULL,
    column_names text,
    sort_criteria text,
    group_by character varying(255),
    type character varying(255),
    visibility integer DEFAULT 0,
    options text
);


ALTER TABLE queries OWNER TO redmine_default;

--
-- Name: queries_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE queries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE queries_id_seq OWNER TO redmine_default;

--
-- Name: queries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE queries_id_seq OWNED BY queries.id;


--
-- Name: queries_roles; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE queries_roles (
    query_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE queries_roles OWNER TO redmine_default;

--
-- Name: repositories; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE repositories (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    url character varying(255) DEFAULT ''::character varying NOT NULL,
    login character varying(60) DEFAULT ''::character varying,
    password character varying(255) DEFAULT ''::character varying,
    root_url character varying(255) DEFAULT ''::character varying,
    type character varying(255),
    path_encoding character varying(64) DEFAULT NULL::character varying,
    log_encoding character varying(64) DEFAULT NULL::character varying,
    extra_info text,
    identifier character varying(255),
    is_default boolean DEFAULT false,
    created_on timestamp without time zone
);


ALTER TABLE repositories OWNER TO redmine_default;

--
-- Name: repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE repositories_id_seq OWNER TO redmine_default;

--
-- Name: repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE repositories_id_seq OWNED BY repositories.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE roles (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    "position" integer DEFAULT 1,
    assignable boolean DEFAULT true,
    builtin integer DEFAULT 0 NOT NULL,
    permissions text,
    issues_visibility character varying(30) DEFAULT 'default'::character varying NOT NULL
);


ALTER TABLE roles OWNER TO redmine_default;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_id_seq OWNER TO redmine_default;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE schema_migrations OWNER TO redmine_default;

--
-- Name: settings; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE settings (
    id integer NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    value text,
    updated_on timestamp without time zone
);


ALTER TABLE settings OWNER TO redmine_default;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE settings_id_seq OWNER TO redmine_default;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE settings_id_seq OWNED BY settings.id;


--
-- Name: time_entries; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE time_entries (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    issue_id integer,
    hours double precision NOT NULL,
    comments character varying(255),
    activity_id integer NOT NULL,
    spent_on date NOT NULL,
    tyear integer NOT NULL,
    tmonth integer NOT NULL,
    tweek integer NOT NULL,
    created_on timestamp without time zone NOT NULL,
    updated_on timestamp without time zone NOT NULL
);


ALTER TABLE time_entries OWNER TO redmine_default;

--
-- Name: time_entries_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE time_entries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE time_entries_id_seq OWNER TO redmine_default;

--
-- Name: time_entries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE time_entries_id_seq OWNED BY time_entries.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE tokens (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    action character varying(30) DEFAULT ''::character varying NOT NULL,
    value character varying(40) DEFAULT ''::character varying NOT NULL,
    created_on timestamp without time zone NOT NULL
);


ALTER TABLE tokens OWNER TO redmine_default;

--
-- Name: tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tokens_id_seq OWNER TO redmine_default;

--
-- Name: tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE tokens_id_seq OWNED BY tokens.id;


--
-- Name: trackers; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE trackers (
    id integer NOT NULL,
    name character varying(30) DEFAULT ''::character varying NOT NULL,
    is_in_chlog boolean DEFAULT false NOT NULL,
    "position" integer DEFAULT 1,
    is_in_roadmap boolean DEFAULT true NOT NULL,
    fields_bits integer DEFAULT 0
);


ALTER TABLE trackers OWNER TO redmine_default;

--
-- Name: trackers_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE trackers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE trackers_id_seq OWNER TO redmine_default;

--
-- Name: trackers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE trackers_id_seq OWNED BY trackers.id;


--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE user_preferences (
    id integer NOT NULL,
    user_id integer DEFAULT 0 NOT NULL,
    others text,
    hide_mail boolean DEFAULT false,
    time_zone character varying(255)
);


ALTER TABLE user_preferences OWNER TO redmine_default;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE user_preferences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE user_preferences_id_seq OWNER TO redmine_default;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE user_preferences_id_seq OWNED BY user_preferences.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE users (
    id integer NOT NULL,
    login character varying(255) DEFAULT ''::character varying NOT NULL,
    hashed_password character varying(40) DEFAULT ''::character varying NOT NULL,
    firstname character varying(30) DEFAULT ''::character varying NOT NULL,
    lastname character varying(255) DEFAULT ''::character varying NOT NULL,
    mail character varying(60) DEFAULT ''::character varying NOT NULL,
    admin boolean DEFAULT false NOT NULL,
    status integer DEFAULT 1 NOT NULL,
    last_login_on timestamp without time zone,
    language character varying(5) DEFAULT ''::character varying,
    auth_source_id integer,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    type character varying(255),
    identity_url character varying(255),
    mail_notification character varying(255) DEFAULT ''::character varying NOT NULL,
    salt character varying(64),
    must_change_passwd boolean DEFAULT false NOT NULL
);


ALTER TABLE users OWNER TO redmine_default;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO redmine_default;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE versions (
    id integer NOT NULL,
    project_id integer DEFAULT 0 NOT NULL,
    name character varying(255) DEFAULT ''::character varying NOT NULL,
    description character varying(255) DEFAULT ''::character varying,
    effective_date date,
    created_on timestamp without time zone,
    updated_on timestamp without time zone,
    wiki_page_title character varying(255),
    status character varying(255) DEFAULT 'open'::character varying,
    sharing character varying(255) DEFAULT 'none'::character varying NOT NULL
);


ALTER TABLE versions OWNER TO redmine_default;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE versions_id_seq OWNER TO redmine_default;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE versions_id_seq OWNED BY versions.id;


--
-- Name: watchers; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE watchers (
    id integer NOT NULL,
    watchable_type character varying(255) DEFAULT ''::character varying NOT NULL,
    watchable_id integer DEFAULT 0 NOT NULL,
    user_id integer
);


ALTER TABLE watchers OWNER TO redmine_default;

--
-- Name: watchers_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE watchers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE watchers_id_seq OWNER TO redmine_default;

--
-- Name: watchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE watchers_id_seq OWNED BY watchers.id;


--
-- Name: wiki_content_versions; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE wiki_content_versions (
    id integer NOT NULL,
    wiki_content_id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    data bytea,
    compression character varying(6) DEFAULT ''::character varying,
    comments character varying(255) DEFAULT ''::character varying,
    updated_on timestamp without time zone NOT NULL,
    version integer NOT NULL
);


ALTER TABLE wiki_content_versions OWNER TO redmine_default;

--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE wiki_content_versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_content_versions_id_seq OWNER TO redmine_default;

--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE wiki_content_versions_id_seq OWNED BY wiki_content_versions.id;


--
-- Name: wiki_contents; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE wiki_contents (
    id integer NOT NULL,
    page_id integer NOT NULL,
    author_id integer,
    text text,
    comments character varying(255) DEFAULT ''::character varying,
    updated_on timestamp without time zone NOT NULL,
    version integer NOT NULL
);


ALTER TABLE wiki_contents OWNER TO redmine_default;

--
-- Name: wiki_contents_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE wiki_contents_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_contents_id_seq OWNER TO redmine_default;

--
-- Name: wiki_contents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE wiki_contents_id_seq OWNED BY wiki_contents.id;


--
-- Name: wiki_pages; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE wiki_pages (
    id integer NOT NULL,
    wiki_id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_on timestamp without time zone NOT NULL,
    protected boolean DEFAULT false NOT NULL,
    parent_id integer
);


ALTER TABLE wiki_pages OWNER TO redmine_default;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE wiki_pages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_pages_id_seq OWNER TO redmine_default;

--
-- Name: wiki_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE wiki_pages_id_seq OWNED BY wiki_pages.id;


--
-- Name: wiki_redirects; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE wiki_redirects (
    id integer NOT NULL,
    wiki_id integer NOT NULL,
    title character varying(255),
    redirects_to character varying(255),
    created_on timestamp without time zone NOT NULL
);


ALTER TABLE wiki_redirects OWNER TO redmine_default;

--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE wiki_redirects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wiki_redirects_id_seq OWNER TO redmine_default;

--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE wiki_redirects_id_seq OWNED BY wiki_redirects.id;


--
-- Name: wikis; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE wikis (
    id integer NOT NULL,
    project_id integer NOT NULL,
    start_page character varying(255) NOT NULL,
    status integer DEFAULT 1 NOT NULL
);


ALTER TABLE wikis OWNER TO redmine_default;

--
-- Name: wikis_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE wikis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wikis_id_seq OWNER TO redmine_default;

--
-- Name: wikis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE wikis_id_seq OWNED BY wikis.id;


--
-- Name: workflows; Type: TABLE; Schema: public; Owner: redmine_default
--

CREATE TABLE workflows (
    id integer NOT NULL,
    tracker_id integer DEFAULT 0 NOT NULL,
    old_status_id integer DEFAULT 0 NOT NULL,
    new_status_id integer DEFAULT 0 NOT NULL,
    role_id integer DEFAULT 0 NOT NULL,
    assignee boolean DEFAULT false NOT NULL,
    author boolean DEFAULT false NOT NULL,
    type character varying(30),
    field_name character varying(30),
    rule character varying(30)
);


ALTER TABLE workflows OWNER TO redmine_default;

--
-- Name: workflows_id_seq; Type: SEQUENCE; Schema: public; Owner: redmine_default
--

CREATE SEQUENCE workflows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE workflows_id_seq OWNER TO redmine_default;

--
-- Name: workflows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: redmine_default
--

ALTER SEQUENCE workflows_id_seq OWNED BY workflows.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY attachments ALTER COLUMN id SET DEFAULT nextval('attachments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY auth_sources ALTER COLUMN id SET DEFAULT nextval('auth_sources_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY boards ALTER COLUMN id SET DEFAULT nextval('boards_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY changes ALTER COLUMN id SET DEFAULT nextval('changes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY changesets ALTER COLUMN id SET DEFAULT nextval('changesets_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY custom_fields ALTER COLUMN id SET DEFAULT nextval('custom_fields_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY custom_values ALTER COLUMN id SET DEFAULT nextval('custom_values_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY documents ALTER COLUMN id SET DEFAULT nextval('documents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY enabled_modules ALTER COLUMN id SET DEFAULT nextval('enabled_modules_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY enumerations ALTER COLUMN id SET DEFAULT nextval('enumerations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issue_categories ALTER COLUMN id SET DEFAULT nextval('issue_categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issue_relations ALTER COLUMN id SET DEFAULT nextval('issue_relations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issue_statuses ALTER COLUMN id SET DEFAULT nextval('issue_statuses_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issues ALTER COLUMN id SET DEFAULT nextval('issues_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY journal_details ALTER COLUMN id SET DEFAULT nextval('journal_details_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY journals ALTER COLUMN id SET DEFAULT nextval('journals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY member_roles ALTER COLUMN id SET DEFAULT nextval('member_roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY members ALTER COLUMN id SET DEFAULT nextval('members_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY messages ALTER COLUMN id SET DEFAULT nextval('messages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY news ALTER COLUMN id SET DEFAULT nextval('news_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY open_id_authentication_associations ALTER COLUMN id SET DEFAULT nextval('open_id_authentication_associations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY open_id_authentication_nonces ALTER COLUMN id SET DEFAULT nextval('open_id_authentication_nonces_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY queries ALTER COLUMN id SET DEFAULT nextval('queries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY repositories ALTER COLUMN id SET DEFAULT nextval('repositories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY settings ALTER COLUMN id SET DEFAULT nextval('settings_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY time_entries ALTER COLUMN id SET DEFAULT nextval('time_entries_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY tokens ALTER COLUMN id SET DEFAULT nextval('tokens_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY trackers ALTER COLUMN id SET DEFAULT nextval('trackers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY user_preferences ALTER COLUMN id SET DEFAULT nextval('user_preferences_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY versions ALTER COLUMN id SET DEFAULT nextval('versions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY watchers ALTER COLUMN id SET DEFAULT nextval('watchers_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_content_versions ALTER COLUMN id SET DEFAULT nextval('wiki_content_versions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_contents ALTER COLUMN id SET DEFAULT nextval('wiki_contents_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_pages ALTER COLUMN id SET DEFAULT nextval('wiki_pages_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_redirects ALTER COLUMN id SET DEFAULT nextval('wiki_redirects_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wikis ALTER COLUMN id SET DEFAULT nextval('wikis_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY workflows ALTER COLUMN id SET DEFAULT nextval('workflows_id_seq'::regclass);


--
-- Data for Name: attachments; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY attachments (id, container_id, container_type, filename, disk_filename, filesize, content_type, digest, downloads, author_id, created_on, description, disk_directory) FROM stdin;
\.


--
-- Name: attachments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('attachments_id_seq', 1, false);


--
-- Data for Name: auth_sources; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY auth_sources (id, type, name, host, port, account, account_password, base_dn, attr_login, attr_firstname, attr_lastname, attr_mail, onthefly_register, tls, filter, timeout) FROM stdin;
\.


--
-- Name: auth_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('auth_sources_id_seq', 1, false);


--
-- Data for Name: boards; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY boards (id, project_id, name, description, "position", topics_count, messages_count, last_message_id, parent_id) FROM stdin;
\.


--
-- Name: boards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('boards_id_seq', 1, false);


--
-- Data for Name: changes; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY changes (id, changeset_id, action, path, from_path, from_revision, revision, branch) FROM stdin;
\.


--
-- Name: changes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('changes_id_seq', 1, false);


--
-- Data for Name: changeset_parents; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY changeset_parents (changeset_id, parent_id) FROM stdin;
\.


--
-- Data for Name: changesets; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY changesets (id, repository_id, revision, committer, committed_on, comments, commit_date, scmid, user_id) FROM stdin;
\.


--
-- Name: changesets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('changesets_id_seq', 1, false);


--
-- Data for Name: changesets_issues; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY changesets_issues (changeset_id, issue_id) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY comments (id, commented_type, commented_id, author_id, comments, created_on, updated_on) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: custom_fields; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY custom_fields (id, type, name, field_format, possible_values, regexp, min_length, max_length, is_required, is_for_all, is_filter, "position", searchable, default_value, editable, visible, multiple) FROM stdin;
\.


--
-- Name: custom_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('custom_fields_id_seq', 1, false);


--
-- Data for Name: custom_fields_projects; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY custom_fields_projects (custom_field_id, project_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_roles; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY custom_fields_roles (custom_field_id, role_id) FROM stdin;
\.


--
-- Data for Name: custom_fields_trackers; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY custom_fields_trackers (custom_field_id, tracker_id) FROM stdin;
\.


--
-- Data for Name: custom_values; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY custom_values (id, customized_type, customized_id, custom_field_id, value) FROM stdin;
\.


--
-- Name: custom_values_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('custom_values_id_seq', 1, false);


--
-- Data for Name: documents; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY documents (id, project_id, category_id, title, description, created_on) FROM stdin;
\.


--
-- Name: documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('documents_id_seq', 1, false);


--
-- Data for Name: enabled_modules; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY enabled_modules (id, project_id, name) FROM stdin;
\.


--
-- Name: enabled_modules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('enabled_modules_id_seq', 1, false);


--
-- Data for Name: enumerations; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY enumerations (id, name, "position", is_default, type, active, project_id, parent_id, position_name) FROM stdin;
1	Low	1	f	IssuePriority	t	\N	\N	lowest
2	Normal	2	t	IssuePriority	t	\N	\N	default
3	High	3	f	IssuePriority	t	\N	\N	high3
4	Urgent	4	f	IssuePriority	t	\N	\N	high2
5	Immediate	5	f	IssuePriority	t	\N	\N	highest
6	User documentation	1	f	DocumentCategory	t	\N	\N	\N
7	Technical documentation	2	f	DocumentCategory	t	\N	\N	\N
8	Design	1	f	TimeEntryActivity	t	\N	\N	\N
9	Development	2	f	TimeEntryActivity	t	\N	\N	\N
\.


--
-- Name: enumerations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('enumerations_id_seq', 9, true);


--
-- Data for Name: groups_users; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY groups_users (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: issue_categories; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY issue_categories (id, project_id, name, assigned_to_id) FROM stdin;
\.


--
-- Name: issue_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('issue_categories_id_seq', 1, false);


--
-- Data for Name: issue_relations; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY issue_relations (id, issue_from_id, issue_to_id, relation_type, delay) FROM stdin;
\.


--
-- Name: issue_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('issue_relations_id_seq', 1, false);


--
-- Data for Name: issue_statuses; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY issue_statuses (id, name, is_closed, is_default, "position", default_done_ratio) FROM stdin;
1	New	f	t	1	\N
2	In Progress	f	f	2	\N
3	Resolved	f	f	3	\N
4	Feedback	f	f	4	\N
5	Closed	t	f	5	\N
6	Rejected	t	f	6	\N
\.


--
-- Name: issue_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('issue_statuses_id_seq', 6, true);


--
-- Data for Name: issues; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY issues (id, tracker_id, project_id, subject, description, due_date, category_id, status_id, assigned_to_id, priority_id, fixed_version_id, author_id, lock_version, created_on, updated_on, start_date, done_ratio, estimated_hours, parent_id, root_id, lft, rgt, is_private, closed_on) FROM stdin;
\.


--
-- Name: issues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('issues_id_seq', 1, false);


--
-- Data for Name: journal_details; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY journal_details (id, journal_id, property, prop_key, old_value, value) FROM stdin;
\.


--
-- Name: journal_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('journal_details_id_seq', 1, false);


--
-- Data for Name: journals; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY journals (id, journalized_id, journalized_type, user_id, notes, created_on, private_notes) FROM stdin;
\.


--
-- Name: journals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('journals_id_seq', 1, false);


--
-- Data for Name: member_roles; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY member_roles (id, member_id, role_id, inherited_from) FROM stdin;
\.


--
-- Name: member_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('member_roles_id_seq', 1, false);


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY members (id, user_id, project_id, created_on, mail_notification) FROM stdin;
\.


--
-- Name: members_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('members_id_seq', 1, false);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY messages (id, board_id, parent_id, subject, content, author_id, replies_count, last_reply_id, created_on, updated_on, locked, sticky) FROM stdin;
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('messages_id_seq', 1, false);


--
-- Data for Name: news; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY news (id, project_id, title, summary, description, author_id, created_on, comments_count) FROM stdin;
\.


--
-- Name: news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('news_id_seq', 1, false);


--
-- Data for Name: open_id_authentication_associations; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY open_id_authentication_associations (id, issued, lifetime, handle, assoc_type, server_url, secret) FROM stdin;
\.


--
-- Name: open_id_authentication_associations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('open_id_authentication_associations_id_seq', 1, false);


--
-- Data for Name: open_id_authentication_nonces; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY open_id_authentication_nonces (id, "timestamp", server_url, salt) FROM stdin;
\.


--
-- Name: open_id_authentication_nonces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('open_id_authentication_nonces_id_seq', 1, false);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY projects (id, name, description, homepage, is_public, parent_id, created_on, updated_on, identifier, status, lft, rgt, inherit_members) FROM stdin;
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('projects_id_seq', 1, false);


--
-- Data for Name: projects_trackers; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY projects_trackers (project_id, tracker_id) FROM stdin;
\.


--
-- Data for Name: queries; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY queries (id, project_id, name, filters, user_id, column_names, sort_criteria, group_by, type, visibility, options) FROM stdin;
\.


--
-- Name: queries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('queries_id_seq', 1, false);


--
-- Data for Name: queries_roles; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY queries_roles (query_id, role_id) FROM stdin;
\.


--
-- Data for Name: repositories; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY repositories (id, project_id, url, login, password, root_url, type, path_encoding, log_encoding, extra_info, identifier, is_default, created_on) FROM stdin;
\.


--
-- Name: repositories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('repositories_id_seq', 1, false);


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY roles (id, name, "position", assignable, builtin, permissions, issues_visibility) FROM stdin;
3	Manager	3	t	0	---\n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_news\n- :comment_news\n- :add_documents\n- :edit_documents\n- :delete_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :view_gantt\n	all
4	Developer	4	t	0	---\n- :manage_versions\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :view_private_notes\n- :set_notes_private\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :manage_files\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n	default
5	Reporter	5	t	0	---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :log_time\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :edit_own_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default
1	Non member	1	t	1	---\n- :view_issues\n- :add_issues\n- :add_issue_notes\n- :save_queries\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :comment_news\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :add_messages\n- :view_files\n- :browse_repository\n- :view_changesets\n	default
2	Anonymous	2	t	2	---\n- :view_issues\n- :view_gantt\n- :view_calendar\n- :view_time_entries\n- :view_documents\n- :view_wiki_pages\n- :view_wiki_edits\n- :view_files\n- :browse_repository\n- :view_changesets\n	default
\.


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('roles_id_seq', 5, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY schema_migrations (version) FROM stdin;
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
20090214190337
20090312172426
20090312194159
20090318181151
20090323224724
20090401221305
20090401231134
20090403001910
20090406161854
20090425161243
20090503121501
20090503121505
20090503121510
20090614091200
20090704172350
20090704172355
20090704172358
20091010093521
20091017212227
20091017212457
20091017212644
20091017212938
20091017213027
20091017213113
20091017213151
20091017213228
20091017213257
20091017213332
20091017213444
20091017213536
20091017213642
20091017213716
20091017213757
20091017213835
20091017213910
20091017214015
20091017214107
20091017214136
20091017214236
20091017214308
20091017214336
20091017214406
20091017214440
20091017214519
20091017214611
20091017214644
20091017214720
20091017214750
20091025163651
20091108092559
20091114105931
20091123212029
20091205124427
20091220183509
20091220183727
20091220184736
20091225164732
20091227112908
20100129193402
20100129193813
20100221100219
20100313132032
20100313171051
20100705164950
20100819172912
20101104182107
20101107130441
20101114115114
20101114115359
20110220160626
20110223180944
20110223180953
20110224000000
20110226120112
20110226120132
20110227125750
20110228000000
20110228000100
20110401192910
20110408103312
20110412065600
20110511000000
20110902000000
20111201201315
20120115143024
20120115143100
20120115143126
20120127174243
20120205111326
20120223110929
20120301153455
20120422150750
20120705074331
20120707064544
20120714122000
20120714122100
20120714122200
20120731164049
20120930112914
20121026002032
20121026003537
20121209123234
20121209123358
20121213084931
20130110122628
20130201184705
20130202090625
20130207175206
20130207181455
20130215073721
20130215111127
20130215111141
20130217094251
20130602092539
20130710182539
20130713104233
20130713111657
20130729070143
20130911193200
20131004113137
20131005100610
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY settings (id, name, value, updated_on) FROM stdin;
\.


--
-- Name: settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('settings_id_seq', 1, false);


--
-- Data for Name: time_entries; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY time_entries (id, project_id, user_id, issue_id, hours, comments, activity_id, spent_on, tyear, tmonth, tweek, created_on, updated_on) FROM stdin;
\.


--
-- Name: time_entries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('time_entries_id_seq', 1, false);


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY tokens (id, user_id, action, value, created_on) FROM stdin;
\.


--
-- Name: tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('tokens_id_seq', 1, false);


--
-- Data for Name: trackers; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY trackers (id, name, is_in_chlog, "position", is_in_roadmap, fields_bits) FROM stdin;
1	Bug	t	1	f	0
2	Feature	t	2	t	0
3	Support	f	3	f	0
\.


--
-- Name: trackers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('trackers_id_seq', 3, true);


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY user_preferences (id, user_id, others, hide_mail, time_zone) FROM stdin;
\.


--
-- Name: user_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('user_preferences_id_seq', 1, false);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY users (id, login, hashed_password, firstname, lastname, mail, admin, status, last_login_on, language, auth_source_id, created_on, updated_on, type, identity_url, mail_notification, salt, must_change_passwd) FROM stdin;
1	admin	c94423030e2a48d3a4e7d2d305c93e7d0225eea2	Redmine	Admin	admin@example.net	t	1	\N		\N	2016-09-08 09:56:52.118304	2016-09-08 09:56:52.118304	User	\N	all	bcfe17beaf5bb6f7868bf8d48c000124	f
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY versions (id, project_id, name, description, effective_date, created_on, updated_on, wiki_page_title, status, sharing) FROM stdin;
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('versions_id_seq', 1, false);


--
-- Data for Name: watchers; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY watchers (id, watchable_type, watchable_id, user_id) FROM stdin;
\.


--
-- Name: watchers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('watchers_id_seq', 1, false);


--
-- Data for Name: wiki_content_versions; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY wiki_content_versions (id, wiki_content_id, page_id, author_id, data, compression, comments, updated_on, version) FROM stdin;
\.


--
-- Name: wiki_content_versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('wiki_content_versions_id_seq', 1, false);


--
-- Data for Name: wiki_contents; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY wiki_contents (id, page_id, author_id, text, comments, updated_on, version) FROM stdin;
\.


--
-- Name: wiki_contents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('wiki_contents_id_seq', 1, false);


--
-- Data for Name: wiki_pages; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY wiki_pages (id, wiki_id, title, created_on, protected, parent_id) FROM stdin;
\.


--
-- Name: wiki_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('wiki_pages_id_seq', 1, false);


--
-- Data for Name: wiki_redirects; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY wiki_redirects (id, wiki_id, title, redirects_to, created_on) FROM stdin;
\.


--
-- Name: wiki_redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('wiki_redirects_id_seq', 1, false);


--
-- Data for Name: wikis; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY wikis (id, project_id, start_page, status) FROM stdin;
\.


--
-- Name: wikis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('wikis_id_seq', 1, false);


--
-- Data for Name: workflows; Type: TABLE DATA; Schema: public; Owner: redmine_default
--

COPY workflows (id, tracker_id, old_status_id, new_status_id, role_id, assignee, author, type, field_name, rule) FROM stdin;
1	1	1	2	3	f	f	WorkflowTransition	\N	\N
2	1	1	3	3	f	f	WorkflowTransition	\N	\N
3	1	1	4	3	f	f	WorkflowTransition	\N	\N
4	1	1	5	3	f	f	WorkflowTransition	\N	\N
5	1	1	6	3	f	f	WorkflowTransition	\N	\N
6	1	2	1	3	f	f	WorkflowTransition	\N	\N
7	1	2	3	3	f	f	WorkflowTransition	\N	\N
8	1	2	4	3	f	f	WorkflowTransition	\N	\N
9	1	2	5	3	f	f	WorkflowTransition	\N	\N
10	1	2	6	3	f	f	WorkflowTransition	\N	\N
11	1	3	1	3	f	f	WorkflowTransition	\N	\N
12	1	3	2	3	f	f	WorkflowTransition	\N	\N
13	1	3	4	3	f	f	WorkflowTransition	\N	\N
14	1	3	5	3	f	f	WorkflowTransition	\N	\N
15	1	3	6	3	f	f	WorkflowTransition	\N	\N
16	1	4	1	3	f	f	WorkflowTransition	\N	\N
17	1	4	2	3	f	f	WorkflowTransition	\N	\N
18	1	4	3	3	f	f	WorkflowTransition	\N	\N
19	1	4	5	3	f	f	WorkflowTransition	\N	\N
20	1	4	6	3	f	f	WorkflowTransition	\N	\N
21	1	5	1	3	f	f	WorkflowTransition	\N	\N
22	1	5	2	3	f	f	WorkflowTransition	\N	\N
23	1	5	3	3	f	f	WorkflowTransition	\N	\N
24	1	5	4	3	f	f	WorkflowTransition	\N	\N
25	1	5	6	3	f	f	WorkflowTransition	\N	\N
26	1	6	1	3	f	f	WorkflowTransition	\N	\N
27	1	6	2	3	f	f	WorkflowTransition	\N	\N
28	1	6	3	3	f	f	WorkflowTransition	\N	\N
29	1	6	4	3	f	f	WorkflowTransition	\N	\N
30	1	6	5	3	f	f	WorkflowTransition	\N	\N
31	2	1	2	3	f	f	WorkflowTransition	\N	\N
32	2	1	3	3	f	f	WorkflowTransition	\N	\N
33	2	1	4	3	f	f	WorkflowTransition	\N	\N
34	2	1	5	3	f	f	WorkflowTransition	\N	\N
35	2	1	6	3	f	f	WorkflowTransition	\N	\N
36	2	2	1	3	f	f	WorkflowTransition	\N	\N
37	2	2	3	3	f	f	WorkflowTransition	\N	\N
38	2	2	4	3	f	f	WorkflowTransition	\N	\N
39	2	2	5	3	f	f	WorkflowTransition	\N	\N
40	2	2	6	3	f	f	WorkflowTransition	\N	\N
41	2	3	1	3	f	f	WorkflowTransition	\N	\N
42	2	3	2	3	f	f	WorkflowTransition	\N	\N
43	2	3	4	3	f	f	WorkflowTransition	\N	\N
44	2	3	5	3	f	f	WorkflowTransition	\N	\N
45	2	3	6	3	f	f	WorkflowTransition	\N	\N
46	2	4	1	3	f	f	WorkflowTransition	\N	\N
47	2	4	2	3	f	f	WorkflowTransition	\N	\N
48	2	4	3	3	f	f	WorkflowTransition	\N	\N
49	2	4	5	3	f	f	WorkflowTransition	\N	\N
50	2	4	6	3	f	f	WorkflowTransition	\N	\N
51	2	5	1	3	f	f	WorkflowTransition	\N	\N
52	2	5	2	3	f	f	WorkflowTransition	\N	\N
53	2	5	3	3	f	f	WorkflowTransition	\N	\N
54	2	5	4	3	f	f	WorkflowTransition	\N	\N
55	2	5	6	3	f	f	WorkflowTransition	\N	\N
56	2	6	1	3	f	f	WorkflowTransition	\N	\N
57	2	6	2	3	f	f	WorkflowTransition	\N	\N
58	2	6	3	3	f	f	WorkflowTransition	\N	\N
59	2	6	4	3	f	f	WorkflowTransition	\N	\N
60	2	6	5	3	f	f	WorkflowTransition	\N	\N
61	3	1	2	3	f	f	WorkflowTransition	\N	\N
62	3	1	3	3	f	f	WorkflowTransition	\N	\N
63	3	1	4	3	f	f	WorkflowTransition	\N	\N
64	3	1	5	3	f	f	WorkflowTransition	\N	\N
65	3	1	6	3	f	f	WorkflowTransition	\N	\N
66	3	2	1	3	f	f	WorkflowTransition	\N	\N
67	3	2	3	3	f	f	WorkflowTransition	\N	\N
68	3	2	4	3	f	f	WorkflowTransition	\N	\N
69	3	2	5	3	f	f	WorkflowTransition	\N	\N
70	3	2	6	3	f	f	WorkflowTransition	\N	\N
71	3	3	1	3	f	f	WorkflowTransition	\N	\N
72	3	3	2	3	f	f	WorkflowTransition	\N	\N
73	3	3	4	3	f	f	WorkflowTransition	\N	\N
74	3	3	5	3	f	f	WorkflowTransition	\N	\N
75	3	3	6	3	f	f	WorkflowTransition	\N	\N
76	3	4	1	3	f	f	WorkflowTransition	\N	\N
77	3	4	2	3	f	f	WorkflowTransition	\N	\N
78	3	4	3	3	f	f	WorkflowTransition	\N	\N
79	3	4	5	3	f	f	WorkflowTransition	\N	\N
80	3	4	6	3	f	f	WorkflowTransition	\N	\N
81	3	5	1	3	f	f	WorkflowTransition	\N	\N
82	3	5	2	3	f	f	WorkflowTransition	\N	\N
83	3	5	3	3	f	f	WorkflowTransition	\N	\N
84	3	5	4	3	f	f	WorkflowTransition	\N	\N
85	3	5	6	3	f	f	WorkflowTransition	\N	\N
86	3	6	1	3	f	f	WorkflowTransition	\N	\N
87	3	6	2	3	f	f	WorkflowTransition	\N	\N
88	3	6	3	3	f	f	WorkflowTransition	\N	\N
89	3	6	4	3	f	f	WorkflowTransition	\N	\N
90	3	6	5	3	f	f	WorkflowTransition	\N	\N
91	1	1	2	4	f	f	WorkflowTransition	\N	\N
92	1	1	3	4	f	f	WorkflowTransition	\N	\N
93	1	1	4	4	f	f	WorkflowTransition	\N	\N
94	1	1	5	4	f	f	WorkflowTransition	\N	\N
95	1	2	3	4	f	f	WorkflowTransition	\N	\N
96	1	2	4	4	f	f	WorkflowTransition	\N	\N
97	1	2	5	4	f	f	WorkflowTransition	\N	\N
98	1	3	2	4	f	f	WorkflowTransition	\N	\N
99	1	3	4	4	f	f	WorkflowTransition	\N	\N
100	1	3	5	4	f	f	WorkflowTransition	\N	\N
101	1	4	2	4	f	f	WorkflowTransition	\N	\N
102	1	4	3	4	f	f	WorkflowTransition	\N	\N
103	1	4	5	4	f	f	WorkflowTransition	\N	\N
104	2	1	2	4	f	f	WorkflowTransition	\N	\N
105	2	1	3	4	f	f	WorkflowTransition	\N	\N
106	2	1	4	4	f	f	WorkflowTransition	\N	\N
107	2	1	5	4	f	f	WorkflowTransition	\N	\N
108	2	2	3	4	f	f	WorkflowTransition	\N	\N
109	2	2	4	4	f	f	WorkflowTransition	\N	\N
110	2	2	5	4	f	f	WorkflowTransition	\N	\N
111	2	3	2	4	f	f	WorkflowTransition	\N	\N
112	2	3	4	4	f	f	WorkflowTransition	\N	\N
113	2	3	5	4	f	f	WorkflowTransition	\N	\N
114	2	4	2	4	f	f	WorkflowTransition	\N	\N
115	2	4	3	4	f	f	WorkflowTransition	\N	\N
116	2	4	5	4	f	f	WorkflowTransition	\N	\N
117	3	1	2	4	f	f	WorkflowTransition	\N	\N
118	3	1	3	4	f	f	WorkflowTransition	\N	\N
119	3	1	4	4	f	f	WorkflowTransition	\N	\N
120	3	1	5	4	f	f	WorkflowTransition	\N	\N
121	3	2	3	4	f	f	WorkflowTransition	\N	\N
122	3	2	4	4	f	f	WorkflowTransition	\N	\N
123	3	2	5	4	f	f	WorkflowTransition	\N	\N
124	3	3	2	4	f	f	WorkflowTransition	\N	\N
125	3	3	4	4	f	f	WorkflowTransition	\N	\N
126	3	3	5	4	f	f	WorkflowTransition	\N	\N
127	3	4	2	4	f	f	WorkflowTransition	\N	\N
128	3	4	3	4	f	f	WorkflowTransition	\N	\N
129	3	4	5	4	f	f	WorkflowTransition	\N	\N
130	1	1	5	5	f	f	WorkflowTransition	\N	\N
131	1	2	5	5	f	f	WorkflowTransition	\N	\N
132	1	3	5	5	f	f	WorkflowTransition	\N	\N
133	1	4	5	5	f	f	WorkflowTransition	\N	\N
134	1	3	4	5	f	f	WorkflowTransition	\N	\N
135	2	1	5	5	f	f	WorkflowTransition	\N	\N
136	2	2	5	5	f	f	WorkflowTransition	\N	\N
137	2	3	5	5	f	f	WorkflowTransition	\N	\N
138	2	4	5	5	f	f	WorkflowTransition	\N	\N
139	2	3	4	5	f	f	WorkflowTransition	\N	\N
140	3	1	5	5	f	f	WorkflowTransition	\N	\N
141	3	2	5	5	f	f	WorkflowTransition	\N	\N
142	3	3	5	5	f	f	WorkflowTransition	\N	\N
143	3	4	5	5	f	f	WorkflowTransition	\N	\N
144	3	3	4	5	f	f	WorkflowTransition	\N	\N
\.


--
-- Name: workflows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: redmine_default
--

SELECT pg_catalog.setval('workflows_id_seq', 144, true);


--
-- Name: attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY attachments
    ADD CONSTRAINT attachments_pkey PRIMARY KEY (id);


--
-- Name: auth_sources_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY auth_sources
    ADD CONSTRAINT auth_sources_pkey PRIMARY KEY (id);


--
-- Name: boards_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: changes_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY changes
    ADD CONSTRAINT changes_pkey PRIMARY KEY (id);


--
-- Name: changesets_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY changesets
    ADD CONSTRAINT changesets_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: custom_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY custom_fields
    ADD CONSTRAINT custom_fields_pkey PRIMARY KEY (id);


--
-- Name: custom_values_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY custom_values
    ADD CONSTRAINT custom_values_pkey PRIMARY KEY (id);


--
-- Name: documents_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY documents
    ADD CONSTRAINT documents_pkey PRIMARY KEY (id);


--
-- Name: enabled_modules_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY enabled_modules
    ADD CONSTRAINT enabled_modules_pkey PRIMARY KEY (id);


--
-- Name: enumerations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY enumerations
    ADD CONSTRAINT enumerations_pkey PRIMARY KEY (id);


--
-- Name: issue_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issue_categories
    ADD CONSTRAINT issue_categories_pkey PRIMARY KEY (id);


--
-- Name: issue_relations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issue_relations
    ADD CONSTRAINT issue_relations_pkey PRIMARY KEY (id);


--
-- Name: issue_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issue_statuses
    ADD CONSTRAINT issue_statuses_pkey PRIMARY KEY (id);


--
-- Name: issues_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY issues
    ADD CONSTRAINT issues_pkey PRIMARY KEY (id);


--
-- Name: journal_details_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY journal_details
    ADD CONSTRAINT journal_details_pkey PRIMARY KEY (id);


--
-- Name: journals_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY journals
    ADD CONSTRAINT journals_pkey PRIMARY KEY (id);


--
-- Name: member_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY member_roles
    ADD CONSTRAINT member_roles_pkey PRIMARY KEY (id);


--
-- Name: members_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: messages_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: news_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY news
    ADD CONSTRAINT news_pkey PRIMARY KEY (id);


--
-- Name: open_id_authentication_associations_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY open_id_authentication_associations
    ADD CONSTRAINT open_id_authentication_associations_pkey PRIMARY KEY (id);


--
-- Name: open_id_authentication_nonces_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY open_id_authentication_nonces
    ADD CONSTRAINT open_id_authentication_nonces_pkey PRIMARY KEY (id);


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: queries_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY queries
    ADD CONSTRAINT queries_pkey PRIMARY KEY (id);


--
-- Name: repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY repositories
    ADD CONSTRAINT repositories_pkey PRIMARY KEY (id);


--
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: settings_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: time_entries_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY time_entries
    ADD CONSTRAINT time_entries_pkey PRIMARY KEY (id);


--
-- Name: tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);


--
-- Name: trackers_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY trackers
    ADD CONSTRAINT trackers_pkey PRIMARY KEY (id);


--
-- Name: user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: watchers_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY watchers
    ADD CONSTRAINT watchers_pkey PRIMARY KEY (id);


--
-- Name: wiki_content_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_content_versions
    ADD CONSTRAINT wiki_content_versions_pkey PRIMARY KEY (id);


--
-- Name: wiki_contents_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_contents
    ADD CONSTRAINT wiki_contents_pkey PRIMARY KEY (id);


--
-- Name: wiki_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_pages
    ADD CONSTRAINT wiki_pages_pkey PRIMARY KEY (id);


--
-- Name: wiki_redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wiki_redirects
    ADD CONSTRAINT wiki_redirects_pkey PRIMARY KEY (id);


--
-- Name: wikis_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY wikis
    ADD CONSTRAINT wikis_pkey PRIMARY KEY (id);


--
-- Name: workflows_pkey; Type: CONSTRAINT; Schema: public; Owner: redmine_default
--

ALTER TABLE ONLY workflows
    ADD CONSTRAINT workflows_pkey PRIMARY KEY (id);


--
-- Name: boards_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX boards_project_id ON boards USING btree (project_id);


--
-- Name: changeset_parents_changeset_ids; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX changeset_parents_changeset_ids ON changeset_parents USING btree (changeset_id);


--
-- Name: changeset_parents_parent_ids; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX changeset_parents_parent_ids ON changeset_parents USING btree (parent_id);


--
-- Name: changesets_changeset_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX changesets_changeset_id ON changes USING btree (changeset_id);


--
-- Name: changesets_issues_ids; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX changesets_issues_ids ON changesets_issues USING btree (changeset_id, issue_id);


--
-- Name: changesets_repos_rev; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX changesets_repos_rev ON changesets USING btree (repository_id, revision);


--
-- Name: changesets_repos_scmid; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX changesets_repos_scmid ON changesets USING btree (repository_id, scmid);


--
-- Name: custom_fields_roles_ids; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX custom_fields_roles_ids ON custom_fields_roles USING btree (custom_field_id, role_id);


--
-- Name: custom_values_customized; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX custom_values_customized ON custom_values USING btree (customized_type, customized_id);


--
-- Name: documents_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX documents_project_id ON documents USING btree (project_id);


--
-- Name: enabled_modules_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX enabled_modules_project_id ON enabled_modules USING btree (project_id);


--
-- Name: groups_users_ids; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX groups_users_ids ON groups_users USING btree (group_id, user_id);


--
-- Name: index_attachments_on_author_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_attachments_on_author_id ON attachments USING btree (author_id);


--
-- Name: index_attachments_on_container_id_and_container_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_attachments_on_container_id_and_container_type ON attachments USING btree (container_id, container_type);


--
-- Name: index_attachments_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_attachments_on_created_on ON attachments USING btree (created_on);


--
-- Name: index_auth_sources_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_auth_sources_on_id_and_type ON auth_sources USING btree (id, type);


--
-- Name: index_boards_on_last_message_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_boards_on_last_message_id ON boards USING btree (last_message_id);


--
-- Name: index_changesets_on_committed_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_changesets_on_committed_on ON changesets USING btree (committed_on);


--
-- Name: index_changesets_on_repository_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_changesets_on_repository_id ON changesets USING btree (repository_id);


--
-- Name: index_changesets_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_changesets_on_user_id ON changesets USING btree (user_id);


--
-- Name: index_comments_on_author_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_comments_on_author_id ON comments USING btree (author_id);


--
-- Name: index_comments_on_commented_id_and_commented_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_comments_on_commented_id_and_commented_type ON comments USING btree (commented_id, commented_type);


--
-- Name: index_custom_fields_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_custom_fields_on_id_and_type ON custom_fields USING btree (id, type);


--
-- Name: index_custom_fields_projects_on_custom_field_id_and_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX index_custom_fields_projects_on_custom_field_id_and_project_id ON custom_fields_projects USING btree (custom_field_id, project_id);


--
-- Name: index_custom_fields_trackers_on_custom_field_id_and_tracker_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX index_custom_fields_trackers_on_custom_field_id_and_tracker_id ON custom_fields_trackers USING btree (custom_field_id, tracker_id);


--
-- Name: index_custom_values_on_custom_field_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_custom_values_on_custom_field_id ON custom_values USING btree (custom_field_id);


--
-- Name: index_documents_on_category_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_documents_on_category_id ON documents USING btree (category_id);


--
-- Name: index_documents_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_documents_on_created_on ON documents USING btree (created_on);


--
-- Name: index_enumerations_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_enumerations_on_id_and_type ON enumerations USING btree (id, type);


--
-- Name: index_enumerations_on_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_enumerations_on_project_id ON enumerations USING btree (project_id);


--
-- Name: index_issue_categories_on_assigned_to_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issue_categories_on_assigned_to_id ON issue_categories USING btree (assigned_to_id);


--
-- Name: index_issue_relations_on_issue_from_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issue_relations_on_issue_from_id ON issue_relations USING btree (issue_from_id);


--
-- Name: index_issue_relations_on_issue_from_id_and_issue_to_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX index_issue_relations_on_issue_from_id_and_issue_to_id ON issue_relations USING btree (issue_from_id, issue_to_id);


--
-- Name: index_issue_relations_on_issue_to_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issue_relations_on_issue_to_id ON issue_relations USING btree (issue_to_id);


--
-- Name: index_issue_statuses_on_is_closed; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issue_statuses_on_is_closed ON issue_statuses USING btree (is_closed);


--
-- Name: index_issue_statuses_on_is_default; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issue_statuses_on_is_default ON issue_statuses USING btree (is_default);


--
-- Name: index_issue_statuses_on_position; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issue_statuses_on_position ON issue_statuses USING btree ("position");


--
-- Name: index_issues_on_assigned_to_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_assigned_to_id ON issues USING btree (assigned_to_id);


--
-- Name: index_issues_on_author_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_author_id ON issues USING btree (author_id);


--
-- Name: index_issues_on_category_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_category_id ON issues USING btree (category_id);


--
-- Name: index_issues_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_created_on ON issues USING btree (created_on);


--
-- Name: index_issues_on_fixed_version_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_fixed_version_id ON issues USING btree (fixed_version_id);


--
-- Name: index_issues_on_priority_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_priority_id ON issues USING btree (priority_id);


--
-- Name: index_issues_on_root_id_and_lft_and_rgt; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_root_id_and_lft_and_rgt ON issues USING btree (root_id, lft, rgt);


--
-- Name: index_issues_on_status_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_status_id ON issues USING btree (status_id);


--
-- Name: index_issues_on_tracker_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_issues_on_tracker_id ON issues USING btree (tracker_id);


--
-- Name: index_journals_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_journals_on_created_on ON journals USING btree (created_on);


--
-- Name: index_journals_on_journalized_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_journals_on_journalized_id ON journals USING btree (journalized_id);


--
-- Name: index_journals_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_journals_on_user_id ON journals USING btree (user_id);


--
-- Name: index_member_roles_on_member_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_member_roles_on_member_id ON member_roles USING btree (member_id);


--
-- Name: index_member_roles_on_role_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_member_roles_on_role_id ON member_roles USING btree (role_id);


--
-- Name: index_members_on_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_members_on_project_id ON members USING btree (project_id);


--
-- Name: index_members_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_members_on_user_id ON members USING btree (user_id);


--
-- Name: index_members_on_user_id_and_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX index_members_on_user_id_and_project_id ON members USING btree (user_id, project_id);


--
-- Name: index_messages_on_author_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_messages_on_author_id ON messages USING btree (author_id);


--
-- Name: index_messages_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_messages_on_created_on ON messages USING btree (created_on);


--
-- Name: index_messages_on_last_reply_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_messages_on_last_reply_id ON messages USING btree (last_reply_id);


--
-- Name: index_news_on_author_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_news_on_author_id ON news USING btree (author_id);


--
-- Name: index_news_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_news_on_created_on ON news USING btree (created_on);


--
-- Name: index_projects_on_lft; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_projects_on_lft ON projects USING btree (lft);


--
-- Name: index_projects_on_rgt; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_projects_on_rgt ON projects USING btree (rgt);


--
-- Name: index_queries_on_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_queries_on_project_id ON queries USING btree (project_id);


--
-- Name: index_queries_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_queries_on_user_id ON queries USING btree (user_id);


--
-- Name: index_repositories_on_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_repositories_on_project_id ON repositories USING btree (project_id);


--
-- Name: index_settings_on_name; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_settings_on_name ON settings USING btree (name);


--
-- Name: index_time_entries_on_activity_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_time_entries_on_activity_id ON time_entries USING btree (activity_id);


--
-- Name: index_time_entries_on_created_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_time_entries_on_created_on ON time_entries USING btree (created_on);


--
-- Name: index_time_entries_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_time_entries_on_user_id ON time_entries USING btree (user_id);


--
-- Name: index_tokens_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_tokens_on_user_id ON tokens USING btree (user_id);


--
-- Name: index_user_preferences_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_user_preferences_on_user_id ON user_preferences USING btree (user_id);


--
-- Name: index_users_on_auth_source_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_users_on_auth_source_id ON users USING btree (auth_source_id);


--
-- Name: index_users_on_id_and_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_users_on_id_and_type ON users USING btree (id, type);


--
-- Name: index_users_on_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_users_on_type ON users USING btree (type);


--
-- Name: index_versions_on_sharing; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_versions_on_sharing ON versions USING btree (sharing);


--
-- Name: index_watchers_on_user_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_watchers_on_user_id ON watchers USING btree (user_id);


--
-- Name: index_watchers_on_watchable_id_and_watchable_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_watchers_on_watchable_id_and_watchable_type ON watchers USING btree (watchable_id, watchable_type);


--
-- Name: index_wiki_content_versions_on_updated_on; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_wiki_content_versions_on_updated_on ON wiki_content_versions USING btree (updated_on);


--
-- Name: index_wiki_contents_on_author_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_wiki_contents_on_author_id ON wiki_contents USING btree (author_id);


--
-- Name: index_wiki_pages_on_parent_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_wiki_pages_on_parent_id ON wiki_pages USING btree (parent_id);


--
-- Name: index_wiki_pages_on_wiki_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_wiki_pages_on_wiki_id ON wiki_pages USING btree (wiki_id);


--
-- Name: index_wiki_redirects_on_wiki_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_wiki_redirects_on_wiki_id ON wiki_redirects USING btree (wiki_id);


--
-- Name: index_workflows_on_new_status_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_workflows_on_new_status_id ON workflows USING btree (new_status_id);


--
-- Name: index_workflows_on_old_status_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_workflows_on_old_status_id ON workflows USING btree (old_status_id);


--
-- Name: index_workflows_on_role_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX index_workflows_on_role_id ON workflows USING btree (role_id);


--
-- Name: issue_categories_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX issue_categories_project_id ON issue_categories USING btree (project_id);


--
-- Name: issues_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX issues_project_id ON issues USING btree (project_id);


--
-- Name: journal_details_journal_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX journal_details_journal_id ON journal_details USING btree (journal_id);


--
-- Name: journals_journalized_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX journals_journalized_id ON journals USING btree (journalized_id, journalized_type);


--
-- Name: messages_board_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX messages_board_id ON messages USING btree (board_id);


--
-- Name: messages_parent_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX messages_parent_id ON messages USING btree (parent_id);


--
-- Name: news_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX news_project_id ON news USING btree (project_id);


--
-- Name: projects_trackers_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX projects_trackers_project_id ON projects_trackers USING btree (project_id);


--
-- Name: projects_trackers_unique; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX projects_trackers_unique ON projects_trackers USING btree (project_id, tracker_id);


--
-- Name: queries_roles_ids; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX queries_roles_ids ON queries_roles USING btree (query_id, role_id);


--
-- Name: time_entries_issue_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX time_entries_issue_id ON time_entries USING btree (issue_id);


--
-- Name: time_entries_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX time_entries_project_id ON time_entries USING btree (project_id);


--
-- Name: tokens_value; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX tokens_value ON tokens USING btree (value);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: versions_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX versions_project_id ON versions USING btree (project_id);


--
-- Name: watchers_user_id_type; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX watchers_user_id_type ON watchers USING btree (user_id, watchable_type);


--
-- Name: wiki_content_versions_wcid; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX wiki_content_versions_wcid ON wiki_content_versions USING btree (wiki_content_id);


--
-- Name: wiki_contents_page_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX wiki_contents_page_id ON wiki_contents USING btree (page_id);


--
-- Name: wiki_pages_wiki_id_title; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX wiki_pages_wiki_id_title ON wiki_pages USING btree (wiki_id, title);


--
-- Name: wiki_redirects_wiki_id_title; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX wiki_redirects_wiki_id_title ON wiki_redirects USING btree (wiki_id, title);


--
-- Name: wikis_project_id; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX wikis_project_id ON wikis USING btree (project_id);


--
-- Name: wkfs_role_tracker_old_status; Type: INDEX; Schema: public; Owner: redmine_default
--

CREATE INDEX wkfs_role_tracker_old_status ON workflows USING btree (role_id, tracker_id, old_status_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect store_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: products; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE products (
    id integer NOT NULL,
    title character varying,
    price integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE products OWNER TO supranimbus06;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE products_id_seq OWNER TO supranimbus06;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY products (id, title, price, created_at, updated_at) FROM stdin;
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('products_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20160907092235
\.


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect store_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect supranimbus_wiki_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect supranimbus_wiki_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect test_app_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: profile_informations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE profile_informations (
    id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE profile_informations OWNER TO supranimbus06;

--
-- Name: profile_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE profile_informations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_informations_id_seq OWNER TO supranimbus06;

--
-- Name: profile_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE profile_informations_id_seq OWNED BY profile_informations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY profile_informations ALTER COLUMN id SET DEFAULT nextval('profile_informations_id_seq'::regclass);


--
-- Data for Name: profile_informations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY profile_informations (id, created_at, updated_at) FROM stdin;
\.


--
-- Name: profile_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('profile_informations_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20161027094442
\.


--
-- Name: profile_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY profile_informations
    ADD CONSTRAINT profile_informations_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect test_appp_development

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: profile_informations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE profile_informations (
    id integer NOT NULL,
    name character varying,
    address character varying,
    city character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE profile_informations OWNER TO supranimbus06;

--
-- Name: profile_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE profile_informations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_informations_id_seq OWNER TO supranimbus06;

--
-- Name: profile_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE profile_informations_id_seq OWNED BY profile_informations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY profile_informations ALTER COLUMN id SET DEFAULT nextval('profile_informations_id_seq'::regclass);


--
-- Data for Name: profile_informations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY profile_informations (id, name, address, city, created_at, updated_at) FROM stdin;
\.


--
-- Name: profile_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('profile_informations_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20161027103135
\.


--
-- Name: profile_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY profile_informations
    ADD CONSTRAINT profile_informations_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

\connect test_appp_test

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: profile_informations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE profile_informations (
    id integer NOT NULL,
    name character varying,
    address character varying,
    city character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE profile_informations OWNER TO supranimbus06;

--
-- Name: profile_informations_id_seq; Type: SEQUENCE; Schema: public; Owner: supranimbus06
--

CREATE SEQUENCE profile_informations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_informations_id_seq OWNER TO supranimbus06;

--
-- Name: profile_informations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: supranimbus06
--

ALTER SEQUENCE profile_informations_id_seq OWNED BY profile_informations.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: supranimbus06
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO supranimbus06;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY profile_informations ALTER COLUMN id SET DEFAULT nextval('profile_informations_id_seq'::regclass);


--
-- Data for Name: profile_informations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY profile_informations (id, name, address, city, created_at, updated_at) FROM stdin;
\.


--
-- Name: profile_informations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supranimbus06
--

SELECT pg_catalog.setval('profile_informations_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: supranimbus06
--

COPY schema_migrations (version) FROM stdin;
20161027103135
\.


--
-- Name: profile_informations_pkey; Type: CONSTRAINT; Schema: public; Owner: supranimbus06
--

ALTER TABLE ONLY profile_informations
    ADD CONSTRAINT profile_informations_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: supranimbus06
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

