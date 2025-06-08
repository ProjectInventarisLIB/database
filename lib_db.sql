-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jun 2025 pada 17.14
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lib_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggaran_staf`
--

CREATE TABLE `anggaran_staf` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ID_Staf` varchar(50) NOT NULL,
  `periode_anggaran` varchar(200) NOT NULL,
  `nominal_anggaran` int(11) NOT NULL,
  `pengeluaran_anggaran` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggaran_staf`
--

INSERT INTO `anggaran_staf` (`id`, `ID_Staf`, `periode_anggaran`, `nominal_anggaran`, `pengeluaran_anggaran`, `created_at`, `updated_at`) VALUES
(1, '1', '2023/2024', 4000000, 930442, '2025-05-20 17:15:04', '2025-06-08 15:05:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_tersedia`
--

CREATE TABLE `barang_tersedia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ID_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(400) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang_tersedia`
--

INSERT INTO `barang_tersedia` (`id`, `ID_barang`, `nama_barang`, `deskripsi`, `jumlah`, `satuan`, `harga`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'BRG004', 'Laptop Dell Inspiron', 'Laptop untuk kebutuhan kantor', 15, 'pcs', 8500000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(2, 'BRG005', 'Flashdisk 32GB', 'Flashdisk USB 3.0', 200, 'pcs', 75000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(3, 'BRG006', 'Printer Epson', 'Printer inkjet warna', 8, 'pcs', 1500000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(4, 'BRG007', 'Router Wifi', 'Router 4 port', 12, 'pcs', 650000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(5, 'BRG008', 'Harddisk External 1TB', 'Harddisk portable USB 3.0', 30, 'pcs', 1200000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(6, 'BRG009', 'Headset Gaming', 'Headset dengan mic noise cancelling', 2, 'pcs', 400000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(7, 'BRG010', 'Powerbank 10000mAh', 'Powerbank dengan 2 port USB', 50, 'pcs', 200000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(8, 'BRG011', 'Kabel HDMI 2m', 'Kabel HDMI berkualitas tinggi', 1, 'pcs', 50000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(9, 'BRG012', 'Webcam 1080p', 'Webcam HD untuk meeting online', 5, 'pcs', 350000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13'),
(10, 'BRG013', 'Meja Kantor', 'Meja kayu untuk kantor', 10, 'unit', 750000, NULL, '2025-05-20 18:47:13', '2025-05-20 18:47:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_email_pengadaan_mendesak`
--

CREATE TABLE `detail_email_pengadaan_mendesak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `ID_pengadaan_mendesak` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_email_pengadaan_mendesak`
--

INSERT INTO `detail_email_pengadaan_mendesak` (`id`, `nama_barang`, `deskripsi`, `jumlah`, `satuan`, `ID_pengadaan_mendesak`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 1, '1', 'PDMS-2025-001', '2025-05-21 05:34:13', '2025-05-21 05:34:13'),
(2, '2', '2', 2, '2', 'PDMS-2025-002', '2025-05-21 05:39:59', '2025-05-21 05:39:59'),
(3, '1', '2', 3, '3', 'PDMS-2025-003', '2025-05-21 05:44:46', '2025-05-21 05:44:46'),
(4, 'baut', 'stainles', 1, 'pcs', 'PDMS-2025-004', '2025-05-21 05:54:45', '2025-05-21 05:54:45'),
(5, 'tali tambang', 'warna biru', 2, 'meter', 'PDMS-2025-005', '2025-05-21 05:59:49', '2025-05-21 05:59:49'),
(6, 'tali rapia', 'warna biru', 2, 'meter', 'PDMS-2025-005', '2025-05-21 05:59:49', '2025-05-21 05:59:49'),
(7, 'tali', 'biru', 1, 'pcs', 'PDMS-2025-006', '2025-05-21 06:07:21', '2025-05-21 06:07:21'),
(8, 'CONTOH', '1', 2, '1', 'PDMS-2025-007', '2025-05-28 17:59:36', '2025-05-28 17:59:36'),
(9, '1', '1', 1, '1', 'PDMS-2025-008', '2025-05-28 18:03:20', '2025-05-28 18:03:20'),
(10, '2', '2', 2, '2', 'PDMS-2025-009', '2025-05-28 18:04:46', '2025-05-28 18:04:46'),
(11, '1', '1', 1, '1', 'PDMS-2025-010', '2025-06-01 04:55:46', '2025-06-01 04:55:46'),
(12, 'baut', 'biru', 1, 'pcs', 'PDMS-2025-011', '2025-06-02 07:19:22', '2025-06-02 07:19:22'),
(13, 'printer', 'merk epson', 1, 'pcs', 'PDMS-2025-012', '2025-06-08 14:12:21', '2025-06-08 14:12:21'),
(14, '1', '2', 2, '2', 'PDMS-2025-013', '2025-06-08 14:14:12', '2025-06-08 14:14:12'),
(15, '2', '1', 1, '1', 'PDMS-2025-014', '2025-06-08 14:23:46', '2025-06-08 14:23:46'),
(16, '1', '1', 1, '1', 'PDMS-2025-015', '2025-06-08 14:24:18', '2025-06-08 14:24:18'),
(17, '2', '1', 11, '1', 'PDMS-2025-016', '2025-06-08 14:32:09', '2025-06-08 14:32:09'),
(18, '2', '1', 1, '1', 'PDMS-2025-017', '2025-06-08 14:36:27', '2025-06-08 14:36:27'),
(19, '2', '1', 1, '2', 'PDMS-2025-018', '2025-06-08 14:37:28', '2025-06-08 14:37:28'),
(20, '2', '1', 1, '1', 'PDMS-2025-019', '2025-06-08 14:39:45', '2025-06-08 14:39:45'),
(21, '1', '1', 1, '1', 'PDMS-2025-020', '2025-06-08 14:40:38', '2025-06-08 14:40:38'),
(22, '2', '1', 1, '1', 'PDMS-2025-021', '2025-06-08 14:41:29', '2025-06-08 14:41:29'),
(23, '2', '1', 1, '1', 'PDMS-2025-022', '2025-06-08 14:43:13', '2025-06-08 14:43:13'),
(24, '2', '1', 1, '1', 'PDMS-2025-023', '2025-06-08 14:45:49', '2025-06-08 14:45:49'),
(25, '2', '1', 1, '1', 'PDMS-2025-024', '2025-06-08 14:52:37', '2025-06-08 14:52:37'),
(26, '77', '7', 7, '7', 'PDMS-2025-025', '2025-06-08 14:53:34', '2025-06-08 14:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_surat_pengadaan`
--

CREATE TABLE `detail_surat_pengadaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `satuan` varchar(100) NOT NULL,
  `ID_pengadaan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_surat_pengadaan`
--

INSERT INTO `detail_surat_pengadaan` (`id`, `nama_barang`, `deskripsi`, `jumlah`, `satuan`, `ID_pengadaan`, `created_at`, `updated_at`) VALUES
(26, 'Jaket Pelampung', 'Merek Viking Life', 2, 'pcs', 'PD-2025-001', '2025-06-01 05:37:33', '2025-06-01 05:37:33'),
(27, 'Baju Coverall Safety', 'merek Red Wing', 3, 'pcs', 'PD-2025-001', '2025-06-01 05:37:33', '2025-06-01 05:37:33'),
(28, 'Sekoci Inflatable', 'Medium', 25, 'orang', 'PD-2025-002', '2025-06-01 05:39:05', '2025-06-01 05:39:05'),
(29, '1', '1', 1, '1', 'PD-2025-003', '2025-06-08 15:05:09', '2025-06-08 15:05:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_surat_pengambilan`
--

CREATE TABLE `detail_surat_pengambilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ID_pengambilan` varchar(50) NOT NULL,
  `ID_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_surat_pengambilan`
--

INSERT INTO `detail_surat_pengambilan` (`id`, `ID_pengambilan`, `ID_barang`, `nama_barang`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 'PG-2025-001', 'BRG004', 'Laptop Dell Inspiron', 1, '2025-05-20 19:50:56', '2025-05-20 19:50:56'),
(2, 'PG-2025-002', 'BRG005', 'Flashdisk 32GB', 2, '2025-05-20 20:25:32', '2025-05-20 20:25:32'),
(3, 'PG-2025-002', 'BRG005', 'Flashdisk 32GB', 1, '2025-05-20 20:25:32', '2025-05-20 20:25:32'),
(4, 'PG-2025-003', 'BRG005', 'Flashdisk 32GB', 1, '2025-05-20 20:26:14', '2025-05-20 20:26:14'),
(5, 'PG-2025-003', 'BRG007', 'Router Wifi', 1, '2025-05-20 20:26:14', '2025-05-20 20:26:14'),
(6, 'PG-2025-004', 'BRG004', 'Laptop Dell Inspiron', 1, '2025-05-20 20:38:37', '2025-05-20 20:38:37'),
(7, 'PG-2025-004', 'BRG006', 'Printer Epson', 2, '2025-05-20 20:38:37', '2025-05-20 20:38:37'),
(8, 'PG-2025-004', 'BRG005', 'Flashdisk 32GB', 1, '2025-05-20 20:38:37', '2025-05-20 20:38:37'),
(9, 'PG-2025-005', 'BRG004', 'Laptop Dell Inspiron', 2, '2025-05-22 07:09:55', '2025-05-22 07:09:55'),
(10, 'PG-2025-006', 'BRG004', 'Laptop Dell Inspiron', 2, '2025-05-29 09:22:05', '2025-05-29 09:22:05'),
(11, 'PG-2025-007', 'BRG004', 'Laptop Dell Inspiron', 1, '2025-06-01 04:53:41', '2025-06-01 04:53:41'),
(12, 'PG-2025-008', 'BRG004', 'Laptop Dell Inspiron', 1, '2025-06-08 15:05:32', '2025-06-08 15:05:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `email_pengadaan_mendesak`
--

CREATE TABLE `email_pengadaan_mendesak` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ID_pengadaan_mendesak` varchar(50) NOT NULL,
  `tujuan` varchar(400) DEFAULT NULL,
  `link_email` varchar(200) DEFAULT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lampiran` varchar(100) DEFAULT NULL,
  `ID_Staf` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `email_pengadaan_mendesak`
--

INSERT INTO `email_pengadaan_mendesak` (`id`, `ID_pengadaan_mendesak`, `tujuan`, `link_email`, `total_harga`, `status`, `lampiran`, `ID_Staf`, `created_at`, `updated_at`) VALUES
(7, 'PDMS-2025-001', '2', NULL, 2, 'Diproses', NULL, '1', '2025-05-21 05:34:13', '2025-05-21 05:34:13'),
(9, 'PDMS-2025-002', '1', NULL, 200, 'Diproses', NULL, '1', '2025-05-21 05:39:59', '2025-05-21 05:39:59'),
(10, 'PDMS-2025-003', '1', NULL, 1, 'Diproses', NULL, '1', '2025-05-21 05:44:46', '2025-05-21 05:44:46'),
(11, 'PDMS-2025-004', 'tujuan', NULL, 2000, 'Diproses', '[\"1747806885_tanda tangan staf.png\",\"1747806885_pngfind.com-ink-png-3169474.png\"]', '1', '2025-05-21 05:54:45', '2025-05-21 05:54:45'),
(12, 'PDMS-2025-005', 'perbaikan kapal', NULL, 40000, 'Diproses', '[\"1747807189_tanda tangan staf.png\"]', '1', '2025-05-21 05:59:49', '2025-05-21 05:59:49'),
(13, 'PDMS-2025-006', 'tujuan', NULL, 6000, 'Diproses', NULL, '1', '2025-05-21 06:07:21', '2025-05-21 06:07:21'),
(14, 'PDMS-2025-007', '1', NULL, 200, 'Diproses', NULL, '1', '2025-05-28 17:59:36', '2025-05-28 17:59:36'),
(16, 'PDMS-2025-008', '1', NULL, 1, 'Diproses', NULL, '1', '2025-05-28 18:03:20', '2025-05-28 18:03:20'),
(17, 'PDMS-2025-009', '2', NULL, 2, 'Diproses', NULL, '1', '2025-05-28 18:04:46', '2025-05-28 18:04:46'),
(18, 'PDMS-2025-010', '2', NULL, 1000, 'Diproses', NULL, '1', '2025-06-01 04:55:46', '2025-06-01 04:55:46'),
(19, 'PDMS-2025-011', 'perbaikan kapal', NULL, 1000, 'Diproses', NULL, '1', '2025-06-02 07:19:22', '2025-06-02 07:19:22'),
(20, 'PDMS-2025-012', 'print', NULL, 2000000, 'Diproses', NULL, '1', '2025-06-08 14:12:21', '2025-06-08 14:12:21'),
(21, 'PDMS-2025-013', '2', NULL, 2, 'Diproses', NULL, '1', '2025-06-08 14:14:11', '2025-06-08 14:14:12'),
(22, 'PDMS-2025-014', '1', NULL, 1, 'Diproses', NULL, '1', '2025-06-08 14:23:46', '2025-06-08 14:23:46'),
(23, 'PDMS-2025-015', '2', NULL, 1, 'Diproses', NULL, '1', '2025-06-08 14:24:18', '2025-06-08 14:24:18'),
(24, 'PDMS-2025-016', 'perbaikan kapal', NULL, 1000, 'Diproses', NULL, '1', '2025-06-08 14:32:09', '2025-06-08 14:32:09'),
(25, 'PDMS-2025-017', 'perbaikan kapal', NULL, 1000, 'Diproses', NULL, '1', '2025-06-08 14:36:27', '2025-06-08 14:36:27'),
(26, 'PDMS-2025-018', '1', NULL, 1, 'Diproses', NULL, '1', '2025-06-08 14:37:28', '2025-06-08 14:37:28'),
(27, 'PDMS-2025-019', 'perbaikan kapal', NULL, 10000, 'Diproses', NULL, '1', '2025-06-08 14:39:45', '2025-06-08 14:39:45'),
(28, 'PDMS-2025-020', '1', NULL, 1000, 'Diproses', NULL, '1', '2025-06-08 14:40:38', '2025-06-08 14:40:38'),
(29, 'PDMS-2025-021', 'perbaikan kapal', NULL, 2, 'Diproses', NULL, '1', '2025-06-08 14:41:29', '2025-06-08 14:41:29'),
(30, 'PDMS-2025-022', '1', NULL, 1000, 'Diproses', NULL, '1', '2025-06-08 14:43:13', '2025-06-08 14:43:13'),
(31, 'PDMS-2025-023', '1', NULL, 2, 'Diproses', NULL, '1', '2025-06-08 14:45:49', '2025-06-08 14:45:49'),
(32, 'PDMS-2025-024', 'perbaikan kapal', NULL, 1000, 'Diproses', NULL, '1', '2025-06-08 14:52:37', '2025-06-08 14:52:37'),
(33, 'PDMS-2025-025', NULL, NULL, 1000, 'Diproses', NULL, '1', '2025-06-08 14:53:34', '2025-06-08 14:53:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_user_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2025_05_20_233554_create_surat_pengadaans_table', 2),
(15, '2025_05_20_233651_create_detail_surat_pengadaans_table', 2),
(16, '2025_05_21_010828_create_anggaran_stafs_table', 3),
(17, '2025_05_21_022446_create_surat_pengambilans_table', 4),
(18, '2025_05_21_022600_create_detail_surat_pengambilans_table', 4),
(19, '2025_05_21_023552_create_barang_tersedias_table', 5),
(20, '2025_05_21_045005_create_email_pengadaan_mendesaks_table', 6),
(21, '2025_05_21_045101_create_detail_email_pengadaan_mendesaks_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_pengadaan`
--

CREATE TABLE `surat_pengadaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tujuan` varchar(400) NOT NULL,
  `link_surat` varchar(200) DEFAULT NULL,
  `total_harga` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `lampiran` varchar(100) DEFAULT NULL,
  `ID_Staf` varchar(50) NOT NULL,
  `ID_pengadaan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat_pengadaan`
--

INSERT INTO `surat_pengadaan` (`id`, `no_surat`, `tujuan`, `link_surat`, `total_harga`, `status`, `lampiran`, `ID_Staf`, `ID_pengadaan`, `created_at`, `updated_at`) VALUES
(26, '001/LIB-Ajukan/VI/2025', 'keselamatan kerja', 'http://127.0.0.1:8000/cetak_pengadaan/PD-2025-001', 400000, 'Disetujui', '[\"1748756253_Baju Coverall Safety.jpg\",\"1748756253_pelampung.jpg\"]', '1', 'PD-2025-001', '2025-06-01 05:37:33', '2025-06-01 05:39:29'),
(27, '002/LIB-Ajukan/VI/2025', 'penyelamatan', 'http://127.0.0.1:8000/cetak_pengadaan/PD-2025-002', 500000, 'Disetujui', NULL, '1', 'PD-2025-002', '2025-06-01 05:39:05', '2025-06-02 07:20:33'),
(28, '003/LIB-Ajukan/VI/2025', 'perbaikan kapal', 'http://127.0.0.1:8000/cetak_pengadaan/PD-2025-003', 1000, 'Diproses', NULL, '1', 'PD-2025-003', '2025-06-08 15:05:09', '2025-06-08 15:05:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_pengambilan`
--

CREATE TABLE `surat_pengambilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_surat` varchar(100) NOT NULL,
  `tujuan` varchar(400) NOT NULL,
  `link_surat` varchar(200) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `ID_Staf` varchar(50) NOT NULL,
  `ID_pengambilan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `surat_pengambilan`
--

INSERT INTO `surat_pengambilan` (`id`, `no_surat`, `tujuan`, `link_surat`, `status`, `ID_Staf`, `ID_pengambilan`, `created_at`, `updated_at`) VALUES
(1, '001/LIB-Ambil/V/2025', 'tujuan', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-001', 'Diproses', '1', 'PG-2025-001', '2025-05-20 19:50:56', '2025-05-20 19:50:56'),
(2, '002/LIB-Ambil/V/2025', 'perbaikan kapal', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-002', 'Diproses', '1', 'PG-2025-002', '2025-05-20 20:25:32', '2025-05-20 20:25:32'),
(3, '003/LIB-Ambil/V/2025', 'perbaikan kapal', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-003', 'Diproses', '1', 'PG-2025-003', '2025-05-20 20:26:14', '2025-05-20 20:26:14'),
(4, '004/LIB-Ambil/V/2025', 'perbaikan kapal', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-004', 'Diproses', '1', 'PG-2025-004', '2025-05-20 20:38:37', '2025-05-20 20:38:37'),
(5, '005/LIB-Ambil/V/2025', 'tujuan', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-005', 'Diproses', '1', 'PG-2025-005', '2025-05-22 07:09:55', '2025-05-22 07:09:55'),
(6, '006/LIB-Ambil/V/2025', '1', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-006', 'Diproses', '1', 'PG-2025-006', '2025-05-29 09:22:05', '2025-05-29 09:22:05'),
(7, '007/LIB-Ambil/VI/2025', 'perbaikan kapal', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-007', 'Diproses', '1', 'PG-2025-007', '2025-06-01 04:53:41', '2025-06-01 04:53:41'),
(8, '008/LIB-Ambil/VI/2025', 'perbaikan kapal', 'http://127.0.0.1:8000/cetak_pengambilan/PG-2025-008', 'Diproses', '1', 'PG-2025-008', '2025-06-08 15:05:32', '2025-06-08 15:05:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('staf','staf_gudang','manager') NOT NULL DEFAULT 'staf',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Staf Operasional', 'contohstaff12345@gmail.com', '$2y$10$YTNr2MWAXcuzu3AifG055eptYaP5yK7KVvUCq9/1NTMQMEJsoa.fm', 'staf', NULL, NULL, '2025-05-20 14:47:57', '2025-06-04 06:10:59'),
(2, 'Staf IT', 'staff12345@gmail.com', '$2y$10$LJRktdFNqBSXOPVvZYYmVOHJkjkXCZCmVBA4jQahpmJW.WvKp3Opm', 'staf', NULL, NULL, '2025-05-20 14:47:57', '2025-06-04 06:10:59'),
(3, 'Admin SCM', 'admin@gmail.com', '$2y$10$o9hJgaCiboSWjOC0ydrcTucwAynufylu09o7ecrJJcBaohIxOAkgq', 'staf_gudang', NULL, NULL, '2025-06-04 06:10:59', '2025-06-04 06:10:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggaran_staf`
--
ALTER TABLE `anggaran_staf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang_tersedia`
--
ALTER TABLE `barang_tersedia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang_tersedia_id_barang_unique` (`ID_barang`);

--
-- Indeks untuk tabel `detail_email_pengadaan_mendesak`
--
ALTER TABLE `detail_email_pengadaan_mendesak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_surat_pengadaan`
--
ALTER TABLE `detail_surat_pengadaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_surat_pengambilan`
--
ALTER TABLE `detail_surat_pengambilan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `email_pengadaan_mendesak`
--
ALTER TABLE `email_pengadaan_mendesak`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_pengadaan_mendesak_id_pengadaan_mendesak_unique` (`ID_pengadaan_mendesak`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `surat_pengadaan`
--
ALTER TABLE `surat_pengadaan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `surat_pengadaan_no_surat_unique` (`no_surat`);

--
-- Indeks untuk tabel `surat_pengambilan`
--
ALTER TABLE `surat_pengambilan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `surat_pengambilan_no_surat_unique` (`no_surat`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggaran_staf`
--
ALTER TABLE `anggaran_staf`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `barang_tersedia`
--
ALTER TABLE `barang_tersedia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `detail_email_pengadaan_mendesak`
--
ALTER TABLE `detail_email_pengadaan_mendesak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `detail_surat_pengadaan`
--
ALTER TABLE `detail_surat_pengadaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `detail_surat_pengambilan`
--
ALTER TABLE `detail_surat_pengambilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `email_pengadaan_mendesak`
--
ALTER TABLE `email_pengadaan_mendesak`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_pengadaan`
--
ALTER TABLE `surat_pengadaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `surat_pengambilan`
--
ALTER TABLE `surat_pengambilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
