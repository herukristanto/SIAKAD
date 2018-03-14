-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 03 Apr 2016 pada 07.03
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siakad_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`username`, `nama_lengkap`) VALUES
('admin', 'Hendra Marudama');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_bobot`
--

CREATE TABLE IF NOT EXISTS `tbl_bobot` (
  `bobot` varchar(5) COLLATE latin1_general_ci NOT NULL,
  `nilai` char(5) CHARACTER SET latin1 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tbl_bobot`
--

INSERT INTO `tbl_bobot` (`bobot`, `nilai`) VALUES
('4', 'A'),
('3', 'B'),
('2', 'C'),
('1', 'D'),
('0', 'E'),
('0', 'T'),
('3.5', 'AB'),
('2.5', 'BC'),
('1.5', 'CD'),
('0.5', 'DE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen`
--

CREATE TABLE IF NOT EXISTS `tbl_dosen` (
  `kd_dosen` varchar(5) NOT NULL,
  `nidn` varchar(10) DEFAULT NULL,
  `nama_dosen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`kd_dosen`, `nidn`, `nama_dosen`) VALUES
('D001', '-', 'Hendra Syahputra, S.Kom'),
('D002', '-', 'Taufiq Ridla M. SE'),
('D003', '-', 'Baharuddin, SST');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_dosen_wali`
--

CREATE TABLE IF NOT EXISTS `tbl_dosen_wali` (
  `nim` varchar(20) NOT NULL,
  `kd_dosen` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_dosen_wali`
--

INSERT INTO `tbl_dosen_wali` (`nim`, `kd_dosen`) VALUES
('1560011001', 'D001'),
('1560011002', 'D001'),
('1560011003', 'D001'),
('1560011004', 'D001'),
('1560011005', 'D001'),
('1560011006', 'D001'),
('1560011007', 'D001'),
('1560011008', 'D001'),
('1560011009', 'D001'),
('1560011010', 'D001'),
('1560011011', 'D001'),
('1560011012', 'D001'),
('1560011013', 'D001'),
('8080', 'D003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jadwal`
--

CREATE TABLE IF NOT EXISTS `tbl_jadwal` (
`kd_jadwal` int(11) NOT NULL,
  `kd_mk` varchar(20) NOT NULL,
  `kd_dosen` varchar(5) NOT NULL,
  `kd_tahun` varchar(20) NOT NULL,
  `jadwal` varchar(100) NOT NULL,
  `kapasitas` int(3) NOT NULL,
  `kelas_program` varchar(10) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_mk`, `kd_dosen`, `kd_tahun`, `jadwal`, `kapasitas`, `kelas_program`, `kelas`) VALUES
(1, '1111306', 'D001', 'gnp-11/12', 'Kamis / 08.00-10.00 / ruang 3.3', 80, 'sore', 'A'),
(2, '1111306', 'D001', 'gnp-11/12', 'Selasa / 10.00-12.00 / ruang 21', 30, 'pagi', 'B'),
(3, '1111303', 'D003', 'gnp-11/12', 'Senin / 08.00-10.00 / Ruang 3.3', 30, 'pagi', 'A'),
(6, '3011502', 'D003', 'gnp-11/12', 'Jumat / 10.00 -12.00 / ruang 1.3', 25, 'pagi', 'B'),
(7, '1111303', 'D003', 'gnp-11/12', 'Senin / 10.00-12.00 / Ruang 3.3', 30, '0', 'B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL,
  `stts` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_login`
--

INSERT INTO `tbl_login` (`username`, `password`, `stts`) VALUES
('0960011001', '47bf4a2e7ca22f04272a3a483e84df7e', 'mahasiswa'),
('1560011001', '8421b75b1a34edf0ff07d636dbf145d9', 'mahasiswa'),
('1560011002', '80a4124f9f83aeb54195d8bc2c1d5987', 'mahasiswa'),
('1560011003', 'a98631bc3544af835b38efdc1112194e', 'mahasiswa'),
('1560011004', '45f596b14ab9ca85c4c8523888e9717e', 'mahasiswa'),
('1560011005', 'ebf12e6e8f2a8f776761c790cb6a9db8', 'mahasiswa'),
('1560011006', 'aeb947a8983b6bb7493cd5aef44a32db', 'mahasiswa'),
('1560011007', 'eea7223d6ecef84fe5451959ad9343ce', 'mahasiswa'),
('1560011008', '91b7129fb88dec7e6d1fe77c0a5dc29a', 'mahasiswa'),
('1560011009', 'b0b62632dcf5707548f160da5c7771f4', 'mahasiswa'),
('1560011010', '439817990df7ae89c66ef3ff62493845', 'mahasiswa'),
('1560011011', '7ae8eae0d238c70fe2f6880fc3d18348', 'mahasiswa'),
('1560011012', 'fc44a051b2743298e1a28a8adcd84166', 'mahasiswa'),
('1560011013', '2c93ea4026f5fc48f61da31326445a82', 'mahasiswa'),
('8080', 'd4a973e303ec37692cc8923e3148eef7', 'mahasiswa'),
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
('D001', 'd5cbf528f740b502b79241ff873ce6c5', 'dosen'),
('D002', 'b3460c056d63af44fe66bd92c961a144', 'dosen'),
('D003', 'fda7f226bff2b2df5da2e703f84bab11', 'dosen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mahasiswa`
--

CREATE TABLE IF NOT EXISTS `tbl_mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `jurusan` varchar(30) NOT NULL,
  `kelas_program` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`nim`, `nama_mahasiswa`, `angkatan`, `jurusan`, `kelas_program`) VALUES
('1560011001', 'Nahda Rafanda', 2015, 'Teknik Informatika', 'pagi'),
('1560011002', 'Muhammad Randi', 2015, 'Teknik Informatika', 'pagi'),
('1560011003', 'Rizki Fadly', 2015, 'Teknik Informatika', 'pagi'),
('1560011004', 'Rudi Gunawan', 2015, 'Teknk Informatika', 'pagi'),
('1560011005', 'M. Faisal Dani', 2015, 'Teknik Informatika', 'pagi'),
('1560011006', 'Nurul Ulan Nuri', 2015, 'Teknik Informatika', 'pagi'),
('1560011007', 'Maya Sari', 2015, 'Teknik Informatika', 'pagi'),
('1560011008', 'Rizky Ardiansah', 2015, 'Teknik Informatika', 'pagi'),
('1560011009', 'Dandi Setiawan', 2015, 'Teknik Informatika', 'pagi'),
('1560011010', 'Aldi Nuzwair Ramadhan', 2015, 'Teknik Informatika', 'pagi'),
('1560011011', 'Fitriani', 2015, 'Teknik Informatika', 'pagi'),
('1560011012', 'Ismail', 2015, 'Teknik Informatika', 'pagi'),
('1560011013', 'Nun Aliffa Afyuni', 2015, 'Teknik Komputer', 'pagi'),
('8080', 'Didi Kumbara', 2015, 'TI', 'Pagi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mk`
--

CREATE TABLE IF NOT EXISTS `tbl_mk` (
  `kd_mk` varchar(10) NOT NULL DEFAULT '',
  `nama_mk` varchar(100) DEFAULT NULL,
  `jum_sks` int(2) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `prasyarat_mk` varchar(50) DEFAULT NULL,
  `kode_jur` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mk`
--

INSERT INTO `tbl_mk` (`kd_mk`, `nama_mk`, `jum_sks`, `semester`, `prasyarat_mk`, `kode_jur`) VALUES
('1111306', 'Pemrograman Web 1', 4, 1, '-', 'TI'),
('1111201', 'Design Database', 4, 1, '-', 'TI'),
('1111303', 'Linux', 4, 1, '-', 'TI'),
('3011502', 'Algoritma dan Pemrograman', 4, 1, '-', 'TI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE IF NOT EXISTS `tbl_nilai` (
  `nim` varchar(20) NOT NULL,
  `kd_mk` varchar(50) NOT NULL,
  `kd_dosen` varchar(20) NOT NULL,
  `kd_tahun` varchar(20) NOT NULL,
  `semester_ditempuh` int(2) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`nim`, `kd_mk`, `kd_dosen`, `kd_tahun`, `semester_ditempuh`, `grade`) VALUES
('960011001', '1111303', '0200', '1-gnj-11/12', 1, 'A'),
('960011001', '1111311', '0200', '1-gnj-11/12', 1, 'A'),
('960011001', '1111205', '0200', '1-gnj-11/12', 1, 'A'),
('960011001', '1111201', '0200', '1-gnj-11/12', 1, 'B'),
('960011001', '1111502', '0200', '1-gnj-11/12', 1, 'A'),
('960011001', '1111204', '0200', '1-gnj-11/12', 1, 'A'),
('960011001', '1111304', '0200', '1-gnj-11/12', 2, 'A'),
('960011001', '1111312', '0200', '1-gnj-11/12', 2, 'A'),
('960011001', '1111317', '0200', '1-gnj-11/12', 2, 'A'),
('960011001', '1111319', '0200', '1-gnj-11/12', 2, 'A'),
('960011001', '1111202', '0200', '1-gnj-11/12', 2, 'A'),
('960011001', '1111314', '0200', '1-gnj-11/12', 2, 'A'),
('960011001', '1111203', '0200', '1-gnj-11/12', 3, 'B'),
('960011001', '1111309', '0200', '1-gnj-11/12', 3, 'A'),
('960011001', '1111315', '0200', '1-gnj-11/12', 3, 'A'),
('960011001', '1111101', '0200', '1-gnj-11/12', 3, 'B'),
('960011001', '1111206', '0200', '1-gnj-11/12', 3, 'A'),
('960011001', '1111301', '0200', '1-gnj-11/12', 4, 'A'),
('960011001', '1111310', '0200', '1-gnj-11/12', 4, 'B'),
('960011001', '1111316', '0200', '1-gnj-11/12', 4, 'A'),
('960011001', '1111501', '0200', '1-gnj-11/12', 4, 'A'),
('960011001', '1111207', '0200', '1-gnj-11/12', 4, 'A'),
('960011001', '1111308', '0200', '1-gnj-11/12', 5, 'A'),
('960011001', '1111208', '0200', '1-gnj-11/12', 5, 'A'),
('960011001', '1111102', '0200', '1-gnj-11/12', 4, 'A'),
('960011001', '1111325', '0200', '1-gnj-11/12', 5, 'A'),
('960011001', '1111332', '0200', '1-gnj-11/12', 3, 'A'),
('960011001', '1111503', '0200', '1-gnj-11/12', 4, 'A'),
('0960011001', '1111306', 'D001', 'gnp-11/12', 1, 'A'),
('0960011001', '1111201', 'D001', 'gnp-11/12', 1, 'B'),
('123', '1111306', 'D001', 'gnp-11/12', 1, 'A'),
('123', '1111201', 'D001', 'gnp-11/12', 1, 'B'),
('1560011001', '1111306', 'D001', 'gnp-11/12', 1, 'A'),
('1560011001', '1111201', 'D001', 'gnp-11/12', 1, 'A'),
('1560011001', '1111303', 'D003', 'gnp-11/12', 1, 'B'),
('1560011001', '3011502', 'D003', 'gnp-11/12', 1, 'A'),
('1560011002', '1111306', 'D001', 'gnp-11/12', 1, 'B'),
('1560011002', '1111303', 'D003', 'gnp-11/12', 1, 'B'),
('1560011002', '3011502', 'D003', 'gnp-11/12', 1, 'C');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perwalian_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_perwalian_detail` (
  `nim` varchar(20) NOT NULL,
  `kd_jadwal` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_perwalian_detail`
--

INSERT INTO `tbl_perwalian_detail` (`nim`, `kd_jadwal`) VALUES
('0960011001', 3),
('0960011001', 4),
('123', 3),
('123', 4),
('1560011001', 5),
('1560011001', 2),
('1560011001', 3),
('1560011001', 6),
('1560011002', 2),
('1560011002', 3),
('1560011002', 5),
('1560011002', 6),
('1560011008', 2),
('1560011008', 3),
('1560011008', 6),
('1560011007', 2),
('1560011007', 3),
('1560011007', 6),
('1560011005', 2),
('1560011005', 3),
('1560011005', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_perwalian_header`
--

CREATE TABLE IF NOT EXISTS `tbl_perwalian_header` (
  `nim` varchar(20) NOT NULL,
  `tgl_perwalian` varchar(20) NOT NULL,
  `tgl_persetujuan` varchar(20) DEFAULT NULL,
  `status` char(1) NOT NULL,
  `semester` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_perwalian_header`
--

INSERT INTO `tbl_perwalian_header` (`nim`, `tgl_perwalian`, `tgl_persetujuan`, `status`, `semester`) VALUES
('1560011001', '2016-02-01', '2016-02-01', '1', '1'),
('1560011002', '2016-02-01', '2016-02-05', '1', '1'),
('1560011005', '2016-03-29', '', '0', '1'),
('1560011007', '2016-02-05', '', '0', '1'),
('1560011008', '2016-02-05', '2016-02-05', '1', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_thn_ajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_thn_ajaran` (
  `kd_tahun` varchar(20) NOT NULL,
  `keterangan` varchar(20) DEFAULT NULL,
  `tgl_kul` varchar(20) DEFAULT NULL,
  `tgl_awal_perwalian` varchar(20) DEFAULT NULL,
  `tgl_akhir_perwalian` varchar(20) DEFAULT NULL,
  `stts` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_thn_ajaran`
--

INSERT INTO `tbl_thn_ajaran` (`kd_tahun`, `keterangan`, `tgl_kul`, `tgl_awal_perwalian`, `tgl_akhir_perwalian`, `stts`) VALUES
('gnp-11/12', 'Genap 2011 - 2012', '2011-09-24', '2011-07-23', '2012-09-30', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
 ADD PRIMARY KEY (`kd_dosen`);

--
-- Indexes for table `tbl_dosen_wali`
--
ALTER TABLE `tbl_dosen_wali`
 ADD PRIMARY KEY (`nim`,`kd_dosen`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
 ADD PRIMARY KEY (`kd_jadwal`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
 ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_mk`
--
ALTER TABLE `tbl_mk`
 ADD PRIMARY KEY (`kd_mk`);

--
-- Indexes for table `tbl_perwalian_header`
--
ALTER TABLE `tbl_perwalian_header`
 ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tbl_thn_ajaran`
--
ALTER TABLE `tbl_thn_ajaran`
 ADD PRIMARY KEY (`kd_tahun`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
MODIFY `kd_jadwal` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
