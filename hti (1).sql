-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Okt 2020 pada 10.57
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
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `operasional_date` datetime NOT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biaya` float NOT NULL,
  `operational_nota_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `operasional`
--

INSERT INTO `operasional` (`operasional_id`, `truk_id`, `tebangan_id`, `created_at`, `updated_at`, `operasional_date`, `information`, `biaya`, `operational_nota_filename`) VALUES
(1, 1, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'At aperiam voluptatibus dolorem deleniti iusto consequuntur.', 720480, '/uploads/nota//f2cc3c6a2007c694e817479099a4b26d.jpg'),
(2, 2, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Repudiandae sed non expedita ut.', 759717, '/uploads/nota//1878bc99e4cf2831a14dd5f92f075d54.jpg'),
(3, 3, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Dolores ipsum et eligendi eligendi aut quia pariatur.', 556433, '/uploads/nota//a3d97c5d37e13507f45436720ee9bb6d.jpg'),
(4, 4, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Voluptatem et natus consectetur harum et.', 857212, '/uploads/nota//e4d69c7e89f6a924e9287373b1632a39.jpg'),
(5, 5, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Nulla corporis deserunt nam praesentium est fugit distinctio.', 576358, '/uploads/nota//8f51ca05c61e41cc9745230bc21648f5.jpg'),
(6, 6, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Repellendus quia molestias ab animi illo quasi maxime quibusdam.', 901416, '/uploads/nota//396a95e445ac93b8690cdd469944b68c.jpg'),
(7, 7, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Recusandae necessitatibus enim consequatur sed sed harum a omnis.', 613441, '/uploads/nota//889726808f0bfa8ec9313ea034e08d65.jpg'),
(8, 8, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Molestias quae ut commodi quia ipsum dolores.', 604160, '/uploads/nota//6971bb0612381cbb345c923ae2c63dab.jpg'),
(9, 9, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Consequatur ut sint optio earum.', 635139, '/uploads/nota//0f96036d734b56dc36a24feb6fc67a49.jpg'),
(10, 10, NULL, '2020-10-04 17:00:00', '0000-00-00 00:00:00', '2020-10-05 00:00:00', 'Mollitia est autem assumenda iusto voluptas eaque.', 918791, '/uploads/nota//20b8d4b202a9b639d2dd992caa9855b3.jpg'),
(18, 0, 12, '2020-10-06 03:23:55', '2020-10-06 03:23:55', '2020-10-07 00:00:00', 'sdadasdasdas', 15100000, '/uploads/nota/dkwaokoawdaw.jpg'),
(22, 1, 0, '2020-10-06 08:54:05', '2020-10-06 08:54:05', '0000-00-00 00:00:00', '3123', 31231200, 'gulpfile.js'),
(23, 1, 0, '2020-10-06 08:56:48', '2020-10-06 08:56:48', '0000-00-00 00:00:00', '', 1, 'gulpfile.js'),
(24, 1, 0, '2020-10-06 08:57:13', '2020-10-06 08:57:13', '2020-10-06 00:00:00', '', 132, 'gulpfile.js');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tebangan`
--

CREATE TABLE `tebangan` (
  `tebangan_id` int(11) NOT NULL,
  `tebangan_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tebangan`
--

INSERT INTO `tebangan` (`tebangan_id`, `tebangan_number`, `vendor_id`, `updated_at`, `created_at`) VALUES
(1, 'F 1929 LS', 1, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'F 0643 LS', 2, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'F 1912 LS', 3, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'F 6243 LS', 4, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'F 7031 LS', 5, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'F 7761 LS', 6, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'F 4823 LS', 7, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'F 1212 LS', 8, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'F 8467 LS', 9, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'F 9957 LS', 10, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'F 1362 LS', 11, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'F 4096 LS', 12, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'F 0072 LS', 13, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'F 4817 LS', 14, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'F 0377 LS', 15, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'F 2902 LS', 16, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'F 2156 LS', 17, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'F 5675 LS', 18, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'F 1541 LS', 19, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'F 6022 LS', 20, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(21, 'F 1111 L', 1, '2020-10-06 07:28:13', '2020-10-06 07:28:13');

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
  `bongkar_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Tidak Lunas',
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_case` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `tebangan_bongkar`
--

INSERT INTO `tebangan_bongkar` (`tebangan_log_id`, `tebangan_id`, `bongkar_date`, `bongkar_tonase`, `bongkar_nota_filename`, `bongkar_harga_tonase`, `pinjaman_uang_jalan`, `bongkar_hasil_perluasan`, `bongkar_tebangan_name`, `bongkar_status`, `information`, `special_case`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-05 00:00:00', 93, '/uploads/nota/5df112bf1c986e3c23bf697550859529.jpg', 25450200, 167778, 31832100, 'Sincere', 'Lunas', 'Quia nostrum minus soluta id qui aut.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(2, 2, '2020-10-05 00:00:00', 29, '/uploads/nota/2c26d55b11e0fd548154fa4ee24d7505.jpg', 20432300, 739058, 47592000, 'Alvena', 'Lunas', 'Unde itaque repellat aperiam temporibus non voluptate iure.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(3, 3, '2020-10-05 00:00:00', 2, '/uploads/nota/9a04de57100b604f5d85f752fffeaf09.jpg', 11506800, 889362, 28465100, 'Aidan', 'Lunas', 'Dicta cum et aliquid sed aut veniam dignissimos.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(4, 4, '2020-10-05 00:00:00', 45, '/uploads/nota/a6a61ed90301749c192644115920bc43.jpg', 17476500, 846061, 65508000, 'Lafayette', 'Lunas', 'Molestias dolores in explicabo et perferendis qui iure.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(5, 5, '2020-10-05 00:00:00', 17, '/uploads/nota/761b03995ca879c8612161a79064e4a8.jpg', 49504000, 660441, 26187100, 'Anderson', 'Lunas', 'Et repellat nam eum voluptatibus possimus.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(6, 6, '2020-10-05 00:00:00', 55, '/uploads/nota/a621bdce07f5126e82616ccb2df1e686.jpg', 23572600, 998929, 73735400, 'Raegan', 'Lunas', 'In necessitatibus qui laboriosam debitis doloremque error.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(7, 7, '2020-10-05 00:00:00', 83, '/uploads/nota/23a30869847365aa58d5f58cd5292baf.jpg', 40364600, 599826, 56700000, 'Norris', 'Lunas', 'Est error eos nisi et maxime officia maiores nisi.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(8, 8, '2020-10-05 00:00:00', 58, '/uploads/nota/58be9f85284824322dc7fd76c80a03cc.jpg', 44639200, 963043, 37140700, 'Shaylee', 'Lunas', 'A dolores amet cumque beatae.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(9, 9, '2020-10-05 00:00:00', 22, '/uploads/nota/c00c9b0957951fea7145d7aa8d626d47.jpg', 16266300, 927667, 90381600, 'Kennith', 'Lunas', 'Est voluptatibus numquam et veritatis ut repudiandae.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(10, 10, '2020-10-05 00:00:00', 84, '/uploads/nota/ee0f9094a1ce99a68bca25d0242a7dfd.jpg', 43923500, 878822, 53890600, 'Lisandro', 'Lunas', 'Minima qui quia id harum ratione eveniet quaerat dolorem.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(11, 11, '2020-10-05 00:00:00', 7, '/uploads/nota/e1ae7f9ac4df85a4d6fce12aafa5548b.jpg', 17491800, 281254, 43232000, 'Velva', 'Lunas', 'Nulla consectetur nesciunt est numquam.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(12, 12, '2020-10-05 00:00:00', 30, '/uploads/nota/8ac6346256474bbe5b35e8b1b35b3768.jpg', 12799800, 489091, 98871100, 'Karli', 'Lunas', 'Maiores suscipit vel soluta repellat omnis.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(13, 13, '2020-10-05 00:00:00', 52, '/uploads/nota/59a8b8197155d43dc9dfec9131d5b481.jpg', 37714300, 813185, 20919500, 'Elton', 'Lunas', 'Nisi nam totam quod et laudantium et.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(14, 14, '2020-10-05 00:00:00', 35, '/uploads/nota/52d853794a0ba24f9cd231d6ac66135a.jpg', 32610300, 899750, 61819700, 'Emelia', 'Lunas', 'Consectetur enim ut earum laudantium.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(15, 15, '2020-10-05 00:00:00', 69, '/uploads/nota/790bce3f0903d4da723bbdaa1826716f.jpg', 9215960, 525679, 84226400, 'Randal', 'Lunas', 'Eos vel consequatur debitis at placeat.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(16, 16, '2020-10-05 00:00:00', 79, '/uploads/nota/854934e194d0e57fe08acce03d2eb90f.jpg', 42687000, 532702, 13056900, 'Kameron', 'Lunas', 'Dolorem ea enim et eveniet alias soluta voluptatem.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(17, 17, '2020-10-05 00:00:00', 91, '/uploads/nota/9a54e971eef0a410cce3b8d6320fe54a.jpg', 10927500, 465437, 97225100, 'Regan', 'Lunas', 'Dolorem et eos ut non blanditiis.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(18, 18, '2020-10-05 00:00:00', 25, '/uploads/nota/f01f6de53fccb049a1705882a8620a74.jpg', 20043600, 111127, 87282400, 'Jazmin', 'Lunas', 'Enim odio asperiores rerum.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(19, 19, '2020-10-05 00:00:00', 10, '/uploads/nota/037551f92a0bb66d7bbcd43d9af8c54d.jpg', 9229420, 689349, 82641100, 'Judson', 'Lunas', 'Numquam ut natus quia impedit necessitatibus impedit mollitia.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(20, 20, '2020-10-05 00:00:00', 76, '/uploads/nota/d32adda397eaa4518d841c550298f67f.jpg', 14518700, 794337, 42240100, 'Tevin', 'Lunas', 'Voluptas quis accusamus aspernatur animi repellendus libero minus.', 'No', '2020-10-06 05:29:29', '0000-00-00 00:00:00'),
(21, 21, '2020-10-06 00:00:00', 1, 'bower.json', 150, 100, 50, 'Hasan', 'Lunas', 'Tidak', 'No', '2020-10-06 07:30:22', '2020-10-06 07:28:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk`
--

CREATE TABLE `truk` (
  `truk_id` int(11) NOT NULL,
  `truk_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `truk`
--

INSERT INTO `truk` (`truk_id`, `truk_number`, `vendor_id`, `created_at`, `updated_at`) VALUES
(1, 'B 2568 GK', 1, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'B 2563 GK', 2, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'B 4088 GK', 3, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'B 8186 GK', 4, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'B 6265 GK', 5, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'B 8444 GK', 6, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'B 9345 GK', 7, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'B 6920 GK', 8, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'B 5746 GK', 9, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'B 5574 GK', 10, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'B 6032 GK', 11, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'B 0974 GK', 12, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'B 2491 GK', 13, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'B 0990 GK', 14, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'B 7744 GK', 15, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'B 8730 GK', 16, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'B 0829 GK', 17, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'B 8193 GK', 18, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'B 6609 GK', 19, '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'B 7951 GK', 20, '2020-10-04 17:00:00', '0000-00-00 00:00:00');

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
  `bongkar_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Tidak Lunas',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `truk_bongkar`
--

INSERT INTO `truk_bongkar` (`bongkar_truk_id`, `truk_log_id`, `bongkar_date`, `bongkar_nota`, `bongkar_nota_filename`, `bongkar_tonase`, `bongkar_harga_tonase`, `bongkar_hasil_perluasan`, `bongkar_tebangan_name`, `bongkar_status`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-05 00:00:00', 'NOTA5120XXX', '/uploads/nota/11a355f9e367ff9d8c07623d69fc302a.jpg', 39, 20649600, 74924900, 'Ahmad', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(2, 2, '2020-10-05 00:00:00', 'NOTA6088XXX', '/uploads/nota/4ce93b92c9d2265a37e8631d88c9b72b.jpg', 21, 35030800, 24934100, 'Ellen', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(3, 3, '2020-10-05 00:00:00', 'NOTA7501XXX', '/uploads/nota/c0a914d418a5567968ea2bf8b18233bb.jpg', 10, 38024800, 54349500, 'Charlotte', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(4, 4, '2020-10-05 00:00:00', 'NOTA6884XXX', '/uploads/nota/96129ed004a7fe9673522d895836f40a.jpg', 100, 39396500, 55605000, 'Tomas', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(5, 5, '2020-10-05 00:00:00', 'NOTA1147XXX', '/uploads/nota/4a801c1b250b2c68b317999ece3754c2.jpg', 58, 12892400, 39966500, 'Savanna', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(6, 6, '2020-10-05 00:00:00', 'NOTA9498XXX', '/uploads/nota/d64011f7f3e76df4ac930b6ab9f03f66.jpg', 90, 42047500, 40846500, 'Reginald', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(7, 7, '2020-10-05 00:00:00', 'NOTA8802XXX', '/uploads/nota/0759d50fcb5f1b070667b825f44cd57f.jpg', 66, 18689900, 85459700, 'Manley', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(8, 8, '2020-10-05 00:00:00', 'NOTA9420XXX', '/uploads/nota/10fbbb2cbd83cbe4f4b84be5ea9713b4.jpg', 33, 35932400, 69939200, 'Foster', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(9, 9, '2020-10-05 00:00:00', 'NOTA3994XXX', '/uploads/nota/752a1d3b99af1cd7396bc75e85fa75ef.jpg', 79, 34382600, 99692800, 'Jay', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(10, 10, '2020-10-05 00:00:00', 'NOTA9984XXX', '/uploads/nota/59c00bb486cfa2c88e00f7e3010b40a1.jpg', 11, 33613200, 43985100, 'Aidan', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(11, 11, '2020-10-05 00:00:00', 'NOTA9285XXX', '/uploads/nota/d5fd94e50996f82092321e6978411556.jpg', 65, 35839300, 62801700, 'Zackary', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(12, 12, '2020-10-05 00:00:00', 'NOTA6886XXX', '/uploads/nota/4492682212a1d3929f6272e4621552f3.jpg', 28, 39740300, 88929500, 'Gerard', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(13, 13, '2020-10-05 00:00:00', 'NOTA0181XXX', '/uploads/nota/26119c887789f9f8f3f9b493e95a0ff1.jpg', 5, 20113100, 85926800, 'Woodrow', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(14, 14, '2020-10-05 00:00:00', 'NOTA9335XXX', '/uploads/nota/314891b4997bfaaaf39597e6b0b05c93.jpg', 47, 38264600, 66330800, 'Karli', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(15, 15, '2020-10-05 00:00:00', 'NOTA4949XXX', '/uploads/nota/9ad79d445133573baa219f312b800e24.jpg', 14, 17304500, 52342600, 'Ulises', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(16, 16, '2020-10-05 00:00:00', 'NOTA2027XXX', '/uploads/nota/aa4a11e3968e05c35f98eacbb0989c65.jpg', 1, 30037600, 45063200, 'Elwin', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(17, 17, '2020-10-05 00:00:00', 'NOTA0345XXX', '/uploads/nota/b7d3a9ce91b58c511cfdc5bc51cb7a85.jpg', 47, 38100100, 17563600, 'Hulda', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(18, 18, '2020-10-05 00:00:00', 'NOTA4559XXX', '/uploads/nota/8b5ae91d4cbeb1a6a65c472a95a8d8ba.jpg', 50, 17111000, 48812200, 'Aileen', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(19, 19, '2020-10-05 00:00:00', 'NOTA4478XXX', '/uploads/nota/9b7bf9a51757cff1746058aec344c66a.jpg', 93, 14247700, 12665600, 'Ellis', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(20, 20, '2020-10-05 00:00:00', 'NOTA7346XXX', '/uploads/nota/a5e99fc88ee99f255672aad70292218e.jpg', 3, 30536100, 85840000, 'Warren', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(21, 21, '2020-10-05 00:00:00', 'NOTA0148XXX', '/uploads/nota/7bfa8afbd1c7dcad905ddef9e31ab1c8.jpg', 92, 21599400, 20370600, 'Zack', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(22, 22, '2020-10-05 00:00:00', 'NOTA0207XXX', '/uploads/nota/d3711d0a86d43020a818a6dd62f115c6.jpg', 35, 23100500, 18139000, 'Blaise', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(23, 23, '2020-10-05 00:00:00', 'NOTA5917XXX', '/uploads/nota/66403b008ba3ef6dc50322e6b2e7a290.jpg', 17, 30140200, 49131100, 'Kim', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(24, 24, '2020-10-05 00:00:00', 'NOTA4264XXX', '/uploads/nota/86db7280e71ca4a8419b3436d3c123a4.jpg', 7, 20772700, 65153300, 'Anissa', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(25, 25, '2020-10-05 00:00:00', 'NOTA3042XXX', '/uploads/nota/c1a95235a2d9b0062a49fdc898607b3e.jpg', 40, 28029000, 96591900, 'Keven', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(26, 26, '2020-10-05 00:00:00', 'NOTA7227XXX', '/uploads/nota/6dc7ef1df14878ee16324851b63f92e0.jpg', 6, 33494400, 84280500, 'Destinee', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(27, 27, '2020-10-05 00:00:00', 'NOTA8366XXX', '/uploads/nota/a4d66f0b7e8fe060ea0f97dd6d8e89f7.jpg', 93, 15511800, 21135500, 'Shakira', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(28, 28, '2020-10-05 00:00:00', 'NOTA7180XXX', '/uploads/nota/e97225347339bc5358357bc41ce689be.jpg', 60, 24720200, 52718200, 'Major', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(29, 29, '2020-10-05 00:00:00', 'NOTA8349XXX', '/uploads/nota/e3efed3dbc35a50c4554b967a61e14ae.jpg', 12, 26960800, 92056000, 'Danika', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00'),
(30, 30, '2020-10-05 00:00:00', 'NOTA5388XXX', '/uploads/nota/f081c694739576c490492ed502659b25.jpg', 19, 9411870, 61433800, 'Lilliana', 'Lunas', '2020-10-06 02:33:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk_log`
--

CREATE TABLE `truk_log` (
  `truk_log_id` int(11) NOT NULL,
  `truk_id` int(11) NOT NULL,
  `supir_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinjaman_uang_jalan` float NOT NULL,
  `tanggal_pinjaman_uang_jalan` datetime NOT NULL,
  `tanggal_masuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tanggal_keluar` datetime NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_case` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `truk_log`
--

INSERT INTO `truk_log` (`truk_log_id`, `truk_id`, `supir_name`, `pinjaman_uang_jalan`, `tanggal_pinjaman_uang_jalan`, `tanggal_masuk`, `tanggal_keluar`, `location`, `information`, `special_case`, `created_at`, `updated_at`) VALUES
(1, 1, 'Alysson', 736172, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'South Wilbertown', 'Id velit dolores ipsa adipisci veniam voluptatem repellendus.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(2, 2, 'Jordi', 513107, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'New Bret', 'Quo saepe dolorum similique eveniet.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(3, 3, 'Adele', 299419, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'East Chaseburgh', 'Corporis sequi maxime in debitis aliquam.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(4, 4, 'Reilly', 813254, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'New Cheyennefurt', 'Ratione ipsum facere eligendi quo quia rerum.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(5, 5, 'Shaina', 972498, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Hickleview', 'Sit quis eum repudiandae ea deserunt et pariatur quia.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(6, 6, 'Samanta', 407117, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Emmerichberg', 'Ea non ut reprehenderit aliquid nam illum.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(7, 7, 'Sallie', 866883, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Port Jackton', 'Suscipit aut dolorem ut autem rerum natus.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(8, 8, 'Kailyn', 958745, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'South Kellishire', 'Amet nisi nulla non ab nihil.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(9, 9, 'Garrick', 329640, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Elenorburgh', 'Odit est nobis ullam qui.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(10, 10, 'Emmet', 439739, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'New Dawsonton', 'Et autem nesciunt fuga provident voluptatibus quisquam.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(11, 11, 'Jed', 780463, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Oralland', 'Est officiis ut dolores nam provident quis accusantium.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(12, 12, 'Albina', 928214, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Huelsview', 'Expedita quidem molestiae ipsam beatae quibusdam.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(13, 13, 'Angeline', 742680, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Hintzberg', 'Magnam commodi sed inventore iusto architecto praesentium commodi.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(14, 14, 'Alysha', 711861, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'New Junior', 'Velit officiis molestiae placeat expedita hic necessitatibus sit.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(15, 15, 'Matteo', 707072, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Prohaskaside', 'Quisquam et omnis vitae voluptatem quidem id eveniet.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(16, 16, 'Ashleigh', 742477, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Jacobsonborough', 'Reiciendis dolores sapiente ad cum voluptates.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(17, 17, 'Clay', 256091, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Derekborough', 'Sed facere et voluptatem numquam similique sed at et.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(18, 18, 'Baby', 252286, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Alejandrahaven', 'Minima tenetur eum quasi ut et aperiam molestias.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(19, 19, 'Katelyn', 265657, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Raeshire', 'Iure sequi sint velit non ullam vero vero.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(20, 20, 'Mabel', 566733, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Lake Garrisontown', 'Rerum inventore modi eaque ut maxime provident.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(21, 1, 'Devon', 474722, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Boganview', 'Dolore dolores exercitationem eos asperiores.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(22, 2, 'Reed', 763411, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Enaville', 'Nihil aliquam perferendis est vitae.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(23, 3, 'Mya', 107057, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'North Trevion', 'At quis voluptas magni explicabo.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(24, 4, 'Chester', 856149, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'North Waino', 'Itaque qui consequatur voluptatem aspernatur vel ipsa laboriosam.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(25, 5, 'Guido', 321423, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Marvinfurt', 'Reprehenderit distinctio minima esse sint.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(26, 6, 'Gabriella', 651589, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'New Skylafort', 'Qui dolor qui veritatis minima excepturi nemo voluptate.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(27, 7, 'Beryl', 115202, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'East Carolstad', 'Quo laboriosam ipsam ipsa ea.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(28, 8, 'Berry', 820963, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'New Leda', 'Blanditiis quaerat soluta suscipit qui fugiat laudantium.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(29, 9, 'Luisa', 826199, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'North Jada', 'Quaerat quasi eum dolor sed ex.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00'),
(30, 10, 'Drew', 977508, '2020-10-05 00:00:00', '2020-10-06 05:29:00', '2020-10-06 00:00:00', 'Schimmelfort', 'Voluptatibus aperiam dolore temporibus velit quis provident est.', 'No', '2020-10-06 05:29:00', '2020-10-06 05:29:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendor`
--

CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `created_at`, `updated_at`) VALUES
(1, 'Wehner-Keebler', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(2, 'Stiedemann and Sons', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(3, 'Boehm-Crist', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(4, 'Upton, Schmeler and Schneider', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(5, 'Mayert, Champlin and Rath', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(6, 'Jacobi-Grant', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(7, 'O\'Reilly, McKenzie and Stoltenberg', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(8, 'Brekke-Gislason', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(9, 'Cartwright-Denesik', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(10, 'Mayer PLC', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(11, 'Heidenreich, Welch and West', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(12, 'Kutch-Wiza', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(13, 'Bernier-Greenholt', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(14, 'Parisian-Kunze', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(15, 'Lehner Inc', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(16, 'Cummerata, Satterfield and Volkman', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(17, 'Sawayn and Sons', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(18, 'Grant Inc', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(19, 'Bartell, White and Nader', '2020-10-04 17:00:00', '0000-00-00 00:00:00'),
(20, 'Smitham and Sons', '2020-10-04 17:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `operasional`
--
ALTER TABLE `operasional`
  ADD PRIMARY KEY (`operasional_id`),
  ADD KEY `operasional_fk0` (`truk_id`),
  ADD KEY `operasional_fk1` (`tebangan_id`);

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
  ADD PRIMARY KEY (`truk_log_id`),
  ADD KEY `truk_log_fk0` (`truk_id`);

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
  MODIFY `operasional_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tebangan`
--
ALTER TABLE `tebangan`
  MODIFY `tebangan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tebangan_bongkar`
--
ALTER TABLE `tebangan_bongkar`
  MODIFY `tebangan_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `truk`
--
ALTER TABLE `truk`
  MODIFY `truk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `truk_bongkar`
--
ALTER TABLE `truk_bongkar`
  MODIFY `bongkar_truk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `truk_log`
--
ALTER TABLE `truk_log`
  MODIFY `truk_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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

--
-- Ketidakleluasaan untuk tabel `truk_log`
--
ALTER TABLE `truk_log`
  ADD CONSTRAINT `truk_log_fk0` FOREIGN KEY (`truk_id`) REFERENCES `truk` (`truk_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
