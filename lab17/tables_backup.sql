--
-- PostgreSQL database dump
--

\restrict BZ07OUtA6MM0RoeJVoWdrgwt5epYNqQqn6f4SC4HvZWQpYGS38IdHN0ON05EKZX

-- Dumped from database version 16.11 (Homebrew)
-- Dumped by pg_dump version 16.11 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: departments; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(50) NOT NULL
);


ALTER TABLE public.departments OWNER TO cholponklv;

--
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_department_id_seq OWNER TO cholponklv;

--
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100),
    department character varying(50),
    salary numeric(10,2)
);


ALTER TABLE public.employees OWNER TO cholponklv;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_employee_id_seq OWNER TO cholponklv;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.departments (department_id, department_name) FROM stdin;
1	IT
2	Sales
3	HR
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.employees (employee_id, first_name, last_name, email, department, salary) FROM stdin;
1	Aibek	Sharshenov	aibek@company.com	IT	90000.00
2	Ainura	Toktomamatova	\N	IT	85000.00
3	Bakyt	Mamatov	bakyt@company.com	Sales	60000.00
4	Gulzat	Sultanova	gulzat@company.com	HR	55000.00
5	Nursultan	Isakov	nursultan@company.com	\N	\N
6	Meerim	Bekova	meerim@company.com	\N	\N
\.


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 3, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 6, true);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- PostgreSQL database dump complete
--

\unrestrict BZ07OUtA6MM0RoeJVoWdrgwt5epYNqQqn6f4SC4HvZWQpYGS38IdHN0ON05EKZX

