-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 23.20
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azha`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`) VALUES
(1, 'admin', 'e00cf25ad42683b3df678c61f42c6bda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `Emailid` varchar(100) DEFAULT NULL,
  `Barang` int(11) DEFAULT NULL,
  `Daritanggal` varchar(20) DEFAULT NULL,
  `Sampaitanggal` varchar(20) DEFAULT NULL,
  `Pesan` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `Tanggalkirim` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `Emailid`, `Barang`, `Daritanggal`, `Sampaitanggal`, `Pesan`, `Status`, `Tanggalkirim`) VALUES
(34, 'muhradifansyah17@gmail.com', 83, '2024-01-24', '', '', 1, '2024-01-24 03:18:39'),
(35, 'muhradifansyah17@gmail.com', 83, '2024-01-25', '', '', 0, '2024-01-24 03:18:56'),
(36, 'muhradifansyah17@gmail.com', 86, '2024-02-06', '2024-02-08', 'Pesan 3 Box', 1, '2024-02-06 12:15:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblhubungikami`
--

CREATE TABLE `tblhubungikami` (
  `id` int(11) NOT NULL,
  `Nama` varchar(100) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Notelpon` char(15) DEFAULT NULL,
  `Pesan` varchar(500) DEFAULT NULL,
  `Tanggalkirim` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblhubungikami`
--

INSERT INTO `tblhubungikami` (`id`, `Nama`, `Email`, `Notelpon`, `Pesan`, `Tanggalkirim`, `Status`) VALUES
(17, 'MUH RADIFANSYAH R', 'muhradifansyah17@gmail.com', '082259263823', 'aaa', '2023-12-21 14:23:24', 1),
(18, 'MUH RADIFANSYAH R', 'muhradifansyah17@gmail.com', '082259263823', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Neque dolores quae accusantium aliquid dolorum modi, ex ipsum cupiditate rerum deserunt maxime amet ullam beatae similique delectus repudiandae facere. Nam, suscipit.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Neque dolores quae accusantium aliquid dolorum modi, ex ipsum cupiditate rerum deserunt maxime amet ullam beatae similique delectus repudiandae facere. Nam, suscipit.Lorem ipsum dolor, sit amet consectetur adipisicing ', '2024-01-11 03:51:35', 1),
(19, 'MUH RADIFANSYAH R', 'muhradifansyah17@gmail.com', '082259263823', 'Kenapa Pesanan Saya Belum Sampai Sampai\r\n', '2024-02-06 12:17:19', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkategori`
--

CREATE TABLE `tblkategori` (
  `id` int(11) NOT NULL,
  `namaKategori` varchar(120) NOT NULL,
  `tanggalBuat` timestamp NULL DEFAULT current_timestamp(),
  `tanggalUpdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblkategori`
--

INSERT INTO `tblkategori` (`id`, `namaKategori`, `tanggalBuat`, `tanggalUpdate`) VALUES
(37, 'Erang-Erang ', '2023-12-24 03:57:13', '2024-01-11 02:35:21'),
(38, 'Buket', '2023-12-24 04:11:15', NULL),
(39, 'Dekorasi', '2023-12-29 06:02:05', NULL),
(40, 'Sovenir', '2023-12-29 06:02:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblproduk`
--

CREATE TABLE `tblproduk` (
  `id` int(11) NOT NULL,
  `Namaproduk` varchar(150) DEFAULT NULL,
  `Kategori` int(11) DEFAULT NULL,
  `Deskripsi` longtext DEFAULT NULL,
  `Harga` varchar(50) DEFAULT NULL,
  `Penjualan` varchar(100) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `Vimage6` varchar(120) DEFAULT NULL,
  `Vimage7` varchar(120) DEFAULT NULL,
  `Vimage8` varchar(120) DEFAULT NULL,
  `Vimage9` varchar(120) DEFAULT NULL,
  `Vimage10` varchar(120) DEFAULT NULL,
  `Vimage11` varchar(120) DEFAULT NULL,
  `Vimage12` varchar(120) DEFAULT NULL,
  `Vimage13` varchar(120) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL,
  `Vimage14` varchar(120) DEFAULT NULL,
  `Vimage15` varchar(120) DEFAULT NULL,
  `Vimage16` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblproduk`
--

INSERT INTO `tblproduk` (`id`, `Namaproduk`, `Kategori`, `Deskripsi`, `Harga`, `Penjualan`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `Vimage6`, `Vimage7`, `Vimage8`, `Vimage9`, `Vimage10`, `Vimage11`, `Vimage12`, `Vimage13`, `Vimage14`, `Vimage15`, `Vimage16`) VALUES
(83, 'Gold', 37, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident perferendis aliquam adipisci ut quos veritatis fugiat consequatur facere vel architecto! Deserunt itaque nulla mollitia assumenda magnam, tenetur perferendis cum laudantium.\r\n', '100.000/Hari', 'Disewakan', 'WhatsApp Image 2023-11-15 at 13.15.23.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', '', '', '', '', '', ''),
(84, 'Premium', 37, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident perferendis aliquam adipisci ut quos veritatis fugiat consequatur facere vel architecto! Deserunt itaque nulla mollitia assumenda magnam, tenetur perferendis cum laudantium.\r\n', '100.000/Hari', 'Dijual', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 'Premium Z', 37, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Neque dolores quae accusantium aliquid dolorum modi, ex ipsum cupiditate rerum deserunt maxime amet ullam beatae similique delectus repudiandae facere. Nam, suscipit.', '100.000/Hari', 'Disewakan', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(86, 'Akrigin', 37, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Neque dolores quae accusantium aliquid dolorum modi, ex ipsum cupiditate rerum deserunt maxime amet ullam beatae similique delectus repudiandae facere. Nam, suscipit.', '100.000/Hari', 'Disewakan', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(87, 'Uang', 38, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '30.000', 'Dijual', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Bunga', 38, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '25.000', 'Dijual', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', '25.png', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Snack', 38, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '50.000', 'Dijual', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', 'pmmm.jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Haqiqah', 39, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '200.000', 'Disewakan', '25.png', '22.png', '22.png', '22.png', '25.png', '25.png', '22.png', '22.png', '25.png', '22.png', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Pernikahan', 39, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '250.000', 'Disewakan', '22.png', 'halaman utama.jpeg', '25.png', 'halaman utama.jpeg', '22.png', '22.png', 'pmmm (1).jpeg', 'halaman utama.jpeg', '25.png', '25.png', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Tasbih', 40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '10.000/Pcs', 'Dijual', '22.png', 'halaman utama.jpeg', '25.png', '22.png', '25.png', 'pmmm (1).jpeg', '22.png', '25.png', '25.png', 'pmmm (1).jpeg', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Pisau', 40, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Ab a deleniti praesentium id incidunt perspiciatis quos quia iste eius illum quisquam dolores at minus soluta consequuntur enim molestias, vero necessitatibus.', '15.000/Pcs', 'Dijual', 'halaman utama.jpeg', 'halaman utama.jpeg', '22.png', '22.png', 'halaman utama.jpeg', '22.png', 'pmmm (1).jpeg', 'halaman utama.jpeg', 'halaman utama.jpeg', '25.png', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Testimoni` mediumtext NOT NULL,
  `Tanggalkirim` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `Email`, `Testimoni`, `Tanggalkirim`, `Status`) VALUES
(23, 'muhradifansyah17@gmail.com', 'Produknya Sangat Bagus Dan Harganya Terjangkau', '2024-01-11 03:53:41', 1),
(25, 'muhammadribi@gmail.com', 'Harga Terjangkau Dan Kualitas Bagus', '2024-01-11 06:27:21', 1),
(26, 'nia@gmail.com', 'Kualitas Bagus ', '2024-01-11 06:33:08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `Namalengkap` varchar(120) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `Notelpon` char(20) DEFAULT NULL,
  `Tanggaldaftar` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbluser`
--

INSERT INTO `tbluser` (`id`, `Namalengkap`, `Email`, `Password`, `Notelpon`, `Tanggaldaftar`) VALUES
(69, 'MUH RADIFANSYAH R', 'muhradifansyah17@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '082259263823', '2023-12-20 21:43:58'),
(70, 'Andi Sulaiman', 'muhammadribi@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '085299554476', '2024-01-11 06:20:11'),
(71, 'Nur Muhammad Adam', 'nurmuhammadadam@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '082259263824', '2024-01-11 06:29:22'),
(72, 'Nia Ramadani', 'nia@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '000000000000', '2024-01-11 06:31:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblhubungikami`
--
ALTER TABLE `tblhubungikami`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblkategori`
--
ALTER TABLE `tblkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblproduk`
--
ALTER TABLE `tblproduk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tblhubungikami`
--
ALTER TABLE `tblhubungikami`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tblkategori`
--
ALTER TABLE `tblkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tblproduk`
--
ALTER TABLE `tblproduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT untuk tabel `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
