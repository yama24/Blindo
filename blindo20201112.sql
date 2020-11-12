-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2020 at 07:01 PM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5462684_blindo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '$2y$10$pKGfQG2etJ5lDW06PZncIOqY94RJTioYG4oM4n0/Up.cUpnX5HkRO', 'YVIit2yd7evYALQJBzmZtXpKCEOHV8iN4lja2rfM0xSdhGyoTkEzJgF5TuUP7HC1');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(41, '1605081203761.jpg', '#'),
(42, '1605081680957.jpg', '#');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `weight` int(11) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user`, `id_product`, `product_name`, `price`, `qty`, `img`, `slug`, `weight`, `ket`) VALUES
(26, 13, 2, 'Ampiang Telur Cumi Dwiky', 13000, 1, '1603179689116.jpg', 'ampiang-telur-cumi-dwiky', 450, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(2, 'Kuliner', '1604021984915.png', 'kuliner'),
(3, 'Bumbu dan Rempah', '1603261739394.png', 'bumbu-dan-rempah'),
(4, 'Kerajinan', '1603261754254.png', 'kerajinan'),
(6, 'Fashion', '1603261775228.png', 'fashion'),
(7, 'Pulsa dan Listrik (Segera)', '1603261810128.png', 'pulsa-dan-listrik-segera'),
(8, 'Tiket Transportasi (Segera)', '1603261831302.png', 'tiket-transportasi-segera');

-- --------------------------------------------------------

--
-- Table structure for table `cod`
--

CREATE TABLE `cod` (
  `id` int(11) NOT NULL,
  `regency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cod`
--

INSERT INTO `cod` (`id`, `regency_id`) VALUES
(6, 23);

-- --------------------------------------------------------

--
-- Table structure for table `cost_delivery`
--

CREATE TABLE `cost_delivery` (
  `id` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost_delivery`
--

INSERT INTO `cost_delivery` (`id`, `destination`, `price`) VALUES
(3, 23, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `grosir`
--

CREATE TABLE `grosir` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
(6, 3, '1603178624852.jpg'),
(7, 3, '1603178631421.jpg'),
(8, 3, '1603178637953.jpg'),
(9, 22, '1603336704708.jpeg'),
(10, 22, '1603336715441.jpeg'),
(11, 22, '1603336723271.jpeg'),
(12, 22, '1603336737110.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `resi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `user`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `status`, `resi`) VALUES
(5, 16, '1621310512', 'jl. kebon kacang 3 n', 'ade irma', 'adeulala5@gmail.com', '081234987456', 6, 152, 'tanah abang', 'kebon kacang', 10540, 'jl. kebon kacang 3 no. 546', 'jne', 'REG', '22000', 67200, 89200, '2020-10-22 15:31:52', 0, '0'),
(21, 18, '1879514282', 'Kantor', 'Yayan Maulana', 'theroboticfuture@gmail.com', '08986182128', 9, 23, 'Cibiru', 'Pasirbiru', 40615, 'Raoseun House', 'jne', 'CTCYES', '10000', 19500, 29500, '2020-11-10 21:24:42', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'Tentang Kami1', '<span style=\"font-size: 1rem;\">Lakukan tugas Anda dengan senang hati dan gunakan humor Anda di waktu kerja terutama saat sulit dan tegang-tegang, itulah salah satu budaya (fun) kami.</span><p>Religious, Passionate, Tough, Knowledgeable, Fun & Customer Service adalah budaya-budaya yang ada di Bhinneka.Com, dan kami sangat menjunjung tinggi budaya kami dengan cara memberikan yang terbaik bagi pelanggan, diri kita, keluarga, dan masyarakat.</p><h2>Visi dan Misi</h2><h3>Visi</h3><p>\"Menjadi sebuah perusahaan kelas dunia dengan semangat pemanfaatan informasi teknologi, dan menjadi kebanggaan bangsa.\"</p><h3>Misi</h3><p>\"Menjadi webstore nomor satu di Indonesia yang menyediakan kelengkapan dan kemudahan belanja, serta memperhatikan dan memberikan pengalaman belanja yang berkesan kepada pelanggan, melalui nilai-nilai delapan dimensi pengalaman.\"</p><h2>Sekapur Sirih</h2><p>Sejak awal Bhinneka.Com berdiri, kami bertekad membangun bisnis yang berdaya tahan panjang. Mengutamakan citra merk dengan pelayanan dan menjadikannya bagian dari budaya kerja. Fokus pada pelayanan berarti memberi nilai tambah dalam setiap layanan. Sebab itulah mengapa pelanggan kami menekan tombol\'beli\' dan tetap kembali lagi di kemudian hari.</p><p>Menengok sejenak ke belakang, kami bersyukur fokus pada pelayanan dan \'human touch\' dalam membangun Bhinneka.Com, yang dirumuskan dengan sebuah kalimat sederhana \'Pelayanan Dari Hati\'. Dan sekarang, kalimat ini telah menjadi esensi dalam setiap langkah yang kami lakukan, mudah dicerna tanpa perlu segala embel-embel dan frase-frase yang sulit untuk dipahami seluruh Bhinnekaners dalam melayani pelanggan kami.</p><p>Standar pelayanan kami pun semakin tinggi setiap tahun. Berinovasi dan menyajikan pengalamanan berbelanja yang berkesan, mulai dari produk yang lengkap, harga yang kompetitif, mudah dalam bertransaksi, jaminan purna jual, hingga kejutan-kejutan mengasyikkan untuk setiap pelanggan kami, yang menjadikan belanja di Bhinneka.Com semakin nyaman, baik online maupun offline.</p><p>Untuk teman-teman komunitas Bhinneka.Com yang bersama dengan kami sejak awal perkembangan internet dimulai di Indonesia, kami akan terus perhatikan dan senantiasa mengembangkan banyak fitur yang akan semakin asyik untuk saling bertemu, berbagi, berbincang, belajar, atau sekedar melakukan jual-beli produk. Offline store Bhinneka juga menjadi tempat untuk workshop, tempat berkumpul, dan ngobrol antar komunitas.</p><p>Akhirnya, saya sangat berbahagia Bhinneka.Com dapat berkontribusi untuk negeri ini dan membawa nilai lebih untuk masyarakat Indonesia. Kami akan selalu berusaha dan mendorong diri kami sendiri untuk menjadi salah satu perusahaan berbasis teknologi yang menjadi kebanggaan bangsa Indonesia. Hacked By MBET_X12</p>\r\n', 'about'),
(2, 'Kontak Kami', '<p>Hubungi Tim Penjualan Kami</p><p><strong>Konsultan Penjualan</strong></p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi 021-29292828 atau <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Korporasi &amp; Pemerintah.</strong></p><p>Melayani kebutuhan korporasi &amp; proyek. Silakan email kami ke <a href=\"mailto:corporate@bhinneka.com\">corporate@bhinneka.com</a>.</p><p><strong>Solusi Software &amp; Lisensi</strong></p><p>Melayani kebutuhan lisensi &amp; konsultasi software. Silakan email kami ke <a href=\"mailto:licensing@bhinneka.com\">licensing@bhinneka.com</a>.</p><p><strong>Solusi Percetakan &amp; Signage</strong></p><p>Melayani kebutuhan printer besar, signage, &amp; produk 3D. Silakan <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Kantor Pusat</strong><br>Jl. Gunung Sahari Raya 73C No. 5-6<br>Jakarta 10610, Indonesia</p><p>Hubungi Tim Pendukung Kami</p><p><strong>Layanan Klaim Garansi</strong></p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan telepon ke (021) 2929-2828 atau <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Layanan Pengembalian Barang &amp; Refund</strong></p><p>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Layanan Pelanggan</strong></p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Status Pengiriman</strong></p><p>Untuk bantuan tracking status pesanan &amp; status pengiriman, silakan telepon ke (021) 2929-2828 atau Anda dapat menghubungi kami <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Merchant Bhinneka Marketplace</strong></p><p>Ingin memulai jualan di Bhinneka? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar Bhinneka Marketplace <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p><p><strong>Tidak Dapat Menemukan Tim yang Anda Cari?</strong></p><p>Anda dapat menghubungi kami <a href=\"https://www.bhinneka.com/hubungi-kami-form\">email kami</a>.</p>', 'contact'),
(3, 'Testimoni1', '<p>redirect page</p>', 'testimoni1'),
(4, 'Kebijakan Privasi', '<h2><strong>KEBIJAKAN PRIVASI SITUS DAN APLIKASI MATAHARI</strong></h2><p>MATAHARI memahami dan menghormati privasi Anda dan nilai hubungan kami dengan Anda. Kebijakan Privasi ini menjelaskan bagaimana Matahari mengumpulkan, mengatur dan melindungi informasi Anda ketika Anda mengunjungi dan/atau menggunakan situs atau aplikasi MATAHARI, bagaimana Matahari menggunakan informasi dan kepada siapa Matahari dapat berbagi. Kebijakan privasi ini juga memberitahu Anda bagaimana Anda dapat meminta Matahari untuk mengakses atau mengubah informasi Anda serta menjawab pertanyaan Anda sehubungan dengan Kebijakan Privasi ini.<br>Kata-kata yang dimulai dengan huruf besar dalam Kebijakan Privacy ini mempunyai pengertian yang sama dengan Syarat dan Ketentuan penggunaan situs dan aplikasi MATAHARI.</p><h2><strong>Informasi yang kami kumpulkan</strong></h2><p>Matahari dapat memperoleh dan mengumpulkan informasi dan/atau konten dari situs dan aplikasi yang Anda atau pengguna lain sambungkan atau disambungkan oleh situs atau aplikasi MATAHARI dengan situs atau pengguna tertentu dan informasi dan/atau konten yang Anda berikan melalui penggunaan situs atau aplikasi MATAHARI dan/atau pengisian Aplikasi.<br>Ketika Anda mengunjungi situs atau aplikasi MATAHARI, Matahari dapat mengumpulkan informasi apapun yang telah dipilih bisa terlihat oleh semua orang dan setiap informasi publik yang tersedia. Informasi ini dapat mencakup nama Anda, gambar profil, jenis kelamin, kota saat ini, hari lahir, email, jaringan, daftar teman, dan informasi-informasi Anda lainnya yang tersedia dalam jaringan. Selain itu, ketika Anda menggunakan aplikasi MATAHARI, atau berinteraksi dengan alat terkait, widget atau plug-in, Matahari dapat mengumpulkan informasi tertentu dengan cara otomatis, seperti cookies dan web beacon. Informasi yang Matahari kumpulkan dengan cara ini termasuk alamat IP, perangkat pengenal unik, karakteristik perambah, karakteristik perangkat, sistem operasi, preferensi bahasa, URL, informasi tentang tindakan yang dilakukan, tanggal dan waktu kegiatan. Melalui metode pengumpulan otomatis ini, Matahari mendapatkan informasi mengenai Anda. Matahari mungkin menghubungkan unsur-unsur tertentu atas data yang telah dikumpulkan melalui sarana otomatis, seperti informasi browser Anda, dengan informasi lain yang diperoleh tentang Anda, misalnya, apakah Anda telah membuka email yang dikirimkan kepada Anda. Matahari juga dapat menggunakan alat analisis pihak ketiga yang mengumpulkan informasi tentang lalu lintas pengunjung situs atau aplikasi MATAHARI. Browser Anda mungkin memberitahu Anda ketika Anda menerima cookie jenis tertentu atau cara untuk membatasi atau menonaktifkan beberapa jenis cookies. Harap dicatat, bahwa tanpa cookie Anda mungkin tidak dapat menggunakan semua fitur dari situs atau aplikasi MATAHARI.<br>Situs atau aplikasi MATAHARI mungkin berisi link ke tempat pihak lain yang dapat dioperasikan oleh pihak lain tersebut yang mungkin tidak memiliki kebijakan privasi yang sama dengan Matahari. Matahari sangat menyarankan Anda untuk membaca dan mempelajari kebijakan privasi dan ketentuan-ketentuan pihak lain tersebut sebelum masuk atau menggunakannya. Matahari tidak bertanggung jawab atas pengumpulan dan/atau penyebaran informasi pribadi Anda oleh pihak lain atau yang berkaitan dengan penggunaan media sosial seperti Facebook dan Twitter dan Matahari dibebaskan dari segala akibat yang timbul atas penyebaran dan/atau penyalahgunaan informasi tersebut.</p><h2><strong>BAGAIMANA MATAHARI MENGGUNAKAN INFORMASI</strong></h2><p>Matahari dapat menggunakan informasi Anda yang diperoleh untuk menyediakan produk dan layanan yang Anda minta, sebagai data riset atau berkomunikasi tentang dan/atau mengelola partisipasi Anda dalam survei atau undian atau kontes atau acara khusus lainnya yang diadakan oleh Matahari, pengoperasian Matahari, memberikan dukungan kepada Anda sebagai pengunjung dan/atau pengguna situs atau aplikasi MATAHARI, merespon dan berkomunikasi dengan Anda mengenai permintaan Anda, pertanyaan dan/atau komentar Anda, membiarkan Anda untuk meninggalkan komentar di situs atau aplikasi MATAHARI atau melalui media sosial lainnya, membangun dan mengelola Akun Anda, mengirimkan berita-berita dan/atau penawaran-penawaran yang berlaku bagi Anda selaku pengunjung dan penguna situs atau aplikasi MATAHARI, untuk mengoperasikan, mengevaluasi dan meningkatkan bisnis Matahari termasuk untuk mengembangkan produk dan layanan baru; untuk mengelola komunikasi Matahari, menentukan efektifitas layanan, pemasaran dan periklanan situs atau aplikasi MATAHARI, dan melakukan akutansi, audit, dan kegiatan Matahari lainnya, melakukan analisis data termasuk pasar dan pencarian konsumen, analisis trend, keuangan, dan informasi pribadi, melaksanakan kerjasama dengan mitra Matahari yang terkait dengan program-program yang diadakan oleh Matahari, melindungi, mengidentifikasi, dan mencegah penipuan dan kegiatan kriminal lainnya, klaim dan kewajiban lainnya, membantu mendiagnosa masalah teknis dan layanan, untuk memelihara, mengoperasikan, atau mengelola situs atau aplikasi MATAHARIyang dilakukan oleh Matahari atau pihak lain yang ditentukan oleh Matahari, mengidentifikasi pengguna situs atau aplikasi MATAHARI, serta mengumpulkan informasi demografis tentang pengguna situs atau aplikasi MATAHARI, untuk cara lain yang Matahari beritahukan pada saat pengumpulan informasi.<br>Matahari tidak akan menjual atau memberikan informasi pribadi Anda kepada pihak lain, kecuali seperti yang dijelaskan dalam kebijakan privasi ini. Matahari akan berbagi informasi dengan afiliasi Matahari atau pihak lain yang melakukan layanan berdasarkan petunjuk dari Matahari. Pihak lain tersebut tidak diizinkan untuk menggunakan atau mengungkapkan informasi tersebut kecuali diperlukan untuk melakukan layanan atas nama Matahari atau untuk mematuhi persyaratan hukum. Matahari juga dapat berbagi informasi dengan pihak lain yang merupakan mitra Matahari untuk menawarkan produk atau jasa yang mungkin menarik bagi Anda<br>Matahari dapat mengungkapkan informasi jika dianggap perlu dalam kebijakan tunggal Matahari, untuk mematuhi hukum yang berlaku, peraturan, proses hukum atau permintaan pemerintah, dan peraturan yang berlaku di Matahari. Selain itu, Matahari dapat mengungkapkan informasi ketika percaya, pengungkapan diperlukan atau wajib dilakukan untuk mencegah kerusakan fisik atau kerugian finansial atau hal lainnya sehubungan dengan dugaan atau terjadinya kegiatan ilegal. Matahari juga berhak untuk mengungkapkan dan/atau mengalihkan informasi yang dimiliki apabila sebagian atau seluruh bisnis atau aset Matahari dijual atau dialihkan.<br>Matahari dapat menyimpan dan/atau memusnahkan informasi tentang Anda sesuai kebijakan yang berlaku atau jika diperlukan.</p><h2><strong>UPDATE KEBIJAKAN PRIVASI INI</strong></h2><p>Kebijakan Privasi ini mungkin diperbarui secara berkala dan tanpa pemberitahuan sebelumnya kepada Anda untuk mencerminkan perubahan dalam praktik informasi pribadi. Matahari akan menampilkan pemberitahuan di bagian info profil website untuk memberitahu Anda tentang perubahan terhadap Kebijakan Privasi dan menunjukkan di bagian atas Kebijakan saat ketika Kebijakan Privasi ini terakhir diperbarui. Kebijakan Privasi ini merupakan satu kesatuan dan menjadi bagian yang tidak terpisahkan dari Syarat dan Ketentuan Penggunaan situs dan aplikasi MATAHARI.</p>', 'privacy-policy'),
(5, 'Syarat dan Ketentuan', '<h2><strong>SYARAT DAN KETENTUAN SITUS DAN APLIKASI MATAHARI</strong></h2><p>Selamat datang dan terima kasih telah mengunjungi situs/aplikasi MATAHARI. Silahkan membaca Syarat dan Ketentuan ini dengan seksama. Syarat dan Ketentuan ini mengatur akses, penelusuran, penggunaan, dan pembelian barang-barang yang ditawarkan atau dijual di www.MATAHARI.com kepada Anda. Dengan mengakses, menelusuri, dan menggunakan situs/aplikasi MATAHARI ini, berarti Anda telah membaca, mengerti, dan setuju untuk tunduk dan terikat pada Syarat dan Ketentuan ini, dan Anda juga setuju untuk tidak mempengaruhi, mengganggu, atau berusaha mempengaruhi atau mengganggu jalannya situs/aplikasi MATAHARI dengan cara apapun. Jika Anda tidak menyetujui salah satu, sebagian, atau seluruh isi Syarat dan Ketentuan ini, maka Anda tidak diperkenankan untuk mengakses, menelusuri atau menggunakan situs/aplikasi MATAHARI ini. Akses, penelusuran, dan penggunaan situs/aplikasi MATAHARI ini hanya untuk penggunaan pribadi Anda. Anda tidak diperkenankan untuk mendistribusikan, memodifikasi, menjual, atau mengirimkan apapun yang Anda akses dari situs/aplikasi MATAHARI ini, termasuk tetapi tidak terbatas pada teks, gambar, audio, dan video untuk keperluan bisnis, komersial, publik atau kepeluan non-personal lainnya.<br>Penggunaan konten situs/aplikasi MATAHARI, logo MATAHARI, merek layanan dan/atau merek dagang yang tidak sah dapat melanggar undang-undang hak kekayaan intelektual, hak cipta, merek, privasi, publisitas, hukum perdata dan pidana tertentu. Syarat dan Ketentuan ini termasuk hak kekayaan intelektual milik MATAHARI yang dilindungi hak cipta. Setiap penggunaan Syarat dan Ketentuan ini oleh pihak manapun, baik sebagian maupun seluruhnya, tidak diizinkan. Pelanggaran atas hak atas kekayaan intelektual MATAHARI ini dapat dikenakan tindakan atau sanksi berdasarkan ketentuan hukum yang berlaku.<br>Anda perlu mengunjungi halaman ini secara berkala untuk mengetahui setiap perubahan Syarat dan Ketentuan ini.</p>', 'terms'),
(6, 'Cara Berbelanja', '<p>Anda bisa mengklik “Blanja sekarang” di blanja.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Blanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik “Blanja sekarang” setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_001.jpg\" alt=\"register_1\"></figure><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik “Selanjutnya”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_002.jpg\" alt=\"register_1\"></figure><p>1.3 Anda bisa masuk ke “My blanja”-“Pesanan Saya” dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik “Bayar”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_003.jpg\" alt=\"register_1\"></figure><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi “Telah dibayar”, yang artinya barang sedang menunggu dikirim oleh penjual.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_004.jpg\" alt=\"register_1\"></figure><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi “Telah dikirim”. Ketika anda menerima barang dan mengkonfirmasi, mohon klik “Konfirmasi”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_005.jpg\" alt=\"register_1\"></figure><p>Anda harus memasukkan password Dompet Blanja sebelum mengklik “Konfirmasi”.</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_006.png\" alt=\"register_1\"></figure><p>1.6 Ketika status berubah ke \"Selesai\", maka berarti transaksi telah selesai</p><figure class=\"image\"><img src=\"https://s2.blanja.com/static/marketplace/images/help-center/questionlist-11-1_007.jpg\" alt=\"register_1\"></figure><p><strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses “Blanja sekarang”.</p>', 'shopping-help'),
(7, 'Pengiriman Barang', '<ol><li>Pengiriman barang untuk setiap transaksi yang terjadi melalui Platform Bukalapak menggunakan layanan pengiriman barang yang disediakan Bukalapak atas kerjasama Bukalapak dengan pihak jasa ekspedisi pengiriman barang resmi.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk peraturan terkait dengan syarat dan ketentuan pengiriman barang sepenuhnya ditentukan oleh pihak jasa ekspedisi pengiriman barang dan sepenuhnya menjadi tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Bukalapak hanya berperan sebagai media perantara antara Pengguna dengan pihak jasa ekspedisi pengiriman barang.</li><li>Pengguna wajib memahami, menyetujui, serta mengikuti ketentuan-ketentuan pengiriman barang yang telah dibuat oleh pihak jasa ekspedisi pengiriman barang.</li><li>Pengiriman barang atas transaksi melalui sistem Bukalapak menggunakan jasa ekspedisi pengiriman barang dilakukan dengan tujuan agar barang dapat dipantau melalui sistem Bukalapak.</li><li>Pelapak (Penjual) wajib bertanggung jawab penuh atas barang yang dikirimnya.</li><li>Pengguna memahami dan menyetujui bahwa segala bentuk kerugian yang dapat timbul akibat kerusakan ataupun kehilangan pada barang, baik pada saat pengiriman barang tengah berlangsung maupun pada saat pengiriman barang telah selesai, adalah sepenuhnya tanggung jawab pihak jasa ekspedisi pengiriman barang.</li><li>Dalam hal diperlukan untuk dilakukan proses pengembalian barang, maka Pengguna, baik Pelapak (Penjual) maupun Pembeli, diwajibkan untuk melakukan pengiriman barang langsung ke masing-masing Pembeli maupun Pelapak (Penjual). Bukalapak tidak menerima pengembalian atau pengiriman barang atas transaksi yang dilakukan oleh Pengguna dalam kondisi apa pun.</li></ol>', 'pengiriman-barang');

-- --------------------------------------------------------

--
-- Table structure for table `payment_proof`
--

CREATE TABLE `payment_proof` (
  `id` int(11) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `file` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `varian` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL,
  `vendor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `varian`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`, `vendor_id`) VALUES
(1, 'Master Lada', 26125, 11, 0, 3, 1, 300, '1603179744924.jpg', '<br>', '2020-04-12 20:43:52', 1, 'master-lada', 6, 0, 74, NULL),
(2, 'Ampiang Telur Cumi Dwiky', 13000, 8, 0, 2, 1, 450, '1603179689116.jpg', '<br>', '2020-04-11 18:41:11', 1, 'ampiang-telur-cumi-dwiky', 2, 0, 106, NULL),
(3, 'Abon Ayam Fresh Bali', 60500, 1, 0, 2, 1, 12000, '1603178024656.jpg', '<div class=\"woocommerce-product-details__short-description\">\r\n	<p>Abon Ayam Fresh Bali, hadir dengan konsep sederhana yang dimana kita \r\nsudah terbentuk semenjak tahun 2012 seiring dengan berjalannya waktu \r\nkami pun berusaha untuk mengembangkan secara perlahan. diawali dari hobi\r\n memasak kemudian dari beberapa rekanan sangat menyukainya abon yang \r\ndiproduksi. untuk abon yang kami produksi tentunya terbuat dari \r\nbahan-bahan atau bumbu Bali asli dan tanpa pengawet dan disini kami \r\ninformasikan untuk ayam yang kami gunakan pun ayam potong yang masih \r\nsegar.</p><p>Kami pun sangat yakin untuk abon yang kami produksi ini sangatlah\r\n cocok untuk sarapan di pagi hari atau daily dan bisa juga untuk di \r\ncombine dengan nasi + lauk. Kami berusaha pada tahun 2020 ini pelanggan \r\nsemakin bertambah dan semakin banyak mengenali produk yang kami produksi\r\n dan silahkan untuk menunggu informasi update pada website atau media \r\nsocial kami. Terima kasih. Regards, Abon Ayam Fresh Bali</p>\r\n</div>\r\n\r\n	\r\n	\r\n		 \r\n\r\n	      \r\n\r\n	      \r\n			', '2020-04-12 15:53:12', 1, 'abon-ayam-fresh-bali', 0, 0, 101, NULL),
(4, 'Citra Kopi', 19500, 1, 0, 2, 1, 1000, '1603178922168.jpg', '<span class=\"\">Mengusung tagline \"Cita Rasa Kopi Orang Bangka\", kopi ini sangat cocok untuk anda para penikmat kopi di Indonesia.<br>Terbuat dari biji kopi pilihan, kopi dengan aroma khas ini akan membuat anda ketagihan.<br>Diolah oleh salah satu IKM di pulau Bangka</span>', '2020-04-12 16:00:41', 1, 'citra-kopi', 4, 0, 94, NULL),
(5, 'Abon Cabe Adinda', 37500, 210, 0, 2, 1, 60, '1603179053315.jpg', '<div class=\"woocommerce-product-details__short-description\">\r\n	<p>Abon Cabe Adinda ????</p><p>Merupakan abon cabai khas Pangkalpinang yang terbuat dari ikan teri pilihan.\r\n</p><p>Sangat cocok disantap dengan mie goreng, mie rebus atau nasi hangat</p>\r\n</div>', '2020-04-12 16:04:49', 1, 'abon-cabe-adinda', 0, 0, 28, NULL),
(6, 'Stick Akar Kelapa', 27500, 12, 0, 2, 1, 3000, '1603179191613.jpg', '<br>', '2020-04-12 16:06:59', 1, 'stick-akar-kelapa', 0, 0, 60, NULL),
(8, 'Juragan Rengginang', 22400, 28, 0, 2, 1, 650, '1603179254084.jpg', '<br>', '2020-04-13 17:24:36', 1, 'juragan-rengginang', 2, 0, 58, NULL),
(9, 'Getes Topi Mahkota', 43750, 20, 0, 2, 1, 408, '1603179301024.jpg', '<br>', '2020-04-13 17:37:25', 1, 'getes-topi-mahkota', 0, 0, 21, NULL),
(10, 'KribiQu', 19500, 12, 0, 2, 1, 430, '1603179364345.jpg', '<br>', '2020-04-15 16:23:43', 1, 'kribiqu', 0, 0, 64, NULL),
(22, 'Seblaqueen', 25000, 23, 0, 2, 1, 100, '1603179435213.jpg', '<div class=\"woocommerce-product-details__short-description\">\r\n	<p>PROMO SEBLAQUEEN !!!</p>\r\n<p>BELI 2 GRATIS 1</p>\r\n<p>*Berlaku untuk semua varian</p>\r\n<p>Seblaqueen adalah seblak Instan yang dibuat tanpa bahan pengawet, \r\nbumbu & rempah kami racik sendiri menggunakan bahan alami sehingga \r\nmemiliki cita rasa yang khas dan membuat siapapun yang mencobanya akan \r\nketagihan. Seblaqueen mempunyai 3 varian rasa yaitu Original, Baso + \r\nSosis ,Baso Spesial.<br>\r\n.<br>\r\n.<br>\r\n.<br>\r\nDengan harga mulai 25k sudah bisa menikmati seblak instan selengkap ini !<br>\r\nIsi dalam kemasan seblak instan ????<br>\r\nKwetiau<br>\r\nSiomay kering<br>\r\nMacaroni<br>\r\nKerupuk tambang<br>\r\nKerupuk bunga<br>\r\nMacaroni potato<br>\r\nFusilli<br>\r\nToping Tambahan<br>\r\n.<br>\r\n.<br>\r\nSeblaqueen tidak menggunakan bahan pengawet sehingga pada suhu ruangan hanya bertahan 3 hari, dalam frezeer bertahan 7-10hari.</p>\r\n</div>', '2020-04-21 12:07:16', 1, 'seblaqueen', 0, 0, 5043, NULL),
(29, 'Keritcu Super Sindi', 65000, 21, 1, 2, 1, 103, '1603179483349.jpg', '<p><br></p><p>&nbsp;</p>', '2020-10-17 21:32:25', 1, 'keritcu-super-sindi', 0, 0, 14, NULL);
INSERT INTO `products` (`id`, `title`, `price`, `stock`, `varian`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`, `vendor_id`) VALUES
(30, 'Kemplang Panggang AA', 19500, 123, 0, 2, 1, 123123, '1603179579884.jpg', '<p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAC1AAAAtQCAYAAACvNyETAAAABHNCSVQICAgIfAhkiAAAIABJREFUeJzswQEBAAAAgJD+r+4ICgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgNmDAwEAAAAAIP/XRlBVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUm7PlNAAAgAElEQVRVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVhDw4EAAAAAID8XxtBVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVhb37Dfn9rAs4fv3CI0MY82RjyWJo2SRBbJBoKKZEZpF/GmUuqRmtP8owqUHhIC0VkppBo3ogzghspPmn0g0mZjXQ6YNqwcDaarQ/sTE3tza3uT/n3YNzduZ2zrnP73uf+76vc9/n9YLz6Pzu+/e+rieHD9d1vl8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgB1XnV19sPp0deHsHgAAAAAAAAAAAACAbVFdWN3Rkx6rzp/dBQAAAAAAAAAAAACwparLqgMd6drZbQAAAMDJZTU7AAAAALZadfoY48fGGOeNMV4wxvjuMcb+Mca+MUZjjPvHGF8fY9w0xvjXMcbnVqvV3XNqAQAAOFHVlWOMtxzjr7+xWq2+cyd7AAAAAAAAAGDbVS+uPlBdVz10lCeObeSh6trqXdUZs9cCAADA+qorjzPz3TO7EQAAAAAAAAC2RLWvurj6UvXYwkvTx3JXB1/7fNbs9QEAALCx6iNrzHkuUAMAAAAAAACwu1VnVO+rbtuiS9NHc0d1yey1AgAAcHTVe9ac71ygBgAAAAAAAGB36uATp99d/e82XZo+mi9WL5i9dgAAAJ5Uva16dM25zgVqAAAAAAAAAHaf6k3VDdt0Sfp47qheO3sPAAAAGKP64eq+BTOdC9QAAAAAAAAA7B7VWdVfVY9vw8XoJR6o3jp7PwAAAE5l1ZnVfy6c566e3Q0AAAAAAAAAa6neWN221TehT8CD1Ztn7wsAAMCpqrpq4Rx3T3Xu7G4AAAAAAAAAOK7qj6pHt/oG9Ba4v3rN7P0BAAA41VSXbmKG+43Z3QAAAAAAAACwoeqF1Ze29Mrz1rulev7svQIAADhVVK/u4FuBlrhmdjcAAABwclrNDgAAAIAnVK8fY3xkjHHmNvz6b4wxbhhj/McY49Yxxp1jjIfHGM889H3njjFefOjPM9b4ff+8Wq1+ZBs6AQAA+DbV/jHGV8YY37/gx+4eY7x8tVrdtD1VAAAAAAAAAHCCqos38TSx47mp+rPqxxd0fF/1x9Vda/z+393OPQEAAGCM6i83MQ/++uxuAAAAAAAAADim6kPVgU0ciB/NI9VnqzedYNNzqyuqxzf4rm9W523VPgAAACev6gXVC2d3nGqqCzYxL/797G4AAAAAAAAAOKrqtOozS29IH8O3qiu3+kJz9dbq3g2+9wtb+X0AAMDJpXpO9U8dvMR7oPqL2U2niup7qtsXzvp8RaYAACAASURBVIZ3Vs+b3Q4AAAAAAAAAR6hOr65ZeBB+NAeqq6uXbmPrq6u7N2h423Z9NwAAMFd1+VFmgPfN7joVVJ/axIx40exuAAAAAAAAADhCdUYHn+B2om6s3rJDzT9VPXiMjq/tRAMAALCzqh+oHjjKDHBvdebsvr2s+sUO/ofZJf5udjcAAAAAAAAAHKGDr7/+8sJD8Kd7rPpwdcYOt79/g6bf3MkWAABg+1Uf32AGuGR2315VnVXdvnBOvKt6/ux2AAAAAAAAAHiKan/11YWH4E93c/XGiWu4foOufbO6AACArVX9UPXIBrOJpx1vk+rKTcyKF8/uBgAAAAAAAICnqE6rvriJQ/AnHKg+Vu2fvI4LNmh8x8w2AABg61SfOs6Mctvsxr2oOv/Q/LfE52d3AwAAAAAAAMAR1rh8sJEHqnfOXsMTqhuO0Xn97DYAAODEVS+tHj3OnHKgOnN2615SnV7dtHBevLd60ex2AAAAAAAAAHiK6iMLD8C/3X9Vr5q9hm9XXbpB70/O7gMAAE5M9Yk155XXzm7dS6rLNzEzvnt2NwAAAAAAAAA8RfUHmzgAf8I11Vmz1/B01Tkd+2l0fzO7DwAA2LzqhdXDa84svzy7d6+oXrFg359w3exuAAAAAAAAAHiK6qLq8YUH4E/46Oz+jVRfPUb3/XmNNwAA7FrVhxfMLe+a3btXbDBjHcs3q5fO7gYAAAAAAACAw6pXHbpMvNRj1e/N7j+e6k82WMOls/sAAIDlqjOrexfML2+f3bwXVO/exOz4/tndAAAAAAAAAHBY9fzqlk0cgD9Y/crs/nVUb9lgHf82uw8AAFiueu/CGeYls5t3u+rcll1ar/qXat/sdgAAAAAAAAAYY4xRnVZ9eeHhdx18WvVPz+5fV/Wc6vEN1vPK2Y0AAMAy1Y0LZpj/nt27F1RXLZwdH6peMbsbAAAAAAAAAA6rPrrw8LsOPm3s9bPbl6pu22BNfzi7DwAAWF/11oVzzMdmN+921S9sYn784OxuAAAAAAAAADisuqg6sPDw+57qdbPbN6O6doN1fXV2HwAAsL7qmoWzzM/Obt7Nqv3V/yzc8+urfbPbAQAAAAAAAGCMMUb1g9U3Fh5+31396Oz2zar+eoO1PVKdPbsRAAA4vurc6lsLZpk7ZjfvdtWfL5wfv1W9ZnY3AAAAsDd8x+wAAAAAdr/qtDHGFWOMZy/4sfvHGD+/Wq2+sD1VO+LODf5u3xjj/J0KAQAATsivjjGeueDzn9uukFNB9coxxi8t/LErVqvVF7ejBwAAAAAAAAAWqz688MlhD7UHXndd/c5x1vmZ2Y0AAMDxVTcvmGcOVC+b3bybVdctnCFvqfbP7gYAAAAAAACAMcYY1c9Vjy84+H60umh291aoLjrOWr3WGwAATnKHZpolvjS7eTerLlm43weqC2Z3AwAAAAAAAMAYY4zqudVtCw++f2t291ap3rjGml88uxMAADi26nMLL/ReOLt5t6rOqb6+cL8/ObsbAAAAAAAAAA6rPrHw4PtDs5u3UvWyNdb8ztmdAADA0VXPqx5aMNN8bXbzblZ9fOEMeVd1zuxuAAAAAAAAABhjjFFd2MEnSq/rs7Obt1oHn552PFfM7gQAAI6uet/CC7175o06O616Q/X4wv1+x+xuAAAAAAAAABhjHL44fMeCQ+/rq/2zu7da9Zw11v6PszsBAICjOzSrrOvW6rTZzbtRta+6YcFeV31+djcAAAAAAAAAHFZ9csGh9x3Vi2Y3b4fqWWus/+bZnQAAwJGql7fsrTrvnd28W1W/v2Cfq+7bq3MkAAAAAAAAALtQdf6CSwYPVz8xu3k7rbEXj8xuBAAAjlT96YILvXe1B9+qsxOqcw9diF7i0tndAAAAAAAAADDGOPzE5RsXHHq/Z3bzdmu9y+Tnzu4EAACeqrp5wWxz2eze3ar62wX7XPWV2c0AAAAAAAAAcFh12YJD76tn92636uw19+K1s1sBAIAnVW9YMNvcV509u3k3qn6m9d9gVPVg9bLZ3QAAAMDe94zZAQAAAOwO1XljjLev+fFbxhgXbWPOyeK71vzcWdtaAQCwQHX6GOMlY4zvHWM8e4zxrDHGo2OMB8YYt44x/n21Wt02rxB2xAULPvvp1Wp1+7aV7FHVaWOMD4wxVgt+7PLVauUJ1CcJ/14AAAAAAAAAp7zqH9Z8YtjD1etm9+6E6lVr7smvzW6Fk0l1TvXb1VXVjdX/VfdU11X/z96dR+lRnHm+f7LH6larR0NrdBldtTQMGjQwMDCYgznAZblGHNYL2HjYzXbYzGJ2sxswizFg2thgwMhg9sUYLxjMaozNDjb7vptFIBAILUhIKqm+94+oglJR9b4RkZEZ7/L7nOPTfdpVGb8nMuuNV52RT347dz4RkU4DjAcOAm4AXgQWNfnu0gu82ffzu+bOL5IaMBL40PO7fA+wZu7M7Qj4gecc93sWt+laMtF6ISIiIiIiIiIiIiIiIiIyALBLwE3vM3LnrQvwTc85OTR3VpFWAkxt8jfzO7R5RkSkFGAEsDdwJ/BpwHe5obwOHA+MyF2XSArAHgHX/12587YjYBVgbsA89wCb5M7djdB6ISIiIiIiIiIiIiIiIiLyRX03U1/wvFn6aO68deq7MezjO7mzirQSXOfpZs7JnVNEpB0Bo4ATgbc8v6eEeAHYKneNImXhHtbytX3uvO0IuCXw8+Xi3Jm7DVovREREREREpMt9KXcAERERERERaXlHmdn/9Pi5eWZ2UFUhgIlmtrOZrWVmK5nZRDP7R3P/tp1pZo+Z2QVFUdxRVYYhTPD8uU8rTSHSfv7Z42f2AL5bFMWCytOISFbAKDP7X2b238zs/zazZc3sX81slJn9i7n1vjCzfzCzRea+c8w1s3fN7DUze6woijfqT95acJ37DzezA819T6rC/zSz3wDnFUWhB8SkLQGjzeyrnj/+fFEUv6owTkfCbTrfMuBX/m5mR1eTRgbTeiEiIiIiIiLiaAO1iIiIiIiIDAtY1swO9fzxs4ui+GsFGfY2s93NbG0z+6dhfuzf+v6zBXB6URSnpM4xjP/m+XPaQC2yNDx+5v8ys3XM7M/VRhGROgAjzGxNM/vfZraimU02t46ON/f3/h/KHZ43zexxM7vZzK7vtocvgF3M7PtmtnzMr5vZs+bm70Uzm2Vm/9HcOVrf3Ob2gUaY2ZHASma2a1EUsyNji+Syk5kt4/mz11QZpBP1bc49zdyDL16/YmZH6bOkHlovREREREREREREREREREQ8ABd6vp73ocTjjgCOAl6OeFXwEmC7lHka5HzVM9M36sgj0i7wf6X7brmzikg4YBywA3AWcCvwCrAgcD0v40PgTFyX2Y4GrADcBPRGzNNMYCqwepMxtsedw6E8AIypq16RFPD/HvIJMC533nYDnB74WXR97szdAK0XIiIiIiIiIiIiIiIiIiJ+gBWBeR43U+cBayQcdzvg+YibugM9mipPg5xjgcWeeZLNj0gnwG3A8LFT7qwi0hjuoadNgNNwmxJfC1gfq/YKsEruOaoKcBjwUcS8zAXOB8YHjDWhwfHuA0ZVWatIKsAyfX8DPm7KnbfdAJOBWQGfR9OBCblzdzq0XoiIiIiIiIiIiIiIiIiI+AOu8Lyp+u+JxpsE/IG4jliD9eJeE1wZXGdNH4txr7EWkT7A1p5/P1/OnVWkHzAKWAv4OrA3cACwH7ANsGzufHUCNsV1l/4LMNt3cc7kDTqs4yUwBrgxYi56gZuJ3FRO43P969R1ilQBODDgb2bH3HnbDfCbwM+lfXNn7mRovRARERERERERERERERERCQOsDMz3uLH6OjA6wXj7ADMibuw28u0Uc9Egs28H3XerzCHSroAn9bcjrQpYGzgC9zDRg8C7NO6qvBC4iw594wAwEde98hbSr9d1+FHuOUwFWA94MWIO3gX2KDn2K03GODNVnSJVAW73/Jt5O3fWdoN7QG5JwOfSbbkzdzK0XoiIiIiIiIiIiIiIiIiIhAOu8ry5+s2S44wGriNN1+nBLko1H8Nkf84zx71V5hBpV8DuTf52rsidsR0AI3JnaHe4tWh74ALgIWBW7MIDTAOWyV1TCsAE4HjgftwG8Xb2cu75TAHXOXduRP23AhMTjP9ok3EWApunqFXyowPXF2AsMM/z7+aC3HnbCTACeCbgc2kWFb8xqJuh9UJEREREREREREREREREJBywCvCpx83V20uOsxrwVMRNXV83pZqTIbKvjH93talV5RBpd8Adw/zdzAVWy52vFQErAD/EPcSxEPd5fQ+wZu5s7QTYEDgHt2Ha540LIXbIXV9ZwPfx32TYDnpo843twA8I6+wKsAA4PmGGP3mM+TowJtWYUh+6YH0BDgn4+9kgd952ApwQMLcAx+TO3KnQeiEiIiIiIiIiIiIiIiIiEge4xuNm5zxKbG4Evg7MCLypG+pPKedlUP4fBuTYv6ocIu0OGA88Pehvpgc4KHe2VgNsCvyW4R9weQ9YJXfOVoXrjLkLbo17K+AzPMaGuestC3iz4jnKYfnc8xoDd+1eGVHvNBJ39wRu8hz7RynHlWrRResLcKfnNfxW7qztBFgOmOk5twAP5c7cidB6ISIiIiIiIiIiIiIiIiISD9d5zqcTZ3RXZWA/zzHKujPl3Ayq4RXPDD0keAWyyFBwr6HfHTgXt0nhPlw33XuBK3Ln8wWMAk4D/thXx1a5M7USYE/gMc/PnLtz520luI1EOwK/pPqHdvq9mrvusnAPNvTWNF91WZB7XmMAY4C7Iup9AlipgjzXe44/B5icenxJiy5bX4Bl8f83yHW587YT4FrPeQW3UX+d3Jk7DVovRERERERERERERERERETKAX7qcZNzFrBc5PFPwG0qrsNvUs9PXw3bBmR4uooM0r1wm40PBu7BvWp7OLfnzirlADvgv7GtXy8wJXf23IA1ganAu4Hzl8LRuesvC/cwVU69uO8KKTdxP5N7XkPhHpJ5OKLWO4FlKsp0XUCOC6vIIOXRpesLcFhAvXvmztsugI0J+/fdubkzdxq0XoiIiIiIiIiIiIiIiIiIlIPrWvWhxw3OqNfsAqfjtxnqTeBoYDIwDvgm8GTADdh+56eeo7467g3IcEEVGaT74P4+zwTe87juFgHr584scYDNgQeCP/E+F/2GgHYHrArcCiwuMX8hlgDvAy/j1qmbcs9BCrjO3VV27J4DPAPcDPwYOAL3cNJXgPGDskwAtsE94DW7xJgX5ZrPGLhOuY9G1Hk1MKLCXCEb4t6tMouEo8vXF+BuzzrnU9Gm0k4E/DXgGnoJGJU7cydB64WIiIiIiIiIiIiIiIiISHnAiR43Nz8AxkYc+2T8Nk//ZqjjA78OuAHb76A0M7NUjs086+i3XuoM0n2AQ/HbON2vrTYKigNMBK6h/Obfx3PXkgNwOO4NCVWZBzyI62z9bWBdYHTuuqsCHE/5DtC9wNvAH4GfAHsAq5bItBmNO+83ytE2D5XgHh77W0SdlXfwBH4ZmGmXqjNJc2h96f+7+tSzzntz520XuLXX1xJgm9yZOwlaL0RERERERERERERERERE0gBe87ixeWrEcU/AbxPWsB2jcd3KQq1cbkaGzBHSffrZ1ONLdwHWAu4PvO5fooM3dXYq4DDcAyopfJy7njrh3lZwZ6K5G+wD4CrcmxC67u8K2Bl4CNfVvpl5wIvAbcC/A7sCy1WQKfQzEeCB1DmqgtsM93hEjT+sKd8tgbn0QE9maH0xMzNcp3tfP82dtx3gPq+mB8zrtbkzdxK0XoiIiIiIiIiIiIiIiIiIpAHs43FT830CN5ABuwE9Hse+pMExlvU8xkDTys/KF3LsG5jhpNQZpHsAZ+HfKbHfp8BGubOLP2A14IHA8+wj+QMkrQi3wXdG4rlbDNyN2wCs18mbGTAe+AZwJO5tFScDRwH7AVvVdb0BywOzI87p9nXkKwsYTdznwbk1ZvxTYLaH68omS0Pry1IIu3b3y523HQCXBszpdGB87sydAq0XIiIiIiIiIiIiIiIiIiLp4NdZOeiGK7ABfhudGr4mG7dBLtQd5WbkCxnGAG8FjD8DWCZlBukOwErEb3jSpv02AhwEzIo81818I3d9VQPOIfzhmkYWANcCa+auTYYGXBZxXu/LndsHMAK4NaK+WjvlAo8G5kv+QJs0h9aXpeA69YY8lPaV3JlbHbAesDBgTvfPnblToPVCRERERERERERERERERCQd4Mu4jpuNfAIsF3DM8cDfPW6UfgSs0ORYPw68+Qrw3fIzs1SGKwLH/3HK8aU7ALsT3033D7nzix/cRq7fRJ5nX7vlrrMqwETCuxo2shj4NfDl3LXJ8IDNgUWB53YRsGHu7D6AayKu3akZcr4RcQ7Uyb0maH0ZEq57fohlc2dudYQ97HdP7rydBK0XIiIiIiIiIiIiIiIiIiLpABd53NC8OvCYN3neKD3S41j3BN587QVWiZ+RL4y/S98xfb0PjEs1vnQH4IfAksBrvd+ruubaA7AZYd3sY+2Xu9YqAGv0Xe+pPANskbsuaQxYBngl4vzWvmEsBvCTiNquypR1TkTW5XNk7TZofRkWYf+WWJA7b6sDDgyYz3nAGrkzdwq0XoiIiIiIiIiIiIiIiIiIpIN7BfB7TW5k9gBrBhzzIM8bpA94HGsk4a8gf67crCw1/goe8zPYd1KNL50PtzHQ94GDocwB1stdhzQHHAN8WuJchzg0d72p4TYHfpBofhYAZ6BOh20BuD7iHL8OjMmdvRngEMIe0gK4I8e1C0yIOA+Q8KE2GRpaX4aFeyvOgoD65ufO3MqAscC0gPn8Ye7MnQKtFyIiIiIiIiIiIiIiIiIiaQH7edzIvDPgeJOAmR7HXAxs4HG8bSNuvP603Kx8NvZI4KHAsR9PMbZ0B2Ay8GTENd5vCbBP7jqkMWA0cRtAyzgod90pAbsDcxPNzUvAlNw1iR/gxIhz3ANslTt7M8CWwPzA2v4GLJMp7zYR5wLgyznydgO0vjQFHBVYXy96uGZYwNSAuXwZGJU7cydA64WIiIiIiIiIiIiIiIiISHr4vdJ6t4DjXet5c/Qmz+NdGHjTtRdYN35Glhr7isCx5wJrpxhbOh+wOq5Dahnn5K5DGgNWA54qeZ5j7Jq79lSA/YFFCeakF/e5nmUzkYQDdoo892flzt4MsCrwfmBdrwDLZcx8TMS5IGfmTobWFy/AXyJqnJQ7dysC1sW/m3cvsG3uzJ0ArRciIiIiIiIiIiIiIiIiIukBywELm9zEnIZnFzZgA1zXx2Z68NxoDDwReNP16XKz8tm4JweOC3B0irGl8+E2oIS8/nwov89dhzSG6773QcnzHGvr3PWnQLrN0x/SZpv+uh2wBXFdx/+UO3szwBjg2cC6PiBzZ07g0ojzsSRn5k6F1hcv+P1bZyjb587eioAHAubwxtx5OwFaL0REREREREREREREREREqgGc4HEj86KA493heXP0Zs/jrQEsCbzxekb8jHw27sER43p11BYBNgFmBF5fgz2Buui2NOAI/Ls0DmcRbtOMz4Mpg62few7KAg4gzebp59Er4dsK7oGsmRHn+lVgQu78zQA3Bta1APhaC+R+JOKcfJA7d6dB64s3/P6tM5Tv587eanAPNPmaibp4J4HWCxEREREREZHKfSl3ABEREREREclmqyb/fa+ZXeJzIGA1M5viOe4Fnj+3j5n9g+fPmpktNrMrAn7+C4A9zOycwHGfN7M9y4wr3QGYYma/NLMxJQ4zzcx2LIpidppUkhow1dznV1HiMI+a2RFFUTwArGRm3zGzPczM640AZvZKibGzA/Yys5+Yf73Dud3Mdi2K4qPyqaQOwHpm9isL/5ycZe5cT0ufKh3gO2b2fwJ/7eSiKFrhQa2VIn7n7eQpupjWl2DN/q0znH2A/y9pkrTmm9k3i6J4o47BcA/tHR/wK2fVla2Tab0QEREREREREREREREREakIMJnmXeceDjjeVM/OUk8GHPOdwK5VD8TNxmfj7Ut4R7+ZwBplxpXuAHwV+DDw+hpsDrBR7lpkaLjXrN9Z8hzPA04e5vi7AIs9jjGr7tpTArYF5pecxyXAublrkTDA+sD7Eed7AfCN3PmbATbE/Y2HuDx3brPPzk2MG3Nn7wRofQkGbEpch+12UdsmWeDHAbkeqytXJ0PrhYiIiIiIiIiIiIiIiIhIdYBTPW5iHhdwvGmeN0ZP8DzerhE3XY8uMR8H4V5nHqIH2Cl2TOkeuI0EMyKu6cHX2+65a5GhASsAT5Q8x08D6zQZ588ex3m5rrpTAzYCZpWcxwXA/rlrkTC4h0xiPieXAAfnzt8MsCzwSmBtDwIjc2c3MwNOiTg3AN/Nnb3dofUlGLAqML3knLW6Xmr4Xgishv9G3h5g46ozdTq0XoiIiIiIiIiIiIiIiIiIVAt4pMkNzB5gkuex1vK8KboQWM7zmPcF3nCdD4yLnItT8Ou6N1AvnpvBpbsBa5JmE88puWuRoQFrA2+UOLdLcF38R3mMdYvH8f5SR92pAV+m/N/KJ8DOuWuRMMCWuDc6xPhe7vw+gBsD65oGLJ87dz/iux9PyZ29naH1JRiwDvBaiTlrJ9NqmM9bA/JcUXWeboDWCxERERERERERERERERGR6gDjcJuZG/lrwPG+63lT9AXP422J26Ac4q6IeRgBXB44Tr/zQ8eT7gNMptzGp37akNKigK2Aj0qc2xnALgHjveRxzEurrLkKwHjP2hr5GNg6dy0SBtgJmBt5zs/Lnd8HsC9h32sWAdvkzt0P930p5nNuZu7s7QytL8Fwb5Qp+xaDdrN8hfO5A/6fXR8A46vK0i3QeiEiIiIiIiIiIiIiIiIiUi3gAI+bmGcFHO9azxujD3oe7/GIm66HBM7BROCeiHEAbgwZS7oT7kGFZyKvsYHuAUbkrke+CNgF1/E41sPASgHjbeZ53COqrDs1YCRwb4l5BLdxa6PctUgY3PeRBZHn/JLc+X3gHqSZEVjbD3LnHgi3iTLGnbmztyu0vnjDrSF7Ak+UmK929UbF8xryYFPLXRvtBq0XIiIiIiIiIiIiIiIiIiLVA37lcRPzKwHHu93zxmjT137j3816oPnA2IC8U4C/R4wDbpPfSN+xpDsBo4EHI6+xgZ4HxuWuR76Ichs/lwAXErgxHrjf8/hfrajsSuD/EM5wpgNr565DwgCnAIsjz/nVufP7Av4YWNvduTMPBlwVeZ5OyJ29HaH1pVnWZYCtcZ8hv8e9faDbLME9YLdWhfP8/YA8f6sqRzdB64WIiIiIiIiIiIiIiIiISPWAaU1uYL4UeLxHPG+M3t/kOFNwm6FDNTzuoDGOihwD3IbYMSFz0+6ADYFf4zZpnIo2j3sBfht5jQ00HVgtdy0pAOOB84CLgVG585QFHAv0RJ7XmcDuEWMe6Xn8OdT4dwpMAO7GdUw8JeL3Yx6aGegjYIMqapPqAD8vcc6vy53fF+47R4h3gOVy5x6sL1eoHmBy7uztBq0vA3NNBLYEDgN+AtwEvAgsipyfdrUQeBvXVfxK4AhgxYrnfiVgtme+HmDjKvMMyrY2sDEd9m8StF5ovRAREREREZFsvpQ7gIiIiIiIiNQHt9Hs35r82MMVDf+fhvsvgNXN7Eoz++eI4z7a7AeA5c3sIjPbPOL4Zmb3m9k2RVF8HPn7bQfYysyuNbPRff+nr5rZ/wtsURTF/GzBWhxwrpl9veRh5pnZHkVRPJMgUlZ9f9u/NbNJff+nN83sjHyJygFON7PjzayI+PWnzJ3XpwLH3MjMTvX88ceKolgQnCzeZWY2pe9/Pwn4x6IojvP5ReDrZnZiibHnmtk3i6K4r8QxpEa4h5CuMbMtIg9xfVEUOyeMVBncBseQjpqLzezbRVG8VVGkKMBmZjYh4lefKIri1dR5Olm3ri/Aema2upn9DzP772a2vJn9VzNrt4cWMbNZZjbbzD4d8J/5A/73Jeb+1heZWU/f/1w44L+fZ25tm2NmH5rZu0VRvFZrFc7Z1uDfbYPcUBRF5Z2Q+66TY839W+5LZvYp8ISZ3WJmvyiK4v2qM1RF64XWCxERERERERERERERERGpCXC6RxeogwKPeatnd6lPhuouBawDvOF5jKFs1yTfrrhuvrHuBZYJnet2BoxpcE4uyJ2vVQEHA70lrjVwXdj2zF1LCsAKwJuD6rstd65YwA9KnN9riOi+DawBvBcwTm2b03HX+2C9wIEev7sK8H7kXIJ7k0DDz35pLbiOpk+VOOdX564hBPCHwPouzJ15KMDPIs/XSbmztxO6aH3Bfe8/GbgD9/aCdjIXeBr4HXAucDSwC7AuHfJvBWBb/K/FmVTcBRlYEbiOxp3ZP8T9DbXlW07QeqH1QkRERERERERERERERETqAdzW5AZmL4Gvhca9TtrXJ8CvgeNwryq+HrcRrowbh8m1NnAn5Ta0/gkYPdTxOxlwdoM5mQ+slCHTGsBJwKnAmnWP3wywDfBpiWutX5mOvC0DGAn8dYj6/pY7WwzgrMjzOR84PHLM1Ql/uGTd1LUPk200MG2YDJ8AX23wuyOBxyPnE2ARsEcddUoawMYNrhcfl+auIQSwe2B9z9CiG/+AVyLO16fAxNzZ2wVdsL4A43Df316LrDWXD4GbgROBDWPrbxfACOCFgPmp7Dsr7rvC93Gb1n09S03fg1JB64XWCxERERERERERERERERGpD/BOk5uYb0Yc89iIm6Wp/RbYCdgIOADXyatRpzIfVwAjqjgPrQy3MbJZZ9gf1ZznskHncx7wzboyNAOsTLku5/1+nruWVICpw9T4RO5soYAfRp7PvwNTIsdcl/ANpy+krr1BvhOaZHkdGD/M714SPpVLObauOqU8YD/CNsANdn7uGkIAY4G3A+qbD6yXO/dQcA8Gxbg1d/Z2QResL8B2yTuMbgAAIABJREFUEePl9BFwFa4Tc1f9OwC/NxX1e76q+QG27Dt+jLm0yRsq0HoBWi9EREREREREREREREREpC64TZ7N3BR53LKblVvJQuC4Ks5BOwAO85ijp2rKsiLw1DAZpgNj68jRJONoynXT7Xdb7lpSwW2WWjJMnQ/kzhcCODfyfP4JmBA55o7AzIgxT01df4OMb3jkuYdBm6uAPSj3VoCOecigGwA/ZvjPAh+/yF1DKODngTWelDvzcHBvDImxS+7s7YAuWF+A44HFkXXW7SXgYFq0u2/VgJWA2Z5z1QvsUEGG0bgH8Mr+u3J+FflSQ+sFaL0QERERERERERERERERkboA367qxixwR+RN01YzE9g+9dy3E+Bhj3laCCxTcY5Vab5J8+gqM3jmvL7UFec8XvV81gUYA7zZoNbghzRyAc6LOJdLKNExFzgFWBQx7vvU9EABsGtArmsG/N6quM6ese6my7qBtitcV83bSpxrgKm56wgFrA0sCKjx/tyZhwMsS1zn8LdzZ28HdMH6AuxLezxgORs4MnZeOwVwU8Cc3VHB+JsAryQ8rx8BX06dMxW0XoDWCxERERERERERERERERGpE3CFx43Mr0cee53Am8Ct6DFgjdTz3k6Ar+DfHXajCnNMBl73yHBPVRk8cx4fd6kt5VVg+Zx1pARc1KTei3Jn9AH8NOJczgH2iRxvOeDOiDHBbVDbI/UcNMgamvMh4BLg3cj6AF4Alq2rRomHW0deLHGue4Ezc9cRA7fJ39dcWvg7B3BC5PmL3uDbLeiC9QX3BhHfbsY5vQisFTOvnQTYFv/v/wuANROPfybV/DvysZQ5U0LrBWi9EBEREREREREREREREZE6AY963MicWOL434u8eZrbQuAnqLOp4V6b7Wu3ijKMBZ72zPBxFRk8c24CfBp0pX3R+7TwhohQwFo03wBzRO6czQAXRpzLV4F1I8fbFZgWMSa4+T4w9Rw0yLoc9T8sMwNYva4aJR7uWv64xLleCByWu44YwM6BtX4vd+ZGgCcizt9iYLXc2VsZXbK+AL+LHLNObwKTY+rrJMAI4PmAeUv2dgBgFeDBKk7uAC3XXRytF6D1QkRERERERERERERERETqhtuE1siMBGNcFnEDNaeHgPVSzG+7A0YC0wPmLvkGatwmjj8GnsNVU+fwyDkOeCMw52BzgU3qzl4l/DpcTsmdsxHgRxHn8k/A+IixlgN+g3/Xx8HeA7apYh4aZI7tMhirB9ihzholDnAWbkNUrDnATrnriIFbu14KqPXR3JkbAaYQ97l0X+7srYwuWl+AxyPHrcsC9P3fzMyAUwLm7UNgQqJx9wdmVnFyB3mLFnpIFq0X/bReiIiIiIiIiIiIiIiIiEh9gEkeNzKTvOYY92ry2A0bdXkR2DdFvZ0C2DdwDreqIMMvIs5l7RvugFsicg60ENi57txVwu/17/OBkbmzDgfXRT/ks6sXuDByrP2BDyKunX53ApNSz4FH7odLZI5xVt01ShjcAyV3lDzP79HiD1c0QtiDBfOBdXJnbgS4OfI8HpQ7e6uiy9YXYKfAeut2eZn6OgXu34ezAubt5ARjjgGuq+SsDm+fFPOVAlov+mm9EBEREREREREREREREZH6ADt63Mi8MeF43wI+iryhWpVe4FHggFR11gXXrewUKtx0C9wdOJfBHRGbjB/b2fawlDkqzDlw7mrNXAfgMY/an8qdczjAd4AlAedxHnBgxDhrA3cFXzWfmwEcXMUceGSfhOsIXZc/5qhT/AEbAK+VPM8vAavlriUWsAzwbkC9P8yduRFgDeL+zj8ERuXO34ro0vUFOL9EloF6cW/9uBn4PrAHsB6wMrA64ZtxFwIrpKqznQG/Cpi3Vyn5EBxuzXgxYMyncH8/KwIbAX8g7G+p36Wp5qwMtF7003ohIiIiIiIiIiIiIiIiIvXC7/XMSW/SAivgXh++OOLGakqvAj8HNkpZX12AzYHn+mo5vaIxJuE2lPh6MfH4OxO/MfOUlFma5JyC6wZXxhl15a0LsJdn7VfkzjoU3AMfIdffNGDTwDGWB64g7O9soB7gSmBCVfPgUcOxkdljvAlMzFWrNAccBMwteZ4fIuM1nQJwRkC9r9Dim8aAayLP5eW5s7ciunx9wXXe/iQwz1zgceAy4ACabHYGTgo8vh7OMTNgC8I2I3+r5HjH4P8d+q3hxsN9F7+HsA7n/14meypoveh3ee7sIiIiIiIiIgN9KXcAERERERERqcX/8PiZD1MOWBTFa2b2DWCKmR1uZuua2dgGv7LQzOaZ2SdmNsfM5prZ7L7/zDGzj/v+u0/NbLGZ/QczG2lmY/qO+69mtsTM5vfV8ryZPVIUxTMp66oLMNrMzjKzfe3zf7+Prmi4fczsHwN+/s+pBgbWNbOLLP7/R/EvqbI0AixrZpeY2T+XOMxlRVEcnyhSKznc8+ceqTRFBGAXM/uJ+V9/T5nZjkVRvOR5/NFm9l0z+5aZLRMV0v29nVgUxf2Rv5/KJjWNs9DM9imK4p2axpMAfRu6LjKz3cysKHGom8xsl6Io5icJlkHfurCv74+b2QmtXC8wycy2jflVM2uJDq+tROuLWVEU3wMuMbNdzGwtM5toZv/J3HfOxea+979vZm+b2XNm9teiKB4OHGZh4M//KvDnO9UPzOwfPH/2yaIoLo4ZBBhnZj83s609frzHzC4zs6OLopg91A8URfEnM/sT7q0813rGmOv5c5XRevH5r5rWCxERERERERERERERERGpG3CvRzeovWvIMQH3ivH1+/7nl3GvZY7d+NGRcK+4fmGIc3R+ReM9N8RYw+kF1kk07nLA6wFjD+W8FFk8sv6+ZM5b6shZN2Bfz/oXA8vlzjsQ8DXCOmPegudnFe417SfjuonGegbYsep58AGMony3YV+VdNqX8oDVgSdKnt9e4ILctaQA/Dig7pty520GuCDynD6eO3urQetLbYATAur+kBbv6lsH4LjA62W7yHE2B/7uOcaLBHRfx3Ve93VMTP6U0HrRT+uFiIiIiIiIiIiIiIiIiNQPvw2yPp3BpGK4jSDDveL6jArG+2rgje/HEo07Arg/cOyhXJQiT5OsoRtNBnsY1ymy4+A2Yfl4NnfWgYCNgVme2b03fOI29JwDTA+9SAZ4Czi06jkIAexSop4QubtsyzCA3YCZJc9vD3Bs7lpSAMYBH3vWPQtYMXfmRnAPNPl+Jg52Su78rQStL7UCfhpQ/1W58+YGTMRtJPcVtS4DPwAWehy/F7icwO/JuAcJfB0SU0MqaL0YSOuFiIiIiIiIiIiIiIiIiNQPv80WX8mds5vhbq7/ock5OriCcS8LvPGdpIsbbrNECpekyNMg57oMv6Hdx0vAhCoz5oLbUOkr6tXvVcB1v5/hmXsRHtc8sDVwI+WulZnA92nBzfaEf07E1r9K7lplabiHXX4KLCl5fucCu+WuJxXgrIDaT8udtxni/8Z7aPHNfnVC60vtgFsD5sG7w3GnAq4MmK9eYKvA40/G781H/dflHiVq6fEcZ//YMVJA60U/rRciIiIiIiIiIiIiIiIikgd+HcCWzZ2zWwEbAq96nKMNE487grBOhnOAsQnGPSpgzGauSDEXw+QcCTxVItt0YPWq8uUGPBowF9vkzmtmBqyM68DpYx4NNvYAGwDnAa+EXBRDmA9cTAtvtAeeL1mjj6wbnOSLgBWBhxKc2+nAJrnrSQUYjf/a+RowMnfmRoA1gAWR5/aR3Plz6rsWfgTcB7yD/4MGWl8SwX9NfzF31txwb53x3XQMcE/g8b8JfOB57KeBNUrWM8dzrL3KjFMyo9aLz2m9+Hy9eAP3AMF04DZgudz5RERERERERERERERERDoWrhNYM4ty5+xWwLeBTzzO0WxgROKxdw688X1DgjG3JP7G+1CuTDEXw2Q9v0SuuXTQhsHBgG0C5mJG7rxmZsAE4AXPzAuB7Qf87ghcN/JDgOuB1wPqH04P8CtavOsyMBFYnKDeRm7MXacsDdgeeD/BuX0RWC13PSkBJwTUn23jni/g5hLn9+Tc+XPBbUb1XVMG0vqSCG4zp6+zcufNjfAHYry6TwNjcJ2tez2Pex0JuqHjvzE529sP0HoxkNaL4Z2aO6OIiIiIiIiIiIiIiIhIxwI28bihOT93zm6D2zAzFf/NBndXkOE3nmP327LkeJOBdwPHbKaSDtTAVoR16RuohxKvJG8HwB8D5iP75lhgGcI6ZoPbBD8NmEHaTf+9wF3A+rnnxQewf8LahzKdDu6O2o6AHxL/+TfQ/cD43PWkhFu73/Cs/4HceZsBNsW/a/JgPcDk3DXkAJwGfBo5b6D1JQngRM956QFWyp03J+DAwGvJ6/ML2ALXOdnHQuDYhDX5jrtzqjED82m9+JzWi8a+lzuniIiIiIiIiIiIiIiISMcCvu5xU3Nu7pzdBFget7EsxBGJMywDzAoYv9Srz4GRhG9g9ZF8AzUwFv8ND0M5KXWmVgKsQ9gGij0z5x0B3FnifKb0V2CbnPMRCriq4jnZN3eN4uDWpj8nOq+/Akbmrik1YD/P+hcDU3LnbQZ4sMQ5fix3/roBKwP3lZizKrXd+lIW/mv7X3JnzQnXIfqdwOtp1ybHHAmch//DNh8B2yWu6ynPsXdIOW5APq0Xn9N6MbweYI3ceUVEREREREREREREREQ6FrC9x407baCuCbAx8FbgTefZwNjEOQ4KzHBGyfGuCBzP1+WJpmRg1utaKU+rAX4ZMB+zSPCa9hrzVuUl2uDV7EMBnqlwXm7NXZ84uK770xKc0yXAObnrqQrwgOc8ZO+83wzh3wMGuyB3DXXqm6+ZJeesCm27vpSBezjqY885Ojh33pyAiwKvqZebHG8K8HTA8V4C1qygLt/P421Tj504n9aLDkPYetHy519ERERERERERERERESkrQE7e9y468mdsxsAhwDzI246X1pBlrsCxl8ATCox1uERNfu6LPG87A70Rmb5CzAiZZ5Wg+tQG3IN/zZz3tBNQ6m9BxxHm14XuK6VCyuam4+BFXPXKGbAKYnO8xxgv9z1VAXXfd9nfVgArJ47byPABGB6yfOdtJtsqwKWA24qOVdVaOv1pSxgW895mgUskztvLsDauM+kEKcPc6wxwFRgUcCx/gyMq6i22z0z1N6ZHa0Xg2m9GNp0YPncuUVEREREREREREREREQ6GrCb5w28rF1iOxmuS95U4jbmzgdWSZxnPPBpQIbbS4y1CXGbxn1dknBeJgHvR+Z4FZiQKkurAs4NnJfdMmY9LfJcpjAHN1djctWfArBjhXN0VO76uh0wDrg10fl8GVgvd01VAq70nIurc2dtBrim5Pn+BBiVu46qAXtRfuNgah2xvpSF/wNSv8ydNSfg3sDrazGw0qBjjMBt1n8v8FjXUOEGf+BGzxxbVZWhQTatF5/TejG0RcCOuXOLiIiIiIiIiIiIiIiIdLy+m3k+Vs6dtRPhunb9Jeg289IuqiDTdwIz7B45ziTg7RK1+0j2SmjiNxLOBdZPlaNVAaMI2zwzAxiZKesRxHcSL2MhcBUlOra3EuDHFc3TQ7lr63bAV4HXEp3Pm4Blc9dUJWAsrpNtM/MZtPmw1QBb4jZJlnFf7jqqhHvbwu/Is44Mp6PWl7KAZzznrSs63w4F2C/iOnt5wO+Pxm2cfjXwGIuB02qo7xeeebasOsugXFovlqb1YmjH5c4uIiIiIiIiIiIiIiIi0hWAPTxv4m2eO2unAdYDXg+8mTrQW1SwKQ24JyDDNCK6xwEjgQdL1O7r3ERzckCJDAenyNDqgEMD5+XKTDn3BnpKnM8YvcBtwFo5aq4K5R7+GM5CYIPctXUz4HBgXoJz+SlwfO566gAc5Tknyd6KUAVcJ9nnEpz7f89dS1WAA3EPALWKjlxfygBWwG9T5/TcWXPBbeKdFnG9PQRsDlxG3N/BPGDfmmo8zzPTFnXkGZBL68XStF580Xm5s4uIiIiIiIiIiIiIiIh0DWBrzxt5e+fO2klwG9dnR9xQ7ddLBa/1xXXEXhCQ48LIca4oUXuIMxPMySTiN0t1zavhgb8Fzk3tD2UA2+E6+tXpSeBrdddaB2BmBfM1NXdd3QrXTfS6ROfxDWDj3DXVBb8HgubS4t2BgR8mOv+75a4lNWAV4M5E85NKx64vZeD/JpUsD3K1AmBq5DVXpuv6+9T43Q843TNXrd9H0XoxmNaLpSV/u5SIiIiIiIiIiIiIiIiINACs7Xkz79TcWTsFcDblX3d8XUXZjgnI0AusGTGGb+e1wWO9Qvjm1+8lmJM/ROQF90rzsWXHbwfAFMI21bzc/KjJM25KuYcWQr0DHFZ3nXXBddBPbRoVdNWX5oA1gWcSncdbgfG5a6oLsDJ+Xe0vz521EWBjwh6gamTF3PWkBJwMzEk0Nyl09PpSFu4zyMfWubPmAGyAe9tDnV4CvlxznUd7ZqtzU7fWiy/SevG583PnFxEREREREREREREREek6wHKeN/SuyZ213eFel31L5A3Vgd4ExlWU8d6AHI9EHH9rwm+4fwTs2vf7vpsh+h1Xcj6+FThevwXApmXGbifADYHzc1bN+dYlvot4qLnAj4Bl6qyxboT/Lfo4IHdd3QjYE/g4wflbCJyWu5664R6K8pmb1XJnHQ6u+/iLCa4BgFm560kF93DQE4nmJYWuWF/KAEbi93n2du6suQAPV3mRDuEBYEKGOvf3zLdFjZm0XixN64WzBDg5dw0iIiIiIiIiIiIiIiIiXQu/TlgP5M7ZznDdPZ+PvKk60DxgSkUZJxLWke47gcdfDZgeWO/jwKoDjnFY4O8fXGI+lsO9bjxGrRuEcwLG4TZ1+VpEjd3mgNVxnY2r1gP8qs7acgKuTTx/9+WuqRsB5+M27pT1HvC13PXkALzgMT+/y52zEeDSBNdAv7/nrqcs3Lr2C/y+H9ehq9aXMoDtPef0ktxZcwAOr+wqHdqvgVGZat3RM+OWNWbSerG0v+eupyzKrxfz0QOEIiIiIiIiIiIiIiIiInnhOvw2MyN3znYF7AzMjLypOlAvcEiFOUM6ys4GxgQcexzhG8i/sOkCOCjwGLuXmI/fBY7V71FgROy47QY4MXB+7q453z2R5zHE34CN66wrN+DJhPO3EFgvd03dBFgeuC/R+XsQmJy7phxwD0c10wtsmDvrcIDtSLOJvt8TuWsqAzgA90BAq+i69aUM/Dd3ds1bQvoBE4APKrtSl9YLnJ+53k09s25VUx6tF1/U7evFdGrsgC4iIiIiIiIiIiIiIiIiwwCe8rzJt3rurO0G+D7pOhhW2i2PsI2mNwQcd0TgsXuBc4Y51t4Bx4HIjqjAHn05Qs0F1owZs10BzwbO0V41ZhtFWHfsUB8AR9ZVT6sARuI65qVyae6augluU9nbCc5bL/AzuuiBkcGAH3jM019y5xwO7k0L7yS4FgZ6KHddMYANgAcSz0UZXbm+lAW84jG3r+fOmQNwdbWX7Gd6gGNboN41PPNuU1MerRdf1M3rxZMMeMuSiIiIiIiIiIiIiIiIiGQE/NbzRl9l3Y87DTAGuKnkjdWBbqPCTWq4DtGfBuTx7tYGXBVw3B7gmAbH2ingWBDRxQ0YD0wLHKdf9g0jdcK/u1+/adS42RLYPvI8NrMEuBYYX1ctrYTw897IB906jzkAR5Bm8/tsYN/c9eSGe+NAM3vmzjkc4M8JroXB2mpDHK4r7xXAogrmIkZXry9l4NfhF+Ci3FnrBmxGugc6G5kP7J27XrPPvs/72LamPFovvqhb14trGPSWJRERERERERERERERERHJCDjb82bfr3JnbQfAl4HnSt5YHeg+YHTFmQ8PyPNywHFPDzjuQuDAJsfbKuB4AKtEzMV1gWP0uyd0rHYXMVc/rTnfRZHnspE3gO3qrKPVACcmnM+jctfTDXBdw69IdM5eAtbJXVNuwESab6J6mxbt0A38ONH1MNgjuWvzgXs7xneBGRXNQ4w36PL1pQz8v3MGP1zXznDXuu/bhsqYSU3dnH3ht2l8hxpyaL0YWretF3OAQ3PXIyIiIiIiIiIiIiIiIiKDAHt63vR7K3fWVgfshttAkMrjwNgact8ZkOksz2Mejuuk6KMH2M/jmOuHTV/Y3OE6FvcGjgHunK8cMla7A0YDHwfMUQ81v6oaeCLiXA6nF7gcGFNnDa0IuDHRnD6Zu5ZuAEzGr/Olj1uAZXPX1AqAQz3m69zcOYcC7AIsTnRNDPZ87vqaAb6JexCgVWh9SQB4wGOuX8qds27ACZVevc50WnBjOn7/JtulhhxaL4bWTevFE8BXctcjIiIiIiIiIiIiIiIiIkMAVgu4+bdu7rytCjgf/w3DPp4CJtaQewwwzzPTImCyxzH3xP/1xouBgz2zrhQwfwsj5uHvAccf6JCQsToBcEjgHN1Zc74RwKeR53OwGcDudeZvZaTpsN9Li3Wq7ETAZsC0BOerBzgjdz2tBLi+yZwtBFbMnXMw3He+jxJcE8OZnrvG4QBfBf6coMZFpNtQqPUlAWBZYIHHfJ+XO2udcA+7pVgDGnkTWDN3rUPB73v9bjXk0HoxtG5ZL84HRuauSUREREREREREREREREQaAN71vAn449xZWw0wCbgvwQ3WgR4CxtWU/8CAXHd7HG9bYL7n8XqB4wOyjsK/Q/TMwHm4JGAeBrotZJxOQfg1v1PN+TaIPJ+DPQCsVGf2VgaMJM3G9Fty19LpgMPw/yxuZAawQ+56Wg3NO1LW+tCID2As8HTkdfCU588tBEbkrnUgYFXg16TZ9PwicESC44DWl2SAb3nOeVc9CAqcnuhaHc6rtPAbWPD73NqrhhxaL4bWDevFprlrEhEREREREREREREREREPwB88bwQ+lztrKwG2JH1nt7uAZWqswffcA+zb5FgbA7MCjhfcCRCY43nsaQHH3AzXYTXUDGCF0BraHbBK4Hy9kiFjaIfswXqBX9BiGztyA6aUnFdwG7C/nLuWToXrvn4x/g+bNPIUsFrumloNsBzN3zhxQO6cgwF3Rl4Hl/T9/kn4XVcb5q7V7LPzNJU0DxIswHURHYXWl5aD2/DYTO3fRXLCdeWeUfJabTiftPgDAPg97Ld/xRm0XjTW0etF7rpERERERERERERERERExBNwrOcNwd5WudGZG3Aifq8LD3EjNb7iF7cRaLZnthmNsuFedRzymudfRmZ+3fP4r3sebyTwXEDugfaLqaHdAWcHztMJGTJeFHlOwf1dH1l35nYAHFNiXvv9LHcdnQoYD9yT4ByB25A4OndNrQjYr8nczabGB6F8AJdGXgcXDTrOuR6/4/1miSrgNsJdiP8DV808DKw34PhaX1oMMN1j7i/OnbNO+P2txnoJmJy7xmaA33vUcmjFGbReNNbR64WIiIiIiIiIiIiIiIiItAlgEv4dZa/InTcnYBxwU6KbrP0WA2dmqGWvgIyXNTjO+oR1ubuHyI3iuBvTPl7wPF7oZuB+v43J3wlwr6T29REwJkPGuyLP6xxgh7rztgvgish57TcDGJe7jk4ErInrCFpWD3Bq7npaGa6zZCO/y51xIOC7kdfChcMc7/Emv3d33TX25Voe+Cn+D4Y18wFDbHZG60tLAbbwnP/NcmetCzCRsDfChHiBNnn7Cn7fWY6tOIPWi8Y6er0QERERERERERERERERkTYCPOp5g3AmLdYpqy7AJsAbiW609psD7JmpHp9XnvfbdJhjbEjY5ukngbElMvt0kwN42uNYaxH3quZpwITYGtoZMCVwri5qftRKcj4fcV7nAFvlyNsugIci5nWgk3LX0ImAbYAPS54bcOv7TrnraXXAbU3mcffcGfsBu+P/gNxAlzQ45teb/O4iYLUaa1wPuJ649Xwon+A2PS47zHhaX1oIcIHH/L+TO2edKNclvZFngeVz1+cL+JFHTZU+MITWi65eL0RERERERERERERERESkjQDHBtwszPq63RyAk3CvXk/pDWCDTPWMwHUH9rX6EMeYQtimvTco2bUOmOo51hMex3owIHu/XmDnMjW0M+AXAXO1AFgpU87pged1IeoM2hSuw16s14nsPC/DA74NfFrivPR7FfhK7nraAY278M9qlesct3FtXsS1cLXHse9pcoxKu6oCI4F9gXtx63IKPcAvabJuofWlpQDPeJyDq3LnrAvurUJzA69RH08BE3PXFwI43qOucyvOoPWii9cLEREREREREREREREREWkjwLL433B/OXfeugArAH9MdLN1oFuA8Rnr2jEw7+qDfn9LXLdSXzNIsDkPOMFzvCebHOeowPr7XVm2hnYGvBswVzdk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AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIX4Lx4AACAASURBVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/o89OBAAAAAAAPJ/bQRVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUV9uBAAAAAAADI/7URVFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV', '2020-10-18 16:23:20', 1, 'kemplang-panggang-aa', 0, 0, 25, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
(8, 'BCA', 'Yayan Maulana', '2831752566'),
(9, 'Mandiri', 'Widya Pinandini', '1340010789120');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL,
  `verify` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`, `verify`) VALUES
(1, 0, '2020-10-30', 'BLINDO.ID merupakan toko online dengan mengangkat tema produk khas daerah di Indonesia.', 'Perumahan Raoseun House No.21 Jl. Manisi Kel. Pasirbiru Kec. Cibiru Kota Bandung 40615', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', 'https://www.facebook.com/blindonusantara/'),
(3, 'Twitter', 'twitter', 'https://twitter.com/tonisuwen'),
(4, 'Linkedin', 'linkedin-in', 'https://linkedin.com/in/tonisuwendi'),
(5, 'Instagram', 'instagram', 'https://www.instagram.com/blindo.id/'),
(6, 'Youtube', 'youtube', 'https://youtube.com/tonisuwendi');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
(0, 'Semua Email', '2020-04-21 13:59:23', ''),
(22, 'maulana24@live.com', '2020-10-20 09:27:19', '16031608391730843616'),
(23, 'yayanmaulana3@gmail.com', '2020-10-21 18:49:41', '1603280981401872962'),
(24, 'yama24@qmail.id', '2020-10-21 19:25:35', '16032831351460348582'),
(25, 'adeulala5@gmail.com', '2020-10-22 15:29:42', '16033553821829684385'),
(26, 'orieldw@yahoo.co.id', '2020-10-29 16:56:08', '1603965368231120464'),
(27, 'theroboticfuture@gmail.com', '2020-11-02 08:36:47', '160428100791729409');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`) VALUES
(1, 'Aliyah Wati - Jakarta', '', 'Sist makasih barangnya udah sampe, bagus dan lucu2. Temenku aja pada ngiri. Semoga sukses selalu buat eveshopashopnya. Sory baru bisa kasih kabar.'),
(2, 'Een Enarsih - Banten', '', 'Sis barang ny dh sya trima,mkasih bnyak untuk layan’n ny sngat m’muaskan untuk sya,smu prtanya’n di jwab…\r\nRespon ny jga sngat baek,smoga usaha ny smakin brkembang'),
(3, 'Ayung Darma - Pekalongan', '', 'Oia mf sis,Nich brg nya brsan aja ampe, mksh ya\r\nBrg nya bgs banget, sesuai yg digambarnya, makasih ya'),
(4, 'Via Garolita - Cimahi', '', 'Sistaaaa……\r\nbaju nyaa udah smpee…\r\nbguss dechh…suka bgt…\r\nmaaksiih yaa'),
(5, 'Dewanti - Solo', '', 'Barang tidak mengecewakan.. cs nya fast respon, resi besoknya langsung di share tanpa kita tanya.. mantap tokohijabku'),
(6, 'Dina - Malang', '', 'Respon cs baik, tapi untuk pengirimannya agak lama, padahal pakai ekspedisi ”sicepat”\r\nharusnya bisa cepat sampainya.');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `user`, `product_name`, `price`, `qty`, `slug`, `ket`, `img`) VALUES
(5, 1621310512, 16, 'Juragan Rengginang', 22400, 3, 'juragan-rengginang', '', '1603179254084.jpg'),
(21, 1879514282, 18, 'Citra Kopi', 19500, 1, 'citra-kopi', '', '1603178922168.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_register` datetime NOT NULL,
  `is_activate` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `token_reset` varchar(100) NOT NULL,
  `cookie` varchar(100) NOT NULL,
  `photo_profile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `date_register`, `is_activate`, `token`, `token_reset`, `cookie`, `photo_profile`) VALUES
(9, 'Gilang Aryadi Mahardika', 'gilang-aryadi-mahardika', 'gilangaryadimahardika@gmail.com', '$2y$10$mxLqr8ARdU90VX9sX1SzXuTUz23cz4MyWccY0cmd9ywjRW6pX8RGa', '2020-10-19 10:08:33', 1, 'c8d2801b1990460058f9a7a286ef4a9aa771a98f', '', '', 'default.png'),
(13, 'Yayan Maulana', 'yayan-maulana', 'maulana24@live.com', '$2y$10$xyz2a.7Hbkcy6nm2KFkYeONyFNWIVoMtsDQPi79ingzq03HAzC5Ta', '2020-10-20 09:27:19', 1, '1ca15bcdc3b15c6ebb2778421396da88eb34ce5f', '', 'C6KDu5jghUj4bfc8f76lBzvoIQwZMqzdJxXU0YtTqJm1SgVX2ANpitFuWmHrdCsH', '1603160880735.jpg'),
(14, 'Yayan Maulana', 'yayan-maulana100', 'yayanmaulana3@gmail.com', '$2y$10$1wPW/m8AyQEvCSbZxjULb.JxRpaLtCYM4M00zOa5A1d5Ij9hw7yfq', '2020-10-21 18:49:41', 1, '1a157367b39e15d60503108bd23478e24afefe8f', '', '', 'default.png'),
(15, 'Yayan Maulana', 'yayan-maulana679', 'yama24@qmail.id', '$2y$10$isqN92t8vmLekaKt6ivs3uyq3NXl9kDmNy9D2JcU95VSVkfNPCjRC', '2020-10-21 19:25:35', 1, '0c29e4df732380c1faa36c53e52eaffead70baf6', '', '', 'default.png'),
(16, 'ade irma', 'ade-irma', 'adeulala5@gmail.com', '$2y$10$wOeDDQia5fH16L9DG15As.vHit699WIoXaBD/gZ0B1I7/NABz1hW2', '2020-10-22 15:29:42', 1, 'ec7fc0e32842e7ce17f59cf528ffc0603e21a65c', '', '', 'default.png'),
(17, 'Dustin Wyrmand', 'dustin-wyrmand', 'orieldw@yahoo.co.id', '$2y$10$G4Rm1pQXfcBYiS0tMl.0MeOpE.OwDvjozk5UlaKna2RCQDMUTjXCK', '2020-10-29 16:56:08', 1, '3b143895ebfa578619697a7ff7a9496afece8f62', '', '', '1603965440724.jpg'),
(18, 'Gilang Aryadi M', 'gilang-aryadi-m', 'theroboticfuture@gmail.com', '$2y$10$RB7bgxDEE/VstFgJ/XEDWuiiU0XyMevzLeqwLZb3CiqzJGjdjwh0q', '2020-11-02 08:36:47', 1, '109429c2214cc9545942712e246827f7cda6b14f', '', '', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `varian`
--

CREATE TABLE `varian` (
  `id` int(11) NOT NULL,
  `id_product` varchar(40) NOT NULL,
  `varian` varchar(50) NOT NULL,
  `price_varian` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` double DEFAULT NULL,
  `date_register` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id`, `name`, `email`, `phone`, `date_register`) VALUES
(12, 'Omgil', 'omgil@gmail.com', 89865543221, '2020-10-19 11:41:02'),
(13, 'Omdik', 'omdik@gmail.com', 8986182128, '2020-10-19 11:41:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod`
--
ALTER TABLE `cod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grosir`
--
ALTER TABLE `grosir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_proof`
--
ALTER TABLE `payment_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `varian`
--
ALTER TABLE `varian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cod`
--
ALTER TABLE `cod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grosir`
--
ALTER TABLE `grosir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment_proof`
--
ALTER TABLE `payment_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `varian`
--
ALTER TABLE `varian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
