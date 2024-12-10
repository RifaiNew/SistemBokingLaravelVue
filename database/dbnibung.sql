-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Nov 2024 pada 07.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbnibung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `boking`
--

CREATE TABLE `boking` (
  `idBoking` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `idWarung` int(10) UNSIGNED NOT NULL,
  `jumlahOrang` varchar(255) NOT NULL,
  `tanggalPemesanan` date NOT NULL,
  `waktuPemesanan` time NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `instruksi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `boking`
--

INSERT INTO `boking` (`idBoking`, `idUser`, `idWarung`, `jumlahOrang`, `tanggalPemesanan`, `waktuPemesanan`, `harga`, `status`, `instruksi`, `created_at`, `updated_at`) VALUES
(6, 9, 5, '2', '2024-11-07', '08:19:00', 50000, 'pending', 'dadadadad', '2024-11-05 12:19:32', '2024-11-05 12:19:32'),
(7, 5, 5, '3', '2024-11-15', '04:25:00', 75000, 'pending', 'sdfsf', '2024-11-05 12:23:09', '2024-11-05 12:23:09'),
(8, 8, 7, '2', '2024-11-12', '07:36:00', 42222, 'pending', 'ada', '2024-11-09 12:36:07', '2024-11-09 12:36:07'),
(9, 8, 5, '2', '2024-10-31', '04:38:00', 511000044, 'pending', 'fff', '2024-11-09 12:36:29', '2024-11-09 12:36:29');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_28_083440_create_warung_table', 2),
(6, '2024_10_28_083511_create_produk_table', 3),
(7, '2024_10_28_083545_create_boking_table', 4),
(8, '2024_10_28_083613_create_reservasi_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
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

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'auth_token', '67e71951737a8065cfc4c8afa3204e1b2ddf0595bb4f2db090c4b2efb753ebfe', '[\"*\"]', NULL, NULL, '2024-10-28 08:20:55', '2024-10-28 08:20:55'),
(2, 'App\\Models\\User', 4, 'auth_token', '8a55b6830e7a32702335f04bf44948d397358a30e78f903de95024e8f66d88c9', '[\"*\"]', NULL, NULL, '2024-10-28 08:24:07', '2024-10-28 08:24:07'),
(3, 'App\\Models\\User', 4, 'auth_token', '7333a20472a386478ead7eafacb1aa965c9b60e70630e808783877633c27f506', '[\"*\"]', NULL, NULL, '2024-10-28 08:27:28', '2024-10-28 08:27:28'),
(4, 'App\\Models\\User', 5, 'auth_token', '0f3ed70460c1559bbdf22e05bff8949219a7623673596fee1f333512c3a609ba', '[\"*\"]', NULL, NULL, '2024-10-28 08:34:41', '2024-10-28 08:34:41'),
(5, 'App\\Models\\User', 5, 'auth_token', '4f20292e3b8b4c2e0644de6887db4c468b69494cbd995d9b6953145a78df2a20', '[\"*\"]', NULL, NULL, '2024-10-28 08:42:06', '2024-10-28 08:42:06'),
(6, 'App\\Models\\User', 5, 'auth_token', 'f73fbaebe4378502109b51cf2df56e8320a8a368d1d1366b0b984c87e338cfd7', '[\"*\"]', NULL, NULL, '2024-10-28 08:45:12', '2024-10-28 08:45:12'),
(7, 'App\\Models\\User', 5, 'auth_token', '6493d52325c6cc201091a1bcaea355a6aa06b8715cc33a91d99293e9c7156899', '[\"*\"]', NULL, NULL, '2024-10-28 08:48:10', '2024-10-28 08:48:10'),
(8, 'App\\Models\\User', 5, 'auth_token', '797b4e36179386cb1284b70ea7e9492a139c0d495e813ddc764d99f21a7a7fe9', '[\"*\"]', NULL, NULL, '2024-10-28 08:54:28', '2024-10-28 08:54:28'),
(9, 'App\\Models\\User', 5, 'auth_token', '4a7f5f52c7bf1ef0bf367066ae9d9b613bb1b2500e848a2f402c57f6c1de9aa7', '[\"*\"]', NULL, NULL, '2024-10-28 08:54:36', '2024-10-28 08:54:36'),
(10, 'App\\Models\\User', 5, 'auth_token', '4ee25148253c76d5a1f2e76d03a6c178afc72ac2b0798f4efc5c94ce18cf8200', '[\"*\"]', NULL, NULL, '2024-10-28 08:54:45', '2024-10-28 08:54:45'),
(11, 'App\\Models\\User', 5, 'auth_token', '1a6aa2142f4a4667220246c34a2c8bb514e5e692211e7b2586ca6f76dce73e3a', '[\"*\"]', NULL, NULL, '2024-10-28 08:55:07', '2024-10-28 08:55:07'),
(12, 'App\\Models\\User', 5, 'auth_token', 'a9b03241a83c82c34e474c278b398a3c7c88520c93ad575a86099c00d19e0040', '[\"*\"]', NULL, NULL, '2024-10-28 08:55:27', '2024-10-28 08:55:27'),
(13, 'App\\Models\\User', 5, 'auth_token', 'a47214cc299517c3a1e24a833c8e472be548132c162f9acfd2bf3aa92b5a85ab', '[\"*\"]', NULL, NULL, '2024-10-28 09:00:18', '2024-10-28 09:00:18'),
(14, 'App\\Models\\User', 5, 'auth_token', '0d2b02341587b9c533af0625b75a92aea5133013c087adb26ff4a9452a6ecf0c', '[\"*\"]', NULL, NULL, '2024-10-28 09:15:09', '2024-10-28 09:15:09'),
(15, 'App\\Models\\User', 5, 'auth_token', 'a931a21fca0d8a541b95e5309a506eb04a96ad36024c1cbb78d8cda39aa26626', '[\"*\"]', NULL, NULL, '2024-10-28 09:18:24', '2024-10-28 09:18:24'),
(16, 'App\\Models\\User', 5, 'auth_token', '0f63400512c8d26fe208a29300c1fc2ca87acdee295f151210a8f16d2e1d180d', '[\"*\"]', NULL, NULL, '2024-10-28 09:18:25', '2024-10-28 09:18:25'),
(17, 'App\\Models\\User', 5, 'auth_token', '1b93658d95f398158d2fa0c654ff4cb70b1b8dea52c73dc03be23a8e0a4f3095', '[\"*\"]', NULL, NULL, '2024-10-28 09:25:33', '2024-10-28 09:25:33'),
(18, 'App\\Models\\User', 5, 'auth_token', 'a627bf238ee7d1a19606fec26ad65a8b4ca9aed629afa0ee9884835b02fb9702', '[\"*\"]', NULL, NULL, '2024-10-28 09:25:34', '2024-10-28 09:25:34'),
(19, 'App\\Models\\User', 5, 'auth_token', '544edb05c63abaf6b7d55c095077b0c435aeaa0cecf4a3b82f8881121a89e9a1', '[\"*\"]', NULL, NULL, '2024-10-28 09:26:59', '2024-10-28 09:26:59'),
(20, 'App\\Models\\User', 5, 'auth_token', 'ea6315b4aa8c9001b0dce6f9a1bf3fbb6fd4ea88a4cfd197d336d5a2664911a9', '[\"*\"]', NULL, NULL, '2024-10-28 09:27:00', '2024-10-28 09:27:00'),
(21, 'App\\Models\\User', 5, 'auth_token', '3dc8df90a44981a92780d86a8302201f8c3bd5a67cb8fcd3d45b07bd1a6dcace', '[\"*\"]', NULL, NULL, '2024-10-28 09:28:33', '2024-10-28 09:28:33'),
(22, 'App\\Models\\User', 5, 'auth_token', '6308d9c18da2ff81191e7163298010517dd1e2d2c32e463575468b91bc513cc5', '[\"*\"]', NULL, NULL, '2024-10-28 09:28:34', '2024-10-28 09:28:34'),
(23, 'App\\Models\\User', 5, 'auth_token', 'd9a15d7a810b47486886dfea74bafdd642cdb30ab7a90dec46df0f55efffa652', '[\"*\"]', NULL, NULL, '2024-10-28 09:29:14', '2024-10-28 09:29:14'),
(24, 'App\\Models\\User', 5, 'auth_token', 'e45dac1631508a0e1afe56c1ec577fbab8bc41b9a80698d3ac47eafa427bd1c3', '[\"*\"]', NULL, NULL, '2024-10-28 09:29:14', '2024-10-28 09:29:14'),
(25, 'App\\Models\\User', 5, 'auth_token', 'ac97d7cb5249d1c1213cbd77f804d321ee9859896cc4f32a1d24972d11e9950a', '[\"*\"]', NULL, NULL, '2024-10-28 09:33:24', '2024-10-28 09:33:24'),
(26, 'App\\Models\\User', 5, 'auth_token', '65e27b973daaa8e14c9ef85ca504bc65bc0e85c9fa1f0a5cd9862350b5a15456', '[\"*\"]', '2024-10-28 21:27:10', NULL, '2024-10-28 09:33:25', '2024-10-28 21:27:10'),
(27, 'App\\Models\\User', 5, 'auth_token', '27893be649ec70539db3440471157d189cfba87e43281f3ad31b45877f7aff22', '[\"*\"]', NULL, NULL, '2024-10-28 21:30:04', '2024-10-28 21:30:04'),
(28, 'App\\Models\\User', 5, 'auth_token', 'f2130912e31ea375402fa45f90e2c479442909ee594c8036e4d271c4f89b2cc3', '[\"*\"]', NULL, NULL, '2024-10-28 21:30:04', '2024-10-28 21:30:04'),
(29, 'App\\Models\\User', 5, 'auth_token', '243aa174ac341d30835a8e742b9b0c08256b62b419b8114cf28e74b76ef0d0cf', '[\"*\"]', NULL, NULL, '2024-10-28 21:30:05', '2024-10-28 21:30:05'),
(30, 'App\\Models\\User', 5, 'auth_token', 'c0ac7aa5d8ad041b59e30f8f70c4c02203d84cf7db690497c079088ef9e014ee', '[\"*\"]', '2024-10-28 21:30:47', NULL, '2024-10-28 21:30:06', '2024-10-28 21:30:47'),
(31, 'App\\Models\\User', 5, 'auth_token', '7a895b0369a5479719b88378e42f18a3fb112aa1103b6797c4eb6efd49957fd1', '[\"*\"]', NULL, NULL, '2024-10-28 21:32:11', '2024-10-28 21:32:11'),
(32, 'App\\Models\\User', 5, 'auth_token', '62fdf52ba3c6d85363d081e69b4fa4651a3167cc9cbf3e87a801f2ede8bf3b69', '[\"*\"]', '2024-10-28 21:32:49', NULL, '2024-10-28 21:32:11', '2024-10-28 21:32:49'),
(33, 'App\\Models\\User', 5, 'auth_token', '4ea167573b74efa2f27f0b0800567bf78797a9f7f30eacf588fee025c36fa210', '[\"*\"]', NULL, NULL, '2024-10-28 21:41:00', '2024-10-28 21:41:00'),
(34, 'App\\Models\\User', 5, 'auth_token', '4861c912ef042cb67967e9c0ece10d4ed6962d408fb1d8021d4145e6e752ebcf', '[\"*\"]', '2024-10-28 21:42:03', NULL, '2024-10-28 21:41:01', '2024-10-28 21:42:03'),
(35, 'App\\Models\\User', 5, 'auth_token', '8c8da736e1472ae97244502199289c6e19756bfc587828d4941a64da66b5bae9', '[\"*\"]', NULL, NULL, '2024-10-28 21:51:46', '2024-10-28 21:51:46'),
(36, 'App\\Models\\User', 5, 'auth_token', '06a827db3a9633b7619760cd74ec2ec79b5ccba36721c7916f8bfb4c174b3607', '[\"*\"]', '2024-10-28 21:52:08', NULL, '2024-10-28 21:51:47', '2024-10-28 21:52:08'),
(37, 'App\\Models\\User', 5, 'auth_token', '63f22845ab88b75b029ce4256e887443e101a6e70ff73d0e596805535c43a0f8', '[\"*\"]', NULL, NULL, '2024-10-28 22:18:45', '2024-10-28 22:18:45'),
(38, 'App\\Models\\User', 5, 'auth_token', '640d88e97f3ae94e3a63dedd42335cd8699cd7ae38f8864a40e3bd9aa0382181', '[\"*\"]', '2024-10-28 22:19:21', NULL, '2024-10-28 22:18:46', '2024-10-28 22:19:21'),
(39, 'App\\Models\\User', 5, 'auth_token', 'ce8ec91f1bb2d18d347dbdaf053f28210334ab4136ac9f5ce85b6d589c4ef6a7', '[\"*\"]', NULL, NULL, '2024-10-28 22:23:00', '2024-10-28 22:23:00'),
(40, 'App\\Models\\User', 5, 'auth_token', '58eadd853a3728b6cb64a9d2a4fb706b831c6abae6952e7faa3ff37e14bb6935', '[\"*\"]', '2024-10-28 22:23:26', NULL, '2024-10-28 22:23:01', '2024-10-28 22:23:26'),
(41, 'App\\Models\\User', 5, 'auth_token', '7d24e9b0d13251cda53a8e686c96a208591a1807318f6278cadca9c06475a277', '[\"*\"]', NULL, NULL, '2024-10-28 22:26:03', '2024-10-28 22:26:03'),
(42, 'App\\Models\\User', 5, 'auth_token', 'ac9aba6a041d6618ba1b5bae417341d39e159f03c5dd2772164a0584f0a02eea', '[\"*\"]', '2024-10-28 22:26:29', NULL, '2024-10-28 22:26:03', '2024-10-28 22:26:29'),
(43, 'App\\Models\\User', 5, 'auth_token', 'ebb7307db49ed41b2c72a9e9e2defb3b21287968189cf827ecd3c795d1ffb1eb', '[\"*\"]', NULL, NULL, '2024-10-28 22:27:52', '2024-10-28 22:27:52'),
(44, 'App\\Models\\User', 5, 'auth_token', '0248705a30a96c3a4cd62ad15af1173b9e6266a5c480a10128cc217a38df83ca', '[\"*\"]', '2024-10-28 22:30:18', NULL, '2024-10-28 22:27:53', '2024-10-28 22:30:18'),
(45, 'App\\Models\\User', 5, 'auth_token', 'd0be11694c4009886320cbf903501d0c88bc7eeebd7547162d87b8264925ba2a', '[\"*\"]', NULL, NULL, '2024-10-28 22:34:02', '2024-10-28 22:34:02'),
(46, 'App\\Models\\User', 5, 'auth_token', 'affd51fa1adc41d52c1a18d39e3933c9eb6c224e5c65d8258d8d520d789a2044', '[\"*\"]', '2024-10-28 22:34:24', NULL, '2024-10-28 22:34:03', '2024-10-28 22:34:24'),
(47, 'App\\Models\\User', 5, 'auth_token', '52975143906f71d1be279d5beb5979b94635b83554c8247275233a27eb57bf94', '[\"*\"]', NULL, NULL, '2024-10-28 22:35:00', '2024-10-28 22:35:00'),
(48, 'App\\Models\\User', 5, 'auth_token', 'b6c8f942100a497a3205392166308d0a1c6f6124be3ca1a100146152a04bc843', '[\"*\"]', '2024-10-28 22:38:03', NULL, '2024-10-28 22:35:01', '2024-10-28 22:38:03'),
(49, 'App\\Models\\User', 5, 'auth_token', '258917d6bcbd580fbae2aa8710cfe79c1ab1c1580d82525a8de5dad05c7ba389', '[\"*\"]', NULL, NULL, '2024-10-28 22:38:19', '2024-10-28 22:38:19'),
(50, 'App\\Models\\User', 5, 'auth_token', 'ab3fb6ff91515dcca30c3b549de1869422c84c6068cca36b5baeea2f451f380e', '[\"*\"]', '2024-10-28 22:38:41', NULL, '2024-10-28 22:38:20', '2024-10-28 22:38:41'),
(51, 'App\\Models\\User', 5, 'auth_token', '15d9b91a9df92138b27ecdca2ec93c992dedc6f0360571a2003d85291aa33533', '[\"*\"]', NULL, NULL, '2024-10-28 22:41:20', '2024-10-28 22:41:20'),
(52, 'App\\Models\\User', 5, 'auth_token', '7f857e7a8975008e5b096451db6723668b18230eba4509c8c12ca4baba694b1a', '[\"*\"]', '2024-10-28 22:58:57', NULL, '2024-10-28 22:41:21', '2024-10-28 22:58:57'),
(53, 'App\\Models\\User', 6, 'auth_token', '4e66a4b6a5a6bbf533fcf0871bfde08e3d8f281a8e174c23043a10c62f3bad3d', '[\"*\"]', NULL, NULL, '2024-10-28 23:24:47', '2024-10-28 23:24:47'),
(54, 'App\\Models\\User', 6, 'auth_token', '52e688a3631461ae0d1f0d6d6168842c89a1480df6f31e1e57f8e5b498e4f2ff', '[\"*\"]', '2024-10-28 23:33:27', NULL, '2024-10-28 23:24:48', '2024-10-28 23:33:27'),
(55, 'App\\Models\\User', 6, 'auth_token', '3785f1e653ee2b1e779a9ca149c01de718073ec1e93bb3e56b87a244dd70a885', '[\"*\"]', NULL, NULL, '2024-10-28 23:33:38', '2024-10-28 23:33:38'),
(56, 'App\\Models\\User', 6, 'auth_token', '1949f30db5a9492b6aade21600d3a2ea59c414d960774d4df274578fee0e20bc', '[\"*\"]', '2024-10-28 23:33:41', NULL, '2024-10-28 23:33:39', '2024-10-28 23:33:41'),
(57, 'App\\Models\\User', 5, 'auth_token', 'd290af06f7c746cdaa55b5071632fc3aaf47e3c91b6e1aac76e5956e9eeebb09', '[\"*\"]', NULL, NULL, '2024-10-28 23:34:48', '2024-10-28 23:34:48'),
(58, 'App\\Models\\User', 5, 'auth_token', 'fbcaf7fc4e3b9a7f231f1e1cde7de8f6597e124a78e8152f2051fdedcff6db09', '[\"*\"]', '2024-10-28 23:49:28', NULL, '2024-10-28 23:34:49', '2024-10-28 23:49:28'),
(59, 'App\\Models\\User', 6, 'auth_token', 'a3c8893c6e439d720d47f10cf338c436efd3ff98256a7915fa2e646143c75e8c', '[\"*\"]', NULL, NULL, '2024-10-28 23:56:35', '2024-10-28 23:56:35'),
(60, 'App\\Models\\User', 6, 'auth_token', '3daf1ee09c3d21c5889a924fab3bc4e563087a5ba6825b8cdc262348385e7546', '[\"*\"]', '2024-10-28 23:56:38', NULL, '2024-10-28 23:56:36', '2024-10-28 23:56:38'),
(61, 'App\\Models\\User', 5, 'auth_token', 'd063b88f789bc3ab62eaadefcbe5a1d577e31c79cd2a5202521a738162a256ed', '[\"*\"]', NULL, NULL, '2024-10-29 00:20:05', '2024-10-29 00:20:05'),
(62, 'App\\Models\\User', 5, 'auth_token', '8bc394fc00ebdf3b2da0749c87387737ce520bdfb395a29275336e2c42dc9c40', '[\"*\"]', '2024-10-29 00:20:08', NULL, '2024-10-29 00:20:06', '2024-10-29 00:20:08'),
(63, 'App\\Models\\User', 6, 'auth_token', 'b89d6ab09322653c12417fcfbbd95ebb5491c506e1bbeaf9521380a0c4ce55de', '[\"*\"]', NULL, NULL, '2024-10-29 00:20:52', '2024-10-29 00:20:52'),
(64, 'App\\Models\\User', 6, 'auth_token', '7b1736f7ea5b51a9700a9a56d835cc83f78c43b9d0d50e4d0e1db095a4a5e548', '[\"*\"]', NULL, NULL, '2024-10-29 00:20:52', '2024-10-29 00:20:52'),
(65, 'App\\Models\\User', 5, 'auth_token', '8b8d2e99e21549b1ac0492bc8c1861757fc881f47c5e1de601c138f6f7ba2167', '[\"*\"]', NULL, NULL, '2024-10-29 00:21:21', '2024-10-29 00:21:21'),
(66, 'App\\Models\\User', 5, 'auth_token', '954dc43a5e0b681789f2cfde4d1300f7cfb704d60fae9189d9a045bbde47b32d', '[\"*\"]', '2024-10-29 00:22:04', NULL, '2024-10-29 00:21:21', '2024-10-29 00:22:04'),
(67, 'App\\Models\\User', 5, 'auth_token', '7dbe91f735add599f3b138a56bb9500cf7a5f1ebe020a4a8b551ee4367e3bc5b', '[\"*\"]', NULL, NULL, '2024-10-29 00:24:38', '2024-10-29 00:24:38'),
(68, 'App\\Models\\User', 5, 'auth_token', '1c6b74352f1273072798c815d7661d1fb2cd4bb4a99aeee7ca119ba6092c507c', '[\"*\"]', '2024-10-29 00:24:40', NULL, '2024-10-29 00:24:39', '2024-10-29 00:24:40'),
(69, 'App\\Models\\User', 6, 'auth_token', '26712859febad91be1ce262477f8fedfbdacc2414a8c40d9cca99dbb90db55e7', '[\"*\"]', NULL, NULL, '2024-10-29 00:29:51', '2024-10-29 00:29:51'),
(70, 'App\\Models\\User', 6, 'auth_token', '56f0eae334a7c7ae475f0edaa339015056c54f53e99d5f2582277c2d9120bf29', '[\"*\"]', '2024-10-29 00:29:54', NULL, '2024-10-29 00:29:52', '2024-10-29 00:29:54'),
(71, 'App\\Models\\User', 6, 'auth_token', 'deac4d9bd362a7d0e9a0820aa76a47639554ae6afd6987a256403838b22ff743', '[\"*\"]', NULL, NULL, '2024-10-29 00:30:20', '2024-10-29 00:30:20'),
(72, 'App\\Models\\User', 6, 'auth_token', '99fd263eb8e6b41f57585d2a5b2fb007a07f8209ae06a8a92b56414d9d0086bf', '[\"*\"]', '2024-10-29 00:36:04', NULL, '2024-10-29 00:30:20', '2024-10-29 00:36:04'),
(73, 'App\\Models\\User', 5, 'auth_token', '641ec33c672c340c223ccd12ea4409d1533fda4ac0c1859f364f0f1744e8fddf', '[\"*\"]', NULL, NULL, '2024-10-29 00:36:14', '2024-10-29 00:36:14'),
(74, 'App\\Models\\User', 5, 'auth_token', '3c1a74e9c4b861065996bb90cc4c46cb5246e3e94d3add5b111cd23565e9826b', '[\"*\"]', '2024-10-29 00:36:16', NULL, '2024-10-29 00:36:14', '2024-10-29 00:36:16'),
(75, 'App\\Models\\User', 6, 'auth_token', 'e8995ac04396da560ba701d93f660d412ea5af665a9a5d0ad55e4fe0be21d52f', '[\"*\"]', NULL, NULL, '2024-10-29 00:36:33', '2024-10-29 00:36:33'),
(76, 'App\\Models\\User', 6, 'auth_token', 'c9d36284631ddd2ad0f56c9917818eb515f3840279cb29f6424ad56a22ecbca5', '[\"*\"]', '2024-10-29 00:36:35', NULL, '2024-10-29 00:36:33', '2024-10-29 00:36:35'),
(77, 'App\\Models\\User', 5, 'auth_token', 'c0cf11688571af24fd432023adc23ecb7f69b69c1f4a14f5dab7c4f45db74696', '[\"*\"]', NULL, NULL, '2024-10-29 00:51:51', '2024-10-29 00:51:51'),
(78, 'App\\Models\\User', 5, 'auth_token', 'bd398145b0db3cd51805e524c6c5494a8caa17cb8d1f46f5fd1449731e32e6d4', '[\"*\"]', '2024-10-29 00:51:55', NULL, '2024-10-29 00:51:51', '2024-10-29 00:51:55'),
(79, 'App\\Models\\User', 5, 'auth_token', '7f60d3506109eaa4c259f6e31471534a1a050d5d77195bddbaec40e02e09b33b', '[\"*\"]', NULL, NULL, '2024-10-29 00:56:32', '2024-10-29 00:56:32'),
(80, 'App\\Models\\User', 5, 'auth_token', '8e02a9b1652f8b3e31a181095a700cf2af9a05bf61246e6af5f596524dcd5877', '[\"*\"]', '2024-10-29 00:56:35', NULL, '2024-10-29 00:56:32', '2024-10-29 00:56:35'),
(81, 'App\\Models\\User', 5, 'auth_token', '77beceb855762ab2924cecee4f7de61ad116a9d451cd3ae9b7e2447e048da013', '[\"*\"]', NULL, NULL, '2024-10-29 00:58:21', '2024-10-29 00:58:21'),
(82, 'App\\Models\\User', 5, 'auth_token', 'f03bb551f2e43fee0a4fdaa2c1c3eb5a5ef32a0e1c0257549de11525fcf2d113', '[\"*\"]', '2024-10-29 01:00:17', NULL, '2024-10-29 00:58:22', '2024-10-29 01:00:17'),
(83, 'App\\Models\\User', 5, 'auth_token', 'c1c6faf7814f377f79dfb3938c52b7b710dc55984350a2ddd536560423afcec3', '[\"*\"]', NULL, NULL, '2024-10-29 01:00:26', '2024-10-29 01:00:26'),
(84, 'App\\Models\\User', 5, 'auth_token', '33bd79c491a8e56bdca8858b8804cae2ba09daf69023ed0628ee1d0730b07fc2', '[\"*\"]', NULL, NULL, '2024-10-29 01:00:26', '2024-10-29 01:00:26'),
(85, 'App\\Models\\User', 5, 'auth_token', '0d7ea4834cbdcbb12655f516318683d23ffab1e0e77c2964619a34687efc6522', '[\"*\"]', NULL, NULL, '2024-10-29 01:00:27', '2024-10-29 01:00:27'),
(86, 'App\\Models\\User', 5, 'auth_token', '62b96d2bb5551ad9908673bb7d424387e1dda312ee065d74a51dae7e82340f1c', '[\"*\"]', '2024-10-29 01:00:34', NULL, '2024-10-29 01:00:28', '2024-10-29 01:00:34'),
(87, 'App\\Models\\User', 5, 'auth_token', 'dd5b2c532844b8eda3bd1273bc74d486ce4de9a4b42ff87e7f71f682e54384a3', '[\"*\"]', NULL, NULL, '2024-10-29 01:01:59', '2024-10-29 01:01:59'),
(88, 'App\\Models\\User', 5, 'auth_token', '13113822a8156d95d5c34090e4d81123f6b7599f8792f7bce6bc33d1236decad', '[\"*\"]', '2024-10-29 01:02:03', NULL, '2024-10-29 01:02:00', '2024-10-29 01:02:03'),
(89, 'App\\Models\\User', 5, 'auth_token', '6280725b21df2b1927b3ef2c899351cd7acea5564a50729b4e88af093149abf4', '[\"*\"]', NULL, NULL, '2024-10-29 01:04:56', '2024-10-29 01:04:56'),
(90, 'App\\Models\\User', 5, 'auth_token', 'b7edd84cf49db0342f0c6066762349014e84a0466f34410bfada008b661af2f6', '[\"*\"]', NULL, NULL, '2024-10-29 01:04:56', '2024-10-29 01:04:56'),
(91, 'App\\Models\\User', 5, 'auth_token', 'fc5a98c3cb6ecc8d834b06cb5b151443d70f8e70d24132afcc8cd6ef17760420', '[\"*\"]', NULL, NULL, '2024-10-29 01:04:57', '2024-10-29 01:04:57'),
(92, 'App\\Models\\User', 5, 'auth_token', '1a18716f114ebbfd158ae0c9f599726d1b248766b0b94701a48fa1cf71a35f40', '[\"*\"]', '2024-10-29 01:05:00', NULL, '2024-10-29 01:04:58', '2024-10-29 01:05:00'),
(93, 'App\\Models\\User', 6, 'auth_token', '59dac9e337a3243a86601fc5ceca71f2ad688f7338f7d021e2e9a9f6e5918ac9', '[\"*\"]', NULL, NULL, '2024-10-29 01:05:27', '2024-10-29 01:05:27'),
(94, 'App\\Models\\User', 6, 'auth_token', '6947fab7991e72bc95d28917e67643a838a20f22c05d028dcb2d3f23793f99bf', '[\"*\"]', '2024-10-29 01:11:53', NULL, '2024-10-29 01:05:27', '2024-10-29 01:11:53'),
(95, 'App\\Models\\User', 6, 'auth_token', '42e2cea8b9cea707a91e40c0086a9e8fbadf4891361626933ed922e637a4fa87', '[\"*\"]', NULL, NULL, '2024-10-29 01:12:09', '2024-10-29 01:12:09'),
(96, 'App\\Models\\User', 6, 'auth_token', '66a3d11818c13efabe8e51c444459ab2b181dc3edadfbbc4ffe5605790fb3b02', '[\"*\"]', '2024-10-29 01:15:24', NULL, '2024-10-29 01:12:10', '2024-10-29 01:15:24'),
(97, 'App\\Models\\User', 8, 'auth_token', '19d3b30474ca3b170594d176a27b2b576fc7f89536da94c18a0015009948a9f7', '[\"*\"]', NULL, NULL, '2024-10-29 01:42:03', '2024-10-29 01:42:03'),
(98, 'App\\Models\\User', 5, 'auth_token', '45310fcc6346a370a98d069e27f10dbdbab3fdd29a0c895a99bcce1ae7290ab7', '[\"*\"]', NULL, NULL, '2024-10-29 01:42:19', '2024-10-29 01:42:19'),
(99, 'App\\Models\\User', 5, 'auth_token', '45fe7c4ffa886bed46d1f3711af7b8296ba86e33606e38e0a9eb83e421693c72', '[\"*\"]', NULL, NULL, '2024-10-29 01:42:39', '2024-10-29 01:42:39'),
(100, 'App\\Models\\User', 5, 'auth_token', 'bd9ee137a7ccba34d7129b0fc22cfb24ea90ef817f9a9479387d27403d25ef84', '[\"*\"]', NULL, NULL, '2024-10-29 01:46:05', '2024-10-29 01:46:05'),
(101, 'App\\Models\\User', 5, 'auth_token', '10bc0e879ffaf81013d134a521113e5ac52919a39a1256429880dc1267374953', '[\"*\"]', NULL, NULL, '2024-10-29 01:46:36', '2024-10-29 01:46:36'),
(102, 'App\\Models\\User', 5, 'auth_token', '0b049543f49b68653c9494c1b8b0ff3b7ef9181a01cb81c76ff33c014db23b02', '[\"*\"]', NULL, NULL, '2024-10-29 01:47:32', '2024-10-29 01:47:32'),
(103, 'App\\Models\\User', 5, 'auth_token', 'e331b69b0bfc3f9f6e15645cf1b20b643ec2a040712d723094d057dff8fec9f8', '[\"*\"]', NULL, NULL, '2024-10-29 01:47:33', '2024-10-29 01:47:33'),
(104, 'App\\Models\\User', 8, 'auth_token', '2cd3b6ce87dc06e0651feb75af76731a0c4c72101cf672ff35ef7e53088881c2', '[\"*\"]', NULL, NULL, '2024-10-29 01:47:48', '2024-10-29 01:47:48'),
(105, 'App\\Models\\User', 8, 'auth_token', 'a5ec37a0c233fcf725a333d861d6e5ef5f8cb1fc12cf794b12615f3a614e4ed2', '[\"*\"]', NULL, NULL, '2024-10-29 01:47:49', '2024-10-29 01:47:49'),
(106, 'App\\Models\\User', 5, 'auth_token', 'deade2ef4d83c33b6c8d0e6276cc075ff6f72a6c49eae45fb51e9a35bee283f5', '[\"*\"]', NULL, NULL, '2024-10-29 01:51:15', '2024-10-29 01:51:15'),
(107, 'App\\Models\\User', 8, 'auth_token', '1becfb0f605ead2930421b4a3362482056a69855533f7c15fe3f902c9795171f', '[\"*\"]', NULL, NULL, '2024-10-29 01:51:32', '2024-10-29 01:51:32'),
(108, 'App\\Models\\User', 5, 'auth_token', '64e3666fdf535bfb92c7d949c005913da4ec2006046d9407fac9ea195a27c717', '[\"*\"]', NULL, NULL, '2024-10-29 01:57:11', '2024-10-29 01:57:11'),
(109, 'App\\Models\\User', 5, 'auth_token', '730670d78ce7f14be6e24d899d9fa022b5a7f105745545f1969e57f6d64eba79', '[\"*\"]', NULL, NULL, '2024-10-29 01:58:08', '2024-10-29 01:58:08'),
(110, 'App\\Models\\User', 5, 'auth_token', '596927275b69fbb840cbb194fc29725a2fca9b747a95b6377469590d494552d0', '[\"*\"]', NULL, NULL, '2024-10-29 01:58:44', '2024-10-29 01:58:44'),
(111, 'App\\Models\\User', 5, 'auth_token', '5a0c9d387d0e1454072ab148660be0bfa24e700674e0fbef85cebe9f1999627c', '[\"*\"]', NULL, NULL, '2024-10-29 01:58:45', '2024-10-29 01:58:45'),
(112, 'App\\Models\\User', 5, 'auth_token', '6f3cae2ecfb54eb2287eac22959ea0b1968e541e82ef37080c4a606ebffc966d', '[\"*\"]', NULL, NULL, '2024-10-29 02:12:13', '2024-10-29 02:12:13'),
(113, 'App\\Models\\User', 5, 'auth_token', '9d68891f69e73dd6fc0cb4b0437558b68039c42adc79aae48aa57588112d8311', '[\"*\"]', NULL, NULL, '2024-10-29 02:12:14', '2024-10-29 02:12:14'),
(114, 'App\\Models\\User', 8, 'auth_token', 'ab4d044a6e514f0efbd6c995179eb01d889d080398aeef5bd231207f4292b220', '[\"*\"]', NULL, NULL, '2024-10-29 02:12:30', '2024-10-29 02:12:30'),
(115, 'App\\Models\\User', 8, 'auth_token', 'da2eff0fe0f13d7db816e9529c456107826c1b46a239cf5d6cb25ed7898ddfd9', '[\"*\"]', NULL, NULL, '2024-10-29 02:12:31', '2024-10-29 02:12:31'),
(116, 'App\\Models\\User', 5, 'auth_token', 'f6dba275c3fdc0c386e9ac4d4de5326878e35c7b351c091ffa443f337dfc506d', '[\"*\"]', NULL, NULL, '2024-10-29 02:14:38', '2024-10-29 02:14:38'),
(117, 'App\\Models\\User', 5, 'auth_token', 'd1fd9b52e947190a93fa11d517c011a9c02ccdc4e871cbcc63110050bd6911df', '[\"*\"]', '2024-10-29 02:14:41', NULL, '2024-10-29 02:14:39', '2024-10-29 02:14:41'),
(118, 'App\\Models\\User', 8, 'auth_token', '82d93c43fe1c187690998e06edd3a6c7e4e3101ed6ef20b694656ea796f12e09', '[\"*\"]', NULL, NULL, '2024-10-29 02:14:53', '2024-10-29 02:14:53'),
(119, 'App\\Models\\User', 8, 'auth_token', '4141e7dbe8269bf3b642004f43dcd5a98288465b2576d9f88e655ca660e3a8be', '[\"*\"]', NULL, NULL, '2024-10-29 02:14:54', '2024-10-29 02:14:54'),
(120, 'App\\Models\\User', 8, 'auth_token', '5cc120316698c13b14efaca0447b45aacc17d2ba3f1e56aa0b05002289abc48e', '[\"*\"]', NULL, NULL, '2024-10-29 02:16:29', '2024-10-29 02:16:29'),
(121, 'App\\Models\\User', 8, 'auth_token', 'de8c64f15f7dbe56c444e07c09870a3a85f1f3f9f99b4accf57d45d96691757f', '[\"*\"]', NULL, NULL, '2024-10-29 02:16:30', '2024-10-29 02:16:30'),
(122, 'App\\Models\\User', 8, 'auth_token', 'c6e20be267dbf5a9ef5a00c141dbaff7f8591b990eb7281df74bbf56497abc5a', '[\"*\"]', NULL, NULL, '2024-10-29 02:17:54', '2024-10-29 02:17:54'),
(123, 'App\\Models\\User', 8, 'auth_token', '29501f535130622a5ea30753da054849d87d3a22fe03314e959a53a834187254', '[\"*\"]', NULL, NULL, '2024-10-29 02:17:55', '2024-10-29 02:17:55'),
(124, 'App\\Models\\User', 5, 'auth_token', '0a50c9d51ad96d343610b42ecfd0df19963f897cd274d327c6e2e1af3d6aa02e', '[\"*\"]', NULL, NULL, '2024-10-29 02:18:08', '2024-10-29 02:18:08'),
(125, 'App\\Models\\User', 5, 'auth_token', '4058bcfde88c5fc1295842e9fe3266c25286d1a7d1b01bb5ae1bedd8fa3549e9', '[\"*\"]', NULL, NULL, '2024-10-29 02:18:09', '2024-10-29 02:18:09'),
(126, 'App\\Models\\User', 8, 'auth_token', '35907a626f39b49d41ce318279e13406e022f6ad9f88d8b6f14ba112d1b1067f', '[\"*\"]', NULL, NULL, '2024-10-29 02:19:16', '2024-10-29 02:19:16'),
(127, 'App\\Models\\User', 8, 'auth_token', 'b42423316a6ae37d0f5ade3769dd74a2685f69b50b2660ba83e31a4da5ee5b50', '[\"*\"]', NULL, NULL, '2024-10-29 02:19:17', '2024-10-29 02:19:17'),
(128, 'App\\Models\\User', 8, 'auth_token', '2a19bf842abfab7a6e41d6671a0c0b095e4a554fa0a0aedc58186aa341357ded', '[\"*\"]', NULL, NULL, '2024-10-29 02:19:59', '2024-10-29 02:19:59'),
(129, 'App\\Models\\User', 8, 'auth_token', '917b12f8cdc627b405a055d1a6d89feaccf5f4adb784dd21e1141aaa8be72843', '[\"*\"]', NULL, NULL, '2024-10-29 02:20:00', '2024-10-29 02:20:00'),
(130, 'App\\Models\\User', 5, 'auth_token', '37629401c73a9ca54a4579faa53734498c88258ce30301b55b0be11a4945768a', '[\"*\"]', NULL, NULL, '2024-10-29 02:20:50', '2024-10-29 02:20:50'),
(131, 'App\\Models\\User', 5, 'auth_token', 'a8b3b143818b900446ff7240e749a7fcfc87f0ca38f9574ea520ff3860a9e442', '[\"*\"]', NULL, NULL, '2024-10-29 02:20:51', '2024-10-29 02:20:51'),
(132, 'App\\Models\\User', 5, 'auth_token', 'c5409767df9bb9313c95b4af51177915bd005db9cbf87eea70f0262392a731b7', '[\"*\"]', NULL, NULL, '2024-10-29 02:21:40', '2024-10-29 02:21:40'),
(133, 'App\\Models\\User', 5, 'auth_token', '33dccd579e01efbc8238988c72780a65dcfdc938e67e4bcfb73f3bf5513a3f5a', '[\"*\"]', NULL, NULL, '2024-10-29 02:21:41', '2024-10-29 02:21:41'),
(134, 'App\\Models\\User', 8, 'auth_token', '1ed56b45e055d442af93cd533e78e5af8a335e055dfcf1028130b15910bb91e9', '[\"*\"]', NULL, NULL, '2024-10-29 02:23:42', '2024-10-29 02:23:42'),
(135, 'App\\Models\\User', 8, 'auth_token', '5368eedcdede9d983de2d9d40fdad5ce1b22b38239243e0cea21a647961c111e', '[\"*\"]', NULL, NULL, '2024-10-29 02:23:43', '2024-10-29 02:23:43'),
(136, 'App\\Models\\User', 8, 'auth_token', 'df5f5577be7a847d45db934fd0da15081919da92a554b0945828407b60ccdc51', '[\"*\"]', NULL, NULL, '2024-10-29 02:32:18', '2024-10-29 02:32:18'),
(137, 'App\\Models\\User', 8, 'auth_token', '43503dece7efb248373495a9679c53a8504be5ad84d95a42e2174043a967530c', '[\"*\"]', NULL, NULL, '2024-10-29 02:32:18', '2024-10-29 02:32:18'),
(138, 'App\\Models\\User', 8, 'auth_token', '66b2fe1d990a2cf8374b5acff0de782ccdc3e815a9b4e15230d9e6589a20fe20', '[\"*\"]', NULL, NULL, '2024-10-29 02:33:33', '2024-10-29 02:33:33'),
(139, 'App\\Models\\User', 8, 'auth_token', '1a044b95a677b0074fe5ad235a0bccd987e4ee83d4bcbb2b2667af90e6734894', '[\"*\"]', NULL, NULL, '2024-10-29 02:33:34', '2024-10-29 02:33:34'),
(140, 'App\\Models\\User', 8, 'auth_token', 'c1ef6417292681207a9252e67ec01680877b4d14a5dbe0bf3a19d894a82d9b44', '[\"*\"]', NULL, NULL, '2024-10-29 03:05:15', '2024-10-29 03:05:15'),
(141, 'App\\Models\\User', 8, 'auth_token', '5019f312e0bb5ad19946bbc5bc2ceb54ecdff6ad8ca3774bcca2e8a0dc84eb9b', '[\"*\"]', NULL, NULL, '2024-10-29 03:05:15', '2024-10-29 03:05:15'),
(142, 'App\\Models\\User', 8, 'auth_token', 'd79d4a4cd8583ad15e6a78cb654522b0cff4dd96c301fd89d6904e72180c79df', '[\"*\"]', NULL, NULL, '2024-10-29 03:09:16', '2024-10-29 03:09:16'),
(143, 'App\\Models\\User', 8, 'auth_token', 'e6c9ecedeed8eac3d49cc66478821fa3b1d20dc8c391e8fdb53b9d523cdde821', '[\"*\"]', NULL, NULL, '2024-10-29 03:09:16', '2024-10-29 03:09:16'),
(144, 'App\\Models\\User', 8, 'auth_token', 'c0afc383a508af1db14b7ad7ce20d3706a9920b69abb9f14e53799294d89d778', '[\"*\"]', NULL, NULL, '2024-10-29 03:13:19', '2024-10-29 03:13:19'),
(145, 'App\\Models\\User', 8, 'auth_token', '03c17de01ed98371483a20a1e3a2491b00e09b793da6da5132007cc0bc50fcbb', '[\"*\"]', NULL, NULL, '2024-10-29 03:13:20', '2024-10-29 03:13:20'),
(146, 'App\\Models\\User', 8, 'auth_token', 'c8e2e1dbf3367e2a6cf144979b1b2900dced37081b3a57925d6b1f264edcbe9d', '[\"*\"]', NULL, NULL, '2024-10-29 03:13:20', '2024-10-29 03:13:20'),
(147, 'App\\Models\\User', 8, 'auth_token', '733f485110f34fc591bf5fd8b964e6b4a3f42c98c6e882dc36ddf1eb36df79ae', '[\"*\"]', NULL, NULL, '2024-10-29 03:13:20', '2024-10-29 03:13:20'),
(148, 'App\\Models\\User', 8, 'auth_token', 'a8fb7277c2a82ab3346f2deb5873afbcc79c1a7fec1bf97fe4436a49a183a346', '[\"*\"]', NULL, NULL, '2024-10-29 03:15:18', '2024-10-29 03:15:18'),
(149, 'App\\Models\\User', 8, 'auth_token', '7ca91f63584dd4487915a81920d7b1fc19bdabb9651f016b2e5eeaa653edebe3', '[\"*\"]', NULL, NULL, '2024-10-29 03:15:18', '2024-10-29 03:15:18'),
(150, 'App\\Models\\User', 8, 'auth_token', '77e728787ef6025b53bb3a51caffecdced8270e2f581dd7980cff5c12b68f935', '[\"*\"]', NULL, NULL, '2024-10-29 03:23:27', '2024-10-29 03:23:27'),
(151, 'App\\Models\\User', 8, 'auth_token', 'cb6948bba74f774c9ae4e018c068745bc4e28a70fad00d9668ee1d4a7fcd7e17', '[\"*\"]', '2024-10-29 03:23:32', NULL, '2024-10-29 03:23:28', '2024-10-29 03:23:32'),
(152, 'App\\Models\\User', 8, 'auth_token', '525a0fd4c181bc00ff82362e6b48ce34080b90362bb06568264d912dff692eaf', '[\"*\"]', NULL, NULL, '2024-10-29 03:33:28', '2024-10-29 03:33:28'),
(153, 'App\\Models\\User', 8, 'auth_token', '452cc4c1231b5dfd612597c7df31f097ba05cc20498356036d015fec4a59c1f8', '[\"*\"]', NULL, NULL, '2024-10-29 03:33:29', '2024-10-29 03:33:29'),
(154, 'App\\Models\\User', 8, 'auth_token', '57c838a70a166632fcb34ea462ca250b859b0e8f1b1119eb23548ec9c51df10f', '[\"*\"]', NULL, NULL, '2024-10-29 03:35:18', '2024-10-29 03:35:18'),
(155, 'App\\Models\\User', 8, 'auth_token', '053c25bc65644a44e59992a420ee90a8bbc579f2d95d1ff9d375fe64ed94794e', '[\"*\"]', '2024-10-29 03:40:00', NULL, '2024-10-29 03:35:18', '2024-10-29 03:40:00'),
(156, 'App\\Models\\User', 8, 'auth_token', '968a85502c53a752eff62d5c3b6ad97cb390ed68ef230770592cae1206937424', '[\"*\"]', NULL, NULL, '2024-10-29 03:40:15', '2024-10-29 03:40:15'),
(157, 'App\\Models\\User', 8, 'auth_token', '73866c8e39ed151f6f54713156ff8dda78b771c0ac6ef988e3dc6ed71a6e42e2', '[\"*\"]', '2024-10-29 03:40:34', NULL, '2024-10-29 03:40:15', '2024-10-29 03:40:34'),
(158, 'App\\Models\\User', 8, 'auth_token', '983c261a0449c21cd687bc69a7c3f51de61005651c6aa8c3c146245fa59a55bd', '[\"*\"]', NULL, NULL, '2024-10-29 03:45:02', '2024-10-29 03:45:02'),
(159, 'App\\Models\\User', 8, 'auth_token', '8846c98047522bafb57fb4ce4c0c09bf888cef4698ec2118f7e277f9265ef690', '[\"*\"]', '2024-10-29 03:45:23', NULL, '2024-10-29 03:45:02', '2024-10-29 03:45:23'),
(160, 'App\\Models\\User', 8, 'auth_token', '5d36cf9d6549326d2ca8ff5e07f1776aa07e100e1770fda5180f8e5ad06662f4', '[\"*\"]', NULL, NULL, '2024-10-29 03:52:10', '2024-10-29 03:52:10'),
(161, 'App\\Models\\User', 8, 'auth_token', '1b06cc44f41a9ce855ace06121a880e92db376a9e6e599b56cb6f8da05ceaa0d', '[\"*\"]', '2024-10-29 03:52:31', NULL, '2024-10-29 03:52:10', '2024-10-29 03:52:31'),
(162, 'App\\Models\\User', 8, 'auth_token', '5c5ef50338e5d3d1ae2771c51313fb2c8bcae7cb807948060860465475d7f023', '[\"*\"]', NULL, NULL, '2024-10-29 03:55:29', '2024-10-29 03:55:29'),
(163, 'App\\Models\\User', 8, 'auth_token', '1983295381e7b5490e6312cc14eb765e5344c87d185bbc229fddb4381641c81f', '[\"*\"]', '2024-10-29 03:55:44', NULL, '2024-10-29 03:55:29', '2024-10-29 03:55:44'),
(164, 'App\\Models\\User', 8, 'auth_token', 'e85d01cca50f9608367ee1f747a4d9624a1a72de81cf4caa6ffed5f410d2a183', '[\"*\"]', NULL, NULL, '2024-10-29 03:58:12', '2024-10-29 03:58:12'),
(165, 'App\\Models\\User', 8, 'auth_token', '10636ffebc3e22fb052629a956d35406e49184635d6e1848882bab79c3faf9d9', '[\"*\"]', '2024-10-29 03:58:31', NULL, '2024-10-29 03:58:12', '2024-10-29 03:58:31'),
(166, 'App\\Models\\User', 8, 'auth_token', 'b7f0f9c76aabbd768afe97034b746e6606217c97a4457c87ba019b3d676d1a33', '[\"*\"]', NULL, NULL, '2024-10-29 04:00:43', '2024-10-29 04:00:43'),
(167, 'App\\Models\\User', 8, 'auth_token', '622273bd44a616d61bdae3cf753666bb860f872c2174a412a7756b3b52e097f9', '[\"*\"]', '2024-10-29 04:01:48', NULL, '2024-10-29 04:00:44', '2024-10-29 04:01:48'),
(168, 'App\\Models\\User', 8, 'auth_token', '2af04bf7b8bdd82aad0f19093cc9044c565ff711a0b938133e612b0e79814d71', '[\"*\"]', NULL, NULL, '2024-10-29 04:12:48', '2024-10-29 04:12:48'),
(169, 'App\\Models\\User', 8, 'auth_token', 'c94dc72a500118a7a322ffd0bac2f198602068677bf8548c2c92505f6ca2ed38', '[\"*\"]', '2024-10-29 04:16:18', NULL, '2024-10-29 04:12:48', '2024-10-29 04:16:18'),
(170, 'App\\Models\\User', 8, 'auth_token', 'af546fed57eb1f4a8ea0bd9e0f0b601d854259fb217750b78d3d3e59ff21793b', '[\"*\"]', NULL, NULL, '2024-10-29 04:18:01', '2024-10-29 04:18:01'),
(171, 'App\\Models\\User', 8, 'auth_token', '82c6d82d537f004a7fcf7ab5212dbf19fab2e8777f5234ed0e9f5d9d2ef366bd', '[\"*\"]', NULL, NULL, '2024-10-29 04:18:01', '2024-10-29 04:18:01'),
(172, 'App\\Models\\User', 8, 'auth_token', 'cf53c672a31cc5585a08ae622779e4e9f25ca7237d58e384f87a1851e436c64d', '[\"*\"]', NULL, NULL, '2024-10-29 04:20:26', '2024-10-29 04:20:26'),
(173, 'App\\Models\\User', 8, 'auth_token', 'd516b38693567ee7c19ad9d4a90d70d087d1ecb9848e07821d24e2949bae98d9', '[\"*\"]', NULL, NULL, '2024-10-29 04:20:27', '2024-10-29 04:20:27'),
(174, 'App\\Models\\User', 8, 'auth_token', '2d01052d6530e7e1c2789aeba0a509d2204d2c1ec57696b0ceb45224e96e1bef', '[\"*\"]', NULL, NULL, '2024-10-29 04:26:10', '2024-10-29 04:26:10'),
(175, 'App\\Models\\User', 8, 'auth_token', 'a27e27c28cc0afc2d7e0b4c5c17fb0b5d2283cb08d019f6688ae3b7e09cc14c8', '[\"*\"]', '2024-10-29 04:26:27', NULL, '2024-10-29 04:26:10', '2024-10-29 04:26:27'),
(176, 'App\\Models\\User', 8, 'auth_token', '37646feb6b5c7668ec9cb51233ffc65fbd04a52731380e0ddac8689a8f941d0b', '[\"*\"]', NULL, NULL, '2024-10-29 04:30:02', '2024-10-29 04:30:02'),
(177, 'App\\Models\\User', 8, 'auth_token', '11578f0ecfb2d149a0e32bf3ac72c77f7e534383eae7f0cf1a2f8b32bc47d6ef', '[\"*\"]', NULL, NULL, '2024-10-29 04:30:03', '2024-10-29 04:30:03'),
(178, 'App\\Models\\User', 8, 'auth_token', 'c4939412e373539f4eecae25c60cbe36254ce934ff9ae1986341d58f11af5f17', '[\"*\"]', NULL, NULL, '2024-10-29 04:31:02', '2024-10-29 04:31:02'),
(179, 'App\\Models\\User', 8, 'auth_token', '24853d0f168f468b4579b56a255894b744c9f039a104a3f0f12d4c7e48a551cc', '[\"*\"]', NULL, NULL, '2024-10-29 04:31:02', '2024-10-29 04:31:02'),
(180, 'App\\Models\\User', 8, 'auth_token', '6089be81abd06082d5952a15dc9331f181fa05ff88f53baab254a9903176caa9', '[\"*\"]', NULL, NULL, '2024-10-29 04:32:00', '2024-10-29 04:32:00'),
(181, 'App\\Models\\User', 8, 'auth_token', '481fc92c94b71253892a98f889292ae8aab1daa4e91c44b5297dca6245bfb696', '[\"*\"]', NULL, NULL, '2024-10-29 04:32:00', '2024-10-29 04:32:00'),
(182, 'App\\Models\\User', 8, 'auth_token', 'c82498894a779113f9e6548d6969507adf9a67b50cc5779c12a1b9b501c016c2', '[\"*\"]', NULL, NULL, '2024-10-29 04:33:01', '2024-10-29 04:33:01'),
(183, 'App\\Models\\User', 8, 'auth_token', '44134bb0767acdd4e929d68bf818c64d14bc4039d6cbc2885e66d69ae4d936b3', '[\"*\"]', NULL, NULL, '2024-10-29 04:33:01', '2024-10-29 04:33:01'),
(184, 'App\\Models\\User', 8, 'auth_token', '16c01578505a7e31c57c2d63db9c96879bb9293e5b511d5398e3bcc3e009e2b1', '[\"*\"]', NULL, NULL, '2024-10-29 04:34:02', '2024-10-29 04:34:02'),
(185, 'App\\Models\\User', 8, 'auth_token', 'b7ca8efe67b6651c7dc1ca2dee80502d6b75df7107426e56389f5035cc7b5c4b', '[\"*\"]', NULL, NULL, '2024-10-29 04:34:03', '2024-10-29 04:34:03'),
(186, 'App\\Models\\User', 8, 'auth_token', '2d442e29fb79eae5a83d23ffe178d2fef69e87b5a56063f1ce4341e95fc40b22', '[\"*\"]', NULL, NULL, '2024-10-29 04:35:12', '2024-10-29 04:35:12'),
(187, 'App\\Models\\User', 8, 'auth_token', '4ac66c3ab6ad55c963e87686ba182791e291993b4dd4691f277ddb8c18fdbea0', '[\"*\"]', NULL, NULL, '2024-10-29 04:35:12', '2024-10-29 04:35:12'),
(188, 'App\\Models\\User', 8, 'auth_token', 'b6c6d841592e1f4fc13aa43165dd5024c9ca93719305b3d5ed401f978ecdf30c', '[\"*\"]', NULL, NULL, '2024-10-29 04:37:21', '2024-10-29 04:37:21'),
(189, 'App\\Models\\User', 8, 'auth_token', 'a8dcfe9779f2ef89bfc0763297d1c471fc9eb56f3d345774a3fd177895985a1a', '[\"*\"]', NULL, NULL, '2024-10-29 04:37:21', '2024-10-29 04:37:21'),
(190, 'App\\Models\\User', 8, 'auth_token', 'a4174ae06482df28a6f93c7426e527a4e6ee3ac468706bcce5f2d9be6045e6f5', '[\"*\"]', NULL, NULL, '2024-10-29 04:38:49', '2024-10-29 04:38:49'),
(191, 'App\\Models\\User', 8, 'auth_token', '534efe58fe1ee08af2dc26ee71bfcf83b16843b068b12537d3c91e16dcc3097c', '[\"*\"]', '2024-10-29 04:50:56', NULL, '2024-10-29 04:38:49', '2024-10-29 04:50:56'),
(192, 'App\\Models\\User', 8, 'auth_token', '06b6e88c298791a79b05ae1c4af0dd63907f6e8e207a5fc429425884165ef7f4', '[\"*\"]', NULL, NULL, '2024-10-29 04:56:01', '2024-10-29 04:56:01'),
(193, 'App\\Models\\User', 8, 'auth_token', '576288821149f27fa26b235d09f055825f6715da7cabf35e304af8a743f4d670', '[\"*\"]', '2024-10-29 04:58:07', NULL, '2024-10-29 04:56:01', '2024-10-29 04:58:07'),
(194, 'App\\Models\\User', 8, 'auth_token', '59aeb9815027d3a0cb4b6327077c56c7b3302943ea2a2167543a8ab50cc40ab8', '[\"*\"]', NULL, NULL, '2024-10-29 04:58:35', '2024-10-29 04:58:35'),
(195, 'App\\Models\\User', 8, 'auth_token', '74aa37000031ebb94ae40f3257e08531d44b525733e60c1efcb2a9604cf07b64', '[\"*\"]', '2024-10-29 05:05:35', NULL, '2024-10-29 04:58:35', '2024-10-29 05:05:35'),
(196, 'App\\Models\\User', 8, 'auth_token', '68f67263f3a59fb4d370c91534e9d14c874b91b30dd30d4384aeac8bbfac7375', '[\"*\"]', NULL, NULL, '2024-10-29 05:08:07', '2024-10-29 05:08:07'),
(197, 'App\\Models\\User', 8, 'auth_token', '48270bde42ba01cefc0d7c66e12281ac299912e08327220ffe7ba5ae6701d497', '[\"*\"]', '2024-10-29 05:11:53', NULL, '2024-10-29 05:08:08', '2024-10-29 05:11:53'),
(198, 'App\\Models\\User', 8, 'auth_token', 'bb0961b597c3d824a55e2ef24a38e30f13b179ff6321502e89f0618a43039227', '[\"*\"]', NULL, NULL, '2024-10-29 05:12:21', '2024-10-29 05:12:21'),
(199, 'App\\Models\\User', 8, 'auth_token', 'f63361d1fc2a2e15ffe8fb9759367514179d04802cd46123b00ecd532c43390f', '[\"*\"]', '2024-10-29 05:24:27', NULL, '2024-10-29 05:12:21', '2024-10-29 05:24:27'),
(200, 'App\\Models\\User', 8, 'auth_token', '4c5763866baf82b8bc4526f29403815f54a65b939517ac9f1192d84c7ca13ba1', '[\"*\"]', NULL, NULL, '2024-10-29 05:24:48', '2024-10-29 05:24:48'),
(201, 'App\\Models\\User', 8, 'auth_token', 'f5079d599dc721b1bcf8087ddaad26b834869fa6f2b91573eac21790cd4718c2', '[\"*\"]', '2024-10-29 05:24:56', NULL, '2024-10-29 05:24:48', '2024-10-29 05:24:56'),
(202, 'App\\Models\\User', 8, 'auth_token', '01696b642ff85653b8d3ee59b1f26e96856bade1522187721f7094720a41ec6b', '[\"*\"]', NULL, NULL, '2024-10-29 05:27:59', '2024-10-29 05:27:59'),
(203, 'App\\Models\\User', 8, 'auth_token', '36210f7b34fdeb435bbbc86b5410f5329191f01513d1a53471845c45d602bff0', '[\"*\"]', '2024-10-29 05:28:18', NULL, '2024-10-29 05:27:59', '2024-10-29 05:28:18'),
(204, 'App\\Models\\User', 8, 'auth_token', '369b6005f317acc003bffbe18e9e1a213961e9cc39ef4aeaa44bcf74d87d0eda', '[\"*\"]', NULL, NULL, '2024-10-29 05:30:29', '2024-10-29 05:30:29'),
(205, 'App\\Models\\User', 8, 'auth_token', '351c734473e89e5b593d963a63a1914003f9f6999a5551f707bc3d0e3685ab8b', '[\"*\"]', '2024-10-29 05:52:22', NULL, '2024-10-29 05:30:29', '2024-10-29 05:52:22'),
(206, 'App\\Models\\User', 8, 'auth_token', 'bc486f0bde336b33b5b0348d6abd8a4be03e410a3b52ac902d5da6af35c2cb5c', '[\"*\"]', NULL, NULL, '2024-10-29 05:53:44', '2024-10-29 05:53:44'),
(207, 'App\\Models\\User', 8, 'auth_token', 'ace86ee62af1d114d9390caa864c2283d557948d929828236c5327e025ffdd64', '[\"*\"]', NULL, NULL, '2024-10-29 05:53:44', '2024-10-29 05:53:44'),
(208, 'App\\Models\\User', 8, 'auth_token', 'b2e88c4e8658babe90df20fe0ca98c7e8a0390c8e626736a43221bc5fb4f67b8', '[\"*\"]', NULL, NULL, '2024-10-29 05:53:45', '2024-10-29 05:53:45'),
(209, 'App\\Models\\User', 8, 'auth_token', 'ea0201b53b820e29c7a3b0c30f99557164946cf12224303e02ca7b9dc6954124', '[\"*\"]', '2024-10-29 05:59:55', NULL, '2024-10-29 05:53:46', '2024-10-29 05:59:55'),
(210, 'App\\Models\\User', 8, 'auth_token', 'ca28195d5290f7e9175c3afc42c036643279bfe6444fa0fc766134fc13b9fd88', '[\"*\"]', NULL, NULL, '2024-10-29 06:00:16', '2024-10-29 06:00:16'),
(211, 'App\\Models\\User', 8, 'auth_token', 'c9814c0a66d12f026dda29884d6077a0e978a604073eae0c6c12d9e95710ca4f', '[\"*\"]', '2024-10-29 06:08:53', NULL, '2024-10-29 06:00:16', '2024-10-29 06:08:53'),
(212, 'App\\Models\\User', 8, 'auth_token', '2ea3a04d2568c4f4745b9d3962469b0a5a2bd0d376513880ac2690498542f8a6', '[\"*\"]', NULL, NULL, '2024-10-29 06:09:08', '2024-10-29 06:09:08'),
(213, 'App\\Models\\User', 8, 'auth_token', 'd065f1d62227ba3eadc9242abb2cc8bac3cfcbd4177423fc6e854d762f24dbdc', '[\"*\"]', '2024-10-29 06:20:43', NULL, '2024-10-29 06:09:09', '2024-10-29 06:20:43'),
(214, 'App\\Models\\User', 8, 'auth_token', '90e9b25dbeb6b475bc42aea5a5a17b406b240e6b62367043bf5cfb2c216427ba', '[\"*\"]', NULL, NULL, '2024-10-29 06:22:58', '2024-10-29 06:22:58'),
(215, 'App\\Models\\User', 8, 'auth_token', '90d183c6d7e63fc2d1cf6703222c29ceda2b1b70819a6e466a1323cc7cbb5cb9', '[\"*\"]', NULL, NULL, '2024-10-29 06:22:58', '2024-10-29 06:22:58'),
(216, 'App\\Models\\User', 8, 'auth_token', '413a48c98df68a2d6b668b92f8d5ec4af697e1aea51ad4ae50574f6628e4d8a3', '[\"*\"]', NULL, NULL, '2024-10-29 06:26:00', '2024-10-29 06:26:00'),
(217, 'App\\Models\\User', 8, 'auth_token', 'a316cbd2a98a6d52e04532d395048387949268ec174ace6ce38af56cca14e0ed', '[\"*\"]', '2024-10-29 06:28:08', NULL, '2024-10-29 06:26:00', '2024-10-29 06:28:08'),
(218, 'App\\Models\\User', 8, 'auth_token', '1d3154af62def12e04b517dea0607f2774dd56aa06f7d4eb262c94af8e9da90b', '[\"*\"]', NULL, NULL, '2024-10-29 06:54:28', '2024-10-29 06:54:28'),
(219, 'App\\Models\\User', 8, 'auth_token', '1eec4d142145b9de27cb7d755aa201d5d0f5a24218934db67dc2d6f011066fcd', '[\"*\"]', NULL, NULL, '2024-10-29 06:54:28', '2024-10-29 06:54:28'),
(220, 'App\\Models\\User', 8, 'auth_token', '55940a6e1e2d41a1bc2eecaaa6aa5af9167f7eca52ec6aa3b7a097da2384f9a0', '[\"*\"]', NULL, NULL, '2024-10-29 06:57:18', '2024-10-29 06:57:18'),
(221, 'App\\Models\\User', 8, 'auth_token', '655a2acf21a7a1ad8cf390cb5d6bad67e87335c5dd5cc4a9f0b09766c53701bd', '[\"*\"]', NULL, NULL, '2024-10-29 06:57:18', '2024-10-29 06:57:18'),
(222, 'App\\Models\\User', 8, 'auth_token', 'c736183a854cc8450accd01a565922946392cd0c7c6c9882cedf1a78e216580f', '[\"*\"]', NULL, NULL, '2024-10-29 07:01:57', '2024-10-29 07:01:57'),
(223, 'App\\Models\\User', 8, 'auth_token', '70f69b5e0bdb1ce43b0fb6401dcde77a4f8cee762159c0b5104012536c2fe4e4', '[\"*\"]', NULL, NULL, '2024-10-29 07:01:57', '2024-10-29 07:01:57'),
(224, 'App\\Models\\User', 8, 'auth_token', '860ad98a06beb81d1921dd0190e91038958ce967a9203ae2c23c9860d4b3db84', '[\"*\"]', NULL, NULL, '2024-10-29 07:05:30', '2024-10-29 07:05:30'),
(225, 'App\\Models\\User', 8, 'auth_token', '3d57656a476aa22754c590b65c9121e0781dd3562565c6f8ac76b6f38343b48b', '[\"*\"]', NULL, NULL, '2024-10-29 07:05:30', '2024-10-29 07:05:30'),
(226, 'App\\Models\\User', 8, 'auth_token', 'bc3a575dc3a845509120cb526255d96696cf8fd1bdd8c6ae1e83decdd0af109f', '[\"*\"]', NULL, NULL, '2024-10-29 07:45:20', '2024-10-29 07:45:20'),
(227, 'App\\Models\\User', 8, 'auth_token', '5ec1a42223e7762a189114a67555c4905cd649304218f6ad80f7570404c33a75', '[\"*\"]', NULL, NULL, '2024-10-29 07:45:21', '2024-10-29 07:45:21'),
(228, 'App\\Models\\User', 8, 'auth_token', '2c4c62e8fa5d4ced005921cb1cadeae408689b2bbe2a2406c77363500e0387f0', '[\"*\"]', NULL, NULL, '2024-10-29 07:45:43', '2024-10-29 07:45:43'),
(229, 'App\\Models\\User', 8, 'auth_token', '85e37d9bfac95ab9c1e4fd0911eb83ecb1defb28349a57beda77ca0f58fe7306', '[\"*\"]', NULL, NULL, '2024-10-29 07:45:43', '2024-10-29 07:45:43'),
(230, 'App\\Models\\User', 8, 'auth_token', 'bff5f4713b82488d21a50c79057bc7d0ac67018a105f58ff83e2d70c533d1525', '[\"*\"]', NULL, NULL, '2024-10-31 06:42:06', '2024-10-31 06:42:06'),
(231, 'App\\Models\\User', 8, 'auth_token', '4a253f56044ad1a85d4f96fca8ca5fac9b67e84aa110c40c1ad6722538877b9a', '[\"*\"]', NULL, NULL, '2024-10-31 06:42:07', '2024-10-31 06:42:07'),
(232, 'App\\Models\\User', 8, 'auth_token', '1fc503bd160c6e4dd04f9dba4361e96ffb0eb3d915010e9a21b9066216e93b9b', '[\"*\"]', NULL, NULL, '2024-11-05 11:54:16', '2024-11-05 11:54:16'),
(233, 'App\\Models\\User', 8, 'auth_token', '144b612bf31c636df66b77e943a1768b4e15998e6c149920d909d0dfced4a92b', '[\"*\"]', NULL, NULL, '2024-11-05 11:54:16', '2024-11-05 11:54:16'),
(234, 'App\\Models\\User', 8, 'auth_token', 'cffc26ec28e1056bf1cae56f018d1e72f546ef27a163f9c453e55fa2afff5a12', '[\"*\"]', NULL, NULL, '2024-11-05 11:58:19', '2024-11-05 11:58:19'),
(235, 'App\\Models\\User', 8, 'auth_token', '42ffdd3171c3c99b0c1e4584deb2367cc060e471b6dda6b83c3554afe9d15340', '[\"*\"]', '2024-11-05 11:59:43', NULL, '2024-11-05 11:58:20', '2024-11-05 11:59:43'),
(236, 'App\\Models\\User', 8, 'auth_token', '812bc6047a1a0e0b6c89b6afa20c851141becbe193808ff433109139e44ea700', '[\"*\"]', NULL, NULL, '2024-11-05 12:00:05', '2024-11-05 12:00:05'),
(237, 'App\\Models\\User', 8, 'auth_token', 'df869dabab9179dd2e72559d05d14e3777e753cc9f2ef8db6a4ad165147e2800', '[\"*\"]', '2024-11-05 12:03:22', NULL, '2024-11-05 12:00:05', '2024-11-05 12:03:22'),
(238, 'App\\Models\\User', 8, 'auth_token', '6b260b7c65b80ade6f6723bd6d29dcaf037cd49106b4677c1d398dabe9d50470', '[\"*\"]', NULL, NULL, '2024-11-05 12:06:32', '2024-11-05 12:06:32'),
(239, 'App\\Models\\User', 8, 'auth_token', '9be80ae0938129ed26b3dea5c4e07679fff0e674f5ae8b3a3bbc3ec1a19fcf64', '[\"*\"]', '2024-11-05 12:09:23', NULL, '2024-11-05 12:06:32', '2024-11-05 12:09:23'),
(240, 'App\\Models\\User', 8, 'auth_token', 'facca6a84bd386b2b1c9afb398cb6d29dbabb1321bc6d34b65a7ae56bb335e71', '[\"*\"]', NULL, NULL, '2024-11-05 12:10:40', '2024-11-05 12:10:40'),
(241, 'App\\Models\\User', 8, 'auth_token', '899abd4a6c703a446a5cd5430f8cf349b6db9789748c3ae1a55cb76ef750d904', '[\"*\"]', '2024-11-05 12:10:53', NULL, '2024-11-05 12:10:40', '2024-11-05 12:10:53'),
(242, 'App\\Models\\User', 8, 'auth_token', '19f5595f09782c3abf32720eeec927f53531a3fd7245053b4ca5cf410d9887b1', '[\"*\"]', NULL, NULL, '2024-11-05 12:13:19', '2024-11-05 12:13:19'),
(243, 'App\\Models\\User', 8, 'auth_token', '97eef6f43f5c544a5603390fbf8eaa7cd1fb9538a07000bd819c893395f862a5', '[\"*\"]', '2024-11-05 12:13:27', NULL, '2024-11-05 12:13:20', '2024-11-05 12:13:27'),
(244, 'App\\Models\\User', 9, 'auth_token', 'f61aecc9e45f084265d123b313278aaaccfbebd9cd0f327a4113881d2ac04c91', '[\"*\"]', NULL, NULL, '2024-11-05 12:18:53', '2024-11-05 12:18:53'),
(245, 'App\\Models\\User', 9, 'auth_token', 'c2e573f1c7710b5c9d10d56d4a0abc9bec0de8342eac85808c43418a833ce85b', '[\"*\"]', '2024-11-05 12:19:32', NULL, '2024-11-05 12:18:53', '2024-11-05 12:19:32'),
(246, 'App\\Models\\User', 9, 'auth_token', '6d13aaef48d4250ee866b45164e8a30ddc8ea4a552df4ce9ace9c3424a5c4493', '[\"*\"]', NULL, NULL, '2024-11-05 12:20:23', '2024-11-05 12:20:23'),
(247, 'App\\Models\\User', 9, 'auth_token', 'e98e1154b2c736ee32a9ead39fa3a7081d2f56e7de824f6a2176869e7b641e27', '[\"*\"]', NULL, NULL, '2024-11-05 12:20:24', '2024-11-05 12:20:24'),
(248, 'App\\Models\\User', 5, 'auth_token', 'c5806423db9abc1f02fe4339115a38c1e749ba6612590b4937c5f990e6129379', '[\"*\"]', NULL, NULL, '2024-11-05 12:22:41', '2024-11-05 12:22:41'),
(249, 'App\\Models\\User', 5, 'auth_token', 'bc23f8f6ff61efc77af8a0392621f4b4a8821daad1c9cfe5cc43581dce4badfa', '[\"*\"]', '2024-11-05 12:23:09', NULL, '2024-11-05 12:22:41', '2024-11-05 12:23:09'),
(250, 'App\\Models\\User', 8, 'auth_token', 'c18235b9ecc4b63f6a9974c45d9f8ea8f28ce4044e90a5035a6581446f767971', '[\"*\"]', NULL, NULL, '2024-11-05 12:24:08', '2024-11-05 12:24:08'),
(251, 'App\\Models\\User', 8, 'auth_token', '98245cabe4fe908903f0090b1c20b7490bcca590cae64ed89faaff0dc8963a3c', '[\"*\"]', '2024-11-05 12:25:02', NULL, '2024-11-05 12:24:08', '2024-11-05 12:25:02'),
(252, 'App\\Models\\User', 9, 'auth_token', '8be7c98c141d38d16e6ca6a060a99f4ffb401c174c724f19a319cc1bb0691db4', '[\"*\"]', NULL, NULL, '2024-11-05 12:26:06', '2024-11-05 12:26:06'),
(253, 'App\\Models\\User', 9, 'auth_token', '511f505a38356f39962fefcd8fb961f1ae0cfd72b09b0210b4e62562d9265645', '[\"*\"]', '2024-11-05 12:26:11', NULL, '2024-11-05 12:26:06', '2024-11-05 12:26:11'),
(254, 'App\\Models\\User', 9, 'auth_token', 'd9df6735515bbaffc164d955d8713adc091b9f3585aeb035095a25dc35df792c', '[\"*\"]', NULL, NULL, '2024-11-05 12:27:12', '2024-11-05 12:27:12'),
(255, 'App\\Models\\User', 9, 'auth_token', '60fb022c42ca10c299949d6db828746eebca4d59387adbb0687220412bcb6f55', '[\"*\"]', NULL, NULL, '2024-11-05 12:27:13', '2024-11-05 12:27:13'),
(256, 'App\\Models\\User', 8, 'auth_token', 'd25b2565656dceae71362df084f6e9ab9a31a93b27895f44fe0c2db454964679', '[\"*\"]', NULL, NULL, '2024-11-05 12:36:39', '2024-11-05 12:36:39'),
(257, 'App\\Models\\User', 8, 'auth_token', '7c04a657a0a288676051dffc13b1db65780444f128431af00a649d5245138201', '[\"*\"]', NULL, NULL, '2024-11-05 12:36:39', '2024-11-05 12:36:39'),
(258, 'App\\Models\\User', 8, 'auth_token', 'b34389ccde88d477fe610e63c09ade15ad6ae3aa6437bd8d3cd22305653876b6', '[\"*\"]', NULL, NULL, '2024-11-05 20:10:23', '2024-11-05 20:10:23'),
(259, 'App\\Models\\User', 8, 'auth_token', '05958b9ce54e5674df53ba4196c1d0d62f3f6583d03ca7e9c30944ae5267e695', '[\"*\"]', NULL, NULL, '2024-11-05 20:10:23', '2024-11-05 20:10:23'),
(260, 'App\\Models\\User', 8, 'auth_token', 'cc1542c3704e39cedfa85706249a2d8ab35619790b3a04036c7e4a0fd53a6d53', '[\"*\"]', NULL, NULL, '2024-11-05 20:10:42', '2024-11-05 20:10:42'),
(261, 'App\\Models\\User', 8, 'auth_token', '4f4005ae224beb14f0d10717c26f3cebd6cd0b714f2f3f3ee917f2a974e76ba9', '[\"*\"]', NULL, NULL, '2024-11-05 20:10:43', '2024-11-05 20:10:43'),
(262, 'App\\Models\\User', 8, 'auth_token', 'fc5af674ba2f68a6475ce9947765a8e030491561baab5f49cb0633e9018fd9a3', '[\"*\"]', NULL, NULL, '2024-11-05 20:12:23', '2024-11-05 20:12:23'),
(263, 'App\\Models\\User', 8, 'auth_token', 'e95cf4fcb1331fd29aa1bb1a370df72ab1cdbcad6f83cf45dca3cc8f1b419bec', '[\"*\"]', '2024-11-05 20:13:21', NULL, '2024-11-05 20:12:23', '2024-11-05 20:13:21'),
(264, 'App\\Models\\User', 8, 'auth_token', '530af6cf20dcf190ceb451cbc351f94dbcd0fe5158dc5b1349e082ad938734e7', '[\"*\"]', NULL, NULL, '2024-11-05 20:19:29', '2024-11-05 20:19:29'),
(265, 'App\\Models\\User', 8, 'auth_token', '26c0e1d7d6d3afdaa4e154b5e198436e5fb3489f94491a3c95c5daf4ba0dc4be', '[\"*\"]', '2024-11-05 20:19:38', NULL, '2024-11-05 20:19:30', '2024-11-05 20:19:38'),
(266, 'App\\Models\\User', 8, 'auth_token', 'a89c74bfff02c7637559698f52bb8894db6878b0d5646a227439c298a058d629', '[\"*\"]', NULL, NULL, '2024-11-05 20:24:00', '2024-11-05 20:24:00'),
(267, 'App\\Models\\User', 8, 'auth_token', '21f08db5800efc5f17b7f6f88770aaf1f94fb78ebb7ed712bfc290816806a41c', '[\"*\"]', '2024-11-05 20:24:09', NULL, '2024-11-05 20:24:00', '2024-11-05 20:24:09'),
(268, 'App\\Models\\User', 8, 'auth_token', '570f79e9fc5adf3fc83d7e6081964ad2d17de0ed0f0cd5adaf030dd05bd71fd1', '[\"*\"]', NULL, NULL, '2024-11-05 20:27:17', '2024-11-05 20:27:17'),
(269, 'App\\Models\\User', 8, 'auth_token', '950bdaff81c4110e66c193dbca8b5e98f65b719bc8340bc95d48155444370069', '[\"*\"]', '2024-11-05 20:28:11', NULL, '2024-11-05 20:27:18', '2024-11-05 20:28:11'),
(270, 'App\\Models\\User', 8, 'auth_token', 'b7d4326144250560b73660f016135e6e316711b784124fdb632049d45e467021', '[\"*\"]', NULL, NULL, '2024-11-09 07:53:39', '2024-11-09 07:53:39');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(271, 'App\\Models\\User', 8, 'auth_token', 'f343709ed3c2b19a1825e7ddbe786b069a3eab2d6960c5d451c57786e8736b72', '[\"*\"]', NULL, NULL, '2024-11-09 07:53:39', '2024-11-09 07:53:39'),
(272, 'App\\Models\\User', 8, 'auth_token', '16b56e4b43b732126497a2f01fd47e17993b8f9a7f02a9ae86222ecc2036ebca', '[\"*\"]', NULL, NULL, '2024-11-09 07:54:05', '2024-11-09 07:54:05'),
(273, 'App\\Models\\User', 8, 'auth_token', 'ee0915f2942fd3d93cb335f01985b92ddd7b49f143d6a5fccb8cdd767bf954e3', '[\"*\"]', NULL, NULL, '2024-11-09 07:54:05', '2024-11-09 07:54:05'),
(274, 'App\\Models\\User', 8, 'auth_token', '53a33fd5cdf3f59a17063b461d2cdf8ac613699e6aaab945025fcb0c9d30ce40', '[\"*\"]', NULL, NULL, '2024-11-09 08:14:18', '2024-11-09 08:14:18'),
(275, 'App\\Models\\User', 8, 'auth_token', '1d6c4881a491fc444f05c47fdfed39ea3ae618097787991133b0d8c63fa1c359', '[\"*\"]', NULL, NULL, '2024-11-09 08:14:18', '2024-11-09 08:14:18'),
(276, 'App\\Models\\User', 8, 'auth_token', 'fb76bf29c8d2cec0066f2d5f58341323f57dc5165c7a9449f4d0d740cc8d70c1', '[\"*\"]', NULL, NULL, '2024-11-09 08:22:24', '2024-11-09 08:22:24'),
(277, 'App\\Models\\User', 8, 'auth_token', 'dea350f580957435b4e28670423a23a43312426b439a7ee540af9b1127151019', '[\"*\"]', NULL, NULL, '2024-11-09 08:22:24', '2024-11-09 08:22:24'),
(278, 'App\\Models\\User', 8, 'auth_token', '85352b17ffe87a59e3fdde1209a4c437d1f67d1fad5bf6f7093126bbecc700aa', '[\"*\"]', NULL, NULL, '2024-11-09 08:27:52', '2024-11-09 08:27:52'),
(279, 'App\\Models\\User', 8, 'auth_token', 'da47cb0f88485df7739c7191b314da5e87494fda346971d458944ff2c8a7ca54', '[\"*\"]', NULL, NULL, '2024-11-09 08:27:53', '2024-11-09 08:27:53'),
(280, 'App\\Models\\User', 8, 'auth_token', '71e603a1fa05ca17f5e1a82eb1602f9db2058a8de019982f0650d387d83f1cf5', '[\"*\"]', NULL, NULL, '2024-11-09 08:29:12', '2024-11-09 08:29:12'),
(281, 'App\\Models\\User', 8, 'auth_token', 'a1fac8bd32bf0804aea36a451379b05b920d042d0af17e4fc5025fd8aafa29df', '[\"*\"]', NULL, NULL, '2024-11-09 08:29:12', '2024-11-09 08:29:12'),
(282, 'App\\Models\\User', 8, 'auth_token', '0706892bc6552be38b092ae42ade415d0db2079d690539e0d40da6b2e422ac1b', '[\"*\"]', NULL, NULL, '2024-11-09 08:34:23', '2024-11-09 08:34:23'),
(283, 'App\\Models\\User', 8, 'auth_token', 'b09eeb4665070bf6994df9009ef46d910b86873989c9a719e22c285381db238e', '[\"*\"]', '2024-11-09 08:34:30', NULL, '2024-11-09 08:34:23', '2024-11-09 08:34:30'),
(284, 'App\\Models\\User', 8, 'auth_token', 'fc6c0fda99600b3b7a4038c58b8576564a1823d896c0c3280b06e25592f4a8c9', '[\"*\"]', NULL, NULL, '2024-11-09 08:35:45', '2024-11-09 08:35:45'),
(285, 'App\\Models\\User', 8, 'auth_token', '6cfd0d149f52302811e5c55975a3875169865fd0c1f55f20e55b76215c7b8781', '[\"*\"]', '2024-11-09 08:47:38', NULL, '2024-11-09 08:35:45', '2024-11-09 08:47:38'),
(286, 'App\\Models\\User', 8, 'auth_token', 'd4641a802bc2848f8495c0984bd8f9f68116181f1b7dae069f2ff5d687203fbb', '[\"*\"]', NULL, NULL, '2024-11-09 08:47:57', '2024-11-09 08:47:57'),
(287, 'App\\Models\\User', 8, 'auth_token', '7de07757b06c60ef57145e186c48e86a7d32f6cccb9bf1953108311b9691bdf7', '[\"*\"]', '2024-11-09 08:50:17', NULL, '2024-11-09 08:47:57', '2024-11-09 08:50:17'),
(288, 'App\\Models\\User', 8, 'auth_token', 'fea3493e9e7824e127a30f33254803209bea97a1b957862b314da5a7be9b5783', '[\"*\"]', NULL, NULL, '2024-11-09 08:53:08', '2024-11-09 08:53:08'),
(289, 'App\\Models\\User', 8, 'auth_token', 'f2871961db94a3de9a44f181c240dd415f99149e4498f5eccee6e08a9645b67e', '[\"*\"]', '2024-11-09 08:53:15', NULL, '2024-11-09 08:53:08', '2024-11-09 08:53:15'),
(290, 'App\\Models\\User', 8, 'auth_token', 'e6802648c2e7d12a8a2c615f94aab73102ca2199fb62971c038ef94121d77bbf', '[\"*\"]', NULL, NULL, '2024-11-09 08:58:03', '2024-11-09 08:58:03'),
(291, 'App\\Models\\User', 8, 'auth_token', 'e8913349a253ec071599f4dfc2c139c4f568f355e79b44664d5f3d23904473d6', '[\"*\"]', '2024-11-09 08:58:12', NULL, '2024-11-09 08:58:04', '2024-11-09 08:58:12'),
(292, 'App\\Models\\User', 8, 'auth_token', '3c491ad78c8d381a03e28be4d3cd2da491ad28409b0daa323512061a26b8d3c9', '[\"*\"]', NULL, NULL, '2024-11-09 08:59:06', '2024-11-09 08:59:06'),
(293, 'App\\Models\\User', 8, 'auth_token', 'dacaf2905abadfa40c64ef0da0ccecb340435438db2ddc54e118b42adaa46c1e', '[\"*\"]', '2024-11-09 08:59:20', NULL, '2024-11-09 08:59:06', '2024-11-09 08:59:20'),
(294, 'App\\Models\\User', 8, 'auth_token', '7ba31b4caa996cff29d9fd2b54fa6358cd97a1c50ec0b69a749cc44fdf8ae5d6', '[\"*\"]', NULL, NULL, '2024-11-09 09:08:33', '2024-11-09 09:08:33'),
(295, 'App\\Models\\User', 8, 'auth_token', 'e668afb08fab01452380b8acf107772df7f20074c1e56900c5bb9c7acf4f1c0f', '[\"*\"]', NULL, NULL, '2024-11-09 09:08:33', '2024-11-09 09:08:33'),
(296, 'App\\Models\\User', 8, 'auth_token', '4dc424b27d4268b312af45733465e4390e195e8d9526dbf5dbe6b132c0f777b1', '[\"*\"]', NULL, NULL, '2024-11-09 09:27:16', '2024-11-09 09:27:16'),
(297, 'App\\Models\\User', 8, 'auth_token', 'f82118450ee77c8ff771d520e922aa63203a6d85ad4062d9e459705b87132035', '[\"*\"]', NULL, NULL, '2024-11-09 09:27:16', '2024-11-09 09:27:16'),
(298, 'App\\Models\\User', 8, 'auth_token', 'd873c60f16aadf4351c8f101d435dc9effbe190c0ead5498a95e7586e7ea87ec', '[\"*\"]', NULL, NULL, '2024-11-09 09:35:45', '2024-11-09 09:35:45'),
(299, 'App\\Models\\User', 8, 'auth_token', 'aacaa22da4b601f36ddbadb20218d2ad30530957a70cbeffe01f79d1ede058b4', '[\"*\"]', NULL, NULL, '2024-11-09 09:35:45', '2024-11-09 09:35:45'),
(300, 'App\\Models\\User', 8, 'auth_token', '4a650af0b9ab097bb252dba3ecfa635df9001cdf345f825502c9fead440144d3', '[\"*\"]', NULL, NULL, '2024-11-09 09:39:24', '2024-11-09 09:39:24'),
(301, 'App\\Models\\User', 8, 'auth_token', 'cb7df222490ebc868c80a3aa2051ae02d33ae177b3743e8478466acc56b783a3', '[\"*\"]', NULL, NULL, '2024-11-09 09:39:24', '2024-11-09 09:39:24'),
(302, 'App\\Models\\User', 8, 'auth_token', '69a30f50e9d82e85c326362232802fceb11da06337501dabdfa7f3aa7ae8e852', '[\"*\"]', NULL, NULL, '2024-11-09 09:43:20', '2024-11-09 09:43:20'),
(303, 'App\\Models\\User', 8, 'auth_token', '3067ce3cdee0eea4e6158d305040f978465407fda336221db12d3e3a1ea24b22', '[\"*\"]', NULL, NULL, '2024-11-09 09:43:20', '2024-11-09 09:43:20'),
(304, 'App\\Models\\User', 8, 'auth_token', '61afb92b50ca1739fc836341394127ef4de2ea300b937821592fd120a1d54327', '[\"*\"]', NULL, NULL, '2024-11-09 09:48:04', '2024-11-09 09:48:04'),
(305, 'App\\Models\\User', 8, 'auth_token', '957844940a82e588d4e4094ceabe53848acdecff5e84f156d0611a6707eb4397', '[\"*\"]', '2024-11-09 09:48:17', NULL, '2024-11-09 09:48:05', '2024-11-09 09:48:17'),
(306, 'App\\Models\\User', 8, 'auth_token', 'a744f816767bdb915dfef7eb330a3081e2e4965826ec176265a42b560afb83ce', '[\"*\"]', NULL, NULL, '2024-11-09 09:56:58', '2024-11-09 09:56:58'),
(307, 'App\\Models\\User', 8, 'auth_token', '4ef376b2fa78fc22961b0c7185e80ec88e65fd9aba12e8a11e0dd3af7eb18706', '[\"*\"]', NULL, NULL, '2024-11-09 09:56:58', '2024-11-09 09:56:58'),
(308, 'App\\Models\\User', 8, 'auth_token', 'a1173a496b86472f9f80411ec3cdba1f2605eb0644a20c57c253280256ac5024', '[\"*\"]', NULL, NULL, '2024-11-09 10:08:45', '2024-11-09 10:08:45'),
(309, 'App\\Models\\User', 8, 'auth_token', '4d5dda8e266660ff58de6427f214f4fe1f8e6acc4c1a7aafcd4280e96c10c9a1', '[\"*\"]', NULL, NULL, '2024-11-09 10:08:45', '2024-11-09 10:08:45'),
(310, 'App\\Models\\User', 8, 'auth_token', '51dcba230c56025f731821d2086d7aa48c781e44917a8e4c35843e4a1624fb48', '[\"*\"]', NULL, NULL, '2024-11-09 10:12:33', '2024-11-09 10:12:33'),
(311, 'App\\Models\\User', 8, 'auth_token', 'cb0ec23462bbc99a1302aa53510098368e896c80d2efe0e37b1b237b49339eb0', '[\"*\"]', NULL, NULL, '2024-11-09 10:12:33', '2024-11-09 10:12:33'),
(312, 'App\\Models\\User', 8, 'auth_token', 'd1dab10d4e8b44cf9a950614ddbc4c915bd5214babafc35a2bb41a21f5d1a57c', '[\"*\"]', NULL, NULL, '2024-11-09 10:15:10', '2024-11-09 10:15:10'),
(313, 'App\\Models\\User', 8, 'auth_token', 'bdf2756680af19377651d491b16823257e5ff43bb9cae3b8dd411bd865366db4', '[\"*\"]', NULL, NULL, '2024-11-09 10:15:11', '2024-11-09 10:15:11'),
(314, 'App\\Models\\User', 8, 'auth_token', 'ef613627a7eb6d6e63723db32c466c90c46f82ca3e450baca8bd46541f002a1a', '[\"*\"]', NULL, NULL, '2024-11-09 10:24:29', '2024-11-09 10:24:29'),
(315, 'App\\Models\\User', 8, 'auth_token', 'a1b47cb077e9669e99dc1e578fa10dbe3ca57e66ba6a59196ec814314322729c', '[\"*\"]', '2024-11-09 10:27:48', NULL, '2024-11-09 10:24:29', '2024-11-09 10:27:48'),
(316, 'App\\Models\\User', 8, 'auth_token', '3eedd3c0a6d02358662edd3df2673bf71cd48019752177b12c3847a232857c12', '[\"*\"]', NULL, NULL, '2024-11-09 10:29:25', '2024-11-09 10:29:25'),
(317, 'App\\Models\\User', 8, 'auth_token', 'b4f60f1c21c8c917e8bf40f9d10611bd7ce135b5c9d602c6fb6fe9c4d13767b3', '[\"*\"]', '2024-11-09 10:33:26', NULL, '2024-11-09 10:29:25', '2024-11-09 10:33:26'),
(318, 'App\\Models\\User', 8, 'auth_token', 'a735567c79171900065a8aed91cfd61abe4a4319b991754d8aa8d922d25c3650', '[\"*\"]', NULL, NULL, '2024-11-09 10:34:00', '2024-11-09 10:34:00'),
(319, 'App\\Models\\User', 8, 'auth_token', '56cf8b6c2ac5e6e4281772ba2d3083af34547aa621a587d7c4a9ec1e78898b93', '[\"*\"]', '2024-11-09 10:34:13', NULL, '2024-11-09 10:34:01', '2024-11-09 10:34:13'),
(320, 'App\\Models\\User', 8, 'auth_token', '730fd6b4e6c552cf37986e59da5ce098caba2f54bea2149b39b6596cd0970d34', '[\"*\"]', NULL, NULL, '2024-11-09 10:36:30', '2024-11-09 10:36:30'),
(321, 'App\\Models\\User', 8, 'auth_token', '321d80eedc30acf76087279b71cb6e360234ffaf1d9429f530fc95648f217df3', '[\"*\"]', '2024-11-09 10:37:14', NULL, '2024-11-09 10:36:31', '2024-11-09 10:37:14'),
(322, 'App\\Models\\User', 8, 'auth_token', '7c2c5665a14cdf282ed489ce8c61ea8facc2aacedb8b8658b132c7851fe2ab69', '[\"*\"]', NULL, NULL, '2024-11-09 10:38:08', '2024-11-09 10:38:08'),
(323, 'App\\Models\\User', 8, 'auth_token', '17c2d0da8655305a2e55c76dab9d4b1e86565ab0f77e4e237ab820ceba35a6eb', '[\"*\"]', '2024-11-09 10:39:08', NULL, '2024-11-09 10:38:09', '2024-11-09 10:39:08'),
(324, 'App\\Models\\User', 8, 'auth_token', '8ca9f67f35fc93813cc5a4ef6c2ab146459e7894d1b7b1962838e2c636c13eef', '[\"*\"]', NULL, NULL, '2024-11-09 10:41:56', '2024-11-09 10:41:56'),
(325, 'App\\Models\\User', 8, 'auth_token', '43faba802945a93a184577a8b6e27b8b1d992c97dd2ea0806fa0dcfdfd5f3d73', '[\"*\"]', '2024-11-09 10:42:33', NULL, '2024-11-09 10:41:57', '2024-11-09 10:42:33'),
(326, 'App\\Models\\User', 8, 'auth_token', '04b23093d3870bcef7879d30c8f1802f2da05a2b7bd2f640bcba12e9a66fe5bb', '[\"*\"]', NULL, NULL, '2024-11-09 10:46:02', '2024-11-09 10:46:02'),
(327, 'App\\Models\\User', 8, 'auth_token', 'b6a4a4e630bceb66e96fba99007c88c86a04d4607ef0d97a416d3b3515de5fab', '[\"*\"]', '2024-11-09 10:46:21', NULL, '2024-11-09 10:46:02', '2024-11-09 10:46:21'),
(328, 'App\\Models\\User', 8, 'auth_token', 'b1e3a3cd4840923eb80422a74564616d33396780073f422aa8b588f3c0471bfe', '[\"*\"]', NULL, NULL, '2024-11-09 10:47:44', '2024-11-09 10:47:44'),
(329, 'App\\Models\\User', 8, 'auth_token', '4b82563cf22d1c23f4794af9262c9c26f88f4a62803464dd0f63411b56b33048', '[\"*\"]', '2024-11-09 10:47:58', NULL, '2024-11-09 10:47:44', '2024-11-09 10:47:58'),
(330, 'App\\Models\\User', 8, 'auth_token', '1e4ac1596d2cdb12e8e866fff95255c69b0e6d87374ecd9c2f479a90c4ad37a4', '[\"*\"]', NULL, NULL, '2024-11-09 10:48:41', '2024-11-09 10:48:41'),
(331, 'App\\Models\\User', 8, 'auth_token', '66e1c8f73c2a2ae9e473a0db26420708492c53c49f69da045e3e3f440aba1f0b', '[\"*\"]', '2024-11-09 10:49:06', NULL, '2024-11-09 10:48:42', '2024-11-09 10:49:06'),
(332, 'App\\Models\\User', 8, 'auth_token', 'd58dfa4882a4b8e1907af376409e5be4a904564a07ab5b8789eb2e8e68824823', '[\"*\"]', NULL, NULL, '2024-11-09 10:54:44', '2024-11-09 10:54:44'),
(333, 'App\\Models\\User', 8, 'auth_token', '4b7563724c8a65240332cc96fde456a6633be22211dff906f3743bf0162615d8', '[\"*\"]', NULL, NULL, '2024-11-09 10:54:44', '2024-11-09 10:54:44'),
(334, 'App\\Models\\User', 8, 'auth_token', '48ad56184f643e63df2efd275be7dbc34d828b58ece658486734712b36dc25e7', '[\"*\"]', NULL, NULL, '2024-11-09 10:57:24', '2024-11-09 10:57:24'),
(335, 'App\\Models\\User', 8, 'auth_token', 'a1464730b997851340be01f90d546360a0075e3866c31cf92ff275b5651a37f4', '[\"*\"]', NULL, NULL, '2024-11-09 10:57:24', '2024-11-09 10:57:24'),
(336, 'App\\Models\\User', 8, 'auth_token', '6c18315496dc87c878a37afcb0b9aa86f0f504519e0d94c07c6e8bf811df2ee9', '[\"*\"]', NULL, NULL, '2024-11-09 10:58:30', '2024-11-09 10:58:30'),
(337, 'App\\Models\\User', 8, 'auth_token', '1d9d8476fe2d4f37dc13066f48e85f0ed51bd14f005e2ca67c8e66e5b050aba1', '[\"*\"]', '2024-11-09 11:06:28', NULL, '2024-11-09 10:58:30', '2024-11-09 11:06:28'),
(338, 'App\\Models\\User', 8, 'auth_token', '6bbd9e7db23d0d1eb58640ef4579db2de148e53b641d8fa29979529d94f43691', '[\"*\"]', NULL, NULL, '2024-11-09 11:06:47', '2024-11-09 11:06:47'),
(339, 'App\\Models\\User', 8, 'auth_token', '35b804448ab382e7ae3a08c6f5af6dd775bd8618afd4242b0646e49c83f02298', '[\"*\"]', '2024-11-09 11:09:32', NULL, '2024-11-09 11:06:47', '2024-11-09 11:09:32'),
(340, 'App\\Models\\User', 8, 'auth_token', '92397dfa3c07422e4a13b0d2999a9fff0e94cdcd1fc4295683fad93567089c85', '[\"*\"]', NULL, NULL, '2024-11-09 11:12:07', '2024-11-09 11:12:07'),
(341, 'App\\Models\\User', 8, 'auth_token', '5244f6dd14812408b17eded00e4a5edeb72409ba30b05ea3015c5703b7d5c53f', '[\"*\"]', NULL, NULL, '2024-11-09 11:12:08', '2024-11-09 11:12:08'),
(342, 'App\\Models\\User', 8, 'auth_token', '55d55d26ded7e8a984282de77cdaed1033f52623dfcef253e7ed8e3cfb5ae173', '[\"*\"]', NULL, NULL, '2024-11-09 11:13:33', '2024-11-09 11:13:33'),
(343, 'App\\Models\\User', 8, 'auth_token', 'f75c07676b60ca53cca3849bf4e5097e4c9483fea1fe0bcedc0f52587d5f41d3', '[\"*\"]', NULL, NULL, '2024-11-09 11:13:33', '2024-11-09 11:13:33'),
(344, 'App\\Models\\User', 8, 'auth_token', '8c1bc56ff53142b6035d8b8f7ffa384c2f6f594d8e3fdfccf4417482c2b0493a', '[\"*\"]', NULL, NULL, '2024-11-09 11:15:00', '2024-11-09 11:15:00'),
(345, 'App\\Models\\User', 8, 'auth_token', 'd28796f75ea0032f48837aee108efbb3715f5c1f09dbff42dd41ffc788d2718b', '[\"*\"]', '2024-11-09 11:17:37', NULL, '2024-11-09 11:15:00', '2024-11-09 11:17:37'),
(346, 'App\\Models\\User', 8, 'auth_token', 'f4c4c5423f8bb8d3c999e0e75973a282d4e984ae7707f62a2921059c80861dd8', '[\"*\"]', NULL, NULL, '2024-11-09 11:21:38', '2024-11-09 11:21:38'),
(347, 'App\\Models\\User', 8, 'auth_token', 'eae57d6445cec6bcd64fa5ebd470a824f64baad3dd3a7034f93fee72b9d39b93', '[\"*\"]', '2024-11-09 11:21:47', NULL, '2024-11-09 11:21:38', '2024-11-09 11:21:47'),
(348, 'App\\Models\\User', 8, 'auth_token', '277488b1c3224fb8c52a12007e69d143602c6f4dfcc28355cf9fa0fdcbf2ff60', '[\"*\"]', NULL, NULL, '2024-11-09 11:24:00', '2024-11-09 11:24:00'),
(349, 'App\\Models\\User', 8, 'auth_token', 'dde58f9aae3726a5ed29bd84057600fa69ff3e1f321c6409510be77fcaa02093', '[\"*\"]', NULL, NULL, '2024-11-09 11:24:00', '2024-11-09 11:24:00'),
(350, 'App\\Models\\User', 8, 'auth_token', '23c3807b80ca56f63849afb08f81ac5dcc30e0952fa97e50c57b4d2676818bc7', '[\"*\"]', NULL, NULL, '2024-11-09 11:25:38', '2024-11-09 11:25:38'),
(351, 'App\\Models\\User', 8, 'auth_token', 'c14766358e279e8ce12e68f38bdc4e2272862c5ebdfb5ffeac4195f5424ff9ae', '[\"*\"]', NULL, NULL, '2024-11-09 11:25:38', '2024-11-09 11:25:38'),
(352, 'App\\Models\\User', 8, 'auth_token', '06f978119766d49ec91c7199bdb5b62febffac6d28b0325477f4285840c56a1d', '[\"*\"]', NULL, NULL, '2024-11-09 11:32:24', '2024-11-09 11:32:24'),
(353, 'App\\Models\\User', 8, 'auth_token', '3d1034bd4beae58c46342eb668cd10c4dd102951bc299f1c59a7e9fd6be44d56', '[\"*\"]', '2024-11-09 12:01:13', NULL, '2024-11-09 11:32:25', '2024-11-09 12:01:13'),
(354, 'App\\Models\\User', 8, 'auth_token', 'b6e4cc2c6271fad6093f478f41e76ad2f87b5310872608ec1fbb5c8acfced1a7', '[\"*\"]', NULL, NULL, '2024-11-09 12:09:02', '2024-11-09 12:09:02'),
(355, 'App\\Models\\User', 8, 'auth_token', '8eba1369a9f2be6253488a855e60e984a8c71bf423410e88b17d656bd5266d84', '[\"*\"]', '2024-11-09 12:12:00', NULL, '2024-11-09 12:09:02', '2024-11-09 12:12:00'),
(356, 'App\\Models\\User', 8, 'auth_token', 'dd46ac9ff8c7eb94f3343560234ca9463c3bf00d22c3a9a7eb50752989ed180c', '[\"*\"]', NULL, NULL, '2024-11-09 12:25:10', '2024-11-09 12:25:10'),
(357, 'App\\Models\\User', 8, 'auth_token', '2f030f8618caa62d39b03eebb0585276bc49389ffba39b17e519f0531d2273f3', '[\"*\"]', '2024-11-09 12:26:50', NULL, '2024-11-09 12:25:11', '2024-11-09 12:26:50'),
(358, 'App\\Models\\User', 8, 'auth_token', '160ddcae043c2b5d827d41ad45342522f2e6401350697edc776cd429196f8cba', '[\"*\"]', NULL, NULL, '2024-11-09 12:31:43', '2024-11-09 12:31:43'),
(359, 'App\\Models\\User', 8, 'auth_token', '4bc24340331511de2ba6d4276f53f26dd8efbace3ca250d8283a8f8a03de6399', '[\"*\"]', NULL, NULL, '2024-11-09 12:31:44', '2024-11-09 12:31:44'),
(360, 'App\\Models\\User', 8, 'auth_token', 'f2280ce8150053cf7418d4d3cfbd61736a8f9c5415625dedf1ad58d0a154bf31', '[\"*\"]', NULL, NULL, '2024-11-09 12:34:06', '2024-11-09 12:34:06'),
(361, 'App\\Models\\User', 8, 'auth_token', 'b4a621e42efedb69fd20c791232618e9bfd87804eb66b203cc4c3e595bacf79e', '[\"*\"]', '2024-11-09 12:36:35', NULL, '2024-11-09 12:34:06', '2024-11-09 12:36:35'),
(362, 'App\\Models\\User', 8, 'auth_token', '815378c42fb0982d6bec08b7ece4a36ddf82c0fa60dbbc3f2a20ee21042ad975', '[\"*\"]', NULL, NULL, '2024-11-12 21:38:18', '2024-11-12 21:38:18'),
(363, 'App\\Models\\User', 8, 'auth_token', '75391f12879b9f70f9e87572b843c97d5cedb8b5ef4a66b3c011240e5d152c16', '[\"*\"]', NULL, NULL, '2024-11-12 21:38:18', '2024-11-12 21:38:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `idProduk` bigint(20) UNSIGNED NOT NULL,
  `idWarung` int(10) UNSIGNED NOT NULL,
  `namaProduk` varchar(255) NOT NULL,
  `gambarProduk` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`idProduk`, `idWarung`, `namaProduk`, `gambarProduk`, `deskripsi`, `status`, `harga`, `created_at`, `updated_at`) VALUES
(6, 5, 'ddddada', '1731184465.jpg', 'ddddada', 'ddddada', 222255, '2024-11-09 11:17:36', '2024-11-09 12:34:25'),
(8, 5, 'd', '1731184010.png', '1', '13', 2, '2024-11-09 11:32:45', '2024-11-09 12:26:50'),
(9, 5, 'adakalik', '1731182291.jpg', 'vvvv', 'adajalik', 25222, '2024-11-09 11:58:11', '2024-11-09 11:58:11'),
(10, 7, 'ini', '1731183043.jpg', 'ada', 'ada', 90000, '2024-11-09 12:10:43', '2024-11-09 12:10:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `idReservasi` int(10) UNSIGNED NOT NULL,
  `idWarung` int(10) UNSIGNED NOT NULL,
  `idBoking` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `tanggalPemesanan` date NOT NULL,
  `waktuPemesanan` time NOT NULL,
  `instruksi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reservasi`
--

INSERT INTO `reservasi` (`idReservasi`, `idWarung`, `idBoking`, `status`, `tanggalPemesanan`, `waktuPemesanan`, `instruksi`, `created_at`, `updated_at`) VALUES
(5, 5, 6, 'pending', '2024-11-07', '08:19:00', 'dadadadad', '2024-11-05 12:19:32', '2024-11-05 12:19:32'),
(6, 5, 7, 'pending', '2024-11-15', '04:25:00', 'sdfsf', '2024-11-05 12:23:09', '2024-11-05 12:23:09'),
(7, 7, 8, 'pending', '2024-11-12', '07:36:00', 'ada', '2024-11-09 12:36:07', '2024-11-09 12:36:07'),
(8, 5, 9, 'pending', '2024-10-31', '04:38:00', 'fff', '2024-11-09 12:36:29', '2024-11-09 12:36:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `idUser` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `noTelp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`idUser`, `nama`, `password`, `noTelp`, `email`, `role`, `updated_at`, `created_at`) VALUES
(1, 'asdadadad', '$2y$10$.TlO8bjGMe0d6gXqYZH2t.lT9llvtTSPftjL73PH2jpxqAdJk0GEy', '252525252', 'crossbyxd052@gmail.com', 'pelanggan', '2024-10-28 04:52:27', '2024-10-28 04:52:27'),
(2, 'afhafafhaf', '$2y$10$KW2.fAvNtnI7NPw3Dc1o8.nlqeKxJS.gfAS6WLvgqBhe.yEfBo6xm', '5825075', 'rifaiar252@gmail.com', 'pelanggan', '2024-10-28 04:58:28', '2024-10-28 04:58:28'),
(3, 'afafh', '$2y$10$kCL53FdLSd9Lv2zj2Uv/5.avoAVTJUJUYdoB2vF5utCbZK/oiRifO', '0825252525', 'githubprojekg@gmail.com', 'pelanggan', '2024-10-28 05:00:24', '2024-10-28 05:00:24'),
(4, 'Rifai Ananda Ramadhana', '$2y$10$etrXHvNb2.JRqbhP.EY0puB.mKjna8.lm8Q1.1zMgOP0DNBOqyX8K', '2255', 'backudin2@gmail.com', 'pelanggan', '2024-10-28 08:13:47', '2024-10-28 08:13:47'),
(5, 'dsa', '$2y$10$ScCdg4PgEzTz5jOv6.MkOesrQHNUUtSofDtmraE6Eipype3EmSB9i', '2525', 'dsa@gmail.com', 'pelanggan', '2024-10-28 08:34:32', '2024-10-28 08:34:32'),
(6, 's', '$2y$10$MeTq3gKTVcKMKu5Y9mSe.O967sJ6DuOGDZbi0fpp/ehtjcSlj.Gdq', '2255', 's@gmail.com', 'pelanggan', '2024-10-28 23:24:36', '2024-10-28 23:24:36'),
(8, 'rifai', '$2y$10$IDb5m39j4VuDC8nZUYpL5.ITI6ztZs7kZWCBhiMhYb462tOQxs/uC', '22', 'f@gmail.com', 'admin', '2024-10-29 01:41:17', '2024-10-29 01:41:17'),
(9, 'asd', '$2y$10$yk5GS/jbFL4i7.TcvCOOWOttFQ/EjnDPqvz7QgwLGek/YoTwKfNQq', '22552525252525', 'asd@gmail.com', 'pelanggan', '2024-11-05 12:18:43', '2024-11-05 12:18:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warung`
--

CREATE TABLE `warung` (
  `idWarung` int(10) UNSIGNED NOT NULL,
  `idUser` int(10) UNSIGNED NOT NULL,
  `namaWarung` varchar(255) NOT NULL,
  `gambarWarung` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `warung`
--

INSERT INTO `warung` (`idWarung`, `idUser`, `namaWarung`, `gambarWarung`, `deskripsi`, `status`, `created_at`, `updated_at`, `harga`) VALUES
(5, 8, 'babayasdad', '1731181622.jpg', 'asdadffff', 'adaasfaddadad', '2024-10-29 04:16:18', '2024-11-09 11:47:02', 255500022),
(7, 8, 'warng ayam', '1731182974.png', 'asdad', 'hadir', '2024-10-29 06:28:08', '2024-11-09 12:09:34', 21111),
(9, 8, 'fff', '1731180793.png', 'adsad', 'dada', '2024-11-09 11:33:13', '2024-11-09 11:33:13', 22222),
(10, 8, 'tets', '1731181653.png', 'ada', 'test', '2024-11-09 11:47:33', '2024-11-09 11:47:33', 222),
(11, 8, 'warng nasgor', '1731183009.png', 'ada', 'ada saha', '2024-11-09 12:10:10', '2024-11-09 12:10:10', 29000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `boking`
--
ALTER TABLE `boking`
  ADD PRIMARY KEY (`idBoking`),
  ADD KEY `boking_iduser_foreign` (`idUser`),
  ADD KEY `boking_idwarung_foreign` (`idWarung`);

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
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`),
  ADD KEY `produk_idwarung_foreign` (`idWarung`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`idReservasi`),
  ADD KEY `reservasi_idwarung_foreign` (`idWarung`),
  ADD KEY `reservasi_idboking_foreign` (`idBoking`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- Indeks untuk tabel `warung`
--
ALTER TABLE `warung`
  ADD PRIMARY KEY (`idWarung`),
  ADD KEY `warung_iduser_foreign` (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `boking`
--
ALTER TABLE `boking`
  MODIFY `idBoking` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `idProduk` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `idReservasi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `warung`
--
ALTER TABLE `warung`
  MODIFY `idWarung` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `boking`
--
ALTER TABLE `boking`
  ADD CONSTRAINT `boking_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE,
  ADD CONSTRAINT `boking_idwarung_foreign` FOREIGN KEY (`idWarung`) REFERENCES `warung` (`idWarung`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_idwarung_foreign` FOREIGN KEY (`idWarung`) REFERENCES `warung` (`idWarung`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `reservasi_idboking_foreign` FOREIGN KEY (`idBoking`) REFERENCES `boking` (`idBoking`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservasi_idwarung_foreign` FOREIGN KEY (`idWarung`) REFERENCES `warung` (`idWarung`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `warung`
--
ALTER TABLE `warung`
  ADD CONSTRAINT `warung_iduser_foreign` FOREIGN KEY (`idUser`) REFERENCES `users` (`idUser`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
