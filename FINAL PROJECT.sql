CREATE TABLE Outlet (
	id_outlet INT,
	nama_outlet VARCHAR(30)
)

INSERT INTO Outlet
VALUES (1,'Pamela 1'),
       (2,'Pamela 2'),
       (3,'Pamela 3'),
       (4,'Pamela 4'),
       (5,'Pamela 5'),
       (6,'Pamela 6')
       
SELECT * FROM Outlet o

CREATE TABLE Barang (
	id_produk INT,
	nama_produk VARCHAR(30),
	stok_produk INT,
	harga_produk INT,
	harga_jual INT
)

INSERT INTO Barang
VALUES (1,'Oreo',267,4500,5000),
	   (2,'Indomie Rendang',521,1200,1800),
	   (3,'Indome Goreng',127,1250,1750),
	   (4,'Indome Soto',426,1223,1678),
	   (5,'Aqua 600 ml',523,2350,3000),
	   (6,'Le Mineral 600 ml',524,2456,2500),
	   (7,'Beras Sahaja 5 Kg',121,48000,54000),
	   (8,'Mama Lemon 250 ml',123,4500,5000),
	   (9,'Cimory Almond 200 ml', 21, 3000,3900),
	   (10,'Lifeboy 250 ml',52,23400,26000)
	   
SELECT * FROM Barang b

SELECT * FROM Penjualan p


--Keuntungan Pamela 4 pada bulan Oktober
SELECT p.id_outlet  , SUM(p.produk_terjual) , b.harga_jual , harga_produk, 
	   SUM(p.produk_terjual) * ((harga_jual - harga_produk)) AS Keuntungan 
FROM Barang b 
INNER JOIN Penjualan p    
WHERE p.id_outlet  = "4" 


--Berapa Keuntungan id_produk 5 di Pamela 6?
SELECT b.id_produk ,b.nama_produk , SUM(p.produk_terjual) , b.harga_jual , harga_produk, 
	   SUM(p.produk_terjual) * ((harga_jual - harga_produk)) AS Keuntungan 
FROM Barang b 
INNER JOIN Penjualan p  
ON b.id_produk  = p.id_produk  
WHERE p.id_outlet  = "6" AND p.id_produk = "5"  

--Berapa Keuntungan id_produk 1 di Pamela 4?
SELECT b.id_produk ,b.nama_produk , SUM(p.produk_terjual) , b.harga_jual , harga_produk, 
	   SUM(p.produk_terjual) * ((harga_jual - harga_produk)) AS Keuntungan 
FROM Barang b 
INNER JOIN Penjualan p  
ON b.id_produk  = p.id_produk  
WHERE p.id_outlet  = "4" AND p.id_produk = "1" 

--Berapa Keuntungan id_produk 7 di Pamela 6?
SELECT b.id_produk ,b.nama_produk , SUM(p.produk_terjual) , b.harga_jual , harga_produk, 
	   SUM(p.produk_terjual) * ((harga_jual - harga_produk)) AS Keuntungan 
FROM Barang b 
INNER JOIN Penjualan p  
ON b.id_produk  = p.id_produk  
WHERE p.id_outlet  = "6" AND p.id_produk = "7" 

--Berapa Keuntungan id_produk 2 di Pamela 2?
SELECT b.id_produk ,b.nama_produk , SUM(p.produk_terjual) , b.harga_jual , harga_produk, 
	   SUM(p.produk_terjual) * ((harga_jual - harga_produk)) AS Keuntungan 
FROM Barang b 
INNER JOIN Penjualan p  
ON b.id_produk  = p.id_produk  
WHERE p.id_outlet  = "2" AND p.id_produk = "2" 

