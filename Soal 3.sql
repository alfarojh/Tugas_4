-- 3a
SELECT 
	"Tugas"."Nama" as "Nama Tugas", 
	"Nilai Tugas"."Nilai" as "Nilai" 
FROM 
	public."Nilai Tugas" JOIN public."Tugas" ON "Nilai Tugas"."ID_Tugas" = "Tugas"."ID_Tugas"
WHERE 
	"Nilai Tugas"."ID_Peserta" = 1

-- 3b
SELECT 
	"Peserta"."ID_Peserta" AS "ID Peserta", 
	"Peserta"."Nama" AS "Nama Peserta", 
	COALESCE(AVG("Nilai Tugas"."Nilai"), 0) AS "Nilai Rata-rata"
FROM 
	public."Nilai Tugas" RIGHT JOIN public."Peserta" ON "Nilai Tugas"."ID_Peserta" = "Peserta"."ID_Peserta"
GROUP BY 
	"Peserta"."ID_Peserta"
ORDER BY 
	"Peserta"."ID_Peserta" ASC

-- 3c
WITH RentangNilai AS (
    SELECT '0-20' AS "Rentang Nilai"
    UNION
    SELECT '20-40'
    UNION
    SELECT '40-60'
    UNION
    SELECT '60-80'
    UNION
    SELECT '80-100'
	ORDER BY "Rentang Nilai"
),
AvgValues AS (
    SELECT 
        "Peserta"."ID_Peserta" AS "ID Peserta", 
        AVG("Nilai Tugas"."Nilai") AS "Nilai Rata-rata"
    FROM 
        public."Nilai Tugas" RIGHT JOIN public."Peserta" ON "Nilai Tugas"."ID_Peserta" = "Peserta"."ID_Peserta"
    GROUP BY 
        "Peserta"."ID_Peserta"
)
SELECT
    RentangNilai."Rentang Nilai",
    COALESCE(COUNT(AvgValues."ID Peserta"), 0) AS "Jumlah Peserta"
FROM
    RentangNilai
LEFT JOIN
    AvgValues ON (
        (RentangNilai."Rentang Nilai" = '0-20' AND "Nilai Rata-rata" BETWEEN 0 AND 20) OR
        (RentangNilai."Rentang Nilai" = '20-40' AND "Nilai Rata-rata" BETWEEN 20 AND 40) OR
        (RentangNilai."Rentang Nilai" = '40-60' AND "Nilai Rata-rata" BETWEEN 40 AND 60) OR
        (RentangNilai."Rentang Nilai" = '60-80' AND "Nilai Rata-rata" BETWEEN 60 AND 80) OR
        (RentangNilai."Rentang Nilai" = '80-100' AND "Nilai Rata-rata" BETWEEN 80 AND 100)
    )
GROUP BY
    RentangNilai."Rentang Nilai"
ORDER BY
    RentangNilai."Rentang Nilai";

	
-- 3d
WITH RentangNilai AS (
    SELECT '0-20' AS "Rentang Nilai"
    UNION
    SELECT '20-40'
    UNION
    SELECT '40-60'
    UNION
    SELECT '60-80'
    UNION
    SELECT '80-100'
	ORDER BY "Rentang Nilai"
),
AvgValues AS (
    SELECT 
        "Peserta"."ID_Peserta" AS "ID Peserta", 
		"Peserta"."Nama" AS "Nama Peserta",
        AVG("Nilai Tugas"."Nilai") AS "Nilai Rata-rata"
    FROM 
        public."Nilai Tugas" RIGHT JOIN public."Peserta" ON "Nilai Tugas"."ID_Peserta" = "Peserta"."ID_Peserta"
    GROUP BY 
        "Peserta"."ID_Peserta"
)
SELECT
    RentangNilai."Rentang Nilai",
    COALESCE(STRING_AGG(DISTINCT "Nama Peserta", ', '), 'Tidak Ada Peserta') AS "Nama Peserta"
FROM
    RentangNilai
LEFT JOIN
    AvgValues ON (
        (RentangNilai."Rentang Nilai" = '0-20' AND "Nilai Rata-rata" BETWEEN 0 AND 20) OR
        (RentangNilai."Rentang Nilai" = '20-40' AND "Nilai Rata-rata" BETWEEN 20 AND 40) OR
        (RentangNilai."Rentang Nilai" = '40-60' AND "Nilai Rata-rata" BETWEEN 40 AND 60) OR
        (RentangNilai."Rentang Nilai" = '60-80' AND "Nilai Rata-rata" BETWEEN 60 AND 80) OR
        (RentangNilai."Rentang Nilai" = '80-100' AND "Nilai Rata-rata" BETWEEN 80 AND 100)
    )
GROUP BY
    RentangNilai."Rentang Nilai"
ORDER BY
    RentangNilai."Rentang Nilai";

-- 3e
WITH RangeDate AS (
    SELECT 
		TO_CHAR(generated_date, 'DD-MM-YYYY') AS "Tanggal"
	FROM 
		generate_series('2023-01-01'::date, '2023-01-31'::date, '1 day') AS generated_date
)

SELECT 
	RangeDate."Tanggal", COUNT("Nilai Tugas"."ID_Peserta") AS "Jumlah Penilaian"
FROM 
	RangeDate LEFT JOIN public."Nilai Tugas" ON RangeDate."Tanggal"::date = "Nilai Tugas"."Tanggal"
GROUP BY
	RangeDate."Tanggal"
ORDER BY
	RangeDate."Tanggal"