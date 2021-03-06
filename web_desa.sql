-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2020 pada 14.12
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.png',
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `email`, `name`, `password`, `img`, `role`) VALUES
(18, 'superadmin@karangsari.desa.id', 'Fauzi', '441c9d45e54ac3321c25f0e346cef5396ae6088f', 'default.png', 1),
(19, 'admin@karangsari.desa.id', 'Ryan', 'af3dbfe86368370bdf2ec7456944df627c8865f5', 'default.png', 2),
(20, 'jurnalis@karangsari.desa.id', 'Ibnu', 'ef5d5e12b7c277b6beb10df250c150cc1145c43c', 'default.png', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL,
  `judul_berita` text NOT NULL,
  `isi_berita` text NOT NULL,
  `pengirim` varchar(150) NOT NULL,
  `tanggal` datetime NOT NULL,
  `foto_berita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `nama_kategori`, `judul_berita`, `isi_berita`, `pengirim`, `tanggal`, `foto_berita`) VALUES
(1, 'hutan', 'Tersesat Seminggu di Hutan Kaltara, WN Australia Ditemukan Selamat', 'Malinau - Warga negara (WN) Australia ditemukan selamat setelah satu minggu tersesat di hutan Kabupaten Malinau, Provinsi Kalimantan Utara (Kaltara). Pria bernama Stephen Leonard dalam kondisi lemas ketika ditemukan.\r\n\r\nKomandan SSK I Pos Apauping Satagas Pamtas RI-Malaysia Yonif Raider 303/SSM Kostrad, Lettu Inf Suhendra, mengatakan, Stephen dan seorang warga bernama Mukhtar tersesat setelah ditinggalkan oleh pemadu wisata Desa Long Layu saat sedang berwisata di hutan kawasan Long Tua, Desa Apauping, Kecamatan Bahau Ulu, Kabupaten Malinau.\r\n\"Mereka seminggu tersesat. Keduanya ditinggalkan dengan dibekali logistik yang terbatas. Kondisinya sangat lemah,\" ujar Suhendra, Sabtu (4/1/2020).\r\nSuhendra menjelaskan, kabar adanya seorang wisatawan dan seorang pemandu wisata hilang di dalam hutan berawal dari informasi yang diterima dari warga. Pihaknya menurunkan delapan personel Satgas di bawah pimpinan Serda Satria Situmorang bersama warga lainnya langsung melakukan pencarian pada Kamis (2/1) lalu.\r\n\"Setelah informasi itu diterima anggota, lalu anggota bersama warga langsung melakukan pencarian. Anggota masuk ke dalam hutan dan menyisir sekitar Sungai Bahau,\" kata Suhendra.\r\n\r\nKeduanya ditemukan di hulu Sungai Bahau dalam kondisi drop. Keduanya langsung dievakuasi, serta diistirahatkan di kediaman Kepala Desa Apauping.\r\n\r\n\"Sudah dievakuasi dan sekarang menunggu petunjuk lebih lanjut dari Polres Malinau,\" ujar Suhendra. (dkp/dkp)', 'suhendra', '0000-00-00 00:00:00', 'tersesat.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekomendasi`
--

CREATE TABLE `rekomendasi` (
  `id` int(11) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekomendasi`
--

INSERT INTO `rekomendasi` (`id`, `id_warga`, `keterangan`) VALUES
(2, 11, 'Coba');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rt`
--

CREATE TABLE `rt` (
  `id` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.png',
  `level` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rt`
--

INSERT INTO `rt` (`id`, `role`, `name`, `email`, `password`, `img`, `level`) VALUES
(6, 4, 'Pak RT 01', 'pakrt01@karangsari.desa.id', 'd4c196931d637518ffe407a98d4b5ff10d6f79be', 'Koala1.jpg', '01'),
(7, 4, 'Pak RT 02', 'pakrt02@karangsari.desa.id', '1479e380c3cb4bf8df539d0d254d2209d678a2e9', 'Lighthouse.jpg', '02'),
(8, 4, 'Pak RT 03', 'pakrt03@karangsari.desa.id', 'dbd531c02a07bdd1d1e827d4106fc1d35296f9fb', 'Jellyfish.jpg', '03'),
(9, 4, 'Pak RT 04', 'pakrt04@karangsari.desa.id', '07ada34528c0d06d6b09fdc5f4f73199719a4db7', 'Koala.jpg', '04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `role` int(1) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `role`, `id_warga`, `nik`, `password`, `img`) VALUES
(3, 5, 11, '3210171604980021', 'df77b837b21302aa136fcc53dd7d4392d72b8bf5', 'default.png'),
(4, 5, 12, '321017160', '9ec5672a6813a655e77fd61f2266b4c34a28ea01', 'default.png'),
(10, 5, 18, '897996', '808ba88b366c6f889722d46ec2e209d1594ee7d6', 'default.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warga`
--

CREATE TABLE `warga` (
  `id` int(11) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` char(1) NOT NULL,
  `blok` varchar(200) NOT NULL,
  `rt` varchar(2) NOT NULL,
  `rw` varchar(2) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_perkawinan` varchar(20) NOT NULL,
  `pekerjaan` varchar(250) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `warga`
--

INSERT INTO `warga` (`id`, `nik`, `name`, `tempat_lahir`, `tgl_lahir`, `jk`, `blok`, `rt`, `rw`, `agama`, `status_perkawinan`, `pekerjaan`, `img`) VALUES
(11, '3210171604980021', 'Ryan Aprianto', 'Majalengka', '2020-01-08', 'L', 'Blok Selasa', '01', '09', 'Islam', 'Belum Kawin', 'Freelancer', 'Penguins1.jpg'),
(12, '321017160', 'Fauzi', 'Majalengka', '2020-01-03', 'L', 'Selasa', '02', '09', 'Islam', 'Belum Kawin', 'UI UX Designer', 'Lighthouse.jpg'),
(18, '897996', 'Ibnu Soffyan', 'Majalengka', '2020-01-11', 'L', 'Blok Selasa', '01', '09', 'Islam', 'Belum Kawin', 'Freelancer', 'Penguins.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_warga` (`id_warga`);

--
-- Indeks untuk tabel `rt`
--
ALTER TABLE `rt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_warga` (`id_warga`);

--
-- Indeks untuk tabel `warga`
--
ALTER TABLE `warga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `rt`
--
ALTER TABLE `rt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `warga`
--
ALTER TABLE `warga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `rekomendasi`
--
ALTER TABLE `rekomendasi`
  ADD CONSTRAINT `rekomendasi_ibfk_1` FOREIGN KEY (`id_warga`) REFERENCES `warga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_warga`) REFERENCES `warga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
