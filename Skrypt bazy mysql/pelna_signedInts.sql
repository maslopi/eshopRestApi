-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Sty 2016, 18:24
-- Wersja serwera: 10.1.8-MariaDB
-- Wersja PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `tenant_1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `article`
--

CREATE TABLE `article` (
  `articeID` int(10) NOT NULL,
  `userID` int(10) DEFAULT NULL COMMENT 'added by',
  `date` date DEFAULT NULL,
  `title` varchar(128) NOT NULL,
  `body` text NOT NULL COMMENT 'html content'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `article`
--

INSERT INTO `article` (`articeID`, `userID`, `date`, `title`, `body`) VALUES
(2, 1, '2015-09-02', 'Witamy w nowo otwartym serwisie!', 'Naszą działalność rozpoczęliśmy w 2004 roku od małego sklepu z artykułami metalowymi. Przez wiele lat konsekwentnie budowaliśmy pozycję silnego i profesjonalnego dystrybutora narzędzi i elektronarzędzi. Dzięki stałej wytężonej pracy pozyskaliśmy do współpracy liczną grupę klientów biznesowych i indywidualnych. Zaufanie dzięki doświadczeniu i partnerstwie to nasza dewiza. Każdy klient ma zagwarantowaną pomoc i pełne wsparcie z naszej strony. Zapewniamy szeroki wybór wiodących marek, fachowe doradztwo, serwis gwarancyjny i pogwarancyjny. Doświadczenie oraz współpraca z wiodącymi producentami narzędzi pozwala nam zaspokoić potrzeby najbardziej wymagających klientów.\r\n\r\nDziękujemy za zaufanie!'),
(3, 1, '2015-09-13', 'Witamy w nowo otwartym serwisie!', 'Naszą działalność rozpoczęliśmy w 2004 roku od małego sklepu z artykułami metalowymi. Przez wiele lat konsekwentnie budowaliśmy pozycję silnego i profesjonalnego dystrybutora narzędzi i elektronarzędzi. Dzięki stałej wytężonej pracy pozyskaliśmy do współpracy liczną grupę klientów biznesowych i indywidualnych. Zaufanie dzięki doświadczeniu i partnerstwie to nasza dewiza. Każdy klient ma zagwarantowaną pomoc i pełne wsparcie z naszej strony. Zapewniamy szeroki wybór wiodących marek, fachowe doradztwo, serwis gwarancyjny i pogwarancyjny. Doświadczenie oraz współpraca z wiodącymi producentami narzędzi pozwala nam zaspokoić potrzeby najbardziej wymagających klientów.\r\n\r\nDziękujemy za zaufanie!'),
(4, 1, '2015-12-02', 'Witam', 'Witam Witam');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `attachment`
--

CREATE TABLE `attachment` (
  `attachmentID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `extension` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `attachment`
--

INSERT INTO `attachment` (`attachmentID`, `productID`, `name`, `path`, `extension`) VALUES
(1, 1, 'boschPof1200', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/302836.jpg', 'jpg'),
(2, 2, 'kluczUdar1', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/454590.jpg', 'jpg'),
(3, 3, 'kluczUdar2', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/454589.jpg', 'jpg'),
(4, 4, 'lutownica1', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/283950.jpg', 'jpg'),
(5, 5, 'lutownica2', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/426108.jpg', 'jpg'),
(6, 6, 'lutownica3', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/386987.jpg', 'jpg'),
(7, 7, 'lutownica4', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/161664.jpg', 'jpg'),
(8, 8, 'mieszarka1', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/443672.jpg', 'jpg'),
(9, 9, 'mieszarka2', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/302025.jpg', 'jpg'),
(10, 10, 'młot1', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/295644.jpg', 'jpg'),
(11, 11, 'młot2', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/387183.jpg', 'jpg'),
(13, 13, 'mlot3', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/389526.jpg', 'jpg'),
(14, 14, 'mlot4', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/402333.jpg', 'jpg'),
(15, 15, 'nozyce1', 'http://swiatnarzedzi.pl/userdata/gfx/0c39bef690867397d9833b936e1b2675.jpg', 'jpg'),
(16, 16, 'nozyce2', 'http://swiatnarzedzi.pl/userdata/gfx/dc0e045c5f94566e9d43a61ee0343d85.jpg', 'jpg'),
(17, 17, 'opalarka1', 'http://swiatnarzedzi.pl/userdata/gfx/d583ac483bb80532659df39b7db2e8ab.jpg', 'jpg'),
(18, 18, 'opalarka2', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/207216.jpg', 'jpg'),
(19, 19, 'opalarka3', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/458072.jpg', 'jpg'),
(20, 20, 'opalarka4', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/408232.jpg', 'jpg'),
(21, 21, 'pilarka', 'http://swiatnarzedzi.pl/userdata/gfx/f773ba0077297a63c1b7c306549ae812.jpg', 'jpg'),
(22, 22, 'pilarka2', 'http://swiatnarzedzi.pl/userdata/gfx/b5025f80625171be2d67835c2e572848.jpg', 'jpg'),
(23, 23, 'pilarka3', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/442650.jpg', 'jpg'),
(24, 24, 'pilarka4', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/334098.jpg', 'jpg'),
(25, 25, 'wiertarka1', 'http://swiatnarzedzi.pl/userdata/gfx/78b8dedcde85978c90e9762eb71b5df0.jpg', 'jpg'),
(26, 26, 'wiertarka2', 'http://www.kanto.com.pl/public/images/produkty/oryginalne/13064-275133.jpg', 'jpg'),
(27, 27, 'wiertarka3', 'http://img.nokaut.pl/p-19-b4-19b472a0cc5c4e0f523700af0cf536b3500x500/bosch-psb-108-li-2-wiertarka.jpg', 'jpg'),
(28, 28, 'wiertarka4', 'http://www.narzedzia.pl/photo/product/f980x600/wiertarka-udarowa-bosch-psb-750-rce-40478.jpg', 'jpg'),
(29, 29, 'wiertarka5', 'http://www.ekotools.pl/wiertarka_graphite_810w.jpg', 'jpg'),
(30, 30, 'wiertarka6', 'http://www.toya24.pl/media/catalog/product/cache/2/image/2f20f302d881ba41eb71e6d32ed81feb/7/9/79008.jpg', 'jpg'),
(31, 31, 'wyrzynarka1', 'http://cdn2.epasaz.smcloud.net/t/files/45/a2/64/45a264e7f7238659.jpg', 'jpg'),
(32, 32, 'wyrzynarka2', 'http://cdn20.epasaz.smcloud.net/t/files/4e0d191adef98cf7.jpg', 'jpg'),
(33, 33, 'wyrzynarka3', 'http://cdn20.epasaz.smcloud.net/t/files/4e0d191adef98cf7.jpg', 'jpg'),
(34, 34, 'wyrzynarka4', 'http://fotoaudio.pl/images/einhell_wyrzynarka_BT-JS%20650%20E.jpeg', 'jpg'),
(35, 35, 'wyrzynarka5', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/443664.jpg', 'jpg'),
(36, 36, 'wyrzynarka6', 'http://img.nokaut.pl/p-75-c9-75c951bd728c9b328739373e16daaa05500x500/betoniarka-power-tec-p-550w-100l-kup-u-jednego-z-partnerw.jpg', 'jpg'),
(37, 37, 'betoniarka2', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/457062.jpg', 'jpg'),
(38, 38, 'drabina', 'http://www.humberg.pl/aukcja/galeria/3x9/00.jpg', 'jpg'),
(39, 39, 'drabina', 'http://www.humberg.pl/aukcja/galeria/3x9/00.jpg', 'jpg'),
(40, 40, 'drabina', 'http://www.humberg.pl/aukcja/galeria/3x9/00.jpg', 'jpg'),
(41, 41, 'generator', 'http://www.anteks.com.pl/userdata/gfx/0f6f4438e46f482be22d7915a6619f63.jpg', 'jpg'),
(42, 42, 'generator1', 'http://www.drabiny.info/pictures/generatory_agregaty_prodotworcze/generator_pradotworczy_AP2500_TUR_2236.jpg', 'jpg'),
(43, 43, 'generator1', 'http://www.narzedzia.pl/photo/product/f980x600/agregat-pradotworczy-graphite-58g909-50956.jpg', 'jpg'),
(45, 46, 'dalmierz', 'https://sklep.energa.pl/media/catalog/product/cache/1/image/640x/9df78eab33525d08d6e5fb8d27136e95/d/a/dalmierz_plr_15.jpg', 'jpg'),
(46, 45, 'detektor', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/415407.jpg', 'jpg'),
(47, 47, 'tasma', 'http://hobbydom.pl/wp-content/uploads/2014/03/Irwin_XP_s.jpg', 'jpg'),
(48, 48, 'tasma', 'http://hobbydom.pl/wp-content/uploads/2014/03/Irwin_XP_s.jpg', 'jpg'),
(49, 49, 'tasma', 'http://www.narzedzia.pl/photo/product/f980x600/tasma-miernicza-stalowa-20m-x-13mm-topex-28c422-51684.jpg', 'jpg'),
(50, 50, 'tasma', 'http://www.narzedzia.pl/photo/product/f980x600/miara-zwijana-stalowa-5m-x-19mm-top-tools-46029.jpg', 'jpg'),
(51, 51, 'antena', 'http://sklep.bottari.pl/731-large_default/antena-samochodowa-am-fm-40cm-2---ruby-do-monta--u--5mm-i-6mm.jpg', 'jpg'),
(52, 52, 'antena', 'http://sklep.bottari.pl/731-large_default/antena-samochodowa-am-fm-40cm-2---ruby-do-monta--u--5mm-i-6mm.jpg', 'jpg'),
(53, 53, 'dywaniki', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/336055.jpg', 'jpg'),
(54, 54, 'dywaniki2', 'http://sklep.bottari.pl/1192-thickbox_default/dywanik-do-baga--nika-rug-wielofunkcyjny--82x119cm.jpg', 'jpg'),
(55, 55, 'dywaniki3', 'http://img4.oferia.pl/94b26fb35795f55be2041871cdc747d2_1000_1000_0_1.jpg', 'jpg'),
(56, 56, 'dywaniki4', 'http://img4.oferia.pl/94b26fb35795f55be2041871cdc747d2_1000_1000_0_1.jpg', 'jpg'),
(57, 57, 'dywaniki5', 'http://img4.oferia.pl/94b26fb35795f55be2041871cdc747d2_1000_1000_0_1.jpg', 'jpg'),
(58, 58, 'koszulki', 'http://img.nokaut.pl/p-35-51-3551b1b37acc3cbd2c209199f6e55d94500x500/image.jpg', 'jpg'),
(59, 59, 'gałka', 'http://nokautimg2.pl/p-e8-e4-e8e4179fbe47d2c1c58cead52491ade1500x500/carbon-galka-na-kierownice-wspomaganie-reczne.jpg', 'jpg'),
(60, 60, 'kolpak', 'http://www.autostory.pl/images/DIAMANT1_LRG.jpg', 'jpg'),
(61, 61, 'gabka', 'http://www.kaja.szczecin.pl/pliki/p4-1292225733.jpg', 'jpg'),
(62, 62, 'gabka', 'http://www.kaja.szczecin.pl/pliki/p4-1292225733.jpg', 'jpg'),
(63, 63, 'gabka', 'http://www.kaja.szczecin.pl/pliki/p4-1292225733.jpg', 'jpg'),
(64, 64, 'hydroszczota', 'http://www.anitech.skleppsb.com.pl/files/Product/fd7qljj0cqeth7/foto_Full.jpg', 'jpg'),
(65, 65, 'ircha', 'http://selgros24.pl/images/prodImages/TATARA_IRCHA_NATURALNA_DUZA_PLAK_18_6_DM%C2%B2_48335400_0_1000_1000.jpg', 'jpg'),
(66, 66, 'cisnieniomierz', 'http://sklep.bottari.pl/554-thickbox_default/cyfrowy-ci--nieniomierz-do-k-----pneus.jpg', 'jpg'),
(67, 67, 'kluczOlej', 'https://media1mi.pl/p/1/76/210/photo-383f341c-c40e-4fda-bc9e-a501cd4dc1f1-for_zoom.jpg', 'jpg'),
(68, 68, 'kompresor', 'http://globalpol.gr5.pl/KOMPRESOR%20230/4%20_3_.jpg', 'jpg'),
(69, 69, 'prostownik', 'http://cdn27.epasaz.smcloud.net/t/files/7165fb4848231b34.jpg', 'jpg'),
(70, 70, 'kluczKolo', 'http://img.nokaut.pl/p/fa/a0/faa05cce9e1a506822e8aea75aab8c28500x500.jpg', 'jpg'),
(71, 2, 'name', 'path', '.jpg'),
(73, 12, 'mlot3', 'https://static.praktiker.pl/miniaturki/upload/zdj_produktow_nieobrobione/1000x1000/295207.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `company_data`
--

CREATE TABLE `company_data` (
  `company_dataID` int(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `company_data`
--

INSERT INTO `company_data` (`company_dataID`, `content`) VALUES
(1, '<!-- Map Column -->\n  <div class="col-md-8">\n    <!-- Embedded Google Map -->\n    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2546.5654564118804!2d18.938468899999997!3d50.337357900000015!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4716d31e0f9edcf3%3A0x47a2873dc5f0e177!2sChorzowska+27%2C+Bytom!5e0!3m2!1spl!2spl!4v1433098955373" style="border:0" frameborder="0" height="450" width="740"></iframe>\n  </div>\n  <!-- Contact Details Column -->\n  <div class="col-md-4">\n    <h3>Szczegó?y kontaktu</h3>\n    <p>\n      Chorzowska 27\n      <br>Bytom\n      <br>\n    </p>\n    <p>\n      <i class="fa fa-phone"></i>\n      <abbr title="Phone">Telefon</abbr>: 123-456-789\n    </p>\n    <p>\n      <i class="fa fa-envelope-o"></i>\n      <abbr title="Email">Email</abbr>: <a href="mailto:name@example.com">example@example.com</a>\n    </p>\n    <p>\n      <i class="fa fa-clock-o"></i>\n      <abbr title="Hours">Godziny</abbr>: Poniedzia?ek - Pi?tek: 8:00 do 16:00 PM\n    </p>\n    <ul class="list-unstyled list-inline list-social-icons">\n      <li>\n        <a href="https://www.facebook.com/tomasz.macelko"><i class="fa fa-facebook-square fa-2x"></i></a>\n      </li>\n      <li>\n        <a href="#"><i class="fa fa-linkedin-square fa-2x"></i></a>\n      </li>\n      <li>\n        <a href="https://twitter.com/maslopi"><i class="fa fa-twitter-square fa-2x"></i></a>\n      </li>\n      <li>\n        <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>\n      </li>\n    </ul>\n  </div>');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `company_feedback`
--

CREATE TABLE `company_feedback` (
  `feedbackID` int(10) NOT NULL,
  `userID` int(10) DEFAULT NULL,
  `rate` int(2) NOT NULL COMMENT '1 - 10',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `company_feedback`
--

INSERT INTO `company_feedback` (`feedbackID`, `userID`, `rate`, `description`) VALUES
(1, 5, 10, 'Firma godna polecenia!'),
(2, 4, 8, 'Wysoka jakość usług. Polecam.'),
(3, 6, 10, 'Wspaniale!'),
(4, 7, 3, 'Słaby kontakt ze sprzedawcą.'),
(6, 2, 10, 'Ekspresowa wysyła. Wszystko zgodne w informacją na stronie.'),
(16, 1, 5, 'masło'),
(17, 1, 1, 'tesst'),
(18, 1, 4, 'hello'),
(19, 1, 3, 'aaa'),
(20, 1, 10, 'Test'),
(21, 1, 5, 'Test'),
(22, 1, 2, 'aa'),
(23, 57, 5, 'nice'),
(66, 62, 3, '?wietna robota 3/10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_`
--

CREATE TABLE `order_` (
  `orderID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `stateID` int(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `order_`
--

INSERT INTO `order_` (`orderID`, `userID`, `stateID`, `date`) VALUES
(7, 1, 2, '2014-09-19 00:00:00'),
(8, 1, 3, '2015-08-20 00:00:00'),
(9, 1, 2, '2015-09-20 00:00:00'),
(10, 1, 3, '2015-09-20 00:00:00'),
(11, 1, 1, '2015-09-20 00:00:00'),
(12, 1, 1, '2015-09-20 00:00:00'),
(13, 1, 2, '2015-09-20 00:00:00'),
(14, 1, 1, '2015-09-20 00:00:00'),
(15, 1, 1, '2015-09-20 00:00:00'),
(16, 1, 1, '2015-09-20 00:00:00'),
(17, 1, 1, '2015-09-20 00:00:00'),
(18, 1, 1, '2015-09-20 00:00:00'),
(19, 1, 1, '2015-09-20 00:00:00'),
(20, 1, 1, '2015-09-20 00:00:00'),
(21, 1, 1, '2015-09-20 00:00:00'),
(22, 1, 1, '2015-09-20 00:00:00'),
(23, 1, 1, '2015-09-20 00:00:00'),
(24, 1, 1, '2015-09-20 00:00:00'),
(25, 1, 1, '2015-09-20 00:00:00'),
(26, 1, 1, '2015-09-20 00:00:00'),
(27, 1, 1, '2015-09-20 00:00:00'),
(28, 1, 1, '2015-09-20 00:00:00'),
(29, 1, 1, '2015-09-20 00:00:00'),
(30, 1, 1, '2015-09-20 00:00:00'),
(31, 1, 1, '2015-09-20 00:00:00'),
(32, 1, 1, '2015-09-20 00:00:00'),
(33, 1, 1, '2015-09-20 00:00:00'),
(34, 1, 1, '2015-09-20 00:00:00'),
(35, 1, 1, '2015-09-20 00:00:00'),
(36, 1, 1, '2015-09-20 00:00:00'),
(37, 1, 1, '2015-09-20 00:00:00'),
(38, 1, 1, '2015-09-20 00:00:00'),
(39, 1, 1, '2015-09-20 00:00:00'),
(40, 1, 1, '2015-09-20 00:00:00'),
(41, 1, 1, '2015-09-20 00:00:00'),
(42, 1, 2, '2015-09-20 00:00:00'),
(43, 1, 1, '2015-09-20 00:00:00'),
(44, 1, 1, '2015-09-20 00:00:00'),
(45, 1, 1, '2015-09-20 00:00:00'),
(46, 1, 1, '2015-09-20 00:00:00'),
(47, 1, 1, '2015-09-20 00:00:00'),
(48, 1, 1, '2015-09-20 00:00:00'),
(49, 1, 1, '2015-09-20 00:00:00'),
(50, 1, 1, '2015-09-20 00:00:00'),
(51, 1, 1, '2015-09-20 00:00:00'),
(52, 1, 1, '2015-09-20 00:00:00'),
(53, 1, 1, '2015-09-20 00:00:00'),
(54, 1, 1, '2015-09-20 00:00:00'),
(55, 1, 1, '2015-09-20 00:00:00'),
(56, 1, 1, '2015-09-20 00:00:00'),
(57, 1, 1, '2015-09-20 00:00:00'),
(58, 1, 1, '2015-09-20 00:00:00'),
(59, 1, 1, '2015-09-20 00:00:00'),
(60, 1, 1, '2015-09-20 00:00:00'),
(61, 1, 1, '2015-09-20 00:00:00'),
(62, 1, 1, '2015-09-20 00:00:00'),
(63, 1, 1, '2015-09-20 00:00:00'),
(64, 1, 1, '2015-09-20 00:00:00'),
(65, 1, 1, '2015-09-20 00:00:00'),
(66, 1, 1, '2015-09-20 00:00:00'),
(67, 1, 1, '2015-09-20 00:00:00'),
(68, 1, 1, '2015-09-20 00:00:00'),
(69, 1, 1, '2015-09-20 00:00:00'),
(70, 1, 1, '2015-09-20 00:00:00'),
(71, 1, 1, '2015-09-20 00:00:00'),
(72, 1, 1, '2015-09-20 00:00:00'),
(73, 1, 1, '2015-09-20 00:00:00'),
(74, 1, 1, '2015-09-20 00:00:00'),
(75, 1, 1, '2015-09-20 00:00:00'),
(76, 9, 1, '2015-09-21 00:00:00'),
(77, 9, 1, '2015-09-21 00:00:00'),
(78, 9, 1, '2015-09-21 00:00:00'),
(79, 1, 1, '2015-09-21 00:00:00'),
(80, 1, 1, '2015-09-21 00:00:00'),
(81, 1, 1, '2015-09-22 00:00:00'),
(82, 1, 1, '2015-09-22 00:00:00'),
(83, 1, 1, '2015-09-22 00:00:00'),
(84, 1, 1, '2015-09-23 00:00:00'),
(85, 1, 2, '2015-09-23 00:00:00'),
(86, 57, 1, '2015-12-09 00:00:00'),
(87, 62, 1, '2015-12-09 00:00:00'),
(88, 62, 1, '2015-12-09 00:00:00'),
(89, 62, 1, '2015-12-09 00:00:00'),
(90, 62, 1, '2015-12-09 00:00:00'),
(91, 62, 1, '2015-12-09 00:00:00'),
(92, 62, 1, '2015-12-09 00:00:00'),
(93, 62, 1, '2015-12-11 00:00:00'),
(94, 62, 1, '2015-12-11 00:00:00'),
(95, 62, 1, '2015-12-11 00:00:00'),
(96, 62, 1, '2015-12-11 00:00:00'),
(97, 62, 1, '2015-12-11 00:00:00'),
(110, 62, 1, '2015-12-11 00:00:00'),
(141, 62, 1, '2015-12-11 00:00:00'),
(142, 62, 1, '2015-12-11 00:00:00'),
(149, 62, 1, '2015-12-22 00:00:00'),
(150, 62, 1, '2015-12-22 00:00:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_product`
--

CREATE TABLE `order_product` (
  `orderID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `amount` int(5) NOT NULL DEFAULT '1',
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `order_product`
--

INSERT INTO `order_product` (`orderID`, `productID`, `amount`, `price`) VALUES
(7, 1, 2, 199),
(7, 2, 1, 499),
(8, 4, 2, 169),
(9, 26, 2, 179),
(10, 26, 16, 179),
(11, 36, 1, 579),
(12, 66, 1, 35),
(13, 66, 1, 35),
(14, 66, 1, 35),
(15, 66, 1, 35),
(16, 66, 1, 35),
(17, 66, 1, 35),
(18, 66, 1, 35),
(19, 66, 1, 35),
(20, 66, 1, 35),
(21, 66, 1, 35),
(22, 66, 1, 35),
(23, 66, 1, 35),
(24, 66, 1, 35),
(25, 66, 1, 35),
(26, 66, 1, 35),
(27, 66, 1, 35),
(28, 66, 1, 35),
(29, 66, 1, 35),
(30, 66, 1, 35),
(31, 66, 1, 35),
(32, 66, 1, 35),
(33, 66, 1, 35),
(34, 66, 1, 35),
(35, 66, 1, 35),
(36, 66, 1, 35),
(37, 66, 1, 35),
(38, 66, 1, 35),
(39, 66, 1, 35),
(40, 66, 1, 35),
(41, 66, 1, 35),
(42, 66, 1, 35),
(43, 66, 1, 35),
(44, 66, 1, 35),
(45, 66, 1, 35),
(46, 66, 1, 35),
(47, 66, 1, 35),
(48, 66, 1, 35),
(49, 66, 1, 35),
(50, 66, 1, 35),
(51, 66, 1, 35),
(52, 66, 1, 35),
(53, 66, 1, 35),
(54, 66, 1, 35),
(55, 66, 1, 35),
(56, 66, 7, 35),
(57, 66, 7, 35),
(58, 17, 1, 42),
(59, 66, 7, 35),
(60, 17, 1, 42),
(61, 17, 1, 42),
(62, 66, 7, 35),
(63, 17, 1, 42),
(64, 66, 7, 35),
(65, 8, 1, 229),
(66, 15, 1, 519),
(67, 10, 1, 269),
(68, 8, 1, 229),
(69, 13, 16, 439),
(70, 31, 1, 339),
(71, 37, 1, 929),
(72, 37, 100, 929),
(73, 11, 15, 349),
(74, 16, 10, 119),
(75, 22, 160, 199),
(76, 5, 5, 32),
(77, 5, 5, 32),
(78, 16, 1, 119),
(79, 1, 2, 199),
(79, 2, 1, 499),
(80, 1, 2, 199),
(80, 2, 1, 499),
(81, 40, 7, 199),
(82, 49, 8, 14),
(83, 63, 15, 4),
(84, 62, 8, 3),
(85, 13, 3, 439),
(86, 67, 1, 9),
(87, 4, 1, 169),
(88, 4, 1, 169),
(89, 4, 1, 169),
(90, 4, 1, 169),
(91, 7, 1, 79),
(92, 11, 1, 349),
(93, 41, 1, 999),
(94, 41, 1, 999),
(95, 41, 1, 999),
(96, 1, 1, 459),
(97, 8, 1, 229),
(110, 43, 1, 1029),
(141, 1, 1, 459),
(142, 1, 1, 459),
(149, 1, 1, 459),
(150, 8, 1, 229);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order_state`
--

CREATE TABLE `order_state` (
  `stateID` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `order_state`
--

INSERT INTO `order_state` (`stateID`, `name`, `description`) VALUES
(1, 'Zamówione', ''),
(2, 'W trakcie realizacji', ''),
(3, 'Zrealizowane', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product`
--

CREATE TABLE `product` (
  `productID` int(10) NOT NULL,
  `categoryID` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `enabled` tinyint(1) NOT NULL COMMENT 'true - active',
  `description` text NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `product`
--

INSERT INTO `product` (`productID`, `categoryID`, `name`, `enabled`, `description`, `price`) VALUES
(1, 2, 'Bosch POF 1200', 1, '1200W', 459),
(2, 3, 'Klucz elektryczny', 1, 'Marka Tucan, 900W, 230V, 325 Nm', 199),
(3, 3, 'Klucz udarowy', 1, 'Klucz posiada możlliwość dokręcania z maks momentem obrotowym 350 Nm, natomiast odkręcanie z maks momentem 500 Nm. Produkt wyposażony jest w wyświetlacz LCD.', 50),
(4, 4, 'Piotrowski PJ400', 1, 'Lutownica oporowa – model 400/200 W – to poręczne urządzenie przyda się w każdym warsztacie.', 169),
(5, 4, 'TopTools 4261', 1, 'Rączka wykonana z wysokiej jakości materiałów, dodatkowo pokryta jest antypoślizgową powłoka, ca zapewnia pewny i wygodny uchwyt.', 32),
(6, 4, 'Lootownica K123', 1, 'Transformatorowa. Przeznaczona do łączenia elementów o dużym przekroju (instalacji samochodowych, instalacji domowych o niskim napięciu)', 179),
(7, 4, 'Topex 44E005', 1, 'Korpus lutownicy wykonany z wytrzymałego tworzywa sztucznego, lapmka włączana podczas pracy.', 79),
(8, 5, 'Rexxer F150', 1, 'Przeznaczona jest do mieszania płynów oraz drobnych materiałów sypkich. Łatwa w obsłudze i wygodna w trzymaniu. Idealnie nadająca się dla pracowników firm budowlanych, a także dla amatorów wykonujących drobne remontowe prace w domu.', 229),
(9, 5, 'Graphite 58G782', 1, 'W zależności od rodzaju zasotosowanego mieszadła służy do mieszania, różnych substancji np.. cementu, gipsu, pokryć podłogowych, tynków szlachetnych, farb, tynków zwykłych, zapraw samopoziomujących i różnych chemikaliów.', 429),
(10, 6, 'Skil SDS Plus', 1, 'Skil F0151758AA osiąga 5900 uderzeń oraz 1100 obrotów na minutę. Pozwala to na wiercenie otworów w betonie o średnicy do 24 mm oraz w stali do 13 mm.', 269),
(11, 6, 'Bosch RE 550W', 1, 'Zintegrowana funkcja dłutowania z blokadą Vario-Lock – możliwość wyboru dowolnej pozycji pracy dłuta. Blokada udaru do wiercenia w metalu i drewnie.', 349),
(12, 6, 'Bosch PBH 750W', 1, 'Zastosowany mechanizm mocowania akcesoriów SDS Plus zapewnia beznarzędziową obsługę oraz maksymalne przeniesienie mocy. 750 W silnik wytwarza maksymalnie 1450 obrotów i 4000 uderzeń udaru o jednostkowej energii 2,6 J.', 599),
(13, 6, 'Einhell BT 1600', 1, '4 funkcje, tłumik drgań z kontrolą docisku, regulacja liczby obrotów,metalowy ogrnicznik głębokości, zaczep kabla', 439),
(14, 6, 'AEG KH 24 720W', 1, 'Młotek z podkuwaniem oraz uchwytem Fixtec, wyposażóny w funkcję roto stop, sprzęgło przeciążeniowe, soft grip, niski poziom drgań podczas użytkowania - do 14m/s2.', 569),
(15, 7, 'Graphite K2', 1, 'Nożyce do ciecia blachy falistej, trapezowej, prostej. Umożliwiają ciecie stali miękkiej, twardej (nierdzewnej), miedzi oraz aluminium. Blokada przypadkowego włączenia. Obudowa przekładni ze stopu aluminium, ogumowana rękojeść główna.', 519),
(16, 7, 'AEG Turbo', 1, 'Nożyce elektryczne do żydopłotu.', 119),
(17, 8, 'HEston 3349', 1, 'Konstrucja opalarki oraz bimetalowe zabezpieczenie przed pzegrzaniem zapewnia komfort pracy. Dwustopniowa regulacja temperatury oraz siły nawiewu.', 42),
(18, 8, 'Bosch PHG 500', 1, 'Pobór mocy opalarki wynosi 1600 W, wyposażona jest w termostat i możliwość regulowania temperatury pracy i siły nawiewu. Ciężar wynosi jedynie 0,75 kg i w połączeniu z wygodnym i bezpiecznym uchwytem.', 119),
(19, 8, 'Graphite 59G522', 1, 'Opalarka 2000W, zakres temperatur: I: 25oC, II: 350oC, III: 550oC, walizka', 109),
(20, 8, 'Rapid Digit 2000W', 1, 'Wyświetlacz LCD dla precyzyjnego ustawienia temperatury, szeroki zakres temperatur od 60 st. C do 550 st. C, Elektroniczna kontrola stałej temperatury, Łatwość ustawienia żądanej temperatury, Faza Cool Air dla szybkiego schłodzenia urządzenia,', 279),
(21, 9, 'Makita 5704R', 1, 'Ręczna pilarka tarczowa Makita - model 5704R, 1.200W, 190mm', 639),
(22, 9, 'Graphite 58G486', 1, 'Ręczna pilarka tarczowa Graphite 58G486 o mocy 1200 W daje możliwość cięcia drewna i innych materiałów o grubości nie przekraczającej 65 mm.', 199),
(23, 9, 'Hitachi C7SS', 1, 'Silniki przystosowany do pracy pod dużym obciążeniem', 429),
(24, 9, 'Bosch PKS55A', 1, 'Ręczna pilarka tarczowa Bosch - model PKS 55A, 1200W, 160mm – to idealne urządzenie do wykonywania precyzyjnych cięć wzdłużnych, ukośnych i poprzecznych..', 489),
(25, 10, 'Graphite 58G601', 1, 'Wiertarka bezudarowa niskoobrotowa przeznaczona głównie do wiercenia w stali oraz w drewnie. Wysoka precyzja wiercenia dzięki braku luzów na wrzecionie. Blokada włącznika pracy ciągłej.', 234),
(26, 10, 'Bosch PSB450RE', 1, 'Wiertarka udarowa PSB 450RE marki Bosch o wysokiej mocy nominalnej 500 W posiada niewielkie wymiary oraz kompaktową konstrukcję rękojeści dodatkowo pokrytą gumą zapobiegającą utracie kontroli nad urządzeniem w czasie pracy.', 179),
(27, 10, 'Bosch PSB 500RE', 1, 'Wiertarka posiada jeden bieg, w ramach którego możliwe jest osiągnięcie prędkości obrotów na poziomie: 50-3000 obr/min oraz częstotliwości udaru 48000 uderzeń na minutę.', 219),
(28, 10, 'Bosch PSB 750R', 1, 'Bosch PSB 750RCE to uniwersalna wiertarka udarowa z możliwością wiercenia bez udaru. Moc urządzenia wynosi 750 W i pozwala na osiągnięcie udaru na poziomie 48000 uderzeń na minutę oraz szybkości obrotów wiertła bez obciążenia w wysokości 50-3000 obrotów na minutę.', 429),
(29, 10, 'Graphite 58G718', 1, 'Wiertarka udarowa Graphite o mocy 810 W jest profesjonalnym narzędziem do ciężkich prac budowlanych. Sprawdza się przy wierceniu otworów w betonie (max 16 mm), stali (max 13 mm) oraz drewnie (max 40 mm).', 249),
(30, 10, 'Lund 79008', 1, 'Wiertarka udarowa Lund 79008 o mocy 500 W jest uniwersalnym narzędziem niezbędnym w pracach budowlanych, wykończeniowych i remontowych. Przystosowana do wiercenia w różnych materiałach zarówno przy użyciu udaru jak i w sposób tradycyjny.', 45),
(31, 11, 'Bosch PST 800 PEL', 1, 'Wyrzynarka Bosch PST 800 PEL przeznaczona jest do cięcia stali, aluminium i drewna oraz podcinania. Zastosowanie silnika o mocy 530 W osiągającego 500-3000 skoków na minutę.', 339),
(32, 11, 'Bosch PST 500W', 1, 'Wyrzynarka PST 650 ułatwia pracę: kompaktowy rozmiar, niewielki ciężar i wyjątkowa poręczność zapewniają dobrą kontrolę i optymalny komfort pracy.', 219),
(33, 11, 'Bosch PST650 ', 1, 'Wyrzynarka PST 650 ułatwia pracę: kompaktowy rozmiar, niewielki ciężar i wyjątkowa poręczność zapewniają dobrą kontrolę i optymalny komfort pracy.', 169),
(34, 11, 'Einhell TH-JS 85 ', 1, 'Beznarzędziowa wymiana brzeszczotu. Beznarzędziowa regulacja stopy do 45° w lewo i prawo. Przyłącze do odsysania pyłu. Funkcja przedmuchu pyłu. Wyposażenie: prowadnica równoległa, 1 brzeszczot do drewna.', 229),
(35, 11, 'Tucan Tools PJS026', 1, 'Wyrzynarka Tucan Tools to urządzenie umożliwiające poprowadzenie wycięcia w odpowiedniej linii. Posiada wygodną rękojeść oraz ergonomiczny kształt, co pozytywnie wpływa na jakość i szybkość wykonywanej czynności. Regulacja obrotów pozwala na dopasowanie tempa pracy do własnych predyspozycji.', 79),
(36, 13, 'BT120', 1, 'Doskonała zarówno do budowy domu, jak do drobnych prac przydomowych, takich jak wylewki, mieszanie tynków itp.', 579),
(37, 13, 'Power Tec Easy,', 1, 'Betoniarka Power Tec 200 l / Easy jest urządzeniem przeznaczonym do mieszania cementu, tynków, piasku, zapraw i żwiru. Pojemność robocza bębna wynosi 155 l.', 929),
(38, 14, 'Drabest 3x9', 1, 'Drabina aluminiowa o charakterze budowlano-przemysłowym znajdzie zastosowanie we wszelkiego rodzaju wnętrzach. Wykonana z aluminium, składa się z trzech elementów o wysokości kolejno: 3,7; 4,3; 5,7 m. Każdy z trzech elementów zbudowany jest z dziewięciu stopni. Drabina razem z opakowaniem waży 14 kilogramów.', 299),
(39, 14, 'Brema 3x11', 1, 'Drabina aluminiowa firmy Brema jest wysokiej klasy produktem, które znajduje zastosowanie podczas różnorodnych prac budowlanych i remontowych. Dzięki wykorzystaniu trwałych materiałów oraz odpowiedniej konstrukcji, drabina jest bardzo stabilna i gwarantuje pełne bezpieczeństwo użytkownika podczas pracy.', 479),
(40, 14, 'Brema 3x7', 1, 'Rozstawno -przystawna drabina o uniwersalnym zastosowaniu. Wyprodukowana jest z lekkiego aluminium, dzięki czemu bez problemu można ją ustawiać w dowolnym miejscu. Z powodzeniem można ją przystawić do ściany ale także rozstawić w otwartej przestrzeni. Drabina składa się z 3 elementów, a każdy element z 7 schodów.', 199),
(41, 15, 'CrossTools CPG3000', 1, 'Generator prądotwórczy CrossTools CPG3000 o mocy 2.8 kW zużywając 15 litrów benzyny bezołowiowej dostarczy przez 12,5 h zasilanie o napięciu 230 V.', 999),
(42, 15, 'Kaltmann K-AP2500A', 1, 'Generator prądotwórczy Kaltmann K-AP2500A o mocy 2 kW dostarcza prąd do zasilania urządzeń elektrycznych. Sprawdza się w sytuacji niedostępności zasilania sieciowego lub jako urządzenie awaryjne w przypadku braku dostawy prądu.', 669),
(43, 15, 'Graphite 4.78kW', 1, 'Agregat prądotwórczy 2000W, obroty 3000 min-1, gniazdko 12V/230V, silnik benzynowy 4.78kW/6.5kM, zbiornik 15 l, średnie zużycie paliwa 1.25 l/h, typ oleju silnikowego SAE 15W/40', 1029),
(44, 17, 'Bosch PLR 15', 1, 'Dalmierz laserowy marki Bosch to zaawansowane technicznie urządzenie, które znajduje zastosowanie w warunkach prywatnych i przemysłowych, a także podczas prac budowlanych lub remontowych.', 179),
(45, 17, 'Termo-detektor', 1, 'Główne właściwości produktu PTD 1 0603683020 * Łatwy pomiar temperatury powierzchni i pomieszczenia oraz wilgotności powietrza * Szybkie wykrywanie mostków termicznych i miejsc zagrożonych rozwojem pleśni.', 449),
(46, 17, 'Bosch PLR 25', 1, 'Damierz laserowy marki Bosch PLR 25 jest niezwykle funkcjonalnym urządzeniem, którego nie może zabraknąć podczas wykonywania prac budowlanych.', 379),
(47, 18, 'IRWIN 3m Stal', 1, 'Stalowa taśma pod warstwą akrylu to serce miary, ukryte w plastikowej obudowie. Szerokość taśmy wynosząca 13 mm dopasowano do jej długości 3 m. Gwarancja trwa 2 lata.', 9),
(48, 18, 'IRWIN 5m Stal', 1, 'Stalowa taśma pod warstwą akrylu to serce miary, ukryte w plastikowej obudowie. Szerokość taśmy wynosząca 13 mm dopasowano do jej długości 5 m. Gwarancja trwa 2 lata.', 15),
(49, 18, 'Topex 3m Stal', 1, 'Automatyczna blokada taśmy', 14),
(50, 18, 'Top Tools 5m Stal', 1, 'Miara zwijana Top Tools z 5-metrową skalą pozwala na wygodne wykonanie dokładnych pomiarów technicznych zarówno w domu, jak i na przykłas na budowie.', 8),
(51, 20, 'Antena samochodowa', 1, 'Antena samochodowa Am/Fm o długości 20cm. Pręt wymienny anteny samochodowej. Model uniwersalny ze śrubami o różnych rozmiarach, dostosowanych do różnych modeli aut.', 19),
(52, 20, 'Antena samochodowa', 1, 'Antena samochodowa am/fm o długości 36,5cm (pręt wymienny anteny samochodowej). Model uniwersalny ze śrubami o różnych rozmiarach, dostosowanych do różnych modeli aut.', 21),
(53, 20, 'Dywanik Bowl Mat Bottari', 1, 'Uniwersalny dywanik korytkowy na przód lub tył auta. Pasuje do większości aut osobowych. Posiada od spodu wypustki antypoślizgowe, dzięki którym stabilnie utrzymuje się w tym samym miejscu.', 14),
(54, 20, 'Dywanik do bagażnika Bottari', 1, 'Dywanik gumowy do bagażnika samochodowego lub do użycia w gospodarstwie domowym. Służy do utrzymania czystości i porządku w bagażniku samochodowym lub obrębie gospodarstwa domowego. Jest łatwy do utrzymania w czystości, nieprzemakalny i przeciwpoślizgowy.', 39),
(55, 20, 'Dywaniki Big 4 szt. Bottari', 1, 'Dywaniki Big, gumowe do samochodu. Dywaniki w kolorze czarnym. W komplecie znajdują się 4szt. Dwie sztuki na przód auta i dwie na tył. Uniwersalne o wymiarach na tył: 48x42cm, na przód: 72x48cm.', 89),
(56, 20, 'Dywaniki Perfect 4 szt. Bottari', 1, 'Komplet dywaników samochodowych Perfect. W zestawie 4 dywaniki: 2 przednie o wymiarach 51 x70 cm i 2 tylne o wymiarach 51 x 35 cm.', 79),
(57, 20, 'Dywaniki samochodowe 4 szt. Bottari', 1, 'Komplet 4 dywaników samochodowych. W zestawie 2 dywaniki przednie i 2 tylne. Wymiary dywników to odpowiednio: przód - 63x42cm, tył - 42x35cm.', 29),
(58, 20, 'Koszulki na fotele Bottari', 1, '2 koszulki materiałowe na przednie fotele. Uniwersalne - pasują do większości modeli samochodów osobowych. Chronią obicie foteli przed zabrudzeniami. Przeznaczone do prania.', 44),
(59, 20, 'Gałka do kierownicy Pomello Bottari', 1, 'Uniwersalna gałka kierownicy na stalowym uchwycie. Pasuje do większości aut osobowych. Łatwa w montażu, nie wymaga dodatkowych narzędzi ani umiejętności. W zestawie znajdują się wszystkie elementy potrzebne do jej zamontowania na kierownicy auta.', 17),
(60, 20, 'Kołpak Diamant 14', 1, 'Pojedynczy kołpak w rozmiarze 14 cali. Mocowanie uniwersalne, pasuje do każdego samochodu osobowego.', 15),
(61, 21, 'Gąbka Chamois', 1, 'Gąbka obszyta irchą naturalną, o wymiarach 12x8x4cm. Gąbka antyroszeniowa, służy do osuszania szyb i lusterek z pary wodnej. Jest wygodna i poręczna, przydatna w każdym samochodzie.', 6),
(62, 21, 'Gąbka Kombi Bottari', 1, 'Gąbka do mycia.', 3),
(63, 21, 'Gąbka Tutti Carcommerce', 1, 'Gąbka do mycia.', 4),
(64, 21, 'Hydroszczotka do mycia Bottari', 1, 'Hydroszczotka do mycia samochodu. Szczotka do mycia pod węża ogrodowego.', 9),
(65, 21, 'Ircha naturalna', 1, 'Ściereczka z irchy naturalnej, S 17 dm2. Ściereczka służy do osuszania różnych powierzchni. Przydatna zarówno w aucie jak i w gospodarstwie domowym. Ircha naturalna jest miękka, bardzo chłonna.', 24),
(66, 22, 'Ciśnieniomierz do kół Pneus', 1, 'Cyfrowy miernik ciśnienia powietrza, wyposażony w latarkę. Posiada bakelitowy podświetlacz ekranu. Zakres wyświetlania od 0,05 do 9,95 bar. W zestawie znajdują się 3 baterie litowe. Służy do pomiaru ciśnienia powietrza w kołach.', 35),
(67, 22, 'Klucz do filtra oleju Carcommerce', 1, 'Opaskowy klucz do filtra oleju. Przenzaczony jest do montowania filtrów oleju w silnikach pojazdów mechanicznych. Dedykowany do standardowych filtrów.', 9),
(68, 22, 'Kompresor 250PSI Grand Prix', 1, 'Kompresor powietrza z manometrem, służy do pompowania kół. Zasilany prądem z gniazda zapalniczki samochodowej.', 43),
(69, 22, 'Prostownik elektroniczny Toya', 1, 'Profesjonalne urządzenie do ładowania akumulatorów w motocyklach, traktorach, samochodach osobowych i dostawczych oraz łodziach motorowych.', 179),
(70, 3, 'Klucz do kół Carcommerce', 1, 'Krzyżakowy klucz do kół. Niezbędny w każdym aucie.', 21);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_category`
--

CREATE TABLE `product_category` (
  `categoryID` int(10) NOT NULL,
  `parentID` int(10) DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL COMMENT 'true - active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `product_category`
--

INSERT INTO `product_category` (`categoryID`, `parentID`, `name`, `description`, `enabled`) VALUES
(1, NULL, 'Elektronarzędzia', 'Narzędzia elektryczne.', 1),
(2, 1, 'Frezarki', 'Urządzenie przeznaczone do obróbki powierzchni płaskich.', 1),
(3, 1, 'Klucze udarowe', 'Niezbędnik każdego mechanika. Musisz go mieć!', 1),
(4, 1, 'Lutownice', 'Narzędzie służące do lutowania.', 1),
(5, 1, 'Mieszadła elektryczne', 'Idealne do rozdrabniania i mieszania.', 1),
(6, 1, 'Młoty', 'Najlepsze w pracy w sobotni poranek!', 1),
(7, 1, 'Nożyce elektryczne', 'Umożliwiają cięcie metali.', 1),
(8, 1, 'Opalarki', 'Suszenie i okleinowanie mebli będzie trywialne!', 1),
(9, 1, 'Pilarki tarczowe', 'Przytnij, przykróć i uważaj na ręce.', 1),
(10, 1, 'Wiertarki', 'Must have każdego złośliwego sąsiada!', 1),
(11, 1, 'Wyrzynarki', 'Gdy musisz coś wyrznąć.', 1),
(12, NULL, 'Narzędzia budowlane', 'Remont generalny tylko z narzędziami budowlanymi.', 1),
(13, 12, 'Betoniarki', 'Beton gratis.', 1),
(14, 12, 'Drabiny', 'Wejdź na inny poziom!', 1),
(15, 12, 'Generatory prądotwórcze', 'Wygeneruj sobie prąd.', 1),
(16, NULL, 'Narzędzia pomiarowe', 'Od dzisiaj zmierzysz wszystko.', 1),
(17, 16, 'Cyfrowe', 'Doskonała technologia.', 1),
(18, 16, 'Miary', 'Tradycja i pewność działania.', 1),
(19, NULL, 'Samochód i garaż', 'Niezbędnik każdego kierowcy', 1),
(20, 19, 'Akcesoria samochodowe', 'Podstawowe wyposażenie samochodu.', 1),
(21, 19, 'Kosmetyki samochodowe', 'Get the London look.', 1),
(22, 19, 'Narzędzia samochodowe', 'Wyposażenie mechanika.', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_feedback`
--

CREATE TABLE `product_feedback` (
  `feedbackID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `parentID` int(10) DEFAULT NULL COMMENT 'in reply to',
  `userID` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `product_feedback`
--

INSERT INTO `product_feedback` (`feedbackID`, `productID`, `parentID`, `userID`, `description`) VALUES
(3, 1, NULL, 4, 'Wspaniały produkt. Polecam!'),
(4, 2, NULL, 4, 'Wspaniały produkt. Polecam!'),
(5, 3, NULL, 4, 'Wspaniały produkt. Polecam!'),
(6, 4, NULL, 4, 'Wspaniały produkt. Polecam!'),
(8, 6, NULL, 4, 'Wspaniały produkt. Polecam!'),
(9, 7, NULL, 4, 'Wspaniały produkt. Polecam!'),
(10, 8, NULL, 4, 'Wspaniały produkt. Polecam!'),
(11, 9, NULL, 4, 'Wspaniały produkt. Polecam!'),
(12, 10, NULL, 4, 'Wspaniały produkt. Polecam!'),
(13, 11, NULL, 4, 'Wspaniały produkt. Polecam!'),
(14, 12, NULL, 4, 'Wspaniały produkt. Polecam!'),
(15, 13, NULL, 4, 'Wspaniały produkt. Polecam!'),
(16, 14, NULL, 4, 'Wspaniały produkt. Polecam!'),
(17, 15, NULL, 4, 'Wspaniały produkt. Polecam!'),
(18, 16, NULL, 5, 'Wspaniały produkt. Polecam!'),
(19, 17, NULL, 5, 'Wspaniały produkt. Polecam!'),
(20, 18, NULL, 5, 'Wspaniały produkt. Polecam!'),
(21, 19, NULL, 5, 'Wspaniały produkt. Polecam!'),
(22, 20, NULL, 5, 'Wspaniały produkt. Polecam!'),
(23, 21, NULL, 5, 'Wspaniały produkt. Polecam!'),
(24, 22, NULL, 5, 'Wspaniały produkt. Polecam!'),
(25, 23, NULL, 5, 'Wspaniały produkt. Polecam!'),
(26, 24, NULL, 5, 'Wspaniały produkt. Polecam!'),
(27, 25, NULL, 5, 'Wspaniały produkt. Polecam!'),
(28, 26, NULL, 5, 'Wspaniały produkt. Polecam!'),
(29, 27, NULL, 5, 'Wspaniały produkt. Polecam!'),
(30, 28, NULL, 5, 'Wspaniały produkt. Polecam!'),
(31, 29, NULL, 5, 'Wspaniały produkt. Polecam!'),
(97, 66, NULL, 1, 'asd'),
(98, 5, NULL, 1, 'aaa'),
(99, 4, NULL, 1, 'hi'),
(100, 4, NULL, 1, 'g'),
(101, 4, NULL, 1, 'a'),
(102, 4, NULL, 1, 'xzxc'),
(103, 20, NULL, 1, 'hello'),
(104, 20, NULL, 1, 'abc'),
(105, 5, NULL, 1, 'bbb'),
(106, 45, NULL, 1, 'ab'),
(107, 13, NULL, 1, 'asd'),
(108, 11, NULL, 57, 'hehe'),
(109, 54, NULL, 62, 'a'),
(194, 38, NULL, 62, 'cze??, jestem grze?'),
(195, 41, NULL, 62, '?wietny produkt. Niech moc b?dzie z wami.'),
(196, 41, NULL, 62, 'Swietny produkt. Niech moc bedzie z wami.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_rate`
--

CREATE TABLE `product_rate` (
  `rateID` int(10) NOT NULL,
  `productID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `rate` int(2) NOT NULL COMMENT '1 - 10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `product_rate`
--

INSERT INTO `product_rate` (`rateID`, `productID`, `userID`, `rate`) VALUES
(1, 1, 1, 1),
(2, 1, 4, 9),
(3, 2, 4, 9),
(4, 2, 4, 9),
(5, 3, 4, 9),
(6, 4, 4, 9),
(7, 5, 4, 9),
(8, 6, 4, 9),
(9, 7, 4, 9),
(10, 8, 4, 9),
(11, 10, 4, 9),
(12, 11, 4, 9),
(13, 12, 4, 9),
(14, 13, 4, 9),
(15, 14, 4, 9),
(16, 15, 4, 9),
(17, 16, 4, 9),
(18, 17, 4, 9),
(19, 15, 5, 8),
(20, 15, 5, 8),
(21, 16, 5, 8),
(22, 17, 5, 8),
(23, 18, 5, 8),
(24, 19, 5, 8),
(25, 20, 5, 8),
(26, 21, 5, 8),
(27, 22, 5, 8),
(28, 23, 5, 8),
(29, 24, 5, 8),
(30, 25, 5, 8),
(31, 26, 5, 8),
(32, 27, 5, 8),
(33, 28, 5, 8),
(34, 29, 6, 7),
(35, 30, 6, 7),
(36, 31, 6, 7),
(37, 32, 6, 7),
(38, 33, 6, 7),
(39, 34, 6, 7),
(40, 35, 6, 7),
(41, 36, 6, 7),
(42, 37, 6, 7),
(43, 38, 6, 7),
(44, 39, 6, 7),
(45, 40, 6, 7),
(46, 41, 6, 7),
(47, 42, 6, 7),
(48, 43, 7, 7),
(49, 44, 7, 8),
(50, 45, 7, 7),
(51, 46, 7, 8),
(52, 47, 7, 9),
(53, 48, 7, 7),
(54, 49, 7, 8),
(55, 50, 7, 7),
(56, 51, 7, 8),
(57, 52, 7, 7),
(58, 53, 7, 8),
(59, 54, 7, 7),
(60, 55, 7, 8),
(61, 56, 7, 5),
(62, 57, 9, 7),
(63, 58, 9, 8),
(64, 59, 9, 7),
(65, 60, 9, 8),
(66, 61, 9, 9),
(67, 62, 9, 7),
(68, 63, 9, 8),
(69, 64, 9, 7),
(70, 65, 9, 8),
(71, 66, 9, 7),
(72, 67, 9, 8),
(73, 68, 9, 7),
(74, 69, 9, 8),
(75, 70, 9, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `report`
--

CREATE TABLE `report` (
  `reportID` int(10) NOT NULL,
  `dateFrom` date NOT NULL,
  `dateTo` date NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `role`
--

CREATE TABLE `role` (
  `roleID` int(10) NOT NULL,
  `name` varchar(32) CHARACTER SET latin2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `role`
--

INSERT INTO `role` (`roleID`, `name`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMINISTRATOR'),
(5, 'ROLE_MODERATOR'),
(6, 'ROLE_SALESMAN'),
(7, 'ROLE_ANONYMOUS');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rules`
--

CREATE TABLE `rules` (
  `rulesID` int(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `rules`
--

INSERT INTO `rules` (`rulesID`, `content`) VALUES
(1, '1.Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>\n    2.Sed commodo tortor id porta ornare.\n\n    Morbi sit amet sem ut erat egestas pellentesque eget sit amet nunc.<br>\n    3.Morbi quis dolor blandit, tristique diam nec, posuere erat.\n    Sed sollicitudin leo et quam tincidunt, quis hendrerit erat ultrices.<br>\n\n    4.In ultricies ante nec justo facilisis scelerisque.<br>\n    5.Ut vitae ante sit amet elit vehicula malesuada.\n    Nam sollicitudin erat eget diam porttitor aliquam.<br>\n    6.Nulla vestibulum sapien in malesuada interdum.\n    Cras hendrerit metus in lobortis pulvinar.<br>\n    7.Suspendisse eu dui pretium, lobortis sapien sit amet, posuere augue.\n\n    Maecenas ac lorem sed arcu laoreet luctus.<br>\n    8.Nunc ac dui eleifend sem aliquet porttitor.\n    Quisque feugiat tellus quis justo finibus rhoncus.<br>\n    9.Fusce vestibulum purus quis faucibus euismod.\n    In rutrum nulla quis mi fermentum vehicula.<br>\n    10.Vestibulum commodo lorem in turpis feugiat malesuada.\n\n    Donec dignissim justo pellentesque arcu eleifend blandit.<br>\n    11.Quisque a diam a dui imperdiet volutpat non vel metus.\n    Phasellus gravida felis eget tortor mollis, ut semper quam tristique.<br>\n    12.Suspendisse malesuada ligula a quam pretium sollicitudin.\n    Donec dignissim erat eget est pulvinar, non placerat velit sagittis.<br>\n\n    13.Vivamus non nibh quis erat suscipit sodales in vel dui.\n    Cras sed orci ut nunc volutpat mattis id eget dolor.<br>\n    14.Mauris vel sem mattis, accumsan metus eget, sagittis nulla.\n\n    Vivamus mollis felis pellentesque, convallis velit ut, porta arcu.<br>\n    15.Phasellus eu mauris maximus, pellentesque est non, condimentum urna.\n    Sed accumsan tellus eget mi accumsan lacinia.<br>\n    16.Sed ut augue non est tincidunt lobortis sit amet quis enim.\n\n    Duis faucibus purus mollis turpis gravida, sed luctus lectus porta.<br>\n    17.Cras eget metus vitae turpis ullamcorper pharetra.\n\n    Etiam tristique augue et porttitor viverra.<br>\n    18.Morbi vulputate velit et convallis laoreet.\n    Cras sagittis eros vel nibh rhoncus maximus.<br>\n\n    19.Nullam blandit libero nec mi egestas scelerisque.\n    Donec pellentesque eros finibus, tristique tortor id, fringilla sem.<br>\n    20.Etiam in nulla vitae ligula lacinia accumsan.\n    Quisque et felis eu est tincidunt pharetra.<br>\n    21.Nullam et lacus quis odio placerat aliquet feugiat nec dui.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `userID` int(10) NOT NULL,
  `email` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `surname` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL COMMENT 'MD5 encoded',
  `enabled` tinyint(1) NOT NULL COMMENT 'true - user is active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`userID`, `email`, `name`, `surname`, `password`, `enabled`) VALUES
(1, 'admin@eshop.pl', 'Robert', 'Martin', 'admin', 1),
(2, 'moderator@eshop.pl', 'Marek', 'Moderowsky', 'moderator', 1),
(4, 'krsiu@wp.pl', 'Krzysztof', 'Malina', 'malina66', 1),
(5, 'kelyruk@linux.com', 'Tomasz', 'Gosling', 'javarocks2', 1),
(6, 'connor@ufc.com', 'Connor', 'McGragory', 'killaldo', 1),
(7, 'D@D.pl', 'Dominika', 'Drabik', 'DD', 1),
(8, 'Anna@dyna.pl', 'Anna', 'Kowalska', 'anna', 1),
(9, 't0m@op.pl', 'Tomasz', 'Szczep', 'przeszczep', 1),
(13, 'email', 'firstName', 'lastName', 'password', 1),
(40, 'k@k.pl', 'Krzysztof', 'Królikowski', 'aaaa', 1),
(53, 'lll@a.pl', 'Test44', 'Test44', 'bb', 1),
(55, 'adas@miekki.jakcholera', 'adas', 'miekki', 'miekki', 1),
(56, 'test@test.pl', 'test', 'test', 'test', 1),
(57, 'a@a.pl', 'a', 'aaaa', 'a', 1),
(61, 'q@q.pl', 'q', 'q', 'q', 1),
(62, 'a', 'a', 'a', 'a', 0),
(63, '4@6', 'a', 's', 'h', 0),
(64, 'aa@a.pl', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'aaaa', 0),
(65, 'maslo1992@gmail.com', 'Tomasz', 'Macełko', '240992', 1),
(66, 'aaaaaaaa@a.pl', 'Tomasz', 'Jakco?', 'aaaa', 1),
(68, 'adamnawala@l.p', 'Tomek', 'Ka?u?a', 'a', 1),
(69, 'ssss@s.pl', 'Tomasz', 'Kos', 'a', 1),
(70, 'asss@a.pl', 'sss', 'sss', 'sss', 1),
(71, 'asddsa@o.pl', 'Jarek', 'Jarguz', 'aaaa', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_role`
--

CREATE TABLE `user_role` (
  `userID` int(10) NOT NULL,
  `roleID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user_role`
--

INSERT INTO `user_role` (`userID`, `roleID`) VALUES
(1, 1),
(1, 2),
(1, 7),
(2, 5),
(4, 6),
(5, 7),
(6, 7),
(8, 2),
(9, 1),
(9, 7),
(53, 2),
(53, 7),
(57, 1),
(57, 2),
(57, 5),
(57, 6),
(57, 7),
(61, 2),
(61, 5),
(61, 7),
(62, 1),
(62, 2),
(62, 5),
(62, 6),
(62, 7),
(63, 2),
(63, 5),
(63, 6),
(63, 7),
(64, 7),
(66, 1),
(66, 2),
(66, 5),
(66, 6),
(66, 7),
(71, 1),
(71, 7);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`articeID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `attachment`
--
ALTER TABLE `attachment`
  ADD PRIMARY KEY (`attachmentID`),
  ADD KEY `fk_productID` (`productID`);

--
-- Indexes for table `company_data`
--
ALTER TABLE `company_data`
  ADD PRIMARY KEY (`company_dataID`);

--
-- Indexes for table `company_feedback`
--
ALTER TABLE `company_feedback`
  ADD PRIMARY KEY (`feedbackID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `order_`
--
ALTER TABLE `order_`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `stateID` (`stateID`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`orderID`,`productID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`stateID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`categoryID`),
  ADD KEY `parentID` (`parentID`);

--
-- Indexes for table `product_feedback`
--
ALTER TABLE `product_feedback`
  ADD PRIMARY KEY (`feedbackID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `parentID` (`parentID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `product_rate`
--
ALTER TABLE `product_rate`
  ADD PRIMARY KEY (`rateID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`reportID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`rulesID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`userID`,`roleID`),
  ADD KEY `roleID` (`roleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `article`
--
ALTER TABLE `article`
  MODIFY `articeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `attachment`
--
ALTER TABLE `attachment`
  MODIFY `attachmentID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT dla tabeli `company_data`
--
ALTER TABLE `company_data`
  MODIFY `company_dataID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `company_feedback`
--
ALTER TABLE `company_feedback`
  MODIFY `feedbackID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT dla tabeli `order_`
--
ALTER TABLE `order_`
  MODIFY `orderID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT dla tabeli `order_state`
--
ALTER TABLE `order_state`
  MODIFY `stateID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT dla tabeli `product_category`
--
ALTER TABLE `product_category`
  MODIFY `categoryID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT dla tabeli `product_feedback`
--
ALTER TABLE `product_feedback`
  MODIFY `feedbackID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT dla tabeli `product_rate`
--
ALTER TABLE `product_rate`
  MODIFY `rateID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT dla tabeli `report`
--
ALTER TABLE `report`
  MODIFY `reportID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `role`
--
ALTER TABLE `role`
  MODIFY `roleID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `rules`
--
ALTER TABLE `rules`
  MODIFY `rulesID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ograniczenia dla tabeli `attachment`
--
ALTER TABLE `attachment`
  ADD CONSTRAINT `fk_productID` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Ograniczenia dla tabeli `company_feedback`
--
ALTER TABLE `company_feedback`
  ADD CONSTRAINT `company_feedback_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Ograniczenia dla tabeli `order_`
--
ALTER TABLE `order_`
  ADD CONSTRAINT `order__ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `order__ibfk_2` FOREIGN KEY (`stateID`) REFERENCES `order_state` (`stateID`);

--
-- Ograniczenia dla tabeli `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_5` FOREIGN KEY (`orderID`) REFERENCES `order_` (`orderID`),
  ADD CONSTRAINT `order_product_ibfk_6` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`);

--
-- Ograniczenia dla tabeli `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `product_category` (`categoryID`);

--
-- Ograniczenia dla tabeli `product_category`
--
ALTER TABLE `product_category`
  ADD CONSTRAINT `product_category_ibfk_1` FOREIGN KEY (`parentID`) REFERENCES `product_category` (`categoryID`);

--
-- Ograniczenia dla tabeli `product_feedback`
--
ALTER TABLE `product_feedback`
  ADD CONSTRAINT `product_feedback_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `product_feedback_ibfk_2` FOREIGN KEY (`parentID`) REFERENCES `product_feedback` (`feedbackID`),
  ADD CONSTRAINT `product_feedback_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Ograniczenia dla tabeli `product_rate`
--
ALTER TABLE `product_rate`
  ADD CONSTRAINT `product_rate_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `product_rate_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Ograniczenia dla tabeli `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_ibfk_3` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_role_ibfk_4` FOREIGN KEY (`roleID`) REFERENCES `role` (`roleID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
