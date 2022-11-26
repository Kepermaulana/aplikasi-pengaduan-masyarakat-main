-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Nov 2022 pada 12.39
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengaduan2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `kode` varchar(40) NOT NULL,
  `nama_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `kode`, `nama_admin`) VALUES
(1, 'kode1', 'Keper');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_login`
--

CREATE TABLE `tb_login` (
  `id_login` int(11) NOT NULL,
  `kode` varchar(40) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `status` enum('online','offline') NOT NULL,
  `proses` enum('aktif','non-aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `kode`, `username`, `password`, `level`, `status`, `proses`) VALUES
(1, 'kode1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'offline', 'aktif'),
(2, 'kode2', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user', 'offline', 'aktif'),
(3, 'kode3', 'user2', '7e58d63b60197ceb55a1c487989a3720', 'user', 'offline', 'aktif'),
(5, 'USE0005', 'ghuf', 'e89323f434235586ac155a485dd809a9', 'user', 'offline', 'aktif'),
(6, 'USE0006', 'Dany', '4aba99f427fdf063b7073aea4afaf2d9', 'user', 'offline', 'aktif'),
(8, 'USE0007', 'coba', 'a3040f90cc20fa672fe31efcae41d2db', 'user', 'offline', 'aktif'),
(9, 'USE0008', 'rifqi', '6c8dab289527fc0927aa7e6507898bdd', 'user', 'offline', 'aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_pengaduan` varchar(50) NOT NULL,
  `isi_pengaduan` text NOT NULL,
  `gambar_pengaduan` varchar(255) NOT NULL,
  `tgl_pengaduan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id_pengaduan`, `id_user`, `judul_pengaduan`, `isi_pengaduan`, `gambar_pengaduan`, `tgl_pengaduan`) VALUES
(1, 1, 'Contoh laporan', 'Contoh laporan', 'sampah-berserakan.jpg', '2022-11-14'),
(2, 1, 'Jalan Berlubang', 'PEMERINTAH TOLONG PERBAIKI JALANANNYA INI KOK GKBISA DILEWATI KARENA BERLUBANG!!!!!!!!', 'jalan-lubang-di-sidoarjo_169.jpeg', '2022-11-14'),
(3, 2, 'Kabel putus', 'Kabelnya putus pak', '6226ee79-dd65-44f8-8d9c-73d87fa28d51.jpeg', '2022-11-14'),
(4, 2, 'Longsor', 'Contohlaporan', 'apa-penyebab-tanah-longsor-cek-penjelasan-lengkapnya-1_169.jpeg', '2022-11-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `isi_tanggapan` text NOT NULL,
  `tgl_tanggapan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `kode` varchar(40) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `kode`, `nama_user`, `pekerjaan`, `email`, `no_hp`, `foto`) VALUES
(2, 'kode3', 'Muhammad Dany Maulana', 'Pelajar', 'mdanym04@gmail.com', '083867680445', ''),
(4, 'USE0005', 'Muhammad Ghufron', 'Guru', 'ghufron@gmail.com', '075835353', 'avatar2.png'),
(5, 'USE0006', 'Muhammad Dany Maulana', 'Gamer', 'mdany@gmail.com', '074837483', 'avatar3.png'),
(6, 'USE0007', 'coba daftar', 'PNS', 'coba@gmail.com', '0876424242', 'naruto2.jfif'),
(7, 'USE0008', 'Rifqi Maulana', 'Web developer', 'rifqi@gmail.com', '24422424', 'naruto.jfif');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
