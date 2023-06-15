--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (32, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (33, 'Web Programming');
INSERT INTO public.courses VALUES (34, 'Database Systems');
INSERT INTO public.courses VALUES (35, 'Computer Networks');
INSERT INTO public.courses VALUES (36, 'SQL');
INSERT INTO public.courses VALUES (37, 'Machine Learning');
INSERT INTO public.courses VALUES (38, 'Computer Systems');
INSERT INTO public.courses VALUES (39, 'Web Applications');
INSERT INTO public.courses VALUES (40, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (41, 'Python');
INSERT INTO public.courses VALUES (42, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (43, 'Calculus');
INSERT INTO public.courses VALUES (44, 'Game Architecture');
INSERT INTO public.courses VALUES (45, 'Algorithms');
INSERT INTO public.courses VALUES (46, 'UNIX');
INSERT INTO public.courses VALUES (47, 'Server Administration');
INSERT INTO public.courses VALUES (48, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (52, 'Database Administration');
INSERT INTO public.majors VALUES (53, 'Web Development');
INSERT INTO public.majors VALUES (54, 'Data Science');
INSERT INTO public.majors VALUES (55, 'Network Engineering');
INSERT INTO public.majors VALUES (56, 'Computer Programming');
INSERT INTO public.majors VALUES (57, 'Game Design');
INSERT INTO public.majors VALUES (58, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (52, 32);
INSERT INTO public.majors_courses VALUES (53, 33);
INSERT INTO public.majors_courses VALUES (52, 34);
INSERT INTO public.majors_courses VALUES (54, 32);
INSERT INTO public.majors_courses VALUES (55, 35);
INSERT INTO public.majors_courses VALUES (52, 36);
INSERT INTO public.majors_courses VALUES (54, 37);
INSERT INTO public.majors_courses VALUES (55, 38);
INSERT INTO public.majors_courses VALUES (56, 35);
INSERT INTO public.majors_courses VALUES (52, 39);
INSERT INTO public.majors_courses VALUES (57, 40);
INSERT INTO public.majors_courses VALUES (54, 41);
INSERT INTO public.majors_courses VALUES (56, 42);
INSERT INTO public.majors_courses VALUES (58, 38);
INSERT INTO public.majors_courses VALUES (57, 43);
INSERT INTO public.majors_courses VALUES (53, 32);
INSERT INTO public.majors_courses VALUES (54, 43);
INSERT INTO public.majors_courses VALUES (53, 42);
INSERT INTO public.majors_courses VALUES (57, 44);
INSERT INTO public.majors_courses VALUES (58, 35);
INSERT INTO public.majors_courses VALUES (57, 45);
INSERT INTO public.majors_courses VALUES (58, 46);
INSERT INTO public.majors_courses VALUES (58, 47);
INSERT INTO public.majors_courses VALUES (56, 38);
INSERT INTO public.majors_courses VALUES (56, 41);
INSERT INTO public.majors_courses VALUES (55, 48);
INSERT INTO public.majors_courses VALUES (53, 39);
INSERT INTO public.majors_courses VALUES (55, 45);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (68, 'Rhea', 'Kellems', 52, 2.5);
INSERT INTO public.students VALUES (69, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (70, 'Kimberly', 'Whitley', 53, 3.8);
INSERT INTO public.students VALUES (71, 'Jimmy', 'Felipe', 52, 3.7);
INSERT INTO public.students VALUES (72, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (73, 'Casares', 'Hijo', 57, 4.0);
INSERT INTO public.students VALUES (74, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (75, 'Sterling', 'Boss', 57, 3.9);
INSERT INTO public.students VALUES (76, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (77, 'Kaija', 'Uronen', 57, 3.7);
INSERT INTO public.students VALUES (78, 'Faye', 'Conn', 57, 2.1);
INSERT INTO public.students VALUES (79, 'Efren', 'Reilly', 53, 3.9);
INSERT INTO public.students VALUES (80, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (81, 'Maxine', 'Hagenes', 52, 2.9);
INSERT INTO public.students VALUES (82, 'Larry', 'Saunders', 54, 2.2);
INSERT INTO public.students VALUES (83, 'Karl', 'Kuhar', 53, NULL);
INSERT INTO public.students VALUES (84, 'Lieke', 'Hazenveld', 57, 3.5);
INSERT INTO public.students VALUES (85, 'Obie', 'Hilpert', 53, NULL);
INSERT INTO public.students VALUES (86, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (87, 'Nathan', 'Turner', 52, 3.3);
INSERT INTO public.students VALUES (88, 'Gerald', 'Osiki', 54, 2.2);
INSERT INTO public.students VALUES (89, 'Vanya', 'Hassanah', 57, 4.0);
INSERT INTO public.students VALUES (90, 'Roxelana', 'Florescu', 52, 3.2);
INSERT INTO public.students VALUES (91, 'Helene', 'Parker', 54, 3.4);
INSERT INTO public.students VALUES (92, 'Mariana', 'Russel', 53, 1.8);
INSERT INTO public.students VALUES (93, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (94, 'Mehdi', 'Vandenberghe', 52, 1.9);
INSERT INTO public.students VALUES (95, 'Dejon', 'Howell', 53, 4.0);
INSERT INTO public.students VALUES (96, 'Aliya', 'Gulgowski', 58, 2.6);
INSERT INTO public.students VALUES (97, 'Ana', 'Tupajic', 54, 3.1);
INSERT INTO public.students VALUES (98, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 48, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 58, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 98, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

