-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2024 pada 18.00
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `nama`, `telepon`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '089911112222', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ajuan`
--

CREATE TABLE `tb_ajuan` (
  `no_ajuan` int(11) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `kode_brg` varchar(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `jml_ajuan` int(11) NOT NULL,
  `petugas` varchar(255) NOT NULL,
  `val` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_ajuan`
--

INSERT INTO `tb_ajuan` (`no_ajuan`, `tanggal`, `kode_brg`, `nama_brg`, `stok`, `jml_ajuan`, `petugas`, `val`) VALUES
(1, '2024-06-09', '3', 'OMG Toner', 10, 6, 'petugas', 0),
(2, '2024-06-09', '4', 'OMG Sunscreen SPF 30', 4, 2, 'petugas', 0),
(3, '2024-06-09', '10', 'PONDS Micellar Water', 6, 2, 'petugas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_brg` int(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kode_brg`, `nama_brg`, `stok`, `kategori`, `supplier`) VALUES
(1, 'OMG Lip cream 01', 12, 'Make Up', 'Paragon'),
(2, 'OMG Lip Tint 01', 3, 'Make Up', 'Paragon'),
(3, 'OMG Toner', 10, 'Skincare', 'Paragon'),
(4, 'OMG Sunscreen SPF 30', 4, 'Skincare', 'Paragon'),
(5, 'Emina Bright Stuff Serum', 2, 'Skincare', 'Paragon'),
(6, 'Fair And Lovely Cream', 12, 'Skincare', 'Unilever'),
(7, 'Shampo Sunsilk', 12, 'Alat Mandi', 'Unilever'),
(8, 'Fair And Lovelly Facial Foam', 12, 'Skincare', 'Unilever'),
(9, 'PONDS Facial Foam', 6, 'Skincare', 'Unilever'),
(10, 'PONDS Micellar Water', 6, 'Skincare', 'Unilever'),
(11, 'POSH Body Spray', 12, 'Make Up', 'Wings'),
(12, 'Poise facial foam', 2, 'Skincare', 'Wings'),
(13, 'Poise Moist Cream', 2, 'Skincare', 'Wings'),
(14, 'Emeron Shampo', 12, 'Alat Mandi', 'Wings'),
(15, 'Ciptadent Odol', 12, 'Alat Mandi', 'Wings'),
(16,'OMG Lip cream 02',2,'Make Up','Paragon'),
(17,'OMG Lip cream 03',2,'Make Up','Paragon'),
(18,'OMG Lip cream 04',2,'Make Up','Paragon'),
(19,'OMG Lip cream 05',2,'Make Up','Paragon'),
(20,'OMG Lip cream 06',2,'Make Up','Paragon'),
(21,'OMG Lip cream 07',2,'Make Up','Paragon'),
(22,'OMG Lip cream 08',2,'Make Up','Paragon'),
(23,'OMG Lip cream 09',2,'Make Up','Paragon'),
(24,'OMG Lip cream 10',2,'Make Up','Paragon'),
(25,'OMG Lip cream 11',2,'Make Up','Paragon'),
(26,'OMG Lip cream 12',2,'Make Up','Paragon'),
(27,'OMG Lip cream 13',2,'Make Up','Paragon'),
(28,'OMG Lip cream 14',2,'Make Up','Paragon'),
(29,'OMG Lip cream 15',2,'Make Up','Paragon'),
(30,'OMG Lip cream 16',2,'Make Up','Paragon'),
(31,'OMG Foudation Light',3,'Make Up','Paragon'),
(32,'OMG Foudation Natural',3,'Make Up','Paragon'),
(33,'OMG Foudation Sand',3,'Make Up','Paragon'),
(34,'OMG Foudation Ivory',3,'Make Up','Paragon'),
(35,'OMG Facial Wash',6,'Skincare','Paragon'),
(36,'OMG Lip Tint 02',3,'Make Up','Paragon'),
(37,'OMG Lip Tint 03',3,'Make Up','Paragon'),
(38,'OMG Lip Tint 04',3,'Make Up','Paragon'),
(39,'OMG Lip Tint 05',3,'Make Up','Paragon'),
(40,'OMG Lip Tint 06',3,'Make Up','Paragon'),
(41,'Wardah Lightening Gentle Wash',2,'Skincare','Paragon'),
(42,'Wardah Lightening Whip Facial Foam',2,'Skincare','Paragon'),
(43,'Wardah Lightening Gentle Expoliator',2,'Skincare','Paragon'),
(44,'Wardah Lightening Toner',3,'Skincare','Paragon'),
(45,'Wardah Lightening Ampule',3,'Skincare','Paragon'),
(46,'Wardah Lightening Serum',3,'Skincare','Paragon'),
(47,'Wardah Lightening Day Cream',3,'Skincare','Paragon'),
(48,'Wardah Lightening Night Cream',3,'Skincare','Paragon'),
(49,'Wardah Perfect Bright Facial Foam Oil Control',3,'Skincare','Paragon'),
(50,'Wardah Perfect Bright Night Cream Oil Control',3,'Skincare','Paragon'),
(51,'Wardah Perfect Bright Day Cream Oil Control',3,'Skincare','Paragon'),
(52,'Wardah Perfect Bright Facial Foam Smooth Glow',3,'Skincare','Paragon'),
(53,'Wardah Perfect Bright Day Cream Smooth Glow',3,'Skincare','Paragon'),
(54,'Wardah Perfect Bright Night Cream Smooth Glow',3,'Skincare','Paragon'),
(55,'Emina Bright Stuff Facial Foam',2,'Skincare','Paragon'),
(56,'Emina Bright Stuff Toner',2,'Skincare','Paragon'),
(57,'Emina Bright Stuff Moisturizer',2,'Skincare','Paragon'),
(58,'Emina Bright Stuff Sunscreen',2,'Skincare','Paragon'),
(59,'Emina Bright Stuff Micellar Water',2,'Skincare','Paragon'),
(60,'Pasta Gigi Pepsodent ',12,'Alat Mandi','Unilever'),
(61,'Sikat Gigi Pepsodent ',12,'Alat Mandi','Unilever'),
(62,'Shampo Lifebuoy',12,'Alat Mandi','Unilever'),
(63,'Body Wash Lifebuoy ',12,'Alat Mandi','Unilever'),
(64,'Conditioner Sunsilk',12,'Alat Mandi','Unilever'),
(65,'Rexona deodorant Man',12,'Kebutuhan Rumah Tangga','Unilever'),
(66,'Rexona deodorant Woman',12,'Kebutuhan Rumah Tangga','Unilever'),
(67,'Axe Body Spray',4,'Kebutuhan Rumah Tangga','Unilever'),
(68,'Sunlight ',4,'Kebutuhan Rumah Tangga','Unilever'),
(69,'Rinso detergen bubuk',4,'Kebutuhan Rumah Tangga','Unilever'),
(70,'Rinso Liquid',4,'Kebutuhan Rumah Tangga','Unilever'),
(71,'Molto',4,'Kebutuhan Rumah Tangga','Unilever'),
(72,'PONDS Toner',6,'Skincare','Unilever'),
(73,'PONDS Serum',6,'Skincare','Unilever'),
(74,'PONDS Moist Cream',6,'Skincare','Unilever'),
(75,'PONDS Sunscreen',6,'Skincare','Unilever'),
(76,'HBL Vaseline',6,'Skincare','Unilever'),
(77,'Ciptadent Sikat Gigi',12,'Alat Mandi','Wings'),
(78,'Giv Body Wash',12,'Alat Mandi','Wings'),
(79,'Nuvo Body Wash',12,'Alat Mandi','Wings'),
(80,'Mama Lime',4,'Kebutuhan Rumah Tangga','Wings'),
(81,'Soklin Liquid',4,'Kebutuhan Rumah Tangga','Wings'),
(82,'Kodomo Pasta Gigi',3,'Alat Mandi','Wings'),
(83,'Kodomo Sikat Gigi',3,'Alat Mandi','Wings'),
(84,'Kodomo Shampo',3,'Alat Mandi','Wings'),
(85,'Kodomo Body Wash',3,'Alat Mandi','Wings'),
(86,'Kodomo Hair and Body Wash',3,'Alat Mandi','Wings'),
(87,'Soklin Detergen Bubuk',6,'Kebutuhan Rumah Tangga','Wings'),
(88,'Fresh Body mist',24,'Kebutuhan Rumah Tangga','Wings'),
(89,'HBL Lovely',6,'Skincare','Wings'),
(90,'Daia Detergen Bubuk',4,'Kebutuhan Rumah Tangga','Wings'),
(91,'Shampo Zinc',6,'Alat Mandi','Wings'),
(92,'Pembalut Proteks',6,'Kebutuhan Rumah Tangga','Wings'),
(93,'Serasoft Shampo',3,'Alat Mandi','Wings'),
(94,'Serasoft Conditioner',3,'Alat Mandi','Wings');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang_in`
--

CREATE TABLE `tb_barang_in` (
  `id_brg_in` int(11) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `noinv` varchar(11) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `kode_brg` varchar(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `jml_masuk` int(11) NOT NULL,
  `jam` varchar(255) NOT NULL,
  `petugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang_in`
--

INSERT INTO `tb_barang_in` (`id_brg_in`, `tanggal`, `noinv`, `supplier`, `kode_brg`, `nama_brg`, `stok`, `jml_masuk`, `jam`, `petugas`) VALUES
(1, '2024-06-09', '1', 'Paragon', '1', 'OMG Lip cream 01', 2, 10, '10:39 pm', 'petugas'),
(2, '2024-06-09', '2', 'Paragon', '3', 'OMG Toner', 6, 10, '10:39 pm', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang_out`
--

CREATE TABLE `tb_barang_out` (
  `no_brg_out` int(11) NOT NULL,
  `no_ajuan` int(11) NOT NULL,
  `tanggal_ajuan` varchar(255) NOT NULL,
  `tanggal_out` varchar(255) NOT NULL,
  `petugas` varchar(255) NOT NULL,
  `kode_brg` varchar(11) NOT NULL,
  `nama_brg` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `jml_ajuan` int(11) NOT NULL,
  `jml_keluar` int(11) NOT NULL,
  `admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang_out`
--

INSERT INTO `tb_barang_out` (`no_brg_out`, `no_ajuan`, `tanggal_ajuan`, `tanggal_out`, `petugas`, `kode_brg`, `nama_brg`, `stok`, `jml_ajuan`, `jml_keluar`, `admin`) VALUES
(0, 1, '2024-06-09', '2024-06-09', 'petugas', '3', 'OMG Toner', 16, 6, 6, 'admin'),
(1, 2, '2024-06-09', '2024-06-09', 'petugas', '4', 'OMG Sunscreen SPF 30', 6, 2, 2, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Make Up'),
(2, 'Skincare'),
(3, 'Kebutuhan Rumah Tangga'),
(4, 'Alat Mandi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `username`, `password`, `nama`, `telepon`) VALUES
(1, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas', '089911114444');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sup`
--

CREATE TABLE `tb_sup` (
  `id_sup` int(11) NOT NULL,
  `nama_sup` varchar(255) NOT NULL,
  `kontak_sup` varchar(255) NOT NULL,
  `alamat_sup` text NOT NULL,
  `telepon_sup` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_sup`
--

INSERT INTO `tb_sup` (`id_sup`, `nama_sup`, `kontak_sup`, `alamat_sup`, `telepon_sup`) VALUES
(1, 'Wings', 'wings@gmail.com', 'Jl.Caringin No.341, Bandung', '081915128030'),
(2, 'Unilever', 'unilever@gmail.com', 'Jl. Soekarno Hatta No.364, Kb. Lega, Kec. Bojongloa Kidul, Bandung', '0225408222'),
(3, 'Paragon', 'paragon@gmail.com', 'Jl. R Edang Soewanda No.35/156, Padasuka, Kec. Cimenyan, Bandung', '0227232179');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_ajuan`
--
ALTER TABLE `tb_ajuan`
  ADD PRIMARY KEY (`no_ajuan`);

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_brg`);

--
-- Indeks untuk tabel `tb_barang_in`
--
ALTER TABLE `tb_barang_in`
  ADD PRIMARY KEY (`id_brg_in`);

--
-- Indeks untuk tabel `tb_barang_out`
--
ALTER TABLE `tb_barang_out`
  ADD PRIMARY KEY (`no_brg_out`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tb_sup`
--
ALTER TABLE `tb_sup`
  ADD PRIMARY KEY (`id_sup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_ajuan`
--
ALTER TABLE `tb_ajuan`
  MODIFY `no_ajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=998;

--
-- AUTO_INCREMENT untuk tabel `tb_barang_in`
--
ALTER TABLE `tb_barang_in`
  MODIFY `id_brg_in` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_sup`
--
ALTER TABLE `tb_sup`
  MODIFY `id_sup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
