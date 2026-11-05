--
-- PostgreSQL database dump
--

\restrict Xb7Vp09MOnUpQeqxBGb1lzGtUuhdCIBpvhphcafAcZrYPzaUv0vUDKDnc2JzEcA

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

-- Started on 2026-11-05 11:48:08

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
-- TOC entry 220 (class 1259 OID 32913)
-- Name: Размещение; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Размещение" (
    "Номер_склада" integer NOT NULL,
    "Код_товара" integer NOT NULL,
    "Количество_упаковок" integer CONSTRAINT "Размещение_Количество_упаков_not_null" NOT NULL,
    "Дата_отгрузки" date,
    "Вес" numeric(10,2),
    "Отметка_о_получение" boolean DEFAULT false
);


ALTER TABLE public."Размещение" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 32904)
-- Name: Склады; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Склады" (
    "Номер_склада" integer NOT NULL,
    "Вместимость" integer NOT NULL,
    "Адрес_склада" character varying(255) NOT NULL,
    "Заведубщий_складом" character varying(150) NOT NULL
);


ALTER TABLE public."Склады" OWNER TO postgres;

--
-- TOC entry 4912 (class 0 OID 32913)
-- Dependencies: 220
-- Data for Name: Размещение; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Размещение" ("Номер_склада", "Код_товара", "Количество_упаковок", "Дата_отгрузки", "Вес", "Отметка_о_получение") FROM stdin;
1	101	200	2025-11-01	1500.50	t
1	102	150	2025-11-05	980.00	f
2	101	300	2025-11-03	2200.75	t
2	103	120	2025-11-07	640.20	f
3	104	450	2025-11-02	3100.00	t
4	102	80	2025-11-06	520.40	f
5	105	600	2025-11-04	4800.90	t
6	101	95	2025-11-08	710.30	f
7	106	700	2025-11-01	5600.00	t
8	103	210	2025-11-09	1120.60	f
\.


--
-- TOC entry 4911 (class 0 OID 32904)
-- Dependencies: 219
-- Data for Name: Склады; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Склады" ("Номер_склада", "Вместимость", "Адрес_склада", "Заведубщий_складом") FROM stdin;
1	5000	г. Москва, ул. Складская, 1	Иванов И.И.
2	3000	г. Санкт-Петербург, пр. Логистический, 5	Петров П.П.
3	7500	г. Екатеринбург, ул. Промышленная, 12	Сидоров С.С.
4	4200	г. Новосибирск, ул. Транспортная, 8	Кузнецов А.В.
5	6100	г. Казань, ул. Логистическая, 23	Смирнова Е.А.
6	2800	г. Нижний Новгород, ул. Грузовая, 4	Волков Д.Н.
7	9000	г. Краснодар, ул. Южная, 15	Морозов В.С.
8	3500	г. Самара, ул. Заводская, 7	Фёдорова О.И.
9	5500	г. Ростов-на-Дону, пр. Складской, 30	Никитин Р.М.
10	4800	г. Уфа, ул. Индустриальная, 19	Белова Т.К.
\.


--
-- TOC entry 4762 (class 2606 OID 32921)
-- Name: Размещение Размещение_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Размещение"
    ADD CONSTRAINT "Размещение_pkey" PRIMARY KEY ("Номер_склада", "Код_товара");


--
-- TOC entry 4760 (class 2606 OID 32912)
-- Name: Склады Склады_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Склады"
    ADD CONSTRAINT "Склады_pkey" PRIMARY KEY ("Номер_склада");


--
-- TOC entry 4763 (class 2606 OID 32922)
-- Name: Размещение Размещение_Номер_склада_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Размещение"
    ADD CONSTRAINT "Размещение_Номер_склада_fkey" FOREIGN KEY ("Номер_склада") REFERENCES public."Склады"("Номер_склада") ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2026-11-05 11:48:08

--
-- PostgreSQL database dump complete
--

\unrestrict Xb7Vp09MOnUpQeqxBGb1lzGtUuhdCIBpvhphcafAcZrYPzaUv0vUDKDnc2JzEcA

