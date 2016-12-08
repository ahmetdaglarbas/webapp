/* veritabanı önceden oluşturulmuşsa sil */
DROP DATABASE IF EXISTS webapp;

/* veritabanını oluştur */
CREATE DATABASE webapp CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

/* oluşturulan veritabanınu seç */
USE webapp;

/* tablo önceden oluşturulmuşsa sil */
DROP TABLE IF EXISTS webapp.duyurular;

/* tabloyu oluştur */
CREATE TABLE webapp.duyurular (
id INT NOT NULL AUTO_INCREMENT,
baslik VARCHAR(100),
metin TEXT NULL,
tarih DATE NULL,
PRIMARY KEY (id));

/* kullanıcı önceden oluşturulmuşsa sil */
DROP USER IF EXISTS 'webuser'@'localhost';

/* web3660 şifresiyle kullanıcıyı oluştur  */
CREATE USER 'webuser'@'localhost' IDENTIFIED BY 'web3660';

/* kullanıcıya webapp veritabanındaki duyurular tablosu üzerinde tüm izinleri ver */
GRANT ALL PRIVILEGES ON webapp.duyurular TO 'webuser'@'localhost';

/* izinleri yeniden yükle (etkili olabilmesi için) */
FLUSH PRIVILEGES;

/* duyurular tablosuna verileri gir */
INSERT INTO duyurular(baslik, metin, tarih)
VALUES("10 Kasım Mesajı",
"Türkiye Cumhuriyeti'nin kurucusu, Milli Mücadele'nin büyük önderi, Gazi Mustafa Kemal Atatürk'ü ebediyete irtihalinin 78'inci yıl dönümünde saygı ile anıyoruz. Vefatının 78'inci yıl dönümü vesilesiyle Gazi Mustafa Kemal Atatürk'ü ve silah arkadaşlarını, bütün şehitlerimizi ve gazilerimizi bir kere daha rahmetle yâd ediyor, birlik ve beraberlik içinde en büyük eserim dediği cumhuriyetimizi daha da güçlendirmek için çalışmaya devam ediyoruz.",
"2016-11-10");

INSERT INTO duyurular(baslik, metin, tarih)
VALUES("Okçuluk Kursu Kayıt Ve Çalışmaları Başlamıştır",
"Üniversitemiz spor salonu içerisinde bulunan Okçuluk Antrenman Salonunda Öğrenci ve Personelimize yönelik ücretsiz Okçuluk Kursu Başlamış olup, Çalışma Programı Pazartesi ve Salı Günleri 15:00 – 20:00 saatleri arasındadır. Çalışmalar guruplar halinde yapılacak olup, kayıtlar kontenjan ile sınırlıdır. Okçuluk kursuna kayıt yaptırmak isteyen Öğrenci ve Personellerimiz Pazartesi ve Salı Günleri 15:00 – 20:00 saatleri arasında Okçuluk Antrenman Salonuna müracaat edebilirler.",
"2016-11-02");

INSERT INTO duyurular(baslik, metin, tarih)
VALUES("Ek Ders Ödemelerine İlişkin Duyuru",
"Ek ders ücretlerinin daha hızlı ödenebilmesini teminen ders yükü bildirim formlarında yer alan ıslak imza uygulamasına son verilerek elektronik imza uygulamasına geçilmiştir. Buna göre; EBYS üzerinden gönderilen Ders Yükü Bildirim Formu, dersi veren öğretim elemanı tarafından incelenerek uygun bulunduğu takdirde elektronik imza ile onaylanacaktır. Onaylanan Ders Yükü Bildirim Formlarına göre ilgili döneme ait ek ders ücretleri tahakkuk ettirilerek ödemesi yapılacaktır. Onaylama işlemi yapılmadığı takdirde ilgili öğretim elemanına ait ek ders ödemesi yapılamayacaktır. Bilgilerinize sunulur.",
"2016-11-01");

INSERT INTO duyurular(baslik, metin, tarih)
VALUES("29 Ekim Cumhuriyet Bayramı",
"Büyük Türk Milletinin şanlı tarihindeki en parlak başarılarından biri olan Cumhuriyetimizin kuruluşunun 93. yılını kutlamanın sevinci içerisindeyiz. Cumhuriyet bayramımız kutlu olsun. Bilecik Şeyh Edebali Üniversitesi Rektörlüğü",
"2016-10-29");

INSERT INTO duyurular(baslik, metin, tarih)
VALUES("Gaziantep'te Meydana Gelen Terör Saldırısını Lanetliyoruz",
"20.08.2016 Cumartesi günü Gaziantep'te meydana gelen çirkin terör saldırısını lanetliyor, saldırıda hayatını kaybedenlere Allah'tan rahmet, yaralılara acil şifalar diliyoruz. Ülkemizin huzurunu hedef alan bu alçak saldırı karşısında milletimizin sağduyuyla ve her zamankinden daha güçlü şekilde dayanışma içinde olacağına inanıyoruz. Milletimizin başı sağ olsun. Bilecik Şeyh Edebali Üniversitesi Rektörlüğü",
"2016-08-20");