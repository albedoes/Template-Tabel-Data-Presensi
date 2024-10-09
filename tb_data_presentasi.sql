-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Okt 2024 pada 06.34
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tb_data_presentasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id` int(11) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `hari` date DEFAULT NULL,
  `hadir` char(1) DEFAULT NULL,
  `keterangan` char(1) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id`, `nis`, `nama`, `kelas`, `hari`, `hadir`, `keterangan`, `jam_masuk`) VALUES
(1, 10321, 'Rilo Prasetyo', 'XII MIPA 3', '2016-08-18', 'Y', 'Y', '06:49:05'),
(2, 10175, 'Aliyyah Latifah Hanum', 'XII IPS 1', '2016-08-18', 'Y', 'Y', '06:49:54'),
(3, 10194, 'Aulia Nur Listiyani', 'XII MIPA 1', '2016-08-18', 'Y', 'T', '06:50:44'),
(4, 10209, 'Cinatya Pinkan Maria', 'XII MIPA 5', '2016-08-18', 'Y', 'S', '06:50:40'),
(5, 10262, 'Herminggilda Anjali Amina', 'XII MIPA 5', '2016-08-18', 'Y', 'Y', '06:50:44'),
(6, 10238, 'Faiza Agustin', 'XII MIPA 1', '2016-08-18', 'Y', 'Y', '06:51:22'),
(7, 10288, 'Hanina Tito Estiningtyas', 'XII MIPA 1', '2016-08-18', 'Y', 'S', '06:51:36'),
(8, 10231, 'Eric Hadi Lukito Jatmiko', 'XII IPS 4', '2016-08-18', 'Y', 'T', '06:51:02'),
(9, 10293, 'Nadia Kusumadewi Antoro', 'XII IPS 4', '2016-08-18', 'Y', 'Y', '06:51:00'),
(10, 10215, 'Della Martina Biliani', 'XII IPS 1', '2016-08-18', 'Y', 'Y', '06:50:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kelas`
--

CREATE TABLE `tabel_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_kelas`
--

INSERT INTO `tabel_kelas` (`id_kelas`, `kelas`) VALUES
(1, 'XII MIPA 3'),
(2, 'XII IPS 1'),
(3, 'XII MIPA 1'),
(4, 'XII MIPA 5'),
(5, 'XII IPS 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_presensi`
--

CREATE TABLE `tabel_presensi` (
  `id_presensi` int(11) NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `hari` date DEFAULT NULL,
  `hadir` char(1) DEFAULT NULL,
  `keterangan` char(1) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_presensi`
--

INSERT INTO `tabel_presensi` (`id_presensi`, `nis`, `id_kelas`, `hari`, `hadir`, `keterangan`, `jam_masuk`) VALUES
(1, 10321, 1, '2016-08-18', 'Y', 'Y', '06:49:05'),
(2, 10175, 2, '2016-08-18', 'Y', 'Y', '06:49:54'),
(3, 10194, 3, '2016-08-18', 'Y', 'T', '06:50:44'),
(4, 10209, 4, '2016-08-18', 'Y', 'S', '06:50:40'),
(5, 10262, 4, '2016-08-18', 'Y', 'Y', '06:50:44'),
(6, 10238, 3, '2016-08-18', 'Y', 'Y', '06:51:22'),
(7, 10288, 3, '2016-08-18', 'Y', 'S', '06:51:36'),
(8, 10231, 5, '2016-08-18', 'Y', 'T', '06:51:02'),
(9, 10293, 5, '2016-08-18', 'Y', 'Y', '06:51:00'),
(10, 10215, 2, '2016-08-18', 'Y', 'Y', '06:50:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `nis` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`nis`, `nama`) VALUES
(10175, 'Aliyyah Latifah Hanum'),
(10194, 'Aulia Nur Listiyani'),
(10209, 'Cinatya Pinkan Maria'),
(10215, 'Della Martina Biliani'),
(10231, 'Eric Hadi Lukito Jatmiko'),
(10238, 'Faiza Agustin'),
(10262, 'Herminggilda Anjali Amina'),
(10288, 'Hanina Tito Estiningtyas'),
(10293, 'Nadia Kusumadewi Antoro'),
(10321, 'Rilo Prasetyo');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tabel_presensi`
--
ALTER TABLE `tabel_presensi`
  ADD PRIMARY KEY (`id_presensi`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_kelas`
--
ALTER TABLE `tabel_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tabel_presensi`
--
ALTER TABLE `tabel_presensi`
  MODIFY `id_presensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tabel_presensi`
--
ALTER TABLE `tabel_presensi`
  ADD CONSTRAINT `tabel_presensi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `tabel_siswa` (`nis`),
  ADD CONSTRAINT `tabel_presensi_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `tabel_kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
