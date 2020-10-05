-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Okt 2020 pada 15.07
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
-- Struktur dari tabel `bongkar_log`
--

CREATE TABLE `bongkar_log` (
  `bongkar_id` int(11) NOT NULL,
  `bongkar_date` datetime NOT NULL,
  `bongkar_nota` varchar(255) NOT NULL,
  `bongkar_nota_filename` varchar(255) NOT NULL,
  `bongkar_tonase` float NOT NULL,
  `bongkar_status` varchar(255) NOT NULL,
  `bongkar_hasil_perluasan` float NOT NULL,
  `tebangan_id` int(11) NOT NULL,
  `truk_log_id` int(11) NOT NULL,
  `information` varchar(255) NOT NULL,
  `tebangan_kayu_name` varchar(255) NOT NULL,
  `spesial_case` tinyint(1) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bongkar_log`
--

INSERT INTO `bongkar_log` (`bongkar_id`, `bongkar_date`, `bongkar_nota`, `bongkar_nota_filename`, `bongkar_tonase`, `bongkar_status`, `bongkar_hasil_perluasan`, `tebangan_id`, `truk_log_id`, `information`, `tebangan_kayu_name`, `spesial_case`, `create_at`, `update_at`) VALUES
(1, '2020-10-04 14:38:01', 'NOTA4811XXX', 'upload/nota/51ee61997611cbf84cfcfdc98a65cbda.jpg', 21, 'Lunas', 20899600, 0, 1, 'Vero voluptatem fuga provident assumenda qui quo.', 'illo', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(2, '2020-10-05 05:21:29', 'NOTA0104XXX', 'upload/nota/105ba84510d42b63faea96f0e8ecea1f.jpg', 49, 'Lunas', 21202300, 0, 2, 'Animi omnis magni officiis et.', 'veritatis', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(3, '2020-10-04 21:19:42', 'NOTA5958XXX', 'upload/nota/846c2a6ebb429d417c7b3a5873e1fb7b.jpg', 93, 'Lunas', 19542600, 0, 3, 'Inventore placeat dolor et asperiores eum.', 'omnis', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(4, '2020-10-04 16:42:36', 'NOTA3970XXX', 'upload/nota/94c4b5511ba0b7caa84cb36f72b20aee.jpg', 1, 'Lunas', 88291800, 0, 4, 'Non et aut eius magni beatae.', 'eveniet', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(5, '2020-10-04 08:52:25', 'NOTA9601XXX', 'upload/nota/7007b3562e7b6093ce01bfbd0cada73f.jpg', 5, 'Lunas', 92347600, 0, 5, 'Sit quis et et aspernatur.', 'ipsam', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(6, '2020-10-04 17:18:21', 'NOTA9702XXX', 'upload/nota/9cdd8185b02ce5f79dbdcaeee3afc47e.jpg', 55, 'Lunas', 85955100, 0, 6, 'Rem nihil vero minus accusantium.', 'in', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(7, '2020-10-05 02:58:54', 'NOTA6067XXX', 'upload/nota/8418a98c03168d055396e79ab4489c8a.jpg', 100, 'Lunas', 69203100, 0, 7, 'Enim accusantium non quasi velit nulla tempore vel.', 'omnis', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(8, '2020-10-04 22:19:51', 'NOTA8822XXX', 'upload/nota/f6afb5b69e0941596b96525aa43fbb3a.jpg', 47, 'Lunas', 59276800, 0, 8, 'Explicabo exercitationem quam asperiores iure eos sed.', 'quaerat', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(9, '2020-10-04 16:23:21', 'NOTA9923XXX', 'upload/nota/590f6183453b3b35326f4b48484aa4d6.jpg', 40, 'Lunas', 61261200, 0, 9, 'Id ut vitae ad id aut quia vel.', 'eum', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(10, '2020-10-04 09:28:42', 'NOTA7702XXX', 'upload/nota/a49d5074d88803337aa013ca314492ec.jpg', 24, 'Lunas', 30998300, 0, 10, 'Qui consectetur quas dolore sit in.', 'et', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(11, '2020-10-04 09:43:54', 'NOTA8043XXX', 'upload/nota/3671db6b512caea81a1d81096114aee1.jpg', 5, 'Lunas', 62192400, 0, 11, 'Nemo sequi iusto non quo officia cupiditate.', 'nulla', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(12, '2020-10-04 17:58:37', 'NOTA0880XXX', 'upload/nota/4f9b6d04943b2de771cdf2ca81e5196d.jpg', 90, 'Lunas', 75711100, 0, 12, 'Earum harum et odio.', 'et', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(13, '2020-10-04 09:59:09', 'NOTA7734XXX', 'upload/nota/eaa6cf82981bf19357ba99b0e9d039a0.jpg', 66, 'Lunas', 87538900, 0, 13, 'Rerum aut illo hic.', 'vel', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(14, '2020-10-05 05:39:08', 'NOTA5993XXX', 'upload/nota/4bbeaa9e9bd41b221b7098b838f60d3b.jpg', 93, 'Lunas', 12168700, 0, 14, 'Cupiditate veritatis fugiat voluptatibus suscipit et aut quia dignissimos.', 'recusandae', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(15, '2020-10-04 11:38:12', 'NOTA4138XXX', 'upload/nota/5ff9db836348ceefa0e41231f41f5519.jpg', 72, 'Lunas', 14292900, 0, 15, 'Occaecati eveniet repudiandae eos quasi eveniet nobis.', 'voluptas', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(16, '2020-10-05 03:55:28', 'NOTA9929XXX', 'upload/nota/570b884bb15620f0fc02046d171476f2.jpg', 83, 'Lunas', 43496000, 0, 16, 'Aspernatur ab voluptas velit cupiditate consequuntur et dolores.', 'iure', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(17, '2020-10-05 05:35:44', 'NOTA1421XXX', 'upload/nota/79af3100cabd4fa6885f18bb45744cb2.jpg', 70, 'Lunas', 48814400, 0, 17, 'Officiis ut enim ea officiis inventore autem dolor.', 'adipisci', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(18, '2020-10-04 09:35:24', 'NOTA3042XXX', 'upload/nota/e984259c8f59078200f5f77ced38356c.jpg', 36, 'Lunas', 38487900, 0, 18, 'Vel odit ipsa omnis animi quia soluta.', 'pariatur', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(19, '2020-10-04 15:59:15', 'NOTA4810XXX', 'upload/nota/495f0403c476588e630c8b37d39b9504.jpg', 29, 'Lunas', 80395200, 0, 19, 'Doloribus magni ut illum recusandae deserunt aliquid occaecati.', 'pariatur', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(20, '2020-10-04 09:31:37', 'NOTA3217XXX', 'upload/nota/4d7243192ede093dddfdd0303f32ef68.jpg', 88, 'Lunas', 29819800, 0, 20, 'Et quasi debitis dicta culpa.', 'et', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(21, '2020-10-04 15:58:41', 'NOTA7754XXX', 'upload/nota/08ff3901a58507fbf49d8029ee598662.jpg', 17, 'Lunas', 30647700, 0, 21, 'Voluptas nihil odio consequatur commodi.', 'reiciendis', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(22, '2020-10-04 15:06:47', 'NOTA6455XXX', 'upload/nota/c407c05c9d3ae8964cc872995b0636d2.jpg', 37, 'Lunas', 39741400, 0, 22, 'Ducimus autem excepturi beatae nemo necessitatibus quia qui.', 'et', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(23, '2020-10-05 04:57:22', 'NOTA0271XXX', 'upload/nota/00508096ee51eb081a630669fb1830ba.jpg', 64, 'Lunas', 84225500, 0, 23, 'Et numquam cupiditate amet quo.', 'neque', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(24, '2020-10-05 01:00:26', 'NOTA7598XXX', 'upload/nota/42dc78c3a8251af6d0adf26c1952f675.jpg', 54, 'Lunas', 95634300, 0, 24, 'Voluptatem itaque natus officia debitis quis placeat pariatur voluptatem.', 'porro', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(25, '2020-10-04 13:17:37', 'NOTA4513XXX', 'upload/nota/1211fc47037af1f1704904966d968c19.jpg', 8, 'Lunas', 21134900, 0, 25, 'Nemo optio quia et.', 'ad', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(26, '2020-10-04 18:21:42', 'NOTA1040XXX', 'upload/nota/c1eea0b339a5ce7353f239208c173deb.jpg', 78, 'Lunas', 78019700, 0, 26, 'Neque nisi dolorum exercitationem laboriosam sunt aliquam tempore eveniet.', 'saepe', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(27, '2020-10-04 18:51:39', 'NOTA4704XXX', 'upload/nota/5fbcf990ca60b95c7986ccf3347c0e7a.jpg', 80, 'Lunas', 54224800, 0, 27, 'Et exercitationem odio distinctio repellat.', 'dolorum', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(28, '2020-10-04 15:01:18', 'NOTA4627XXX', 'upload/nota/5988391883ffdb73fea83824b2df9bd9.jpg', 1, 'Lunas', 12901000, 0, 28, 'Sunt natus similique tempora voluptatem.', 'vero', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(29, '2020-10-05 02:43:39', 'NOTA8841XXX', 'upload/nota/320b871f8ecc50b9dd35189eb05b8c56.jpg', 29, 'Lunas', 65063100, 0, 29, 'Dolore in nam ipsa magnam et et qui.', 'autem', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(30, '2020-10-04 16:58:24', 'NOTA0672XXX', 'upload/nota/80e5ca53d8ff201f68e2e0023af42008.jpg', 77, 'Lunas', 88266300, 0, 30, 'Expedita earum cumque et temporibus laborum maxime.', 'sint', 0, '2020-10-05 07:46:03', '2020-10-05 07:46:03'),
(31, '2020-10-05 00:00:00', '', 'upload/nota/51ee61997611cbf84cfcfdc98a65cbda.jpg', 152, 'Lunas', 15645, 5, 0, 'dawdawdawdawd', 'Hasan', 0, '2020-10-05 11:37:00', '2020-10-05 11:37:00'),
(32, '2020-10-06 00:00:00', '', 'upload/nota/51ee61997611cbf84cfcfdc98a65cbda.jpg', 154, 'Lunas', 154267000, 4, 0, 'dawdawdasd', 'Ricky', 1, '2020-10-05 11:37:00', '2020-10-05 11:37:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tebangan`
--

CREATE TABLE `tebangan` (
  `tebangan_id` int(11) NOT NULL,
  `nama_tebangan` varchar(50) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tebangan`
--

INSERT INTO `tebangan` (`tebangan_id`, `nama_tebangan`, `create_at`, `update_at`) VALUES
(1, 'Hagenes-Kessler', '2020-10-04 17:41:57', '0000-00-00 00:00:00'),
(2, 'Bernhard, Weimann and Welch', '2020-10-05 13:33:35', '0000-00-00 00:00:00'),
(3, 'Zboncak, McDermott and Schaden', '2020-10-04 23:53:48', '0000-00-00 00:00:00'),
(4, 'Wisozk-Pagac', '2020-10-05 11:01:59', '0000-00-00 00:00:00'),
(5, 'McClure, Hartmann and Jacobi', '2020-10-05 10:23:24', '0000-00-00 00:00:00'),
(6, 'Cronin Ltd', '2020-10-05 06:50:40', '0000-00-00 00:00:00'),
(7, 'O\'Reilly, Batz and Lueilwitz', '2020-10-04 20:34:42', '0000-00-00 00:00:00'),
(8, 'Moore, DuBuque and Kozey', '2020-10-04 20:30:17', '0000-00-00 00:00:00'),
(9, 'Ortiz, Nicolas and Lakin', '2020-10-05 07:38:47', '0000-00-00 00:00:00'),
(10, 'Lebsack, Wehner and Spencer', '2020-10-04 18:46:02', '0000-00-00 00:00:00'),
(11, 'Batz Group', '2020-10-04 19:53:52', '0000-00-00 00:00:00'),
(12, 'Hilpert-Daniel', '2020-10-05 07:29:00', '0000-00-00 00:00:00'),
(13, 'Swaniawski LLC', '2020-10-04 20:16:07', '0000-00-00 00:00:00'),
(14, 'Douglas, Ledner and Moen', '2020-10-05 05:26:37', '0000-00-00 00:00:00'),
(15, 'Nitzsche, Stroman and Sanford', '2020-10-04 23:03:59', '0000-00-00 00:00:00'),
(16, 'Lockman and Sons', '2020-10-05 11:03:52', '0000-00-00 00:00:00'),
(17, 'Nolan and Sons', '2020-10-05 13:38:33', '0000-00-00 00:00:00'),
(18, 'Kautzer, Schmitt and Davis', '2020-10-05 10:59:26', '0000-00-00 00:00:00'),
(19, 'Nienow, Morar and Kshlerin', '2020-10-04 20:59:12', '0000-00-00 00:00:00'),
(20, 'Ziemann-Oberbrunner', '2020-10-05 11:09:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk`
--

CREATE TABLE `truk` (
  `truk_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `no_kendaraan` varchar(20) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `truk`
--

INSERT INTO `truk` (`truk_id`, `vendor_id`, `no_kendaraan`, `create_at`, `update_at`) VALUES
(1, 1, 'B 3032 GK', '2020-10-05 02:43:28', '0000-00-00 00:00:00'),
(2, 2, 'B 2389 GK', '2020-10-04 20:53:15', '0000-00-00 00:00:00'),
(3, 3, 'B 2211 GK', '2020-10-04 21:12:09', '0000-00-00 00:00:00'),
(4, 4, 'B 1950 GK', '2020-10-04 23:46:55', '0000-00-00 00:00:00'),
(5, 5, 'B 5943 GK', '2020-10-04 19:41:24', '0000-00-00 00:00:00'),
(6, 6, 'B 6560 GK', '2020-10-05 03:38:25', '0000-00-00 00:00:00'),
(7, 7, 'B 5894 GK', '2020-10-05 03:15:52', '0000-00-00 00:00:00'),
(8, 8, 'B 4202 GK', '2020-10-05 16:48:36', '0000-00-00 00:00:00'),
(9, 9, 'B 7435 GK', '2020-10-05 08:43:46', '0000-00-00 00:00:00'),
(10, 10, 'B 6018 GK', '2020-10-04 18:38:01', '0000-00-00 00:00:00'),
(11, 11, 'B 0099 GK', '2020-10-05 11:49:30', '0000-00-00 00:00:00'),
(12, 12, 'B 0216 GK', '2020-10-04 22:21:42', '0000-00-00 00:00:00'),
(13, 13, 'B 8226 GK', '2020-10-04 19:58:48', '0000-00-00 00:00:00'),
(14, 14, 'B 3248 GK', '2020-10-05 16:08:51', '0000-00-00 00:00:00'),
(15, 15, 'B 5032 GK', '2020-10-05 04:00:30', '0000-00-00 00:00:00'),
(16, 16, 'B 6665 GK', '2020-10-04 23:50:37', '0000-00-00 00:00:00'),
(17, 17, 'B 5926 GK', '2020-10-05 10:48:20', '0000-00-00 00:00:00'),
(18, 18, 'B 2618 GK', '2020-10-04 20:17:20', '0000-00-00 00:00:00'),
(19, 19, 'B 3407 GK', '2020-10-05 13:39:46', '0000-00-00 00:00:00'),
(20, 20, 'B 3844 GK', '2020-10-05 09:55:38', '0000-00-00 00:00:00'),
(21, 21, 'B 4029 GK', '2020-10-04 18:06:29', '0000-00-00 00:00:00'),
(22, 22, 'B 8411 GK', '2020-10-05 13:25:40', '0000-00-00 00:00:00'),
(23, 23, 'B 2503 GK', '2020-10-05 07:55:02', '0000-00-00 00:00:00'),
(24, 24, 'B 6434 GK', '2020-10-05 04:46:46', '0000-00-00 00:00:00'),
(25, 25, 'B 7574 GK', '2020-10-04 17:25:58', '0000-00-00 00:00:00'),
(26, 26, 'B 0281 GK', '2020-10-04 17:31:44', '0000-00-00 00:00:00'),
(27, 27, 'B 0395 GK', '2020-10-05 10:38:18', '0000-00-00 00:00:00'),
(28, 28, 'B 9039 GK', '2020-10-04 23:17:56', '0000-00-00 00:00:00'),
(29, 29, 'B 5639 GK', '2020-10-05 04:59:12', '0000-00-00 00:00:00'),
(30, 30, 'B 9888 GK', '2020-10-04 17:43:01', '0000-00-00 00:00:00'),
(31, 1, 'B 2127 GK', '2020-10-05 01:12:11', '0000-00-00 00:00:00'),
(32, 2, 'B 0254 GK', '2020-10-05 15:32:47', '0000-00-00 00:00:00'),
(33, 3, 'B 0849 GK', '2020-10-04 20:07:45', '0000-00-00 00:00:00'),
(34, 4, 'B 9136 GK', '2020-10-05 09:29:27', '0000-00-00 00:00:00'),
(35, 5, 'B 2590 GK', '2020-10-05 10:26:35', '0000-00-00 00:00:00'),
(36, 6, 'B 4438 GK', '2020-10-04 19:41:53', '0000-00-00 00:00:00'),
(37, 7, 'B 8865 GK', '2020-10-05 12:44:47', '0000-00-00 00:00:00'),
(38, 8, 'B 3561 GK', '2020-10-05 09:02:11', '0000-00-00 00:00:00'),
(39, 9, 'B 8999 GK', '2020-10-05 11:49:28', '0000-00-00 00:00:00'),
(40, 10, 'B 2671 GK', '2020-10-05 08:18:03', '0000-00-00 00:00:00'),
(41, 11, 'B 2819 GK', '2020-10-05 04:19:02', '0000-00-00 00:00:00'),
(42, 12, 'B 1019 GK', '2020-10-05 13:28:22', '0000-00-00 00:00:00'),
(43, 13, 'B 2215 GK', '2020-10-05 12:25:34', '0000-00-00 00:00:00'),
(44, 14, 'B 0907 GK', '2020-10-04 22:54:09', '0000-00-00 00:00:00'),
(45, 15, 'B 3867 GK', '2020-10-05 10:45:30', '0000-00-00 00:00:00'),
(46, 16, 'B 5897 GK', '2020-10-04 19:41:38', '0000-00-00 00:00:00'),
(47, 17, 'B 7328 GK', '2020-10-04 17:07:00', '0000-00-00 00:00:00'),
(48, 18, 'B 2849 GK', '2020-10-05 05:30:13', '0000-00-00 00:00:00'),
(49, 19, 'B 4093 GK', '2020-10-05 03:24:33', '0000-00-00 00:00:00'),
(50, 20, 'B 4816 GK', '2020-10-05 10:33:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `truk_log`
--

CREATE TABLE `truk_log` (
  `truk_log_id` int(11) NOT NULL,
  `truk_id` int(11) NOT NULL,
  `nama_supir` varchar(255) NOT NULL,
  `pinjaman_uang_jalan` varchar(255) NOT NULL,
  `tgl_pinjaman_uang_jalan` date NOT NULL,
  `spesial_case` varchar(20) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `informasi` varchar(255) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `truk_log`
--

INSERT INTO `truk_log` (`truk_log_id`, `truk_id`, `nama_supir`, `pinjaman_uang_jalan`, `tgl_pinjaman_uang_jalan`, `spesial_case`, `lokasi`, `informasi`, `tanggal_masuk`, `tanggal_keluar`, `create_at`, `update_at`) VALUES
(1, 1, 'Emmalee', '344321', '2020-10-05', '0', 'bury', 'Odit soluta aut laborum et aut magni exercitationem.', '2020-09-19', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(2, 2, 'Rebecca', '253877', '2020-10-05', '0', 'bury', 'Minima ipsa necessitatibus et enim cumque ut velit.', '2020-09-23', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(3, 3, 'Krystina', '193585', '2020-10-05', '0', 'haven', 'Architecto omnis molestiae recusandae aut dolor qui.', '2020-10-04', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(4, 4, 'Mustafa', '236861', '2020-10-05', '0', 'borough', 'Reiciendis quia assumenda aut qui.', '2020-09-16', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(5, 5, 'Destini', '881200', '2020-10-05', '0', 'borough', 'Dolor dolorem quis sed.', '2020-09-29', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(6, 6, 'Melyna', '171913', '2020-10-05', '0', 'town', 'Ut ea itaque in provident eum vel.', '2020-09-15', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(7, 7, 'Ines', '592701', '2020-10-05', '0', 'ton', 'Unde dolor quia iure cum maxime.', '2020-09-19', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(8, 8, 'Kaitlyn', '912889', '2020-10-05', '0', 'land', 'Culpa blanditiis enim quia quos nam sit.', '2020-09-08', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(9, 9, 'Aliyah', '302652', '2020-10-05', '0', 'view', 'Eveniet recusandae asperiores voluptatem et nesciunt quia minima.', '2020-09-30', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(10, 10, 'Colleen', '771078', '2020-10-05', '0', 'berg', 'Et quidem dolorem aliquam facilis est quae.', '2020-09-21', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(11, 11, 'Dillon', '926440', '2020-10-05', '0', 'ville', 'Quas porro dolor voluptatem facilis sint magnam.', '2020-09-07', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(12, 12, 'Eusebio', '461788', '2020-10-05', '0', 'bury', 'At officiis autem soluta voluptas quia.', '2020-09-24', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(13, 13, 'Marlene', '648003', '2020-10-05', '0', 'mouth', 'Id esse ut voluptatibus ut.', '2020-09-09', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(14, 14, 'Ashley', '897460', '2020-10-05', '0', 'port', 'Rem explicabo neque excepturi quia.', '2020-09-22', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(15, 15, 'Danny', '928401', '2020-10-05', '0', 'mouth', 'Aut dolorum et aut ut consequatur consectetur.', '2020-09-19', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(16, 16, 'Antonina', '690528', '2020-10-05', '0', 'berg', 'Rerum modi maiores quaerat consectetur dolorum.', '2020-09-26', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(17, 17, 'Mark', '233760', '2020-10-05', '0', 'port', 'Ut veniam laborum autem expedita placeat maxime.', '2020-09-16', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(18, 18, 'Dameon', '729711', '2020-10-05', '0', 'town', 'Consequuntur aspernatur et rerum incidunt laudantium.', '2020-09-10', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(19, 19, 'Gudrun', '444314', '2020-10-05', '0', 'view', 'Qui itaque voluptatibus ea sed eum ex exercitationem.', '2020-09-12', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(20, 20, 'Augustine', '913519', '2020-10-05', '0', 'ton', 'Consequatur numquam tempora minima rerum.', '2020-09-26', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(21, 21, 'Roel', '949592', '2020-10-05', '0', 'shire', 'Mollitia est ducimus sapiente dolorum voluptatem asperiores.', '2020-09-26', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(22, 22, 'Arne', '482168', '2020-10-05', '0', 'fort', 'Nihil harum ex quis ipsa molestiae.', '2020-10-01', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(23, 23, 'Nickolas', '770752', '2020-10-05', '0', 'burgh', 'Animi doloribus aliquid rerum possimus rerum rerum.', '2020-09-14', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(24, 24, 'Claudine', '279203', '2020-10-05', '0', 'ville', 'Expedita dicta quae similique et.', '2020-09-14', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(25, 25, 'Ella', '690228', '2020-10-05', '0', 'fort', 'Animi maiores molestias temporibus.', '2020-09-15', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(26, 26, 'Jewell', '620076', '2020-10-05', '0', 'shire', 'Quasi est officiis qui.', '2020-09-28', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(27, 27, 'Dasia', '564677', '2020-10-05', '0', 'ville', 'Eveniet architecto ut sed et rerum.', '2020-10-01', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(28, 28, 'Elody', '717873', '2020-10-05', '0', 'chester', 'Hic consequuntur molestiae rem.', '2020-09-13', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(29, 29, 'Elinor', '703273', '2020-10-05', '0', 'land', 'Ratione reiciendis quo in voluptatibus eos et ut porro.', '2020-09-06', '2020-10-04', '2020-10-05 07:50:15', '2020-10-05 07:50:15'),
(30, 30, 'Fannie', '497248', '2020-10-05', '0', 'mouth', 'Quam eligendi maiores voluptas veniam tempore odit praesentium.', '2020-09-08', '2020-10-05', '2020-10-05 07:50:15', '2020-10-05 07:50:15');

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
  `vendor_name` varchar(100) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `vendor`
--

INSERT INTO `vendor` (`vendor_id`, `vendor_name`, `create_at`, `update_at`) VALUES
(1, 'Cummerata, Gislason and Lockman', '1983-09-15 04:18:54', '1990-01-29 21:54:40'),
(2, 'Bode, Haley and Schiller', '2000-11-04 17:19:16', '1987-06-15 20:24:11'),
(3, 'Nader, Gorczany and Ziemann', '1973-02-02 18:34:41', '1976-04-20 14:10:45'),
(4, 'Rutherford, Leannon and Fisher', '1978-06-30 17:14:58', '1998-10-05 23:41:16'),
(5, 'Parker-Ward', '1973-12-20 16:31:04', '2010-05-13 16:45:21'),
(6, 'Rolfson, Steuber and Glover', '1978-01-22 06:53:46', '1974-12-08 08:40:51'),
(7, 'Goldner PLC', '1988-09-07 01:28:19', '1986-06-16 11:59:26'),
(8, 'Rosenbaum and Sons', '2004-02-24 23:40:04', '1998-06-03 10:57:27'),
(9, 'Ernser LLC', '1983-07-24 00:20:40', '2019-07-18 22:52:51'),
(10, 'Emmerich Group', '1975-03-03 14:00:18', '2006-06-24 14:45:16'),
(11, 'Rippin-Monahan', '1997-08-29 08:06:11', '1995-08-02 18:01:19'),
(12, 'Rice-Lowe', '2006-05-20 15:02:01', '1984-09-03 08:48:04'),
(13, 'Conroy and Sons', '1979-01-28 06:35:25', '1973-07-22 01:54:06'),
(14, 'Schroeder, Kub and Stracke', '2012-08-27 22:33:19', '1985-03-12 20:35:42'),
(15, 'Abernathy-Bayer', '1976-04-07 23:53:26', '1999-10-17 13:21:11'),
(16, 'Brown, Nikolaus and Walter', '1998-06-23 16:30:20', '2014-06-01 07:18:20'),
(17, 'Douglas Group', '1993-07-06 07:21:46', '1990-02-22 05:43:07'),
(18, 'Quigley-Mohr', '1990-06-14 23:48:40', '1987-09-15 02:54:22'),
(19, 'Lebsack PLC', '2001-05-09 05:16:10', '2003-10-21 14:24:47'),
(20, 'Fahey-Kozey', '2003-10-24 04:50:14', '1999-07-08 08:06:19'),
(21, 'Jacobson-Stracke', '1992-09-20 00:12:59', '2017-07-17 07:34:03'),
(22, 'Batz, Lemke and Terry', '2002-03-11 17:49:51', '2012-11-28 17:10:59'),
(23, 'Daugherty-Kiehn', '1974-02-04 06:12:45', '1982-07-18 06:12:38'),
(24, 'Bayer-Wisoky', '2017-02-09 00:45:49', '2003-12-07 05:26:18'),
(25, 'Gleichner, Prohaska and Bashirian', '2013-09-26 09:23:59', '2010-06-02 04:57:45'),
(26, 'Morar-Hahn', '1985-12-28 19:52:05', '1980-12-09 02:28:47'),
(27, 'Brown, Pfeffer and Fisher', '2001-10-29 16:38:56', '2004-02-21 21:30:07'),
(28, 'Altenwerth, O\'Reilly and Rogahn', '1985-08-25 19:17:38', '2001-04-09 17:29:47'),
(29, 'Kilback, Jones and Nicolas', '1970-09-09 22:13:09', '1980-09-07 03:27:08'),
(30, 'Carroll, Hoppe and Hilll', '1976-04-09 10:57:43', '1975-11-26 06:43:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bongkar_log`
--
ALTER TABLE `bongkar_log`
  ADD PRIMARY KEY (`bongkar_id`);

--
-- Indeks untuk tabel `tebangan`
--
ALTER TABLE `tebangan`
  ADD PRIMARY KEY (`tebangan_id`);

--
-- Indeks untuk tabel `truk`
--
ALTER TABLE `truk`
  ADD PRIMARY KEY (`truk_id`);

--
-- Indeks untuk tabel `truk_log`
--
ALTER TABLE `truk_log`
  ADD PRIMARY KEY (`truk_log_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bongkar_log`
--
ALTER TABLE `bongkar_log`
  MODIFY `bongkar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tebangan`
--
ALTER TABLE `tebangan`
  MODIFY `tebangan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `truk`
--
ALTER TABLE `truk`
  MODIFY `truk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `truk_log`
--
ALTER TABLE `truk_log`
  MODIFY `truk_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
