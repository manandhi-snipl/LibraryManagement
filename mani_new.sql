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

