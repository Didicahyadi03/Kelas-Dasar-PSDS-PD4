--cara membuat table sendiri
CREATE TABLE didi (
NIM INTERGER PRIMARY KEY,
NamaDepan VARCHAR(10),
NamaBelakang VARCHAR(10),
NomorHP VARCHAR(14)
)

--cara input data
INSERT INTO didi(NIM,NamaDepan,NamaBelakang,NomorHP)
VALUES ("2200015012","didi","cahayadi","083824034448")

--cara mellihat data yang sudah di inputkan
SELECT * FROM didi

--tugas insertkan nama teman kalian