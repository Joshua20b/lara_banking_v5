-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 07:29 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online-banking-4-beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `registration_token` varchar(255) DEFAULT NULL,
  `dial_code` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `live_chat` text DEFAULT NULL,
  `live_chat_id` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_encryption` varchar(255) DEFAULT NULL,
  `btc_address` varchar(255) DEFAULT NULL,
  `btc_qr_code` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `uuid`, `name`, `email`, `password`, `status`, `registration_token`, `dial_code`, `phone`, `address`, `live_chat`, `live_chat_id`, `smtp_user`, `smtp_password`, `smtp_host`, `smtp_port`, `smtp_encryption`, `btc_address`, `btc_qr_code`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'e6737721-5029-3db9-aefe-0a40b77bebc6', 'amaya64', 'rippin.urban@example.net', '$2y$12$f3poFfwA1bjsrExd1yQ8IuwQs5n7DWLEJhxCZUssLoEH95RNyWl22', 1, 'RB-21', '+54', '08160729842', '4823 Mollie StationLake Sallyport, PA 34439-7551', '<!-- Smartsupp Live Chat script -->\n<script type=\"text/javascript\">\nvar _smartsupp = _smartsupp || {};\n_smartsupp.key = \'19e02f1d62d8148d038d4149ec259ce7a475988b\';\nwindow.smartsupp||(function(d) {\n  var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];\n  s=d.getElementsByTagName(\'script\')[0];c=d.createElement(\'script\');\n  c.type=\'text/javascript\';c.charset=\'utf-8\';c.async=true;\n  c.src=\'https://www.smartsuppchat.com/loader.js?\';s.parentNode.insertBefore(c,s);\n})(document);\n</script>\n<noscript> Powered by <a href=“https://www.smartsupp.com” target=“_blank”>Smartsupp</a></noscript>', '891c4fc4-3418-34c8-b68d-dcdc67919b99', 'examsoftware4@gmail.com', 'pcfsfzyxezuffcvy', 'smtp.gmail.com', '465', 'ssl', 'cdabe0c6-911c-326e-bf25-188357835e56', '1718993517_1514763061.png', 'zMZPm7fIGoyV4YjL6hd3d7NLZyH8QNo0EPZPz4fHzxIRiPJbyrX0d5bOCeNt', '2024-06-21 10:10:26', '2024-06-21 17:23:35'),
(2, 'c34a9ef1-0b68-3cbf-9c3f-c898391388a7', 'ELite Saving Online Bank', 'admin@gmail.com', '$2y$12$qc47vV9hJ6sO6QYHrr02SOXL6WXBZ8qBlo25DRXdETGBIPQMMyjRO', 1, 'RB-31', '+234', '08160729842', '7115 Robel Wall Suite 758Paytonstad, ME 45847-0510', '<script type=\"text/javascript\">\r\n    (function(w, d, v3) {\r\n        w.chaportConfig = {\r\n            appId: \'664964a53bbadf6aea1daa86\'\r\n        };\r\n\r\n        if (w.chaport) return;\r\n        v3 = w.chaport = {};\r\n        v3._q = [];\r\n        v3._l = {};\r\n        v3.q = function() {\r\n            v3._q.push(arguments)\r\n        };\r\n        v3.on = function(e, fn) {\r\n            if (!v3._l[e]) v3._l[e] = [];\r\n            v3._l[e].push(fn)\r\n        };\r\n        var s = d.createElement(\'script\');\r\n        s.type = \'text/javascript\';\r\n        s.async = true;\r\n        s.src = \'https://app.chaport.com/javascripts/insert.js\';\r\n        var ss = d.getElementsByTagName(\'script\')[0];\r\n        ss.parentNode.insertBefore(s, ss)\r\n    })(window, document);\r\n</script>', '52144bd8-2a65-3d01-b3dc-6b96e6a83719', '8eba1b62b2a97d', '2a8ae793797dd0', 'sandbox.smtp.mailtrap.io', '2525', 'tls', '71032e53-650a-3a4d-bf66-61cd90ed26e5', 'ed37f029-9f0f-31ee-882a-fd37371f18d9', '3IxCwzeMh1DJjmRB3KizVIyBzrkrbZCZfH8bxvhU7DLrnb3QAim9TY0hdrDG', '2024-06-21 10:10:26', '2024-07-02 12:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `residential_address` varchar(255) NOT NULL,
  `registration_token` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT '2024-06-21',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `proof` varchar(255) DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvv` varchar(255) DEFAULT NULL,
  `card_expiry_date` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `income` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `uuid`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '987f3711-2669-3fe3-a829-0023a7c26a51', 'ELite Saving Online Bank', 'master@gmail.com', '$2y$12$mBc9ZWUABqPGsdMJzEdKEuuUYhmEW8waAG78efsN4u0rYkpG2yfq2', '2MbRPVPQPnJCCkewm45FrQP1CXENpSFkyDUJWppAkDy4Oq3cfrn2uEhROmua', '2024-06-21 10:10:27', '2024-07-02 12:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(68, '0001_01_01_000000_create_users_table', 1),
(69, '0001_01_01_000001_create_cache_table', 1),
(70, '0001_01_01_000002_create_jobs_table', 1),
(71, '2024_06_17_094404_create_admins_table', 1),
(72, '2024_06_17_094737_create_masters_table', 1),
(73, '2024_06_18_142211_create_transfers_table', 1),
(74, '2024_06_18_142448_create_transactions_table', 1),
(75, '2024_06_18_142719_create_notifications_table', 1),
(76, '2024_06_18_143116_create_deposits_table', 1),
(77, '2024_06_18_143909_create_verification_codes_table', 1),
(78, '2024_06_18_143948_create_transfer_codes_table', 1),
(79, '2024_06_19_222234_create_loans_table', 1),
(80, '2024_06_20_083219_create_contacts_table', 1),
(81, '2024_06_20_091543_create_cards_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notification` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `uuid`, `type`, `notification`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'cf692281-e939-4c04-b2f2-fcdb2cc8daf2', 'CREDIT', 'Realtime Bank Acct holder:Test User CREDIT: ₦10,000.00 Desc:Profit for trade DT:2024-06-21 Available Bal:₦14,841.67 Status: Successful', 2, '2024-06-21 10:24:13', '2024-06-21 10:24:13'),
(2, '4fd541ae-7cc0-4f3f-aadc-72c5e4e3b3d0', 'CREDIT', 'Realtime Bank Acct holder:Claudia Ankunding CREDIT: ₩50,000.00 Desc:Profit for trade DT:2024-06-21 Available Bal:₩50,358.67 Status: Successful', 1, '2024-06-21 10:32:46', '2024-06-21 10:32:46'),
(3, '6c37d336-e8f2-47eb-aa13-fc4c9f9606fb', 'CREDIT', 'Realtime Bank Acct holder:Claudia Ankunding CREDIT: ₩10,000.00 Desc:Profit for trade DT:2024-06-21 Available Bal:₩60,358.67 Status: Successful', 1, '2024-06-21 10:38:37', '2024-06-21 10:38:37'),
(4, 'e9c07a3a-4cf4-47b9-aaee-8b5e911e871c', 'CREDIT', 'Realtime Bank Acct holder:Claudia Ankunding CREDIT: ₩10,000.00 Desc:Cost of Deduction DT:2024-06-21 Available Bal:₩70,358.67 Status: Successful', 1, '2024-06-21 10:40:30', '2024-06-21 10:40:30'),
(5, '53a50088-ec86-4aff-b8cd-79c482ac2ca9', 'Quality Maintenance', 'This is to inform you that your acount will be disabled in 40days time lol 😂😂😂', 1, '2024-06-21 10:42:22', '2024-06-21 10:42:22'),
(6, '8a450e2f-fd70-457e-a2c5-ad132a916836', 'DEBIT', 'Realtime Bank Acct holder:Test User DEBIT: ₦560.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-06-21 Available Bal:₦14,281.67 Status: Successful', 2, '2024-06-21 21:11:57', '2024-06-21 21:11:57'),
(7, 'a1d11ae1-9cee-491a-8de9-0c3f1b66f9d1', 'DEBIT', 'Realtime Bank Acct holder:Claudia Ankunding DEBIT: ₩4,000.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-06-22 Available Bal:₩66,358.67 Status: Successful', 1, '2024-06-22 05:22:24', '2024-06-22 05:22:24'),
(8, '592c73e0-920e-4ba3-89b5-0b9235b89170', 'DEBIT', 'Realtime Bank Acct holder:Claudia Ankunding DEBIT: ₩3,000.00 Desc:Profit for trade DT:2024-06-22 Available Bal:₩63,358.67 Status: Successful', 1, '2024-06-22 06:05:51', '2024-06-22 06:05:51'),
(9, '061db056-71a8-4f4b-b2d1-30523a92ca2e', 'DEBIT', 'Realtime Bank Acct holder:Test User DEBIT: ₦10,000.00 Desc:Electronic TF: Money Gram/ DT:2024-06-23 Available Bal:₦14,281.67 Status: Failed', 2, '2024-06-23 15:34:02', '2024-06-23 15:34:02'),
(10, 'af9c3dd6-d750-40df-9b0d-9e1c7990f56d', 'DEBIT', 'Realtime Bank Acct holder:Claudia Ankunding DEBIT: ₩500.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-06-23 Available Bal:₩62,858.67 Status: Successful', 1, '2024-06-23 15:40:32', '2024-06-23 15:40:32'),
(11, '10441e7d-15a1-4b12-bec3-d6b6431959bf', 'DEBIT', 'Realtime Bank Acct holder:Claudia Ankunding DEBIT: ₩500.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-06-23 Available Bal:₩62,358.67 Status: Successful', 1, '2024-06-23 15:43:54', '2024-06-23 15:43:54'),
(12, '58e7ca12-9e23-4745-9283-c6949c10171e', 'DEBIT', 'Realtime Bank Acct holder:Test User DEBIT: ₦500.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-07-02 Available Bal:₦14,281.67 Status: Failed', 2, '2024-07-02 09:13:54', '2024-07-02 09:13:54'),
(13, 'f9e78067-db24-42d6-8c55-4d82a4f0acda', 'DEBIT', 'Realtime Bank Acct holder:Test User DEBIT: ₦300.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-07-02 Available Bal:₦13,981.67 Status: Successful', 2, '2024-07-02 10:03:43', '2024-07-02 10:03:43'),
(14, '01af474f-2ce3-46ec-b51c-fee7415ffef1', 'DEBIT', 'Realtime Bank Acct holder:Test User DEBIT: ₦500.00 Desc:Profit for trade DT:2024-07-02 Available Bal:₦13,481.67 Status: Successful', 2, '2024-07-02 10:18:21', '2024-07-02 10:18:21'),
(15, '316b0fa8-42fb-48aa-9eba-d9604f368c4a', 'CREDIT', 'ELite Saving Online Bank Acct holder:Micheal King CREDIT: $30,000,000.00 Desc:Profit for trade DT:2024-07-02 Available Bal:$30,000,000.00 Status: Successful', 4, '2024-07-02 12:56:33', '2024-07-02 12:56:33'),
(16, '4ff1906b-2292-4b0f-859d-b7a7c0e96e0b', 'CREDIT', 'ELite Saving Online Bank Acct holder:Micheal King CREDIT: $10,000.00 Desc:Profit for income DT:2024-07-03 Available Bal:$30,010,000.00 Status: Successful', 4, '2024-07-03 17:46:30', '2024-07-03 17:46:30'),
(17, 'bc3f3209-c486-4ee1-bdaf-92c199ee8a47', 'CREDIT', 'Elite Saving Online Bank Acct holder:Micheal King CREDIT: $30,000,000.00 Desc:Loan DT:2024-07-03 Available Bal:$30,000,000.00 Status: Successful', 4, '2024-07-03 17:53:29', '2024-07-03 17:53:29'),
(18, '9801d159-a4cf-49e0-b846-41d5282137df', 'CREDIT', 'Elite Saving Online Bank Acct holder:Micheal King CREDIT: $50,000.00 Desc:Loan Again DT:2024-07-03 Available Bal:$30,000,000.00 Status: Successful', 4, '2024-07-03 17:54:06', '2024-07-03 17:54:06'),
(19, 'fa1cded0-ba24-4c10-8baf-d91b6de6aeb1', 'DEBIT', 'Elite Saving Online Bank Acct holder:Test User DEBIT: ₦500.00 Desc:Electronic TF: Bitcoin Wallet/ DT:2024-07-03 Available Bal:₦12,981.67 Status: Successful', 2, '2024-07-03 19:19:31', '2024-07-03 19:19:31'),
(20, '536512fb-3145-4b17-86e7-fe745ec9aa92', 'CREDIT', 'Elite Saving Online Bank Acct holder:Test User CREDIT: ₦50,000,000.00 Desc:Value Added Tax DT:2024-05-06 Available Bal:₦50,012,981.67 Status: Successful', 2, '2024-07-04 04:08:05', '2024-07-04 04:08:05'),
(21, '6e98285b-7d1d-4fdc-9d02-0359bef5e11f', 'CREDIT', 'Elite Saving Online Bank Acct holder:Test User CREDIT: ₦50,000,000.00 Desc:Value Added Tax DT:2024-01-29 Available Bal:₦50,012,981.67 Status: Successful', 2, '2024-07-04 04:08:36', '2024-07-04 04:08:36'),
(22, '3039e520-20d2-4664-8469-e1b60963e300', 'CREDIT', 'Elite Saving Online Bank Acct holder:Test User CREDIT: ₦89,000.00 Desc:One Time Password DT:2023-10-16 Available Bal:₦50,012,981.67 Status: Successful', 2, '2024-07-04 04:09:00', '2024-07-04 04:09:00'),
(23, '44da386e-6362-4489-8d0e-ca1e9ea4f2ea', 'DEBIT', 'Elite Saving Online Bank Acct holder:Test User DEBIT: ₦40,000,000.00 Desc:One Time Password DT:2024-07-01 Available Bal:₦50,012,981.67 Status: Successful', 2, '2024-07-04 04:09:49', '2024-07-04 04:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('06i76IrdfAsVxtluQo5UIX6lIc7atckbS2F2NgFx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnhsN25pUkpFaVd5T2FUV1RjaVA3M3NqZHpjejhWMW9lUDZubzZENCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726849659),
('8NnPVraQHVINBgGpa2jOYZNtQtAnAPBhyNk9wOCh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:127.0) Gecko/20100101 Firefox/127.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSG9Lakw2UmNWTDIyOGVaSlNBSVlUOU9yN0Q4QkpXQTM1dDFyZHBpSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTE6ImxvZ2luX3VzZXJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO30=', 1720070452),
('bs4OjLipp1g2bUKeIrbc5GFaTzGNq4VHuLGKigbm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36 Edg/127.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmRpOHc2VU5nS2tVZlk5MXpGMW04Y2dydGZMRDlQelpiTFdWSlZnYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722787458),
('NbgW3mLI5Do7JzCIqF4xjQsXgqpmBYSImjl2x1gg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMk9lb3J3T0dqNWpwWTFuM1dVU2RVVjNPTDJwdEhvczRhNmlCWUJrRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1726853313),
('qYvdkpSQqXKmsw0YLcdWOkomfNH71GV1MOFSkl6V', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiclV1c2tqczNyYnQ5MjJYV0dPTktwb2ZDdmJpWjN5QzZiaU1nc0Q4YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi91c2Vycy90cmFuc2FjdGlvbi9pbmRleC8zMGIwMTA5ZC1kNTk2LTM5NjQtYjNhMS0xZjRhZWI1OWMyM2IiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1720069790),
('vMlXhmmSiCBSRXNkreKtyVoQIYCToOghMBdd8sqo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienA0aGx0SjNQU3V3R3FPOWNla1FIdWxNN0RCTzJvQkxXVmFtMDg3WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXJ2aWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722787472);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `current_balance` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `uuid`, `user_id`, `type`, `description`, `amount`, `current_balance`, `date`, `time`, `reference_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'c7185ed6-a231-4ac0-8d0b-868341481139', 2, 'CREDIT', 'Profit for trade', '10000', '14841.67', '2024-06-21', '11:24:07', '319490731', 1, '2024-06-21 10:24:13', '2024-06-21 10:24:13'),
(2, '133ce6ee-8c1f-44e4-9eaa-39c130452fc0', 1, 'CREDIT', 'Profit for trade', '50000', '50358.67', '2024-06-21', '11:32:39', '531953404', 1, '2024-06-21 10:32:46', '2024-06-21 10:32:46'),
(3, '89977363-969c-4075-b715-0047edef2af8', 1, 'CREDIT', 'Profit for trade', '10000', '60358.67', '2024-06-21', '11:38:29', '277264914', 1, '2024-06-21 10:38:37', '2024-06-21 10:38:37'),
(4, '0b84244a-10ba-4cc5-aa58-04fa48265626', 1, 'CREDIT', 'Cost of Deduction', '10000', '70358.67', '2024-06-21', '11:40:25', '467562186', 1, '2024-06-21 10:40:30', '2024-06-21 10:40:30'),
(5, '6deeb287-53cf-4acb-b686-7573eb78b5f0', 2, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '560', '14281.67', '2024-06-21', '22:11:57', '640031012', 1, '2024-06-21 21:11:57', '2024-06-21 21:11:57'),
(6, 'b940b7c5-880f-4f04-ab03-322cc0f05ebd', 1, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '4000', '66358.67', '2024-06-22', '06:22:24', '832060446', 1, '2024-06-22 05:22:24', '2024-06-22 05:22:24'),
(7, '74dfb359-4acd-4aa8-9c05-ced87426d98b', 1, 'DEBIT', 'Profit for trade', '3000', '63358.67', '2024-06-22', '07:05:51', '387546197', 1, '2024-06-22 06:05:51', '2024-06-22 06:05:51'),
(8, 'e4421bdd-a4d1-4895-a38c-90f57fa1e4bc', 2, 'DEBIT', 'Electronic TF: Money Gram/', '10000', '14281.67', '2024-06-23', '16:34:02', '861329183', 2, '2024-06-23 15:34:02', '2024-06-23 15:34:02'),
(9, 'a99e4ef4-d472-4e33-803d-40954cf3ae06', 1, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '500', '62858.67', '2024-06-23', '16:40:32', '952104331', 1, '2024-06-23 15:40:32', '2024-06-23 15:40:32'),
(10, '0a271462-016d-463e-ae7e-af6bb88c9a4b', 1, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '500', '62358.67', '2024-06-23', '16:43:54', '487512924', 1, '2024-06-23 15:43:54', '2024-06-23 15:43:54'),
(11, 'c4b5b52a-ab89-4e87-9211-9f36114545ba', 2, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '500', '14281.67', '2024-07-02', '10:13:54', '835970533', 2, '2024-07-02 09:13:54', '2024-07-02 09:13:54'),
(12, '16b58a79-71a9-4c42-93a5-c6edd447d9a1', 2, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '300', '13981.67', '2024-07-02', '11:03:43', '455694733', 1, '2024-07-02 10:03:43', '2024-07-02 10:03:43'),
(13, '9721fb7e-2d88-40da-ac8e-88ed966a6bb2', 2, 'DEBIT', 'Profit for trade', '500', '13481.67', '2024-07-02', '11:18:21', '512672997', 1, '2024-07-02 10:18:21', '2024-07-02 10:18:21'),
(14, 'f8b5d7b3-56d1-4ab4-a29b-4fa49aa141f6', 4, 'CREDIT', 'Profit for trade', '30000000', '30000000', '2024-07-02', '13:56:28', '354682201', 1, '2024-07-02 12:56:33', '2024-07-02 12:56:33'),
(15, '2d978dbb-271e-4097-a09e-907f30df8cca', 4, 'CREDIT', 'Profit for income', '10000', '30010000', '2024-07-03', '18:46:24', '141980274', 1, '2024-07-03 17:46:30', '2024-07-03 17:46:30'),
(16, 'f31ab868-73e5-472d-a23f-b09302d03d76', 4, 'CREDIT', 'Loan', '30000000', '30000000.00', '2024-07-03', '18:53:29', '103906428', 1, '2024-07-03 17:53:29', '2024-07-03 17:53:29'),
(17, '77ebf96a-6dff-4dc3-8800-9757bd029409', 4, 'CREDIT', 'Loan Again', '50000', '30000000.00', '2024-07-03', '18:54:06', '880199549', 1, '2024-07-03 17:54:06', '2024-07-03 17:54:06'),
(18, '78f036de-bc51-44cb-94dd-4de0812c2147', 2, 'DEBIT', 'Electronic TF: Bitcoin Wallet/', '500', '12981.67', '2024-07-03', '20:19:31', '831028979', 1, '2024-07-03 19:19:31', '2024-07-03 19:19:31'),
(19, 'ad256e44-de05-473c-94de-1c6eb88115eb', 2, 'CREDIT', 'Value Added Tax', '50000000', '50012981.67', '2024-05-06', '05:07:57', '892907787', 1, '2024-07-04 04:08:05', '2024-07-04 04:08:05'),
(20, '5a9a840f-6679-496c-b57a-a6c03298d445', 2, 'CREDIT', 'Value Added Tax', '50000000', '50012981.67', '2024-01-29', '05:08:36', '912917712', 1, '2024-07-04 04:08:36', '2024-07-04 04:08:36'),
(21, '53174806-ec9f-4c20-b88e-c22ef44e56d2', 2, 'CREDIT', 'One Time Password', '89000', '50012981.67', '2023-10-16', '05:09:00', '901079482', 1, '2024-07-04 04:09:00', '2024-07-04 04:09:00'),
(22, '3b2f08ed-bc80-4ea3-90f9-1c09ecbf30b1', 2, 'DEBIT', 'One Time Password', '40000000', '50012981.67', '2024-07-01', '05:09:49', '196275995', 1, '2024-07-04 04:09:49', '2024-07-04 04:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `iban_code` varchar(255) DEFAULT NULL,
  `routing_number` varchar(255) DEFAULT NULL,
  `withdrawal_method` varchar(255) DEFAULT NULL,
  `beneficiary` varchar(255) DEFAULT NULL,
  `reference_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `uuid`, `user_id`, `bank_name`, `account_number`, `account_name`, `amount`, `description`, `swift_code`, `iban_code`, `routing_number`, `withdrawal_method`, `beneficiary`, `reference_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, '9861f90a-15c9-42f6-a59a-60d5a93306b3', 2, NULL, NULL, NULL, '560', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '640031012', 'Electronic Transfer', 1, '2024-06-21 21:11:46', '2024-06-21 21:11:57'),
(2, 'cb477ecf-1ae7-41b4-9b53-911062e98aa1', 1, NULL, NULL, NULL, '4000', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '832060446', 'Electronic Transfer', 1, '2024-06-22 05:22:16', '2024-06-22 05:22:24'),
(3, '6a099953-563e-41c7-89de-e6ace1dd2f43', 1, 'Wells Fargo & Co.', '1012394758', 'Modesta Windlers', '4000', 'Profit for trade', NULL, NULL, '123455', NULL, NULL, '992757625', 'Direct Bank Transfer', 0, '2024-06-22 05:56:45', '2024-06-22 05:56:45'),
(4, '47e96b77-9282-43dc-9074-111215a931f7', 1, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '948492825', 'Electronic Transfer', 0, '2024-06-22 05:59:33', '2024-06-22 05:59:33'),
(5, 'c428e152-f1be-46bd-aff1-714fcb4510f4', 1, 'Wells Fargo & Co.', '1012394758', 'Modesta Windlers', '3000', 'Profit for trade', NULL, NULL, NULL, NULL, NULL, '387546197', 'Direct Bank Transfer', 1, '2024-06-22 06:05:31', '2024-06-22 06:05:51'),
(6, '818217d2-123d-4388-ad5b-1832f1375839', 2, NULL, NULL, NULL, '10000', NULL, NULL, NULL, NULL, 'Money Gram', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '861329183', 'Electronic Transfer', 2, '2024-06-23 15:31:31', '2024-06-23 15:34:02'),
(7, 'd77fdea8-7320-4c04-98e6-5108e29531b8', 1, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '952104331', 'Electronic Transfer', 1, '2024-06-23 15:40:19', '2024-06-23 15:40:32'),
(8, 'ff5e9630-2fbf-49eb-82cf-e4ab8714d2d6', 1, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '487512924', 'Electronic Transfer', 1, '2024-06-23 15:42:15', '2024-06-23 15:43:54'),
(9, '8a3ff26a-1015-4e9f-87e6-6c6d62cb5808', 2, NULL, NULL, NULL, '560', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '333855476', 'Electronic Transfer', 0, '2024-07-01 23:48:45', '2024-07-01 23:48:45'),
(10, '4fda0ccf-899b-4e4a-9880-5d72f143801b', 2, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '835970533', 'Electronic Transfer', 2, '2024-07-02 09:11:17', '2024-07-02 09:13:54'),
(11, 'cf0bca58-b79b-4a5f-95c2-dd3a69879d06', 2, NULL, NULL, NULL, '300', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '455694733', 'Electronic Transfer', 1, '2024-07-02 09:20:49', '2024-07-02 10:03:43'),
(12, '7d50979f-03cc-4dd0-94e5-63da42a56294', 2, 'Wells Fargo & Co.', '1012394758', 'Modesta Windlers', '500', 'Profit for trade', NULL, NULL, NULL, NULL, NULL, '512672997', 'Direct Bank Transfer', 1, '2024-07-02 10:07:52', '2024-07-02 10:18:21'),
(13, '77077873-c6bd-4cfe-986b-c5a5660c882b', 2, NULL, NULL, NULL, '500', NULL, NULL, NULL, NULL, 'Bitcoin Wallet', '1Lbcfr7sAHTD9CgdQo3HTMTkV8LK4ZnX71', '831028979', 'Electronic Transfer', 1, '2024-07-03 19:17:33', '2024-07-03 19:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_codes`
--

CREATE TABLE `transfer_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `verification_code_id` varchar(255) NOT NULL,
  `transfer_reference_id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfer_codes`
--

INSERT INTO `transfer_codes` (`id`, `uuid`, `code`, `verification_code_id`, `transfer_reference_id`, `user_id`, `order_no`, `created_at`, `updated_at`) VALUES
(1, '258724f3-fdad-447c-8afe-39bc7447d7e6', '4449', '1', '861329183', 2, '1', '2024-06-23 15:31:31', '2024-06-23 15:31:31'),
(2, '1fe544c6-718d-4bba-b5cc-b11e8640ad7b', 'aV7VS', '2', '487512924', 1, '1', '2024-06-23 15:42:15', '2024-06-23 15:42:15'),
(3, '2d9c9924-ae63-43df-8697-1a026b90f400', '8730', '1', '333855476', 2, '1', '2024-07-01 23:48:45', '2024-07-01 23:48:45'),
(4, '40a144c7-ee58-41bd-ae13-d13126933bec', '7825', '1', '835970533', 2, '1', '2024-07-02 09:11:17', '2024-07-02 09:11:17'),
(5, 'c175c26a-d0c5-41f4-b011-a8ae9ddb4347', '5417', '3', '835970533', 2, '2', '2024-07-02 09:11:17', '2024-07-02 09:11:17'),
(6, '95c75c8f-a59e-4bde-b5c5-e589b58a0bc6', '57279', '4', '835970533', 2, '3', '2024-07-02 09:11:17', '2024-07-02 09:11:17'),
(7, '99cec00c-b65d-45d1-b8f5-bb4ad8e97d25', 'yYBuy', '5', '835970533', 2, '4', '2024-07-02 09:11:17', '2024-07-02 09:11:17'),
(8, 'afd30e27-9caa-4271-b15f-bc5ddb6db225', '3140', '1', '455694733', 2, '1', '2024-07-02 09:20:49', '2024-07-02 09:20:49'),
(9, '72604157-2db9-4fdc-ad0e-854e919c9ce5', '1488', '3', '455694733', 2, '2', '2024-07-02 09:20:49', '2024-07-02 09:20:49'),
(10, 'aaa10df9-69ff-470a-a80b-9d683f60b13e', '59041', '4', '455694733', 2, '3', '2024-07-02 09:20:49', '2024-07-02 09:20:49'),
(11, '1deeb37f-6441-4c6a-9f62-3fba1bcf57fc', '5TS7B', '5', '455694733', 2, '4', '2024-07-02 09:20:49', '2024-07-02 09:20:49'),
(12, 'f6f461f5-cf15-4b21-b4cf-3d7f1d711b8d', 'TbaGoP', '5', '512672997', 2, '1', '2024-07-02 10:07:52', '2024-07-02 10:07:52'),
(13, 'be718b03-ba59-4e3b-94b4-de6331bade6b', '88058747', '6', '512672997', 2, '2', '2024-07-02 10:07:52', '2024-07-02 10:07:52'),
(14, 'b35d7cec-2278-4497-8702-5ef1e0ef0d45', 'VWWBuz', '7', '512672997', 2, '3', '2024-07-02 10:07:52', '2024-07-02 10:07:52'),
(15, 'f750e309-10c8-4292-9900-a627a4eeb596', 'ZpdGxiok', '8', '512672997', 2, '4', '2024-07-02 10:07:52', '2024-07-02 10:07:52'),
(16, '3f58f9a1-1692-40a6-86d8-c17ee90b2848', 'uxaP9k', '5', '831028979', 2, '1', '2024-07-03 19:17:33', '2024-07-03 19:17:33'),
(17, 'e5cafbc0-6a2e-4a07-98f7-0b7e23b05a35', '91338001', '6', '831028979', 2, '2', '2024-07-03 19:17:33', '2024-07-03 19:17:33'),
(18, '8aae5bfd-5e76-4394-b7b1-825d353ba05a', 'lfTs6J', '7', '831028979', 2, '3', '2024-07-03 19:17:33', '2024-07-03 19:17:33'),
(19, '8c9233b6-19e7-49e0-88c9-5084b3052149', 'UVcBUzoi', '8', '831028979', 2, '4', '2024-07-03 19:17:33', '2024-07-03 19:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_code` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `dial_code` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `professional_status` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_text` varchar(255) DEFAULT NULL,
  `should_login_require_code` tinyint(1) NOT NULL DEFAULT 0,
  `login_code` varchar(255) DEFAULT NULL,
  `should_transfer_fail` tinyint(1) NOT NULL DEFAULT 0,
  `transfer_pin` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) NOT NULL,
  `is_account_verified` tinyint(1) NOT NULL DEFAULT 0,
  `account_state` tinyint(1) NOT NULL DEFAULT 1,
  `account_state_reason` text DEFAULT NULL,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `ledger_balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `income_balance` double NOT NULL DEFAULT 0,
  `loan_balance` double NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `id_front` varchar(255) DEFAULT NULL,
  `id_back` varchar(255) DEFAULT NULL,
  `request_validation` tinyint(1) NOT NULL DEFAULT 0,
  `last_login_time` longtext DEFAULT NULL,
  `last_login_device` longtext DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `first_name`, `last_name`, `email`, `email_verified_at`, `email_code`, `password_reset_token`, `registration_token`, `dob`, `gender`, `marital_status`, `dial_code`, `phone`, `professional_status`, `address`, `state`, `nationality`, `currency`, `account_type`, `password`, `password_text`, `should_login_require_code`, `login_code`, `should_transfer_fail`, `transfer_pin`, `account_number`, `is_account_verified`, `account_state`, `account_state_reason`, `balance`, `ledger_balance`, `income_balance`, `loan_balance`, `image`, `id_front`, `id_back`, `request_validation`, `last_login_time`, `last_login_device`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'aa7bde08-8d5c-3cde-8689-8f143071a077', 'Claudia', 'Ankunding', 'nnabuifefrancis123@gmail.com', '1988-06-30 21:59:58', 'bcd434278dd64c4b39135b761d208279', 'QLjBjlxGeSRvK7DVgzwfq6C7OTcQLqiUGcUphag6Rlj9UukigLmgnVcjnmuCa7xS', 'RB-21', '2001-05-26', 'female', 'widowed', '+674', '12345454545', 'Timing Device Assemblers', '6948 Christiansen Well Suite 726Walkertown, WV 09283', 'Alaska', 'Korea, South', 'South Korean Won-KRW-₩', 'savings', '$2y$12$/K.lwGSSkeZSrTxLn3aS/u93i8eHFURPvTIXSnMoEhM2.aqcBEOV2', NULL, 0, 'adc14740b1eb26d514b63c5a5d8caf2e', 0, '0155', '461001958607', 1, 1, 'Ipsam nisi et enim atque. Distinctio temporibus ipsa et adipisci. Omnis eaque cumque nihil numquam.', 62358.67, 4522.80, 0, 0, NULL, 'https://via.placeholder.com/640x480.png/00ddff?text=laborum', 'https://via.placeholder.com/640x480.png/007711?text=non', 0, '2022-04-17 05:13:08', '1992-07-31 11:54:25', 'WqNZtY7OpCmKcYFSUFg6QSXnQpbsB358RaOAqWg5ze2MsHriIGO4aGYwLCzg', '2024-06-20 23:00:00', '2024-06-23 15:43:54'),
(2, '30b0109d-d596-3964-b3a1-1f4aeb59c23b', 'Test', 'User', 'user@gmail.com', '2024-06-21 10:12:39', 'b3a5006bfedc4e91cf56059a5305e215', 'HFgebu30iSzfHcCkDOT8Qbjsln3hhsRhyUpgk1y4bNHw9iV1CqaCXoBRNzGn8nhZ', 'RB-31', '1991-05-02', 'male', 'single', '+234', '08160729842', 'Precision Dyer', '6624 Buddy PlainDickensview, MD 30881-0721', 'Connecticut', 'Nigeria', 'Nigerian Naira-NGN-₦', 'savings', '$2y$12$hJorSaSgM0IHBgXEFxxIduZ4XJGrGFgYVAXj8QLavRCijw7kEeQne', 'password', 0, '7435', 0, '0155', '258204210333', 1, 1, 'Natus aperiam fugit omnis officiis quia. Est nisi ut ut qui vitae. Eius error occaecati pariatur dolorum libero ipsa.', 50012981.67, 3169.77, 10000000, 89000, '1719845042_398103516.jpg', 'https://via.placeholder.com/640x480.png/00bbee?text=fugiat', 'https://via.placeholder.com/640x480.png/00ddaa?text=suscipit', 0, '2024-08-04 16:04:18', '2008-12-20 10:54:44', 'dDUgMpNyRiXOVNKA2eEzVqZeEERhF95gnZumYCRNN9eDTdvtWT9qfByXZZ97', '2024-06-20 23:00:00', '2024-08-04 15:04:18'),
(3, '786a1a8a-5064-46b6-88e0-e7a232a7ed3c', 'Micheal', 'King', 'kingmicheal744@gmail.com', '2024-06-21 17:32:08', '61497', NULL, 'RB-21', '1999-06-21', 'male', 'married', '+234', '08131949236', 'Student', 'Nnabuife Francis', 'Delta State', 'Greece', 'Greek Drachma-GRD-₯, Δρχ, Δρ', 'savings', '$2y$12$HiTtwtiI5/1G4aJ8wnKN1untk7.QZjbU./4xwufunzHYNAZfLC2fq', NULL, 0, NULL, 0, NULL, '3005810628', 0, 1, NULL, 0.00, 0.00, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, '2024-06-21 17:30:53', '2024-06-21 17:32:08'),
(4, '754722d9-7303-4fc1-ad6d-0b18e57c84c4', 'Micheal', 'King', 'ictprovider322@gmail.com', '2024-07-02 12:55:20', '29906', NULL, 'RB-31', '2000-07-02', 'female', 'married', '+54', '08131949236', 'Student', 'Nnabuife Francis', 'Delta State', 'Belarus', 'Belize Dollar-BZD-$', 'savings', '$2y$12$ayZsHQ1jFKmDH/yXvG2I4O4C4aGipNWEH.MNwjqJrk0rvOlsQlyT2', '2pz4.8DAS.gfc:c', 0, NULL, 0, NULL, '3005793683', 0, 1, NULL, 30000000.00, 0.00, 10000, 30050000, NULL, NULL, NULL, 0, '2024-07-03 19:59:39', NULL, 'dXPOxABBVzuSVHpOYVF2kKVhrS3T3kUxZA5MR6W64D0ugR0RDuz5ZLZHB5te', '2024-07-01 23:00:00', '2024-07-03 18:59:39');

-- --------------------------------------------------------

--
-- Table structure for table `verification_codes`
--

CREATE TABLE `verification_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `length` varchar(255) NOT NULL,
  `nature_of_code` varchar(255) NOT NULL,
  `applicable_to` varchar(255) NOT NULL,
  `registration_token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verification_codes`
--

INSERT INTO `verification_codes` (`id`, `uuid`, `name`, `description`, `length`, `nature_of_code`, `applicable_to`, `registration_token`, `created_at`, `updated_at`) VALUES
(2, '2ff9fc6b-0c79-47e7-88ba-52be192b2dff', 'OTP', 'One Time Password', '5', 'alnum', 'All', 'RB-21', '2024-06-23 15:41:25', '2024-06-23 15:41:25'),
(5, '8e129a5a-3f25-4b0a-82e2-cfadfb6b0c6b', 'SOF', 'Source of Fund', '6', 'alnum', 'All', 'RB-31', '2024-07-02 09:10:50', '2024-07-02 10:05:57'),
(6, '4b03fae0-1b36-49a3-b6e1-722680fd22c8', 'VAT', 'Value Added Tax', '8', 'numeric', 'All', 'RB-31', '2024-07-02 10:06:24', '2024-07-02 10:06:24'),
(7, '2a95bec8-3cce-44a1-87c9-77fa65a5033a', 'COT', 'Cost Of Transfer', '6', 'alnum', 'All', 'RB-31', '2024-07-02 10:06:45', '2024-07-02 10:06:45'),
(8, 'd6ea08bb-e6b9-4390-8d59-716a9adc2181', 'IMF', 'International Monetary Fund', '8', 'alnum', 'All', 'RB-31', '2024-07-02 10:07:08', '2024-07-02 10:07:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_user_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_user_id_foreign` (`user_id`);

--
-- Indexes for table `transfer_codes`
--
ALTER TABLE `transfer_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfer_codes_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `verification_codes`
--
ALTER TABLE `verification_codes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transfer_codes`
--
ALTER TABLE `transfer_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `verification_codes`
--
ALTER TABLE `verification_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `cards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfer_codes`
--
ALTER TABLE `transfer_codes`
  ADD CONSTRAINT `transfer_codes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
