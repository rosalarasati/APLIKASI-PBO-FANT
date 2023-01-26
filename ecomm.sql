-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jan 2023 pada 03.59
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 9, 1),
(10, 9, 16, 1),
(13, 9, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Obat', 'laptops'),
(2, 'Bibit', 'desktop-pc'),
(3, 'Alat', 'tablets'),
(4, 'Pupuk', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Winder F 100EC 250 ml Insektisida', '<p>&nbsp;Winder F 100EC 250ml Insektisida Obat Pembasmi Hama Kutu pada Tanaman *Golongan: Insektisida *Cara Kerja : Sistemik Kontak lambung *Untuk Tanaman: Sayuran, Horti dan Padi *Hama Sasaran: Kutu daun, Thrips, Wereng Coklat *Penyemprotan: - Rekomendasi Waktu: Pagi hari atau sore hari - Rekomendasi Dosis: 0,5ml &ndash; 1ml atau 7ml &ndash; 15ml per tengki 14 liter - Rekomendasi Lainnya: * campurkan dengan perekat dan perata agar obat tercampur dengan air lebih merata dan tidak luntur saat terkena hujan. * Pencegahan/Serangan tidak parah semprot 1x dalam 7-10 hari. Serangan parah 2x dalam 7 hari Bahan Aktif: Imidakloprid 100g/l</p>\r\n', 'winder-f-100ec-250-ml-insektisida', 88, 'dell-inspiron-15-7000-15-6_1672464002.webp', '2023-01-21', 1),
(2, 1, 'Gramoxone 276sl 1 liter', '<p>Gramoxone. racun rumput paling ampuh sampai akar. obat rumput biar mati sampai akar. obat pembasmi rumput paling ampuh. obat pembasmi rumput sampai akar.</p>\r\n', 'gramoxone-276sl-1-liter', 122, 'microsoft-surface-pro-4-typecover-128-gb_1672465598.webp', '2023-01-21', 1),
(3, 1, 'Alika 247ZC 250 ml Insektisida', '<p>Insektisida Alika 247ZC adalah teknologi insektisida terbaru dari syngenta yang berbentuk pekatan berwarna putih kecoklatan yang dapat diemulsikan. Insektisida ini bekerja langsung secara kontak pada lambung untuk melindungi tanaman dari berbagai jenis hama kutu dan ulat dalam waktu yang singkat. Cocok digunakan pada tanaman cabai, kentang, kubis, tomat, kedelai, jeruk, mangga, kakao dan lain-lain Keunggulan Produk: 1. Mudah larut dalam air. 2. Dapat melekat pada permukaan daun dan tidak mudah larut dengan air hujan. 3. Mampu menembus dan menyebar ke seluruh jaringan daun tanaman dengan cepat. 4. Memberikan perlindungan secara menyeluruh dan lebih lama hingga tumbuhnya tunas-tunas baru pada tanaman. 5. Membantu meningkatkan hasil produksi dan kualitas hasil panen. 6. Membuat buah dan biji menjadi lebih bersih, sehingga harga jual lebih tinggi. Bahan Aktif: * Lamda sihalotrin 106 gram/liter. * Tiametoksam 141 gram/liter. Isi bersih: 250 ml.Tersedia juga kemasan kecil isi 100 ml.</p>\r\n', 'alika-247zc-250-ml-insektisida', 163, 'dell-inspiron-15-5000-15-6_1672463799.webp', '2018-05-12', 1),
(4, 1, 'Gisentro 250ml ', '<p>Herbisida selektif untuk tanaman jagung. obat pembasmi hama ulat jagung ampuh. obat rumput biar mati sampai akar. obat pebasmi rumput sampai akar. racun rumput jagung tidak mati.</p>\r\n', 'gisentro-250ml', 74.5, 'lenovo-ideapad-320s-14ikb-14-laptop-grey_1672464930.webp', '2022-12-31', 1),
(5, 3, 'KATANA 3WZ4 Alat Semprot Hama Pertanian Tabung Besar SPRAYER MESIN', '', 'katana-3wz4-alat-semprot-hama-pertanian-tabung-besar-sprayer-mesin', 999.999, 'katana-3wz4-alat-semprot-hama-pertanian-tabung-besar-sprayer-mesin_1672574096.webp', '2018-07-09', 3),
(6, 1, 'Roundup 1 Liter', '<p>herbisida roundup dan sidafos dan gempur mampu membunuh rumput sampai akar-akarnya</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'roundup-1-liter', 100, 'dell-inspiron-15-5000-15_1672463585.webp', '2023-01-03', 1),
(7, 3, '[DISTRIBUTOR RESMI] Alat Tanam Jagung Modern Padi Biji Bijian Kacang Kedelai 8 10 Benih Corn Seeder', '<p>alat untuk mupuk tanaman jagung. mesin tanam padi sawah otomatis. alat penanam padi sawah manual. mesin tanam padi sawah manual. alat pemupukan tanaman jagung.</p>\r\n', 'distributor-resmi-alat-tanam-jagung-modern-padi-biji-bijian-kacang-kedelai-8-10-benih-corn-seeder', 900, 'distributor-resmi-alat-tanam-jagung-modern-padi-biji-bijian-kacang-kedelai-8-10-benih-corn-seeder_1672573967.webp', '2022-12-31', 1),
(8, 1, 'Supretox 1L 276 SL DGW', '<p>SUPRETOX 276 SL adalah herbisida kontak purna tumbuh yang berwarna hijau tua berbentuk larutan dalam air untuk mengendalikan gulma pada tanaman kelapa sawit, kakao, jagung dan karet.</p>\r\n', 'supretox-1l-276-sl-dgw', 80, 'asus-transformer-mini-t102ha-10-1-2-1-silver_1672462711.webp', '2022-12-31', 4),
(9, 2, 'Benih Padi Unggul M400 - Pertanian', '<p>Benih Padi Unggul M400 Spesifikasi Padi M400 Kemasan 5kg Umur : 90 hari setelah tanam Potensi hasil : 11 Ton / hektar Rata-rata Hasil : 8,8 ton / hektar Jumlah bulir : 280-400 bulir per malai Rebah : tahan kerebahan Ketahanan : Tahan wereng dan jamur&nbsp;</p>\r\n', 'benih-padi-unggul-m400-pertanian', 135, 'pc-specialist-vortex-core-lite-gaming-pc_1672469157.webp', '2023-01-21', 1),
(10, 2, 'Terong Bintang Asia Bungo F1', '<p>Benih terong Bungo F1 merupakan terong ungu hibrida hasil seleksi benih kualitas unggul produksi dari PT Bintang Asia. Menghasilkan buah terong berwarna ungu dan berukuran panjang. Terong ini cocok dibudidayakan di daerah dataran rendah hingga dataran menengah. Tergolong jenis terong yang pertumbuhannya kuat dan tahan terhadap penyakit layu. Buah sudah bisa dipanen ketika tanaman berumur +/- 45 HST. Terong berwarna ungu mengkilap, ukuran &plusmn;25 x5 cm, daging putih bersih, rasa manis. Dengan potensi hasil mencapai 50-60 ton/ha.</p>\r\n\r\n<p>Berat bersih: 5gr</p>\r\n\r\n<p>Tingkat kemurnian: 99%</p>\r\n\r\n<p>Daya tumbuh: 85%</p>\r\n', 'terong-bintang-asia-bungo-f1', 25, 'dell-inspiron-5675-gaming-pc-recon-blue_1672462025.jpg', '2023-01-21', 1),
(11, 2, 'Sawi Tosakan', '<p>Sawi Tosakan cocok ditanam pada daerah dataran rendah. Tanaman sawi yang dihasilkan berbunga lambat,&nbsp;berbatang tegak dengan daun yang tebal dan renyah, sedikit berserat, dan tahan terhadap HPT. Dapat dipanen ketika berumur sekitar 25-30 hari setelah ditanam dengan hasil panen sekitar 20-25 ton/ha. Dapat dimanfaatkan sebagai campuran bakso, mie, capcay, dll. Selain rasanya yang enak juga mengandung pro vitamin A dan C.</p>\r\n\r\n<p>Isi kemasan: 25 gram.</p>\r\n', 'sawi-tosakan', 25, 'hp-barebones-omen-x-900-099nn-gaming-pc_1672462114.jfif', '2022-12-31', 1),
(12, 2, 'Jagung B226', '', 'jagung-b226', 80, 'acer-aspire-gx-781-gaming-pc_1672460346.jpg', '2022-12-31', 9),
(13, 2, 'Bayam Maestro', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'bayam-maestro', 15, 'hp-pavilion-power-580-015na-gaming-pc_1672462387.jpg', '2018-05-12', 1),
(14, 2, 'Cabe Bintang Asia Lentera F1', '<p>PERHATIAN Sebelum Anda Membeli !!!. Tanyakan selalu ketersediaan stock Cabe Rawit Lentera F1 merupakah jenis rawit annum. Memiliki buah putih kekuningan yang kemudian akan berwarna merah mengkilap pada saat buah telah matang. Memiliki ukuran panjang 4cm dan diameter 0,8 cm. Cabe Rawit Lentera F1 cocok ditanam di dataran rendah sampai dataran tinggi.</p>\r\n', 'cabe-bintang-asia-lentera-f1', 17, 'lenovo-legion-y520-gaming-pc_1672462255.jfif', '2018-05-10', 13),
(15, 4, 'Pupuk Organik Cair POC Kascing', '<p>Pupuk Organik Cair Kascing Untuk budidaya pertanian</p>\r\n\r\n<p>1. Meningkatkan efisiensi pupuk dan mempromosikan penyerapan fosfor. mengandung bakteri fosfat-pelarut yang dapat larut kalsium-fosfor, besi fosfor, aluminium-fosfor dan senyawa lainnya yang tidak mudah untuk diserap dalam tanah dan mempromosikan pembubaran dan pemanfaatan fosfor yang tidak dapat diserap dalam tanah.</p>\r\n\r\n<p>2. Meningkatkan hasil panen dan meningkatkan kualitas tanaman. Produk menghasilkan sejumlah besar protease, asam amino, sitokinin, dll 3. Meningkatkan tingkat penyerapan nitrogen, fosfor dan zat gizi lain dari tanaman.</p>\r\n\r\n<p>4. Promosikan pertumbuhan</p>\r\n\r\n<p>5. Bisa Mengurangi kandungan logam berat di tanaman,</p>\r\n\r\n<p>6. Meningkatkan kandungan asam amino esensial dalam tanaman,</p>\r\n\r\n<p>7. Memperbaiki Nitrogen</p>\r\n\r\n<p>8. Melindungi Tanaman, meningkatkan ketahanan stres tanaman, membentuk lapisan pelindung pada permukaan tanaman serta mengeluarkan zat antimikroba dan menghambat pertumbuhan kuman.</p>\r\n\r\n<p>9. Promosikan dekomposisi bahan organik, sehingga membuat nutrisi untuk tanaman 10. Menghancurkan zat beracun dan berbahaya dari tanam terus menerus</p>\r\n', 'pupuk-organik-cair-poc-kascing', 120, 'pc-specialist-vortex-minerva-xt-r-gaming-pc_1672469367.webp', '2018-07-09', 1),
(16, 4, 'Pupuk non subsidi NPK 1kg', '<p>pupuk npk penyubur tanaman.</p>\r\n', 'pupuk-non-subsidi-npk-1kg', 12, 'pc-specialist-vortex-core-ii-gaming-pc_1672468764.webp', '2022-12-31', 1),
(17, 2, 'Jagung BISI-2', '<p>Jagung BISI 2 adalah varietas jagung yang berkualitas tinggi dan mampu menghasilkan dua buah tongkol dalam satu batang sehingga memerikan hasil panen yang melimpah.</p>\r\n\r\n<p>Termasuk jagung hibrida yang memiliki dua tongkol dengan ukuran yang sama dalam satu batang tanaman. Biji-biji jagung yang dihasilkan berwarna jingga dan berbentuk semi mutiara. 100 biji jagung memiliki berat sekitar 265 gram. Ukuran janggelnya kecil, bisa dipipil secara langsung ataupun menggunakan bantuan mesin pipil.</p>\r\n\r\n<p>Tanaman jagung BISI 2 mampu tumbuh hingga ketinggian 232 cm dengan batang yang tegak. Waktu panen buah jagung sekitar 103 hari sejak benih disemaikan dengan hasil panen mencapai 13 ton per hektar. Tergolong tanaman jagung yang mampu bertahan dari serangan penyakit yang sering menyerang tanaman jagung utamanya bulai dan juga karat daun.</p>\r\n\r\n<p><strong>Netto: 1 kg benih.</strong></p>\r\n', 'jagung-bisi-2', 87, 'amazon-fire-7-tablet-alexa-2017-8-gb-black_1672461357.jfif', '2018-05-12', 1),
(18, 2, 'Tomat Bareto F1', '<p>Benih tomat BARETO F1 1750 butir benih tomat hibrida cocok dataran menengah dan tinggi.</p>\r\n', 'tomat-bareto-f1', 15, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1672461936.jfif', '2018-05-12', 2),
(19, 3, 'cangkul siap pakai', '<p>Cangkul Siap Pakai Pembeli tdk akan kesulitan memasang antara cangkul dan gagang kayu Langsung pakai dan sudah terpasang Ukuran Cangkul 19 x 25 cm panjang gagang 80 cm</p>\r\n', 'cangkul-siap-pakai', 38, 'cangkul-siap-pakai_1672573994.webp', '2018-05-10', 1),
(20, 3, 'Mesin Semprot Electric Sprayer 16L HLP3016', '<p>Sprayer Electric 13L H&amp;L Batere / Mesin Semprot Hama Disinfectant Spesifikasi: - Electric sprayer 13L H&amp;L - Mesin semprot elektrik dan manual - Type : HLP 3013 - Kapasitas : 13 liter - Battery : 12V 8A - Pemakaian sekitar : 4 jam</p>\r\n', 'mesin-semprot-electric-sprayer-16l-hlp3016', 550, 'mesin-semprot-electric-sprayer-16l-hlp3016_1672574071.webp', '2018-05-12', 1),
(27, 1, 'Herbisida CALARIS Surfakaktan 1000ml', '<p>obat semprot rumput gulma kebun jagung. paket anti gulma jagung bisi 1 liter. council complete herbisida 100 ml. obat rumput sapu bersih 1 liter. obat bulai jagung paling ampuh. Paket Obat Pertanian Herbisida CALARIS 550SC SURFAKTAN. CALARIS 550SC isi 1000 ml. SURFAKTAN isi 400 ml. Bahan aktif: Mesotrion 50 g/l atrazin 500 g/l. No. Pemdaftaran: RI. 01030120083256. CALARIS 550SC adalah Herbisida sistematik selektif awal purna tumbuh untuk tanaman jagung. SURFAKTAN adalah Bahan Perata atau untuk mendapatkan kualitas penyemprotan maksimal, perhatikan petunjuk penggunaan. Cara Penyemprotannya: Dilakaukan Pada Tanaman Jagung Umur 10-21 hst, dosis pemakaian Calaris 60 cc dan surfaktan 30 cc, disemprotkan merata disekitar tanaman jagung dan tidak pengaruh terhadap tanaman jagung bila terkena semprot.</p>\r\n', 'herbisida-calaris-surfakaktan-1000ml', 352, 'dell-xps-15-9560_1672464654.webp', '2018-07-09', 9),
(28, 4, 'pupuk UREA 50kg', '<p>PUPUK urea dengan kandungan Nitrogen tinggi yaitu 46% sangat bagus untuk semua jenis tanaman baik tanaman pangan ,sayuran maupan bunga HARGA TERTERA UNTUK KEMASAN 50KG. Pupuk NPK Phonska Merah 50kg SP 36 KHUSUS PENYUBUR TANAH</p>\r\n', 'pupuk-urea-50kg', 410, 'samsung-note-8_1672466217.webp', '2023-01-01', 1),
(29, 4, 'pupuk cair organik khusus padi 2 liter GDM', '<h2>GDM. pupuk organik cair gdm untuk pohon durian. suplemen organik cair gdm peternakan. pupuk organik cair gdm untuk sawit. gdm pupuk organik cair untuk buah. obat obatan untuk tanaman padi. Merupakan pupuk organik cair yang diformulasikan khusus untuk meningkatkan produktifitas tanaman padi yang Anda budidayakan. Kemasan isi 2Liter</h2>\r\n\r\n<p>&nbsp;</p>\r\n', 'pupuk-cair-organik-khusus-padi-2-liter-gdm', 65, 'pupuk-cair-organik-khusus-padi-2-liter-gdm_1672574043.webp', '2023-01-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'OurFANT', '', '', '', 'logo.jfif', 1, '', '', '2018-05-01'),
(9, 'abel@eden.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'fani', 'aulias furqan', 'empang, sumbawa', '082340578844', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2022-10-12'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09'),
(13, 'nasrullohhamzah@gmail.com', '$2y$10$2tjA5A8lLbgmc0xLOsh5L.7rdtZ3eLBBD0.8GCj9CDkf2gyPj2CuK', 0, 'Hamzah', 'Nasrulloh', '', '', '', 0, 'sTMiq4wE8zaW', '', '2022-12-31');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_id` (`sales_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Ketidakleluasaan untuk tabel `details`
--
ALTER TABLE `details`
  ADD CONSTRAINT `details_ibfk_1` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Ketidakleluasaan untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
