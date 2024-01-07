-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2015 at 08:33 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id_admin` int(5) NOT NULL,
  `username` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(40) COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(35) COLLATE latin1_general_ci NOT NULL,
  `jenis_kelamin` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(10) COLLATE latin1_general_ci NOT NULL DEFAULT 'sekolah'
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'Laki-laki', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE IF NOT EXISTS `tbl_guru` (
  `nip` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nm_guru` varchar(40) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` varchar(13) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `foto` varchar(40) NOT NULL,
  `telpon` varchar(12) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jabatan` varchar(40) NOT NULL,
  `gol` varchar(7) NOT NULL,
  `tamatan` varchar(150) NOT NULL,
  `level` varchar(10) NOT NULL DEFAULT 'guru'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`nip`, `password`, `nm_guru`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `foto`, `telpon`, `agama`, `jabatan`, `gol`, `tamatan`, `level`) VALUES
('196308051991032003', 'Guru', 'Dra. Elisesmiatii', 'Padang, Lubuk Begalung', 'Padang', '05-08-1963', 'Perempaun', 'pas poto.jpg', '082173054500', 'Islam', 'Guru KWN', 'IV/a', 'SI/AIV/PMP/90', 'guru'),
('197301162007101003', 'Guru', 'Yandrizal, S.Ag', '', '', '16-01-1973', 'Laki-laki', '', '', 'Islam', 'Guru Agama', 'III/b', 'SI/AIV/P.Agama', 'guru'),
('196211131984032004', 'Guru', 'Dra. Yusnaniar', '', '', '13-11-1962', 'Perempaun', '', '', 'Islam', 'Guru B. Indonesia', 'IV/b', 'SI/AIV/B.Indo/91', 'guru'),
('195608231980112001', 'Guru', 'Zuarti. J, S.Pd', '', '', '23-08-1956', 'Perempaun', '', '', 'Islam', 'Guru B. Indonesia', 'IV/a', 'SI/AIV/B.Indo/98', 'guru'),
('196210201987032006', 'Guru', 'Hidayati, S.Pd', '', '', '20-10-1962', 'Perempaun', '', '', 'Islam', 'Guru B. Indonesia', 'IV/a', 'SI/AIV/B.Indo/98', 'guru'),
('196804121991031015', 'Guru', 'Suherman, S.Pd', '', '', '12-04-1968', 'Laki-laki', '', '', 'Islam', 'Guru B. Inggris', 'IV/a', 'SI/AIV/B. Inggris/97', 'guru'),
('196912251997031003', 'Guru', 'Mhd. Rumzi, S.Pd', '', '', '25-12-1969', 'Laki-laki', '', '', 'Islam', 'Guru B. Inggris', 'IV/a', 'SI/AIV/B. Inggris/95', 'guru'),
('197308131998022001', 'Guru', 'Gustina, S.Pd', '', '', '18-08-1973', 'Perempaun', '', '', 'Islam', 'Guru B. Inggris', 'IV/a', 'SI/AIV/B. Inggris/97', 'guru'),
('196802111993032007', 'Guru', 'Drs. Nurman', '', '', '11-02-1968', 'Laki-laki', '', '', 'Islam', 'Guru Penjaskes', 'IV/a', 'S1/AIV/Orkes/92', 'guru'),
('196212281989031003', 'Guru', 'Suratman, S.Pd', '', '', '28-12-1962', 'Laki-laki', '', '', 'Islam', 'Guru Penjaskes', 'IV/b', 'S1/AIV/Orkes/05', 'guru'),
('196408111990032004', 'Guru', 'Dra. Asnaweti, M. Si', '', '', '11-08-1964', 'Perempaun', '', '', 'Islam', 'Guru Matematika', 'IV/b', 'SI/AIV/MTK/89', 'guru'),
('196305131994032003', 'Guru', 'Ratna Dewi, S.Pd', '', '', '13-05-1963', 'Perempaun', '', '', 'Islam', 'Guru Matematika', 'IV/a', 'SI/AIV/MTK/89', 'guru'),
('196810272005012003', 'Guru', 'Otmayeni, S.Pd', '', '', '27-10-1968', 'Perempaun', '', '', 'Islam', 'Guru Matematika', 'III/b', 'SI/AIV/MTK', 'guru'),
('196506191990032003', 'Guru', 'Dra. Asnimar, M.Si', '', '', '19-06-1965', 'Perempaun', '', '', 'Islam', 'Guru Fisika', 'IV/b', 'SI/AIV/Fisika/89', 'guru'),
('196303131985122002', 'Guru', 'Kasmaneli Nazar', '', '', '13-03-1963', 'Perempaun', '', '', 'Islam', 'Guru Fisika', 'IV/a', 'D3/A3/Fisika/85', 'guru'),
('196008051986021007', 'Guru', 'Drs. Syafruddin', '', '', '05-08-1960', 'Laki-laki', '', '', 'Islam', 'Guru Biologi', 'IV/a', 'SI/AIV/Biologi/86', 'guru'),
('197209281998022002', 'Guru', 'Yusneli, S.Pd', '', '', '28-09-1972', 'Perempaun', '', '', 'Islam', 'Guru Biologi', 'IV/a', 'SI/AIV/Biologi/96', 'guru'),
('195909091982022010', 'Guru', 'Indri Azmi, S.Pd', '', '', '09-09-1959', 'Perempaun', '', '', 'Islam', 'Guru Biologi', 'IV/a', 'SI/AIV/Biologi', 'guru'),
('196601131998012001', 'Guru', 'Husni Yetti, S.Pd', '', '', '13-01-1966', 'Perempaun', '', '', 'Islam', 'Guru Kimia', 'IV/a', 'SI/AIV/Kimia/90', 'guru'),
('19740106200641008', 'Guru', 'Rahman, S.Pd', '', '', '06-01-1974', 'Laki-laki', '', '', 'Islam', 'Guru Kimia', 'III/b', 'SI/AIV/Kimia', 'guru'),
('197512032006042011', 'Guru', 'Lenny Desridawati, S.Sos', '', '', '03-12-1975', 'Perempaun', '', '', 'Islam', 'Guru Sosiologi', 'III/c', 'SI/AIV/Sosilogi', 'guru'),
('196606062007012011', 'Guru', 'Dra. Mardawati', '', '', '06-06-1966', 'Perempaun', '', '', 'Islam', 'Guru Geografi', 'III/c', 'SI/AIV/Geografi', 'guru'),
('197008212007012005', 'Guru', 'Susi Andriani, S.Pd', '', '', '21-08-1970', 'Perempaun', '', '', 'Islam', 'Guru Geografi', '', '', 'guru'),
('197204172007011008', 'Guru', 'Maizi Aprieldi, SE', '', '', '17-04-1972', 'Laki-laki', '', '', 'Islam', 'Guru Ekonomi', 'III/b', 'SI/AIV/Ekonomi ', 'guru'),
('197607132006041006', 'Guru', 'Devinardi, S.Pd', '', '', '13-07-1976', 'Laki-laki', '', '', 'Islam', 'Guru Ekonomi', 'III/c', 'SI/AIV/Ekonomi', 'guru'),
('195701211981021002', 'Guru', 'Irzal, S.Pd', '', '', '21-01-1957', 'Laki-laki', '', '', 'Islam', 'Guru Ekonomi', 'IV/a', 'SI/AIV/Ekonomi', 'guru'),
('197801152006042013', 'Guru', 'Hilda Sridewita, M.PdE', '', '', '', 'Perempaun', '', '', 'Islam', 'Guru Ekonomi', '', 'SI/AIV/Ekonomi', 'guru'),
('198611152010012014', 'Guru', 'Mira Eka Marsusi, S.PdI', '', '', '15-11-1986', 'Perempaun', '', '', 'Islam', 'Guru BK', 'III/b', 'SI/AIV/BK', 'guru'),
('196901041998021002', 'Guru', 'Drs. Wannasri', '', '', '04-01-1969', 'Laki-laki', '', '', 'Islam', 'Guru Geografi', 'IV/a', 'SI/AIV/Geografi/93', 'guru');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_jadwal_pelajaran` (
  `id_jadwal_pelajaran` int(11) NOT NULL,
  `kd_kelas` varchar(11) NOT NULL,
  `kd_pelajaran` varchar(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_selesai` time NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal_pelajaran`
--

INSERT INTO `tbl_jadwal_pelajaran` (`id_jadwal_pelajaran`, `kd_kelas`, `kd_pelajaran`, `nip`, `hari`, `jam_mulai`, `jam_selesai`) VALUES
(6, 'K11', '1215', '195608231980112001', 'Senin', '08:00:00', '10:00:00'),
(7, 'K11', '1216', '196912251997031003', 'Senin', '10:05:00', '12:00:00'),
(8, 'K11', '1209', '196308051991032003', 'Senin', '13:00:00', '14:15:00'),
(10, 'K2A1', '1215', '196308051991032003', 'Senin', '12:00:00', '13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban_objektif`
--

CREATE TABLE IF NOT EXISTS `tbl_jawaban_objektif` (
  `id_jawaban_objektif` int(5) NOT NULL,
  `no_induk` varchar(10) NOT NULL,
  `id_pertanyaan_objektif` int(10) NOT NULL,
  `jawaban` varchar(2) NOT NULL,
  `waktu_objektif` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jawaban_objektif`
--

INSERT INTO `tbl_jawaban_objektif` (`id_jawaban_objektif`, `no_induk`, `id_pertanyaan_objektif`, `jawaban`, `waktu_objektif`) VALUES
(21, '4412', 5, 'b', '2015-11-04 01:17:02'),
(20, '4412', 1, 'c', '2015-11-04 01:16:41'),
(19, '4412', 2, 'c', '2015-11-04 01:18:00'),
(18, '4412', 3, 'a', '2015-11-04 01:16:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jawaban_tugas`
--

CREATE TABLE IF NOT EXISTS `tbl_jawaban_tugas` (
  `id_jawaban_tugas` int(5) NOT NULL,
  `no_induk` varchar(10) NOT NULL,
  `id_pertanyaan` int(10) NOT NULL,
  `jawaban_tugas` text NOT NULL,
  `waktu_tugas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jawaban_tugas`
--

INSERT INTO `tbl_jawaban_tugas` (`id_jawaban_tugas`, `no_induk`, `id_pertanyaan`, `jawaban_tugas`, `waktu_tugas`) VALUES
(1, '4412', 1, 'abdurrahman wahid (Gus Dur)', '2015-11-03 13:02:19'),
(2, '4412', 2, '1. Udin Sedunia\r\n2. Sopan Sopian\r\n3. Inul Daratista\r\n4. Angelina Sondak\r\n5. Ruhut Sitompul', '2015-11-03 13:02:19'),
(3, '4412', 3, 'Di Kota Padang, Sumatera Barat', '2015-11-03 13:02:19'),
(4, '4412', 6, 'Wr Supratman', '2015-11-03 13:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE IF NOT EXISTS `tbl_kelas` (
  `kd_kelas` varchar(4) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nm_kelas` varchar(20) NOT NULL,
  `kapasitas` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kd_kelas`, `nip`, `nm_kelas`, `kapasitas`) VALUES
('K11', '196408111990032004', 'X 1', 30),
('K12', '196506191990032003', 'X 2', 30),
('K13', '196211131984032004', 'X 3', 30),
('K14', '197209281998022002', 'X 4', 30),
('K15', '197204172007011008', 'X 5', 30),
('K16', '197512032006042011', 'X 6', 30),
('K2A1', '196601131998012001', 'XI IPA 1', 30),
('K2A2', '195909091982022010', 'XI IPA 2', 30),
('K2S1', '196810272005012003', 'XI IPS 1', 40),
('K2S2', '196606062007012011', 'XI IPS 2', 35),
('K2S3', '196901041998021002', 'XI IPS 3', 35),
('K3A1', '196303131985122002', 'XII IPA 1', 35),
('K3A2', '196008051986021007', 'XII IPA 2', 35),
('K3S1', '196210201987032006', 'XII IPS 1', 30),
('K3S2', '196804121991031015', 'XII IPS 2', 30),
('K3S3', '196308051991032003', 'XII IPS 3', 30),
('K3S4', '197301162007101003', 'XII IPS 4', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mata_pelajaran`
--

CREATE TABLE IF NOT EXISTS `tbl_mata_pelajaran` (
  `kd_pelajaran` varchar(20) NOT NULL,
  `nm_mapel` varchar(150) NOT NULL,
  `nip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mata_pelajaran`
--

INSERT INTO `tbl_mata_pelajaran` (`kd_pelajaran`, `nm_mapel`, `nip`) VALUES
('1209', 'PPKN', ''),
('1215', 'B. INDONESIA', ''),
('1216', 'B. INGGRIS', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_materi_ajar`
--

CREATE TABLE IF NOT EXISTS `tbl_materi_ajar` (
  `id_materi_ajar` int(5) NOT NULL,
  `kd_pelajaran` varchar(5) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `keterangan` text NOT NULL,
  `file_materi_ajar` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_materi_ajar`
--

INSERT INTO `tbl_materi_ajar` (`id_materi_ajar`, `kd_pelajaran`, `nip`, `kd_kelas`, `keterangan`, `file_materi_ajar`, `tanggal`) VALUES
(4, '1209', '196308051991032003', 'K11', 'Tugas Presentasi PPKN - 12 Juni 2015', 'Presentation1.pptx', '2015-05-24'),
(5, '1209', '196308051991032003', 'K11', 'Tugas Untuk Hari ini tanggal 08 Juli 2015', 'Makalah Penologi.docx', '2015-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nilai_tugas`
--

CREATE TABLE IF NOT EXISTS `tbl_nilai_tugas` (
  `id_nilai_tugas` int(5) NOT NULL,
  `id_tugas` int(5) NOT NULL,
  `no_induk` int(11) NOT NULL,
  `nilai_tugas` int(5) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_nilai_tugas`
--

INSERT INTO `tbl_nilai_tugas` (`id_nilai_tugas`, `id_tugas`, `no_induk`, `nilai_tugas`) VALUES
(1, 1, 4412, 67);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE IF NOT EXISTS `tbl_page` (
  `id_page` int(5) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id_page`, `judul`, `isi`) VALUES
(1, 'Selamat Datang Di Aplikasi E-learning SMK 2 Padang', '<img style="width:100%" src="http://localhost/elearning/images/e-learning.jpg">Salah satu masalah utama pada sistem pendidikan di Indonesia adalah masalah kualitas.Masalah ini berhubungan dengan penyediaan materi dan bahan belajar yang dapat diakses secara luas tanpa dibatasi oleh kendala jarak dan waktu. Apabila kendala ini dapa tdiatasi maka misi untuk menerapkan pendidikan sepanjang haya tpada segenap lapisan masyarakat dapat diwujudkan.Dalam mewujudkan hal ini dibutuhkan perubahan pada paradigma proses belajar mengajar yang telah diterapkan selama ini.\r\n\r\nSelain itu masalah yang dihadapi juga meliputi tidak adanya fasilitas pengaturan materi pembelajaran secara online, tidak adanya pelaksanaan kuis dan ujian bagi murid yang berhalangan hadir datang ke sekolah, tidak adanya fasilitas untuk  mengetahui nilai hasil ujian yang telah diikuti oleh murid secara cepat dan tidak adanya pemberitahuan informasi penting lainnya.'),
(2, 'Profile SMK 2 Padang', 'Sebelum berubah nama menjadi SMKN 2 Padang, pada awal berdirinya bernama SMEA Negeri 1 Padang yang diprakarsai oleh Bapak Ali Loeis dan Bapak Mr. Agus Thaib. Diresmikan dengan surat keputusan Menteri P.P.K. tanggal 3 Juli 1952 No. 2777/B. Sampai saat ini SMKN 2 Padang sudah 15 Kali berganti kepemimpinan, berikut nama-nama Kepala sekolah dari awal berdiri sampai sekarang.\r\n\r\n<b>1. Kegiatan Proses Belajar Mengajar</b>\r\n\r\nKegiatan proses belajar mengajar di mulai dari jam 07.15 WIB sampai selesai jika ada yang terlambat maka akan melapor ke piket dan siswa akan membawa surat izin masuk kedalam kelas. Siswa SMKN 2 Padang dalam proses belajar mengajar itu sangat baik. Sekolah SMKN 2 Padang ini memakai sistem kuliah jadi apabila belajar produktif maka masuk Labor, sedangkan teori di kelas dan setiap mata pelajaran kelas yang berbeda dalam tiap hari jadi mereka tidak mempunyai kelas tetap untuk menunggu guru.\r\n\r\n<b>2. Kegiatan Non Teaching</b>\r\n\r\nBeberapa kegiatan nonteaching berupa tugas bukan mengajar melainkan tugas seperti piket di ruang piket, piket di perpustaka, piket di ruang wakil kurikulum yang membantu tugas yang di berikan oleh guru piket atau waka.'),
(3, 'Informasi Pendaftaran Elearning', 'Berdasarkan latar belakang dari permasalahan yang muncul diatas tersebut penulis merasa perlu untuk membuatkan sebuah sistem pembelajaran yang praktis yang memudahkan para guru dan murid melakukan proses belajar mengajar tanpa mengurangi efektifitas pembelajaran dalam bentuk aplikasi e-learning berbasis web, karena pada saat sekarang ini proses pembelajaran tidak lagi dibatasi oleh ruang dan waktu, dan selama terhubung ke internet proses pembelajaran dapat berlangsung kapan saja dan dimana saja.\r\n\r\nDengan adanya aplikasi e-learning ini akan memudahkan para guru dan murid dalam melakukan aktifitas belajar mengajar, standarisasi materi pelajaran, dapat mengikuti kuis atau ujian secara online karena berhalangan hadir kesekolah, tidak ketinggalan materi pelajaran dan informasi-informasi penting lainnya serta dapat mengetahui nilai hasil ujian. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertanyaan`
--

CREATE TABLE IF NOT EXISTS `tbl_pertanyaan` (
  `id_pertanyaan` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `pertanyaan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pertanyaan`
--

INSERT INTO `tbl_pertanyaan` (`id_pertanyaan`, `id_tugas`, `pertanyaan`) VALUES
(1, 1, 'Siapakah Nama Presiden ke 5 Indonesia ?'),
(2, 1, 'Sebutkan Nama-nama Pahlawan Revolusi ?'),
(3, 1, 'Dimanakah Terjadinya Perjanjian Linggarjati ?'),
(5, 2, 'Sebutkan Arti Sila Ke 2 ?'),
(6, 2, 'Siapa Nama Pencipta Lagu Indonesia Raya ?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pertanyaan_objektif`
--

CREATE TABLE IF NOT EXISTS `tbl_pertanyaan_objektif` (
  `id_pertanyaan_objektif` int(11) NOT NULL,
  `id_tugas` int(11) NOT NULL,
  `pertanyaan_objektif` text NOT NULL,
  `jawab_a` varchar(255) NOT NULL,
  `jawab_b` varchar(255) NOT NULL,
  `jawab_c` varchar(255) NOT NULL,
  `jawab_d` varchar(255) NOT NULL,
  `jawab_e` varchar(255) NOT NULL,
  `kunci_jawaban` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pertanyaan_objektif`
--

INSERT INTO `tbl_pertanyaan_objektif` (`id_pertanyaan_objektif`, `id_tugas`, `pertanyaan_objektif`, `jawab_a`, `jawab_b`, `jawab_c`, `jawab_d`, `jawab_e`, `kunci_jawaban`) VALUES
(1, 1, 'Gubernur Tertua di Sumbar ?', 'Udin Sedunia', 'Saipul Jamil', 'Roma Irama', 'Fauzi Bahar', '', 'd'),
(2, 1, 'Nama-nama Pahlawan Indonesia ?', 'Robby Prihandaya', 'Taufik Hidayat', 'Ahmad Yani', 'Jokowi', '', 'c'),
(3, 1, 'Dimana Terjadinya Pembunuhan Sukarno ?', 'Padang', 'Payakumbuh', 'Bukit Tinggi', 'Semua Benar', '', 'a'),
(5, 1, 'Sebutkan Arti Sila Ke 2 ?', 'Keadilan Bagi Indonedia', 'Kerakyatan yang dipimpin Ndeso', 'Berjuang Untuk Jadi Lebih Baik', 'Kemanusiaan yang adil dan Beradap', '', 'd'),
(6, 2, 'Siapa Nama Pencipta Lagu Indonesia Raya ?', 'Dewiit Safitri', 'Ahmad Dani', 'Aura Kasih', 'Wr.Supratman', '', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE IF NOT EXISTS `tbl_siswa` (
  `no_induk` varchar(10) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nm_siswa` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tempat_lahir` varchar(15) NOT NULL,
  `tanggal_lahir` varchar(10) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `foto` varchar(10) NOT NULL,
  `sekolah_asal` varchar(20) NOT NULL,
  `nm_ortu` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `kd_kelas` varchar(5) NOT NULL,
  `level` varchar(10) DEFAULT 'siswa'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`no_induk`, `password`, `nm_siswa`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jk`, `agama`, `foto`, `sekolah_asal`, `nm_ortu`, `pekerjaan`, `kd_kelas`, `level`) VALUES
('4411', 'Siswa', 'Ari Ahmad', 'Tunggul HItam, perundam 4 Blok', 'Padang', '06 Mei 198', 'Laki-laki', 'Islam', 'jam.jpg', 'SMP N 1 Padang', 'Nafnizon', 'PNS', 'K11', 'siswa'),
('4412', 'Siswa', 'Dila Yoni Putri', 'Tunggul Hitam, Padang', 'Payakumbuh', '11 Juli 19', 'Perempaun', 'Islam', '12320.jpg', 'SMP 2 Payakumbuh', 'Suparman Koto', 'PNS', 'K11', 'siswa'),
('4413', 'Siswa', 'Elsa Mutia Rahmi', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K11', 'siswa'),
('4414', 'Siswa', 'Elsa Prima Yona', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K11', 'siswa'),
('4435', 'Siswa', 'Amelia', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K12', 'siswa'),
('4436', 'Siswa', 'Adrian Siksio', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K12', 'siswa'),
('4437', 'Siswa', 'Annisa Maidesati', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K12', 'siswa'),
('4438', 'Siswa', 'Asmara Murni', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K12', 'siswa'),
('4439', 'Siswa', 'Atika Melhana', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K12', 'siswa'),
('4460', 'Siswa', 'Andre Sabani', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K13', 'siswa'),
('4461', 'Siswa', 'Diki Agus Saputra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K13', 'siswa'),
('4463', 'Siswa', 'Elfi Yunasti', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K13', 'siswa'),
('4464', 'Siswa', 'Elvira Hesti Nengsih', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K13', 'siswa'),
('4465', 'Siswa', 'Faisal Azni', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K13', 'siswa'),
('4489', 'Siswa', 'Adelia Putri Juliani', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K14', 'siswa'),
('4490', 'Siswa', 'Bayu Segera', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K14', 'siswa'),
('4492', 'Siswa', 'Deka Gusnita', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K14', 'siswa'),
('4493', 'Siswa', 'Diki Rahma Septiawan', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K14', 'siswa'),
('4494', 'Siswa', 'Efriadi', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K14', 'siswa'),
('4518', 'Siswa', 'Aris Irpandi', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K15', 'siswa'),
('4519', 'Siswa', 'Ade Irma', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K15', 'siswa'),
('4520', 'Siswa', 'Ade Putra Gunawan', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K15', 'siswa'),
('4521', 'Siswa', 'Afrizal Ade Saputra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K15', 'siswa'),
('4522', 'Siswa', 'Annisa Wulandari', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K15', 'siswa'),
('4547', 'Siswa', 'Afdal Sepria Bona', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K16', 'siswa'),
('4548', 'Siswa', 'Aidil Saputra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K16', 'siswa'),
('4550', 'Siswa', 'Arizoni Saputra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K16', 'siswa'),
('4581', 'Siswa', 'Briyan Syarinaldo', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K16', 'siswa'),
('4551', 'Siswa', 'Doni Afdal', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K16', 'siswa'),
('4214', 'Siswa', 'Amrina Rasyada', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2A1', 'siswa'),
('4217', 'Siswa', 'Delniati', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2A1', 'siswa'),
('4218', 'Siswa', 'Diah Permata Sari', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2A1', 'siswa'),
('4255', 'Siswa', 'Irsan Nedi', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2A1', 'siswa'),
('4228', 'Siswa', 'Mara Agian Nasution', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2A1', 'siswa'),
('4281', 'Siswa', 'Ayu Weri Nadiati', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2A2', 'siswa'),
('4334', 'Siswa', 'Anggela Ayuni Saputr', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2A2', 'siswa'),
('4406', 'Siswa', 'Faril Antama Fani', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2A2', 'siswa'),
('4315', 'Siswa', 'Handika Saputra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2A2', 'siswa'),
('4393', 'Siswa', 'Vayef Fahrazi', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2A2', 'siswa'),
('4362', 'Siswa', 'Apri Yeni Gilang Sar', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2S1', 'siswa'),
('4404', 'Siswa', 'Andoko Putra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S1', 'siswa'),
('4248', 'Siswa', 'Ani Yola Sapitri', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2S1', 'siswa'),
('4249', 'Siswa', 'Arif Manto', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S1', 'siswa'),
('4215', 'Siswa', 'Bismi Puji', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S1', 'siswa'),
('4333', 'Siswa', 'Andika Putra', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S2', 'siswa'),
('4277', 'Siswa', 'Afrita Andhini', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2S2', 'siswa'),
('4278', 'Siswa', 'Aldi Naufal Harun Pu', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S2', 'siswa'),
('4279', 'Siswa', 'Angga Aria', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S2', 'siswa'),
('4251', 'Siswa', 'Desi Afrianti', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2A2', 'siswa'),
('4573', 'Siswa', 'Alfadri', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S3', 'siswa'),
('4307', 'Siswa', 'Armi Destriyanti', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2S3', 'siswa'),
('4397', 'Siswa', 'Ayu Purnama', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2S3', 'siswa'),
('4308', 'Siswa', 'Besrianita', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K2S3', 'siswa'),
('4312', 'Siswa', 'Firman Triyandi', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K2S3', 'siswa'),
('4024', 'Siswa', 'Afrida', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K3A1', 'siswa'),
('4085', 'Siswa', 'Ahmad Hanif Fussalam', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K3A1', 'siswa'),
('4070', 'Siswa', 'Ilham Husin', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K3A1', 'siswa'),
('4163', 'Siswa', 'M. Dino Abdullah', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K3A1', 'siswa'),
('4073', 'Siswa', 'Mulya Betriani', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K3A1', 'siswa'),
('4062', 'Siswa', 'Anjelli Indriana', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K3A2', 'siswa'),
('3959', 'Siswa', 'Adela Anita', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K3A2', 'siswa'),
('4025', 'Siswa', 'Aji Ismail', '', '', '', 'Laki-laki', 'Islam', '', '', '', '', 'K3A2', 'siswa'),
('3960', 'Siswa', 'Asi Rukmana', '', '', '', 'Perempaun', 'Islam', '', '', '', '', 'K3A2', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tugas`
--

CREATE TABLE IF NOT EXISTS `tbl_tugas` (
  `id_tugas` int(10) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kd_pelajaran` varchar(20) NOT NULL,
  `kd_kelas` varchar(4) NOT NULL,
  `batas_waktu` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tugas`
--

INSERT INTO `tbl_tugas` (`id_tugas`, `nip`, `kd_pelajaran`, `kd_kelas`, `batas_waktu`) VALUES
(1, '196308051991032003', '1209', 'K11', '2015-07-08 00:00:00'),
(2, '196308051991032003', '1209', 'K11', '2015-07-09 08:24:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tbl_jadwal_pelajaran`
--
ALTER TABLE `tbl_jadwal_pelajaran`
  ADD PRIMARY KEY (`id_jadwal_pelajaran`);

--
-- Indexes for table `tbl_jawaban_objektif`
--
ALTER TABLE `tbl_jawaban_objektif`
  ADD PRIMARY KEY (`id_jawaban_objektif`);

--
-- Indexes for table `tbl_jawaban_tugas`
--
ALTER TABLE `tbl_jawaban_tugas`
  ADD PRIMARY KEY (`id_jawaban_tugas`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kd_kelas`);

--
-- Indexes for table `tbl_mata_pelajaran`
--
ALTER TABLE `tbl_mata_pelajaran`
  ADD PRIMARY KEY (`kd_pelajaran`);

--
-- Indexes for table `tbl_materi_ajar`
--
ALTER TABLE `tbl_materi_ajar`
  ADD PRIMARY KEY (`id_materi_ajar`);

--
-- Indexes for table `tbl_nilai_tugas`
--
ALTER TABLE `tbl_nilai_tugas`
  ADD PRIMARY KEY (`id_nilai_tugas`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id_page`);

--
-- Indexes for table `tbl_pertanyaan`
--
ALTER TABLE `tbl_pertanyaan`
  ADD PRIMARY KEY (`id_pertanyaan`);

--
-- Indexes for table `tbl_pertanyaan_objektif`
--
ALTER TABLE `tbl_pertanyaan_objektif`
  ADD PRIMARY KEY (`id_pertanyaan_objektif`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`no_induk`);

--
-- Indexes for table `tbl_tugas`
--
ALTER TABLE `tbl_tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT for table `tbl_jadwal_pelajaran`
--
ALTER TABLE `tbl_jadwal_pelajaran`
  MODIFY `id_jadwal_pelajaran` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_jawaban_objektif`
--
ALTER TABLE `tbl_jawaban_objektif`
  MODIFY `id_jawaban_objektif` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_jawaban_tugas`
--
ALTER TABLE `tbl_jawaban_tugas`
  MODIFY `id_jawaban_tugas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_materi_ajar`
--
ALTER TABLE `tbl_materi_ajar`
  MODIFY `id_materi_ajar` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_nilai_tugas`
--
ALTER TABLE `tbl_nilai_tugas`
  MODIFY `id_nilai_tugas` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id_page` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_pertanyaan`
--
ALTER TABLE `tbl_pertanyaan`
  MODIFY `id_pertanyaan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_pertanyaan_objektif`
--
ALTER TABLE `tbl_pertanyaan_objektif`
  MODIFY `id_pertanyaan_objektif` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_tugas`
--
ALTER TABLE `tbl_tugas`
  MODIFY `id_tugas` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
