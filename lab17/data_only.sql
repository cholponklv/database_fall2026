--
-- PostgreSQL database dump
--

\restrict jU9MNpeZTTRAeBZ93UgSeegsw5cQnoC2lXaWjXL4NJj22hh5mev4F3QgI2v7J18

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

--
-- Data for Name: customer_feedback; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.customer_feedback (feedback_id, customer_id, comment) FROM stdin;
1	1	Great service, fast delivery
2	2	The "premium" package was worth it
3	3	Okay, but packaging was damaged
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.customers (customer_id, name, email, city) FROM stdin;
1	Alice Johnson	alice@example.com	Bishkek
2	Bob Smith	bob@example.com	Osh
3	Carol Davis	carol@example.com	Karakol
\.


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
-- Data for Name: log_table; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.log_table (log_id, message) FROM stdin;
1	started
2	finished
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.orders (order_id, customer_id, order_date, total_amount) FROM stdin;
1	1	2024-02-10	150.00
2	2	2024-03-15	250.00
3	3	2024-05-20	90.00
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.products (product_id, product_name, price, category) FROM stdin;
1	Laptop	1200.00	Electronics
2	Mouse	25.50	Electronics
3	Notebook	3.20	Stationery
4	Desk	250.00	Furniture
10	Chair	80.00	Furniture
12	Pen	1.10	Stationery
20	Café Table	150.00	Furniture
\.


--
-- Data for Name: sales_data; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.sales_data (sale_id, product_name, amount, sale_date) FROM stdin;
1	Laptop	1200.00	2024-01-10
2	Mouse	\N	2024-01-12
10	Phone	\N	2024-02-01
11	Tablet	300.00	2024-02-02
\.


--
-- Data for Name: temp_data; Type: TABLE DATA; Schema: public; Owner: cholponklv
--

COPY public.temp_data (id, value) FROM stdin;
1	x
2	y
\.


--
-- Name: customer_feedback_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.customer_feedback_feedback_id_seq', 3, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 3, true);


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 3, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 6, true);


--
-- Name: log_table_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.log_table_log_id_seq', 2, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 3, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.products_product_id_seq', 4, true);


--
-- Name: sales_data_sale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.sales_data_sale_id_seq', 2, true);


--
-- Name: temp_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cholponklv
--

SELECT pg_catalog.setval('public.temp_data_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict jU9MNpeZTTRAeBZ93UgSeegsw5cQnoC2lXaWjXL4NJj22hh5mev4F3QgI2v7J18

