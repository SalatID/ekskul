-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2020 pada 08.32
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekskul`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `id_provinsi` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `id_provinsi`, `nama`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id_provinsi` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id_provinsi`, `nama`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id_absen` int(10) NOT NULL,
  `id_pel` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_jadwal` int(10) NOT NULL,
  `absen_time` datetime DEFAULT NULL,
  `status` char(1) DEFAULT NULL,
  `date` date NOT NULL,
  `created_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_absen`
--

INSERT INTO `tb_absen` (`id_absen`, `id_pel`, `id_siswa`, `id_jadwal`, `absen_time`, `status`, `date`, `created_dt`) VALUES
(2006036692, 2005056117, 2005031665, 2005193455, '2020-06-03 09:06:00', '1', '2020-06-03', '2020-06-03 08:50:20'),
(2006300255, 2005056117, 2005202377, 2005193455, '2020-06-30 06:49:50', '1', '2020-06-30', '2020-06-30 06:49:50'),
(2006300608, 2005056117, 2005202377, 2005201008, '2020-06-30 06:49:58', '1', '2020-06-30', '2020-06-30 06:49:58'),
(2006300681, 2005056117, 2005031665, 2005193455, '2020-06-30 06:49:47', '1', '2020-06-30', '2020-06-30 06:49:47'),
(2006300783, 2005056117, 2005208469, 2005193455, '2020-06-30 06:49:49', '1', '2020-06-30', '2020-06-30 06:49:49'),
(2006301961, 2005056117, 2005207388, 2005193455, '2020-06-30 06:49:48', '1', '2020-06-30', '2020-06-30 06:49:48'),
(2006302954, 2005056117, 2005202377, 2005191799, '2020-06-30 06:49:38', '1', '2020-06-30', '2020-06-30 06:49:38'),
(2006303066, 2005056117, 2005207388, 2005191799, '2020-06-30 06:49:35', '1', '2020-06-30', '2020-06-30 06:49:35'),
(2006304670, 2005056117, 2005031665, 2005191799, '2020-06-30 06:49:34', '1', '2020-06-30', '2020-06-30 06:49:34'),
(2006306147, 2005056117, 2005206625, 2005201008, '2020-06-30 06:50:00', '1', '2020-06-30', '2020-06-30 06:50:00'),
(2006306440, 2005056117, 2005205175, 2005193455, '2020-06-30 06:49:49', '1', '2020-06-30', '2020-06-30 06:49:49'),
(2006306621, 2005056117, 2005031665, 2005201008, '2020-06-30 06:49:59', '1', '2020-06-30', '2020-06-30 06:49:59'),
(2006306688, 2005056117, 2005208469, 2005201008, '2020-06-30 06:49:58', '1', '2020-06-30', '2020-06-30 06:49:58'),
(2006306760, 2005056117, 2005206720, 2005201008, '2020-06-30 06:49:57', '1', '2020-06-30', '2020-06-30 06:49:57'),
(2006307136, 2005056117, 2005205175, 2005191799, '2020-06-30 06:49:36', '1', '2020-06-30', '2020-06-30 06:49:36'),
(2006307245, 2005056117, 2005208469, 2005191799, '2020-06-30 06:49:37', '1', '2020-06-30', '2020-06-30 06:49:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ekskul`
--

CREATE TABLE `tb_ekskul` (
  `id_ekskul` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(12) DEFAULT NULL,
  `tgl_gabung` datetime DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ekskul`
--

INSERT INTO `tb_ekskul` (`id_ekskul`, `nama`, `alamat`, `telepon`, `tgl_gabung`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2005040850, 'Pencak Silat', 'ajdflkajdlf', '294800', '2020-05-04 00:00:00', '2020-05-04 17:05:40', NULL, NULL, NULL),
(2005209163, 'Futsal', 'SMP Al Itijhad', '55487223', '2020-05-20 00:00:00', '2020-05-20 10:18:48', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(20) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `jns_kel` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `id_provinsi` int(5) DEFAULT NULL,
  `id_kota` int(5) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(12) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(100) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `created_dt` date DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` date DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`id_guru`, `nama_guru`, `nip`, `jns_kel`, `alamat`, `id_provinsi`, `id_kota`, `kode_pos`, `email`, `telepon`, `tempat_lahir`, `tgl_lahir`, `agama`, `foto`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2005056117, 'Bambang Pamungkas', '1122342', 'L', 'jsdlfladjf', 36, 3671, 11228, 'bambang.pamungkas@gmail.com', '11223344', 'Tangerang', '2020-05-29', '1', NULL, '2020-05-05', NULL, NULL, NULL),
(2005045337, 'Bambang', '112233', 'L', 'asdsd', 36, 3671, 11233, 'bambang@alitijhad.com', '1234567', 'Tangerang', '2020-05-20', '1', NULL, '2020-05-04', NULL, NULL, NULL),
(1911300286, 'Mursalat Asyidiq', '1122342', 'L', 'jsdlfladjf', 36, 3671, 11228, 'mursalat@raharja.info', '11223344', 'Tangerang', '2020-05-29', '1', NULL, '2020-05-05', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_hari`
--

CREATE TABLE `tb_hari` (
  `id_hari` int(1) NOT NULL,
  `nama` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_hari`
--

INSERT INTO `tb_hari` (`id_hari`, `nama`) VALUES
(1, 'Minggu'),
(2, 'Senin'),
(3, 'Selasa'),
(4, 'Rabu'),
(5, 'Kamis'),
(6, 'Jumat'),
(7, 'Sabtu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_his_keluhan`
--

CREATE TABLE `tb_his_keluhan` (
  `id_his` int(10) NOT NULL,
  `id_keluhan` int(10) DEFAULT NULL,
  `status` char(3) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_his_keluhan`
--

INSERT INTO `tb_his_keluhan` (`id_his`, `id_keluhan`, `status`, `created_dt`, `created_user`) VALUES
(2008037132, 2008035732, '0', '2020-08-03 13:29:36', 2005056117);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jad`
--

CREATE TABLE `tb_jad` (
  `id_jadwal` int(10) NOT NULL,
  `id_ekskul` int(10) NOT NULL,
  `jam` int(2) DEFAULT NULL,
  `starting_hour` time NOT NULL,
  `finishing_hour` time NOT NULL,
  `hari` varchar(10) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jad`
--

INSERT INTO `tb_jad` (`id_jadwal`, `id_ekskul`, `jam`, `starting_hour`, `finishing_hour`, `hari`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2005191799, 2005040850, NULL, '09:00:00', '11:00:00', 'Senin', '2020-05-19 14:29:16', NULL, NULL, NULL),
(2005193455, 2005040850, NULL, '08:00:00', '09:00:00', 'Senin', '2020-05-19 14:16:55', NULL, NULL, NULL),
(2005197675, 2005040850, NULL, '08:00:00', '09:00:00', 'Selasa', '2020-05-19 14:21:20', NULL, NULL, NULL),
(2005201008, 2005209163, NULL, '08:00:00', '09:00:00', 'Rabu', '2020-05-20 13:03:03', 2005056117, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kapasitas` int(3) NOT NULL,
  `proyektor` char(3) DEFAULT NULL,
  `papan_tulis` char(3) DEFAULT NULL,
  `komputer` char(3) DEFAULT NULL,
  `ac` char(3) DEFAULT NULL,
  `sound_system` char(3) DEFAULT NULL,
  `created_dt` date DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` date DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama`, `kapasitas`, `proyektor`, `papan_tulis`, `komputer`, `ac`, `sound_system`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2005037891, 'VII-A', 40, 'on', 'on', 'on', 'on', NULL, '2020-05-03', NULL, '2020-05-03', NULL),
(2005209100, 'VII-B', 40, NULL, 'on', 'on', 'on', NULL, '2020-05-20', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_keluhan`
--

CREATE TABLE `tb_keluhan` (
  `id_keluhan` int(10) NOT NULL,
  `keluhan` text DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `status` char(2) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_keluhan`
--

INSERT INTO `tb_keluhan` (`id_keluhan`, `keluhan`, `feedback`, `status`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2008035732, 'Tes Keluhan', NULL, '0', '2020-08-03 13:29:36', 2005056117, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_member_ekskul`
--

CREATE TABLE `tb_member_ekskul` (
  `id_member` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_ekskul` int(10) NOT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_member_ekskul`
--

INSERT INTO `tb_member_ekskul` (`id_member`, `id_siswa`, `id_ekskul`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2005200314, 2005207388, 2005040850, '2020-05-20 09:26:35', NULL, NULL, NULL),
(2005201323, 2005031665, 2005209163, '2020-05-20 10:30:22', NULL, NULL, NULL),
(2005201929, 2005031665, 2005040850, '2020-05-20 10:38:25', NULL, NULL, NULL),
(2005203107, 2005208469, 2005040850, '2020-05-20 10:38:33', NULL, NULL, NULL),
(2005203384, 2005206625, 2005209163, '2020-05-20 10:37:53', NULL, NULL, NULL),
(2005205384, 2005202377, 2005209163, '2020-05-20 10:37:28', NULL, NULL, NULL),
(2005206137, 2005202377, 2005040850, '2020-05-20 10:38:12', NULL, NULL, NULL),
(2005207167, 2005206720, 2005209163, '2020-05-20 10:37:36', NULL, NULL, NULL),
(2005207286, 2005205175, 2005040850, '2020-05-20 10:29:57', NULL, NULL, NULL),
(2005208658, 2005208469, 2005209163, '2020-05-20 10:37:45', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(10) NOT NULL,
  `id_siswa` int(10) NOT NULL,
  `id_ekskul` int(10) NOT NULL,
  `nilai` int(3) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `id_siswa`, `id_ekskul`, `nilai`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2007240426, 2005207388, 2005209163, 4, '2020-06-25 06:23:42', 2005056117, NULL, NULL),
(2007240428, 2005207388, 2005191799, 1, '2020-07-24 06:23:42', 2005056117, NULL, NULL),
(2007240429, 2005207388, 2005209163, 1, '2020-06-25 06:23:42', 2005056117, NULL, NULL),
(2007242505, 2005206625, 2005201008, 10, '2020-07-24 06:24:23', 2005056117, NULL, NULL),
(2007242619, 2005202377, 2005201008, 5, '2020-07-24 06:24:23', 2005056117, NULL, NULL),
(2007243974, 2005208469, 2005191799, 1, '2020-07-24 06:23:42', 2005056117, NULL, NULL),
(2007246221, 2005031665, 2005201008, 5, '2020-07-24 06:24:23', 2005056117, NULL, NULL),
(2007246233, 2005208469, 2005201008, 6, '2020-07-24 06:24:23', 2005056117, NULL, NULL),
(2007247239, 2005205175, 2005191799, 1, '2020-07-24 06:23:42', 2005056117, NULL, NULL),
(2007247574, 2005031665, 2005191799, 1, '2020-07-24 06:23:42', 2005056117, NULL, NULL),
(2007248403, 2005202377, 2005191799, 1, '2020-07-24 06:23:42', 2005056117, NULL, NULL),
(2007248404, 2005202377, 2005209163, 1, '2020-06-25 06:23:42', 2005056117, NULL, NULL),
(2007248964, 2005206720, 2005201008, 8, '2020-07-24 06:24:23', 2005056117, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ortu`
--

CREATE TABLE `tb_ortu` (
  `id` int(10) NOT NULL,
  `id_siswa` int(10) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `status` int(3) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `id_provinsi` int(5) DEFAULT NULL,
  `id_kota` int(5) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `created_dt` datetime DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ortu`
--

INSERT INTO `tb_ortu` (`id`, `id_siswa`, `nama`, `status`, `tempat_lahir`, `tgl_lahir`, `alamat`, `id_provinsi`, `id_kota`, `kode_pos`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(1911286726, 1911233518, 'Sartika', 1, 'Tangerang', '2019-11-22', 'cccc', 36, 3601, 1234, '2019-11-28 09:50:51', NULL, '2019-11-28 10:12:40', NULL),
(1911286919, 1911233518, 'Sukamto', 0, 'Wonogiri', '2019-11-16', 'zzzz', 36, 3601, 1234, '2019-11-28 09:50:51', NULL, '2019-11-28 10:12:40', NULL),
(2001110587, 2001117780, 'Ayah', 0, 'Tangerang', '2020-01-07', 'dajslfjladskf', 12, 1101, 12344, '2020-01-11 17:45:41', 1911300286, NULL, NULL),
(2001162714, 2001113776, 'Sartika', 1, 'Tangerang', '2020-01-02', 'sdfadf', 11, 1102, 1234, '2020-01-16 19:20:25', 1911300286, '2020-01-16 19:21:02', 1911300286),
(2001163573, 2001113776, 'Sukamto', 0, 'Tangerang', '2020-01-01', 'ASfsadf', 11, 1102, 1234, '2020-01-16 19:20:25', 1911300286, '2020-01-16 19:21:02', 1911300286);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pel_ekskul`
--

CREATE TABLE `tb_pel_ekskul` (
  `id_pel` int(10) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_ekskul` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pel_ekskul`
--

INSERT INTO `tb_pel_ekskul` (`id_pel`, `id_user`, `id_ekskul`) VALUES
(2005056830, 2005056117, 2005040850),
(2005204026, 2005056117, 2005209163);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(5) NOT NULL,
  `nis` int(11) NOT NULL,
  `nipd` int(9) NOT NULL,
  `nisn` int(10) NOT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `id_kelas` int(5) DEFAULT NULL,
  `jns_kel` char(1) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `id_provinsi` int(5) DEFAULT NULL,
  `id_kota` int(5) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `created_dt` date DEFAULT NULL,
  `created_user` int(10) DEFAULT NULL,
  `updated_dt` date DEFAULT NULL,
  `updated_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nis`, `nipd`, `nisn`, `nama_siswa`, `id_kelas`, `jns_kel`, `alamat`, `id_provinsi`, `id_kota`, `kode_pos`, `images`, `tempat_lahir`, `tgl_lahir`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(2005031665, 111111, 111111, 111111, 'Mursalat Asyidiq', 2005037891, 'L', 'sssssss', 36, 3671, 1232445, NULL, 'Tangerang', '2020-05-28', '2020-05-03', NULL, NULL, NULL),
(2005202377, 12323, 1223, 133, 'Yoga', 2005037891, 'L', 'Jl. Jalan', 36, 3671, 124, NULL, 'Tangerang', '2020-05-02', '2020-05-20', NULL, NULL, NULL),
(2005205175, 32145, 23451, 23451, 'Udin Saipudin', 2005209100, 'L', 'Tangerang Selatan', 36, 3674, 14564, NULL, 'Tangerang', '1999-03-10', '2020-05-20', NULL, NULL, NULL),
(2005206625, 111113, 123445, 234562, 'Bambang', 2005209100, 'L', 'Tangerang', 36, 3671, 12356, NULL, 'Jakarta', '1999-02-09', '2020-05-20', NULL, NULL, NULL),
(2005206720, 4343243, 543543, 34132, 'Yulianti', 2005037891, 'P', 'Jl. Julianti', 36, 3674, 3131234, NULL, 'Jakarta', '2020-05-15', '2020-05-20', NULL, NULL, NULL),
(2005207388, 43235, 34245, 34532, 'Uda Minang', 2005209100, 'L', 'Cilegon', 36, 3672, 13411, NULL, 'Tangerang', '1999-04-14', '2020-05-20', NULL, NULL, NULL),
(2005208469, 3432, 23431, 1233, 'Yeni', 2005037891, 'P', 'Jl. Jalan', 36, 3671, 23423, NULL, 'Tangerang', '2020-05-02', '2020-05-20', NULL, NULL, NULL),
(2007156523, 123664, 123776, 123778, 'Fery Andry', 2005037891, 'L', 'Jalan-jalan', 36, 3603, 12648, NULL, 'Tangerang', '2020-07-08', '2020-07-15', 2005056117, NULL, NULL),
(2007159591, 1236558, 48878, 78756432, 'Irpan Riyadi', 2005037891, 'L', 'Test', 36, 3672, 222364, NULL, 'Tangerang', '2020-07-10', '2020-07-15', 2005056117, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `emailVal` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `levelId` int(5) NOT NULL,
  `images` varchar(100) DEFAULT NULL,
  `created_dt` datetime NOT NULL,
  `created_user` varchar(10) DEFAULT NULL,
  `updated_dt` datetime DEFAULT NULL,
  `updated_user` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `emailVal`, `password`, `levelId`, `images`, `created_dt`, `created_user`, `updated_dt`, `updated_user`) VALUES
(1911300286, 'admin@salat.id', '$2y$12$6iX9bFkj1c11qlfWtqZZA.WIj7w/8YffQpx/wH0EtBco4/Jh2kl36', 1, NULL, '2020-01-04 13:08:59', NULL, NULL, NULL),
(2005045337, 'bambang@alitijhad.com', '$2y$10$G.6GVZ.7.veGIv9zqfNgtuKxfalYXyKsRMdi4g5thIvBCeuf9VOWi', 2, NULL, '2020-05-04 16:44:01', NULL, NULL, NULL),
(2005056117, 'bambang.pamungkas@gmail.com', '$2y$10$nXIJ63waByggzPTOItBUdOQCWGDfzDsNqpAY3QIQhZsSq9Z2nwb2i', 2, NULL, '2020-05-05 20:36:51', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`),
  ADD KEY `regencies_province_id_index` (`id_provinsi`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indeks untuk tabel `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id_absen`,`id_pel`,`id_siswa`,`id_jadwal`,`date`);

--
-- Indeks untuk tabel `tb_ekskul`
--
ALTER TABLE `tb_ekskul`
  ADD PRIMARY KEY (`id_ekskul`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `tb_hari`
--
ALTER TABLE `tb_hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `tb_his_keluhan`
--
ALTER TABLE `tb_his_keluhan`
  ADD PRIMARY KEY (`id_his`);

--
-- Indeks untuk tabel `tb_jad`
--
ALTER TABLE `tb_jad`
  ADD PRIMARY KEY (`id_jadwal`,`id_ekskul`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `idkelas` (`id_kelas`);

--
-- Indeks untuk tabel `tb_keluhan`
--
ALTER TABLE `tb_keluhan`
  ADD PRIMARY KEY (`id_keluhan`);

--
-- Indeks untuk tabel `tb_member_ekskul`
--
ALTER TABLE `tb_member_ekskul`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`,`id_siswa`,`id_ekskul`);

--
-- Indeks untuk tabel `tb_ortu`
--
ALTER TABLE `tb_ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pel_ekskul`
--
ALTER TABLE `tb_pel_ekskul`
  ADD PRIMARY KEY (`id_pel`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`,`nis`,`nipd`,`nisn`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`,`emailVal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2005056119;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2005209101;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`id_provinsi`) REFERENCES `provinsi` (`id_provinsi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
