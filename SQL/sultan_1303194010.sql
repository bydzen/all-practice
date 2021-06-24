/*DDL BISOKOP*/

CREATE TABLE FILM_1303194010 (
    id_film     VARCHAR2 (10) NOT NULL,
    judul       VARCHAR2 (50),
    durasi      VARCHAR2 (10),
    tahun       NUMBER,
    sinopsis    VARCHAR2 (2000)
    );
ALTER TABLE FILM_1303194010 ADD CONSTRAINT Film_PK PRIMARY KEY (id_film);

CREATE TABLE TEATER_1303194010 (
    id_teater   VARCHAR2 (10) NOT NULL,
    kelas       VARCHAR2 (10),
    harga       NUMBER,
    kapasitas   NUMBER
    );
ALTER TABLE TEATER_1303194010 ADD CONSTRAINT Teater_PK PRIMARY KEY (id_teater);

CREATE TABLE JADWAL_1303194010 (
    id_jadwal       VARCHAR2 (10) NOT NULL,
    id_film         VARCHAR2 (10) NOT NULL,
    id_teater       VARCHAR2 (10) NOT NULL,
    periode_start   DATE,
    periode_end     DATE
    );
ALTER TABLE JADWAL_1303194010 ADD CONSTRAINT Jadwal_PK PRIMARY KEY (id_jadwal);


CREATE TABLE KURSI_1303194010 (
    id_inventaris   VARCHAR2 (5) NOT NULL,
    id_teater       VARCHAR2 (10) NOT NULL,
	no_kursi        VARCHAR2 (5)
    );
ALTER TABLE KURSI_1303194010 ADD CONSTRAINT Kursi_PK PRIMARY KEY (id_inventaris);


CREATE TABLE MEMBER_1303194010 (
    id_member   VARCHAR2 (10) NOT NULL,
    nama_member VARCHAR2 (30),
    no_hp       VARCHAR2 (13),
    email       VARCHAR2 (50),
    tgl_lahir   DATE
    );
ALTER TABLE MEMBER_1303194010 ADD CONSTRAINT Member_PK PRIMARY KEY (id_member);


CREATE TABLE TRANSAKSI_1303194010 (
    kode_pemesanan  VARCHAR2 (10) NOT NULL,
    id_member       VARCHAR2 (10) NOT NULL,
    id_jadwal       VARCHAR2 (10) NOT NULL,
    id_inventaris   VARCHAR2 (5) NOT NULL,
    tanggal         DATE,
    status          VARCHAR2 (10)
    );
ALTER TABLE TRANSAKSI_1303194010 ADD CONSTRAINT Transaksi_PK PRIMARY KEY (kode_pemesanan);


ALTER SESSION SET nls_date_format = 'dd-MM-yyyy';


ALTER TABLE JADWAL_1303194010 ADD CONSTRAINT Jadwal_Film_FK FOREIGN KEY (id_film) REFERENCES FILM_1303194010(id_film);

ALTER TABLE JADWAL_1303194010 ADD CONSTRAINT Jadwal_Teater_FK FOREIGN KEY (id_teater) REFERENCES TEATER_1303194010(id_teater);

ALTER TABLE KURSI_1303194010 ADD CONSTRAINT Kursi_Teater_FK FOREIGN KEY (id_teater) REFERENCES TEATER_1303194010(id_teater);

ALTER TABLE TRANSAKSI_1303194010 ADD CONSTRAINT TRANSAKSI_Jadwal_FK FOREIGN KEY (id_jadwal) REFERENCES JADWAL_1303194010(id_jadwal);

ALTER TABLE TRANSAKSI_1303194010 ADD CONSTRAINT TRANSAKSI_Kursi_FK FOREIGN KEY (id_inventaris) REFERENCES KURSI_1303194010(id_inventaris);

ALTER TABLE TRANSAKSI_1303194010 ADD CONSTRAINT TRANSAKSI_Member_FK FOREIGN KEY (id_member) REFERENCES MEMBER_1303194010(id_member);

/*DML BIOSKOP*/
INSERT INTO FILM_1303194010 (id_film, judul, durasi, tahun, sinopsis) VALUES('F0101','Keluarga Cemara','110',2019,'Fokus cerita ini masih soal, Emak serta kedua anak mereka, Euis dan Ara . Persis dengan cerita di sinetronnya, film ini mengisahkan tentang bagaimana perjalanan hidup keluarga Abah yang semula nyaman dan mapan lalu kemudian mendadak bangkrut. Abah pun mengajak keluarganya pindah ke rumah warisan yang cukup jauh dari kota. Dengan segala keterbatasan dan kekurangan yang ia memiliki, Abah berusaha menjadi kepala keluarga serta ayah yang baik untuk anak-anaknya. Untung saja, Emak tak pernah lelah mendampinginya dan berusaha menjadi sandaran di saat mereka sedih.');
INSERT INTO FILM_1303194010 (id_film, judul, durasi, tahun, sinopsis) VALUES('F0102','Habibie Ainun 3','96',2019,'Habibie dan Ainun 3 adalah sebuah film Indonesia tahun 2019 yang disutradarai oleh Hanung Bramantyo dan diproduksi oleh Manoj Punjabi (MD Pictures). Film ini adalah film ketiga dari seri film Habibie dan Ainun. Bila "Rudy Habibie" merupakan prekuel dari kisah Habibie muda, maka film Habibie dan Ainun 3 ini adalah prekuel dari kisah Ainun muda. Film ini dijadwalkan rilis pada 19 Desember 2019. Hasri Ainun Besari diperankan oleh Maudy Ayunda menggantikan Bunga Citra Lestari pada film pertama, karena film ini akan lebih menekankan pada kisah Ainun di masa muda.');
INSERT INTO FILM_1303194010 (id_film, judul, durasi, tahun, sinopsis) VALUES('F0103','Taufiq','105',2019,'Kisah penjalanan hidup politisi yang juga suami Mantan Presiden RI, Megawati Soekarnoputri, Taufiq Kiemas diangkat dalam sebuah film tayang 14 Maret 2019. Film yang diangkat dari kisah nyata itu disutradarai sekaligus skenarionya ditulis oleh Ismail Basbeth. Perjalanan hidup membawanya ke Jakarta dan bertemu langsung dengan Soekarno, menjalin persahabatan dengan Guntur Soekarnoputra serta bertemu Megawati Soekarnoputri untuk pertama kalinya. Taufiq akan memahami arti dari persahabatan, keluarga, cinta dan negara ketika dia menjalani ujian hidup sebagai seorang nasionalis. Setelah itu Ia dijebloskan ke penjara bersama sahabatnya dituduh sebagai anggota Komunis. Dalam penjara Taufiq banyak bertemu orang-orang hebat. Dari situlah perjalanan seorang lelaki yang menantang badai.');
INSERT INTO FILM_1303194010 (id_film, judul, durasi, tahun, sinopsis) VALUES('F0104','Buya Hamka','110',2019,'Buya Hamka adalah film drama biografi Indonesia tentang Abdul Malik Karim Amrullah atau Hamka, seorang ulama Indonesia yang dikenal sebagai penulis, pujangga, dan politisi. Buya Hamka akan mengisahkan kehidupan Hamka sejak lahir sampai meninggal dunia. Sebelum menjadi sosok yang dikenal banyak orang, Hamka telah melewati beberapa perubahan, mulai dari kanak-kanak, remaja, hingga berkeluarga. Sebagai ulama, film ini menyoroti bagaimana cara Hamka menyampaikan dakwahnya secara santun. Selain itu, Buya Hamka menyoroti aspek humanis Hamka dan prosesnya menggapai semua pencapaian.');

INSERT INTO TEATER_1303194010 (id_teater, kelas, harga, kapasitas) VALUES('Teater 1','Reguler',30000,50);
INSERT INTO TEATER_1303194010 (id_teater, kelas, harga, kapasitas) VALUES('Teater 2','Sweetbox',100000,50);
INSERT INTO TEATER_1303194010 (id_teater, kelas, harga, kapasitas) VALUES('Teater 3','4D',75000,50);
INSERT INTO TEATER_1303194010 (id_teater, kelas, harga, kapasitas) VALUES('Teater 4','Velvet',80000,50);
INSERT INTO TEATER_1303194010 (id_teater, kelas, harga, kapasitas) VALUES('Teater 5','3D',50000,50);

INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT001','F0101','Teater 1','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT002','F0101','Teater 1','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT003','F0102','Teater 1','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT004','F0101','Teater 2','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT005','F0103','Teater 2','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT006','F0102','Teater 2','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT007','F0104','Teater 2','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT008','F0102','Teater 3','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT009','F0101','Teater 1','01-07-2019','07-07-2019');
INSERT INTO JADWAL_1303194010 (id_jadwal, id_film, id_teater, periode_start, periode_end) VALUES('JT010','F0102','Teater 1','01-07-2019','07-07-2019');

INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN101','Teater 1','A1');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN102','Teater 1','A2');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN103','Teater 1','A3');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN104','Teater 1','A4');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN105','Teater 1','A5');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN106','Teater 2','A6');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN107','Teater 2','A7');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN108','Teater 2','A8');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN109','Teater 2','B1');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN110','Teater 2','B2');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN111','Teater 2','C1');
INSERT INTO KURSI_1303194010 (id_inventaris, id_teater, no_kursi) VALUES('IN112','Teater 2','C2');

INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0111','Anto','085267656789','Anto2016@gmail.com','21-07-1989');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0112','Budi','081367589632','Budi2016@gmail.com','03-01-1985');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0113','Ari','081267867543','Ari2016@gmail.com','24-11-1983');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0114','Rahmi','085267935678','Rahmi2016@gmail.com','01-09-1981');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0115','Fahmi','085767298908','Fahmi2016@gmail.com','15-07-1986');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0116','Rusli','085643755398','Rusli2016@gmail.com','26-02-1988');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0117','Doni','081398426789','Doni2016@gmail.com','17-04-1986');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0118','Tati','085245289074','Tati2016@gmail.com','22-06-1985');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0119','Dono','081287234567','Dono2016@gmail.com','03-07-1990');
INSERT INTO MEMBER_1303194010 (id_member, nama_member, no_hp,email, tgl_lahir) VALUES('MM0120','Joko','081223670942','Joko2016@gmail.com','19-07-1988');

INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10001','MM0111','JT001','IN110','15-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10002','MM0112','JT006','IN109','16-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10003','MM0113','JT008','IN111','17-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10004','MM0114','JT001','IN107','18-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10005','MM0115','JT006','IN106','19-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10006','MM0116','JT001','IN101','20-12-2019','bayar');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10007','MM0117','JT008','IN111','21-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10008','MM0118','JT001','IN103','22-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10009','MM0119','JT006','IN104','23-12-2019','pesan');
INSERT INTO TRANSAKSI_1303194010 (kode_pemesanan, id_member, id_jadwal, id_inventaris, tanggal, status) VALUES('P10010','MM0120','JT008','IN112','24-12-2019','checkin');

/*DROP TABLE*/
/*
BEGIN
FOR cur_rec IN (SELECT object_name, object_type FROM user_objects WHERE object_type IN ('TABLE', 'VIEW', 'PACKAGE', 'PROCEDURE', 'FUNCTION', 'SEQUENCE', 'SYNONYM', 'PACKAGE BODY'))
    LOOP
        BEGIN
        IF cur_rec.object_type = 'TABLE'
        THEN
        EXECUTE IMMEDIATE 'DROP '
                          || cur_rec.object_type
                          || ' "'
                          || cur_rec.object_name
                          || '" CASCADE CONSTRAINTS';
        ELSE
        EXECUTE IMMEDIATE 'DROP '
                          || cur_rec.object_type
                          || ' "'
                          || cur_rec.object_name
                          || '"';
        END IF;
        EXCEPTION
        WHEN OTHERS
        THEN
            DBMS_OUTPUT.put_line (   'FAILED: DROP '
                                  || cur_rec.object_type
                                  || ' "'
                                  || cur_rec.object_name
                                  || '"'
                                 );
        END;
    END LOOP;
END;
*/

/* STUDI KASUS MODUL 6 (NO JOIN) */
/* Nomor 1 */
SELECT film_1303194010.judul, teater_1303194010.id_teater, jadwal_1303194010.periode_start, jadwal_1303194010.periode_end
FROM film_1303194010, teater_1303194010, jadwal_1303194010
WHERE (film_1303194010.id_film = jadwal_1303194010.id_film
AND teater_1303194010.id_teater = jadwal_1303194010.id_teater)
AND '05-JUL-2019' BETWEEN jadwal_1303194010.periode_start AND jadwal_1303194010.periode_end;

/* Untuk cek nomor 1 */
UPDATE jadwal_1303194010 SET periode_start='10-MAR-2019', periode_end='20-APR-2019' WHERE id_jadwal='JT005';
UPDATE jadwal_1303194010 SET periode_start='01-JUL-2019', periode_end='07-JUL-2019' WHERE id_jadwal='JT005';

/* Nomor 2 */
SELECT film_1303194010.judul, teater_1303194010.id_teater, jadwal_1303194010.periode_start, jadwal_1303194010.periode_end
FROM film_1303194010, teater_1303194010, jadwal_1303194010
WHERE (film_1303194010.id_film = jadwal_1303194010.id_film
AND teater_1303194010.id_teater = jadwal_1303194010.id_teater)
AND 'Habibie Ainun 3' IN (film_1303194010.judul);

/* Nomor 3 */
SELECT member_1303194010.id_member, transaksi_1303194010.tanggal, transaksi_1303194010.status
FROM member_1303194010, transaksi_1303194010, film_1303194010, jadwal_1303194010
WHERE (member_1303194010.id_member = transaksi_1303194010.id_member
AND film_1303194010.id_film = jadwal_1303194010.id_film
AND jadwal_1303194010.id_jadwal = transaksi_1303194010.id_jadwal)
AND 'Keluarga Cemara' IN (film_1303194010.judul);

/* Nomor 4 */
SELECT member_1303194010.id_member, member_1303194010.nama_member, TRUNC(MONTHS_BETWEEN(SYSDATE, member_1303194010.tgl_lahir)/12) AGE, kursi_1303194010.no_kursi
FROM member_1303194010, kursi_1303194010, transaksi_1303194010
WHERE (member_1303194010.id_member = transaksi_1303194010.id_member
AND kursi_1303194010.id_inventaris = transaksi_1303194010.id_inventaris)
AND TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) > 32;

/* TUGAS PENDAHULUAN MOD 6 */

SELECT judul, teater_1303194010.id_teater, teater_1303194010.harga
FROM jadwal_1303194010
JOIN film_1303194010 ON (film_1303194010.id_film = jadwal_1303194010.id_film)
JOIN teater_1303194010 ON (teater_1303194010.id_teater = jadwal_1303194010.id_teater)
WHERE teater_1303194010.id_teater = 'Teater 1';

SELECT nama_member ||' menonton film "'|| judul ||'" di '|| id_teater AS "Detail Pemesanan"
FROM transaksi_1303194010
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN member_1303194010 USING (id_member)
JOIN film_1303194010 USING (id_film)
JOIN teater_1303194010 USING (id_teater);

SELECT nama_member, TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) UMUR, no_kursi
FROM transaksi_1303194010
JOIN member_1303194010 USING (id_member)
JOIN kursi_1303194010 USING (id_inventaris)
WHERE no_hp LIKE '%78' AND no_kursi LIKE 'A%';

SELECT nama_member, kode_pemesanan, status
FROM member_1303194010 NATURAL JOIN transaksi_1303194010
WHERE (tanggal BETWEEN '18-Dec-2019' AND '24-Dec-2019')
AND status = 'pesan';

/* STUDI KASUS MODUL 6 (WITH JOIN) */
/* Nomor 1 dengan join */
SELECT judul, id_teater, periode_start, periode_end
FROM film_1303194010
NATURAL JOIN jadwal_1303194010
WHERE '01-JUL-2019' BETWEEN periode_start AND periode_end;

/* Untuk cek nomor 1 */
UPDATE jadwal_1303194010 SET periode_start='10-MAR-2019', periode_end='20-APR-2019' WHERE id_jadwal='JT005';
UPDATE jadwal_1303194010 SET periode_start='01-JUL-2019', periode_end='07-JUL-2019' WHERE id_jadwal='JT005';

/* Nomor 2 natural join */
SELECT judul, id_teater, periode_start, periode_end
FROM film_1303194010
NATURAL JOIN jadwal_1303194010
WHERE 'Habibie Ainun 3' IN (judul);

/* Nomor 3 natural join */
SELECT id_member, tanggal, status
FROM member_1303194010 NATURAL JOIN transaksi_1303194010 NATURAL JOIN jadwal_1303194010 NATURAL JOIN film_1303194010
WHERE 'Keluarga Cemara' IN (judul);

/* Nomor 4 natural join */
SELECT id_member, nama_member, TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) AGE, no_kursi
FROM member_1303194010
NATURAL JOIN transaksi_1303194010
NATURAL JOIN kursi_1303194010
WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) > 32;

/* ============= TP MODUL 7 ============= */
/* Nomor 4 */
SELECT judul ||' adalah film dengan durasi terpendek yaitu '
|| durasi ||' Menit, yang ditonton dengen umur termuda yaitu '
|| TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) AS "KETERANGAN"
FROM transaksi_1303194010
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN film_1303194010 USING (id_film)
JOIN member_1303194010 USING (id_member)
WHERE durasi >= (
    SELECT MIN(durasi)
    FROM film_1303194010)
AND TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) = (
    SELECT MIN(TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12))
    FROM member_1303194010);

/* Nomor 5 */
SELECT teater_1303194010.id_teater, kelas,
COUNT(*) AS "TOTAL PEMAKAIAN"
FROM jadwal_1303194010
JOIN teater_1303194010
ON (jadwal_1303194010.id_teater = teater_1303194010.id_teater)
GROUP BY teater_1303194010.id_teater, kelas
HAVING COUNT(id_jadwal) = (
    SELECT MAX(COUNT(*))
    FROM jadwal_1303194010
    GROUP BY id_teater);

/* Nomor 6 */
SELECT nama_member, judul
FROM transaksi_1303194010
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN member_1303194010 USING (id_member)
JOIN film_1303194010 USING (id_film)
GROUP BY nama_member, judul
HAVING COUNT(id_film) <= (SELECT MAX(COUNT(*)) FROM jadwal_1303194010 GROUP BY id_teater)
AND (COUNT(id_teater) <= (
    SELECT MAX(COUNT(*))
    FROM jadwal_1303194010
    GROUP BY id_film))
AND (COUNT(id_member) <= (
    SELECT MAX(COUNT(*)) FROM transaksi_1303194010 GROUP BY id_jadwal))
ORDER BY judul DESC;

/* Nomor 6 */
SELECT nama_member, judul
FROM transaksi_1303194010
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN member_1303194010 USING (id_member)
JOIN film_1303194010 USING (id_film)
WHERE id_film = (
    SELECT MIN(id_film)
    FROM jadwal_1303194010);
    
/* PRAKTIKUM MOD 7*/
SELECT id_teater, ' jumlah pendapatan: Rp. '
|| SUM(harga)
|| ' ' || chr(38)
|| ' rata-rata pendapatan: Rp. '
|| AVG(harga) AS "KETERANGAN"
FROM transaksi_1303194010
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN teater_1303194010 USING (id_teater)
HAVING SUM(HARGA) >= 150000 AND SUM(HARGA) <= 320000
GROUP BY id_teater;

SELECT judul, id_teater, COUNT(judul) AS JUMLAH
FROM jadwal_1303194010
JOIN teater_1303194010 USING (id_teater)
JOIN film_1303194010 USING (id_film)
HAVING COUNT(judul) > 3
GROUP BY judul, id_teater;

/*
    No.1
    Pada query nomor 1 diperlukan pendapatan harga menggunakan SUM,
    dan rata-rata harga menggunakan AVG.
    Setelah itu, menentukan harga diantara 150000-320000 menggunakan HAVING pada SUM harga.
    Lalu group berdasarkan id_teater.
    
    No.2
    Pada query nomor 2 diperlukan perhitungan banyaknya id_film menggunakan COUNT.
    Setelah itu, dicari jumlah penayangan film > 3 dengan HAVING COUNT dari judul.
    Lalu group berdasarkan judul, dan id_teater.
*/

SELECT COUNT(id_inventaris) AS "Jumlah Kursi"
FROM transaksi_1303194010
JOIN kursi_1303194010 USING (id_inventaris)
HAVING COUNT(id_inventaris) = (
    SELECT MAX(COUNT(id_inventaris)) 
    FROM kursi_1303194010 
    GROUP BY id_teater)
GROUP BY id_teater;

SELECT nama_member, TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) AS UMUR,
COUNT(kode_pemesanan) AS "JUMLAH ORDER", harga AS "HARGA ASLI",
(harga * 0.9) AS "HARGA DISKON"
FROM transaksi_1303194010
JOIN member_1303194010 USING (id_member)
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN teater_1303194010 USING (id_teater)
HAVING COUNT(status) > 1
GROUP BY nama_member, tgl_lahir, harga;

/* TES AKHIR MOD 7 */
SELECT id_teater, COUNT(no_hp) JUMLAH
FROM transaksi_1303194010
JOIN jadwal_1303194010 USING (id_jadwal)
JOIN teater_1303194010 USING (id_teater)
JOIN member_1303194010 USING (id_member)
WHERE no_hp LIKE '085%'
HAVING COUNT(id_teater) = (
    SELECT MAX(COUNT(id_teater)) FROM jadwal_1303194010 GROUP BY id_film)
GROUP BY id_teater;

/* TP MOD 9 CREATE VIEW*/
DROP VIEW History;
DROP VIEW Teater_Termahal;

/* JURNAL MOD 9 */
CREATE VIEW FILM_TERLAMA_1303194010 AS
SELECT id_film, judul, durasi
FROM film_1303194010
WHERE durasi < (SELECT MAX(durasi) FROM film_1303194010)
AND ROWNUM <=3
ORDER BY judul DESC;

CREATE VIEW FILM_DI_TeaterTermurah_1303194010 AS
SELECT judul, harga
FROM jadwal_1303194010
NATURAL JOIN film_1303194010
NATURAL JOIN teater_1303194010
WHERE harga = (SELECT MIN(harga) FROM teater_1303194010)
AND ROWNUM <= 3;

CREATE VIEW MEMBER_dibawah_35_tahun_1303194010 AS
SELECT id_member, nama_member, TRUNC(MONTHS_BETWEEN(SYSDATE, tgl_lahir)/12) UMUR
FROM member_1303194010
WHERE ROWNUM <= 3
ORDER BY nama_member;

CREATE VIEW Harga_Diskon_1303194010 AS
SELECT id_member, id_film, id_teater, harga,
CASE
    WHEN judul = 'Keluarga Cemara' THEN (harga * 0.7)
    ELSE harga
    END AS SALE
FROM transaksi_1303194010
NATURAL JOIN member_1303194010
NATURAL JOIN jadwal_1303194010
NATURAL JOIN teater_1303194010
NATURAL JOIN film_1303194010
ORDER BY id_teater;

CREATE VIEW Pemasukan_Teater_1303194010 AS
SELECT id_teater, SUM(harga) TOTAL
FROM transaksi_1303194010
NATURAL JOIN jadwal_1303194010
NATURAL JOIN teater_1303194010
WHERE status = 'bayar' OR status = 'pesan'
GROUP BY id_teater;

/* Tes Akhir MOD 9 */
CREATE VIEW iformasi_teater AS
SELECT * FROM teater_1303194010
WHERE harga > 50001;