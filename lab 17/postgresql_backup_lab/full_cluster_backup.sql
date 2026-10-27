--
-- PostgreSQL database cluster dump
--

\restrict KMfekYe5mdpkRJJm4fMlh42SwwCFHBRpLOnIVx2ipooX97ikICBxWtk46ObfEyk

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:LIjGlBKmYtUxMd9xic5Jig==$0ma7/QJdkjJ0nvUisFpLBBpf15/nOwoPNodNcSi2LWw=:61cjQJ+Fg/hELfkyGOOymja8bQAS9BFSz7Xald3vVnw=';

--
-- User Configurations
--








\unrestrict KMfekYe5mdpkRJJm4fMlh42SwwCFHBRpLOnIVx2ipooX97ikICBxWtk46ObfEyk

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict qJcXJNzcHEzGbKSp3Mu5NVwiV4ddCC8SlqpPS5wXh20OdLB6ZcgsPq53EnhT03I

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
-- PostgreSQL database dump complete
--

\unrestrict qJcXJNzcHEzGbKSp3Mu5NVwiV4ddCC8SlqpPS5wXh20OdLB6ZcgsPq53EnhT03I

--
-- Database "db_design" dump
--

--
-- PostgreSQL database dump
--

\restrict 7bUVKWfkLiLEQmLQ7jP1zGqktctZLnW1kF073poeBdd9FLhDjRcnFSdPueozS4U

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
-- Name: db_design; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_design WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE db_design OWNER TO postgres;

\unrestrict 7bUVKWfkLiLEQmLQ7jP1zGqktctZLnW1kF073poeBdd9FLhDjRcnFSdPueozS4U
\connect db_design
\restrict 7bUVKWfkLiLEQmLQ7jP1zGqktctZLnW1kF073poeBdd9FLhDjRcnFSdPueozS4U

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    author_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- Name: authors_author_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.authors_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.authors_author_id_seq OWNER TO postgres;

--
-- Name: authors_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.authors_author_id_seq OWNED BY public.authors.author_id;


--
-- Name: book_authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book_authors (
    book_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.book_authors OWNER TO postgres;

--
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    book_id integer NOT NULL,
    title character varying(200) NOT NULL,
    isbn character varying(20)
);


ALTER TABLE public.books OWNER TO postgres;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.books_book_id_seq OWNER TO postgres;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    title character varying(100) NOT NULL,
    professor_id integer
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_course_id_seq OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(100) NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.departments_department_id_seq OWNER TO postgres;

--
-- Name: departments_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departments_department_id_seq OWNED BY public.departments.department_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    name character varying(100) NOT NULL,
    department_id integer
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_bad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees_bad (
    employee_id integer NOT NULL,
    name character varying(100),
    department_id integer,
    department_name character varying(100)
);


ALTER TABLE public.employees_bad OWNER TO postgres;

--
-- Name: employees_bad_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_bad_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_bad_employee_id_seq OWNER TO postgres;

--
-- Name: employees_bad_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_bad_employee_id_seq OWNED BY public.employees_bad.employee_id;


--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments (
    student_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.enrollments OWNER TO postgres;

--
-- Name: loans; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loans (
    loan_id integer NOT NULL,
    book_id integer NOT NULL,
    member_id integer NOT NULL,
    loan_date date DEFAULT CURRENT_DATE,
    due_date date NOT NULL,
    return_date date,
    late_fee numeric(6,2) DEFAULT 0
);


ALTER TABLE public.loans OWNER TO postgres;

--
-- Name: loans_loan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loans_loan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loans_loan_id_seq OWNER TO postgres;

--
-- Name: loans_loan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loans_loan_id_seq OWNED BY public.loans.loan_id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.members (
    member_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100)
);


ALTER TABLE public.members OWNER TO postgres;

--
-- Name: members_member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.members_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.members_member_id_seq OWNER TO postgres;

--
-- Name: members_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.members_member_id_seq OWNED BY public.members.member_id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: order_items_bad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items_bad (
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    product_name character varying(100),
    quantity integer
);


ALTER TABLE public.order_items_bad OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: professors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.professors (
    professor_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100)
);


ALTER TABLE public.professors OWNER TO postgres;

--
-- Name: professors_professor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.professors_professor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.professors_professor_id_seq OWNER TO postgres;

--
-- Name: professors_professor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.professors_professor_id_seq OWNED BY public.professors.professor_id;


--
-- Name: student_phones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_phones (
    student_id integer NOT NULL,
    phone character varying(20) NOT NULL
);


ALTER TABLE public.student_phones OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100),
    date_of_birth date,
    street character varying(100),
    city character varying(50),
    zip_code character varying(10)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_bad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students_bad (
    student_id integer,
    name character varying(50),
    phones character varying(100)
);


ALTER TABLE public.students_bad OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: authors author_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors ALTER COLUMN author_id SET DEFAULT nextval('public.authors_author_id_seq'::regclass);


--
-- Name: books book_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: departments department_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments ALTER COLUMN department_id SET DEFAULT nextval('public.departments_department_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: employees_bad employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees_bad ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_bad_employee_id_seq'::regclass);


--
-- Name: loans loan_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans ALTER COLUMN loan_id SET DEFAULT nextval('public.loans_loan_id_seq'::regclass);


--
-- Name: members member_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members ALTER COLUMN member_id SET DEFAULT nextval('public.members_member_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: professors professor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors ALTER COLUMN professor_id SET DEFAULT nextval('public.professors_professor_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authors (author_id, name) FROM stdin;
1	George Orwell
\.


--
-- Data for Name: book_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book_authors (book_id, author_id) FROM stdin;
1	1
\.


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.books (book_id, title, isbn) FROM stdin;
1	1984	978-0451524935
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, title, professor_id) FROM stdin;
1	Databases	1
2	Math	1
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.departments (department_id, department_name) FROM stdin;
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employee_id, name, department_id) FROM stdin;
\.


--
-- Data for Name: employees_bad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees_bad (employee_id, name, department_id, department_name) FROM stdin;
\.


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments (student_id, course_id) FROM stdin;
1	1
1	2
\.


--
-- Data for Name: loans; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loans (loan_id, book_id, member_id, loan_date, due_date, return_date, late_fee) FROM stdin;
1	1	1	2026-10-06	2026-10-20	\N	0.00
\.


--
-- Data for Name: members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.members (member_id, name, email) FROM stdin;
1	Bob	bob@mail.com
\.


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_id, product_id, quantity) FROM stdin;
\.


--
-- Data for Name: order_items_bad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items_bad (order_id, product_id, product_name, quantity) FROM stdin;
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name) FROM stdin;
\.


--
-- Data for Name: professors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.professors (professor_id, name, email) FROM stdin;
1	Dr. Smith	smith@uni.edu
\.


--
-- Data for Name: student_phones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_phones (student_id, phone) FROM stdin;
1	555-1111
1	555-2222
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, email, date_of_birth, street, city, zip_code) FROM stdin;
1	Alice	Lee	alice@mail.com	2003-05-10	\N	Bishkek	\N
\.


--
-- Data for Name: students_bad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students_bad (student_id, name, phones) FROM stdin;
1	Alice	555-1111, 555-2222
\.


--
-- Name: authors_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.authors_author_id_seq', 1, true);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, true);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 2, true);


--
-- Name: departments_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departments_department_id_seq', 1, false);


--
-- Name: employees_bad_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_bad_employee_id_seq', 1, false);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 1, false);


--
-- Name: loans_loan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loans_loan_id_seq', 1, true);


--
-- Name: members_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.members_member_id_seq', 1, true);


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 1, false);


--
-- Name: professors_professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.professors_professor_id_seq', 1, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, true);


--
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (author_id);


--
-- Name: book_authors book_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_authors
    ADD CONSTRAINT book_authors_pkey PRIMARY KEY (book_id, author_id);


--
-- Name: books books_isbn_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_isbn_key UNIQUE (isbn);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- Name: employees_bad employees_bad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees_bad
    ADD CONSTRAINT employees_bad_pkey PRIMARY KEY (employee_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (student_id, course_id);


--
-- Name: loans loans_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_pkey PRIMARY KEY (loan_id);


--
-- Name: members members_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_email_key UNIQUE (email);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (member_id);


--
-- Name: order_items_bad order_items_bad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items_bad
    ADD CONSTRAINT order_items_bad_pkey PRIMARY KEY (order_id, product_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_id, product_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: professors professors_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_email_key UNIQUE (email);


--
-- Name: professors professors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (professor_id);


--
-- Name: student_phones student_phones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phones
    ADD CONSTRAINT student_phones_pkey PRIMARY KEY (student_id, phone);


--
-- Name: students students_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_email_key UNIQUE (email);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: idx_courses_prof; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_courses_prof ON public.courses USING btree (professor_id);


--
-- Name: idx_loans_book; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_loans_book ON public.loans USING btree (book_id);


--
-- Name: idx_loans_member; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_loans_member ON public.loans USING btree (member_id);


--
-- Name: book_authors book_authors_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_authors
    ADD CONSTRAINT book_authors_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.authors(author_id) ON DELETE CASCADE;


--
-- Name: book_authors book_authors_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book_authors
    ADD CONSTRAINT book_authors_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(book_id) ON DELETE CASCADE;


--
-- Name: courses courses_professor_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_professor_id_fkey FOREIGN KEY (professor_id) REFERENCES public.professors(professor_id);


--
-- Name: employees employees_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(department_id);


--
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id) ON DELETE CASCADE;


--
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: loans loans_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.books(book_id);


--
-- Name: loans loans_member_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loans
    ADD CONSTRAINT loans_member_id_fkey FOREIGN KEY (member_id) REFERENCES public.members(member_id);


--
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: student_phones student_phones_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_phones
    ADD CONSTRAINT student_phones_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- PostgreSQL database dump complete
--

\unrestrict 7bUVKWfkLiLEQmLQ7jP1zGqktctZLnW1kF073poeBdd9FLhDjRcnFSdPueozS4U

--
-- Database "mydb" dump
--

--
-- PostgreSQL database dump
--

\restrict hdhpt0WPUR3uq0yMGywfKGOuyxev8WDApIUwrxHh1pddn8HWyn5K9hJpn8MQTSc

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
-- Name: mydb; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE mydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE mydb OWNER TO postgres;

\unrestrict hdhpt0WPUR3uq0yMGywfKGOuyxev8WDApIUwrxHh1pddn8HWyn5K9hJpn8MQTSc
\connect mydb
\restrict hdhpt0WPUR3uq0yMGywfKGOuyxev8WDApIUwrxHh1pddn8HWyn5K9hJpn8MQTSc

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    name character varying(100),
    email character varying(100),
    faculty character varying(50)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, name, email, faculty) FROM stdin;
1	Alymbek	alymbek@example.com	COMSEH
2	Timur	timur@example.com	MED
3	Beka	beka@example.com	MAT
\.


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 3, true);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- PostgreSQL database dump complete
--

\unrestrict hdhpt0WPUR3uq0yMGywfKGOuyxev8WDApIUwrxHh1pddn8HWyn5K9hJpn8MQTSc

--
-- Database "parallel_restore_lab" dump
--

--
-- PostgreSQL database dump
--

\restrict d8krlUcKcsbfKyJiGQGnzFJuOD1TRAuRCaJPoarpeCLJbKv51YTndvbDMdtS0do

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
-- Name: parallel_restore_lab; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE parallel_restore_lab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE parallel_restore_lab OWNER TO postgres;

\unrestrict d8krlUcKcsbfKyJiGQGnzFJuOD1TRAuRCaJPoarpeCLJbKv51YTndvbDMdtS0do
\connect parallel_restore_lab
\restrict d8krlUcKcsbfKyJiGQGnzFJuOD1TRAuRCaJPoarpeCLJbKv51YTndvbDMdtS0do

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    account_id integer NOT NULL,
    balance numeric(10,2) NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_account_id_seq OWNER TO postgres;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_account_id_seq OWNED BY public.accounts.account_id;


--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    id integer NOT NULL,
    action text,
    "timestamp" timestamp without time zone
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: audit_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.audit_log_id_seq OWNER TO postgres;

--
-- Name: audit_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;


--
-- Name: customer_feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_feedback (
    id integer,
    feedback text
);


ALTER TABLE public.customer_feedback OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    department character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: feedback_imported; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback_imported (
    id integer,
    feedback text
);


ALTER TABLE public.feedback_imported OWNER TO postgres;

--
-- Name: import_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.import_test (
    id integer,
    amount numeric
);


ALTER TABLE public.import_test OWNER TO postgres;

--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    product_id integer NOT NULL,
    stock integer NOT NULL
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    log_id integer NOT NULL,
    message text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- Name: logs_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logs_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logs_log_id_seq OWNER TO postgres;

--
-- Name: logs_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logs_log_id_seq OWNED BY public.logs.log_id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_order_item_id_seq OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    total numeric(10,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: products_imported; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_imported (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products_imported OWNER TO postgres;

--
-- Name: products_utf8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_utf8 (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products_utf8 OWNER TO postgres;

--
-- Name: sales_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_data (
    id integer,
    amount numeric
);


ALTER TABLE public.sales_data OWNER TO postgres;

--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_preferences (
    id integer NOT NULL,
    user_id integer,
    theme character varying(50)
);


ALTER TABLE public.user_preferences OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_preferences_id_seq OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_preferences_id_seq OWNED BY public.user_preferences.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accounts account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN account_id SET DEFAULT nextval('public.accounts_account_id_seq'::regclass);


--
-- Name: audit_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: logs log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs ALTER COLUMN log_id SET DEFAULT nextval('public.logs_log_id_seq'::regclass);


--
-- Name: order_items order_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: user_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences ALTER COLUMN id SET DEFAULT nextval('public.user_preferences_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


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
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, order_id, product_id, quantity) FROM stdin;
1	1	101	2
2	1	101	1
3	5	101	2
4	5	102	1
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
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_preferences (id, user_id, theme) FROM stdin;
1	1	dark
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
1	John Doe	john@example.com
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
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (account_id);


--
-- Name: audit_log audit_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (product_id);


--
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (log_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products_imported products_imported_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_imported
    ADD CONSTRAINT products_imported_pkey PRIMARY KEY (product_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: products_utf8 products_utf8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_utf8
    ADD CONSTRAINT products_utf8_pkey PRIMARY KEY (product_id);


--
-- Name: user_preferences user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: user_preferences user_preferences_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict d8krlUcKcsbfKyJiGQGnzFJuOD1TRAuRCaJPoarpeCLJbKv51YTndvbDMdtS0do

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict UfpBqaN4HPtT5qjCrsfJ2jS5zsTdW3AQhXykrEMgxPTX4M3Cm9hGVwE17lXMtG0

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying(50),
    department character varying(50),
    salary numeric,
    email character varying(100)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_id_seq OWNER TO postgres;

--
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    birth_date date
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, name, department, salary, email) FROM stdin;
1	Brad Pitt	Sales	85000	brad.sales@gmail.com
2	Brandon Lee	Engineering	95000	brandon.eng@gmail.com
3	Alice Smith	Engineering	120000	alice@company.com
4	Bob Jones	Sales	55000	bob.sales@yahoo.com
5	Strawberry Girl	Marketing	45000	berry@gmail.com
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, first_name, last_name, birth_date) FROM stdin;
1	Aibek	Sharshenov	2002-05-15
5	Nursultan	Isakov	2002-04-10
6	Meerim	Bekova	2003-06-12
7	Tilek	Usubaliev	2001-11-05
\.


--
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 5, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 7, true);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- PostgreSQL database dump complete
--

\unrestrict UfpBqaN4HPtT5qjCrsfJ2jS5zsTdW3AQhXykrEMgxPTX4M3Cm9hGVwE17lXMtG0

--
-- Database "primary_key_practice" dump
--

--
-- PostgreSQL database dump
--

\restrict yz5w2zN1J8XRsWrqM0AjIXjlx61I6K7PkCtadTOaC24uOUJ4ZHMGXrzX1FepYSE

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
-- Name: primary_key_practice; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE primary_key_practice WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE primary_key_practice OWNER TO postgres;

\unrestrict yz5w2zN1J8XRsWrqM0AjIXjlx61I6K7PkCtadTOaC24uOUJ4ZHMGXrzX1FepYSE
\connect primary_key_practice
\restrict yz5w2zN1J8XRsWrqM0AjIXjlx61I6K7PkCtadTOaC24uOUJ4ZHMGXrzX1FepYSE

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: course_enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.course_enrollments (
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    semester character varying(20) NOT NULL,
    enrollment_date date DEFAULT CURRENT_DATE,
    grade character(2)
);


ALTER TABLE public.course_enrollments OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Data for Name: course_enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.course_enrollments (student_id, course_id, semester, enrollment_date, grade) FROM stdin;
1	101	2024-Spring	2026-10-06	A 
1	102	2024-Spring	2026-10-06	B+
2	101	2024-Spring	2026-10-06	A-
1	101	2024-Fall	2026-10-06	A+
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, price) FROM stdin;
1	Laptop	1000.00
2	Mouse	25.50
3	Keyboard	50.00
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, name, email) FROM stdin;
1	Alice	alice@example.com
2	Bob	bob@example.com
3	Carol	carol@example.com
\.


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 3, true);


--
-- Name: course_enrollments course_enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.course_enrollments
    ADD CONSTRAINT course_enrollments_pkey PRIMARY KEY (student_id, course_id, semester);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- PostgreSQL database dump complete
--

\unrestrict yz5w2zN1J8XRsWrqM0AjIXjlx61I6K7PkCtadTOaC24uOUJ4ZHMGXrzX1FepYSE

--
-- Database "restored_lab" dump
--

--
-- PostgreSQL database dump
--

\restrict Ga8c4SmtxO0Q0Vafj75tKWkBIiYWP2BAIAotSsi7GGS8xWlQxzXJjXgrD8AUVHg

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
-- Name: restored_lab; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE restored_lab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE restored_lab OWNER TO postgres;

\unrestrict Ga8c4SmtxO0Q0Vafj75tKWkBIiYWP2BAIAotSsi7GGS8xWlQxzXJjXgrD8AUVHg
\connect restored_lab
\restrict Ga8c4SmtxO0Q0Vafj75tKWkBIiYWP2BAIAotSsi7GGS8xWlQxzXJjXgrD8AUVHg

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    account_id integer NOT NULL,
    balance numeric(10,2) NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_account_id_seq OWNER TO postgres;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_account_id_seq OWNED BY public.accounts.account_id;


--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    id integer NOT NULL,
    action text,
    "timestamp" timestamp without time zone
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: audit_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.audit_log_id_seq OWNER TO postgres;

--
-- Name: audit_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;


--
-- Name: customer_feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_feedback (
    id integer,
    feedback text
);


ALTER TABLE public.customer_feedback OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    department character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: feedback_imported; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback_imported (
    id integer,
    feedback text
);


ALTER TABLE public.feedback_imported OWNER TO postgres;

--
-- Name: import_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.import_test (
    id integer,
    amount numeric
);


ALTER TABLE public.import_test OWNER TO postgres;

--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    product_id integer NOT NULL,
    stock integer NOT NULL
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    log_id integer NOT NULL,
    message text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- Name: logs_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logs_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logs_log_id_seq OWNER TO postgres;

--
-- Name: logs_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logs_log_id_seq OWNED BY public.logs.log_id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_order_item_id_seq OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    total numeric(10,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: products_imported; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_imported (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products_imported OWNER TO postgres;

--
-- Name: products_utf8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_utf8 (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products_utf8 OWNER TO postgres;

--
-- Name: sales_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_data (
    id integer,
    amount numeric
);


ALTER TABLE public.sales_data OWNER TO postgres;

--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_preferences (
    id integer NOT NULL,
    user_id integer,
    theme character varying(50)
);


ALTER TABLE public.user_preferences OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_preferences_id_seq OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_preferences_id_seq OWNED BY public.user_preferences.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accounts account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN account_id SET DEFAULT nextval('public.accounts_account_id_seq'::regclass);


--
-- Name: audit_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: logs log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs ALTER COLUMN log_id SET DEFAULT nextval('public.logs_log_id_seq'::regclass);


--
-- Name: order_items order_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: user_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences ALTER COLUMN id SET DEFAULT nextval('public.user_preferences_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


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
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, order_id, product_id, quantity) FROM stdin;
1	1	101	2
2	1	101	1
3	5	101	2
4	5	102	1
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
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_preferences (id, user_id, theme) FROM stdin;
1	1	dark
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
1	John Doe	john@example.com
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
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (account_id);


--
-- Name: audit_log audit_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (product_id);


--
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (log_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products_imported products_imported_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_imported
    ADD CONSTRAINT products_imported_pkey PRIMARY KEY (product_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: products_utf8 products_utf8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_utf8
    ADD CONSTRAINT products_utf8_pkey PRIMARY KEY (product_id);


--
-- Name: user_preferences user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: user_preferences user_preferences_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict Ga8c4SmtxO0Q0Vafj75tKWkBIiYWP2BAIAotSsi7GGS8xWlQxzXJjXgrD8AUVHg

--
-- Database "school" dump
--

--
-- PostgreSQL database dump
--

\restrict EBBAHVJdk3kTePFrereLXZTlMHiWZPaDVJkd2FXBUIzUQ60CwmMxqjIlaEdgyMe

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
-- Name: school; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE school WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE school OWNER TO postgres;

\unrestrict EBBAHVJdk3kTePFrereLXZTlMHiWZPaDVJkd2FXBUIzUQ60CwmMxqjIlaEdgyMe
\connect school
\restrict EBBAHVJdk3kTePFrereLXZTlMHiWZPaDVJkd2FXBUIzUQ60CwmMxqjIlaEdgyMe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: courses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    title character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.courses_course_id_seq OWNER TO postgres;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.enrollments (
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    enrolled_on date DEFAULT CURRENT_DATE
);


ALTER TABLE public.enrollments OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders2 (
    order_id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.orders2 OWNER TO postgres;

--
-- Name: orders2_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders2_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders2_order_id_seq OWNER TO postgres;

--
-- Name: orders2_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders2_order_id_seq OWNED BY public.orders2.order_id;


--
-- Name: orders3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders3 (
    order_id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.orders3 OWNER TO postgres;

--
-- Name: orders3_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders3_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders3_order_id_seq OWNER TO postgres;

--
-- Name: orders3_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders3_order_id_seq OWNED BY public.orders3.order_id;


--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: student_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_orders (
    order_id integer NOT NULL,
    student_id integer NOT NULL,
    item character varying(100),
    ordered_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.student_orders OWNER TO postgres;

--
-- Name: student_orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_orders_order_id_seq OWNER TO postgres;

--
-- Name: student_orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_orders_order_id_seq OWNED BY public.student_orders.order_id;


--
-- Name: student_profiles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_profiles (
    profile_id integer NOT NULL,
    student_id integer NOT NULL,
    bio text
);


ALTER TABLE public.student_profiles OWNER TO postgres;

--
-- Name: student_profiles2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_profiles2 (
    student_id integer NOT NULL,
    bio text
);


ALTER TABLE public.student_profiles2 OWNER TO postgres;

--
-- Name: student_profiles_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_profiles_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_profiles_profile_id_seq OWNER TO postgres;

--
-- Name: student_profiles_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_profiles_profile_id_seq OWNED BY public.student_profiles.profile_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: t1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t1 (
    id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.t1 OWNER TO postgres;

--
-- Name: t1_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t1_id_seq OWNER TO postgres;

--
-- Name: t1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t1_id_seq OWNED BY public.t1.id;


--
-- Name: t2; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t2 (
    id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.t2 OWNER TO postgres;

--
-- Name: t2_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t2_id_seq OWNER TO postgres;

--
-- Name: t2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t2_id_seq OWNED BY public.t2.id;


--
-- Name: t3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t3 (
    id integer NOT NULL,
    student_id integer DEFAULT 0
);


ALTER TABLE public.t3 OWNER TO postgres;

--
-- Name: t3_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t3_id_seq OWNER TO postgres;

--
-- Name: t3_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t3_id_seq OWNED BY public.t3.id;


--
-- Name: t4; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t4 (
    id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.t4 OWNER TO postgres;

--
-- Name: t4_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t4_id_seq OWNER TO postgres;

--
-- Name: t4_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t4_id_seq OWNED BY public.t4.id;


--
-- Name: t5; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t5 (
    id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.t5 OWNER TO postgres;

--
-- Name: t5_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t5_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t5_id_seq OWNER TO postgres;

--
-- Name: t5_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t5_id_seq OWNED BY public.t5.id;


--
-- Name: t6; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.t6 (
    id integer NOT NULL,
    student_id integer
);


ALTER TABLE public.t6 OWNER TO postgres;

--
-- Name: t6_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.t6_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.t6_id_seq OWNER TO postgres;

--
-- Name: t6_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.t6_id_seq OWNED BY public.t6.id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: orders2 order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders2 ALTER COLUMN order_id SET DEFAULT nextval('public.orders2_order_id_seq'::regclass);


--
-- Name: orders3 order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders3 ALTER COLUMN order_id SET DEFAULT nextval('public.orders3_order_id_seq'::regclass);


--
-- Name: student_orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_orders ALTER COLUMN order_id SET DEFAULT nextval('public.student_orders_order_id_seq'::regclass);


--
-- Name: student_profiles profile_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_profiles ALTER COLUMN profile_id SET DEFAULT nextval('public.student_profiles_profile_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Name: t1 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t1 ALTER COLUMN id SET DEFAULT nextval('public.t1_id_seq'::regclass);


--
-- Name: t2 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t2 ALTER COLUMN id SET DEFAULT nextval('public.t2_id_seq'::regclass);


--
-- Name: t3 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t3 ALTER COLUMN id SET DEFAULT nextval('public.t3_id_seq'::regclass);


--
-- Name: t4 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t4 ALTER COLUMN id SET DEFAULT nextval('public.t4_id_seq'::regclass);


--
-- Name: t5 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t5 ALTER COLUMN id SET DEFAULT nextval('public.t5_id_seq'::regclass);


--
-- Name: t6 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t6 ALTER COLUMN id SET DEFAULT nextval('public.t6_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.courses (course_id, title) FROM stdin;
1	Databases
2	Math
\.


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.enrollments (student_id, course_id, enrolled_on) FROM stdin;
1	1	2026-10-06
1	2	2026-10-06
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (order_id, student_id) FROM stdin;
1	1
\.


--
-- Data for Name: orders2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders2 (order_id, student_id) FROM stdin;
\.


--
-- Data for Name: orders3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders3 (order_id, student_id) FROM stdin;
\.


--
-- Data for Name: student_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_orders (order_id, student_id, item, ordered_at) FROM stdin;
1	1	Book	2026-10-06 10:18:38.048014
2	1	Pen	2026-10-06 10:18:38.051808
\.


--
-- Data for Name: student_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_profiles (profile_id, student_id, bio) FROM stdin;
1	1	Loves SQL
\.


--
-- Data for Name: student_profiles2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_profiles2 (student_id, bio) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, name) FROM stdin;
1	Alice
\.


--
-- Data for Name: t1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t1 (id, student_id) FROM stdin;
\.


--
-- Data for Name: t2; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t2 (id, student_id) FROM stdin;
\.


--
-- Data for Name: t3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t3 (id, student_id) FROM stdin;
\.


--
-- Data for Name: t4; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t4 (id, student_id) FROM stdin;
\.


--
-- Data for Name: t5; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t5 (id, student_id) FROM stdin;
\.


--
-- Data for Name: t6; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.t6 (id, student_id) FROM stdin;
\.


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 2, true);


--
-- Name: orders2_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders2_order_id_seq', 1, false);


--
-- Name: orders3_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders3_order_id_seq', 1, false);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 2, true);


--
-- Name: student_orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_orders_order_id_seq', 2, true);


--
-- Name: student_profiles_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_profiles_profile_id_seq', 2, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, true);


--
-- Name: t1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t1_id_seq', 1, false);


--
-- Name: t2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t2_id_seq', 1, false);


--
-- Name: t3_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t3_id_seq', 1, false);


--
-- Name: t4_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t4_id_seq', 1, false);


--
-- Name: t5_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t5_id_seq', 1, false);


--
-- Name: t6_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.t6_id_seq', 1, false);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (student_id, course_id);


--
-- Name: orders2 orders2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders2
    ADD CONSTRAINT orders2_pkey PRIMARY KEY (order_id);


--
-- Name: orders3 orders3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders3
    ADD CONSTRAINT orders3_pkey PRIMARY KEY (order_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: student_orders student_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_orders
    ADD CONSTRAINT student_orders_pkey PRIMARY KEY (order_id);


--
-- Name: student_profiles2 student_profiles2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_profiles2
    ADD CONSTRAINT student_profiles2_pkey PRIMARY KEY (student_id);


--
-- Name: student_profiles student_profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_profiles
    ADD CONSTRAINT student_profiles_pkey PRIMARY KEY (profile_id);


--
-- Name: student_profiles student_profiles_student_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_profiles
    ADD CONSTRAINT student_profiles_student_id_key UNIQUE (student_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: t1 t1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t1
    ADD CONSTRAINT t1_pkey PRIMARY KEY (id);


--
-- Name: t2 t2_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t2
    ADD CONSTRAINT t2_pkey PRIMARY KEY (id);


--
-- Name: t3 t3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t3
    ADD CONSTRAINT t3_pkey PRIMARY KEY (id);


--
-- Name: t4 t4_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t4
    ADD CONSTRAINT t4_pkey PRIMARY KEY (id);


--
-- Name: t5 t5_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t5
    ADD CONSTRAINT t5_pkey PRIMARY KEY (id);


--
-- Name: t6 t6_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t6
    ADD CONSTRAINT t6_pkey PRIMARY KEY (id);


--
-- Name: enrollments enrollments_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id) ON DELETE CASCADE;


--
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: orders2 fk_orders2_student; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders2
    ADD CONSTRAINT fk_orders2_student FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: orders3 fk_orders3_student; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders3
    ADD CONSTRAINT fk_orders3_student FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: orders2 orders2_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders2
    ADD CONSTRAINT orders2_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: orders orders_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: student_orders student_orders_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_orders
    ADD CONSTRAINT student_orders_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: student_profiles2 student_profiles2_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_profiles2
    ADD CONSTRAINT student_profiles2_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: student_profiles student_profiles_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_profiles
    ADD CONSTRAINT student_profiles_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: t1 t1_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t1
    ADD CONSTRAINT t1_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE CASCADE;


--
-- Name: t2 t2_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t2
    ADD CONSTRAINT t2_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE SET NULL;


--
-- Name: t3 t3_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t3
    ADD CONSTRAINT t3_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE SET DEFAULT;


--
-- Name: t4 t4_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t4
    ADD CONSTRAINT t4_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON DELETE RESTRICT;


--
-- Name: t5 t5_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t5
    ADD CONSTRAINT t5_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON UPDATE CASCADE;


--
-- Name: t6 t6_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.t6
    ADD CONSTRAINT t6_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict EBBAHVJdk3kTePFrereLXZTlMHiWZPaDVJkd2FXBUIzUQ60CwmMxqjIlaEdgyMe

--
-- Database "student_records" dump
--

--
-- PostgreSQL database dump
--

\restrict 7bzcEtlljNfhHoY6ffYwykZp6wXUUeKuL6BhdIrER7bSNHEhI4GIdPhQgvrPU1C

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
-- Name: student_records; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE student_records WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE student_records OWNER TO postgres;

\unrestrict 7bzcEtlljNfhHoY6ffYwykZp6wXUUeKuL6BhdIrER7bSNHEhI4GIdPhQgvrPU1C
\connect student_records
\restrict 7bzcEtlljNfhHoY6ffYwykZp6wXUUeKuL6BhdIrER7bSNHEhI4GIdPhQgvrPU1C

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    price numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (product_id, product_name, price) FROM stdin;
1	Laptop	1200.00
2	Mouse	25.50
3	Keyboard	75.00
\.


--
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 3, true);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- PostgreSQL database dump complete
--

\unrestrict 7bzcEtlljNfhHoY6ffYwykZp6wXUUeKuL6BhdIrER7bSNHEhI4GIdPhQgvrPU1C

--
-- Database "tables_restore_lab" dump
--

--
-- PostgreSQL database dump
--

\restrict Gpy5oJ0xJbWBg60HbsNFJrIULDAxgg4K1XsotilEc9gSaNMXFbwgDgKUx1wDPTX

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
-- Name: tables_restore_lab; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE tables_restore_lab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE tables_restore_lab OWNER TO postgres;

\unrestrict Gpy5oJ0xJbWBg60HbsNFJrIULDAxgg4K1XsotilEc9gSaNMXFbwgDgKUx1wDPTX
\connect tables_restore_lab
\restrict Gpy5oJ0xJbWBg60HbsNFJrIULDAxgg4K1XsotilEc9gSaNMXFbwgDgKUx1wDPTX

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    department character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

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
-- PostgreSQL database dump complete
--

\unrestrict Gpy5oJ0xJbWBg60HbsNFJrIULDAxgg4K1XsotilEc9gSaNMXFbwgDgKUx1wDPTX

--
-- Database "transactions_lab" dump
--

--
-- PostgreSQL database dump
--

\restrict baFHr28FBrp7SD8wdOwaSLp3jU1Qhf06SfAZYXt8c3cxzTFIbnQAkiwyjS401eC

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
-- Name: transactions_lab; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE transactions_lab WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';


ALTER DATABASE transactions_lab OWNER TO postgres;

\unrestrict baFHr28FBrp7SD8wdOwaSLp3jU1Qhf06SfAZYXt8c3cxzTFIbnQAkiwyjS401eC
\connect transactions_lab
\restrict baFHr28FBrp7SD8wdOwaSLp3jU1Qhf06SfAZYXt8c3cxzTFIbnQAkiwyjS401eC

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accounts (
    account_id integer NOT NULL,
    balance numeric(10,2) NOT NULL
);


ALTER TABLE public.accounts OWNER TO postgres;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accounts_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.accounts_account_id_seq OWNER TO postgres;

--
-- Name: accounts_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accounts_account_id_seq OWNED BY public.accounts.account_id;


--
-- Name: audit_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.audit_log (
    id integer NOT NULL,
    action text,
    "timestamp" timestamp without time zone
);


ALTER TABLE public.audit_log OWNER TO postgres;

--
-- Name: audit_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.audit_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.audit_log_id_seq OWNER TO postgres;

--
-- Name: audit_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.audit_log_id_seq OWNED BY public.audit_log.id;


--
-- Name: customer_feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_feedback (
    id integer,
    feedback text
);


ALTER TABLE public.customer_feedback OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    email character varying(100),
    department character varying(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: feedback_imported; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback_imported (
    id integer,
    feedback text
);


ALTER TABLE public.feedback_imported OWNER TO postgres;

--
-- Name: import_test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.import_test (
    id integer,
    amount numeric
);


ALTER TABLE public.import_test OWNER TO postgres;

--
-- Name: inventory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventory (
    product_id integer NOT NULL,
    stock integer NOT NULL
);


ALTER TABLE public.inventory OWNER TO postgres;

--
-- Name: logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logs (
    log_id integer NOT NULL,
    message text,
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.logs OWNER TO postgres;

--
-- Name: logs_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logs_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.logs_log_id_seq OWNER TO postgres;

--
-- Name: logs_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logs_log_id_seq OWNED BY public.logs.log_id;


--
-- Name: order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer
);


ALTER TABLE public.order_items OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order_items_order_item_id_seq OWNER TO postgres;

--
-- Name: order_items_order_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    order_id integer NOT NULL,
    customer_id integer,
    total numeric(10,2)
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_order_id_seq OWNER TO postgres;

--
-- Name: orders_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id integer NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- Name: products_imported; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_imported (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products_imported OWNER TO postgres;

--
-- Name: products_utf8; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_utf8 (
    product_id integer DEFAULT nextval('public.products_product_id_seq'::regclass) CONSTRAINT products_product_id_not_null NOT NULL,
    name character varying(100),
    price numeric(10,2),
    CONSTRAINT products_price_check CHECK ((price >= (0)::numeric))
);


ALTER TABLE public.products_utf8 OWNER TO postgres;

--
-- Name: sales_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales_data (
    id integer,
    amount numeric
);


ALTER TABLE public.sales_data OWNER TO postgres;

--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_preferences (
    id integer NOT NULL,
    user_id integer,
    theme character varying(50)
);


ALTER TABLE public.user_preferences OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_preferences_id_seq OWNER TO postgres;

--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_preferences_id_seq OWNED BY public.user_preferences.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100),
    email character varying(150)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: accounts account_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts ALTER COLUMN account_id SET DEFAULT nextval('public.accounts_account_id_seq'::regclass);


--
-- Name: audit_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log ALTER COLUMN id SET DEFAULT nextval('public.audit_log_id_seq'::regclass);


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: logs log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs ALTER COLUMN log_id SET DEFAULT nextval('public.logs_log_id_seq'::regclass);


--
-- Name: order_items order_item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);


--
-- Name: orders order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);


--
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- Name: user_preferences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences ALTER COLUMN id SET DEFAULT nextval('public.user_preferences_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


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
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_items (order_item_id, order_id, product_id, quantity) FROM stdin;
1	1	101	2
2	1	101	1
3	5	101	2
4	5	102	1
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
-- Data for Name: user_preferences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_preferences (id, user_id, theme) FROM stdin;
1	1	dark
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
1	John Doe	john@example.com
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
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (account_id);


--
-- Name: audit_log audit_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.audit_log
    ADD CONSTRAINT audit_log_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: inventory inventory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (product_id);


--
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (log_id);


--
-- Name: order_items order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_pkey PRIMARY KEY (order_item_id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);


--
-- Name: products_imported products_imported_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_imported
    ADD CONSTRAINT products_imported_pkey PRIMARY KEY (product_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


--
-- Name: products_utf8 products_utf8_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_utf8
    ADD CONSTRAINT products_utf8_pkey PRIMARY KEY (product_id);


--
-- Name: user_preferences user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: inventory inventory_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: order_items order_items_order_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(order_id);


--
-- Name: order_items order_items_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT order_items_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.products(product_id);


--
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: user_preferences user_preferences_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

\unrestrict baFHr28FBrp7SD8wdOwaSLp3jU1Qhf06SfAZYXt8c3cxzTFIbnQAkiwyjS401eC

--
-- PostgreSQL database cluster dump complete
--

