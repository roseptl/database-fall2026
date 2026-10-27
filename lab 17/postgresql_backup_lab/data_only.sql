--
-- PostgreSQL database dump
--

\restrict QQ8uOEcNnTs4c40XHDq3tG2V0GhGMriro7t6a0kmLidhL9H25vJh4pZV58xWYMW

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accounts (account_id, balance) FROM stdin;
1	320.00
2	1255.00
\.


--
-- Data for Name: audit_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.audit_log (id, action, "timestamp") FROM stdin;
1	user_creation	2026-10-27 10:18:55.499812
\.


--
-- Data for Name: customer_feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_feedback (id, feedback) FROM stdin;
1	Good product, fast delivery
2	She said "excellent"
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, name, email) FROM stdin;
1	First Customer	first@example.com
2	John Doe	john@email.com
3	Alice	alice@email.com
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employee_id, first_name, last_name, email, department) FROM stdin;
1	Anna	Smith	anna@example.com	IT
2	John	Brown	john@example.com	HR
3	Kate	Wilson	kate@example.com	IT
4	David	Lee	david@example.com	\N
5	Maria	Kim	maria@example.com	\N
\.


--
-- Data for Name: feedback_imported; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.feedback_imported (id, feedback) FROM stdin;
1	Good product, fast delivery
2	She said "excellent"
\.


--
-- Data for Name: import_test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.import_test (id, amount) FROM stdin;
1	100
3	300
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, name, price) FROM stdin;
101	Sample Product	50.00
102	Second Product	30.00
1	Laptop	999.99
2	Mouse	25.99
4	Keyboard	79.99
\.


--
-- Data for Name: inventory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventory (product_id, stock) FROM stdin;
102	20
101	7
\.


--
-- Data for Name: logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.logs (log_id, message, created_at) FROM stdin;
1	Durability test	2026-10-27 10:17:13.852613
2	Starting process	2026-10-27 10:18:00.765527
3	Process completed	2026-10-27 10:18:00.765527
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, customer_id, total) FROM stdin;
1	1	250.00
2	2	100.00
4	1	300.00
5	1	1000.00
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, order_id, product_id, quantity) FROM stdin;
1	1	101	2
2	1	101	1
3	5	101	2
4	5	102	1
\.


--
-- Data for Name: products_imported; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_imported (product_id, name, price) FROM stdin;
101	Sample Product	50.00
102	Second Product	30.00
1	Laptop	999.99
2	Mouse	25.99
4	Keyboard	79.99
\.


--
-- Data for Name: products_utf8; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_utf8 (product_id, name, price) FROM stdin;
101	Sample Product	50.00
102	Second Product	30.00
1	Laptop	999.99
2	Mouse	25.99
4	Keyboard	79.99
\.


--
-- Data for Name: sales_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales_data (id, amount) FROM stdin;
1	100
2	\N
3	250
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
1	John Doe	john@example.com
\.


--
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_preferences (id, user_id, theme) FROM stdin;
1	1	dark
\.


--
-- Name: accounts_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accounts_account_id_seq', 2, true);


--
-- Name: audit_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.audit_log_id_seq', 1, true);


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 3, true);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 5, true);


--
-- Name: logs_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.logs_log_id_seq', 3, true);


--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 4, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 5, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 4, true);


--
-- Name: user_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_preferences_id_seq', 1, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict QQ8uOEcNnTs4c40XHDq3tG2V0GhGMriro7t6a0kmLidhL9H25vJh4pZV58xWYMW

