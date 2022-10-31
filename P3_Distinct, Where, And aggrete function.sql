--mengakses tabel customer
SELECT * FROM Customer c

--menampilkan country pada tabel customer
SELECT c.country FROM customer c

--menampilkan country tabel customer dengan fungsi DISTINCT
SELECT DISTINCT (c.country) FROM customer c

--Menampilkan semua data dari Brazil dan City sao paulo
SELECT * FROM customer c
WHERE c.country ='Brazil' AND c.city ='São Paulo'

SELECT * FROM customer c
WHERE c.country ='Brazil' OR c.city ='São Paulo'


SELECT * FROM customer c
WHERE c.country IN ('Brazil','Germany')



--menghitung jumlah total.
SELECT SUM(i.total) FROM Invoice i

--menghitung jumlah average.
SELECT AVG(i.total) FROM Invoice i

--nilai minimum data
SELECT MIN(i.total) AS NilaiMinimum FROM Invoice i
SELECT MIN(i.total) NilaiMinimum FROM Invoice i

--nilai maksimum data
SELECT MAX(i.total) FROM Invoice i




