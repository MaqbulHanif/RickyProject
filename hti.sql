-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2020 pada 17.40
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `operasional`
--

CREATE TABLE `operasional` (
  `operasional_id` int(11) NOT NULL,
  `truk_id` int(11) DEFAULT NULL,
  `tebangan_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `operasional_date` datetime NOT NULL,
  `information` varchar(255) NOT NULL,
  `biaya` float NOT NULL,
  `operational_nota_filename` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tebangan`
--

CREATE TABLE `tebangan` (
  `tebangan_id` int(11) NOT NULL,
  `tebangan_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tebangan`
--

INSERT INTO `tebangan` (`tebangan_id`, `tebangan_number`, `vendor_id`, `updated_at`, `created_at`) VALUES
(1, 'F 7425 LS', 1, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'F 9567 LS', 2, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'F 1474 LS', 3, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'F 3776 LS', 4, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'F 4179 LS', 5, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'F 0825 LS', 6, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'F 5209 LS', 7, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'F 2497 LS', 8, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'F 2810 LS', 9, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'F 6705 LS', 10, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'F 4437 LS', 11, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'F 4411 LS', 12, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'F 1220 LS', 13, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'F 6046 LS', 14, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'F 7529 LS', 15, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'F 4614 LS', 16, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'F 6727 LS', 17, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'F 3994 LS', 18, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'F 3166 LS', 19, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'F 3954 LS', 20, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(21, 'F 9348 LS', 21, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(22, 'F 2226 LS', 22, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(23, 'F 9141 LS', 23, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(24, 'F 6596 LS', 24, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(25, 'F 1943 LS', 25, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(26, 'F 6731 LS', 26, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(27, 'F 8955 LS', 27, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(28, 'F 3247 LS', 28, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(29, 'F 8269 LS', 29, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(30, 'F 2554 LS', 30, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(31, 'F 3968 LS', 1, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(32, 'F 5872 LS', 2, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(33, 'F 0718 LS', 3, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(34, 'F 9259 LS', 4, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(35, 'F 8508 LS', 5, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(36, 'F 7701 LS', 6, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(37, 'F 5790 LS', 7, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(38, 'F 3045 LS', 8, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(39, 'F 1743 LS', 9, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(40, 'F 4181 LS', 10, '2020-10-04 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tebangan_bongkar`
--

CREATE TABLE `tebangan_bongkar` (
  `tebangan_log_id` int(11) NOT NULL,
  `tebangan_id` int(11) NOT NULL,
  `bongkar_date` datetime DEFAULT NULL,
  `bongkar_tonase` float DEFAULT NULL,
  `bongkar_nota_filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bongkar_harga_tonase` float DEFAULT NULL,
  `pinjaman_uang_jalan` float NOT NULL,
  `bongkar_hasil_perluasan` float DEFAULT NULL,
  `bongkar_tebangan_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_case` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tebangan_bongkar`
--

INSERT INTO `tebangan_bongkar` (`tebangan_log_id`, `tebangan_id`, `bongkar_date`, `bongkar_tonase`, `bongkar_nota_filename`, `bongkar_harga_tonase`, `pinjaman_uang_jalan`, `bongkar_hasil_perluasan`, `bongkar_tebangan_name`, `information`, `special_case`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-06 00:00:00', 80, '/uploads/nota/48b4ce752c496a90824ebf067c2dbaad.jpg', 19356800, 732719, 97305900, 'Flavie', 'Et unde consequuntur id laborum.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(2, 2, '2020-10-06 00:00:00', 74, '/uploads/nota/a1451e75740fd20b3836266f65cde865.jpg', 5334530, 817588, 82561400, 'Velma', 'Est aliquid cupiditate autem soluta sed nesciunt.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(3, 3, '2020-10-06 00:00:00', 44, '/uploads/nota/4f2ac8d92e968da0e53432493a9c08e1.jpg', 20066700, 826362, 98773100, 'Una', 'Ab ut nihil sit.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(4, 4, '2020-10-06 00:00:00', 76, '/uploads/nota/a47b66ffe88b018d6bc8defba3fe9f86.jpg', 46685700, 147900, 46041200, 'Kaden', 'Eum veniam voluptatibus veniam quibusdam ea.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(5, 5, '2020-10-06 00:00:00', 29, '/uploads/nota/a28bf718319221b4cfdb46f1b8a41e6c.jpg', 48468000, 110205, 60901300, 'Holden', 'Corrupti vero dignissimos porro.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(6, 6, '2020-10-06 00:00:00', 74, '/uploads/nota/b5fedffaa2ff735ce7237aac80cbe7e3.jpg', 5188320, 215485, 52622300, 'Ignatius', 'Eaque adipisci non dolor quo at et.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(7, 7, '2020-10-06 00:00:00', 5, '/uploads/nota/8691b35d5894b956fca6c19a553d17ce.jpg', 5403100, 582773, 61627900, 'Muriel', 'Praesentium quia aut suscipit eveniet.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(8, 8, '2020-10-06 00:00:00', 46, '/uploads/nota/5f39831c0c51e6a3aa47c75a64b3d083.jpg', 37193800, 545539, 97818100, 'Maximillia', 'Consequatur laborum accusamus iste tenetur voluptatem iure rerum.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(9, 9, '2020-10-06 00:00:00', 52, '/uploads/nota/0f77c5aab74be4125ea806933f002f60.jpg', 48040500, 158141, 59503700, 'Daren', 'Sapiente qui reprehenderit inventore quis beatae sed.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(10, 10, '2020-10-06 00:00:00', 29, '/uploads/nota/7a0dee68c534b852a08a1cd050daad9a.jpg', 48689800, 152111, 57474400, 'Jewell', 'Rem qui ipsa impedit est est et sit voluptatem.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(11, 11, '2020-10-06 00:00:00', 53, '/uploads/nota/8dc8307756d76cdd9191ea303dce1108.jpg', 6656060, 259644, 67752200, 'Tiana', 'Error assumenda natus quae et.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(12, 12, '2020-10-06 00:00:00', 97, '/uploads/nota/8e6b3d1a54cbbc0de79ffdba32fd573a.jpg', 6301220, 169974, 89177000, 'Stone', 'Non aliquam et deserunt rerum.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(13, 13, '2020-10-06 00:00:00', 13, '/uploads/nota/2cb3b7df86f97252d224be51b61f894c.jpg', 30002200, 972659, 41866900, 'Carlee', 'Sit error neque dolor molestiae totam illum.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(14, 14, '2020-10-06 00:00:00', 28, '/uploads/nota/dfeac93bbed908fcc8025eada509a604.jpg', 24819900, 177542, 51582900, 'Haley', 'Consectetur ab qui numquam aut.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(15, 15, '2020-10-06 00:00:00', 73, '/uploads/nota/f6f3d424e7d822a162852eb730329b37.jpg', 46003700, 531329, 19992700, 'Alaina', 'Eligendi quia nam accusamus officiis.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(16, 16, '2020-10-06 00:00:00', 83, '/uploads/nota/82e93298806fd420c42dd507f39528fb.jpg', 16341200, 582685, 99942400, 'Reid', 'Distinctio non sint id iste aut eius iure.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(17, 17, '2020-10-06 00:00:00', 46, '/uploads/nota/2a312021940ed1b13fba9d63947b0edd.jpg', 17786100, 395450, 94741800, 'Glenda', 'Accusamus ipsum incidunt accusantium.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(18, 18, '2020-10-06 00:00:00', 58, '/uploads/nota/694e82b2afb0340a2b386f88c8ebf5ec.jpg', 23147100, 807086, 89891800, 'Claud', 'Et magni ut omnis et minus.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(19, 19, '2020-10-06 00:00:00', 15, '/uploads/nota/e3edbaeb0d245ebc10f099308b18207d.jpg', 38032300, 462356, 44848700, 'Tom', 'Occaecati porro quasi saepe autem vel est in.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(20, 20, '2020-10-06 00:00:00', 46, '/uploads/nota/46f0d0ff3e986fac4dd132727aa40514.jpg', 30311100, 475889, 47298300, 'Noah', 'Possimus laborum voluptas sunt modi.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(21, 21, '2020-10-06 00:00:00', 99, '/uploads/nota/b2bf0cf7ab8b6e95020b2938fb83a468.jpg', 33190200, 112357, 71685700, 'Jerome', 'A quisquam et voluptas voluptatum voluptas pariatur.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(22, 22, '2020-10-06 00:00:00', 19, '/uploads/nota/0edace98537a34f76ad59cb41f9263fd.jpg', 20175000, 785457, 55408900, 'Florian', 'Illo optio assumenda sed ipsam eligendi velit.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(23, 23, '2020-10-06 00:00:00', 27, '/uploads/nota/6941aa19557b6b192b6f9cc34969f8ed.jpg', 42957000, 229529, 93264500, 'Rebeca', 'Nulla hic sed et reprehenderit error et.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(24, 24, '2020-10-06 00:00:00', 82, '/uploads/nota/531b46c2051894acf0d82e33b6e480d1.jpg', 46092300, 217669, 27720500, 'Katlynn', 'Cum qui labore doloremque quis.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(25, 25, '2020-10-06 00:00:00', 15, '/uploads/nota/cd7a6e5e64ff79e9bc5818f4cb02ce53.jpg', 21492600, 663156, 25203000, 'Easter', 'Minus esse et velit eveniet accusamus aperiam.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(26, 26, '2020-10-06 00:00:00', 79, '/uploads/nota/b4cbd68dfe53ba38b5f3a7966f3aa3bb.jpg', 13577300, 793762, 45951300, 'Jadyn', 'Distinctio veniam et et qui.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(27, 27, '2020-10-06 00:00:00', 45, '/uploads/nota/c8d6d6b96aa9bba2ce30f5500a907daa.jpg', 15029000, 577998, 40159000, 'Rickey', 'Ut cupiditate omnis eligendi non ducimus.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(28, 28, '2020-10-06 00:00:00', 14, '/uploads/nota/fb730473315ffb9f789b256785699502.jpg', 6806050, 794171, 42275300, 'Leif', 'Nulla facilis quaerat consequatur asperiores et aperiam.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(29, 29, '2020-10-06 00:00:00', 95, '/uploads/nota/d663bf5f54aad207d963fd8bda4516d1.jpg', 32921200, 242392, 55747900, 'Lane', 'Consectetur quibusdam repellat ullam debitis aut.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(30, 30, '2020-10-06 00:00:00', 18, '/uploads/nota/638f80ca463f5551223186911be67808.jpg', 29456700, 475953, 50575500, 'Merritt', 'Quis illo amet aliquam et eligendi rem quaerat.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(31, 31, '2020-10-06 00:00:00', 4, '/uploads/nota/671b7f703876c7b6d9857d0c0df51534.jpg', 46680600, 660010, 82079300, 'Ova', 'Cum et dolorum adipisci fuga est.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(32, 32, '2020-10-06 00:00:00', 74, '/uploads/nota/6006a25794e35ef4ed7fdf2dd8ed3c28.jpg', 46527200, 476096, 94370400, 'Dave', 'Voluptatem suscipit quaerat molestias voluptatem omnis repellat repellat.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(33, 33, '2020-10-06 00:00:00', 41, '/uploads/nota/df8f5fe9ecc43f2b932bb390e0b24e17.jpg', 49381200, 216111, 68222100, 'Paul', 'Voluptas amet explicabo cum libero.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(34, 34, '2020-10-06 00:00:00', 12, '/uploads/nota/0c009bf014c5d53672d755beabd3398e.jpg', 47838000, 490163, 82799900, 'Alexa', 'Architecto ut similique modi quia nemo.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(35, 35, '2020-10-06 00:00:00', 96, '/uploads/nota/97739ed8cee310613c76de9aab0a948c.jpg', 39696400, 962249, 34270200, 'Andres', 'Eaque quam fuga deleniti.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(36, 36, '2020-10-06 00:00:00', 30, '/uploads/nota/52d80348d262199fde21beea7e2bd2c7.jpg', 10321800, 502818, 18694300, 'Crystel', 'Excepturi officia non similique enim.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(37, 37, '2020-10-06 00:00:00', 44, '/uploads/nota/e46d3dc90fee26844f99888eb1241ddd.jpg', 32447400, 957877, 43647200, 'Brooke', 'Asperiores rerum nihil perspiciatis voluptatem.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(38, 38, '2020-10-06 00:00:00', 54, '/uploads/nota/8a0d513b318b1fa3867f14887b20293f.jpg', 40508100, 259539, 53326200, 'Providenci', 'In quasi consequatur similique ut vel omnis.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(39, 39, '2020-10-06 00:00:00', 73, '/uploads/nota/228a26250bd5aa924cb17bd0497e5361.jpg', 33110200, 660047, 23236100, 'Carrie', 'Et officia quia vero quibusdam repellat.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(40, 40, '2020-10-06 00:00:00', 89, '/uploads/nota/14ab16f6332aaa00862c81c46c327e2d.jpg', 7357970, 177975, 41972400, 'Frank', 'Rem non qui cupiditate.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(41, 1, '2020-10-06 00:00:00', 13, '/uploads/nota/b637e60992b98a8c7f8d72526021b29a.jpg', 32323500, 451640, 39572400, 'Carolanne', 'Modi placeat vero esse voluptatum et aspernatur odio omnis.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(42, 2, '2020-10-06 00:00:00', 42, '/uploads/nota/bfcf93ff817864c595b9c99d27362edc.jpg', 40418700, 785724, 88227100, 'Theron', 'Ratione sit aliquid minus incidunt.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(43, 3, '2020-10-06 00:00:00', 96, '/uploads/nota/0a792b85adc5b09c97aded95311f26e9.jpg', 11170500, 486954, 37379800, 'Dorris', 'Et quas iure accusantium quo illum.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(44, 4, '2020-10-06 00:00:00', 95, '/uploads/nota/7d5f98bc70572dab2d7231151c7779dd.jpg', 27304200, 787575, 67914700, 'Ara', 'Inventore distinctio occaecati quos sint et fugit magni voluptas.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(45, 5, '2020-10-06 00:00:00', 50, '/uploads/nota/54e24cbd21c154d4e7f379ab4fd64b00.jpg', 27348700, 881298, 11483100, 'Joanne', 'Tenetur officia illo dignissimos et.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(46, 6, '2020-10-06 00:00:00', 55, '/uploads/nota/dc153633d6fd99e7d5c9affb2928a60a.jpg', 15927300, 434927, 83138700, 'Josh', 'Rerum perspiciatis explicabo nihil ab sint architecto praesentium ut.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(47, 7, '2020-10-06 00:00:00', 99, '/uploads/nota/6c654c0130cb7514306c9e3be3d37807.jpg', 49871000, 125153, 27578500, 'Jessika', 'Incidunt voluptate beatae omnis quam ut cumque.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(48, 8, '2020-10-06 00:00:00', 43, '/uploads/nota/c9dd91bf9fda5a3dfa50324748aa2489.jpg', 16915800, 876055, 31321100, 'Gustave', 'Iusto tempore deserunt quia adipisci necessitatibus delectus.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(49, 9, '2020-10-06 00:00:00', 22, '/uploads/nota/568b89eea7f75d27882e880a399de38e.jpg', 32181600, 642692, 34108900, 'Ron', 'Maxime quae quae ullam iste odit.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(50, 10, '2020-10-06 00:00:00', 58, '/uploads/nota/59f496c4e36cb6d293b1bee7dbcd6ce0.jpg', 43600300, 137030, 53707800, 'Jamison', 'Aut voluptate aliquid ipsum.', 0, '2020-10-05 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk`
--

CREATE TABLE `truk` (
  `truk_id` int(11) NOT NULL,
  `truk_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `truk`
--

INSERT INTO `truk` (`truk_id`, `truk_number`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 'B 1937 GK', 1, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'B 4102 GK', 2, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'B 7687 GK', 3, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'B 9710 GK', 4, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'B 3413 GK', 5, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'B 9255 GK', 6, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'B 8537 GK', 7, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'B 9418 GK', 8, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'B 3210 GK', 9, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'B 7015 GK', 10, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'B 5877 GK', 11, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'B 2312 GK', 12, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'B 5913 GK', 13, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'B 5006 GK', 14, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'B 2817 GK', 15, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'B 8054 GK', 16, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'B 1092 GK', 17, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'B 1780 GK', 18, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'B 5668 GK', 19, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'B 9821 GK', 20, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(21, 'B 1171 GK', 21, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(22, 'B 8559 GK', 22, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(23, 'B 9909 GK', 23, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(24, 'B 7864 GK', 24, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(25, 'B 2098 GK', 25, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(26, 'B 4001 GK', 26, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(27, 'B 8893 GK', 27, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(28, 'B 7607 GK', 28, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(29, 'B 2579 GK', 29, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(30, 'B 1421 GK', 30, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(31, 'B 1870 GK', 1, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(32, 'B 8264 GK', 2, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(33, 'B 8578 GK', 3, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(34, 'B 0668 GK', 4, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(35, 'B 7014 GK', 5, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(36, 'B 7705 GK', 6, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(37, 'B 7132 GK', 7, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(38, 'B 8643 GK', 8, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(39, 'B 3010 GK', 9, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(40, 'B 9843 GK', 10, '2020-10-04 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk_bongkar`
--

CREATE TABLE `truk_bongkar` (
  `bongkar_truk_id` int(11) NOT NULL,
  `truk_log_id` int(11) DEFAULT NULL,
  `bongkar_date` datetime NOT NULL,
  `bongkar_nota` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bongkar_nota_filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bongkar_tonase` float NOT NULL,
  `bongkar_harga_tonase` float DEFAULT NULL,
  `bongkar_hasil_perluasan` float NOT NULL,
  `bongkar_tebangan_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bongkar_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `truk_bongkar`
--

INSERT INTO `truk_bongkar` (`bongkar_truk_id`, `truk_log_id`, `bongkar_date`, `bongkar_nota`, `bongkar_nota_filename`, `bongkar_tonase`, `bongkar_harga_tonase`, `bongkar_hasil_perluasan`, `bongkar_tebangan_name`, `bongkar_status`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-06 00:00:00', 'NOTA3784XXX', '/uploads/nota//b0da91ac9440828217387cbb893296a8.jpg', 74, 19595900, 35065700, 'placeat', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(2, 2, '2020-10-06 00:00:00', 'NOTA8503XXX', '/uploads/nota//bf2cdfd9540f73740fa2f47723a813dd.jpg', 96, 22519200, 30165200, 'consequatur', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(3, 3, '2020-10-06 00:00:00', 'NOTA0156XXX', '/uploads/nota//bd5cd5fb08195d9448b38336422483ef.jpg', 1, 49040700, 50962000, 'tenetur', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(4, 4, '2020-10-06 00:00:00', 'NOTA2384XXX', '/uploads/nota//0deddd7236191bb4c8e94f2d8567d755.jpg', 43, 8983260, 81818100, 'sit', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(5, 5, '2020-10-06 00:00:00', 'NOTA3872XXX', '/uploads/nota//acc91ced6f386c52cc3d808fe34d4217.jpg', 85, 33156800, 72295500, 'animi', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(6, 6, '2020-10-06 00:00:00', 'NOTA0803XXX', '/uploads/nota//7aeae278c0128a599da6ea6c35b4bc41.jpg', 2, 45794800, 32647500, 'in', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(7, 7, '2020-10-06 00:00:00', 'NOTA3638XXX', '/uploads/nota//a61e91095aff31dc8132dad2e064e957.jpg', 91, 13464100, 41685100, 'expedita', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(8, 8, '2020-10-06 00:00:00', 'NOTA8351XXX', '/uploads/nota//a226de352b22152cb4d0ebc83f7278bc.jpg', 17, 13281600, 21551100, 'voluptatem', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(9, 9, '2020-10-06 00:00:00', 'NOTA6953XXX', '/uploads/nota//a01e30b8f7395d33de4b5d5241bcfb80.jpg', 10, 39786600, 53725200, 'quia', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(10, 10, '2020-10-06 00:00:00', 'NOTA9654XXX', '/uploads/nota//43634663794a90edcb541100a9b49630.jpg', 12, 39472800, 70309100, 'qui', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(11, 11, '2020-10-06 00:00:00', 'NOTA0004XXX', '/uploads/nota//d83e8af4d35fca19f57311895b895f50.jpg', 71, 42702900, 14058200, 'tempora', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(12, 12, '2020-10-06 00:00:00', 'NOTA5379XXX', '/uploads/nota//9a166890bb77dcaed22df47e30e0a873.jpg', 21, 41292500, 41480100, 'quia', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(13, 13, '2020-10-06 00:00:00', 'NOTA2935XXX', '/uploads/nota//f37b93c95fa923d8f4560dd42d80f5e2.jpg', 76, 19905400, 42690800, 'est', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(14, 14, '2020-10-06 00:00:00', 'NOTA0835XXX', '/uploads/nota//bbb8854ffa0473c8897725bc6fe3b8e8.jpg', 97, 15327100, 93159400, 'quasi', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(15, 15, '2020-10-06 00:00:00', 'NOTA1158XXX', '/uploads/nota//85e5a4225d0a5daba27bf93adf18f972.jpg', 94, 17109400, 80072800, 'odit', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(16, 16, '2020-10-06 00:00:00', 'NOTA4931XXX', '/uploads/nota//974899718564d0483283c4de72742e78.jpg', 91, 37493000, 61399000, 'ipsam', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(17, 17, '2020-10-06 00:00:00', 'NOTA5554XXX', '/uploads/nota//ba6702e868310337ccb677415feef34e.jpg', 78, 17173900, 69636500, 'rerum', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(18, 18, '2020-10-06 00:00:00', 'NOTA0295XXX', '/uploads/nota//524a86c68ce099eec5177d9dc26db3e9.jpg', 21, 39449200, 66755700, 'harum', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(19, 19, '2020-10-06 00:00:00', 'NOTA3147XXX', '/uploads/nota//bc8febb68df928bd9cafcf9aca1b9597.jpg', 51, 23690700, 63553500, 'est', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(20, 20, '2020-10-06 00:00:00', 'NOTA7129XXX', '/uploads/nota//abcb45e2da653346d24a1f39ae2d4c84.jpg', 17, 47948000, 10377300, 'tempora', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(21, 21, '2020-10-06 00:00:00', 'NOTA8089XXX', '/uploads/nota//5f12684b185624578c5b174b2a495a0c.jpg', 69, 23088700, 91739700, 'saepe', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(22, 22, '2020-10-06 00:00:00', 'NOTA0463XXX', '/uploads/nota//54efe7b54016e1f0eda93385ceaa8cf7.jpg', 68, 32715900, 17362700, 'recusandae', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(23, 23, '2020-10-06 00:00:00', 'NOTA4072XXX', '/uploads/nota//083a975dfd033868d9309ec83b62cf86.jpg', 66, 7390120, 13082300, 'quaerat', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(24, 24, '2020-10-06 00:00:00', 'NOTA7218XXX', '/uploads/nota//022b3c9045a41a93dcb6360fca36b7c7.jpg', 99, 41290700, 55309300, 'libero', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(25, 25, '2020-10-06 00:00:00', 'NOTA2997XXX', '/uploads/nota//a53c4d64e3666256a4cc627fe98bc0df.jpg', 38, 23240400, 53853700, 'blanditiis', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(26, 26, '2020-10-06 00:00:00', 'NOTA7803XXX', '/uploads/nota//15068056f31b79223df99e20a4451972.jpg', 87, 15546700, 61938700, 'rerum', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(27, 27, '2020-10-06 00:00:00', 'NOTA8168XXX', '/uploads/nota//7a6eaad57c20e27634ee1f4f8ef178f3.jpg', 47, 43606900, 21294500, 'doloremque', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(28, 28, '2020-10-06 00:00:00', 'NOTA1432XXX', '/uploads/nota//8752bb5a69b78f8b6b2832a661c3e035.jpg', 52, 13470600, 90450800, 'aliquam', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(29, 29, '2020-10-06 00:00:00', 'NOTA1967XXX', '/uploads/nota//3f6e2ced2e83a5ae501b6d7673d6b37a.jpg', 30, 5791240, 99673300, 'est', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(30, 30, '2020-10-06 00:00:00', 'NOTA5675XXX', '/uploads/nota//3a2e1393d2dae041d8b5f8b3e645887d.jpg', 70, 41868300, 54034300, 'magnam', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(31, 31, '2020-10-06 00:00:00', 'NOTA0169XXX', '/uploads/nota//f91444881ae37f20523904e791519ef1.jpg', 34, 37591600, 14625500, 'exercitationem', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(32, 32, '2020-10-06 00:00:00', 'NOTA8828XXX', '/uploads/nota//249e99af3139d7264934a5730f0a7c5f.jpg', 23, 9148680, 48654700, 'quam', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(33, 33, '2020-10-06 00:00:00', 'NOTA7075XXX', '/uploads/nota//c4108933c581ab4c9b1dcc3cd042115b.jpg', 2, 38246300, 95105500, 'dolorem', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(34, 34, '2020-10-06 00:00:00', 'NOTA5892XXX', '/uploads/nota//846e76c74697473ca9479b5a565c7c81.jpg', 45, 15024100, 11689100, 'vitae', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(35, 35, '2020-10-06 00:00:00', 'NOTA6134XXX', '/uploads/nota//7cbf286f71a945ad110b1a4d71ab1473.jpg', 99, 42283800, 34439700, 'vitae', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(36, 36, '2020-10-06 00:00:00', 'NOTA3938XXX', '/uploads/nota//6ce6e0d4ec90b9b1af3583879cf24b79.jpg', 60, 14098700, 94506500, 'dolores', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(37, 37, '2020-10-06 00:00:00', 'NOTA6441XXX', '/uploads/nota//b161626ebb6cb42d1c50a5fcb7d2363c.jpg', 76, 33854700, 13852500, 'nam', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(38, 38, '2020-10-06 00:00:00', 'NOTA4365XXX', '/uploads/nota//b1aad75131e9df29565948efca3377a0.jpg', 83, 17832200, 12353700, 'rerum', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(39, 39, '2020-10-06 00:00:00', 'NOTA4140XXX', '/uploads/nota//0d08547e0f110b51fc53dd3b8da0a8a5.jpg', 33, 20701600, 48869000, 'non', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(40, 40, '2020-10-06 00:00:00', 'NOTA3807XXX', '/uploads/nota//b6d8e8fbb4462d002c028c4fe5fbea65.jpg', 16, 30328800, 15599100, 'fugiat', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(41, 1, '2020-10-06 00:00:00', 'NOTA4367XXX', '/uploads/nota//1b09753ff24f323a32decc4ad6fe2fc5.jpg', 44, 5701170, 72818800, 'ex', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(42, 2, '2020-10-06 00:00:00', 'NOTA5462XXX', '/uploads/nota//ce0940f6a80c4a3bccc2a9f72bfae07a.jpg', 42, 24408700, 30577400, 'ullam', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(43, 3, '2020-10-06 00:00:00', 'NOTA2827XXX', '/uploads/nota//6a45f516b59366719b55204c194e1087.jpg', 48, 42918500, 97605500, 'nostrum', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(44, 4, '2020-10-06 00:00:00', 'NOTA6724XXX', '/uploads/nota//21b989e99507309afd7299b0beaed3ac.jpg', 27, 28114100, 59154800, 'voluptatem', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(45, 5, '2020-10-06 00:00:00', 'NOTA1281XXX', '/uploads/nota//adcdfe81944b70ade59fcda4fc3fbd14.jpg', 43, 11226800, 27148200, 'neque', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(46, 6, '2020-10-06 00:00:00', 'NOTA8499XXX', '/uploads/nota//92e331257af85d409079281acd9b7ac2.jpg', 56, 41116700, 16896300, 'rem', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(47, 7, '2020-10-06 00:00:00', 'NOTA6436XXX', '/uploads/nota//df78358d6c1bf30d9329557c0e4a240a.jpg', 60, 14228900, 43852700, 'quis', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(48, 8, '2020-10-06 00:00:00', 'NOTA4147XXX', '/uploads/nota//a44fb350d2ef1f58fbccd0436afcd888.jpg', 37, 35376700, 25612500, 'ratione', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(49, 9, '2020-10-06 00:00:00', 'NOTA2606XXX', '/uploads/nota//9c711f27eb035550bfa46b5ec269af9f.jpg', 79, 11752900, 80220100, 'delectus', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00'),
(50, 10, '2020-10-06 00:00:00', 'NOTA2140XXX', '/uploads/nota//c5ed0a763a594e4b1e46a7bc34d72ba0.jpg', 1, 5389060, 55966500, 'reiciendis', '', '2020-10-05 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk_log`
--

CREATE TABLE `truk_log` (
  `truk_log_id` int(11) NOT NULL,
  `truk_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `supir_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinjaman_uang_jalan` float NOT NULL,
  `tanggal_pinjaman_uang_jalan` datetime NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_keluar` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_case` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `truk_log`
--

INSERT INTO `truk_log` (`truk_log_id`, `truk_number`, `supir_name`, `pinjaman_uang_jalan`, `tanggal_pinjaman_uang_jalan`, `tanggal_masuk`, `tanggal_keluar`, `location`, `information`, `special_case`, `created_at`, `updated_at`) VALUES
(1, 'B 0668 GK', 'Myrtle', 863308, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'New Christopton', 'Aut dolorum ipsam placeat alias nobis aperiam.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'B 1092 GK', 'Trevion', 582611, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Kubchester', 'Aut ut amet temporibus repellat.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'B 1171 GK', 'Devante', 773580, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Darrenchester', 'Soluta minus necessitatibus laborum eligendi sunt dolore doloremque minus.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'B 1421 GK', 'Chaz', 422087, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Thaddeus', 'Consectetur ipsam et ratione numquam possimus voluptatem a.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'B 1780 GK', 'Fredrick', 496240, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'South Brock', 'Error laborum accusamus consequatur ab.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'B 1870 GK', 'Miller', 826686, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Hassanville', 'Vero hic a quia est.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'B 1937 GK', 'Carroll', 962426, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Duaneside', 'Quibusdam maxime quod beatae distinctio.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'B 2098 GK', 'Carson', 103568, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Sidney', 'Quae optio alias sit eveniet.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'B 2312 GK', 'Marietta', 761229, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Port Kailee', 'Et dolore laborum non sint.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'B 2579 GK', 'Donnell', 672189, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Hartmannside', 'Voluptas est in earum quia.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'B 2817 GK', 'Clyde', 385436, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Ottoburgh', 'Nihil est placeat necessitatibus ut possimus ab atque.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'B 3010 GK', 'Carli', 549943, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Prudence', 'Ducimus dignissimos eos amet.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'B 3210 GK', 'Bailey', 886940, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'South Beulahberg', 'Quia ea laboriosam voluptatem aut minus placeat.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'B 3413 GK', 'Bernadette', 609196, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Reichertville', 'Officia in enim inventore fugiat.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'B 4001 GK', 'Helene', 325834, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'East Conor', 'Impedit ea ex ipsa sed ipsam ipsa.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'B 4102 GK', 'Abagail', 457973, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Raymundofurt', 'Amet quaerat dolores molestiae possimus.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'B 5006 GK', 'Kendra', 275396, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Kiley', 'Sit porro eos in velit quae qui.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'B 5668 GK', 'Arvid', 588165, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Port Darwinton', 'Doloremque exercitationem ratione et recusandae repellat sint rerum ut.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'B 5877 GK', 'Citlalli', 845660, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Keven', 'Quae eveniet rerum aut et et.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'B 5913 GK', 'Everette', 586079, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Billiestad', 'Distinctio sint placeat dolores illum error ea consectetur sed.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(21, 'B 7014 GK', 'Trent', 657471, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Henrimouth', 'Dolorem nihil dolorem fuga dignissimos.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(22, 'B 7015 GK', 'Frederique', 155894, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'South Napoleon', 'Temporibus qui nihil autem dignissimos.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(23, 'B 7132 GK', 'Anderson', 973122, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'North Jaidenchester', 'Aut non esse id dolores dolorem placeat est.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(24, 'B 7607 GK', 'Alanna', 212028, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Amirastad', 'Ea ut velit quasi.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(25, 'B 7687 GK', 'Kaelyn', 278413, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'East Jaylin', 'Ut qui quis accusamus omnis distinctio harum aut.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(26, 'B 7705 GK', 'Elyse', 259736, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'North Margarethaven', 'Quasi delectus ea aspernatur sint accusamus deserunt omnis.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(27, 'B 7864 GK', 'Aylin', 310038, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Fabianton', 'Et est et error aut ratione assumenda tempore sapiente.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(28, 'B 8054 GK', 'Ryleigh', 982084, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Lake Ednamouth', 'Omnis labore voluptatem aliquid ex et ex adipisci laborum.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(29, 'B 8264 GK', 'Layla', 711951, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Jenningshaven', 'Veniam ut voluptatem voluptatibus explicabo est suscipit.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(30, 'B 8537 GK', 'Rhea', 641021, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Elenatown', 'Porro veritatis placeat a modi quidem eos dolorem similique.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(31, 'B 8559 GK', 'Shea', 592502, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'West Savion', 'Sit ratione dolor excepturi aut aut accusamus.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(32, 'B 8578 GK', 'Dell', 944522, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Rodgerchester', 'Pariatur illum reprehenderit aspernatur praesentium quia cumque.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(33, 'B 8643 GK', 'Kelvin', 617600, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Kreigermouth', 'Ratione enim et corporis voluptatibus fugiat voluptates.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(34, 'B 8893 GK', 'Marisol', 943925, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Williammouth', 'Beatae fugiat nobis mollitia sed.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(35, 'B 9255 GK', 'Gustave', 175918, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'East Pollyside', 'Amet non sit ipsum excepturi est nostrum.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(36, 'B 9418 GK', 'Davonte', 390802, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'New Gianni', 'Est est quisquam itaque consequatur voluptatem.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(37, 'B 9710 GK', 'Kira', 642307, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Schowalterhaven', 'Voluptas corporis illo tempore accusamus in voluptatem maxime.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(38, 'B 9821 GK', 'Mina', 176800, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'North Deangeloberg', 'Harum cum soluta aliquam voluptates vel ab.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(39, 'B 9843 GK', 'Marcus', 833619, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Port Stanleyshire', 'Est aperiam cum cumque recusandae.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(40, 'B 9909 GK', 'Cloyd', 368822, '2020-10-05 00:00:00', '2020-10-04 17:00:00', '2020-10-06 00:00:00', 'Daughertyhaven', 'Magnam ut magnam at repellendus perferendis dignissimos voluptatem.', 0, '2020-10-04 17:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `created_at`, `updated_at`) VALUES
(1, 'Mills, Little and Kassulke', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'Shields, Witting and Bechtelar', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'Kuphal-O\'Keefe', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'Crist-Cronin', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'Prohaska Inc', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'Stiedemann, Hegmann and Weimann', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'Schowalter Inc', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'Hand-Spencer', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'Wisoky Group', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'Mann and Sons', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'Murray, Herzog and Runte', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'Fritsch, Toy and Schaden', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'Cronin LLC', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'Dietrich-Mayer', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'Hayes-Casper', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'DuBuque and Sons', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'Ruecker PLC', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'Lubowitz-Gislason', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'Anderson-Hamill', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'Abbott-Wunsch', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(21, 'Bechtelar, Mueller and Bechtelar', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(22, 'Wunsch-Gulgowski', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(23, 'Emmerich-Heaney', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(24, 'Corwin-Wisoky', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(25, 'Schmidt LLC', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(26, 'Kassulke, Moore and Kuhic', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(27, 'Jerde Group', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(28, 'Nolan, Hand and Konopelski', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(29, 'Lesch, Kunde and Feil', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(30, 'Carter, Kling and Mills', '2020-10-04 17:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`operasional_id`);

--
-- Indeks untuk tabel `tebangan`
--
ALTER TABLE `tebangan`
  ADD PRIMARY KEY (`tebangan_id`),
  ADD KEY `tebangan_fk0` (`vendor_id`);

--
-- Indeks untuk tabel `tebangan_bongkar`
--
ALTER TABLE `tebangan_bongkar`
  ADD PRIMARY KEY (`tebangan_log_id`),
  ADD KEY `tebangan_bongkar_fk0` (`tebangan_id`);

--
-- Indeks untuk tabel `truk`
--
ALTER TABLE `truk`
  ADD PRIMARY KEY (`truk_id`),
  ADD KEY `truk_fk0` (`vendor_id`);

--
-- Indeks untuk tabel `truk_bongkar`
--
ALTER TABLE `truk_bongkar`
  ADD PRIMARY KEY (`bongkar_truk_id`),
  ADD KEY `truk_bongkar_fk0` (`truk_log_id`);

--
-- Indeks untuk tabel `truk_log`
--
ALTER TABLE `truk_log`
  ADD PRIMARY KEY (`truk_log_id`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `operasional`
--
ALTER TABLE `operasional`
  MODIFY `operasional_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tebangan`
--
ALTER TABLE `tebangan`
  MODIFY `tebangan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tebangan_bongkar`
--
ALTER TABLE `tebangan_bongkar`
  MODIFY `tebangan_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `truk`
--
ALTER TABLE `truk`
  MODIFY `truk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `truk_bongkar`
--
ALTER TABLE `truk_bongkar`
  MODIFY `bongkar_truk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `truk_log`
--
ALTER TABLE `truk_log`
  MODIFY `truk_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tebangan`
--
ALTER TABLE `tebangan`
  ADD CONSTRAINT `tebangan_fk0` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Ketidakleluasaan untuk tabel `tebangan_bongkar`
--
ALTER TABLE `tebangan_bongkar`
  ADD CONSTRAINT `tebangan_bongkar_fk0` FOREIGN KEY (`tebangan_id`) REFERENCES `tebangan` (`tebangan_id`);

--
-- Ketidakleluasaan untuk tabel `truk`
--
ALTER TABLE `truk`
  ADD CONSTRAINT `truk_fk0` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`vendor_id`);

--
-- Ketidakleluasaan untuk tabel `truk_bongkar`
--
ALTER TABLE `truk_bongkar`
  ADD CONSTRAINT `truk_bongkar_fk0` FOREIGN KEY (`truk_log_id`) REFERENCES `truk_log` (`truk_log_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
