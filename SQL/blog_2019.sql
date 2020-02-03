-- Adminer 4.7.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `blog_2019`;
CREATE DATABASE `blog_2019` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_turkish_ci */;
USE `blog_2019`;

DROP TABLE IF EXISTS `kategoriler`;
CREATE TABLE `kategoriler` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `siralama` int(11) DEFAULT 0,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `kategoriler` (`kategori_id`, `kategori_adi`, `siralama`) VALUES
(1,	'Linux',	40),
(2,	'GİT',	30),
(3,	'PHP',	10),
(4,	'MySQL',	20);

DROP TABLE IF EXISTS `yazarlar`;
CREATE TABLE `yazarlar` (
  `yazar_id` int(11) NOT NULL AUTO_INCREMENT,
  `yazar_adi` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazar_eposta` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `parola` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yetki_seviyesi` int(11) DEFAULT 1,
  `siralama` int(11) DEFAULT 0,
  `yazar_yasakli` int(11) DEFAULT 0,
  PRIMARY KEY (`yazar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `yazarlar` (`yazar_id`, `yazar_adi`, `yazar_eposta`, `parola`, `yetki_seviyesi`, `siralama`, `yazar_yasakli`) VALUES
(1,	'Nuri Akman',	'nuri@gmail.com',	'123',	2,	20,	0),
(2,	'Hasan Çiçek',	'hasan@gmail.com',	'456',	1,	10,	0),
(3,	'Kemal Mutlu',	'kemal@gmail.com',	'789',	1,	30,	1),
(4,	'Batuhan Kaya',	'batu@gmail.com',	'1234',	1,	40,	0);

DROP TABLE IF EXISTS `yazilar`;
CREATE TABLE `yazilar` (
  `yazi_id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(150) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazildigi_tarih` date DEFAULT NULL,
  `yayinlanacagi_tarih` date DEFAULT NULL,
  `yazar_id` int(11) DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `yazi_spotu` varchar(250) COLLATE utf8_turkish_ci DEFAULT NULL,
  `yazi` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(11) DEFAULT 0,
  `begeni` int(11) DEFAULT 0,
  `sayac` int(11) DEFAULT 0,
  PRIMARY KEY (`yazi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

INSERT INTO `yazilar` (`yazi_id`, `baslik`, `yazildigi_tarih`, `yayinlanacagi_tarih`, `yazar_id`, `kategori_id`, `yazi_spotu`, `yazi`, `durum`, `begeni`, `sayac`) VALUES
(1,	'Linux Yaz Kampı',	'2019-08-02',	'2019-08-03',	1,	1,	'Linux öğrenmek sanıldığı kadar zor değil. Başlamak yetiyor.',	'# Dursun Ali Erzincanlı\n\n## Hayatı\n\nAbdurraman Şerif Beygu İlköğretim Okulu’nu bitirdikten sonra, bir bölümü Gürcükapı Camii’nde, diğer bölümü de Erzurum Müftülüğü’nde olmak üzere üç yıl Kur’an kursu talebeliği yaptı. Erzurum İmam Hatip Lisesi’ni bitirdi. 1992 yılında İstanbul Üniversitesi Edebiyat Fakültesi Arşivcilik Bölümü’nü kazanması nedeniyle ailesiyle birlikte Hayallerimin şehri dediği İstanbul’a geldi. Üniversite öğreniminin ilk yılında Yönetmen Mesut Uçakan’ın yanında çalışmaya başladı. Kelebekler Sonsuza Uçar ve Ölümsüz Karanfiller sinema filmlerinde sanat grubunda görev aldı. Özel radyoların yayın hayatına girmesinden kısa bir süre sonra Moral Fm’de program yapmaya başladı. 15 yıl süren bu radyo programcılığı’nın on yılı \"Moral Fm\"de, beş yılı da \"Radyo 15\"te geçti.\n\n2000 yılında Yazdığı ilk Naat-ı Şerif’i olan \"Faran Dağları\'nda Açan Savgili\", şiir albümüne dönüştü ve En Sevgili’ye adıyla başlayacak bir serinin ilk albümü oldu. Muhammed\'in hayatını konu alan bu şiir albümlerinin sekizincisi olan \"Adın geçer\" isimli albüm 2009 yılında çıktı.\n\nYönetmenliğini Nazif Tunç’un yaptığı Veysel Karani ve Rabia filmlerinde başrolde oynadı. Evli ve üç çocuk babasıdır.[1]\n\n## Eserleri\n\n* Körpe Tutkular\"\n* \"En Sevgili\'ye\"\n* \"Sen Yoktun Efendim\"\n',	1,	0,	8),
(2,	'PHP Sınıfı',	'2019-08-02',	'2019-08-02',	2,	3,	'Linux öğrenmek sanıldığı kadar zor değil. Başlamak yetiyor.!!!',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at mattis eros. Aliquam vitae velit aliquam, volutpat justo ut, condimentum velit. Fusce auctor, enim sed tincidunt ornare, sem odio vestibulum mi, at elementum felis ex non sapien. Praesent ornare dictum bibendum. In eu ipsum a nisi efficitur tincidunt ut a mauris. In mollis erat nisi, ut commodo lorem venenatis dapibus. Proin sed mollis dolor, ut ullamcorper leo. Suspendisse vel metus gravida, lobortis est id, ornare lectus. Proin ac vulputate est, vitae malesuada justo. Mauris tincidunt massa a rutrum fermentum.\r\n\r\nSuspendisse lacinia ante vel augue viverra, quis mattis sapien vestibulum. Pellentesque varius, tellus consectetur molestie pharetra, nisl erat lobortis augue, ut ullamcorper tortor sapien varius nulla. Nam sagittis aliquet eros. In eget neque posuere, dictum elit ac, volutpat quam. Proin iaculis, sapien ut sagittis commodo, ante sem consectetur lectus, ut ornare elit est a tellus. Suspendisse ullamcorper nibh in leo aliquam, sit amet tristique magna tristique. Vivamus at faucibus erat. Sed pellentesque turpis tellus, sed ullamcorper lectus rutrum quis. Cras sollicitudin dolor vitae risus condimentum maximus. Curabitur semper metus ut nisl gravida mattis. Vestibulum nec leo tellus. Fusce sit amet enim ut elit efficitur accumsan. Vivamus dapibus, odio et laoreet elementum, sapien turpis efficitur purus, eget placerat dolor lectus sed dolor.\r\n\r\nSed fermentum nibh sit amet vehicula viverra. Etiam congue hendrerit sem, et elementum est varius id. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus laoreet accumsan neque, vel ullamcorper erat scelerisque at. Mauris vitae elit nisi. Curabitur tempus dignissim odio, nec imperdiet diam. Praesent aliquam neque urna, non ullamcorper augue placerat at. Pellentesque quis cursus mi, facilisis facilisis lorem. Mauris ornare dolor a libero luctus, et iaculis mauris fringilla. Quisque nec commodo quam, sodales mollis sem. Curabitur eu lobortis turpis. Maecenas eu metus vitae leo auctor viverra. Pellentesque sed gravida sapien, sit amet volutpat ligula. Donec vitae lorem vitae odio cursus facilisis eget quis ipsum. Nam at metus in metus rutrum fringilla a malesuada felis. Etiam ut commodo felis.\r\n\r\nVestibulum ac nulla a nisl aliquam laoreet nec non enim. Sed dapibus eget nibh non semper. Donec a dolor efficitur, vestibulum nisi in, malesuada eros. Donec arcu leo, scelerisque nec erat vitae, suscipit placerat neque. Quisque ac dolor ac nisi commodo consequat quis sit amet ex. Proin hendrerit est neque, non lobortis arcu auctor vitae. Curabitur eu euismod quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce volutpat pretium tincidunt. Vestibulum rutrum justo sit amet sodales eleifend. Proin nec imperdiet ex.\r\n\r\nIn sit amet tellus commodo, fringilla sapien sit amet, finibus dui. Morbi sed efficitur quam. Proin at fermentum orci, eu finibus lorem. Nunc posuere eros posuere, congue lectus quis, efficitur ipsum. Maecenas luctus et tellus non convallis. Nulla feugiat neque erat, at gravida felis cursus sit amet. Nullam ut consequat eros, a consectetur sem. ',	0,	0,	0),
(3,	'HTML Öğrenelim',	'2019-08-02',	'2019-08-02',	2,	3,	'Linux öğrenmek sanıldığı kadar zor değil. Başlamak yetiyor.',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at mattis eros. Aliquam vitae velit aliquam, volutpat justo ut, condimentum velit. Fusce auctor, enim sed tincidunt ornare, sem odio vestibulum mi, at elementum felis ex non sapien. Praesent ornare dictum bibendum. In eu ipsum a nisi efficitur tincidunt ut a mauris. In mollis erat nisi, ut commodo lorem venenatis dapibus. Proin sed mollis dolor, ut ullamcorper leo. Suspendisse vel metus gravida, lobortis est id, ornare lectus. Proin ac vulputate est, vitae malesuada justo. Mauris tincidunt massa a rutrum fermentum.\r\n\r\nSuspendisse lacinia ante vel augue viverra, quis mattis sapien vestibulum. Pellentesque varius, tellus consectetur molestie pharetra, nisl erat lobortis augue, ut ullamcorper tortor sapien varius nulla. Nam sagittis aliquet eros. In eget neque posuere, dictum elit ac, volutpat quam. Proin iaculis, sapien ut sagittis commodo, ante sem consectetur lectus, ut ornare elit est a tellus. Suspendisse ullamcorper nibh in leo aliquam, sit amet tristique magna tristique. Vivamus at faucibus erat. Sed pellentesque turpis tellus, sed ullamcorper lectus rutrum quis. Cras sollicitudin dolor vitae risus condimentum maximus. Curabitur semper metus ut nisl gravida mattis. Vestibulum nec leo tellus. Fusce sit amet enim ut elit efficitur accumsan. Vivamus dapibus, odio et laoreet elementum, sapien turpis efficitur purus, eget placerat dolor lectus sed dolor.\r\n\r\nSed fermentum nibh sit amet vehicula viverra. Etiam congue hendrerit sem, et elementum est varius id. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus laoreet accumsan neque, vel ullamcorper erat scelerisque at. Mauris vitae elit nisi. Curabitur tempus dignissim odio, nec imperdiet diam. Praesent aliquam neque urna, non ullamcorper augue placerat at. Pellentesque quis cursus mi, facilisis facilisis lorem. Mauris ornare dolor a libero luctus, et iaculis mauris fringilla. Quisque nec commodo quam, sodales mollis sem. Curabitur eu lobortis turpis. Maecenas eu metus vitae leo auctor viverra. Pellentesque sed gravida sapien, sit amet volutpat ligula. Donec vitae lorem vitae odio cursus facilisis eget quis ipsum. Nam at metus in metus rutrum fringilla a malesuada felis. Etiam ut commodo felis.\r\n\r\nVestibulum ac nulla a nisl aliquam laoreet nec non enim. Sed dapibus eget nibh non semper. Donec a dolor efficitur, vestibulum nisi in, malesuada eros. Donec arcu leo, scelerisque nec erat vitae, suscipit placerat neque. Quisque ac dolor ac nisi commodo consequat quis sit amet ex. Proin hendrerit est neque, non lobortis arcu auctor vitae. Curabitur eu euismod quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce volutpat pretium tincidunt. Vestibulum rutrum justo sit amet sodales eleifend. Proin nec imperdiet ex.\r\n\r\nIn sit amet tellus commodo, fringilla sapien sit amet, finibus dui. Morbi sed efficitur quam. Proin at fermentum orci, eu finibus lorem. Nunc posuere eros posuere, congue lectus quis, efficitur ipsum. Maecenas luctus et tellus non convallis. Nulla feugiat neque erat, at gravida felis cursus sit amet. Nullam ut consequat eros, a consectetur sem. ',	1,	0,	4),
(4,	'CSS Nasıl Çalışır',	'2019-08-02',	'2019-08-02',	1,	3,	'Linux öğrenmek sanıldığı kadar zor değil. Başlamak yetiyor.',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at mattis eros. Aliquam vitae velit aliquam, volutpat justo ut, condimentum velit. Fusce auctor, enim sed tincidunt ornare, sem odio vestibulum mi, at elementum felis ex non sapien. Praesent ornare dictum bibendum. In eu ipsum a nisi efficitur tincidunt ut a mauris. In mollis erat nisi, ut commodo lorem venenatis dapibus. Proin sed mollis dolor, ut ullamcorper leo. Suspendisse vel metus gravida, lobortis est id, ornare lectus. Proin ac vulputate est, vitae malesuada justo. Mauris tincidunt massa a rutrum fermentum.\r\n\r\nSuspendisse lacinia ante vel augue viverra, quis mattis sapien vestibulum. Pellentesque varius, tellus consectetur molestie pharetra, nisl erat lobortis augue, ut ullamcorper tortor sapien varius nulla. Nam sagittis aliquet eros. In eget neque posuere, dictum elit ac, volutpat quam. Proin iaculis, sapien ut sagittis commodo, ante sem consectetur lectus, ut ornare elit est a tellus. Suspendisse ullamcorper nibh in leo aliquam, sit amet tristique magna tristique. Vivamus at faucibus erat. Sed pellentesque turpis tellus, sed ullamcorper lectus rutrum quis. Cras sollicitudin dolor vitae risus condimentum maximus. Curabitur semper metus ut nisl gravida mattis. Vestibulum nec leo tellus. Fusce sit amet enim ut elit efficitur accumsan. Vivamus dapibus, odio et laoreet elementum, sapien turpis efficitur purus, eget placerat dolor lectus sed dolor.\r\n\r\nSed fermentum nibh sit amet vehicula viverra. Etiam congue hendrerit sem, et elementum est varius id. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus laoreet accumsan neque, vel ullamcorper erat scelerisque at. Mauris vitae elit nisi. Curabitur tempus dignissim odio, nec imperdiet diam. Praesent aliquam neque urna, non ullamcorper augue placerat at. Pellentesque quis cursus mi, facilisis facilisis lorem. Mauris ornare dolor a libero luctus, et iaculis mauris fringilla. Quisque nec commodo quam, sodales mollis sem. Curabitur eu lobortis turpis. Maecenas eu metus vitae leo auctor viverra. Pellentesque sed gravida sapien, sit amet volutpat ligula. Donec vitae lorem vitae odio cursus facilisis eget quis ipsum. Nam at metus in metus rutrum fringilla a malesuada felis. Etiam ut commodo felis.\r\n\r\nVestibulum ac nulla a nisl aliquam laoreet nec non enim. Sed dapibus eget nibh non semper. Donec a dolor efficitur, vestibulum nisi in, malesuada eros. Donec arcu leo, scelerisque nec erat vitae, suscipit placerat neque. Quisque ac dolor ac nisi commodo consequat quis sit amet ex. Proin hendrerit est neque, non lobortis arcu auctor vitae. Curabitur eu euismod quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce volutpat pretium tincidunt. Vestibulum rutrum justo sit amet sodales eleifend. Proin nec imperdiet ex.\r\n\r\nIn sit amet tellus commodo, fringilla sapien sit amet, finibus dui. Morbi sed efficitur quam. Proin at fermentum orci, eu finibus lorem. Nunc posuere eros posuere, congue lectus quis, efficitur ipsum. Maecenas luctus et tellus non convallis. Nulla feugiat neque erat, at gravida felis cursus sit amet. Nullam ut consequat eros, a consectetur sem. ',	1,	0,	0),
(5,	'CDN Nedir?',	'2019-08-02',	'2019-08-02',	2,	5,	'Linux öğrenmek sanıldığı kadar zor değil. Başlamak yetiyor.',	'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam at mattis eros. Aliquam vitae velit aliquam, volutpat justo ut, condimentum velit. Fusce auctor, enim sed tincidunt ornare, sem odio vestibulum mi, at elementum felis ex non sapien. Praesent ornare dictum bibendum. In eu ipsum a nisi efficitur tincidunt ut a mauris. In mollis erat nisi, ut commodo lorem venenatis dapibus. Proin sed mollis dolor, ut ullamcorper leo. Suspendisse vel metus gravida, lobortis est id, ornare lectus. Proin ac vulputate est, vitae malesuada justo. Mauris tincidunt massa a rutrum fermentum.\r\n\r\nSuspendisse lacinia ante vel augue viverra, quis mattis sapien vestibulum. Pellentesque varius, tellus consectetur molestie pharetra, nisl erat lobortis augue, ut ullamcorper tortor sapien varius nulla. Nam sagittis aliquet eros. In eget neque posuere, dictum elit ac, volutpat quam. Proin iaculis, sapien ut sagittis commodo, ante sem consectetur lectus, ut ornare elit est a tellus. Suspendisse ullamcorper nibh in leo aliquam, sit amet tristique magna tristique. Vivamus at faucibus erat. Sed pellentesque turpis tellus, sed ullamcorper lectus rutrum quis. Cras sollicitudin dolor vitae risus condimentum maximus. Curabitur semper metus ut nisl gravida mattis. Vestibulum nec leo tellus. Fusce sit amet enim ut elit efficitur accumsan. Vivamus dapibus, odio et laoreet elementum, sapien turpis efficitur purus, eget placerat dolor lectus sed dolor.\r\n\r\nSed fermentum nibh sit amet vehicula viverra. Etiam congue hendrerit sem, et elementum est varius id. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus laoreet accumsan neque, vel ullamcorper erat scelerisque at. Mauris vitae elit nisi. Curabitur tempus dignissim odio, nec imperdiet diam. Praesent aliquam neque urna, non ullamcorper augue placerat at. Pellentesque quis cursus mi, facilisis facilisis lorem. Mauris ornare dolor a libero luctus, et iaculis mauris fringilla. Quisque nec commodo quam, sodales mollis sem. Curabitur eu lobortis turpis. Maecenas eu metus vitae leo auctor viverra. Pellentesque sed gravida sapien, sit amet volutpat ligula. Donec vitae lorem vitae odio cursus facilisis eget quis ipsum. Nam at metus in metus rutrum fringilla a malesuada felis. Etiam ut commodo felis.\r\n\r\nVestibulum ac nulla a nisl aliquam laoreet nec non enim. Sed dapibus eget nibh non semper. Donec a dolor efficitur, vestibulum nisi in, malesuada eros. Donec arcu leo, scelerisque nec erat vitae, suscipit placerat neque. Quisque ac dolor ac nisi commodo consequat quis sit amet ex. Proin hendrerit est neque, non lobortis arcu auctor vitae. Curabitur eu euismod quam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce volutpat pretium tincidunt. Vestibulum rutrum justo sit amet sodales eleifend. Proin nec imperdiet ex.\r\n\r\nIn sit amet tellus commodo, fringilla sapien sit amet, finibus dui. Morbi sed efficitur quam. Proin at fermentum orci, eu finibus lorem. Nunc posuere eros posuere, congue lectus quis, efficitur ipsum. Maecenas luctus et tellus non convallis. Nulla feugiat neque erat, at gravida felis cursus sit amet. Nullam ut consequat eros, a consectetur sem. ',	1,	0,	0),
(6,	'AAA',	'2019-08-02',	'2019-08-02',	2,	1,	'bbb  b bbb b bb',	'Markdown Nedir?\r\n\r\nÇoğu zaman, yayınlanacak bir yazı yazılırken üzerinde çok değişiklik yapılması gerekir. HTML, bir publishing(yayın) formatı olduğu için, bir HTML dosyasında hızlı bir şekilde değişiklik ve ekleme yapmak zordur. Bir yazıyı notepad gibi bir editörde açıp orada istediğimiz gibi biçimlendirdikten sonra o yazının son halini HTML’e çevirebilseydik çok hızlı bir şekilde yayın yapmış olurduk. İşte, markdown, plain text(düz yazı) yazı yazarken bu yazıyı formatlı bir şekilde yazmayı sağlar. Böylelikle, bir yazıyı daha sonradan HTML’e dönüştürülebilir biçimde hızlı bir şekilde düzenleyebiliriz.\r\n\r\nBundan sonra uzun blog yazılarını yazmayı kolaylaştırmak için markdown‘ı kullanacağım. Yani, yazıyı baştan sona düz yazı halinde gedit ya da vim ‘de markdown‘ın syntax‘ı ile yazacağım. Bu yazı üzerinde düzenlemeleri bitirdikten sonra bu yazıyı, Markdown.pl ile HTML’e çevireceğim.\r\nMarkdown Syntax‘ı neye benzer?\r\n\r\nMarkdown Syntax‘ı, düz yazı şeklindeki e-posta’larda kullanılan yazı formatından gelir. Yani, belirli noktalama işaretlerinden oluşur.',	1,	0,	0),
(7,	'AAA',	'2019-08-02',	'2019-08-02',	2,	1,	'BBB',	'deneme içeriği',	1,	0,	0),
(8,	'AAA',	'2019-08-02',	'2019-08-02',	1,	1,	'BBB',	'deneme içeriği',	1,	0,	0),
(9,	'AAA',	'2019-08-02',	'2019-08-02',	1,	1,	'BBB',	'deneme içeriği',	1,	0,	0),
(10,	'asda',	'2018-08-02',	'2018-08-02',	1,	3,	'asdf',	'2018-08-02 2018-08-02 2018-08-02',	1,	0,	0),
(11,	'KKKKKKKKKKKKKKKKKKKK',	'2019-08-02',	'2019-08-02',	1,	4,	'OOOOOOOO',	'deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği deneme içeriği ',	1,	0,	0);

-- 2019-08-03 07:39:30
