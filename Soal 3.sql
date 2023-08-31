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
	"Peserta"."ID_Peserta" as "ID Peserta", 
	"Peserta"."Nama" as "Nama Peserta", 
	AVG("Nilai Tugas"."Nilai") as "Nilai Rata-rata"
FROM 
	public."Nilai Tugas" JOIN public."Peserta" ON "Nilai Tugas"."ID_Peserta" = "Peserta"."ID_Peserta"
GROUP BY 
	"Peserta"."ID_Peserta"
ORDER BY 
	"Peserta"."ID_Peserta" ASC

-- 3c
WITH AvgValues AS (
    SELECT
        "ID_Peserta",
        AVG("Nilai") AS "Avg_Nilai"
    FROM
        public."Nilai Tugas"
    GROUP BY
        "ID_Peserta"
)
SELECT
    CASE
        WHEN "Avg_Nilai" >= 0 AND "Avg_Nilai" < 20 THEN '0-19'
        WHEN "Avg_Nilai" >= 20 AND "Avg_Nilai" < 40 THEN '20-39'
        WHEN "Avg_Nilai" >= 40 AND "Avg_Nilai" < 60 THEN '40-59'
        WHEN "Avg_Nilai" >= 60 AND "Avg_Nilai" <= 80 THEN '60-79'
        WHEN "Avg_Nilai" >= 80 AND "Avg_Nilai" <= 100 THEN '80-100'
        ELSE 'Tidak Valid'
    END AS "Rentang Nilai",
    COUNT(*) AS "Jumlah Peserta"
FROM
    AvgValues
GROUP BY
    "Rentang Nilai"
ORDER BY
    "Rentang Nilai";
	
-- 3d
WITH AvgValues AS (
    SELECT
        "ID_Peserta",
        AVG("Nilai") AS "Avg_Nilai"
    FROM
        public."Nilai Tugas"
    GROUP BY
        "ID_Peserta"
)
SELECT
    CASE
        WHEN "Avg_Nilai" >= 0 AND "Avg_Nilai" < 20 THEN '0-19'
        WHEN "Avg_Nilai" >= 20 AND "Avg_Nilai" < 40 THEN '20-39'
        WHEN "Avg_Nilai" >= 40 AND "Avg_Nilai" < 60 THEN '40-59'
        WHEN "Avg_Nilai" >= 60 AND "Avg_Nilai" <= 80 THEN '60-79'
        WHEN "Avg_Nilai" >= 80 AND "Avg_Nilai" <= 100 THEN '80-100'
        ELSE 'Tidak Valid'
    END AS "Rentang Nilai",
    STRING_AGG("Peserta"."Nama", ', ') AS "Nama Peserta"
FROM
    AvgValues JOIN public."Peserta" ON AvgValues."ID_Peserta" = "Peserta"."ID_Peserta"
GROUP BY 
    "Rentang Nilai"
ORDER BY
    "Rentang Nilai";

-- 3e
SELECT
    CASE
        WHEN "Nilai Tugas"."Tanggal" = '2023-01-01' THEN '1 Agustus 2023'
        WHEN "Nilai Tugas"."Tanggal" = '2023-01-02' THEN '2 Agustus 2023'
        WHEN "Nilai Tugas"."Tanggal" = '2023-01-03' THEN '3 Agustus 2023'
        WHEN "Nilai Tugas"."Tanggal" = '2023-01-04' THEN '4 Agustus 2023'
        ELSE 'Tidak Valid'
    END AS "Rentang Tanggal",
    COUNT (*) AS "Jumlah Penilaian"
FROM
    public."Nilai Tugas"
GROUP BY 
    "Rentang Tanggal"
ORDER BY
    "Rentang Tanggal";