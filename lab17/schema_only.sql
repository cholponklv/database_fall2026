--
-- PostgreSQL database dump
--

\restrict FuG7FY1AJTXFPpFHTW84f6Pzh8Yiymd0qkhc1ViUvDIGAAchnFBBHMsp2a1a8QR

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
-- Name: customer_feedback; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.customer_feedback (
    feedback_id integer NOT NULL,
    customer_id integer,
    comment text
);


ALTER TABLE public.customer_feedback OWNER TO cholponklv;

--
-- Name: customer_feedback_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.customer_feedback_feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_feedback_feedback_id_seq OWNER TO cholponklv;

--
-- Name: customer_feedback_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.customer_feedback_feedback_id_seq OWNED BY public.customer_feedback.feedback_id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    city character varying(50)
);


ALTER TABLE public.customers OWNER TO cholponklv;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO cholponklv;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


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
-- Name: log_table; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.log_table (
    log_id integer NOT NULL,
    message text
);


ALTER TABLE public.log_table OWNER TO cholponklv;

--
-- Name: log_table_log_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.log_table_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.log_table_log_id_seq OWNER TO cholponklv;

--
-- Name: log_table_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.log_table_log_id_seq OWNED BY public.log_table.log_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    order_date date,
    total_amount numeric(10,2)
);


ALTER TABLE public.orders OWNER TO cholponklv;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO cholponklv;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2),
    category character varying(50)
);


ALTER TABLE public.products OWNER TO cholponklv;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO cholponklv;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: sales_data; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.sales_data (
    sale_id integer NOT NULL,
    product_name character varying(100),
    amount numeric(10,2),
    sale_date date
);


ALTER TABLE public.sales_data OWNER TO cholponklv;

--
-- Name: sales_data_sale_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.sales_data_sale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_data_sale_id_seq OWNER TO cholponklv;

--
-- Name: sales_data_sale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.sales_data_sale_id_seq OWNED BY public.sales_data.sale_id;


--
-- Name: temp_data; Type: TABLE; Schema: public; Owner: cholponklv
--

CREATE TABLE public.temp_data (
    id integer NOT NULL,
    value text
);


ALTER TABLE public.temp_data OWNER TO cholponklv;

--
-- Name: temp_data_id_seq; Type: SEQUENCE; Schema: public; Owner: cholponklv
--

CREATE SEQUENCE public.temp_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.temp_data_id_seq OWNER TO cholponklv;

--
-- Name: temp_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cholponklv
--

ALTER SEQUENCE public.temp_data_id_seq OWNED BY public.temp_data.id;


--
-- Name: customer_feedback feedback_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.customer_feedback ALTER COLUMN feedback_id SET DEFAULT nextval('public.customer_feedback_feedback_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: log_table log_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.log_table ALTER COLUMN log_id SET DEFAULT nextval('public.log_table_log_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: sales_data sale_id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.sales_data ALTER COLUMN sale_id SET DEFAULT nextval('public.sales_data_sale_id_seq'::regclass);


--
-- Name: temp_data id; Type: DEFAULT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.temp_data ALTER COLUMN id SET DEFAULT nextval('public.temp_data_id_seq'::regclass);


--
-- Name: customer_feedback customer_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.customer_feedback
    ADD CONSTRAINT customer_feedback_pkey PRIMARY KEY (feedback_id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


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
-- Name: log_table log_table_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.log_table
    ADD CONSTRAINT log_table_pkey PRIMARY KEY (log_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: sales_data sales_data_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.sales_data
    ADD CONSTRAINT sales_data_pkey PRIMARY KEY (sale_id);


--
-- Name: temp_data temp_data_pkey; Type: CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.temp_data
    ADD CONSTRAINT temp_data_pkey PRIMARY KEY (id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: cholponklv
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- PostgreSQL database dump complete
--

\unrestrict FuG7FY1AJTXFPpFHTW84f6Pzh8Yiymd0qkhc1ViUvDIGAAchnFBBHMsp2a1a8QR

