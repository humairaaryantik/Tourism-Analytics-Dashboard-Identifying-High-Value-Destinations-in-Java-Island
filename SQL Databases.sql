/* cara mengimport file/databases dalam csv ke my SQL 
CREATE DATABASE (nama_databases) > USE (nama_databases) > klik kanan di schema (nama_databases) > table data import wizard > masukkan file (wajib csv) satu persatu */

CREATE DATABASE tourism_db;
USE tourism_db;
SELECT * FROM package_tourism;
SELECT * FROM tourism_rating;
SELECT * FROM tourism_with_id;
SELECT * FROM user;

-- city, category, rating, place_name, longitude, latitude, jumlah kunjungan
SELECT
    ti.Place_Id,
    ti.City,
    ti.Place_Name,
    ti.Category,
    ti.Rating,
    ti.Lat,
    COUNT(tr.Place_Ratings) AS "Jumlah Kunjungan"
FROM tourism_with_id_cleaned ti
JOIN tourism_rating tr
ON ti.Place_Id = tr.Place_Id
GROUP BY 
    ti.Place_Id,
	ti.City,
    ti.Place_Name,
	ti.Category,
    ti.Rating,
    ti.Lat;

SELECT COUNT(*) AS total_kunjungan
FROM tourism_rating;

SELECT COUNT(*) FROM tourism_with_id_cleaned;