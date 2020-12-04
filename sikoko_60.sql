-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 06:51 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikoko60`
--

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_absensi_rapat`
--

CREATE TABLE `sikoko_absensi_rapat` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_peserta` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_kedatangan` datetime DEFAULT NULL,
  `is_wajib` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentase_presensi` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_absen_total`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_absen_total` (
`id_peserta` varchar(18)
,`nama` varchar(50)
,`presensi` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_administrasi`
--

CREATE TABLE `sikoko_administrasi` (
  `id_administrasi` int(11) NOT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_all_rapat`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_all_rapat` (
`id_rapat` varchar(8)
,`id_risbid` char(4)
,`id_seksi` char(4)
,`id_subseksi` varchar(3)
,`nama_rapat` varchar(100)
,`id_jenis_rapat` char(3)
,`agenda` longtext
,`tempat` varchar(50)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`notulensi` varchar(70)
,`is_wajib` enum('0','1')
,`id_peserta` varchar(18)
,`waktu_kedatangan` datetime
,`presentase_presensi` int(3)
,`nama_seksi` varchar(50)
,`nama_riset_bidang` varchar(30)
,`nama_subseksi` varchar(70)
,`jenis_rapat` varchar(100)
,`kehadiran` varchar(19)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_berita`
--

CREATE TABLE `sikoko_berita` (
  `id_berita` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` date NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_berita` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_dosen`
--

CREATE TABLE `sikoko_dosen` (
  `nip` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jab_dosen` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_ruang` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kodeLupa` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '2018-11-11 00:00:00',
  `token` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_dosen`
--

INSERT INTO `sikoko_dosen` (`nip`, `username`, `nama`, `id_risbid`, `id_jab_dosen`, `no_hp`, `id_ruang`, `email`, `password`, `foto`, `kodeLupa`, `last_login`, `token`) VALUES
('195709231980031003', NULL, 'Dr. Dedi Walujadi', 'RB04', 'JD12', '081294222369', 'G221', 'walujadi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('195806081986031005', NULL, 'Ir. Suryanto Aloysius, M.M', 'RB02', 'JD11', '08161439159', 'G231', 'suryanto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196008221985011001', NULL, 'Ir. Agus Purwoto, M.Si', 'RB09', 'JD04', '087883165656', 'G141', '', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196102191983122001', NULL, 'Dr. Budiasih, S.E., M.E.', 'RB03', 'JD12', '081510171610', 'G111', 'budiasih@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196103131986011001', NULL, 'Nurseto Wisnumurti, M.Stat', 'RB09', 'JD05', '085880399194', 'G311', 'nurseto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196105101983122001', NULL, 'Siti Haiyinah W. S.E., M.Si.', 'RB04', 'JD12', '0817888355', 'G122', 'haiyinah_wijaya@yahoo.com', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196207221985012001', NULL, 'Ir. Ekaria, M.Si.', 'RB01', 'JD12', '085215955605', 'G122', 'E_ria_S@yahoo.com', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196302081985011001', NULL, 'Drs. Waris Marsisno, M.Stat.', 'RB02', 'JD12', '082111734068', 'G132', 'waris@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196503141988021001', NULL, 'Jeffry Raja Hamonangan Sitorus, M.Si.', 'RB02', 'JD12', '081513121025', 'G221', 'jeffryrhs@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196607191991011001', NULL, 'Yaya Setiadi, SST., M.M.', 'RB06', 'JD12', '081210187943', 'G231', 'setiadi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196703171989012001', NULL, 'Ir. Titik Harsanti, M.Si', 'RB09', 'JD03', '085885135518', 'G141', 'titik@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196703221987032002', NULL, 'Sri Widaryani, M.Si', 'RB08', 'JD12', '081380977767', 'G312', 'sisi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196704251989011002', NULL, 'Dr. Hardius Usman, M.Si', 'RB09', 'JD02', '087875652352', 'G141', 'hardius@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196706121991011001', NULL, 'Dr. Muhammad Dokhi', 'RB01', 'JD12', '081330309440', 'G221', 'dokhi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196709101991121001', NULL, 'Sri Herwanto Dwi Hatmo, S.Si, MA.', 'RB05', 'JD12', '081311130003', 'G241', 'sriherwanto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196710221990032002', NULL, 'Dr. Erni Tri Astuti, M.Math', 'RB09', 'JD01', '08159407324', 'G141', 'erni@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196805031991011001', NULL, 'Dr. I Made Arcana', 'RB01', 'JD12', '082138235109', 'G131', 'arcana@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197001121991122001', NULL, 'Dr.Tiodora Hadumaon Siagian, M. Pop. Hum. Res.', 'RB03', 'JD11', '081585464795', 'G122', 'theo@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197001251998032001', NULL, 'Retnaningsih, S.Si., M.E.', 'RB06', 'JD12', '081317700686', 'G231', 'retna@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197002191992112001', NULL, 'Dr. Siti Muchlisoh, M.Si', 'RB09', 'JD08', '08128300234', 'G121', 'sitim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197005131992111001', NULL, 'Bambang Nurcahyo, SE, MM', 'RB09', 'JD06', '08128931384', 'G312', 'nurcahyo@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197006161988121001', NULL, 'Yunarso Anang Sulistiadi, M.Eng., Ph.D', 'RB05', 'JD12', '08111893616', 'G131', 'anang@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197007251998032003', NULL, 'Dr. Rita Yuliana S.Si, MSE', 'RB03', 'JD12', '081363428275', 'G231', 'rita@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197009261992111001', NULL, 'Wahyudin, S.Si., M.A.P., M.P.P.', 'RB04', 'JD12', '089521049606', 'G231', 'wahyudin@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197204241994031003', NULL, 'Sukim, SST., M.Si', 'RB06', 'JD11', '08128874783', 'G132', 'sukim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197205261991121001', NULL, 'Firdaus M.B.A.', 'RB04', 'JD12', '085778382820', 'G231', 'firdaus@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197208221994121001', NULL, 'Sofyan Ayatulloh, S.ST', 'RB08', 'JD13', '081281078505', 'G311', 'sofyan@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197211171995121001', NULL, 'Achmad Prasetyo, S.Si., M.M.', 'RB01', 'JD12', '081213448617', 'G232', 'praze@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197305281995121001', NULL, 'Agung Priyo Utomo, S.Si., M.T.', 'RB06', 'JD12', '08161123675', 'G131', 'agung@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197310231995122001', NULL, 'Dr. Ernawati Pasaribu, S.Si, ME', 'RB04', 'JD12', '08161399240', 'G121', 'ernapasaribu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197312272000031002', NULL, 'Dr.Timbang Sirait, M.Si.', 'RB01', 'JD11', '08179719667', 'G122', 'timbang@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197412101996121001', NULL, 'Dr. Nasrudin, S.Si, ME', 'RB09', 'JD07', '081219420562', 'G121', 'nasrudin@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197502041996122001', NULL, 'Anugerah Karta Monika, S.Si., M.E.', 'RB03', 'JD12', '0818138751', 'G221', 'ak.monika@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197605052000032003', NULL, 'Lia Yuliana, MT', 'RB06', 'JD12', '08129691386', 'G221', 'lia@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197608092000032001', NULL, 'Neli Agustina, M.Si', 'RB09', 'JD09', '08129644688', 'G121', 'neli@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197701042009022003', NULL, 'Liza Kurnia Sari, S.Si, M.Stat.', 'RB04', 'JD12', '081310734734', 'G221', 'lizakurnia@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197712082000121002', NULL, 'Dr. Mustaqim, SST., SE., M.Si', 'RB06', 'JD12', '085240292817', 'G131', 'mustaqim@bps.go.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197807222000121003', NULL, 'Sugiarto, SST., M.M.', 'RB02', 'JD12', '08197654699', 'G231', 'soegie@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197808022000122001', NULL, 'Atik Maratis, S.E., M.Si.', 'RB01', 'JD12', '081388459624', 'G231', 'atis@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197907312000122001', NULL, 'Dr. Cucu Sumarni, M.Si', 'RB03', 'JD12', '081573242676', 'G131', 'cucu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198002102002121001', NULL, 'Dr. Rindang Bangun Prasetyo', 'RB01', 'JD12', '082233999801', 'G131', 'rindang@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198006242003121004', NULL, 'Budi Yuniarto, SST., M.Si', 'RB05', 'JD12', '081316655315', 'G132', 'byuniarto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198007242002121002', NULL, 'Budyanra, SST., M.Stat.', 'RB03', 'JD12', '081363008683', 'G132', 'budy@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198007282003121004', NULL, 'Dr. Achmad Syahrul Choir', 'RB05', 'JD12', '081217220615', 'G131', 'madsyair@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198102272004122001', NULL, 'Toza Sathia Utiyarsih, SST., M.Stat.', 'RB04', 'JD12', '08158767624', 'G312', 'toza@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198106042003121001', NULL, 'Robert Kurniawan, SST., M.Si.', 'RB03', 'JD12', '085244174711', 'G231', 'robertk@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198106122003122002', NULL, 'Nucke Widowati Kusumo Projo, Ph.D', 'RB04', 'JD11', '087898503251', 'G122', 'nucke@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198110142004122001', NULL, 'Krismanti Tri Wahyuni, M.Si.', 'RB02', 'JD12', '085216465162', 'G221', 'krismanti@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198111272004122001', NULL, 'Dewi Purwanti, M.Si', 'RB03', 'JD12', '08158176780', 'G221', 'dewip@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198202022003121004', NULL, 'Febri Wicaksono, SST., M.Si.', 'RB02', 'JD12', '081261117043', 'G231', 'febri@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198202072004121001', NULL, 'Dr. Azka Ubaidillah', 'RB01', 'JD12', '08129820024', 'G231', 'azka@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198301022007012007', NULL, 'Ari Wahyuni, SST', 'RB09', 'JD10', '082123295081', 'G312', 'arywahyu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198302182004122001', NULL, 'Efri Diah Utami, SST., M.Stat.', 'RB06', 'JD12', '081341618261', 'G221', 'efridiah@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198306072007012009', NULL, 'Rani Nooraeni, SST., M.Stat.', 'RB02', 'JD12', '085280540046', 'G221', 'raninoor@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198311062010031002', NULL, 'Rifka Rahman Hakim, M.Si', 'RB08', 'JD12', '081519604945', 'G312', 'rifka.hakim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198405022008012010', NULL, 'Tria Merina, SST', 'RB08', 'JD12', '0895390105809', 'G312', 'tria@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198410152007012001', NULL, 'Siskarosa Ika Oktora, M.Stat', 'RB05', 'JD12', '081355101520', 'G231', 'siskarossa@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198504302009022006', NULL, 'Luci Wulansari S.Si, M.S.E', 'RB08', 'JD12', '081233504001', 'G312', 'luci@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198506012007012003', NULL, 'Aisyah Fitri Yuniasih, M.Si', 'RB09', 'JD09', '081379198540', 'G131', 'aisyah.fy@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198507122011012006', NULL, 'Risni Julaeni Yuhan S.P., M.Stat.', 'RB06', 'JD12', '081284050686', 'G132', 'risnij@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198512122008011004', NULL, 'Farid Ridho, SST., M.T.', 'RB07', 'JD12', '085282012357', 'G241', 'faridr@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198512222009021002', NULL, 'Dr. Eng. Arie Wahyu Wijayanto', 'RB04', 'JD12', '085890363680', 'G131', 'ariewahyu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198601202008011002', NULL, 'Ibnu Santoso, SST., M.T.', 'RB07', 'JD13', '081341829968', 'G241', 'ibnu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198606022009022007', NULL, 'Ika Yuni Wulansari, SST,M.Stat', 'RB02', 'JD12', '089637054034', 'G131', 'ikayuni@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198704142010121001', NULL, 'Takdir, SST,MT', 'RB01', 'JD12', '081389738894', 'G131', 'takdir@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198708262010121001', NULL, 'Dwy Bagus Cahyono, SST, MT', 'RB06', 'JD12', '08124925919', 'G311', 'dwybagus@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198803032010122004', NULL, 'Rini Silvi, SST, M.Stat', 'RB06', 'JD12', '089631462161', 'G312', 'rinisilvi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198809142010122004', NULL, 'Rina Hardiyanti, SST', 'RB09', 'JD10', '082114005339', 'G312', 'rinaha@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198810242010122001', NULL, 'Siti Mariyah, SST., MT', 'RB05', 'JD11', '08568243290', 'G122', 'sitimariyah@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198811292012112001', NULL, 'Nofita Istiana, M.Si', 'RB03', 'JD12', '085640756067', 'G311', 'nofita@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199001102012112001', NULL, 'Nori Wilantika SST, M.T.I', 'RB05', 'JD12', '089508121345', 'G231', 'wilantika@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199004052012112001', NULL, 'Lutfi Rahmatuti Maghfiroh, MT', 'RB07', 'JD12', '085228580467', 'G231', 'lutfim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199007152013112000', NULL, 'Winih Budiarti, SST., M.Stat.', 'RB06', 'JD12', '081314136759', 'G221', 'winih@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199510142019011001', NULL, 'Isfan Nur Fauzi S.Tr.Stat', 'RB03', 'JD12', '085643343439', 'G241', 'isfan@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199606282019011001', NULL, 'Muhammad Luqman S.Tr.Stat', 'RB04', 'JD12', '082311822575', 'G241', 'luqman@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199612212019011001', NULL, 'Geri Yesa Ermawan S.Tr.Stat.', 'RB02', 'JD12', '085655977475', 'G312', 'geri@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199704222019122001', NULL, 'Claudya Muna Asmarani, S.Tr. Stat', 'RB08', 'JD12', '0895331060227', 'G311', 'claudyamuna@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199711232019011001', NULL, 'Rahadi Jalu Yoga Utama S.Tr.Stat.', 'RB07', 'JD12', '083865978213', 'G241', 'rahadi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jabatan`
--

CREATE TABLE `sikoko_jabatan` (
  `id_jab` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jabatan`
--

INSERT INTO `sikoko_jabatan` (`id_jab`, `nama_jabatan`) VALUES
('J001', 'KETUA'),
('J002', 'WAKIL KETUA'),
('J003', 'KOORDINATOR'),
('J004', 'SEKRETARIS'),
('J005', 'BENDAHARA'),
('J006', 'ANGGOTA');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jabatan_dosen`
--

CREATE TABLE `sikoko_jabatan_dosen` (
  `id_jab_dosen` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jabatan_dosen`
--

INSERT INTO `sikoko_jabatan_dosen` (`id_jab_dosen`, `nama_jabatan`) VALUES
('JD01', 'Pengarah'),
('JD02', 'Penanggung Jawab Bidang Akademik'),
('JD03', 'Penanggung Jawab Bidang Keuangan'),
('JD04', 'Penanggung Jawab Bidang Kemahasiswaan'),
('JD05', 'Penanggung Jawav Administrasi Akademik'),
('JD06', 'Penanggung Jawab Administrasi Umum'),
('JD07', 'Ketua Penyelenggara'),
('JD08', 'Koordinator'),
('JD09', 'Sekretaris'),
('JD10', 'Bendahara'),
('JD11', 'Ketua / Koordinator Analisis'),
('JD12', 'Anggota'),
('JD13', 'Ketua');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jenis_rapat`
--

CREATE TABLE `sikoko_jenis_rapat` (
  `id_jenis_rapat` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_rapat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jenis_rapat`
--

INSERT INTO `sikoko_jenis_rapat` (`id_jenis_rapat`, `jenis_rapat`) VALUES
('R01', 'Rapat BPH'),
('R02', 'Rapat Riset / Bidang'),
('R03', 'Rapat Seksi / Divisi'),
('R04', 'Rapat Subseksi / Subdivisi'),
('R05', 'Rapat Koordinasi dengan Dosen'),
('R06', 'Rapat Koordinasi Antarseksi dalam Satu Riset'),
('R07', 'Rapat Koordinasi dengan Riset Lain'),
('R08', 'Rapat Akbar'),
('R09', 'Rapat Pleno'),
('R10', 'Rapat Lainnya');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_kehadiran_total`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_kehadiran_total` (
`id_peserta` varchar(18)
,`nama` varchar(50)
,`presensi` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_keys`
--

CREATE TABLE `sikoko_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_knowledge_management`
--

CREATE TABLE `sikoko_knowledge_management` (
  `id_km` int(11) NOT NULL,
  `nama_km` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_upload` datetime NOT NULL,
  `upload_by` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_laporan_dosen`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_laporan_dosen` (
`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`tempat` varchar(50)
,`identitas` varchar(18)
,`nama` varchar(50)
,`kehadiran` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_laporan_mhs`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_laporan_mhs` (
`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`tempat` varchar(50)
,`identitas` varchar(9)
,`nama` varchar(50)
,`kehadiran` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_laporan_rapat`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_laporan_rapat` (
`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`tempat` varchar(50)
,`identitas` varchar(18)
,`nama` varchar(50)
,`kehadiran` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_limits`
--

CREATE TABLE `sikoko_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_limits`
--

INSERT INTO `sikoko_limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES
(1, 'uri:api/mahasiswa/index:get', 1, 1580567697, 'apahayoo');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_mahasiswa`
--

CREATE TABLE `sikoko_mahasiswa` (
  `nim` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_subseksi` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jab` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `level` int(1) NOT NULL DEFAULT 1,
  `token` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_mahasiswa`
--

INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('111709511', 'AINAYYA HILWAH SALSABILA N. LIKUR', '3D31', 'DIII STATISTIKA', '082340649024', 'Jl Penghulu No.16 A Otista Raya (Bonasut), Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur ', '111709511@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111710027', 'TADJIE RIFKY ARDANI', '3D32', 'DIII STATISTIKA', '087774142374', 'Perumnas Blok I No 9-10, Duriangkang, Sei Beduk, Kota Batam', '111710027@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111710070', 'YOHANES INDRA KUMANIRENG', '3D32', 'DIII STATISTIKA', '081246629962', 'Jl. Otto Iskandardinata No.58, RT 001/RW 015, Kelurahan Bidara Cina, Kecamatan Jatinegara, Kota Jakarta Timur, DKI Jakarta.', '111710070@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810095', 'ADE SARI', '3D31', 'DIII STATISTIKA', '081271831805', 'Jl. Otista Raya  Gg. Mangga No. 31, RT. 04 RW.03, Kel. Bidara Cina  Kec. Jatinegara Kota Jakarta Timur 13330', '111810095@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810107', 'AFIF FATHUR REZA', '3D31', 'DIII STATISTIKA', '082187411059', 'Jl. Ayub No. 6A, RT. 15/RW. 08, Kp. Melayu, Jaktim', '111810107@stis.ac.id', 'RB06', 'S004', '600', 'J001', NULL, NULL, '2020-11-13 01:59:59', 1, NULL),
('111810132', 'AKMAL MAULANA AR.RIJAL', '3D32', 'DIII STATISTIKA', '085333245420', 'Jl. Ottista II No. 24', '111810132@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810135', 'ALBERT SIRAY', '3D31', 'DIII STATISTIKA', '0811416944', 'Jl. Asem, Gg. Mangga No.1', '111810135@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810141', 'ALFIANO PETRUS SERAN NAHAK', '3D31', 'DIII STATISTIKA', '081338642505', 'Jl. Asem Gang Mangga No 11, RT/RW 03/03, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur, Jakarta', '111810141@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810146', 'ALI IMRAN MANSYUR', '3D31', 'DIII STATISTIKA', '083139635421', 'Jl. Sensus 2/ No.26/ RT.10/ RW.04/Kelurahan Bidara Cina', '111810146@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810160', 'AMALIA FITRIYANI', '3D32', 'DIII STATISTIKA', '085241731635', 'Jl. Sensus I No.2, RT 001 RW 04, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur , Kode Pos 13330', '111810160@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810162', 'AMRI REZALDI', '3D32', 'DIII STATISTIKA', '089503212362', 'Gang Haji Dawel Atas No. 19, Jl. Otista II, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur, Jakarta, Indonesia', '111810162@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810164', 'ANANDA AYU PRATIWI MAHU', '3D32', 'DIII STATISTIKA', '082238054699', 'Jl Haji Yahya No 51D RT 012 RW 010 Kel Bidara Cina Kec Jatinegara Jakarta Timur DKI Jakarta 13330', '111810164@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810166', 'ANDI NUR FAUZIYAH SYAFRIANY', '3D32', 'DIII STATISTIKA', '082343621588', 'Kost Putri Safira Jln. Sensus 2 No.09A, RT/RW 002/004, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, Provinsi DKI Jakarta 13330', '111810166@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810173', 'ANINDYA TYAS WANDAWEKA', '3D31', 'DIII STATISTIKA', '0895414543395', 'Jl. Otista II, No. 4, RT 007, RW 09, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '111810173@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810174', 'ANIS ATHIRAH', '3D31', 'DIII STATISTIKA', '081918990529', 'Jl. Kebun Sayur 1 No.12 RT.06 RW.15 Kelurahan Bidara Cina', '111810174@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810197', 'ARYODENI RAIMIN AUGUSTYN', '3D32', 'DIII STATISTIKA', '081250627844', 'Jl. Asem,Gang Mangga No 11', '111810197@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810205', 'AULIA RIZKIKA SYARI', '3D32', 'DIII STATISTIKA', '085246309689', 'Jl. Otista 2, Gang H. Misnen No.11', '111810205@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810223', 'CHOIRUL IKHSAN', '3D31', 'DIII STATISTIKA', '082238978408', 'Gg Sensus 1 No 21 B', '111810223@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810229', 'DANIEL BUTAR BUTAR', '3D32', 'DIII STATISTIKA', '092139597337', 'Jl. Haji Hasbi I, No.14, RT.010, RW.09, Jatinegara, Jakarta Timur', '111810229@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810231', 'DANIEL M V MONE', '3D32', 'DIII STATISTIKA', '082144750497', 'Jln Sesawi, Oepura, Maulafa, Kota Kupang, NTT', '111810231@stis.ac.id', 'RB06', 'S013', '604', 'J003', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810241', 'DHIKA AULIAH YUSRAN', '3D31', 'DIII STATISTIKA', '085292107979', 'Jl Saabun', '111810241@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810258', 'EKA ARINI SANGKUATI', '3D32', 'DIII STATISTIKA', '087854639759', 'Jl. Otista Raya, Gang Solihun RT 15/RW 08 No. 10, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur', '111810258@stis.ac.id', 'RB08', 'S008', '806', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810267', 'EMNUR RAHMAT', '3D31', 'DIII STATISTIKA', '081770893346', 'Jl. Otista 2 No.25 RT 07 RW 09, Jatinegara, Jakarta Timur', '111810267@stis.ac.id', 'RB08', 'S006', '802', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810275', 'ERWIN MUSPIAN HAKIKI', '3D32', 'DIII STATISTIKA', '085936735835', 'Jln Kb Nanas Selatan 2 RT 3 RW 8 No 35 D Cipinang Cepedak Jakarta Timur ', '111810275@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810301', 'FAURGAN HIDAYAT', '3D31', 'DIII STATISTIKA', '085237571542', 'Jln. Masjid No. 23', '111810301@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810304', 'FERDIANSYAH B', '3D31', 'DIII STATISTIKA', '085240456996', 'Sinjai', '111810304@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810309', 'FITRAH HANIFA', '3D31', 'DIII STATISTIKA', '081354057677', 'Nania, Ambon, Maluku', '111810309@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810325', 'HASBULLAH HAKIM', '3D32', 'DIII STATISTIKA', '081342045703', 'Jl. Kebon Sayur 1 No. 25', '111810325@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810370', 'KARINA RIZKI NOVITA', '3D32', 'DIII STATISTIKA', '085342651202', 'Jl. Syech Yusuf. RW 001 Kelurahan Tuwung, Kecamatan Barru, Kabupaten Barru, Sulawesi Selatan', '111810370@stis.ac.id', 'RB06', 'S009', '001', 'J004', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810383', 'LALU MUHAMMAD ALI FAHMI', '3D32', 'DIII STATISTIKA', '087864804681', 'Jl. Swasembada No. 121 Karang Pule', '111810383@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810389', 'LEONITA AMARA HUSNA METANDA', '3D32', 'DIII STATISTIKA', '082298500884', 'Komplek Kehutanan Jl. Tatawana 4 No 132, Banjarbaru, Kalimantan Selatan', '111810389@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810406', 'M. CHUMAIDI RAHMAN', '3D31', 'DIII STATISTIKA', '087763309684', 'Jl. Otista II No.24, RT.004, RW.009, Kel.Bidaracina, Kec.Jatinegara, Jakarta Timur ', '111810406@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810432', 'MUH. HERI SAHAR', '3D32', 'DIII STATISTIKA', '08115234943', 'Jl. Bonasut 2 No. 23 RT 05/RW 07', '111810432@stis.ac.id', 'RB06', 'S013', '001', 'J003', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810433', 'MUH. IKHWAN SETIAWAN', '3D31', 'DIII STATISTIKA', '089661903266', 'Jl. Merdeka, Mangempang, Kec. Barru, Kab. Barru', '111810433@stis.ac.id', 'RB06', 'S014', '607', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810434', 'MUH. REZA AGUNG WIRAWAN', '3D32', 'DIII STATISTIKA', '085282076615', 'Jl. Kebon Nanas Utara 2', '111810434@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810436', 'MUH. SANDRA YANTON', '3D31', 'DIII STATISTIKA', '081240901056', 'Jl. Sensus 3', '111810436@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810437', 'MUH. TAUFIQ MUKHTAR', '3D31', 'DIII STATISTIKA', '0895803947981', 'Jl. Kebon Nanas Utara 2 No. 23', '111810437@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810440', 'MUHAMAD FAHMI RAIS', '3D32', 'DIII STATISTIKA', '082399753534', 'Jl. Penggalang IV No. 25 RT 008 RW 010, Kel. Palmeriam, Kec. Matraman, Kota Jakarta Timur, DKI Jakarta 13140', '111810440@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810448', 'MUHAMMAD ARY ARZAKY', '3D31', 'DIII STATISTIKA', '087865952569', 'Jl. Otista Ii, Bonasut, No. 24 RT 4 RW 9, Kel. Bidaracina, Kec. Jatinegara', '111810448@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810449', 'MUHAMMAD BENNI BARAKATI', '3D32', 'DIII STATISTIKA', '085219328262', 'Gg Sholihun No. 13D, Kel. Bidaracina, Jatinegara, Jakarta Timur', '111810449@stis.ac.id', 'RB06', 'S012', '602', 'J003', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810457', 'MUHAMMAD HIDAYAT', '3D32', 'DIII STATISTIKA', '083897341658', 'Jl. Kebon Sayur 1, No. 20, RT. 05, RW. 15, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur, DKI Jakarta', '111810457@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810472', 'MUHAMMAD RENALDY AZIS', '3D31', 'DIII STATISTIKA', '082291886261', 'Jl. Kebon Sayur 1 No. 11', '111810472@stis.ac.id', 'RB08', 'S006', '001', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810474', 'MUHAMMAD RIFQI WARDANA', '3D32', 'DIII STATISTIKA', '085241351999', 'Jl. Sungai Tanamea Lorong 1 No. 4', '111810474@stis.ac.id', 'RB06', 'S012', '001', 'J003', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810476', 'MUHAMMAD RYZKY', '3D31', 'DIII STATISTIKA', '083150533760', 'Guntung Manggis, Banjarbaru Kalimantan Selatan', '111810476@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810494', 'NAJMA HAYANI', '3D31', 'DIII STATISTIKA', '082155645223', 'Jl. Otista Raya Gg. Mangga No.15 RT. 001 RW. 003', '111810494@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810515', 'NUR ZAHRA SAHARIA', '3D31', 'DIII STATISTIKA', '0853411166666', 'Jl. Masjid', '111810515@stis.ac.id', 'RB06', 'S013', '001', 'J004', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810516', 'NURDIANA SAFITRI', '3D31', 'DIII STATISTIKA', '087849522302', 'Jl. Sensus II No.16 RT 07 RW 04, Bidaracina, Jatinegara, Jakarta Timur', '111810516@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810518', 'NURUL AFRIANI', '3D32', 'DIII STATISTIKA', '082210509239', 'Jl. Sensus I No.2, RT 001 RW 04, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur 13330', '111810518@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810521', 'NURUL HIKMAH', '3D32', 'DIII STATISTIKA', '082292183514', 'Jl. Saleh Abud No. 19', '111810521@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810525', 'ONESIMUS JANDRI SITOHANG', '3D32', 'DIII STATISTIKA', '082153833228', 'Jl. MT Haryono Nomor 40, Sintang, Kalimantan Barat', '111810525@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810526', 'ONNY FATIMAH', '3D31', 'DIII STATISTIKA', '082359586778', 'Jl. Sensus 2B No 16 RT 08 RW 04, Bidara Cina', '111810526@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810541', 'RAFLY IRSANDI SAPUTRA', '3D31', 'DIII STATISTIKA', '082292316096', 'Jln. Kebon Nanas Utara 2 no.23 rt. 05/rw.07, DKI Jakarta, Jakarta Timur, Jatinegara', '111810541@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810543', 'RAHMADATHUL WISDAWATI', '3D32', 'DIII STATISTIKA', '083183242109', 'Jl. Otista Raya, Gg Solihun, RT/RW 15/08, No. 10, Kelurahan Bidaracina, Kecamatan Jatinegara', '111810543@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810546', 'RAJA MUHAMMAD ZHICKRI PRATAMA', '3D32', 'DIII STATISTIKA', '081363056211', 'Jl. Otista II, Bonasut, Nomor 25A RT6/RW9, Bidara Cina, Jatinegara', '111810546@stis.ac.id', 'RB06', 'S014', '001', 'J003', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810549', 'RAMIDA ADE SAPRIYATMI', '3D31', 'DIII STATISTIKA', '083831341443', 'Jl. Saleh Abud No 19 RT 014/RW 008 Jatinegara', '111810549@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810565', 'RIFALDI', '3D31', 'DIII STATISTIKA', '081348170946', 'Dusun Beliung, Desa Pusaka, Kecamatan Tebas, Kabupaten Sambas, Kalimantan Barat', '111810565@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810574', 'RISKA', '3D32', 'DIII STATISTIKA', '081775123499', 'Jl. Labuhan Lombok, Desa Batuyang RT/RW 001/001, Kecamatan Pringgabaya, Lombok Timur. (Dibelakang Puskeswan Batuyang)', '111810574@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810575', 'RISMA DILLAH', '3D31', 'DIII STATISTIKA', '089691593644', 'Jl. Gg. H. Misnen RT 005 RW 09 No. 20, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur. Kode Pos : 13330', '111810575@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810595', 'SALSABILA MUNA SHOBIHA', '3D32', 'DIII STATISTIKA', '085820623430', 'Jl. Merak No. 17 RT/RW 016/008 Kel. Sampit, Kec. Delta Pawan, Kab. Ketapang, Kalbar', '111810595@stis.ac.id', 'RB06', 'S009', '001', 'J003', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810603', 'SHAFIRA CAESARI JULIANITA', '3D32', 'DIII STATISTIKA', '085242800440', 'Lorong Gipsy Koloncucu RT 016 RW 06 No 715 (Samping Pangkalan Kayu) Kel.Toboleu Kec.Kota Ternate Utara ,Kota Ternate-Provinsi Maluku Utara', '111810603@stis.ac.id', 'RB06', 'S012', '001', 'J004', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810604', 'SHELA YULFIA HADIST', '3D31', 'DIII STATISTIKA', '081266817895', 'Jl. Otista 3 No. 44A', '111810604@stis.ac.id', 'RB06', 'S004', '600', 'J004', NULL, NULL, '2020-11-13 01:59:59', 1, NULL),
('111810616', 'SUCI RAMADHANTY', '3D32', 'DIII STATISTIKA', '087736979234', 'Jl. Sensus II, RT 007 RW 004, No. Rumah 16, Kelurahan Bidara Cina, Jatinegara, Jakarta Timur', '111810616@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810620', 'TAMIEM DAIKY', '3D32', 'DIII STATISTIKA', '0895394482047', 'Jl. Robusta Raya No.31, RT.2/RW.7, Pd. Kopi, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460', '111810620@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810625', 'THEOVILUS SENFIARDUS SAMU', '3D31', 'DIII STATISTIKA', '081231079673', 'Gang Mangga', '111810625@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810627', 'TIARA ARIRADANA', '3D31', 'DIII STATISTIKA', '082154595242', 'Jl. H. Yahya No.58 RT 14 RW 10, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '111810627@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810631', 'TIWI NURSAFITRI', '3D31', 'DIII STATISTIKA', '087757770917', 'Jl.Penghulu No.16A Bonasut', '111810631@stis.ac.id', 'RB06', 'S014', '001', 'J004', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810638', 'UMMU KALTSUM', '3D32', 'DIII STATISTIKA', '085338292302', 'Jl. Pasar Timbul No. 234 RT 19 RW 16, Kapuk, Cengkareng, Jakarta Barat. Kode Pos: 11720', '111810638@stis.ac.id', 'RB06', 'S012', '601', 'J003', NULL, NULL, '2020-11-13 01:59:04', 1, NULL),
('111810639', 'URAY ALDI RIVALDI', '3D31', 'DIII STATISTIKA', '089649338849', 'Jl. Kebon Nanas Selatan 2 No. 57, Cipinang Cempedak, Jatinegara.', '111810639@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810644', 'VIKI TRIA ZIANRINI', '3D31', 'DIII STATISTIKA', '081270613797', 'Jl. Kebon Nanas Selatan 3 No 47', '111810644@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('111810645', 'VINANDA SONYA PERMATASARI', '3D32', 'DIII STATISTIKA', '089698254341', 'Jl. Parit Bugis Gg Persada, Kuburaya, Kalimantan Barat', '111810645@stis.ac.id', 'RB06', 'S004', '600', 'J005', NULL, NULL, '2020-11-13 01:59:59', 1, NULL),
('111810649', 'VIVIN ADRI YANTI LIMBONG', '3D31', 'DIII STATISTIKA', '081315220291', 'Kecamatan Sungai Melayu Rayak, Kab Ketapang, Kalimantan Barat', '111810649@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810654', 'WILHELMINA MARIA ROSA MYSTICA SAIK', '3D32', 'DIII STATISTIKA', '085238770409', 'Jl. Kebon Sayur, RT 001, RW 015, No. 23, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '111810654@stis.ac.id', 'RB06', 'S014', '607', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111810661', 'YOANITA DWI LESTARI', '3D31', 'DIII STATISTIKA', '085347932016', 'Jl. Purna Bakti, Kota Tarakan, Kaltara', '111810661@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('211709915', 'NUR HAYATI BOTUTIHE', '3SE1', 'DIV STATISTIKA', '081383191694', '-', '211709915@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:48', 1, NULL),
('211709938', 'PISCHAL JUANDRA', '3SK2', 'DIV STATISTIKA', '081270891608', 'Jl. Bonsay 1 No 29', '211709938@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211709953', 'RAFLI ANDERSON LAPEBESI', '3SK3', 'DIV STATISTIKA', '082247819383', 'Jl. Setia No.4, RT/RW:005/02, Kampung Melayu, Jatinegara, Jakarta Timur', '211709953@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211709988', 'ROSITA PUJASARI', '3SE1', 'DIV STATISTIKA', '081277262778', 'Jl. Kebun Sayur I No.5 ', '211709988@stis.ac.id', 'RB01', 'S010', '101', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810091', 'ABDURRAHMAN', '3SE1', 'DIV STATISTIKA', '081318531426', 'Jl. Ayub No 6A, Bidara Cina, Kampung Melayu, Jakarta Timur', '211810091@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810092', 'ABYAN AZISWAN', '3SK4', 'DIV STATISTIKA', '082280835053', 'Jl. Kebon Nanas Selatan II', '211810092@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810093', 'ACH MUKHLIS SOLLAHUDDIN', '3SE1', 'DIV STATISTIKA', '083851765861', 'Jl. Otista II, Gang H. Dawel Atas No.19 RT. 04 RW.09, Kel, Rt.4/Rw.9, Bidara Cina, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810093@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810094', 'ADAM NUR WAHYU WIBOWO', '3SE5', 'DIV STATISTIKA', '089602397287', 'Gg. Abdurrahman, Bidara Cina, Jatinegara, Jakarta Timur', '211810094@stis.ac.id', 'RB04', 'S012', '406', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810096', 'ADELLA SITI NURSALIYAWATI', '3SE2', 'DIV STATISTIKA', '087828118592', '-', '211810096@stis.ac.id', 'RB03', 'S013', '001', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810098', 'ADI SAPUTRA MARBUN', '3SE2', 'DIV STATISTIKA', '089660111050', 'Jln. Jendral Sudirman No. 354, Kecamatan Tugumulyo, Kabupaten Musi Rawas', '211810098@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810099', 'ADIMA LU\'LU\'ATUN NABILA MUNAWARDANI', '3SK3', 'DIV STATISTIKA', '082298763604', 'Jl. Kebon Nanas Selatan I No.14, RT.13/RW.8, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810099@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810100', 'ADINDA IZZATA FIKRAT', '3SK5', 'DIV STATISTIKA', '085266069444', 'Gang Sholihun No 10 RT 15 RW 08 Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '211810100@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810101', 'ADINDA PUTRI', '3SK1', 'DIV STATISTIKA', '087876831338', 'Jl. Kebon Nanas Utara 1 No 15B RT003/RW007, Cipinang Cempedak (Kos Bening), Kota Jakarta Timur, Jatinegara, DKI Jakarta, Kode Pos. 13340', '211810101@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810102', 'ADITYA MAULANA IBRAHIM', '3SE1', 'DIV STATISTIKA', '081910269632', 'Jl. Otista II, RT 003 RW 009, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '211810102@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810103', 'ADRYAN SAPTA SETYADINATA', '3SK5', 'DIV STATISTIKA', '082122020474', 'Jl. Praja Lapangan No. 1A, RT 04 RW 01, Kebayoran Lama Selatan, Jakarta Selatan. Kode Pos 12240', '211810103@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810108', 'AFIFAH DHEANY PUTRI', '3SK2', 'DIV STATISTIKA', '081213450015', 'Perumahan Mustika Media Residence, Blok T1 No. 34, Setu, Kab. Bekasi', '211810108@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810109', 'AFIFAH RAHMAH CHANIA', '3SE4', 'DIV STATISTIKA', '08995647313', 'Jl. Kebon Sayur 1 No 8A', '211810109@stis.ac.id', 'RB01', 'S011', '001', 'J004', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810110', 'AFIFATU ZULFA', '3SK3', 'DIV STATISTIKA', '085225869169', 'Jl. Asem No 4C RT 001 RW 003, Kel. Bidaracina, Kec. Jatinegara.', '211810110@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810111', 'AGMI PURNAMA', '3SK4', 'DIV STATISTIKA', '081261004510', 'jl. H yahya no 58 RT.014/RW.10', '211810111@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-10 08:25:20', 1, NULL),
('211810113', 'AGUS HARDIYANTO', '3SE3', 'DIV STATISTIKA', '085842072440', 'Jl. Otista II No.25, RW.9, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810113@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810114', 'AGUSTIEN WAHYUNINGSIH', '3SE1', 'DIV STATISTIKA', '085814007549', 'Jl. Hasbi No.17, Jatinegara, Jakarta Timur', '211810114@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810115', 'AHDIYATY RAHMI A. SUAIB', '3SE5', 'DIV STATISTIKA', '085256789610', 'Jl. Sensus III No.23 RT 003 RW 004, Bidaracina, Jakarta Timur', '211810115@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810118', 'AHMAD BINTANG FA\'IS ADHIBI', '3SK1', 'DIV STATISTIKA', '0895621422865', 'Jl. Kebon Nanas Selatan II RT 06/RW 05, No. 19 (Lantai 2) . Cipinang Cempedak Jatinegara Jakarta Timur.', '211810118@stis.ac.id', 'RB01', 'S010', '101', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810119', 'AHMAD KAMAL', '3SK4', 'DIV STATISTIKA', '089677037507', 'Jl. Sensus 2 No.26 RT.10/RW.04, Kelurahan Bidara Cina', '211810119@stis.ac.id', 'RB03', 'S009', '303', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810120', 'AHMAD RAMADHAN. S', '3SE2', 'DIV STATISTIKA', '089514926170', 'Kost Bu Yanti Jl.Otista Raya No.78/11, RT.3/RW.5, Kp. Melayu, Jatinegara, Kota Jakarta Timur, DKI Jakarta', '211810120@stis.ac.id', 'RB03', 'S009', '303', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810121', 'AHMAD RIFJAYANSYAH', '3SE2', 'DIV STATISTIKA', '089604176106', 'Jln Kebun Sayur 1 No.24', '211810121@stis.ac.id', 'RB01', 'S016', '001', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810122', 'AHMAD SATRIA IRMANTO', '3SE3', 'DIV STATISTIKA', '082302044821', 'Jl Asem No 2 Kel Bidaracina', '211810122@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810123', 'AHSAN ANWAR BASARI', '3SE4', 'DIV STATISTIKA', '089653714660', 'Jl Abdurahman RT 01 RW 09 No 22', '211810123@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810124', 'AININDA RAHMA MAS', '3SK5', 'DIV STATISTIKA', '089650807314', 'Jl. Sensus Iib No.11B RT/RW 9/4, Bidaracina, Jatinegara', '211810124@stis.ac.id', 'RB02', 'S013', '001', 'J005', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810127', 'AJENG NURUL KOMARIAH', '3SK1', 'DIV STATISTIKA', '081212884487', 'Jl.Tanah Tinggi Sawah RT.001/008 No.7 Kel.Tanah Tinggi Kec.Johar Baru, Jakarta Pusat', '211810127@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810130', 'AKHMAD FARKHAN HASIM', '3SE4', 'DIV STATISTIKA', '085728859851', 'Gang KH Sabdalloh RT 03 Bonasut', '211810130@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810131', 'AKHMAD IBNU KATSIR', '3SK2', 'DIV STATISTIKA', '081231881879', 'Jl Otista II gg H Abd Rahman RT001/RW009 No 33', '211810131@stis.ac.id', 'RB04', 'S012', '404', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810133', 'AKWILLA BAHKTI SITINDAON', '3SE3', 'DIV STATISTIKA', '082380909030', 'Jl Kebon Sayur 1 No 15, RT 1/RW 15 , Bidara Cina, Jatinegara ', '211810133@stis.ac.id', 'RB02', 'S009', '206', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810134', 'ALBERT JUNIOR CHEN', '3SE5', 'DIV STATISTIKA', '087735370747', 'Bonasut 2 No 20', '211810134@stis.ac.id', 'RB03', 'S012', '309', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810136', 'ALDI ATMALQI', '3SK3', 'DIV STATISTIKA', '087789926401', 'Jl. Mini 1 RT 07/03 No.3, Bambu Apus, Cipayung, Jakarta Timur 13890', '211810136@stis.ac.id', 'RB08', 'S007', '001', 'J004', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810139', 'ALFAJRI HIDAYAT', '3SE1', 'DIV STATISTIKA', '083167693717', 'Jl. Kebon Nanas Utara No. 15 RT/RW 10/7, Vipinang Cempedak', '211810139@stis.ac.id', 'RB04', 'S013', '407', 'J003', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810142', 'ALFINA NURPIANA', '3SK2', 'DIV STATISTIKA', '089524512753', 'Jl. Pedongkelan Belakang Nomor 4, Cengkareng, Jakarta Barat', '211810142@stis.ac.id', 'RB00', 'S000', '000', 'J005', NULL, NULL, '2020-11-04 15:36:25', 1, NULL),
('211810143', 'ALFIRA MEILAWIJAYA', '3SE1', 'DIV STATISTIKA', '085715827877', 'Jl. Mega No.158 RT03/07 Kp. Ciketing Selatan Ds. Ciketing Udik Kec. Bantar Gebang Kota Bekasi', '211810143@stis.ac.id', 'RB03', 'S009', '302', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810144', 'ALFREDO ABDUL AZIZ', '3SE2', 'DIV STATISTIKA', '081289771037', 'Komplek PU P4S Blok No 9B', '211810144@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810147', 'ALICIA STEFFANNI NADEAK', '3SK4', 'DIV STATISTIKA', '087781152615', 'Jl. Otista 1 A No 18', '211810147@stis.ac.id', 'RB02', 'S009', '206', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810148', 'ALIF MUHAMMAD ARRASYID', '3SK4', 'DIV STATISTIKA', '081293628867', 'Jl. Kebon Nanas Utara II No.13-14 RT.5 RW.7 Kel.Cipinang Cempedak Kec.Jatinegara, Jakarta Timur, DKI Jakarta', '211810148@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810149', 'ALIF RIZKY RAHMAWAN', '3SK5', 'DIV STATISTIKA', '081285093212', 'Jl. Karyawan IV No. 52 RT 002 RW 01, Kel. Karang Timur, Kec. Karang Tengah, Kota Tangerang, Banten', '211810149@stis.ac.id', 'RB01', 'S010', '102', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810150', 'ALIFAH MUWAFIQOH', '3SE3', 'DIV STATISTIKA', '081379127799', 'Jl. Gama 1 RT 13, Kel. Pasar Baru, Kec. Kota Manna, Kab. Bengkulu Selatan, Provinsi Bengkulu', '211810150@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810151', 'ALIFAH ZALFA AZIZAH', '3SK3', 'DIV STATISTIKA', '085786200655', 'Jl. Raya Slawi-Jatibarang Gang Antasena No. 37 RT 16/06, Desa Gumayun, Kec. Dukuhwaru, Kab. Tegal, Jawa Tengah', '211810151@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810152', 'ALIFKA PUTRI ASHADI', '3SK4', 'DIV STATISTIKA', '085648436472', 'Graha Fialdis', '211810152@stis.ac.id', 'RB03', 'S012', '001', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810153', 'ALIVYA SEPTIRIANA PUTRI. S', '3SE2', 'DIV STATISTIKA', '0895602653066', 'Jl. Penghulu No 53 RT 013/RW 010 Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur 13330', '211810153@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810154', 'ALIYYA SALSABILA', '3SK5', 'DIV STATISTIKA', '085325103012', 'Jl Sensus 3 No. 23, Bidara Cina, Jatinegara, Jakarta Timur', '211810154@stis.ac.id', 'RB03', 'S009', '301', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810156', 'ALRIZKI PRASTAMA PUTRA', '3SK1', 'DIV STATISTIKA', '081394457378', '-', '211810156@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810158', 'ALYA AZZAHRA', '3SK1', 'DIV STATISTIKA', '081279725710', 'Jl. H.Yahya No.271 RT1/RW10, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur, DKI Jakarta', '211810158@stis.ac.id', 'RB03', 'S013', '310', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810159', 'ALYA NUR AMALIA', '3SE3', 'DIV STATISTIKA', '081229239325', 'Jl. Otista Raya, Gang Sholihun No.15 RT 15 RW 08 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810159@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810161', 'AMELIA TRI WAHYUNI', '3SK2', 'DIV STATISTIKA', '089616980175', 'Jl. Kebin Nanas Utara 1 No. 15B RT003/RW007 Cipinang Cimpedak', '211810161@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810163', 'AN NIDA FITRI AL FAUZIAH', '3SK3', 'DIV STATISTIKA', '0895390862057', 'Desa Tangkisan, Kecamatan Bayan, Kabupaten Purworejo, Jawa Tengah', '211810163@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810165', 'ANDI ALFITRA PUTRA FADILA', '3SE3', 'DIV STATISTIKA', '085240709724', 'Jln. Kebon Nanas Utara Gg. Ar-Rahim No. 15 RT 10/RW 07 Cipinang Cempedak Jatinegara Jakarta Timur 13340', '211810165@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810167', 'ANDI RAFLI RADJASA ', '3SE5', 'DIV STATISTIKA', '087820196331', 'Jl. Masjid No 25B RT 12 RW 09 Otto Iskandardinata Raya, Jatinegara, Jakarta Timur 13330 ', '211810167@stis.ac.id', 'RB08', 'S004', '800', 'J005', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810168', 'ANDIKA ROY KHIAN MARSELINO', '3SE4', 'DIV STATISTIKA', '083863247240', 'Jl. H. Hasbi No 23', '211810168@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810169', 'ANGEL MARIANA SAGALA', '3SK4', 'DIV STATISTIKA', '082267684941', 'Jl Sensus 1 No 8 RT 004/RW 015, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur ', '211810169@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810170', 'ANGEL RIZKY SHEREN MANURUNG', '3SE2', 'DIV STATISTIKA', '082274391491', 'Jl. Kebon Sayur R I No 10A, RT 5, RW 15, Bidara Cina, Jatinegara,Kota Jakarta Timur, DKI Jakarta', '211810170@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810171', 'ANGGI VIOLITA ILHAM HASIBUAN', '3SE4', 'DIV STATISTIKA', '085359113200', 'Jl. Kebon Nanas Selatan 1, No. 14, RT/RW 13/08, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur', '211810171@stis.ac.id', 'RB01', 'S010', '101', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810172', 'ANINDYA PUTRI', '3SK5', 'DIV STATISTIKA', '082123358478', 'Jl. Cipinang Baru Bunder No.2 RT 001/01 Komplek Kehakiman Kel. Cipinang, Kota Jakarta Timur, Pulo Gadung', '211810172@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810175', 'ANIS RAHMAWATI', '3SE4', 'DIV STATISTIKA', '082198103585', 'Jl. Hj. Yahya No. 51D, Bidara Cina, Jatinegara, Jakarta Timur', '211810175@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810176', 'ANISATULLAILA', '3SK3', 'DIV STATISTIKA', '089615465753', 'Jl. Otista Raya, Gang Mangga, RT 01 RW 03, No 15, Jatinegara, Jakarta Timur, 13330', '211810176@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810179', 'ANNISA DEA FITRI', '3SK1', 'DIV STATISTIKA', '082385526898', 'Jl. Otista Gg. Haji Dawel No.12 ', '211810179@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810180', 'ANNISA FITRIYANI', '3SK2', 'DIV STATISTIKA', '089667543010', 'Kos Graha Fialdis Jl. Saabun', '211810180@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810181', 'ANNISA KAHMILIANI', '3SK3', 'DIV STATISTIKA', '085788037490', 'Jl. H. Yahya No 271', '211810181@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810182', 'ANNISA NUR AZIZAH AHMAD', '3SK4', 'DIV STATISTIKA', '082257507356', 'Dsn. Kesamben, RT.01/RW.08, Kec. Kesamben, Kab. Blitar, Jawa Timur', '211810182@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810184', 'ANNISA SALSABILA AULIA', '3SK5', 'DIV STATISTIKA', '085882032644', 'Komplek RSCM Jl Delima Putih V Blok E3 No 4 Kelurahan Cilebut Barat Kabupaten Bogor', '211810184@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810185', 'ANNISA WASISTIANA', '3SK5', 'DIV STATISTIKA', '082219391836', 'Jl. Otista Raya gg. Abdulrahman RT 001 / RW 009 (Kos Sarah) ', '211810185@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810186', 'ANSKARIUS CHANDRA GOA', '3SE1', 'DIV STATISTIKA', '082113337083', 'Jln. Asem Gang Mangga no 11 RT/RW 003/003 Kelurahan Bidara Cina, Jatinegara', '211810186@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810187', 'ANUGRAH R.H. MARBUN', '3SE5', 'DIV STATISTIKA', '082161002763', 'Jl. Sensus, Kbn Sayur no.47 RT 006/04, Bidara Cina, Jatinegara', '211810187@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810188', 'ANWAR IBRAHIM', '3SK2', 'DIV STATISTIKA', '082233830050', 'Jl. Kebon Nanas Utara Gang Ar Rahim No. 15 Cipinang Cempedak Jatinegara Jakarta Timur DKI Jakarta 13340', '211810188@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810189', 'ANZILNA LUTHFA ASYFIYA\'', '3SE3', 'DIV STATISTIKA', '082137183739', 'Krapyak Kulon RT 5 Panggungharjo  Sewon Bantul D.I.Yogyakarta 55188', '211810189@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810190', 'ARDELIA RARAS NISREYASA', '3SK1', 'DIV STATISTIKA', '089642369608', 'Jl. Prof. Dr. Hamka RT01/10 No. 47 Gaga, Larangan, Tangerang, Banten', '211810190@stis.ac.id', 'RB08', 'S006', '001', 'J005', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810191', 'ARDHAN SETYO NUGROHO', '3SE4', 'DIV STATISTIKA', '0895338361522', 'Gg Ontoseno, Ds Ujunggede, RT/RW 01/05, Kecamatan Ampelgading, Kabupaten Pemalang', '211810191@stis.ac.id', 'RB02', 'S009', '207', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810192', 'ARI MAHENDRA', '3SK3', 'DIV STATISTIKA', '085967011266', 'Jl. Otista 2, Jatinegara', '211810192@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810200', 'ASKAR SUBRIANDI ', '3SE1', 'DIV STATISTIKA', '082115597213', 'Gg K. H Sabdalloh No 4, Kebon Nanas Utara', '211810200@stis.ac.id', 'RB03', 'S012', '308', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810201', 'ASSYIFA MARETTA ILMARAHMA', '3SE4', 'DIV STATISTIKA', '081324893426', 'Jl.Otista Raya Gg.Abdur-Rahman', '211810201@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810204', 'AULIA BRILLIANY WIBOWO', '3SK2', 'DIV STATISTIKA', '082322585501', 'Jl. Mulia No. 20 RT/RW 008/008, Bidaracina, Jatinegara, Jakarta Timur 13330', '211810204@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810206', 'AYU AINA NURKHALIZA', '3SK3', 'DIV STATISTIKA', '081410231905', 'Jl. Kebon Nanas Selatan II No.36 RT 6 RW 5, Kel. Cipinang Cempedak, Jatinegara, Jakarta Timur 13340', '211810206@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810207', 'AZMI FAISAL', '3SE2', 'DIV STATISTIKA', '082241496161', 'Jl Asem No.24A Bidaracina Jakarta Timur', '211810207@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810208', 'AZZAHRA SHYFA DIENI ISLAM', '3SE5', 'DIV STATISTIKA', '081222624469', 'Gang Sensus I No. 15 RT 01 RW 004 Jatinegara, Jakarta Timur', '211810208@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810209', 'AZZAHRA ZAUZA INNISWA RAHMADHANA', '3SE1', 'DIV STATISTIKA', '089604350485', 'Kos Orange Jl. Abdul Rahman No 34a, RT 002 RW 009 , Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur 13330', '211810209@stis.ac.id', 'RB08', 'S006', '001', 'J004', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810210', 'AZZAM MAJDI ASYSYAHIDA', '3SK4', 'DIV STATISTIKA', '081318431104', 'Kos Aisyah, Bonasel', '211810210@stis.ac.id', 'RB01', 'S010', '103', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810211', 'BAGASKORO CAHYO LAKSONO', '3SE5', 'DIV STATISTIKA', '085939600496', 'Ds Ngablak, RT 1 RW 9, Kec Cluwak, Pati', '211810211@stis.ac.id', 'RB02', 'S004', '200', 'J001', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810212', 'BARI RIZKI PRATAMA', '3SE2', 'DIV STATISTIKA', '085691367372', 'Jl. Pondok Sari II No 26A RT 010 / RW 010 Kel. Kalisari Kec. Pasar Rebo Jakarta Timur', '211810212@stis.ac.id', 'RB02', 'S013', '203', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810214', 'BINTANG ISMIARIZQI', '3SE5', 'DIV STATISTIKA', '089530027770', 'Jl. Gang H. Misnen RT 005 RW 09 No. 20 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810214@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810215', 'BINTANG IZZATUL FATAH', '3SE3', 'DIV STATISTIKA', '087720779640', 'Jl Jampea Lr. 19 No. 5 Koja Jakarta Utara', '211810215@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810216', 'BUDIMAN ALLER SILABAN', '3SE1', 'DIV STATISTIKA', '082387765753', 'Jl. Kebun Sayur 1', '211810216@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810217', 'CANDRA KURNIAWAN', '3SE2', 'DIV STATISTIKA', '089691769188', 'Jl Kebon Nanas Utara No 15 RT/RW 10/08, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810217@stis.ac.id', 'RB00', 'S000', '000', 'J001', NULL, NULL, '2020-11-04 15:36:25', 1, NULL),
('211810218', 'CAROLINE UE HUMBLE BANUREA', '3SE2', 'DIV STATISTIKA', '089513913362', 'Jln.Otista II, Gg.H.Misnen No.05', '211810218@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810219', 'CESARIO HANIF NAUFAL', '3SE3', 'DIV STATISTIKA', '081215975803', 'Gg. H. Abd Rahman No.34, RT.4/RW.9, Kampung Melayu, Jatinegara, Jakarta Timur', '211810219@stis.ac.id', 'RB03', 'S013', '001', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810221', 'CHAULA RAMADHANI PUTRI', '3SK4', 'DIV STATISTIKA', '082145587341', 'Jl. Marsma Hardadi, Mess Gelatik A-4, Halim Perdanakusuma', '211810221@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810222', 'CHINDI PRASTIWI', '3SK5', 'DIV STATISTIKA', '081908757992', 'Jl. Raya Hankam, Gg. Rambutan RT/RW 006/03 no. 12, Jatimurni, Pondok Melati, Kota Bekasi, Jawa Barat.', '211810222@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810225', 'CHRISTANTY JOSEPHINE', '3SK1', 'DIV STATISTIKA', '081297334221', 'Komplek Ardhini II Jl. Bima No. 60 RT 004 / RW 008', '211810225@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810226', 'CLARESA AYU DYA', '3SK2', 'DIV STATISTIKA', '082284595721', 'Jl. Masjid, Bidaracina, Jatinegara', '211810226@stis.ac.id', 'RB03', 'S013', '311', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810228', 'DAFFA HENDRAWAN', '3SE3', 'DIV STATISTIKA', '08176387935', 'Jl. Raya Pisangan 14/07 No.78 Desa Satria Mekar Kec. Tambun Utara', '211810228@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810230', 'DANIEL DIAN PRATAMA SIBURIAN', '3SE4', 'DIV STATISTIKA', '081250626965', 'Jl. Amal Gg. Durian, Kab. Sintang, Kalimantan Barat', '211810230@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810235', 'DENA APRILIANA', '3SK3', 'DIV STATISTIKA', '081310432774', 'Jl. H. Hasbi Dalam No.9 RT12 RW09 Kel. Bidara Cina, Kec. Jatinegara', '211810235@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810236', 'DENITA DWI ANDIANY', '3SK1', 'DIV STATISTIKA', '083820888402', 'Jl. Otista Raya, Gg. Abdul Rahman NO 16 RT 01 RW 09', '211810236@stis.ac.id', 'RB04', 'S012', '405', 'J004', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810238', 'DEVANI AYUNA NINGSIH', '3SE3', 'DIV STATISTIKA', '082280490771', 'Gang Sensus I No. 15 RT 01 RW 004, Kel. Bidaracina, Jatinegara, Jakarta Timur', '211810238@stis.ac.id', 'RB03', 'S012', '308', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810239', 'DEVIANA SAFITRI HERLIANTI', '3SE5', 'DIV STATISTIKA', '085717828329', 'Perum. Pejuang Jaya Jl. Komando II Blok C RT 05 RW 12 No. 492 Bekasi', '211810239@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810240', 'DEVO RAMA', '3SK5', 'DIV STATISTIKA', '082119860771', 'Jl Asem Gang Mangga No 24A Bidaracina Jatinegara Jakarta Timur', '211810240@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810242', 'DIAN ANGGRAINI JULITA', '3SE1', 'DIV STATISTIKA', '081314813094', 'Gg Mangga', '211810242@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810243', 'DICKI ABDUROHMAN', '3SK1', 'DIV STATISTIKA', '083813485942', 'Jl. Sensus II, No. 30, Kel. Bidaracina, Kec. Jatinegara, Kota Jakarta Timur', '211810243@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810244', 'DIKI NURFAIZ', '3SE5', 'DIV STATISTIKA', '089618765585', 'Jl Sensus 2C No.16', '211810244@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810246', 'DIMAS ARIO YUDANKO', '3SE4', 'DIV STATISTIKA', '082223077789', 'Jl. Sensus III RT.004 RW.014 No. 10 Bidaracina, Jatinegara, Jakarta Timur', '211810246@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810247', 'DIMAS HUTOMO PUTRO', '3SK2', 'DIV STATISTIKA', '085794571883', 'Jln. Ayub no 6A RT.15/RW.8, Kp. Melayu Kecamatan Jatinegara Kota, Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810247@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810248', 'DIMAS RIZQI SUGENG HUSADA', '3SE1', 'DIV STATISTIKA', '085328714704', 'Jl. Kebon Nanas Utara 2 No 25 RT 05 RW 07, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810248@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810249', 'DINA ANGGRAENA', '3SK2', 'DIV STATISTIKA', '085783384942', 'Dusun II Rejo Dadi, RT 011 RW 003, Ratna Daya, Raman Utara, Lampung Timur, Lampung', '211810249@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-10 08:29:42', 1, NULL),
('211810251', 'DONI SETIAWAN', '3SK3', 'DIV STATISTIKA', '085868310992', 'Jl. Kebon Nanas Utara II no. 21 RT. 005/RW. 007, Cipinang Cempedak, KOTA JAKARTA TIMUR, JATINEGARA, DKI Jakarta, ID, 13340', '211810251@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810252', 'DWI KARTIKA SARI', '3SE4', 'DIV STATISTIKA', '087734027939', 'Jl. Otista 64A Gang Sensus 1 No.13 RT.1 RW.4 Kelurahan Bidaracina, Jatinegara, Jakarta Timur, DKI Jakarta, 13330', '211810252@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810253', 'DYAH AYU NURHAYATI', '3SK4', 'DIV STATISTIKA', '089673308242', 'Karangkembang, Alian, Kebumen, Jawa Tengah', '211810253@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810255', 'EDMUNDUS ALEXANDRO', '3SE5', 'DIV STATISTIKA', '081235342660', 'Jl. Otista II No 24', '211810255@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810257', 'EDO KURNIAWAN', '3SE2', 'DIV STATISTIKA', '081933750286', 'Jl. Kebon Sayur 1 No. 20 RT 05 RW 15, Bidaracina, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta 13310', '211810257@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810263', 'ELSA NUR ISMADITA', '3SK5', 'DIV STATISTIKA', '085655166133', 'Jl. Sensus II, No.9a, RT.02/RW.04, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, Provinsi DKI Jakarta', '211810263@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810264', 'ELFIRA NUR ISLAMIYAH', '3SE1', 'DIV STATISTIKA', '085242727362', 'Jl. Otista Gg. Haji Dawel No. 12  RT 05/ RW 09  Kelurahan Bidara Cina', '211810264@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810265', 'ELYZA NURUL HAPSARI', '3SK1', 'DIV STATISTIKA', '082247142007', 'Jl.  Otista 2 No.16 RT 006 RW 009, Bidaracina, Jatinegara, Jakarta Timur, DKI Jakarta', '211810265@stis.ac.id', 'RB08', 'S004', '800', 'J004', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810268', 'ENDAH CAHYA RIZKI SUHANDA', '3SE2', 'DIV STATISTIKA', '085810291931', 'Bojong Depok Baru, Jl. Sawo 1 DK 2 RT 02 RW 08, Bojong Gede, Bogor', '211810268@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810269', 'ENGGAR RATNA SAPUTRA', '3SK4', 'DIV STATISTIKA', '085879978398', 'Jl. Kebon Nanas Selatan II No. 21B RT 10 RW 08, Cipinang Cempedak, Jatinegara, Jakarta Timur, DKI Jakarta, 13340', '211810269@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810271', 'ERISA', '3SK2', 'DIV STATISTIKA', '082278763070', 'Jl Otista, Gang H Dawel No 12, RT 05/RW 09, Bidara Cina', '211810271@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810272', 'ERLIANA NURUL FATIHAH', '3SK3', 'DIV STATISTIKA', '085642292303', 'Jl. Otista Raya, gg. Abdul Rahman No.16 RT 1 RW 9, Kampung Melayu, Jatinegara, Jakarta Timur', '211810272@stis.ac.id', 'RB02', 'S012', '204', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810273', 'ERLYNA NURHALIZA PRAMESTI', '3SK3', 'DIV STATISTIKA', '081290897184', 'Jl. Otista 2, No. 29, RT 003 RW 09, Bidara Cina, Jatinegara', '211810273@stis.ac.id', 'RB03', 'S009', '001', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810274', 'ERSA AMOZA SITA', '3SK4', 'DIV STATISTIKA', '081340236492', 'Jl. Mesjid No 20', '211810274@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810276', 'ETSA PRIMANDA', '3SK5', 'DIV STATISTIKA', '082243568523', 'Jl. Kebon Nanas Selatan I No. 18A, RT 6 RW 8 Kelurahan Cipinang Cempedak', '211810276@stis.ac.id', 'RB04', 'S012', '001', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810277', 'FADHEL IMAM HAICHAL TANJUNG', '3SE3', 'DIV STATISTIKA', '08811199096', 'Jl. Kebon Nanas Utara No. 43 RT 08 RW 07, Kelurahan Cipinang Cempedak, Kecamatan Jatinegara, Jakarta Timur, 13340', '211810277@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810279', 'FADHLULLAH', '3SK5', 'DIV STATISTIKA', '081279550172', 'Jl. Otista Raya gg.mangga RT.003 RW.003 No.24 Kel.Bidara Cina Kec.Jatinegara Jakarta Timur 13330', '211810279@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810281', 'FAHRIZA RIANDA', '3SE1', 'DIV STATISTIKA', '0895613327193', 'Jl Kebun Nanas Utara No 25 RT 4 RW 7 Cipinang Cempedak Jakarta Timur', '211810281@stis.ac.id', 'RB04', 'S004', '400', 'J001', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810282', 'FAHRUNNISA MAHARANI', '3SK4', 'DIV STATISTIKA', '085267172407', 'Jln.H.Yahya No.58 RT.14 RW.10 Kelurahan Bidara Cina', '211810282@stis.ac.id', 'RB03', 'S012', '307', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810283', 'FAIQ NUR HUDA', '3SE4', 'DIV STATISTIKA', '085216114162', 'Kos Sinaga, Jln. Kebon Sayur 1, dekat pos FBR', '211810283@stis.ac.id', 'RB08', 'S004', '800', 'J001', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810284', 'FAIRUZ AFIFAH REEFANA POERI', '3SK5', 'DIV STATISTIKA', '082115068362', 'Jl. Masjid No 20', '211810284@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL);
INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('211810285', 'FAISAL SIDDIQ', '3SK1', 'DIV STATISTIKA', '087838737993', 'Jl. Otista 2, RT 3 RW 9 dekat Masjid Al Kamiliyah kos kosan Haji Anang warna biru Kelurahan Bidara Cina, Jatinegara Jakarta Timur, DKI Jakarta – 13330', '211810285@stis.ac.id', 'RB04', 'S012', '405', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810286', 'FAJAR AKHMAD ANSHORI', '3SE5', 'DIV STATISTIKA', '081329249520', 'Otista II ', '211810286@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810287', 'FAJAR BERLIAN', '3SE4', 'DIV STATISTIKA', '082278868876', 'Rejomulyo Palas, Kabupaten Lampung Selatan', '211810287@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810289', 'FAKHRURRAZI HAMDANI', '3SK2', 'DIV STATISTIKA', '08239118944', 'Jl. HR Subrantas, Gg Bina Karya no.2, Kel. Tuah Karya, Kec. Tampan, Kota Pekanbaru, Riau', '211810289@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810290', 'FANI FAJRIANI', '3SK1', 'DIV STATISTIKA', '085763245269', 'Jl. H. Yahya No.271, RT.1/RW.10, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810290@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810292', 'FARADILA AGUSTINA THALIA', '3SE3', 'DIV STATISTIKA', '089636083881', 'Jl. Kebon Nanas Selatan II No.12, RT.11/RW.08, Cipinang Cempedak, Jakarta Timur', '211810292@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810294', 'FARHAN REZA KUSUMA', '3SK3', 'DIV STATISTIKA', '081334387032', 'Jl. Kebun Nanas Utara 2 No. 21 RT05 RW07 Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810294@stis.ac.id', 'RB02', 'S012', '201', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810295', 'FARICHA ZAHARA ALCHASANAH', '3SK5', 'DIV STATISTIKA', '083840196402', 'Jl. Sensus 3 No.23', '211810295@stis.ac.id', 'RB01', 'S016', '001', 'J004', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810296', 'FARID HARNANTO', '3SK1', 'DIV STATISTIKA', '082147437924', 'Otista 2', '211810296@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810297', 'FARIZ APRILIANZAH', '3SE5', 'DIV STATISTIKA', '081230498223', 'Jl. Kebon Nanas Selatan No 15, Cipinang Cempedak,Jatinegara,Jakarta Timur', '211810297@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810298', 'FATHANYA PUJA ANGGARESA', '3SK2', 'DIV STATISTIKA', '08179933270', 'Perumahan Kapital Raya Blok D No. 1 RT 01 RW 021, Kel. Belian, Kec. Batam Kota, Batam, Kepulauan Riau', '211810298@stis.ac.id', 'RB03', 'S009', '301', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810302', 'FAYADH ABIYYI', '3SK4', 'DIV STATISTIKA', '089683830589', 'Desa Bandung RT 01 RW 03 Kecamatan Kebumen Kabupaten Kebumen Jawa tengah', '211810302@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810303', 'FEBRIYENI SUSI', '3SE4', 'DIV STATISTIKA', '087885240163', 'Jl. Semar, Bekasi', '211810303@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810305', 'FERRY MARGANDA SIREGAR', '3SE1', 'DIV STATISTIKA', '081362711331', 'Jl. Mulia No.16, RT08/RW08, Kampung Melayu, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, DKI. Jakarta, 13330', '211810305@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810307', 'FINA FAUZIYAH ', '3SK3', 'DIV STATISTIKA', '08987865177', 'Gang H. Abdurrahman RT.01/RW.09 Jatinegara, Jakarta Timur', '211810307@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810308', 'FIRDAYANTI AMIR', '3SE5', 'DIV STATISTIKA', '082293473154', 'Jl sensus 2c no 2 RT 003 RW 04 Bidara Cina 13330', '211810308@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810310', 'FITRI NOOR HIKMAH', '3SK4', 'DIV STATISTIKA', '085211838814', 'Jl. Sensus 1 No.8', '211810310@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810311', 'FIVA RENAS OKTI DEWANTI', '3SE2', 'DIV STATISTIKA', '087715206266', 'Jl. Otista Raya, Gang Sholihun No. 17 RT 13 RW 09 (Kos Bu Kiki), Kode pos 13330, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810311@stis.ac.id', 'RB04', 'S004', '400', 'J004', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810313', 'FRANSHOLY ADE RISKI', '3SK2', 'DIV STATISTIKA', '089669466400', 'Jl Otista 3, gang Kebon Nanas Utara 1 No. 6 RT 02/07, Kelurahan Cipinang Cempedak, Jakarta Timur', '211810313@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810315', 'GABRIELA NATALIE AMELIA MAHARANIE ', '3SK5', 'DIV STATISTIKA', '085271803725', 'Gg. Sholihun No. 10, Otista Raya', '211810315@stis.ac.id', 'RB08', 'S008', '001', 'J004', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810316', 'GEDE NANDA WARTAYANA', '3SE2', 'DIV STATISTIKA', '081237175537', 'Jl. Setia No. 4', '211810316@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810317', 'GHINA ROFIFA SURAYA', '3SK1', 'DIV STATISTIKA', '082286243765', 'Jl. Wr. Supratman No. 18, Simpang Apar, Kecamatan Pariaman Utara, Kota Pariaman, Sumatera Barat', '211810317@stis.ac.id', 'RB04', 'S013', '001', 'J004', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810319', 'GRESTI JELITA SARI', '3SE1', 'DIV STATISTIKA', '085851757874', 'Jl. Masjid No. 35 RT 10 / RW 09, Bidara Cina, Kp. Melayu, Jatinegara, Jakarta Timur', '211810319@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810320', 'HABEL NITALESSY', '3SK5', 'DIV STATISTIKA', '082291162528', 'Jl. Otista II No 26 RT.04/RW.09', '211810320@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810321', 'HABNI HAMARA AZMATIY', '3SK1', 'DIV STATISTIKA', '083838201166', '-', '211810321@stis.ac.id', 'RB02', 'S013', '001', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810322', 'HAFIZUR RAHMAN', '3SK1', 'DIV STATISTIKA', '082389486996', 'Gg.Mangga No.20', '211810322@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810323', 'HANIFA CHOIRUNNISA', '3SE2', 'DIV STATISTIKA', '085285471162', 'Jl. KH Agus Salim RT 05 RW 07 No.50 Bekasi Jaya Bekasi Timur Kota Bekasi 17112', '211810323@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810324', 'HANIFAH', '3SK2', 'DIV STATISTIKA', '087872275786', 'Jl. Saabun', '211810324@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810326', 'HASYIMUR RUSDI', '3SE1', 'DIV STATISTIKA', '085259479323', 'Jl. Kebon Nanas Utara II No.21', '211810326@stis.ac.id', 'RB01', 'S011', '001', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810328', 'HERBIAN DWI CAHYO', '3SK2', 'DIV STATISTIKA', '081291573798', 'Jl. H.Yahya No.45', '211810328@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810329', 'HERIKA SOFITA PUTRI', '3SE3', 'DIV STATISTIKA', '085328984803', 'Jl Kebon Nanas Utara I No.32 Bidara Cina Jatinegara Jakarta Timur', '211810329@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810330', 'HIJRIAH NUR ISTIFANI', '3SK2', 'DIV STATISTIKA', '085244749762', 'Jl. Otista 2 No 29 ', '211810330@stis.ac.id', 'RB03', 'S012', '309', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810331', 'HUSSEIN ADI PERMANA', '3SK1', 'DIV STATISTIKA', '087700723238', 'Jl. Kebon Nanas Utara I Gg Sabdalloh No 4A RT 03 RW 07 Kelurahan Cipinang Cempedak Jakarta Timur', '211810331@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810332', 'I KADEK WIJAYANTARA', '3SE2', 'DIV STATISTIKA', '085792481054', 'Jl. Otista 2', '211810332@stis.ac.id', 'RB03', 'S009', '302', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810334', 'I WAYAN GEDE ANGGA KRISMAWAN', '3SE3', 'DIV STATISTIKA', '08990113766', 'Jl. Kebon Nanas Selatan 1 No. 18, RT 6 RW 8, Cipinang Cempedak, Jatinegara, Jakarta Timur 13340 (Kos Pasaribu Hijau)', '211810334@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-13 12:57:21', 1, NULL),
('211810337', 'IKA REHULINA OKTARI MONITA SURBAKTI', '3SK4', 'DIV STATISTIKA', '081320919536', 'Jl. Setia No 8', '211810337@stis.ac.id', 'RB02', 'S012', '201', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810338', 'ILHAM AMINU ROSYID ', '3SK3', 'DIV STATISTIKA', '089644086571', 'Jln Kebun Sayur 1 No. 20 RT 03 RW 15, Bidara Cina,  Jatinegara, Jakarta Timur', '211810338@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810341', 'INDAH FATIMAH AZZAHRA', '3SE5', 'DIV STATISTIKA', '081342751791', 'Jl. Kebun Sayur I No. 13 RT/RW 002/015 ', '211810341@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810342', 'INDRI PUSPITA DEVI', '3SK3', 'DIV STATISTIKA', '089626883625', 'Jl Dawel No 8 RT 005 RW 009 Bidaracina Jatinegara Jakarta Timur ', '211810342@stis.ac.id', 'RB08', 'S008', '807', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810344', 'INTAN KHARISMAYANTI', '3SE1', 'DIV STATISTIKA', '085922196464', 'Jl Sribungur Dusun Kalirejo RT/RW 04/08 Desa Jatibaru Kecamatan Tanjung Bintang Kabupaten Lampung Selatan ', '211810344@stis.ac.id', 'RB08', 'S007', '001', 'J005', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810345', 'IRAMA SUKMA FUTRIANI SIMBOLON', '3SE2', 'DIV STATISTIKA', '081395646242', 'Jl.Asem No.77', '211810345@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810346', 'IRENE SAVIRA GABRIELLA SITANGGANG', '3SE4', 'DIV STATISTIKA', '081224181420', 'Jl. Otto Iskandardinata 64A, Gang Sensus I No 13, RT 01/RW 04, Kelurahan Bidaracina, Jatinegara, Jakarta Timur, Kode Pos 13330', '211810346@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810347', 'IRFAN NURHADY', '3SK4', 'DIV STATISTIKA', '082133666247', 'Jl. Kebon Nanas Utara Ii No.25 RT 03/RW 04 Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810347@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810348', 'IRFAN PRASETYA KAMAJAYA', '3SE3', 'DIV STATISTIKA', '087747535594', 'Gg. H. Hasbi 2 No 14 RT 11/RW 09 Kel.Bidaracina,Kec. Jatinegara,Jakarta Timur', '211810348@stis.ac.id', 'RB08', 'S007', '804', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810349', 'IRHAMNI MAULIDAH', '3SE3', 'DIV STATISTIKA', '082276228812', 'Jl. Sensus 1 No 2C, RT/RW 01/04, Bidaracina, Jatinegara, Jakarta', '211810349@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810351', 'ISTU INDAH SETYANINGSIH', '3SE3', 'DIV STATISTIKA', '082226048320', 'Jl. Mulia No.20 (Kost Bu Icah), Bidara Cina, Jakarta Timur', '211810351@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810353', 'IVAN MASDUQI MAHFUDS', '3SE4', 'DIV STATISTIKA', '081216473536', 'Jl. Otista Raya Gang Mangga RT 07 / RW 03 No 5 Bidaracina Jakarta Timur', '211810353@stis.ac.id', 'RB07', 'S002', '707', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('211810355', 'JASIKA LISAYOANA', '3SE5', 'DIV STATISTIKA', '085923182566', '	Graha Fialdis, No. 6A, Jl. Saabun, Kampung Melayu, KOTA JAKARTA TIMUR, JATINEGARA, DKI Jakarta, ID, 13330', '211810355@stis.ac.id', 'RB04', 'S012', '001', 'J004', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810356', 'JODY', '3SE4', 'DIV STATISTIKA', '085264939798', 'Gang Mangga Nomor 20 RT 01 RW 03 Kelurahan Bidaracina Kecamatan Jatinegara Jakarta Timur', '211810356@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810357', 'JOFRI ARDO TIGANNA SEMBIRING', '3SE5', 'DIV STATISTIKA', '081375805747', 'Jl. Setia No. 26', '211810357@stis.ac.id', 'RB02', 'S012', '204', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810358', 'JOHANSEN RENALDI HUTAGALUNG', '3SK5', 'DIV STATISTIKA', '081218690180', 'Jl.Bonasut II No.20 RT.01/RW.07 Kel.Cipinang Cimpedak Kec.Jatinegara, Jakarta Timur', '211810358@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810361', 'JONATHAN SITANGGANG', '3SE1', 'DIV STATISTIKA', '085669037082', 'Jl Kebon Nanas Selatan I No 18A', '211810361@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810362', 'JOSUA REGINAL NAPITUPULU', '3SK1', 'DIV STATISTIKA', '081315450569', 'Jl. Otista II No 25A', '211810362@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810363', 'JUANDO SIALLAGAN', '3SE2', 'DIV STATISTIKA', '085283165467', 'Jl. Melanthon Siregar Pematangsiantar', '211810363@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810364', 'JUDITH RIO OLOAN', '3SK3', 'DIV STATISTIKA', '087777858684', 'Jln. Kebon Baru 4 No. 25, Tebet, Jakarta Selatan', '211810364@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810365', 'JULIA IFFAH SAIFULLAH', '3SK4', 'DIV STATISTIKA', '085728403180', 'Jl. H. Yahya No.271, RT.1/RW.10, Kp. Melayu, Jatinegara, Jakarta Timur', '211810365@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810366', 'KADEK ANGGA WICAKSANA', '3SE3', 'DIV STATISTIKA', '081909011197', 'Jl. Otista II RT 03/09 (Kos Haji Anang Dekat Kali Lantai 2) Kel Bidara Cina', '211810366@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810367', 'KADEK DWI ADITYA PUTRI', '3SK5', 'DIV STATISTIKA', '085858019642', 'Jl. Otista II, RT03/RW09, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, Provinsi DKI Jakarta', '211810367@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810368', 'KADEK DWI MAHARDIKA', '3SE4', 'DIV STATISTIKA', '089518302293', 'Jl. Otista II RT 03 RW 09 Kel Bidara Cina, Jatinegara', '211810368@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810369', 'KANDITA ABDINA', '3SE1', 'DIV STATISTIKA', '082267452316', 'Jln. Otista Raya Gg Mangga No 31 RT 04 RW 03', '211810369@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810371', 'KESZYA GRACIELLA', '3SK2', 'DIV STATISTIKA', '081310102347', 'Jl. Kenari III No. 20 RT 05 RW 05', '211810371@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810372', 'KATRIN EDVIRGIS BERIBE', '3SK1', 'DIV STATISTIKA', '082247249782', 'Jl. Sensus 1 Nomor 8 RT/RW 004/015 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810372@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810373', 'KEYAT AJRIYANTO', '3SE5', 'DIV STATISTIKA', '08815651053', 'Jl. Otista Gg. Sensus 1A/20 RT/RW : 05/15 Kel. Bidaracina, Jakarta Timur.', '211810373@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810374', 'KEZIA SIBUEA', '3SK3', 'DIV STATISTIKA', '081375907912', 'Jl Setia No 4', '211810374@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810375', 'KHOIRON FILSAFAT', '3SE1', 'DIV STATISTIKA', '082361646803', 'Jl. Ayub No. 17, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '211810375@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810379', 'KURNIAWAN TRI YULIANTO', '3SK2', 'DIV STATISTIKA', '085823252854', 'Jl. Sensus IIa No.1 RT 007 RW 004 Bidaracina, Jatinegara, Jakarta Timur', '211810379@stis.ac.id', 'RB04', 'S009', '001', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810380', 'L.M.RIZAL', '3SE2', 'DIV STATISTIKA', '081283353881', 'Desa Liya Bahari Indah, Kec. Wangi-Wangi Selatan, Kab. Wakatobi, Prov. Sulawesi Tenggara, Negara Indonesia', '211810380@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810381', 'LAILA CHOIRUN NI\'MAH', '3SK4', 'DIV STATISTIKA', '085875317881', 'Jl. Mulia No 20, RT 8 RW 8, Bidaracina, Jatinegara, Jakarta Timur 13330', '211810381@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810382', 'LAILY NUR INDAH SARI', '3SE4', 'DIV STATISTIKA', '082301507145', 'Jln Sensus II No 9A RT 002 RW 004 Kel. Bidaracina Jatinegara Jakarta Timur', '211810382@stis.ac.id', 'RB02', 'S009', '001', 'J005', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810384', 'LANA EKA WIBAWA', '3SE2', 'DIV STATISTIKA', '0895616508544', 'Jln. Sensus II No.30 Rt/Rw 002/004 Kel. Bidaracina Kec. Jatinegara Jakarta Timur', '211810384@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810385', 'LARA ALEVA VABIAN', '3SK5', 'DIV STATISTIKA', '089636997206', 'Jl.Gatot Subroto,Ngalau,Padang Panjang Timur,Sumatera Barat', '211810385@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810387', 'LASRO MANGIRING TUA MARBUN', '3SE3', 'DIV STATISTIKA', '082294046523', 'Jl.Mulia No.16,RT 008/RW 008,Kel.Bidara Cina', '211810387@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810388', 'LELY INDAH GURITNO', '3SE2', 'DIV STATISTIKA', '089676078606', 'Jl. Kebon Nanas Selatan 2 No.12', '211810388@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810390', 'LING LYNG FITROTUN NASIHA', '3SE3', 'DIV STATISTIKA', '085745175423', 'Desa Krai, Dusun Krajan, Yosowilangun, Lumajang', '211810390@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810391', 'LISA AGUSTINA', '3SK1', 'DIV STATISTIKA', '081937934280', 'Jl. H. Hasbi No.7, RT 10 / RW 09, Kel.Bidaracina, Kec.Jatinegara, Jakarta Timur', '211810391@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810393', 'M CHAIRUL MUGTI', '3SE4', 'DIV STATISTIKA', '089691941697', 'Jl. Kebon Nanas Selatan 1 No.17 RT 10 RW 08, Kelurahan Cipinang Cempedak, Jatinegara, Jakarta Timur 13340', '211810393@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810395', 'M RIFQI JUNDULLAH', '3SE5', 'DIV STATISTIKA', '0895600525123', 'Jl. Kebon Nanas Selatan 1 No.17 RT 10 RW 08, Kelurahan Cipinang Cempedak, Jatinegara, Jakarta Timur 13340', '211810395@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('211810399', 'MUHAMMAD RIFKY ARIYADI', '3SK5', 'DIV STATISTIKA', '082250704750', 'Jl. Asem No. 4C, RT 01/RW 03 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur, DKI Jakarta, 13330', '211810399@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810401', 'MUHAMMAD SHOLAHUDDIN AL\'ISLAMI', '3SE5', 'DIV STATISTIKA', '082370298532', 'Jl. Otista II No.25, RT.7/RW.9, Kp. Melayu, Jatinegara, Kota Jakarta Timur, DKI Jakarta, Indonesia, 13330', '211810401@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810405', 'MUHAMMAD ALFARIS KURNIAWAN', '3SE3', 'DIV STATISTIKA', '085279727538', 'Jln Otista 3 Gang Kh Sabdallah Kebon Nanas Utara 1, Kontrakan Laa Tahzan, Kel. Cipinang Cempedak, Kec. Jatinegara', '211810405@stis.ac.id', 'RB03', 'S004', '300', 'J001', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810408', 'M. RAJA DARUSSALAM', '3SE1', 'DIV STATISTIKA', '08814082293', 'Gg. H. Acang 03/20 No. 7 Kel. Baktijaya, Kec. Sukmajaya, Kota Depok', '211810408@stis.ac.id', 'RB01', 'S011', '106', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810409', 'MAHARANI IZZATURRAHMA', '3SE4', 'DIV STATISTIKA', '081330338270', 'Jl. Sensus 2B No 11A, Bidaracina', '211810409@stis.ac.id', 'RB08', 'S008', '806', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810410', 'MANCA SATRIA', '3SK2', 'DIV STATISTIKA', '081292525682', 'Jl Haji Yahya No 45, Bidaracina, Jatinegara, Jakarta Timur', '211810410@stis.ac.id', 'RB02', 'S012', '204', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810411', 'MARDHATILLA', '3SK2', 'DIV STATISTIKA', '082182663112', 'Jl. Hasbi Dalem Nomor 9, RT.12, RW.09, Kel. Bidaracina, Jatinegara, Jakarta Timur, 13330', '211810411@stis.ac.id', 'RB02', 'S012', '001', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810413', 'MARINA TIKA SARI', '3SK3', 'DIV STATISTIKA', '089637114559', 'Jl. Sei Padang Gg Buntu No 13 Medan, Sumatera Utara', '211810413@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810415', 'MAULIA SAVANA PUTRI', '3SE5', 'DIV STATISTIKA', '087789671059', 'Jl. Otista Raya Gang Haji Dawel', '211810415@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-10 08:25:20', 1, NULL),
('211810416', 'MAYMANATUL MUFARROHAH', '3SK3', 'DIV STATISTIKA', '08170723421', 'Jl. Sensus IIb Nomor 11B Bidaracina, Jatinegara, Jakarta Timur', '211810416@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810419', 'MIFTAHUL HUDA ARIFANDI', '3SE5', 'DIV STATISTIKA', '081217935550', 'Gg Kh Sabdallah No 4A Jl. Kebon Nanas Utara', '211810419@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810420', 'MILLENIA SUKMA JUNIVA PUTRI', '3SK4', 'DIV STATISTIKA', '082232486475', 'Jl. Kebon Sayur 1 No 6 RT.08 RW.15 Bidaracina', '211810420@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810423', 'MOCHAMMAD NAFI\' DZAKWAN', '3SE2', 'DIV STATISTIKA', '082244995849', 'Jln. Kebon Nanas Utara Gg. Ar-Rahim No. 15 RT 10/RW 07 Cipinang Cempedak Jatinegara Jakarta Timur 13340', '211810423@stis.ac.id', 'RB04', 'S013', '001', 'J003', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810424', 'MOCHAMMAD YUSUF MAULANA', '3SK3', 'DIV STATISTIKA', '085786000460', 'Jl. Mulia No.21, Bidaracina, Jatinegara', '211810424@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810425', 'MOH FAHRURROSI', '3SK4', 'DIV STATISTIKA', '087871916224', 'Jl. Kebun Nanas Utara I No.6 RT.02 RW.07 Cipinang Cempedak, Jatinegara', '211810425@stis.ac.id', 'RB04', 'S009', '401', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810426', 'MOHAMAD NUR ARIFIN', '3SE1', 'DIV STATISTIKA', '085720414741', 'Jl. H. Hasbi No. 5 RT009/RW009, Bidara Cina, Jatinegara, Jakarta Timur', '211810426@stis.ac.id', 'RB01', 'S010', '101', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810427', 'MONICA NADIA RATRI', '3SE5', 'DIV STATISTIKA', '089673909739', 'Jl. Otto Iskandardinatta II No. 23 Rt. 3 / Rw. 9 Kel.  Bidara Cina, Kec.  Jatinegara,  Kota Jakarta Timur,  DKI Jakarta. Kode Pos 13330.', '211810427@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810428', 'MONITA PURBA', '3SE4', 'DIV STATISTIKA', '085283191375', 'Gang Haji Dawel, No.22 RT.05, RW 09', '211810428@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810435', 'MUH. RIFKY FAJRIN HASRIN', '3SK4', 'DIV STATISTIKA', '082192255385', 'Kost Bu Yanti Jl.Otista Raya 78 No.25/11, RT.3/RW.5, Kp. Melayu, Jatinegara, Kota Jakarta Timur, DKI Jakarta .', '211810435@stis.ac.id', 'RB03', 'S012', '001', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810438', 'MUH. YUDI PRATAMA', '3SE3', 'DIV STATISTIKA', '081343632728', 'Jln Sensus 2 RT. 10  RW. 04 No. 26', '211810438@stis.ac.id', 'RB01', 'S016', '109', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810439', 'MUH. ROBBITH DINAK', '3SK5', 'DIV STATISTIKA', '085727017237', 'Jl Kebon Nanas Utara 2 No 25 RT 5 RW 7, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810439@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810441', 'MUHAMAD FIKRI RAMDHANI', '3SK1', 'DIV STATISTIKA', '081218609650', 'Jl. Dadap V No.23 Komplek Atsiri Permai RT.10 RW.12 Desa Ragajay, Kecamatan Bojong Gede, Kabupaten Bogor, Jawa Barat, 16920', '211810441@stis.ac.id', 'RB02', 'S012', '001', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810442', 'MUHAMAD RIZKIANSYAH', '3SK2', 'DIV STATISTIKA', '081563753224', 'Jl. Asem Gg. Mangga No 24A Jakarta', '211810442@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810443', 'MUHAMAD TAUFIK HIDAYAT', '3SE4', 'DIV STATISTIKA', '081293794092', 'RT/RW 05/02 Desa Peusing Kecamatan Jalaksana Kabupaten Kuningan Provinsi Jawa Barat', '211810443@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810444', 'MUHAMMAD AFIYF BESARI', '3SK5', 'DIV STATISTIKA', '082182069641', 'Jl. Kebon Nanas Selatan II No 19 RT 6 RW 5 Lt 2', '211810444@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810447', 'MUHAMMAD ALIYASQI AKBAR', '3SE5', 'DIV STATISTIKA', '081281225494', 'Jl. Trikora Blok A2 RT/RW 001/005 Lingkungan Palamanis, Cirimekar, Cibinong, Bogor', '211810447@stis.ac.id', 'RB02', 'S013', '001', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810450', 'MUHAMMAD BILAL DWI APRIYOGA', '3SK3', 'DIV STATISTIKA', '082124319532', 'Gg. K.H. Sabdalloh No.6, RT.2/RW.7, Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340', '211810450@stis.ac.id', 'RB03', 'S012', '307', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810451', 'MUHAMMAD DAFFA RASDITYA', '3SK4', 'DIV STATISTIKA', '082261644990', '-', '211810451@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810453', 'MUHAMMAD FADHILAH AKBAR', '3SE2', 'DIV STATISTIKA', '087781563110', 'Jl. Hasbi 2 No 14 Cipinang Cempedak, Jakarta Timur', '211810453@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810455', 'MUHAMMAD GHOFUR', '3SE1', 'DIV STATISTIKA', '081294295019', 'Jl. Al-Amanah, Rt 009 Rw 10 No. 90E, Kelurahan Wijaya Kusuma, Kecamatan Grogol Petamburan, Jakarta 11460', '211810455@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810456', 'MUHAMMAD HABIB RABBANI', '3SK5', 'DIV STATISTIKA', '089651506456', 'Gg Arrohim No.15 RT 10/RW 07, Jl. Kebon Nanas Utara, Kelurahan Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, DKI Jakarta', '211810456@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810458', 'MUHAMMAD IBNU HAIDAR BASYIR', '3SE3', 'DIV STATISTIKA', '083114976726', 'Perumahan Puri Citra Blok F4 No 26 Gg. Empat, Pipitan, Walantaka, Kota Serang, Banten', '211810458@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810460', 'MUHAMMAD IKHWAN AGUNG PAMUJI', '3SE2', 'DIV STATISTIKA', '085392194771', 'Bonasel 3', '211810460@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810461', 'MUHAMMAD IMAM AL-MATIN', '3SK1', 'DIV STATISTIKA', '085376731637', 'Jl. Kebon Nanas Selatan 1 No 3 RT 14 RW 8 Kota Jakarta Timur', '211810461@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810462', 'MUHAMMAD IQBAL', '3SE3', 'DIV STATISTIKA', '085155380112', 'Jl. Iswahyudi IV BD1/12 Bumi Dirgantara Permai Bekasi Jawa Barat', '211810462@stis.ac.id', 'RB02', 'S012', '202', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810463', 'MUHAMMAD IQBAL MUHARRAM', '3SK1', 'DIV STATISTIKA', '085717497604', 'Jl. Ayub No.6A Rt 15/08, Kelurahan Kampung Melayu, Kecamatan Jatinegara, DKI Jakarta, 13330', '211810463@stis.ac.id', 'RB08', 'S006', '801', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810464', 'MUHAMMAD KHAIRI ALBANNA S.', '3SK2', 'DIV STATISTIKA', '081383086701', 'Jl. Kebon Nanas Selatan II, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810464@stis.ac.id', 'RB08', 'S008', '807', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810465', 'MUHAMMAD LATIF AL BANNA', '3SK3', 'DIV STATISTIKA', '087780875569', 'Jl Bonasut 2 No 21A Jatinegara Jaktim', '211810465@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810466', 'MUHAMMAD MUHDLOR MUTTAQIN', '3SE4', 'DIV STATISTIKA', '082260412959', 'Jl. Ayub 6A', '211810466@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810467', 'MUHAMMAD MUSLIM SHODIQI', '3SK4', 'DIV STATISTIKA', '085713721220', 'Gg. H. Abd Rahman No.34, RT.4/RW.9, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810467@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810469', 'MUHAMMAD NOR AHYANDI', '3SK3', 'DIV STATISTIKA', '0895703687237', 'Jl. Masjid No.25B RT.12 RW.09', '211810469@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810470', 'MUHAMMAD NUR MEGANTORO', '3SK4', 'DIV STATISTIKA', '085717645443', 'Jl. Kebun Sayur 1 Nomor 5 RT 009 RW 015, Kebon Sayur, Bidaracina, Jatinegara, Jakarta Timur', '211810470@stis.ac.id', 'RB04', 'S009', '403', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810471', 'MUHAMMAD NURUL MAULID', '3SE5', 'DIV STATISTIKA', '082268655575', 'Jl Asem , No.26 RT 14 RW 02', '211810471@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810475', 'MUHAMMAD RIZKY ZIDANE', '3SE4', 'DIV STATISTIKA', '081372942145', 'Jl. Labersa No. D22 Perum GTU RT/RW 003/011, Kel. Air Dingin, Kec. Bukitraya, Pekanbaru, Riau.', '211810475@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810478', 'MUHAMMAD ZIYAD AHMAD', '3SE1', 'DIV STATISTIKA', '082337548682', 'Tuban, Jawa Timur', '211810478@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810480', 'MURSIDAH ROSMALASARI', '3SK5', 'DIV STATISTIKA', '081930902980', 'Jl. Otista II Gang Haji Dawel Nomor 11 A Jakarta Timur ', '211810480@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810482', 'NABILA ANINDITA', '3SK1', 'DIV STATISTIKA', '087703142700', 'Kedensari RT.13 RW.05 Kec. Tanggulangin Kab. Sidoarjo, Jawa Timur', '211810482@stis.ac.id', 'RB02', 'S004', '200', 'J005', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810483', 'NABILA ARDYANA', '3SK4', 'DIV STATISTIKA', '083852787425', 'Pekuncen, RT 01 RW 04 Kec. Sempor, Kab. Kebumen', '211810483@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810485', 'NABILA ISNANI FARRA', '3SK5', 'DIV STATISTIKA', '082112783827', 'Jl. Abdul Rahman No 16 Kos Sarah, Bidara Cina', '211810485@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810486', 'NABILA KHARISMA RAMADHANI', '3SK1', 'DIV STATISTIKA', '085719180308', 'Jl Sensus II, No 9 Bidara Cina', '211810486@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810487', 'NABILA WARDASAKINA', '3SE5', 'DIV STATISTIKA', '082231512156', 'Jln. Kebon Nanas Selatan II, No.12, RT.11/RW.08, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810487@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810488', 'NADIA ARISKA', '3SE1', 'DIV STATISTIKA', '08997453597', 'Jln. H.Yahya No.271 RT/RW 01/010 Bidaracina Jatinegara Jakarta Timur, DKI Jakarta', '211810488@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810489', 'NADIDAH PANGESTIKA', '3SK2', 'DIV STATISTIKA', '082327306546', 'Jl. Sensus 1 No. 2C RT/RW 001/04 Kelurahan Bidara Cina, Jatinegara', '211810489@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810490', 'NADIYAH HANIFAH', '3SK2', 'DIV STATISTIKA', '085211540731', 'Komplek DKI, Jl. Tegal Agus 1 Blok E Bawah RT 002/008 No.36. Joglo, Kembangan, Jakarta Barat, DKI Jakarta', '211810490@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810491', 'NADIYAH RIZQI JIHAN NABILAH', '3SE2', 'DIV STATISTIKA', '082123579370', 'Gang Sensus I No 15, RT01/RW04, Kel. Bidaracina, Jatinegara, Jakarta Timur', '211810491@stis.ac.id', 'RB04', 'S012', '404', 'J004', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810492', 'NADYA NAMIRASEPTI EFENDI', '3SK3', 'DIV STATISTIKA', '085648527377', 'Jl. Kebon Nanas Selatan II No 36 RW 06 RW 05, Kel Cipinang Cempedak, Kec Jatinegara, Jaktim', '211810492@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810493', 'NAFISA QURROTUL A\'YUNI', '3SE3', 'DIV STATISTIKA', '085741791742', 'Jl. Otista II gg. H. Misnen No. 11 RT 007 / RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '211810493@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810495', 'NARWASTU NINGTHIAS', '3SK4', 'DIV STATISTIKA', '085381155268', 'Jln Kebon Sayur No.10 A RT 005/ RW 0015 Jakarta Timur, Jatinegara', '211810495@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810498', 'NAUFAL ABDUL RAFI ZAQI', '3SK1', 'DIV STATISTIKA', '081220211965', 'Jl. Pengadegan Timur II No. 20, Pancoran, Jakarta Timur', '211810498@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810500', 'NI MADE SINDU PADMAYONI', '3SE1', 'DIV STATISTIKA', '085792107997', 'Jl. Otista II RT 003 RW 009 Kos Pak Haji Anang', '211810500@stis.ac.id', 'RB02', 'S004', '200', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810501', 'NI NYOMAN RIA SUGIANDEWI', '3SK5', 'DIV STATISTIKA', '08978246304', 'Jl. Otto Iskandardinatta II No 9', '211810501@stis.ac.id', 'RB01', 'S004', '100', 'J001', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810503', 'NOCA RAHMATULLAH', '3SE4', 'DIV STATISTIKA', '085363563027', 'Jl. H. Yahya, No. 271, RT 01/RW 10, Kelurahan Bidara Cina', '211810503@stis.ac.id', 'RB02', 'S009', '208', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810504', 'NOLA RAMASENTIA', '3SK1', 'DIV STATISTIKA', '087881064233', 'Gang Sensus 2B No.11A RT.09 RW.04 Bidaracina, Jatinegara, Jakarta Timur', '211810504@stis.ac.id', 'RB02', 'S012', '204', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810505', 'NOVALIANISA PERMATA SARI', '3SK2', 'DIV STATISTIKA', '082380683637', 'Jl Kebon Sayur 1 No 18 RT 006 RW 015, Bidaracina, Jatinegara, Jakarta Timur, 13330', '211810505@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810506', 'NOVIA AKHLAQUL KARIMAH', '3SE5', 'DIV STATISTIKA', '083896386814', 'Gg. Hj. Dawel No. 12', '211810506@stis.ac.id', 'RB04', 'S009', '001', 'J004', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810507', 'NOVITRA SAPUTRA', '3SK5', 'DIV STATISTIKA', '081276921301', 'Jl H Hasbi I No 8 RT 10 RW 09', '211810507@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810508', 'NUGRAHENI PUTRI ISTIQOMAH', '3SE2', 'DIV STATISTIKA', '081578594978', 'Ngiri RT/RW 002/003 Ngemplak, Karangpandan, Karanganyar, Jawa Tengah', '211810508@stis.ac.id', 'RB02', 'S009', '001', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810511', 'NUR AFNI EKA SAPITRI', '3SE3', 'DIV STATISTIKA', '085351552683', 'RT03/RW02 Kp. Cihanjuang, Ds. Sukaratu, Kec. Sukaresik, Kab. Tasikmalaya, Jawa Barat', '211810511@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810512', 'NUR MAHARANI PUTRI UNISI', '3SK3', 'DIV STATISTIKA', '081362917485', 'Jl. Otista Raya Gg. Mangga RT 001 RW 003', '211810512@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810513', 'NUR MEILIZA', '3SK3', 'DIV STATISTIKA', '085282698169', 'Jl. Otista Raya, Gang Sholihun No. 15 RT. 15 RW. 08 Bidara Cina', '211810513@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810517', 'NURICHA INDAR DAMAYANTI', '3SK4', 'DIV STATISTIKA', '083834223484', 'Jl. Otista Raya Gg. Abdul Rahman ', '211810517@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810519', 'NURUL AULIA RAHMI', '3SK5', 'DIV STATISTIKA', '085833507279', 'Jl H Yahya No 271 RT 1 RW 10 Jatinegara', '211810519@stis.ac.id', 'RB08', 'S006', '802', 'J004', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810520', 'NURUL DWI AFIFAH', '3SE1', 'DIV STATISTIKA', '081228552547', 'Dusun Wangi RT 04 RW 09 Desa Sumberejo Kec. Pandaan Kab. Pasuruan, Jawa Timur', '211810520@stis.ac.id', 'RB03', 'S004', '300', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810523', 'NURYANTI NURDIN ABDULLAH', '3SE2', 'DIV STATISTIKA', '085325498151', 'Jl Sensus 3, No.3, RT 06 RW 04, Bidara Cina, Jakarta Timur', '211810523@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810524', 'OLVIEA RAHMAYANTI', '3SK1', 'DIV STATISTIKA', '085366528446', 'Jl. Sa\'Abun No.06 RT.10 RW.02, Bidararacina, Jatinegara, Jakarta Timur', '211810524@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810529', 'PINKY AULIA VIRADINA', '3SK2', 'DIV STATISTIKA', '085234961048', 'Jalan bonasel 2 no 14', '211810529@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-10 08:25:20', 1, NULL),
('211810530', 'POPY CHAFIFAH', '3SE2', 'DIV STATISTIKA', '083847849394', 'Jl. Letjen. Panjaitan II No 2 Jember', '211810530@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810531', 'PRATITIS NANDIASOKA ANNISAWATI', '3SK3', 'DIV STATISTIKA', '082313280519', 'Jl. Otista 2, No. 29, RT 003 RW 09, Bidara Cina, Jatinegara', '211810531@stis.ac.id', 'RB01', 'S004', '100', 'J005', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810532', 'PRAWIRA YUDA HUSADA', '3SK3', 'DIV STATISTIKA', '082191022959', 'Jl. Bendungan Hilir Gang 11 No. 7 ', '211810532@stis.ac.id', 'RB01', 'S011', '107', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810533', 'PRETTY ANGELICA LEWAHERILLA', '3SE3', 'DIV STATISTIKA', '082366775521', 'Jl. Semarang No.44 RT 15 RW 06 Krincing, Secang, Kabupaten Magelang, Jawa Tengah', '211810533@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810534', 'PRIDO PUTRA SINAGA', '3SK1', 'DIV STATISTIKA', '085275068340', 'Jl. Asem No 24', '211810534@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810535', 'PRISCILIA ERVINA SIHOMBING', '3SK4', 'DIV STATISTIKA', '082346700273', 'Jl.  Sensus III No 7 RT/RW 003/004', '211810535@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810536', 'PRISILYA WULANDARI', '3SK5', 'DIV STATISTIKA', '089507500356', 'Jl H Hasbi No 12A ', '211810536@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810537', 'PRISKA CLAUDIA WREDANI', '3SK1', 'DIV STATISTIKA', '085884426204', 'Jl. Kerja Bakti No. 17 RT 006/RW 004 Kec. Makasar Jakarta Timur 13570', '211810537@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-10 08:47:38', 1, NULL),
('211810538', 'PUTU ADI MYARSITHAWAN', '3SK2', 'DIV STATISTIKA', '081338772652', 'Banjar Dinas Tumbu Kelod, Desa Tumbu, Kecamatan Karangasem, Kabupaten Karangasem, Bali', '211810538@stis.ac.id', 'RB02', 'S012', '202', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810539', 'RADHIKA ARHANI SIREGAR ', '3SK2', 'DIV STATISTIKA', '082274678277', 'Gang Sholihun, Bidara Cina, Otista Raya', '211810539@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810542', 'RAFQI ARDIANSYAH SURYA', '3SE1', 'DIV STATISTIKA', '082390516715', 'Jl. H Yahya, Nomor 16, RT 007, RW 008, Kelurahan Cipinang Cempedak, Jakarta Timur', '211810542@stis.ac.id', 'RB03', 'S012', '309', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810544', 'RAHMAH ZAHIDAH', '3SE3', 'DIV STATISTIKA', '082376225428', 'Jl Jembatan 2, Kec Kaur Selatan, Kab Kaur, Prov Bengkulu.', '211810544@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810545', 'RAHMAT AGUNG PASARIBU', '3SK4', 'DIV STATISTIKA', '085334851540', 'Jl. Kebon Sayur I', '211810545@stis.ac.id', 'RB01', 'S010', '001', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810550', 'RANGGA AJI WIJAKSONO', '3SE4', 'DIV STATISTIKA', '081385717643', 'Puri Nirwana 3 Jln Anggur 1 Blok DB No.38, Karadenan - Cibinong', '211810550@stis.ac.id', 'RB02', 'S009', '208', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810551', 'RANI APRILIA PUTRI', '3SK4', 'DIV STATISTIKA', '081385230705', 'Jl. Kebun Sayur I No13', '211810551@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810552', 'RD. DAFFA IVAN FEBRIO', '3SK4', 'DIV STATISTIKA', '085711080537', 'Jl.Kemang Buntu No.113 RT 002/004 Kel. Jatibening Baru, Kec. Pondok Gede, Kota Bekasi, Jawa Barat', '211810552@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810553', 'REKAYATI CAHYA ADI', '3SK3', 'DIV STATISTIKA', '08978586352', 'Perum Tingkir Indah E/46 RT/RW 001/008, Tingkir Lor, Tingkir, Salatiga, Jawa Tengah', '211810553@stis.ac.id', 'RB03', 'S013', '310', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810554', 'RENISA MAULINDA AYUDIAH', '3SE4', 'DIV STATISTIKA', '08976669794', 'Jl. Gg H Misnen No.11 Otista 2', '211810554@stis.ac.id', 'RB02', 'S009', '207', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810555', 'RESTIJATI SUSANTRI', '3SK4', 'DIV STATISTIKA', '081259054677', 'Jl.Kebon Nanas Utara I No.15B RT.003/07', '211810555@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810556', 'REYHAN GESANG ALMUAZAM', '3SE2', 'DIV STATISTIKA', '082269323230', 'Jl. H Yahya, Kebon Nanas Utara', '211810556@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810559', 'REZKY YAYANG YAKHAMID', '3SK2', 'DIV STATISTIKA', '083808893838', 'Jl. Pengayoman 2, Desa Babakan RT.02/RW.01, No 52, Kecamatan Kramat, Kabupaten Tegal, Jawa Tengah. Kode Pos : 52181.', '211810559@stis.ac.id', 'RB03', 'S013', '311', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810561', 'RICHARDO VIERY TARIGAN', '3SK5', 'DIV STATISTIKA', '082273686217', 'Jl Sensus 3 No 10 RT 4 RW 14 Bidara Cina, Jatinegara, Jakarta Timur', '211810561@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810562', 'RIDHA HANINDYA WITARI', '3SK5', 'DIV STATISTIKA', '085746698181', 'Jl. Otista 2 No 23', '211810562@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810563', 'RIDHO ILLAHI', '3SK1', 'DIV STATISTIKA', '081315725716', 'Jl. Bonasel 1', '211810563@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810564', 'RIF\'ATUL MINA', '3SK5', 'DIV STATISTIKA', '087888221062', 'Jl. Gg. Berkah 1 No. 7 RT. 11 RW. 09 Kel. Sunter Jaya, Jakarta Utara', '211810564@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810566', 'RIFKA FAKHIRAH DARMAWAN', '3SE5', 'DIV STATISTIKA', '081317945644', 'Jl. Masjid No.20 RT 14 RW 9, Bidara Cina, Jatinegara, Jakarta Timur', '211810566@stis.ac.id', 'RB02', 'S013', '205', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810567', 'RIFKI GUSTIAWAN', '3SE3', 'DIV STATISTIKA', '081213584104', 'Jl. Taruna Jaya II, Gg. Teratai I RT 001 RW 002 Kel. Serdang Kec. Kemayoran Jakarta Pusat, DKI Jakarta 10650', '211810567@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810570', 'RIMA MAYYADAH', '3SK1', 'DIV STATISTIKA', '081327531577', 'Gang Sensus 1 RT 1 RW 4 No. 13', '211810570@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810571', 'RINA DWI OCTAVIANTI ', '3SE4', 'DIV STATISTIKA', '081317259756', 'Jl. Kebon Nanas Selatan I No.14 RT 10 RW 9 ', '211810571@stis.ac.id', 'RB08', 'S007', '803', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810572', 'RINDU TRIMARTA NAFRI', '3SK2', 'DIV STATISTIKA', '082388145830', 'Jl. Otto Iskandar Dinata Raya, Gg Haji Yahya No 6 ( Griya Firamita ) RT 01 RW 09, Kelurahan Bidara China, Jatinegara, Jakarta Timur 13330.', '211810572@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810573', 'RIRIS JUITA SILALAHI', '3SE5', 'DIV STATISTIKA', '082262196889', 'Jln. Kebon Sayur, RT005/RW0015 No.10A, Jakarta Timur, Jatinegara', '211810573@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810579', 'RIZLAN AHMAD FAUZAN', '3SE4', 'DIV STATISTIKA', '085390178009', 'Jl. Asem No.4D RT/RW 001/03, Kelurahan Bidara Cina', '211810579@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810580', 'RIZQ TAUFIQ BAHTIAR RAZENDRYA', '3SK5', 'DIV STATISTIKA', '085748233432', 'Jl. Hasbi I No. 7 RT009/RW009 Kel. Bidaracina', '211810580@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810582', 'RIZQI MUZAKKI', '3SE5', 'DIV STATISTIKA', '082168433579', 'Desa Sikara-Kara IV RT 007/002, Kec. Natal, Kab. Mandailing Natal, Sumatera Utara', '211810582@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810584', 'ROFI ADNANDI', '3SK2', 'DIV STATISTIKA', '085272319942', 'Jl. Kebon Sayur 1 No. 24 RT/RW 007/015 Bidara Cina, Jatinegara, Jakarta Timur', '211810584@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810585', 'ROFIN SUMARANI BOMBANG', '3SK1', 'DIV STATISTIKA', '082325271272', 'Selobentar, RT31, Trimurti, Srandakan, Bantul', '211810585@stis.ac.id', 'RB08', 'S008', '807', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810586', 'ROHMAH DINI AYUNDA MUSTOFA', '3SE1', 'DIV STATISTIKA', '083169033687', 'Jl. Otista III 17A', '211810586@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810587', 'ROULI NAPITUPULU', '3SE2', 'DIV STATISTIKA', '085282084059', 'Jl. DI. Panjaitan No. 15 Balige, Toba Samosir, Sumatera Utara', '211810587@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810588', 'RUSMAN FAHRI', '3SK2', 'DIV STATISTIKA', '081295112891', 'Logandeng, RT27/RW05, Logandeng, Playen, Gunungkidul, yogyakarta', '211810588@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810590', 'RUTI TRYANA TELAUMBANUA', '3SK1', 'DIV STATISTIKA', '082277063040', 'Jl. Sensus IVd No.20', '211810590@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810591', 'RYAN ZULYENDRI', '3SE5', 'DIV STATISTIKA', '081266466138', 'Jl. Masjid No.25B', '211810591@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810593', 'SALMA', '3SE3', 'DIV STATISTIKA', '083836067929', 'Jl. H. Hasbi no 7 Bidara Cina, Jatinegara', '211810593@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-10 08:47:38', 1, NULL),
('211810594', 'SALSABILA LATIFAH PUTRI', '3SE2', 'DIV STATISTIKA', '089503681867', '(Kos Sarah) Jl. Otista Raya, Gg. Abdul Rahman No 16 RT1 RW9, Kampung Melayu, Jatinegara, Koya Jakarta Timur, DKI Jakarta, 13330', '211810594@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810598', 'SANTI MAUDILA PUTRI', '3SE3', 'DIV STATISTIKA', '087841023038', 'Jl. H. Yahya No. 271 RT 001/010 Bidaracina', '211810598@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810599', 'SAYYIDAH FADHILA LATORUMO', '3SE4', 'DIV STATISTIKA', '085397869644', 'Jl. Saabun No.7 RT.11/RW.2, Kampung Melayu, Jatinegara, Jakarta Timur', '211810599@stis.ac.id', 'RB00', 'S000', '000', 'J004', NULL, NULL, '2020-11-04 15:36:25', 1, NULL),
('211810600', 'SELVI AGUSTINA', '3SE5', 'DIV STATISTIKA', '082273587157', 'Jln. Kebon Sayur No. 8, RT.3/RW.15, Bidara Cina', '211810600@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810601', 'SETIAWAN OSI RUBIANTO', '3SE2', 'DIV STATISTIKA', '082232368112', 'Jl. Kebon Sayur 1 No 7 RT 10 RW 3 Kelurahan Bidara Cina, Jakarta Timur ', '211810601@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810602', 'SEVY DYAHARTANTI', '3SK3', 'DIV STATISTIKA', '081932434125', 'Jl. Sensus 2B RT 09 RW 04 No. 11A, Bidaracina, Jatinegara, Jakarta Timur, 13330', '211810602@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810605', 'SILVIRA BERLIANA', '3SK4', 'DIV STATISTIKA', '085262138442', 'KEBON SAYUR no.5A', '211810605@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-10 08:47:38', 1, NULL),
('211810606', 'SINTYA DWI LESTARI', '3SE1', 'DIV STATISTIKA', '081334337955', 'Jl. Penghulu No 53 RT 013/RW 010 Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur 13330', '211810606@stis.ac.id', 'RB03', 'S004', '300', 'J005', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810607', 'SISHILIA MARESTHA', '3SE2', 'DIV STATISTIKA', '083803666783', 'Jl. Kebun Sayur 1 No.37 RT.04 RW.03 Kel. Bidara Cina Kec. Jatinegara, Jakarta Timur', '211810607@stis.ac.id', 'RB02', 'S013', '203', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL);
INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('211810609', 'SITI AINIA HIDAYATI', '3SE3', 'DIV STATISTIKA', '081333551976', 'Jl. Kebon Nanas Selatan I No. 14 RT 13 RW 08, Cipinang Cempedak, Jakarta Timur', '211810609@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810610', 'SITI SABRINA YUNIARTI', '3SK5', 'DIV STATISTIKA', '085921202309', 'Taman Alamanda 2 Jl. Bougenvile 6 ED 5/11 RT 009 RW 010 Kel. Mustikasari Kec. Mustikajaya Kota Bekasi Provinsi Jawa Barat', '211810610@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810612', 'SOPO SIAHAAN', '3SE3', 'DIV STATISTIKA', '085939405011', 'Jl. Kebun Nanas Utara II No.24', '211810612@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810613', 'SITI HAJAR', '3SE4', 'DIV STATISTIKA', '082343741256', 'Jl. Otista Raya  Gg. Mangga No. 31, RT. 04 RW.03, Kel. Bidara Cina  Kec. Jatinegara Kota Jakarta Timur 13330', '211810613@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810614', 'STEPHANIE VIRGINIA ISKANDAR', '3SE4', 'DIV STATISTIKA', '089636745565', 'Gang Sensus 1 No. 13 RT 01/RW 04 Bidaracina', '211810614@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810615', 'SUCI HUSNAWATI', '3SK1', 'DIV STATISTIKA', '081285838447', ' Jl. H. Naning No.8C RT 002/08 Kel. Tengah Kec. Kramat Jati Jakarta Timur', '211810615@stis.ac.id', 'RB08', 'S007', '001', 'J003', NULL, NULL, '2020-11-10 08:47:38', 1, NULL),
('211810617', 'SUKMA MAULANA', '3SE1', 'DIV STATISTIKA', '085885626564', 'Kampung Kandang Sapi RT 03/03 No. 16 Kel. Pakualam, Kec. Serpong Utara, Kota Tangerang Selatan', '211810617@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810621', 'TASYA AGUILERA PRASETIA MULYANA', '3SK2', 'DIV STATISTIKA', '085624438284', '-', '211810621@stis.ac.id', 'RB02', 'S012', '001', 'J005', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810623', 'TAUPIQ HIDAYA TULLAH NASUTION', '3SE2', 'DIV STATISTIKA', '088218418599', 'DISLAIKAD, Jl. Manunggal Raya No.99, RT.07 RW.12, Kelurahan Cibubur, Kecamatan Ciracas, Jakarta Timur', '211810623@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810624', 'THALITA SILMI AZRANI', '3SE5', 'DIV STATISTIKA', '081363183949', 'Kos Sarah Jl. Otista Raya gg Abdurrahman 01/09', '211810624@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810628', 'TIARA REZA SUKMANA', '3SK3', 'DIV STATISTIKA', '085777595273', 'Jl. Kebon Sayur 1 No 5A RT 02 RW 15 Bidaracina, Jatinegara, Jakarta Timur', '211810628@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810629', 'TIFFANI AYUNDITA AULIANNISA', '3SE5', 'DIV STATISTIKA', '081228224104', 'Jl. Kebon Nanas Selatan I No.14, RT.13/RW.8, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810629@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810632', 'TOGAR HASBALAH', '3SK3', 'DIV STATISTIKA', '081272004997', 'Jl. Kebon Nanas Selatan 1 No 30B', '211810632@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810633', 'TRINANDA YULIA PUTRI', '3SK4', 'DIV STATISTIKA', '081292587992', 'Jl. Otista 2 No. 4 RT7/RW9, Kel. Bidara Cina, Kec. Jatinegara (Depan Hotel Mega Bayu Utama) ', '211810633@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810635', 'TULUS FRENGKY MANULLANG', '3SK3', 'DIV STATISTIKA', '089514785443', 'Gg. Mangga No 27 A', '211810635@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810636', 'UBAIDILLAH DHIYA \'ULHAQ', '3SK4', 'DIV STATISTIKA', '088996777761', 'Jln. Raya Penambangan,RT 01/RW 01, Desa Penambangan, Kecamatan Semanding, Kabupaten Tuban, Jawa Timur', '211810636@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810643', 'VICTOR ROBERT GUSTA', '3SE4', 'DIV STATISTIKA', '087732547224', 'Jl. Sensus 3 No 10 RT 004 RW 014', '211810643@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810646', 'VINCENTIUS AGRA ANANTA GUNITO', '3SE3', 'DIV STATISTIKA', '089698411858', 'Jl Otista 2 No 67A', '211810646@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810648', 'VIONA RAHMA AGUSTIN', '3SK2', 'DIV STATISTIKA', '0895373546154', 'Jl.Otista 2 No.29 RT 003/RW 09, Bidara Cina, Jatinegara', '211810648@stis.ac.id', 'RB03', 'S009', '001', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810651', 'WAHYU KARTIKA', '3SK5', 'DIV STATISTIKA', '081259685911', 'Jl. Otista II gg. Haji Misnen No 11, RT 007 RW 009', '211810651@stis.ac.id', 'RB04', 'S004', '400', 'J005', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810653', 'WIDIA SARI', '3SE4', 'DIV STATISTIKA', '085739685210', 'Jl. Sri Kaya 2 Jatimakmur, Pondokgede, Bekasi, Jawa Barat', '211810653@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810655', 'WILLY PRADANA PUTRA', '3SK5', 'DIV STATISTIKA', '082144879987', 'Jln. Hasbi 1 No.7 ', '211810655@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810656', 'WIMMISRI', '3SE1', 'DIV STATISTIKA', '082361577633', 'Jln Marzuki II penggilingan,cakung,Jakarta Timur', '211810656@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-10 08:47:38', 1, NULL),
('211810657', 'WIRASETYA PUTRA HUTAMA', '3SE4', 'DIV STATISTIKA', '089602598839', 'Jl. Kebon Nanas Selatan 1 RT2 RW8 No 15, Cipinang Cempedak', '211810657@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-10 08:47:29', 1, NULL),
('211810658', 'WITRIA DASNI', '3SE1', 'DIV STATISTIKA', '082175708277', 'Kos Graha Fialdis, Jl. Saabun No 02, RT.11 RW.6A, Kampung Melayu, Kec. Jatinegara.', '211810658@stis.ac.id', 'RB01', 'S010', '001', 'J004', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810663', 'YOGI RESMANA BARUS', '3SE5', 'DIV STATISTIKA', '08992170511', 'Jl.Kebon Nanas Utara 2 No.20 RT 001 / RW 007', '211810663@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810664', 'YOHANA MADAME HUTAHAEAN', '3SK3', 'DIV STATISTIKA', '081264762119', 'Jl. Kebon Sayur I No.66A RT 008/ RW 003 Kel. Bidara Cina', '211810664@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810665', 'YOLANDA ALMA FITROTUNNISA', '3SE2', 'DIV STATISTIKA', '082126269174', 'Jl. Penghulu No.12', '211810665@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810666', 'YOSUA WIRADIPUTRA PANGARIBUAN', '3SE5', 'DIV STATISTIKA', '082360393086', 'Gg. Mangga No.24 Kelurahan Bidara Cina, Kecamatan Jatinegara, Kota Jakarta Timur', '211810666@stis.ac.id', 'RB03', 'S012', '309', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810667', 'YUANA RISA PRASTIKA', '3SK4', 'DIV STATISTIKA', '085731897914', 'Jl. Kebon Nanas Utara 1 No. 15', '211810667@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810668', 'YUDA FIRMANSYAH', '3SE1', 'DIV STATISTIKA', '081223392565', 'Jl. Masjid No 23 RT/RW 012/009 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur 13330', '211810668@stis.ac.id', 'RB02', 'S013', '205', 'J003', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810669', 'YUDHISTIRA', '3SK1', 'DIV STATISTIKA', '08199504007', 'Jl. Kebon Nanas Selatan 1 No.3 RT 14/ RW 8 Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810669@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810671', 'YULI BAGUS ADRIYATNA', '3SK2', 'DIV STATISTIKA', '0895701893614', 'Jl. Kebon Nanas Selatan 2, No.57, RT.01 RW.08, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur, DKI Jakarta, 13340', '211810671@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810674', 'YUNELA TANIA SARI ', '3SE3', 'DIV STATISTIKA', '082385365218', '(Kos Ungu) Gg Solihun, Otista Raya, Jakarta Timur', '211810674@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810675', 'YUSUF RIPANI SIREGAR', '3SE2', 'DIV STATISTIKA', '081906657434', 'Jl. Kebon Nanas Utara No 22B', '211810675@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810677', 'ZAHRA FATIN TANALA', '3SK5', 'DIV STATISTIKA', '085791498384', 'Jl. Abdul Rahman Nomor 34A, RT 002 RW 009, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '211810677@stis.ac.id', 'RB02', 'S009', '001', 'J004', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810678', 'ZAHRA RAHMATIKA FADILLA', '3SK1', 'DIV STATISTIKA', '085946274087', 'Jl. Hasbi No.12A', '211810678@stis.ac.id', 'RB01', 'S011', '104', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('211810679', 'ZAKIAH RAHMAH', '3SK2', 'DIV STATISTIKA', '081377573187', 'Jl. Otista Gang Mangga No.15 (Belakang Bonansa Wisata, Kos Wanita Haji Ayub) RT/RW.01/04, Bidara Cina, Jatinegara, Jaktim', '211810679@stis.ac.id', 'RB03', 'S012', '309', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('211810680', 'ZAKY IMADUDIN SALAM', '3SE3', 'DIV STATISTIKA', '081312315895', 'Jl Sensus 2 No 16 Kel. Bidaracina, Jatinegara', '211810680@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('211810681', 'ZIDAN FAKHRI ZHAFIRI', '3SE4', 'DIV STATISTIKA', '085648423485', 'Gg. Mangga, RT.2/RW.3, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810681@stis.ac.id', 'RB04', 'S013', '408', 'J003', NULL, NULL, '2020-11-10 09:01:24', 1, NULL),
('211810683', 'ZULKIFLI', '3SK3', 'DIV STATISTIKA', '085255582935', 'Jl Kebon Sayur I No 25, RT 002, RW 015, Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta 13330', '211810683@stis.ac.id', 'RB07', 'S001', '702', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221709573', 'ARIEF RAHMAN FAUZI', '3SD1', 'DIV KOMPUTASI STATISTIK', '081213744293', 'Jl. Raya Inpres No. 29B', '221709573@stis.ac.id', 'RB07', 'S002', '705', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221709729', 'HANIF MUHAMMAD SOFI', '3SD2', 'DIV STATISTIKA', '', '', '221709729@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-10 08:38:55', 1, NULL),
('221709732', 'HASRAN NAWIRA', '3SD1', 'DIV KOMPUTASI STATISTIK', '083135340631', 'Bonasel 1', '221709732@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810097', 'ADI HABIBI HARAHAP', '3SD1', 'DIV KOMPUTASI STATISTIK', '081318534065', 'Jln Ayub No.17 RT05/RW08 Bidara Cina', '221810097@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810104', 'ADYASTI NINGRUM', '3SI2', 'DIV KOMPUTASI STATISTIK', '081219758987', 'Jln. Masjid No.4', '221810104@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810112', 'AGNES SEPTI DWICAHAYANIAWAN', '3SD2', 'DIV KOMPUTASI STATISTIK', '082240506326', 'Jl.Masjid No.20 ', '221810112@stis.ac.id', 'RB07', 'S004', '700', 'J005', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810116', 'AHMAD ARFAN ARSYAD', '3SI1', 'DIV KOMPUTASI STATISTIK', '085211772862', 'Jl. H.Yahya Cipinang Cimpedak No.19 RT09/RW07 Jatinegara Jakarta Timur, Jatinegara, Jakarta Timur, DKI Jakarta, 13330', '221810116@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810117', 'AHMAD AZAM IZUDIN', '3D32', 'DIV KOMPUTASI STATISTIK', '085234665991', 'Jl. Kebon Nanas Selatan I No. 4 RT.011/RW. 008 Rumah Warna Abu -Abu Lantai 2, Kec. Jatinegara - Jakarta Timur, 13340', '221810117@stis.ac.id', 'RB05', 'S004', '500', 'J001', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810125', 'AINUR RAHMA', '3SI1', 'DIV KOMPUTASI STATISTIK', '081216692408', 'Jl. Otista 2 No. 23, Jakarta Timur', '221810125@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810126', 'AISYAH NUR FAHIRA', '3SD2', 'DIV KOMPUTASI STATISTIK', '087700348880', 'Jl. Kebun Sayur 1 No. 37, RT 004, RW 03', '221810126@stis.ac.id', 'RB07', 'S003', '709', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810128', 'AJENG WAHYU TRI YULINDA', '3SI2', 'DIV KOMPUTASI STATISTIK', '085155437439', 'Pundung Sari RT 3 RW 2, Mranggen, Polokarto, Sukoharjo, 57555.', '221810128@stis.ac.id', 'RB08', 'S008', '001', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810129', 'AKHMAD FADIL MUBAROK', '3SI2', 'DIV KOMPUTASI STATISTIK', '082226602929', 'Jl. Otista 3 No.4 RT.4/RW.2, Cipinang Cempedak, Kecamatan Jatinegara', '221810129@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810137', 'ALDI HAMIDI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081260383277', 'Jl. Otista II, Bidara Cina, Jatinegara, Jaktim', '221810137@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810138', 'ALDIAS IRVAN NUGRAHA', '3SD1', 'DIV KOMPUTASI STATISTIK', '08999339379', 'Jl. Kebon Sayur 1 No. 5, RT 9/RW 15', '221810138@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810140', 'ALFI NURRAHMAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '081807912843', 'Jl. Unkris (Bulak Baru) RT 08/09 No.84 Jaticempaka, Pondok Gede, Kota Bekasi, Jawa Barat 17416', '221810140@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810145', 'ALI AKBAR CHAMPIONA', '3SI2', 'DIV KOMPUTASI STATISTIK', '088290238778', 'Perumahan Graha Kalimas Blok B2, Tambun Selatan', '221810145@stis.ac.id', 'RB07', 'S003', '710', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810155', 'ALMIRA DIVA SANYA', '3SD1', 'DIV KOMPUTASI STATISTIK', '0895616199398', 'Jl. Banda Rajang, No. 88 RT 06/RW 02, Gulai Bancah Kota Bukittinggi - Mandiangin Koto Selayan,  Sumatera Barat Kode Pos : 2612', '221810155@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810157', 'ALWAN HAZIM', '3SI1', 'DIV KOMPUTASI STATISTIK', '081381479223', 'Jl. Kiruntag No.14 RT 002/RW 01 Kelapa Dua, Kebon Jeruk', '221810157@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810177', 'ANLISA ARMARYAMA R', '3SI2', 'DIV KOMPUTASI STATISTIK', '081259397075', 'Jl. Sensus 1 No 2 RT 01 RW 04, Bidara Cina, Jatinegara, Jakarta Timur', '221810177@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810178', 'ANNISA ADYTIA PUTRI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081351380912', 'Bassura City, Jakarta Timur', '221810178@stis.ac.id', 'RB05', 'S004', '500', 'J005', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810183', 'ANNISA PUTRI ANGGRAINI', '3SI2', 'DIV KOMPUTASI STATISTIK', '082239614214', 'Jl. Kebon Nanas Selatan I', '221810183@stis.ac.id', 'RB07', 'S003', '710', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810193', 'ARIF IKHWAN HENDRA', '3SI2', 'DIV KOMPUTASI STATISTIK', '082285163994', 'Jl. Masjid 25B', '221810193@stis.ac.id', 'RB03', 'S015', '305', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810195', 'ARINA MANA SIKANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '08111277194', 'Jl. Kebon Nanas Selatan Ii No. 23 RT 011 RW 008, Cipinang Cempedak, Jatinegara, Jakarta Timur', '221810195@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810196', 'ARIQ RIZALDI FADHLURRAHMAN', '3SI1', 'DIV KOMPUTASI STATISTIK', '085866364943', 'Jl. Kebon Nanas Utara No 2 RT 05 RW 07 Cipinang Cempedak Jatinegara', '221810196@stis.ac.id', 'RB07', 'S001', '703', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810198', 'ASHABUL KAHFI SIPAHUTAR', '3SI2', 'DIV KOMPUTASI STATISTIK', '082383004989', 'Bengkel Sipahutar, Desa Bukit Martajam/Sigama, Kec. Padang Bolak, Kab.Padang Lawas Utara, Prov. Sumatera Utara', '221810198@stis.ac.id', 'RB07', 'S003', '713', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810202', 'ASTI DESMARIA SAMOSIR', '3SD2', 'DIV KOMPUTASI STATISTIK', '082366773946', 'Jl Otista Raya Gg Mangga No 15 ', '221810202@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810213', 'BERNALDO NAPITUPULU', '3SD2', 'DIV KOMPUTASI STATISTIK', '082360054904', 'Jl. H Hasbi No 16, Bidara Cina', '221810213@stis.ac.id', 'RB07', 'S003', '712', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810220', 'CHAIRUNNISA FAUZIA SAMU', '3SI1', 'DIV KOMPUTASI STATISTIK', '0895708368300', 'Jl. Otto Iskandardinata Gang Sensus I No. 8B RT 01/RW 04 Kost Wanita Sinaga Bidara Cina, Jatinegara, Jakarta Timur 13330', '221810220@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810224', 'CHORY AYU ZULFAIDA', '3SI2', 'DIV KOMPUTASI STATISTIK', '085640045334', 'Jl. Otista III No.44A', '221810224@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810227', 'CYNTHIA AS BAHRI', '3SD1', 'DIV KOMPUTASI STATISTIK', '082284020582', 'No 23 RT 11 RW 8, Kebon Nanas Selatan II, Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340', '221810227@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810232', 'DANIEL NOVENDRI SITUMORANG', '3SD1', 'DIV KOMPUTASI STATISTIK', '081282491321', 'Jl Hasbi No 16', '221810232@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810233', 'DARIS AZHAR', '3SD2', 'DIV KOMPUTASI STATISTIK', '081573241806', 'Jl. Kebon Nanas Selatan I No.4, RT 11 RW 8, Cipinang Cimpedak, Rumah Warna Abu-Abu Lantai 2', '221810233@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810234', 'DEDY SAPUTRA SIREGAR', '3SI1', 'DIV KOMPUTASI STATISTIK', '085373183410', 'Jl.Ayub No.17 ', '221810234@stis.ac.id', 'RB07', 'S002', '707', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810237', 'DESI KRISTIYANI', '3SD2', 'DIV KOMPUTASI STATISTIK', '085225875087', 'Jl. H.Misnen No 05A (Kosan Harmony)', '221810237@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810245', 'DIMAS AL-KHUSUUFI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081911553317', 'Jl. Kebon Sayur 1 No 20 RT 5 RW 15, Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810245@stis.ac.id', 'RB03', 'S015', '001', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810256', 'EDO FINMANSYAH AKBAR', '3SI1', 'DIV KOMPUTASI STATISTIK', '081225808545', 'Perum Patra Kencana Residence Blok I 15, Kel Ngijo, Kab Karang Ploso, Malang, Jawa Timur', '221810256@stis.ac.id', 'RB07', 'S003', '709', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810259', 'EKO PUTRA WAHYUDDIN', '3SD1', 'DIV KOMPUTASI STATISTIK', '081241285758', 'Jl. Kebon Sayur 1 No 12, RT 010, RW 015, Bidaracina, Jatinegara, Jakarta Timur, DKI Jakarta', '221810259@stis.ac.id', 'RB07', 'S001', '001', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810260', 'ELA NUZUL RAHMAWATI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081381119950', 'Jln. Otista Raya Gg. Solihun No. 17 RT/RW 13/09 Kosan Ungu Bu Kiki Jatinegara, Jakarta Timur', '221810260@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810261', 'ELISA IMANIA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081292175591', 'Jl. Otista gg.Abdurrahman No.16 RT.01 RW.09 Kec.Jatinegara', '221810261@stis.ac.id', 'RB07', 'S003', '712', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810262', 'ELSA KARTIKA VITRIANI MARPAUNG', '3SD1', 'DIV KOMPUTASI STATISTIK', '081375700485', 'Jl. Kebon Sayur I No.10A RT/RW 05/15 Bidara Cina, Jatinegara, Jakarta Timur', '221810262@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810266', 'EMIR LUTHFI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082391777500', 'Jl. Otto Iskandar Dinata gg. Mangga No. 20, RT 01/RW 03, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810266@stis.ac.id', 'RB07', 'S004', '700', 'J001', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810270', 'ERIK RIHENDRI CANDRA ADIFA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081332311261', 'Jl Haji Dowel No 16 Kebon Nanas Utara', '221810270@stis.ac.id', 'RB03', 'S015', '304', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810278', 'FADILA AHMAD', '3SD2', 'DIV KOMPUTASI STATISTIK', '082257075942', 'Gg Arrohim No.15 RT 10/RW 07, Jl. Kebon Nanas Utara, Kelurahan Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, DKI Jakarta', '221810278@stis.ac.id', 'RB03', 'S015', '304', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810280', 'FAHMI REZA NUGRAHA', '3SD1', 'DIV KOMPUTASI STATISTIK', '082124319531', '-', '221810280@stis.ac.id', 'RB07', 'S002', '706', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810288', 'FAKHRI HIDAYAT', '3SD2', 'DIV KOMPUTASI STATISTIK', '085369776799', 'Jl. Nias, No. 105 RT 005 RW 002, Kel. Gunung Ibul, 31113', '221810288@stis.ac.id', 'RB08', 'S008', '806', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810291', 'FANI VISARA', '3SD2', 'DIV KOMPUTASI STATISTIK', '081314196576', 'Jl. Masjid, No.25 RT 12 RW 09, Kel. Bidara Cina, Kec. Jatinegara', '221810291@stis.ac.id', 'RB05', 'S021', '001', 'J004', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810293', 'FARADILLA ANASTASYA', '3SD1', 'DIV KOMPUTASI STATISTIK', '081802538125', 'Jl. H. Yahya, No.51D RT 12 RW 10, Kampung Melayu, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta', '221810293@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('221810299', 'FATKHUL MUKHLISH AL-HAQ', '3SI1', 'DIV KOMPUTASI STATISTIK', '085540560014', 'Jl. Kebon Nanas Selatan No. 36B, Cipinang Cempedak, Jatinegara, Jakarta Timur', '221810299@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810300', 'FATURROKHMAN', '3SI2', 'DIV KOMPUTASI STATISTIK', '082337671877', 'Gg. Mangga, RT 2 RW 3, Kp. Melayu, Kec. Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '221810300@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810306', 'FIKRI SEPTRIAN ANGGARA', '3SI1', 'DIV KOMPUTASI STATISTIK', '085283076606', 'Jl. Kebon Nanas Utara, No.25 RT 05 RW 07, Kel. Cipinang Cempedak', '221810306@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810314', 'GABERIEL', '3SI2', 'DIV KOMPUTASI STATISTIK', '082274136756', 'Taman Elang Blok E No.34, Kec. Periuk,  Kota Tangerang', '221810314@stis.ac.id', 'RB03', 'S015', '305', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810318', 'GHITHA NURFALAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '082122750511', 'Jl. Otista II, Gg. H. Misnen, No.20 RT 5 RW 9, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810318@stis.ac.id', 'RB03', 'S015', '304', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810327', 'HAYUN', '3SD1', 'DIV KOMPUTASI STATISTIK', '082296801636', 'Jl.Kebon Nanas Selatan 2, No.25 RT 10 RW 08, Kel. Cipinang Cempedak, Kec. Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340', '221810327@stis.ac.id', 'RB07', 'S001', '702', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810333', 'I PUTU JUNI ADI WIDIANATA', '3SD1', 'DIV KOMPUTASI STATISTIK', '087860926574', 'Jl. Otto Iskandardinata 2, Kebon Nanas Utara,  RT 03  RW 09', '221810333@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810335', 'IFFATI UZMA', '3SD2', 'DIV KOMPUTASI STATISTIK', '083180234011', 'Jl. H.Hasbi, No.24 RT 09 RW 09', '221810335@stis.ac.id', 'RB07', 'S003', '711', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810336', 'IHZA FIKRI ZAKI KARUNIA', '3SD2', 'DIV KOMPUTASI STATISTIK', '089625345646', 'Jl. K. H. Abdurrahman Wahid, Gg. Kuala Dua, No.B32 RT 01 RW 01, Desa Kuala Dua, Kec. Sungai Raya, Kab. Kubu Raya, Kalimantan Barat 78391', '221810336@stis.ac.id', 'RB05', 'S020', '001', 'J003', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810340', 'INAS ZAIZAFUN SATIRA', '3SD1', 'DIV KOMPUTASI STATISTIK', '087863545325', 'Jl. Otista Raya, Gang Solihun, No.10 RT 15 RW 08, Kel.Bidara Cina, Kec.Jatinegara, Jakarta Timur', '221810340@stis.ac.id', 'RB08', 'S008', '805', 'J003', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810343', 'INTAN KEMALA', '3SD2', 'DIV KOMPUTASI STATISTIK', '085208960987', 'Jl. Kebon Sayur 1, No.37 RT 004 RW 03, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810343@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810350', 'IRVAN PERMANA BUSTAMI', '3SD1', 'DIV KOMPUTASI STATISTIK', '081380552118', 'Jl. Kramat Asem, No.14 RT 001 RW 004, Utan Kayu Selatan, Matraman, Jakarta Timur', '221810350@stis.ac.id', 'RB04', 'S009', '402', 'J003', NULL, NULL, '2020-11-04 17:04:51', 1, NULL),
('221810354', 'JAFAR HUSAINI AZIZ', '3SI1', 'DIV KOMPUTASI STATISTIKA', '082186400561', 'Jl. Kebon Sayur 1 No. 24', '221810354@stis.ac.id', 'RB07', 'S002', '705', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810359', 'JOICE EVANGELISTA LASE', '3SD2', 'DIV KOMPUTASI STATISTIK', '081319418183', 'Jl. Sensus I, No. 37  RT 006 RW 004, Kel. Bidara Cina', '221810359@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810360', 'JONA P A SIREGAR', '3SI2', 'DIV KOMPUTASI STATISTIK', '081380798568', 'Pearung, Kec. Paranginan, Kab. Humbanghasundutan', '221810360@stis.ac.id', 'RB07', 'S003', '711', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810376', 'KIRAN ALDI PANGUMBANAN HASIBUAN', '3SD2', 'DIV KOMPUTASI STATISTIK', '082276095296', 'Jl. Otista II No.20 (Samping Warung Bg Oeddin)', '221810376@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810377', 'KOMANG UNING SARI DEVI', '3SD1', 'DIV KOMPUTASI STATISTIK', '085789411701', 'Jl. H. Yahya No.58, Kel. Bidara Cina', '221810377@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810378', 'KRISBANA TOGAR SIANTURI', '3SI1', 'DIV STATISTIKA', '085830713205', 'Jalan Otista II No.25 RT 6/RW 9, Bidaracina, Jatinegara, Jaktim.', '221810378@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-10 08:47:38', 1, NULL),
('221810386', 'LARA AYU CAHYANINGTYAS', '3SD1', 'DIV KOMPUTASI STATISTIK', '089698627655', 'Gang Solihun No.31A, Bidaracina, Jatinegara, Jakarta Timur', '221810386@stis.ac.id', 'RB07', 'S001', '001', 'J004', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810392', 'LUKMAN DARY ILYASA', '3SD2', 'DIV KOMPUTASI STATISTIK', '089626749424', 'Jl.Sensus 3, No.6 RT 003 RW 14, Kel. Bidara Cina, Jakarta Timur (Rumah warna pink tingkat 3)', '221810392@stis.ac.id', 'RB07', 'S002', '707', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810394', 'M NABIL SYUKRI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081266075794', 'Gang Mangga No.19, Kel. Bidara Cina', '221810394@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810396', 'M. ARIS MUNANDAR', '3SD2', 'DIV KOMPUTASI STATISTIK', '081373350636', 'Jl. Kebun Nanas Selatan I, No.15 RT 02 RW 08, Cipinang Cempedak, Jatinegara, Jakarta Timur, DKI Jakarta, Indonesia', '221810396@stis.ac.id', 'RB07', 'S003', '709', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810397', 'M. BAITAL SALSABIL', '3SD1', 'DIV KOMPUTASI STATISTIK', '082330400444', 'Jl. Sensus 3 No.6', '221810397@stis.ac.id', 'RB07', 'S001', '701', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810398', 'M. IRSYAD HADI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081369748308', 'Gang Mangga. No.20 RT 001 RW 003, Kel. Bidara Cina Kec. Jatinegara, Jakarta Timur', '221810398@stis.ac.id', 'RB07', 'S003', '713', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810400', 'M. RIJALUS SHOLIHIN', '3SD2', 'DIV KOMPUTASI STATISTIK', '089624985891', 'Jl. Asem, No. 4D RT 001 RW 03 , Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810400@stis.ac.id', 'RB07', 'S001', '704', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810402', 'M.THARIF ARKANDANA', '3SD1', 'DIV KOMPUTASI STATISTIK', '089670045026', 'Perumahan Bukit Kemling Permai Blok Y No.131, Kec. Kemiling Permai, Kota Bandar Lampung, Provinsi Lampung', '221810402@stis.ac.id', 'RB07', 'S001', '701', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810403', 'MUHAMMAD YASQI IMANDA', '3SD2', 'DIV KOMPUTASI STATISTIK', '085775712783', 'Jl. Kebon Nanas Utara, No.15 RT 10 RW 07, Kel. Cipinang Cempedak, Kec. Jatinegara, Kota Jakarta Timur', '221810403@stis.ac.id', 'RB00', 'S000', '000', 'J002', NULL, NULL, '2020-11-04 15:36:25', 1, NULL),
('221810404', 'M ZIKRI', '3SI2', 'DIV KOMPUTASI STATISTIK', '085365986892', 'Jl. Kebon Nanas Selatan 1, No.3 RT 14 RW 08', '221810404@stis.ac.id', 'RB07', 'S003', '710', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810407', 'M. HAFIZ AL IHSAN', '3SI2', 'DIV KOMPUTASI STATISTIK', '082161709532', 'Jl. Bojong Datar Dusun VIII, Desa Sei Putih, Kec. Galang, Kab. Deli Serdang, Sumatera Utara', '221810407@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810412', 'MARDININGTYAS BAYU SULTHANI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081212333748', 'Jl. Kebon Nanas Selatan I, No.4 RT 11 RW 8, Cipinang Cimpedak(Rumah Warna Abu-Abu Lantai 2)', '221810412@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810414', 'MAUDY INSAN TANIA', '3SI1', 'DIV KOMPUTASI STATISTIK', '083874996957', 'Jl. Danau Ranau 7 No.77, Depok, Jawa Barat', '221810414@stis.ac.id', 'RB07', 'S002', '706', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810417', 'MEYTRY PETRONELLA PURBA', '3SI1', 'DIV KOMPUTASI STATISTIK', '081362754025', 'Jl. Sensus 1 No.08 (Kost Pak Butar-Butar)', '221810417@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810418', 'MIFTAHUDDIN', '3SI1', 'DIV KOMPUTASI STATISTIK', '082293364360', 'Desa Tarailu, Kec. Sampaga, Kab. Mamuju, Prov. Sulawesi Barat', '221810418@stis.ac.id', 'RB07', 'S002', '708', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810421', 'MOCHAMAD DIAZ ILYASA', '3SI2', 'DIV KOMPUTASI STATISTIK', '083830842722', 'Jl. Sensus IVA, No. 10 RT 01 RW 14, Bidara Cina, Jatinegara, Jakarta Timur(Kosan Bapak Mulyono)', '221810421@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810422', 'MOCHAMAD IZZA ZULFIKAR SYA\'RONI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081299594151', 'Jl. Kebon Nanas Selatan I, No.4 RT 11 RW 8, Cipinang Cimpedak(Rumah Warna Abu-Abu Lantai 2)', '221810422@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810429', 'MUCHAMMAD GAGAH AGUM FANANI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082232490100', 'Jl.Ayub, No.6A RT 15  RW 8, Kampung Melayu, Jatinegara, Jakarta Timur', '221810429@stis.ac.id', 'RB07', 'S002', '707', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810430', 'MUFTI RIZKI ABDILLAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '081272929742', 'Jl.Kebon Nanas Selatan 2 No.7C, Kec.Jatinegara, Kel.Cipinang Cempedak', '221810430@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810431', 'MUH. ADRIANSYAH', '3SI1', 'DIV KOMPUTASI STATISTIK', '082291143654', 'Jl. Kebon Sayur No. 18', '221810431@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810445', 'MUHAMMAD AL FATAH', '3SD2', 'DIV KOMPUTASI STATISTIK', '082299705366', 'Jl. Johar Baru V, No. 2 RT 008 RW 011', '221810445@stis.ac.id', 'RB05', 'S021', '001', 'J003', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810452', 'MUHAMMAD FACHRY NAZULI', '3SD1', 'DIV KOMPUTASI STATISTIK', '085358341387', 'Jl. Kebon Nanas Selatan 2, No. 17 RT 10 RW 8', '221810452@stis.ac.id', 'RB07', 'S001', '702', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810454', 'MUHAMMAD FERDI', '3SI2', 'DIV KOMPUTASI STATISTIK', '082256480465', 'Jl. Kebon Nanas Utara II, No. 32 RT 03 RW 07, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur', '221810454@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810459', 'MUHAMMAD IBRAH REYNALDI TANJUNG', '3SD2', 'DIV KOMPUTASI STATISTIK', '082297138389', 'Jl. Masjid, No.8A RT 013 RW 009, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur 13330', '221810459@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810468', 'MUHAMMAD NIRWANSYAH ADI EKA PUTRA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081220725811', 'Jl. H.Asan Ari, No.D11 RT 006 RW 03, Kec. Pondok Aren, Kota Tangerang Selatan, Provinsi  Banten', '221810468@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810473', 'M. RIFKY NARATAMA SUSANTO', '3SI1', 'DIV KOMPUTASI STATISTIK', '082119031449', 'Jl. Kapten A. Anwar Arsyad, Gg Famili 2 No. 1546, Sumsel, Palembang', '221810473@stis.ac.id', 'RB07', 'S003', '001', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810477', 'MUHAMMAD YASIN VIDIAN', '3SI1', 'DIV KOMPUTASI STATISTIK', '085943174081', 'Jl. Kebon Sayur, No.18 RT 3 RW 15, Bidaracina, Jatinegara, Kota Jakarta Timur, DKI Jakarta 13330', '221810477@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810479', 'MUHAMMAD ZULKARNAIN', '3SD1', 'DIV KOMPUTASI STATISTIK', '082132245551', 'Jl. Kebon Nanas Selatan 2, No 35 RT 003 RW 008, Cipinang Cepedak', '221810479@stis.ac.id', 'RB07', 'S001', '701', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810481', 'MUTIA SORAYA ADILA', '3SD1', 'DIV KOMPUTASI STATISTIK', '085668398796', 'Jl. H. Yahya No. 271, Bidara Cina', '221810481@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810484', 'NABILA BIANCA PUTRI', '3SD2', 'DIV KOMPUTASI STATISTIK', '085781051055', 'Jl. Kebon Nanas Selatan 1, No. 2 RT 13 RW 08, Cipinang Cempedak, Jatinegara, Jakarta Timur', '221810484@stis.ac.id', 'RB07', 'S001', '701', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810496', 'NASIYA ALIFAH UTAMI', '3SD1', 'DIV KOMPUTASI STATISTIK', '089635957354', 'Jl. Kebon Sayur I', '221810496@stis.ac.id', 'RB01', 'S004', '100', 'J004', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810497', 'NATASYA AFIRA', '3SD2', 'DIV KOMPUTASI STATISTIK', '082286887100', 'Gang Sholihun ', '221810497@stis.ac.id', 'RB03', 'S015', '305', 'J004', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810499', 'NENSI FITRIANI', '3SD1', 'DIV KOMPUTASI STATISTIK', '082296429119', 'Jl. Otista III No. 44A, Cipinang Cempedak', '221810499@stis.ac.id', 'RB01', 'S011', '105', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810502', 'NISSA SILVIANNA DEVI NUR AFNI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082337010331', 'Jl. Kebon Sayur I No.5A RT 02 RW 15, Kel.Bidara Cina', '221810502@stis.ac.id', 'RB05', 'S020', '001', 'J004', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810509', 'NUGROHO ADI SUDANTOKO', '3SI2', 'DIV KOMPUTASI STATISTIK', '085727120905', 'Jl. H. Yahya No.45 , Kebon Nanas Utara', '221810509@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810510', 'NUGROHO PURNOMO AJI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081229705338', 'Jl. Timur, No.13 RT 36 RW 10, Grasak Gondang, Sragen', '221810510@stis.ac.id', 'RB03', 'S015', '304', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810514', 'NUR ULUM RAHMANULLOH', '3SD1', 'DIV KOMPUTASI STATISTIK', '082234132926', 'Jl. Otista II, Gg. H. Dawel Atas, No. 19 RT 04 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810514@stis.ac.id', 'RB07', 'S001', '704', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810522', 'NURUL SYIFA AMALIA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081274265665', 'Jl. H. Hasbi, No. 24, RT 09 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810522@stis.ac.id', 'RB07', 'S004', '700', 'J004', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810527', 'PARAMITHA MADELIN ALBRIGHT', '3SI1', 'DIV KOMPUTASI STATISTIK', '082194416271', 'Jl. Otto Iskandardinata, Gg H. Dawel, No.22 RT 005 RW 009, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur', '221810527@stis.ac.id', 'RB03', 'S015', '306', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810528', 'PAULINA SIALLAGAN', '3SD1', 'DIV KOMPUTASI STATISTIK', '0895414293579', 'Jl. Kebon Sayur 1, No.66 RT 008 RW 006, Kel.Bidara Cina, Kec.Jatinegara, Jakarta Timur', '221810528@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810540', 'RAFLY AMANATULLA', '3SI1', 'DIV KOMPUTASI STATISTIK', '082282554218', 'Jl. Sensus Iia, Kel. Bidara Cina', '221810540@stis.ac.id', 'RB07', 'S002', '705', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810547', 'RAKA ARTIAN PRAWARDANA', '3SI2', 'DIV KOMPUTASI STATISTIK', '089652679919', 'Jl. Kebon Nanas Selatan 2 No.18', '221810547@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810548', 'RAKA IKMANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '089653669653', 'Jl. Salemba Utan Barat,No. 7 RT 002 RW 007, Kel. Pal Meriam, Kec. Matraman, Jakarta Timur', '221810548@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810557', 'REYHAN SAADI', '3SD1', 'DIV KOMPUTASI STATISTIK', '085867871759', 'Jl. Otista II No.26, Bidaracina, Jatinegara, Jakarta Timur', '221810557@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810558', 'REZKY ANGGA PRADANA', '3SI1', 'DIV KOMPUTASI STATISTIK', '087734623487', 'Gg.Abdurrahman, No.34Pa RT 04 RW 09,Kel. Bidara Cina,Kec. Jatinegara, Jaktim', '221810558@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810560', 'RIAN ALFA NURFALAH', '3SI2', 'DIV KOMPUTASI STATISTIK', '083180405022', 'Jl. Ayub, No. 40 RT 1 RW 3, Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta', '221810560@stis.ac.id', 'RB07', 'S002', '001', 'J003', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810568', 'RIHADATULAISY SALSABILA NURUDIN', '3SI1', 'DIV KOMPUTASI STATISTIK', '089653407911', 'Jl. Swadarma Utara 5, RT 002 RW 01, Jakarta Selatan', '221810568@stis.ac.id', 'RB05', 'S004', '500', 'J004', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810576', 'RIVA ADLI DZIL IKRAM', '3SI1', 'DIV KOMPUTASI STATISTIK', '082390406016', 'Jl. Otista II No.25D', '221810576@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810577', 'RIZKA INDAH PRISTANIA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081225465226', 'Jl. H. Yahya No.51D ', '221810577@stis.ac.id', 'RB08', 'S008', '806', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810578', 'RIZKI NAZHIF NUR', '3SD1', 'DIV KOMPUTASI STATISTIK', '089503435064', 'Tidak Ada Kos', '221810578@stis.ac.id', 'RB07', 'S001', '703', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810583', 'RIZQINA RAHMATI', '3D32', 'DIV KOMPUTASI STATISTIK', '082217651385', 'Jl. Kebon Nanas Selatan II, No.23 RT 11 RW 8', '221810583@stis.ac.id', 'RB03', 'S015', '305', 'J006', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810589', 'RUTH MADELINE', '3SI2', 'DIV KOMPUTASI STATISTIK', '081927106649', 'Jl. Otista 2', '221810589@stis.ac.id', 'RB07', 'S002', '706', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810592', 'SABRIELLA HAFIFAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '082170812115', 'Jl. Kebon Nanas Utara I, No.15 RT02 RW07', '221810592@stis.ac.id', 'RB07', 'S001', '702', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810596', 'SALWA RIZQINA PUTRI', '3SD1', 'DIV KOMPUTASI STATISTIK', '0859180721872', 'Jl. Kebon Nanas Selatan II No. 6A', '221810596@stis.ac.id', 'RB00', 'S000', '000', 'J004', NULL, NULL, '2020-11-04 15:36:25', 1, NULL),
('221810597', 'SANDRO E. IRWANSYAH PASARIBU', '3SD2', 'DIV KOMPUTASI STATISTIK', '081375729438', 'Jl. Mulia, No 16 RT 8 RW 8,Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810597@stis.ac.id', 'RB07', 'S003', '713', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810608', 'SITA DIAN MARETNA', '3SD2', 'DIV KOMPUTASI STATISTIK', '081387943973', 'Jl. Cendrawasih 1, RT 05 RW 02, Sawah Baru, Ciputat, Tangsel', '221810608@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810618', 'SULTAN ACHMAD RIZALDI', '3SI2', 'DIV KOMPUTASI STATISTIK', '082257452787', 'Jl. Kebon Nanas Utara 2, No.29A RT 05 RW 04 (Kosan Bapak Yanto)', '221810618@stis.ac.id', 'RB07', 'S003', '711', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810619', 'TALITHA NABILA SAIFANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '081932081971', 'Jl. H. Yahya No.58 RT 014 RW 010, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810619@stis.ac.id', 'RB07', 'S002', '001', 'J004', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810622', 'TASYA MINA ALIFIA', '3SI1', 'DIV KOMPUTASI STATISTIK', '081931466389', 'Jl. Penghulu No 16A RT 011 RW 10, Kel Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810622@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810626', 'THORIQ IBADURROHMAN', '3SI1', 'DIV KOMPUTASI STATISTIK', '085155133925', 'Jl. Bintara 8 No 31 RT 003 RW 003, Kel. Bintara, Kec. Bekasi Barat, Kota Bekasi', '221810626@stis.ac.id', 'RB07', 'S002', '705', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810630', 'TIMOTIUS VINCENT GUNAWAN', '3SD2', 'DIV KOMPUTASI STATISTIK', '081233733346', 'Jl. H. Hasbi No.16', '221810630@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810634', 'TUBAGUS LANGLANG PURWASASMITA', '3SD1', 'DIV KOMPUTASI STATISTIK', '0895405504545', 'Jl. Kebon Sayur 1 No 8 RT 5 RW 15 ', '221810634@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810637', 'ULYA ADIWENA', '3SI2', 'DIV KOMPUTASI STATISTIK', '082327360683', 'Jl. Otista Raya, Gg. Abdul Rahman No 16 RT 1 RW 9, Kampung Melayu, Jatinegara, Jakarta Timur, DKI Jakarta 13330 (Kos Sarah)', '221810637@stis.ac.id', 'RB07', 'S003', '711', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810640', 'VANIA RIZKI OKTAVIASARI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081287651793', 'Jl. Kebon Sayur I No.3', '221810640@stis.ac.id', 'RB07', 'S003', '001', 'J004', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810641', 'VARADINYA SHOLAITA', '3SD1', 'DIV KOMPUTASI STATISTIK', '087896416745', 'Jl. H. Yahya No 58 RT 014 RW 010, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810641@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810642', 'VELIA TRI MARLIANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '083863856590', 'Jl. Otista 2, Gg. H. Misnen No. 20 RT 005 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810642@stis.ac.id', 'RB07', 'S001', '703', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810647', 'VIONA FEBRIANA', '3SI1', 'DIV KOMPUTASI STATISTIK', '082139646961', 'Lawang, Malang', '221810647@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810650', 'WAHIDYA NURKARIM', '3SD1', 'DIV KOMPUTASI STATISTIK', '081213334998', 'Jl. Kebon Nanas Selatan II, RT 002 RW 011', '221810650@stis.ac.id', 'RB07', 'S001', '703', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810652', 'WASILAH NUR ASTUTI', '3SD2', 'DIV KOMPUTASI STATISTIK', '089618927527', 'Jl. Raya Jakarta Km 6. Perumahan Persada Banten Blok TC1 No. 33 RT 08 RW 06, Kel. Teritih, Kec. Walantaka, Kota Serang-Banten 42183', '221810652@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810659', 'XAFRILLAH AGNES NALA AYULIA WASA HARDIANA', '3D31', 'DIV KOMPUTASI STATISTIK', '085234800487', 'Jl. Sensus IVd No.20 RT 01 RW 14, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810659@stis.ac.id', 'RB07', 'S001', '704', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810660', 'YENITA AMELIA IKA PUTRI', '3SI2', 'DIV KOMPUTASI STATISTIK', '085888603781', 'Jl. Masjid No.32', '221810660@stis.ac.id', 'RB05', 'S022', '001', 'J004', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810662', 'YOGA CAHYA PUTRA', '3SD1', 'DIV KOMPUTASI STATISTIK', '081227733747', 'Jl. Abimanyu RT 02 RW 06 Wonorawi, Dukuh, Sukoharjo, Jawa Tengah', '221810662@stis.ac.id', 'RB01', 'S016', '108', 'J003', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810670', 'YUDISTIRA ELTON JHON', '3SI2', 'DIV KOMPUTASI STATISTIK', '082231010399', 'Jl. Kebon Nanas Utara 1, Gg K.H Sabdalloh No. 4 RT 3 RW 7, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur', '221810670@stis.ac.id', 'RB03', 'S015', '306', 'J003', NULL, NULL, '2020-11-04 16:22:13', 1, NULL),
('221810672', 'YULIA ARYANI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082386517216', 'Jl. Otto Iskandardinata Raya, Gg H.Yahya No 6 (Griya Firamita) RT 01 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810672@stis.ac.id', 'RB07', 'S003', '712', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221810673', 'YULLY SEPTIA PERTIWI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081268327252', 'Jl. Mulia, No.21 RT 9 RW 8, Kp. Melayu, Kec. Jatinegara, DKI Jakarta 13330', '221810673@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810676', 'ZAHLUL FUADI', '3SI1', 'DIV KOMPUTASI STATISTIK', '08979846945', 'Jl. K. Inong Balee No.B34 Dusun Sederhana, Kopelma Darussalam, Syiah Kuala, Banda Aceh, Aceh', '221810676@stis.ac.id', 'RB05', 'S022', '001', 'J003', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810682', 'ZUHROTUR ROFIAH', '3SD2', 'DIV KOMPUTASI STATISTIK', '085216613593', 'Jl. Otista Raya, Gg. Mangga No.31 RT 04 RW 03, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810682@stis.ac.id', 'RB07', 'S003', '710', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_notula`
--

CREATE TABLE `sikoko_notula` (
  `id_notula` int(11) NOT NULL,
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `id_ketua` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_ketua` enum('Disetujui','Ditolak','Menunggu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Menunggu',
  `komentar_ketua` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_dosen` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_dosen` enum('Disetujui','Ditolak','Menunggu','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `komentar_dosen` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batal` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_notula_kosong`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_notula_kosong` (
`nim` varchar(9)
,`nama` varchar(50)
,`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_pengumuman`
--

CREATE TABLE `sikoko_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` date NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_progress`
--

CREATE TABLE `sikoko_progress` (
  `id_task` int(11) NOT NULL,
  `nama_task` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_subseksi` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_complete` int(3) NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_pendukung` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_rapat`
--

CREATE TABLE `sikoko_rapat` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_rapat` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_rapat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agenda` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `notulensi` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritas_enum` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ketua` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_sekretaris` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dengan_dosen` int(1) DEFAULT NULL,
  `peserta_bidang` int(11) DEFAULT NULL,
  `tipe` int(1) DEFAULT 0,
  `absensi` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_rapat_seksi`
--

CREATE TABLE `sikoko_rapat_seksi` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_subseksi` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_riset_bidang`
--

CREATE TABLE `sikoko_riset_bidang` (
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_riset_bidang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_zoom` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_riset_bidang`
--

INSERT INTO `sikoko_riset_bidang` (`id_risbid`, `nama_riset_bidang`, `meeting_id`, `link_zoom`) VALUES
('RB00', 'BPH Utama', '4185812554', 'https://zoom.us/j/4185812554?pwd=K2RJRUt4SkpWUkhud3QwenVxcnltdz09'),
('RB01', 'Riset 1', '4185812554', 'https://zoom.us/j/4587533259?pwd=Sld2QjFGUklYKzViTEVOenphT2xmdz09'),
('RB02', 'Riset 2', '8327385679', 'https://zoom.us/j/8327385679?pwd=TzVoTTM0emdJSjRLc3R0QWJyaGI5Zz09'),
('RB03', 'Riset 3', '9054703024', 'https://zoom.us/j/9054703024?pwd=U3UvMi8zczVEZU5WZjR2aHJvOEdoZz0'),
('RB04', 'Riset 4', '8902274545', 'https://zoom.us/j/8902274545?pwd=a0xsbGNSVHRlTjI1aWUyaUdTVE0xdz09'),
('RB05', 'Riset 5', '6142594492', 'https://zoom.us/j/6142594492?pwd=YnhPbUNyQURNUjJtTW1iejl0dkQ3QT09'),
('RB06', 'Riset 6', '9406507799', 'https://zoom.us/j/9406507799?pwd=TzVoTTM0emdJSjRLc3R0QWJyaGI5Zz09'),
('RB07', 'Bidang IT', '5982612099', 'https://zoom.us/j/5982612099?pwd=eEVVVVpneEUxKzl4ZzgrbTNBSHB2QT09'),
('RB08', 'Bidang Umum', '7908048588', 'https://zoom.us/j/7908048588?pwd=VE83Z25QazYwVE5CZGlZV0xQdFNiZz09'),
('RB09', 'PPPM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_ruang`
--

CREATE TABLE `sikoko_ruang` (
  `id_ruang` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_ruang`
--

INSERT INTO `sikoko_ruang` (`id_ruang`, `nama_ruang`) VALUES
('G111', 'Gedung 1 Lt. 1'),
('G121', 'Gedung 1 Lt. 2 PPPM'),
('G122', 'Gedung 1 Lt. 2 Unit Kajian'),
('G131', 'Gedung 1 Lt. 3 Prodi'),
('G132', 'Gedung 1 Lt. 3 SPM'),
('G141', 'Gedung 1 Lt. 4'),
('G221', 'Gedung 2 Lt .2'),
('G231', 'Gedung 2 Lt. 3'),
('G232', 'Gedung 2 Lt. 3 Perpustakaan'),
('G241', 'Gedung 2 Lt. 4 Unit TI'),
('G311', 'Gedung 3 Lt. 1 BAAK'),
('G312', 'Gedung 3 Lt.1 BU');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_seksi`
--

CREATE TABLE `sikoko_seksi` (
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_seksi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_seksi`
--

INSERT INTO `sikoko_seksi` (`id_seksi`, `nama_seksi`) VALUES
('S000', 'BPH '),
('S001', 'PVD'),
('S002', 'SIKOKO'),
('S003', 'SPD'),
('S004', 'BPH BIDANG/RISET'),
('S006', 'HUMAS'),
('S007', 'LOGISTIK'),
('S008', 'PUBDOK'),
('S009', 'ANALISIS'),
('S010', 'METODOLOGI 1'),
('S011', 'METODOLOGI 2'),
('S012', 'KUESIONER'),
('S013', 'METODOLOGI'),
('S014', 'PENGOLAHAN'),
('S015', 'DASHBOARD'),
('S016', 'METODOLOGI 3'),
('S020', 'BACK END'),
('S021', 'DATABASE'),
('S022', 'FRONT END');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_subseksi`
--

CREATE TABLE `sikoko_subseksi` (
  `id_subseksi` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_subseksi` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule_denda` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_subseksi`
--

INSERT INTO `sikoko_subseksi` (`id_subseksi`, `nama_subseksi`, `rule_denda`) VALUES
('000', 'BPH 5', 0),
('001', 'BPH SEKSI', 0),
('100', 'BPH RISET 1', 0),
('101', 'SUBKOOR 1', 0),
('102', 'SUBKOOR 2', 0),
('103', 'SUBKOOR 3', 0),
('104', 'ANALISIS 1', 0),
('105', 'ANALISIS 2', 0),
('106', 'TREATMENT 1', 0),
('107', 'TREATMENT 2', 0),
('108', 'SUBSEKSI 1', 0),
('109', 'SUBSEKSI 2', 0),
('200', 'BPH RISET 2', 0),
('201', 'BUKU PEDOMAN', 0),
('202', 'KUESIONER', 0),
('203', 'LISTING', 0),
('204', 'SP2R', 0),
('205', 'SAMPLING', 0),
('206', 'AB12', 0),
('207', 'ANALISIS DESKRIPTIF', 0),
('208', 'ANALISIS INFERENSIA', 0),
('300', 'BPH RISET 3', 0),
('301', 'AB12', 0),
('302', 'ANALISIS DESKRIPTIF', 0),
('303', 'ANALISIS INFERENSIA', 0),
('304', 'BACK END', 0),
('305', 'DATABASE', 0),
('306', 'FRONT END', 0),
('307', 'BUKU PEDOMAN', 0),
('308', 'PERTANYAAN', 0),
('309', 'SP2R', 0),
('310', 'LISTING', 0),
('311', 'SAMPLING', 0),
('400', 'BPH RISET 4', 0),
('401', 'AB12', 0),
('402', 'ANALISIS DESKRIPTIF', 0),
('403', 'ANALISIS INFERENSIA', 0),
('404', 'BUKU PEDOMAN', 0),
('405', 'PERTANYAAN', 0),
('406', 'SP3', 0),
('407', 'LISTING', 0),
('408', 'SAMPLING', 0),
('500', 'BPH RISET 5', 0),
('501', 'BACK END', 0),
('502', 'DATABASE', 0),
('503', 'FRONT END', 0),
('600', 'BPH RISET 6', 0),
('601', 'BUKU PEDOMAN', 0),
('602', 'KUESIONER', 0),
('603', 'PENGUMPULAN DATA', 0),
('604', 'SAMPLING', 0),
('605', 'ANALISIS', 0),
('606', 'PENGOLAHAN DATA', 0),
('607', 'VISUALISASI DAN DISEMINASI DATA', 0),
('700', 'BPH BIDANG IT', 0),
('701', 'PVD RISET 2', 0),
('702', 'PVD RISET 3', 0),
('703', 'PVD RISET 4', 0),
('704', 'PVD RISET 6', 0),
('705', 'BACK END', 0),
('706', 'DATABASE', 0),
('707', 'FRONT END', 0),
('708', 'ONLINE DISCUSSION', 0),
('709', 'CAWI', 0),
('710', 'DBWS', 0),
('711', 'KUESIONER', 0),
('712', 'WEB MONITORING', 0),
('713', 'WEB SERVER', 0),
('800', 'BPH RISET/BIDANG UMUM', 0),
('801', 'HUMAS EKSTERNAL', 0),
('802', 'HUMAS INTERNAL', 0),
('803', 'ATK DAN SOUVENIR', 0),
('804', 'JAKET PKL', 0),
('805', 'DESAIN GRAFIS', 0),
('806', 'FOTOGRAFI', 0),
('807', 'KEPENULISAN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_surat`
--

CREATE TABLE `sikoko_surat` (
  `id_surat` int(11) NOT NULL,
  `nama_surat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = sekre; 1 = semua',
  `upload_by` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_absen_total`
--
DROP TABLE IF EXISTS `sikoko_absen_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_absen_total`  AS  select `a`.`id_peserta` AS `id_peserta`,`b`.`nama` AS `nama`,round(avg(`a`.`presentase_presensi`),2) AS `presensi` from ((`sikoko_absensi_rapat` `a` left join `sikoko_mahasiswa` `b` on(`b`.`nim` = `a`.`id_peserta`)) left join `sikoko_rapat` `c` on(`c`.`id_rapat` = `a`.`id_rapat`)) where `c`.`waktu_mulai` < current_timestamp() and octet_length(`a`.`id_peserta`) = 7 group by `a`.`id_peserta` ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_all_rapat`
--
DROP TABLE IF EXISTS `sikoko_all_rapat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_all_rapat`  AS  select `sikoko_rapat`.`id_rapat` AS `id_rapat`,`sikoko_rapat_seksi`.`id_risbid` AS `id_risbid`,`sikoko_rapat_seksi`.`id_seksi` AS `id_seksi`,`sikoko_rapat_seksi`.`id_subseksi` AS `id_subseksi`,`sikoko_rapat`.`nama_rapat` AS `nama_rapat`,`sikoko_rapat`.`id_jenis_rapat` AS `id_jenis_rapat`,`sikoko_rapat`.`agenda` AS `agenda`,`sikoko_rapat`.`tempat` AS `tempat`,`sikoko_rapat`.`waktu_mulai` AS `waktu_mulai`,`sikoko_rapat`.`waktu_selesai` AS `waktu_selesai`,`sikoko_rapat`.`notulensi` AS `notulensi`,`sikoko_absensi_rapat`.`is_wajib` AS `is_wajib`,`sikoko_absensi_rapat`.`id_peserta` AS `id_peserta`,`sikoko_absensi_rapat`.`waktu_kedatangan` AS `waktu_kedatangan`,`sikoko_absensi_rapat`.`presentase_presensi` AS `presentase_presensi`,`sikoko_seksi`.`nama_seksi` AS `nama_seksi`,`sikoko_riset_bidang`.`nama_riset_bidang` AS `nama_riset_bidang`,`sikoko_subseksi`.`nama_subseksi` AS `nama_subseksi`,`sikoko_jenis_rapat`.`jenis_rapat` AS `jenis_rapat`,case when (current_timestamp() < `sikoko_rapat`.`waktu_mulai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is null) then 'Rapat Belum Dimulai' when (current_timestamp() >= `sikoko_rapat`.`waktu_mulai` and current_timestamp() < `sikoko_rapat`.`waktu_selesai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is null) then 'Rapat Telah Dimulai' when (`sikoko_absensi_rapat`.`waktu_kedatangan` <= `sikoko_rapat`.`waktu_mulai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is not null) then 'Hadir' when (`sikoko_absensi_rapat`.`waktu_kedatangan` > `sikoko_rapat`.`waktu_mulai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is not null) then 'Terlambat' else 'Tidak Hadir' end AS `kehadiran` from ((((((`sikoko_rapat` join `sikoko_rapat_seksi` on(`sikoko_rapat`.`id_rapat` = `sikoko_rapat_seksi`.`id_rapat`)) join `sikoko_absensi_rapat` on(`sikoko_rapat`.`id_rapat` = `sikoko_absensi_rapat`.`id_rapat`)) join `sikoko_jenis_rapat` on(`sikoko_rapat`.`id_jenis_rapat` = `sikoko_jenis_rapat`.`id_jenis_rapat`)) join `sikoko_seksi` on(`sikoko_rapat_seksi`.`id_seksi` = `sikoko_seksi`.`id_seksi`)) join `sikoko_riset_bidang` on(`sikoko_rapat_seksi`.`id_risbid` = `sikoko_riset_bidang`.`id_risbid`)) join `sikoko_subseksi` on(`sikoko_rapat_seksi`.`id_subseksi` = `sikoko_subseksi`.`id_subseksi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_kehadiran_total`
--
DROP TABLE IF EXISTS `sikoko_kehadiran_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_kehadiran_total`  AS  select `a`.`id_peserta` AS `id_peserta`,`b`.`nama` AS `nama`,round(avg(`a`.`presentase_presensi`),2) AS `presensi` from ((`sikoko_absensi_rapat` `a` left join `sikoko_mahasiswa` `b` on(`b`.`nim` = `a`.`id_peserta`)) left join `sikoko_rapat` `c` on(`c`.`id_rapat` = `a`.`id_rapat`)) where `c`.`waktu_mulai` < current_timestamp() and octet_length(`a`.`id_peserta`) = 9 group by `a`.`id_peserta` ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_laporan_dosen`
--
DROP TABLE IF EXISTS `sikoko_laporan_dosen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_laporan_dosen`  AS  select `a`.`id_rapat` AS `id_rapat`,`a`.`nama_rapat` AS `nama_rapat`,`a`.`waktu_mulai` AS `waktu_mulai`,`a`.`waktu_selesai` AS `waktu_selesai`,`a`.`tempat` AS `tempat`,`c`.`nip` AS `identitas`,`c`.`nama` AS `nama`,case when `b`.`presentase_presensi` > 0 then 'Hadir' else 'Tidak Hadir' end AS `kehadiran` from ((`sikoko_rapat` `a` join `sikoko_absensi_rapat` `b` on(`b`.`id_rapat` = `a`.`id_rapat`)) join `sikoko_dosen` `c` on(`c`.`nip` = `b`.`id_peserta`)) where `a`.`dengan_dosen` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_laporan_mhs`
--
DROP TABLE IF EXISTS `sikoko_laporan_mhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_laporan_mhs`  AS  select `a`.`id_rapat` AS `id_rapat`,`a`.`nama_rapat` AS `nama_rapat`,`a`.`waktu_mulai` AS `waktu_mulai`,`a`.`waktu_selesai` AS `waktu_selesai`,`a`.`tempat` AS `tempat`,`c`.`nim` AS `identitas`,`c`.`nama` AS `nama`,case when `b`.`presentase_presensi` > 0 then 'Hadir' else 'Tidak Hadir' end AS `kehadiran` from ((`sikoko_rapat` `a` join `sikoko_absensi_rapat` `b` on(`b`.`id_rapat` = `a`.`id_rapat`)) join `sikoko_mahasiswa` `c` on(`c`.`nim` = `b`.`id_peserta`)) where `a`.`dengan_dosen` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_laporan_rapat`
--
DROP TABLE IF EXISTS `sikoko_laporan_rapat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_laporan_rapat`  AS  select `sikoko_laporan_dosen`.`id_rapat` AS `id_rapat`,`sikoko_laporan_dosen`.`nama_rapat` AS `nama_rapat`,`sikoko_laporan_dosen`.`waktu_mulai` AS `waktu_mulai`,`sikoko_laporan_dosen`.`waktu_selesai` AS `waktu_selesai`,`sikoko_laporan_dosen`.`tempat` AS `tempat`,`sikoko_laporan_dosen`.`identitas` AS `identitas`,`sikoko_laporan_dosen`.`nama` AS `nama`,`sikoko_laporan_dosen`.`kehadiran` AS `kehadiran` from `sikoko_laporan_dosen` union all select `sikoko_laporan_mhs`.`id_rapat` AS `id_rapat`,`sikoko_laporan_mhs`.`nama_rapat` AS `nama_rapat`,`sikoko_laporan_mhs`.`waktu_mulai` AS `waktu_mulai`,`sikoko_laporan_mhs`.`waktu_selesai` AS `waktu_selesai`,`sikoko_laporan_mhs`.`tempat` AS `tempat`,`sikoko_laporan_mhs`.`identitas` AS `identitas`,`sikoko_laporan_mhs`.`nama` AS `nama`,`sikoko_laporan_mhs`.`kehadiran` AS `kehadiran` from `sikoko_laporan_mhs` order by `id_rapat` desc,`identitas` ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_notula_kosong`
--
DROP TABLE IF EXISTS `sikoko_notula_kosong`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_notula_kosong`  AS  select `sikoko_mahasiswa`.`nim` AS `nim`,`sikoko_mahasiswa`.`nama` AS `nama`,`sikoko_rapat`.`id_rapat` AS `id_rapat`,`sikoko_rapat`.`nama_rapat` AS `nama_rapat` from (`sikoko_rapat` join `sikoko_mahasiswa` on(`sikoko_rapat`.`id_sekretaris` = `sikoko_mahasiswa`.`nim`)) where `sikoko_rapat`.`notulensi` is null and `sikoko_rapat`.`nama_rapat`  not like 'Piket%' and `sikoko_rapat`.`nama_rapat`  not like '%basecamp%' and `sikoko_rapat`.`nama_rapat`  not like '%kumpul nge-plot%' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sikoko_absensi_rapat`
--
ALTER TABLE `sikoko_absensi_rapat`
  ADD PRIMARY KEY (`id_rapat`,`id_peserta`) USING BTREE,
  ADD KEY `id_rapat` (`id_rapat`,`id_peserta`) USING BTREE;

--
-- Indexes for table `sikoko_administrasi`
--
ALTER TABLE `sikoko_administrasi`
  ADD PRIMARY KEY (`id_administrasi`);

--
-- Indexes for table `sikoko_berita`
--
ALTER TABLE `sikoko_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_berita` (`id_berita`) USING BTREE;

--
-- Indexes for table `sikoko_dosen`
--
ALTER TABLE `sikoko_dosen`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `dosen_risbid_fk` (`id_risbid`),
  ADD KEY `jab_dosen_fk` (`id_jab_dosen`),
  ADD KEY `ruang_fk` (`id_ruang`);

--
-- Indexes for table `sikoko_jabatan`
--
ALTER TABLE `sikoko_jabatan`
  ADD PRIMARY KEY (`id_jab`);

--
-- Indexes for table `sikoko_jabatan_dosen`
--
ALTER TABLE `sikoko_jabatan_dosen`
  ADD PRIMARY KEY (`id_jab_dosen`);

--
-- Indexes for table `sikoko_jenis_rapat`
--
ALTER TABLE `sikoko_jenis_rapat`
  ADD PRIMARY KEY (`id_jenis_rapat`),
  ADD KEY `id_jenis_rapat` (`id_jenis_rapat`);

--
-- Indexes for table `sikoko_keys`
--
ALTER TABLE `sikoko_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikoko_knowledge_management`
--
ALTER TABLE `sikoko_knowledge_management`
  ADD PRIMARY KEY (`id_km`);

--
-- Indexes for table `sikoko_limits`
--
ALTER TABLE `sikoko_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikoko_mahasiswa`
--
ALTER TABLE `sikoko_mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `sikoko_mahasiswa_ibfk_1` (`id_jab`),
  ADD KEY `sikoko_mahasiswa_ibfk_2` (`id_risbid`),
  ADD KEY `sikoko_mahasiswa_ibfk_3` (`id_seksi`),
  ADD KEY `sikoko_mahasiswa_ibfk_6` (`id_subseksi`);

--
-- Indexes for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  ADD PRIMARY KEY (`id_notula`),
  ADD KEY `ketua_notula_rapat_fk` (`id_ketua`),
  ADD KEY `dosen_notula_rapat_fk` (`id_dosen`),
  ADD KEY `rapat_notula_rapat_fk` (`id_rapat`);

--
-- Indexes for table `sikoko_pengumuman`
--
ALTER TABLE `sikoko_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD KEY `id_berita` (`id_pengumuman`);

--
-- Indexes for table `sikoko_progress`
--
ALTER TABLE `sikoko_progress`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `sikoko_progress_ibfk_1` (`id_risbid`) USING BTREE,
  ADD KEY `sikoko_progress_ibfk_2` (`id_seksi`) USING BTREE,
  ADD KEY `sikoko_mahasiswa_ibfk_3` (`id_subseksi`);

--
-- Indexes for table `sikoko_rapat`
--
ALTER TABLE `sikoko_rapat`
  ADD PRIMARY KEY (`id_rapat`),
  ADD KEY `id_jenis_rapat` (`id_jenis_rapat`);

--
-- Indexes for table `sikoko_rapat_seksi`
--
ALTER TABLE `sikoko_rapat_seksi`
  ADD PRIMARY KEY (`id_rapat`,`id_risbid`,`id_seksi`,`id_subseksi`) USING BTREE,
  ADD KEY `id_risbid` (`id_risbid`),
  ADD KEY `id_seksi` (`id_seksi`),
  ADD KEY `id_subseksi` (`id_subseksi`),
  ADD KEY `id_rapat` (`id_rapat`);

--
-- Indexes for table `sikoko_riset_bidang`
--
ALTER TABLE `sikoko_riset_bidang`
  ADD PRIMARY KEY (`id_risbid`);

--
-- Indexes for table `sikoko_ruang`
--
ALTER TABLE `sikoko_ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `sikoko_seksi`
--
ALTER TABLE `sikoko_seksi`
  ADD PRIMARY KEY (`id_seksi`);

--
-- Indexes for table `sikoko_subseksi`
--
ALTER TABLE `sikoko_subseksi`
  ADD PRIMARY KEY (`id_subseksi`);

--
-- Indexes for table `sikoko_surat`
--
ALTER TABLE `sikoko_surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `id_surat` (`id_surat`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sikoko_keys`
--
ALTER TABLE `sikoko_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sikoko_knowledge_management`
--
ALTER TABLE `sikoko_knowledge_management`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_limits`
--
ALTER TABLE `sikoko_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  MODIFY `id_notula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_pengumuman`
--
ALTER TABLE `sikoko_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sikoko_progress`
--
ALTER TABLE `sikoko_progress`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `sikoko_surat`
--
ALTER TABLE `sikoko_surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sikoko_absensi_rapat`
--
ALTER TABLE `sikoko_absensi_rapat`
  ADD CONSTRAINT `rapat_fk` FOREIGN KEY (`id_rapat`) REFERENCES `sikoko_rapat` (`id_rapat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_dosen`
--
ALTER TABLE `sikoko_dosen`
  ADD CONSTRAINT `dosen_risbid_fk` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jab_dosen_fk` FOREIGN KEY (`id_jab_dosen`) REFERENCES `sikoko_jabatan_dosen` (`id_jab_dosen`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ruang_fk` FOREIGN KEY (`id_ruang`) REFERENCES `sikoko_ruang` (`id_ruang`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_mahasiswa`
--
ALTER TABLE `sikoko_mahasiswa`
  ADD CONSTRAINT `jabatan_mahasiswa_fk` FOREIGN KEY (`id_jab`) REFERENCES `sikoko_jabatan` (`id_jab`) ON UPDATE CASCADE,
  ADD CONSTRAINT `risbid_mahasiswa_fk` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `seksi_mahasiswa_fk` FOREIGN KEY (`id_seksi`) REFERENCES `sikoko_seksi` (`id_seksi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `subseksi_mahasiswa_fk` FOREIGN KEY (`id_subseksi`) REFERENCES `sikoko_subseksi` (`id_subseksi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  ADD CONSTRAINT `dosen_notula_rapat_fk` FOREIGN KEY (`id_dosen`) REFERENCES `sikoko_dosen` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ketua_notula_rapat_fk` FOREIGN KEY (`id_ketua`) REFERENCES `sikoko_mahasiswa` (`nim`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `rapat_notula_rapat_fk` FOREIGN KEY (`id_rapat`) REFERENCES `sikoko_rapat` (`id_rapat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_rapat`
--
ALTER TABLE `sikoko_rapat`
  ADD CONSTRAINT `jenis_rapat_fk` FOREIGN KEY (`id_jenis_rapat`) REFERENCES `sikoko_jenis_rapat` (`id_jenis_rapat`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_rapat_seksi`
--
ALTER TABLE `sikoko_rapat_seksi`
  ADD CONSTRAINT `sikoko_rapat_seksi_ibfk_2` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sikoko_rapat_seksi_ibfk_3` FOREIGN KEY (`id_seksi`) REFERENCES `sikoko_seksi` (`id_seksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sikoko_rapat_seksi_ibfk_4` FOREIGN KEY (`id_subseksi`) REFERENCES `sikoko_subseksi` (`id_subseksi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- Table structure for table `sikoko_absensi_rapat`
--

CREATE TABLE `sikoko_absensi_rapata` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_peserta` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_kedatangan` datetime DEFAULT NULL,
  `is_wajib` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentase_presensi` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
