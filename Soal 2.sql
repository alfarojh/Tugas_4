-- Database: Bootcamp WGS

-- DROP DATABASE IF EXISTS "Bootcamp WGS";

CREATE DATABASE "Bootcamp WGS"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Indonesia.1252'
    LC_CTYPE = 'English_Indonesia.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Table: public.Peserta

-- DROP TABLE IF EXISTS public."Peserta";

CREATE TABLE IF NOT EXISTS public."Peserta"
(
    "ID_Peserta" bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    "Nama" text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Peserta_pkey" PRIMARY KEY ("ID_Peserta")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Peserta"
    OWNER to postgres;

------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Table: public.Tugas

-- DROP TABLE IF EXISTS public."Tugas";

CREATE TABLE IF NOT EXISTS public."Tugas"
(
    "ID_Tugas" bigint NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    "Nama" text COLLATE pg_catalog."default" NOT NULL,
    "Deskripsi" text COLLATE pg_catalog."default",
    CONSTRAINT "Tugas_pkey" PRIMARY KEY ("ID_Tugas")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Tugas"
    OWNER to postgres;

------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Table: public.Nilai Tugas

-- DROP TABLE IF EXISTS public."Nilai Tugas";

CREATE TABLE IF NOT EXISTS public."Nilai Tugas"
(
    "ID_Peserta" bigint NOT NULL,
    "ID_Tugas" bigint NOT NULL,
    "Nilai" integer,
    CONSTRAINT "Nilai Tugas_pkey" PRIMARY KEY ("ID_Peserta", "ID_Tugas"),
    CONSTRAINT "Nilai Tugas_ID_Peserta_fkey" FOREIGN KEY ("ID_Peserta")
        REFERENCES public."Peserta" ("ID_Peserta") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Nilai Tugas_ID_Tugas_fkey" FOREIGN KEY ("ID_Tugas")
        REFERENCES public."Tugas" ("ID_Tugas") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Nilai Tugas"
    OWNER to postgres;

ALTER TABLE IF EXISTS public."Nilai Tugas"
    ADD COLUMN "Tanggal" date;

------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Isi untuk Tabel Peserta
INSERT INTO public."Peserta"("Nama")
VALUES
    ('Dodi'),
	('Santi'),
	('Budi'),
	('Susi'),
	('Mail'),
    ('Alice'),
    ('Bob'),
    ('Carol'),
    ('David'),
    ('Emily'),
    ('Frank'),
    ('Grace'),
    ('Henry'),
    ('Isabella'),
    ('Jack'),
    ('Kate'),
    ('Liam'),
    ('Mia'),
    ('Noah'),
    ('Olivia'),
    ('Peter'),
    ('Quinn'),
    ('Rachel'),
    ('Samuel'),
    ('Taylor'),
    ('Ulysses'),
    ('Victoria'),
    ('William'),
    ('Xander'),
    ('Yara'),
    ('Zachary'),
    ('Ava'),
    ('Benjamin'),
    ('Chloe'),
    ('Daniel'),
    ('Ella'),
    ('Finn'),
    ('Gabriella'),
    ('Hannah'),
    ('Isaac'),
    ('Jasmine'),
    ('Kevin'),
    ('Lily'),
    ('Mason'),
    ('Natalie'),
    ('Owen'),
    ('Penelope'),
    ('Quentin'),
    ('Rebecca'),
    ('Sophia'),
    ('Thomas'),
    ('Uma'),
    ('Vincent'),
    ('Violet'),
    ('Wyatt'),
    ('Zoey'),
    ('Alex'),
    ('Brooke'),
    ('Charlie'),
    ('Diana'),
    ('Evan'),
    ('Faith'),
    ('George'),
    ('Haley'),
    ('Ian'),
    ('Jessica'),
    ('Kaleb'),
    ('Luna'),
    ('Matthew'),
    ('Nora'),
    ('Oliver'),
    ('Peyton'),
    ('Quincy'),
    ('Riley'),
    ('Sam'),
    ('Tara'),
    ('Usher'),
    ('Valerie'),
    ('Walter'),
    ('Ximena'),
    ('Yasmine'),
    ('Zane');

------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Isi untuk Tabel Tugas
INSERT INTO public."Tugas" ("Nama", "Deskripsi") VALUES 
	('Tugas1', 'Membuat Aplikasi Kelola Peserta Bootcamp'),
	('Tugas2', 'Membuat API menggunakan Java Spring'),
	('Tugas3', 'Membuat API untuk Universitas WGS'),
	('Tugas4', 'Membuat ERD');

------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Isi untuk Tabel Nilai Tugas
INSERT INTO public."Nilai Tugas" ("ID_Peserta", "ID_Tugas", "Nilai") VALUES	
	(1, 1, 38),
	(1, 2, 64),
	(1, 3, 31),
	(1, 4, 86),
	(2, 1, 28),
	(2, 2, 28),
	(2, 3, 74),
	(2, 4, 35),
	(3, 1, 42),
	(3, 2, 82),
	(3, 3, 97),
	(3, 4, 10),
	(4, 1, 68),
	(4, 2, 47),
	(4, 3, 19),
	(4, 4, 22),
	(5, 1, 52),
	(5, 2, 22),
	(5, 3, 35),
	(5, 4, 79),
	(6, 1, 69),
	(6, 2, 18),
	(6, 3, 89),
	(6, 4, 91),
	(7, 1, 79),
	(7, 2, 67),
	(7, 3, 78),
	(7, 4, 53),
	(8, 1, 28),
	(8, 2, 26),
	(8, 3, 42),
	(8, 4, 12),
	(9, 1, 33),
	(9, 2, 63),
	(9, 3, 78),
	(9, 4, 26),
	(10, 1, 69),
	(10, 2, 98),
	(10, 3, 89),
	(10, 4, 33),
	(11, 1, 48),
	(11, 2, 74),
	(11, 3, 91),
	(11, 4, 24),
	(12, 1, 31),
	(12, 2, 56),
	(12, 3, 1),
	(12, 4, 87),
	(13, 1, 85),
	(13, 2, 15),
	(13, 3, 11),
	(13, 4, 44),
	(14, 1, 22),
	(14, 2, 5),
	(14, 3, 0),
	(14, 4, 10),
	(15, 1, 86),
	(15, 2, 96),
	(15, 3, 95),
	(15, 4, 48),
	(16, 1, 76),
	(16, 2, 39),
	(16, 3, 35),
	(16, 4, 93),
	(17, 1, 38),
	(17, 2, 38),
	(17, 3, 65),
	(17, 4, 51),
	(18, 1, 10),
	(18, 2, 96),
	(18, 3, 98),
	(18, 4, 90),
	(19, 1, 23),
	(19, 2, 6),
	(19, 3, 16),
	(19, 4, 95),
	(20, 1, 79),
	(20, 2, 55),
	(20, 3, 2),
	(20, 4, 17),
	(21, 1, 18),
	(21, 2, 37),
	(21, 3, 33),
	(21, 4, 26),
	(22, 1, 0),
	(22, 2, 57),
	(22, 3, 37),
	(22, 4, 93),
	(23, 1, 21),
	(23, 2, 25),
	(23, 3, 23),
	(23, 4, 96),
	(24, 1, 47),
	(24, 2, 74),
	(24, 3, 69),
	(24, 4, 92),
	(25, 1, 29),
	(25, 2, 36),
	(25, 3, 62),
	(25, 4, 64),
	(26, 1, 60),
	(26, 2, 74),
	(26, 3, 73),
	(26, 4, 96),
	(27, 1, 38),
	(27, 2, 36),
	(27, 3, 15),
	(27, 4, 27),
	(28, 1, 28),
	(28, 2, 40),
	(28, 3, 1),
	(28, 4, 98),
	(29, 1, 48),
	(29, 2, 52),
	(29, 3, 23),
	(29, 4, 14),
	(30, 1, 10),
	(30, 2, 50),
	(30, 3, 84),
	(30, 4, 32),
	(31, 1, 66),
	(31, 2, 81),
	(31, 3, 84),
	(31, 4, 82),
	(32, 1, 52),
	(32, 2, 92),
	(32, 3, 27),
	(32, 4, 23),
	(33, 1, 64),
	(33, 2, 36),
	(33, 3, 84),
	(33, 4, 65),
	(34, 1, 50),
	(34, 2, 7),
	(34, 3, 55),
	(34, 4, 18),
	(35, 1, 67),
	(35, 2, 93),
	(35, 3, 97),
	(35, 4, 57),
	(36, 1, 9),
	(36, 2, 27),
	(36, 3, 55),
	(36, 4, 87),
	(37, 1, 90),
	(37, 2, 85),
	(37, 3, 8),
	(37, 4, 18),
	(38, 1, 7),
	(38, 2, 56),
	(38, 3, 28),
	(38, 4, 84),
	(39, 1, 30),
	(39, 2, 46),
	(39, 3, 48),
	(39, 4, 93),
	(40, 1, 51),
	(40, 2, 72),
	(40, 3, 97),
	(40, 4, 2),
	(41, 1, 16),
	(41, 2, 30),
	(41, 3, 63),
	(41, 4, 38),
	(42, 1, 70),
	(42, 2, 30),
	(42, 3, 62),
	(42, 4, 44),
	(43, 1, 6),
	(43, 2, 31),
	(43, 3, 52),
	(43, 4, 43),
	(44, 1, 31),
	(44, 2, 45),
	(44, 3, 27),
	(44, 4, 37),
	(45, 1, 52),
	(45, 2, 8),
	(45, 3, 34),
	(45, 4, 88),
	(46, 1, 23),
	(46, 2, 84),
	(46, 3, 29),
	(46, 4, 62),
	(47, 1, 16),
	(47, 2, 31),
	(47, 3, 58),
	(47, 4, 92),
	(48, 1, 90),
	(48, 2, 58),
	(48, 3, 40),
	(48, 4, 22),
	(49, 1, 49),
	(49, 2, 86),
	(49, 3, 67),
	(49, 4, 0),
	(50, 1, 6),
	(50, 2, 21),
	(50, 3, 94),
	(50, 4, 87),
	(51, 1, 63),
	(51, 2, 37),
	(51, 3, 25),
	(51, 4, 51),
	(52, 1, 81),
	(52, 2, 46),
	(52, 3, 67),
	(52, 4, 69),
	(53, 1, 91),
	(53, 2, 25),
	(53, 3, 97),
	(53, 4, 81),
	(54, 1, 97),
	(54, 2, 89),
	(54, 3, 98),
	(54, 4, 96),
	(55, 1, 85),
	(55, 2, 18),
	(55, 3, 56),
	(55, 4, 69),
	(56, 1, 38),
	(56, 2, 90),
	(56, 3, 82),
	(56, 4, 76),
	(57, 1, 38),
	(57, 2, 33),
	(57, 3, 8),
	(57, 4, 58),
	(58, 1, 77),
	(58, 2, 79),
	(58, 3, 0),
	(58, 4, 63),
	(59, 1, 89),
	(59, 2, 77),
	(59, 3, 23),
	(59, 4, 68),
	(60, 1, 25),
	(60, 2, 35),
	(60, 3, 80),
	(60, 4, 37),
	(61, 1, 23),
	(61, 2, 81),
	(61, 3, 9),
	(61, 4, 74),
	(62, 1, 56),
	(62, 2, 97),
	(62, 3, 86),
	(62, 4, 30),
	(63, 1, 55),
	(63, 2, 78),
	(63, 3, 57),
	(63, 4, 54),
	(64, 1, 64),
	(64, 2, 94),
	(64, 3, 88),
	(64, 4, 11),
	(65, 1, 73),
	(65, 2, 78),
	(65, 3, 73),
	(65, 4, 18),
	(66, 1, 6),
	(66, 2, 9),
	(66, 3, 75),
	(66, 4, 58),
	(67, 1, 45),
	(67, 2, 73),
	(67, 3, 15),
	(67, 4, 75),
	(68, 1, 73),
	(68, 2, 79),
	(68, 3, 48),
	(68, 4, 62),
	(69, 1, 50),
	(69, 2, 68),
	(69, 3, 3),
	(69, 4, 40),
	(70, 1, 39),
	(70, 2, 18),
	(70, 3, 1),
	(70, 4, 84),
	(71, 1, 41),
	(71, 2, 31),
	(71, 3, 60),
	(71, 4, 10),
	(72, 1, 28),
	(72, 2, 70),
	(72, 3, 5),
	(72, 4, 21),
	(73, 1, 77),
	(73, 2, 22),
	(73, 3, 68),
	(73, 4, 82),
	(74, 1, 1),
	(74, 2, 42),
	(74, 3, 96),
	(74, 4, 2),
	(75, 1, 33),
	(75, 2, 93),
	(75, 3, 79),
	(75, 4, 91),
	(76, 1, 2),
	(76, 2, 95),
	(76, 3, 53),
	(76, 4, 12),
	(77, 1, 89),
	(77, 2, 42),
	(77, 3, 44),
	(77, 4, 8),
	(78, 1, 64),
	(78, 2, 68),
	(78, 3, 36),
	(78, 4, 2),
	(79, 1, 82),
	(79, 2, 25),
	(79, 3, 32),
	(79, 4, 52),
	(80, 1, 32),
	(80, 2, 55),
	(80, 3, 35),
	(80, 4, 67),
	(81, 1, 60),
	(81, 2, 61),
	(81, 3, 25),
	(81, 4, 49),
	(82, 1, 32),
	(82, 2, 61),
	(82, 3, 19),
	(82, 4, 99);

-- Update Tabel Nilai Tugas
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 1 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 1 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 1 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 1 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 2 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 2 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 2 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 2 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 3 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 3 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 3 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 3 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 4 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 4 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 4 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 4 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 5 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 5 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 5 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 5 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 6 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 6 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 6 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 6 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 7 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 7 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 7 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 7 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 8 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 8 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 8 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 8 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 9 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 9 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 9 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 9 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 10 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 10 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 10 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 10 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 11 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 11 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 11 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 11 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 12 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 12 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 12 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 12 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 13 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 13 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 13 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 13 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 14 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 14 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 14 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 14 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 15 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 15 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 15 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 15 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 16 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 16 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 16 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 16 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 17 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 17 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 17 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 17 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 18 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 18 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 18 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 18 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 19 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 19 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 19 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 19 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 20 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 20 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 20 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 20 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 21 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 21 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 21 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 21 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 22 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 22 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 22 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 22 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 23 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 23 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 23 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 23 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 24 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 24 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 24 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 24 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 25 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 25 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 25 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 25 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 26 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 26 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 26 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 26 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 27 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 27 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 27 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 27 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 28 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 28 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 28 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 28 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 29 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 29 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 29 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 29 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 30 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 30 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 30 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 30 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 31 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 31 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 31 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 31 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 32 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 32 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 32 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 32 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 33 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 33 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 33 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 33 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 34 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 34 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 34 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 34 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 35 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 35 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 35 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 35 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 36 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 36 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 36 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 36 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 37 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 37 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 37 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 37 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 38 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 38 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 38 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 38 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 39 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 39 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 39 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 39 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 40 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 40 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 40 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 40 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 41 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 41 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 41 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 41 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 42 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 42 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 42 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 42 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 43 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 43 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 43 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 43 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 44 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 44 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 44 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 44 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 45 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 45 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 45 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 45 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 46 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 46 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 46 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 46 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 47 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 47 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 47 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 47 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 48 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 48 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 48 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 48 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 49 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 49 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 49 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 49 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 50 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 50 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 50 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 50 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 51 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 51 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 51 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 51 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 52 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 52 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 52 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 52 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 53 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 53 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 53 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 53 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 54 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 54 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 54 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 54 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 55 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 55 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 55 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 55 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 56 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 56 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 56 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 56 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 57 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 57 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 57 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 57 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 58 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 58 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 58 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 58 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 59 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 59 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 59 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 59 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 60 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 60 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 60 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 60 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 61 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 61 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 61 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 61 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 62 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 62 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 62 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 62 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 63 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 63 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 63 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 63 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 64 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 64 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 64 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 64 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 65 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 65 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 65 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 65 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 66 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 66 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 66 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 66 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 67 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 67 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 67 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 67 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 68 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 68 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 68 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 68 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 69 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 69 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 69 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 69 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 70 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 70 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 70 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 70 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 71 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 71 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 71 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 71 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 72 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 72 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 72 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 72 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 73 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 73 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 73 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 73 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 74 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 74 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 74 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 74 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 75 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 75 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 75 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 75 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 76 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 76 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 76 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 76 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 77 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 77 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 77 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 77 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 78 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 78 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 78 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 78 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 79 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 79 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 79 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 79 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 80 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 80 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 80 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 80 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 81 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 81 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-04' WHERE "ID_Peserta" = 81 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 81 AND "ID_Tugas" = 4;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 82 AND "ID_Tugas" = 1;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-03' WHERE "ID_Peserta" = 82 AND "ID_Tugas" = 2;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-02' WHERE "ID_Peserta" = 82 AND "ID_Tugas" = 3;
UPDATE public."Nilai Tugas" SET "Tanggal" = '2023-01-01' WHERE "ID_Peserta" = 82 AND "ID_Tugas" = 4;