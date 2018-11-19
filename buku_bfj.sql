-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 01 Nov 2018 pada 22.42
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buku_bfj`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama_dus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `kategori`, `penulis`, `penerbit`, `tahun_terbit`, `jumlah`, `nama_dus`) VALUES
(1, 'Abu Nawas ', 'Dongeng Anak', 'Sayidah Rohmah ', 'Tiga Ananda ', '2017', 1, 'Bulan'),
(2, 'Bumi Penyedia Kebutuhan Kita', 'Pengetahuan Umum', 'DKWardhani', 'Tiga Ananda ', '2017', 1, 'Bulan'),
(3, 'Bintang Kelas ', 'Cerita Anak ', 'Rahmat Hidayat dan Aep S', 'PT. Sinar Wadja Lestari ', '2007', 1, 'Bulan'),
(4, 'Kumpulan Dongeng Anak Sedunia ', 'Dongeng Anak', 'Tira Ikranegara ', 'Dua Media ', '-', 1, 'Bulan'),
(5, 'Teman Istimewa ', 'Cerita Anak ', 'Dian Kristiani ', 'Tiga Ananda ', '2015', 1, 'Bulan'),
(6, 'I Can Say Astaghfirullah ', 'Buku Islami ', 'Ahmad Zakky ', 'Zikrul ', '2017', 1, 'Bulan'),
(7, 'Why ? Happy Math ', 'Pengetahuan Umum', 'Soe, Chan-Suk ', 'PT Elex Media Komputindo ', '2010', 1, 'Bulan'),
(8, 'Doa dan Dzikir Sehari-hari', 'Buku Islami ', 'Jimmy Lesmana ', 'Jabal ', '2017', 1, 'Bulan'),
(9, 'Kisah Nabi Muhammad SAW. Pembebasan Kota Makkah', 'Buku Islami ', 'Nur Wahidin ', 'Mizan ', '2000', 1, 'Bulan'),
(10, 'Avalonia Castle ', 'Cerita Anak ', 'Kirana ', 'Mizan ', '2012', 1, 'Bulan'),
(11, 'Adikku Suka Berkhayal ', 'Cerita Anak ', 'Edi Warsidi ', 'Mizan ', '2008', 1, 'Bulan'),
(12, 'Foot 2 Rue Street Soccer ', 'Cerita Anak ', 'Mariolle Cardone ', 'PT. Elex Media Komputindo ', '2010', 1, 'Bulan'),
(13, 'Sport is Fun ', 'Cerita Anak ', 'Natasya DKK ', 'Mizan ', '2015', 1, 'Bulan'),
(14, 'Sekantong Surat Sehat Untuk dr. Enny ', 'Pengetahuan Umum', 'Endang Rahayu Sedyaningsih ', 'Kementerian Kesehatan RI ', '2011', 1, 'Bulan'),
(15, 'Balita pun Hafal Al-Quran ', 'Serial Tokoh ', 'Salafuddin Abu Sayyid', 'Tinta Medina ', '2012', 1, 'Bulan'),
(16, 'Dug! Dug! Dag! Pinu ke mana ?', 'Dongeng Anak', 'Tethy Ezokanzo ', 'Pustaka Al-Kautsar ', '2012', 1, 'Bulan'),
(17, 'Langitku ', 'Cerita Anak ', 'Lara Fridani, Lilis, dan Endah ', 'Ganeca ', '2007', 1, 'Bulan'),
(18, 'Aku Anak Beriman ', 'Cerita Anak ', 'Asep Zaenal Ausop ', 'MQ Kecil ', '2005', 1, 'Bulan'),
(19, 'Toni Si Wartawan Cilik ', 'Cerita Anak ', 'Boy Hendra Kanu ', 'Mugantara ', '1995', 2, 'Bulan'),
(20, 'Impian Pelukis Cilik ', 'Serial Tokoh ', 'Hariyadi ', 'Tiga Ananda ', '2014', 1, 'Bulan'),
(21, 'Tendangan Langit Dea ', 'Serial Tokoh ', 'Hariyadi ', 'Tiga Ananda ', '2014', 1, 'Bulan'),
(22, 'Asterix dan Sabit Emas ', 'Dongeng Anak', 'Goscinny ', 'Pustaka Sinar Harapan ', '2001', 1, 'Bulan'),
(23, 'Rahasia Planet Bumi ', 'Pengetahuan Umum', 'Risyad Efendi ', 'PT Remaja Rosdakarya ', '2006', 1, 'Bulan'),
(24, 'Ayo, Mengukur Luas ', 'Pengetahuan Umum', 'Alanna F dan Dudi F', 'CV Graha Ilmu Mulia ', '2009', 1, 'Bulan'),
(25, 'Eri Chan ! Anak Baru', ' Komik Anak ', 'Putri Soekidin ', 'Mizan ', '2014', 1, 'Bulan'),
(26, 'Brilian Arimatika & Sempoa ', 'Pengetahuan Umum', 'Media Group ', 'Lintas Media ', '-', 1, 'Bulan'),
(27, 'Miracle Number ', 'Pengetahuan Umum', 'Addit P dan Budiarto ', 'Media Edukasi ', '2009', 1, 'Bulan'),
(28, 'Si Kancil Menolong sang Kerbau ', 'Dongeng Anak', 'Rudewidjaya ', 'Map Plus ', '2015', 1, 'Bulan'),
(29, 'Lagu-Lagu untuk Sekolah ', 'Pengetahuan Umum', 'Muchlis dan Azmy ', 'Perpustakaan Nasional RI ', '2007', 1, 'Bulan'),
(30, 'Hercules Friends and Foes ', 'Dongeng Anak', 'Margo Lundell ', 'Golden Books ', '-', 1, 'Bulan'),
(31, 'Kumpulan Dongeng Si Kancil ', 'Dongeng Anak', 'Silviana ', 'Widya Karya ', '2016', 1, 'Bulan'),
(32, 'Cerita Rakyat Nusantara ', 'Cerita Anak ', 'KiPanutur ', 'CV. Cahaya Agency Surabaya ', '-', 1, 'Bulan'),
(33, 'Dengue, Virus Mematikan ', 'Cerita Anak ', 'Rahmat Margajaya ', 'Ganeca ', '2007', 1, 'Bulan'),
(34, 'Misteri Leak yang Menakutkan ', 'Cerita Anak ', 'Rasyid Akbar ', 'Zikrul Hakim ', '2010', 1, 'Bulan'),
(35, 'RPUL ', 'Pengetahuan Umum', 'Sucipto Suntoro ', 'Bringin ', '2004', 1, 'Bulan'),
(36, 'Hutan Pakar ', 'Dongeng Anak', 'Galang Tirtakusuma ', 'Mizan ', '2013', 1, 'Bulan'),
(37, 'Halilintar Aku Memberi Harapan dan Ketakutan ', 'Cerita Anak ', 'Mnasin, S.Pd', 'E Kids ', '2010', 1, 'Bulan'),
(38, 'Kamus Basa Sunda ', 'Pengetahuan Umum', 'Surayin dan Drs. E. Kosasih ', 'Yrama Widya ', '2007', 1, 'Bulan'),
(39, 'Petualangan Antariksa ', 'Cerita Anak ', 'Jusuf D.C. ', 'Ganeca Exact ', '2007', 1, 'Bulan'),
(40, 'Margasatwa ', 'Pengetahuan Umum', 'Steve Pollock ', 'PT. Remaja Rosdakarya ', '2006', 2, 'Bulan'),
(41, 'Kabur dari Istana ', 'Novel Anak ', 'Tethy Ezokanzo & Wahyu A', 'Al-Kautsar Kids ', '2014', 2, 'Bulan'),
(42, 'Kisah-Kisah Teladan Anak yang Menakjubkan ', 'Buku Islami ', 'Gibran Maulana ', 'CV. Cahaya Agency Surabaya ', '-', 1, 'Bulan'),
(43, 'Trik-Trik Berhitung ', 'Pengetahuan Umum', 'Edward H. Julius ', 'Pakar Raya ', '2005', 1, 'Bulan'),
(44, 'Dokter Gigi ', 'Cerita Anak ', 'Rae Sita Patappa ', 'Tiga Ananda ', '2017', 1, 'Bulan'),
(45, 'Gemar Belajar Shalat dan Berdoa disertai Juz Amma ', 'Buku Islami ', 'Mmansyur Akram ', 'Pustaka Sandro Jaya ', '-', 1, 'Bulan'),
(46, 'Kisah Teladan 25 Nabi & Rasul ', 'Buku Islami ', 'MBRahimsyah ', 'Bintang Usaha Jaya ', '-', 1, 'Bulan'),
(47, 'Bob the Builder ', 'Cerita Anak ', 'Rosi L. Simamora ', 'Gramedia ', '2002', 1, 'Bulan'),
(48, '30 Cerita Tata Krama ', 'Cerita Anak ', 'Lia Herliana ', 'Tiga Ananda ', '2017', 1, 'Bulan'),
(49, 'Kumpulan Cerita Rakyat 33 Provinsi', 'Dongeng Anak', 'Yustitia Angelia ', 'Lingkar Media ', '-', 1, 'Bulan'),
(50, 'Penjual Susu yang Jujur dan Berbakti ', 'Cerita Anak ', 'Astia ', 'Nuansa Aulia ', '2008', 1, 'Bulan'),
(51, 'Kata-Kata Ajaib Nana ', 'Cerita Anak ', 'Bambang Trimansyah ', 'Ganeca ', '2007', 1, 'Bulan'),
(52, 'Serpihan Sopan Santun ', 'Cerita Anak ', 'Narsito ', 'Angkasa ', '1998', 1, 'Bulan'),
(53, 'Kaum Baalbek ', 'Buku Islami ', 'Asep T. Turyana ', 'E Kids ', '2007', 1, 'Bulan'),
(54, 'Lancar Membaca ', 'Pengetahuan Umum', 'Cindy Salsabilla ', 'Serba Jaya ', '-', 1, 'Bulan'),
(55, 'Makhluk  Hidup dan Proses Kehidupan ', 'Pengetahuan Umum', 'Diah Rahmatia dan Pipit ', 'Ganeca ', '2007', 1, 'Bulan'),
(56, 'Mengenal Ilmu Pangan Dunia ', 'Pengetahuan Umum', 'Janine Amos ', 'PT Ikrar Mandiriabadi ', '2001', 1, 'Bulan'),
(57, 'Gaya, Usaha, dan Energi ', 'Pengetahuan Umum', 'Sri Soeyati dan Agus Salam  ', 'Ganeca ', '2007', 1, 'Bulan'),
(58, 'Atlas Lautan ', 'Atlas ', 'Nicholas Harris ', 'E Kids ', '2007', 1, 'Bulan'),
(59, 'Superb Kuri ', 'Cerita Anak ', 'Vya Ansyah ', 'Mizan ', '2012', 1, 'Bulan'),
(60, 'Mainan Kertas yang Dapat Terbang ', 'Pengetahuan Umum', 'Erichard Churchill ', 'Angkasa ', '1996', 1, 'Bulan'),
(61, 'The Purple Basket Team ', 'Novel Anak ', 'Ida Robit ', 'Noura Books', '2013', 1, 'Bulan'),
(62, 'LOLI the Little Fairy ', 'Cerita Anak ', 'Fira ', 'Mizan ', '2008', 1, 'Bulan'),
(63, 'Menari di Pelangi ', 'Cerita Anak ', 'Yunda ', 'Mizan ', '2010', 1, 'Bulan'),
(64, 'Kumpulan Lagu-Lagu Daerah ', 'Pengetahuan Umum', 'RERangkuti DKK', 'Titik Terang ', '-', 1, 'Bulan'),
(65, 'Aku Suka Sayuran ', 'Cerita Anak ', 'Meilany dan Agus Safitri ', 'PT Sarana Panca Karya Nusa ', '2016', 1, 'Bulan'),
(66, 'Kegiatan Bahasa Arab di Pasar ', 'Cerita Anak ', 'Ahmad Dimyati ', 'Tiga Serangkai ', '2009', 1, 'Bulan'),
(67, 'Benda-Benda Alam', 'Pengetahuan Umum', 'Ervina Fitriani dan Endi Astiko ', 'PT Sarana Panca Karya Nusa ', '2017', 1, 'Bulan'),
(68, 'Siapakah Thomas Alva Edison ? ', 'Serial Tokoh ', 'Margareth Frith ', 'Grasindo ', '2007', 1, 'Bulan'),
(69, 'Kalangkang Salawasna Ngukuntit Aranjeun ', 'Cerita Anak ', 'Anno D dan M. Nasin ', 'Epsilon Grup ', '2009', 1, 'Bulan'),
(70, 'Ensiklopedia \"Serba Paling\" Seantero Dunia ', 'Ensiklopedia ', 'Engga Aksara & Superteam ', 'Cahaya Atma Pustaka ', '2015', 1, 'Bulan'),
(71, 'RPUL 2012-2013', 'Pengetahuan Umum', 'Sugeng HR ', 'Aneka Ilmu ', '2004', 1, 'Bulan'),
(72, 'Api Aku si Panas yang Membakar ', 'Dongeng Anak', 'ADSanjari dan M. Nasin, S.Pd.', 'E Kids ', '2010', 1, 'Bulan'),
(73, 'Aku Balita Hebat ', 'Cerita Anak ', 'Nadiah Alwi DKK ', 'Mizan ', '2013', 1, 'Bulan'),
(74, 'Tuntunan Shalat Lengkap ', 'Buku Islami ', 'TIM', 'Jabal ', '2018', 1, 'Bulan'),
(75, 'Coconut (Kelapa)', 'Dongeng Anak', 'Setiawan G Sasongko ', 'Bestari Kids ', '2007', 1, 'Bulan'),
(76, 'Mendongeng dengan Boneka ', 'Cerita Anak ', 'Tuti Gunawan ', 'PT Penerbitan Sarana Bobo ', '2010', 1, 'Bulan'),
(77, 'Mia dan Pangeran Angsa ', 'Dongeng Anak', 'Nita Dananti Dewi ', 'Tiga Ananda ', '2018', 1, 'Bulan'),
(78, 'Ayo, Mengukur Jarak ', 'Pengetahuan Umum', 'Alanna F dan Dudi F', 'CV Graha Ilmu Mulia ', '2009', 1, 'Bulan'),
(79, 'RPAL ', 'Pengetahuan Umum', 'Rsoetarno ', 'Aneka Ilmu ', '2001', 1, 'Bulan'),
(80, 'Cahaya dan Warna ', 'Pengetahuan Umum', 'Gerard Cheshire ', 'Tiga Serangkai ', '2008', 1, 'Bulan'),
(81, 'Langit Aku Terbentang Luas di Atas Bumi ', 'Cerita Anak ', 'Mnasin, S.Pd', 'E Kids ', '2006', 1, 'Bulan'),
(82, 'Tsunami Aku si Gelombang Laut Raksasa', 'Pengetahuan Umum', 'ADSanjari dan M. Nasin, S.Pd.', 'E Kids ', '2010', 1, 'Bulan'),
(83, 'Teknologi dan Kesehatan Tubuh Kita ', 'Pengetahuan Umum', 'Pipit Pitriyani dan Diah Rahmatia ', 'Ganeca ', '2007', 1, 'Bulan'),
(84, 'Lebih Dekat dengan Bumiku ', 'Pengetahuan Umum', 'David Burnie ', 'Grafindo Media Pratama ', '2004', 1, 'Bulan'),
(85, 'Ayo, Mengukur Tinggi ', 'Pengetahuan Umum', 'Alanna F dan Dudi F', 'CV Graha Ilmu Mulia ', '2009', 1, 'Bulan'),
(86, 'Warna-Warni Duniaku', 'Pengetahuan Umum', 'Dewi Suartini ', 'PT Musi Perkasa Utama ', '2009', 1, 'Bulan'),
(87, 'Nabi-Nabi Allah ', 'Buku Islami ', 'Maya Faniya ', 'Tiga Serangkai ', '2008', 1, 'Bulan'),
(88, 'Kecap Kecipir Buatan Nenek ', 'Cerita Anak ', 'Sugeng Riyadi ', 'Rizky Grafis ', '2003', 1, 'Bulan'),
(89, 'Energi dalam Kehidupan ', 'Pengetahuan Umum', 'Diah Rahmatia dan Pipit ', 'Ganeca ', '2007', 1, 'Bulan'),
(90, 'Buku Pintar Peribahasa Pantun & Puisi ', 'Pengetahuan Umum', 'Retno Suwitaningrum, S.Pd', 'Putra Mandiri ', '2010', 1, 'Bulan'),
(91, 'Pejuang dan Perompak ', 'Cerita Anak ', 'Kandi Sekarwulan ', 'E Kids ', '2003', 1, 'Bulan'),
(92, 'Thomas Edison dan Bola Lampu', 'Serial Tokoh ', 'Scott R. Welvaert', 'PT Bhuana Ilmu Populer ', '2007', 1, 'Bulan'),
(93, 'Rahasia Stroberi ', 'Pengetahuan Umum', 'Corner Stone ', 'PT Elex Media Komputindo ', '2009', 1, 'Bulan'),
(94, 'Simbiosis di Peternakan Raja Kerbau ', 'Pengetahuan Umum', 'TIM ', 'PT Kuark Internasional ', '-', 1, 'Bulan'),
(95, 'Rahasian Gigi ', 'Pengetahuan Umum', 'Wong Comic ', 'PT Elex Media Komputindo ', '2010', 1, 'Bulan'),
(96, 'Rahasia Bintang Laut ', 'Pengetahuan Umum', 'Ika Ellise ', 'PT Elex Media Komputindo ', '2009', 1, 'Bulan'),
(97, 'Kisah Penyembelihan Ismail ', 'Buku Islami ', 'Abdullah Zaky dan Drs. Maman ', 'Pustaka Setia ', '2003', 1, 'Bulan'),
(98, 'SID dan Rahasia Koin Antik ', 'Cerita Anak ', 'Donny M. Ramadhan ', 'PT Multazam Mulia Utama ', '2010', 1, 'Bulan'),
(99, 'Si Kancil Menipu Petani ', 'Dongeng Anak', 'NN', 'Gemar Membaca ', '-', 1, 'Bulan'),
(100, 'Legenda Malin Kundang Si Anak Durhaka ', 'Dongeng Anak', 'Tim Lintas Media ', 'Lintas Media ', '-', 3, 'Bulan'),
(101, '', '', '', '', '', 0, ''),
(102, '', '', '', '', '', 105, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
