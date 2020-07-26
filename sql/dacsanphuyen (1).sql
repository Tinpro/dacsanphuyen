-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 19, 2020 lúc 11:39 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dacsanphuyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_customer` int(10) UNSIGNED DEFAULT NULL,
  `total` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateorder` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `total`, `payment`, `dateorder`, `created_at`, `updated_at`, `deleted_at`) VALUES
(74, 78, '770', 'COD', '2020-05-01', '2020-05-01 07:22:09', '2020-05-01 07:22:09', NULL),
(75, 79, '770', 'COD', '2020-05-01', '2020-05-01 07:24:11', '2020-05-01 07:24:11', NULL),
(76, 80, '770', 'COD', '2020-05-01', '2020-05-01 07:26:25', '2020-05-01 07:26:25', NULL),
(77, 81, '770', 'COD', '2020-05-01', '2020-05-01 07:26:49', '2020-05-01 07:26:49', NULL),
(78, 82, '770', 'COD', '2020-05-01', '2020-05-01 07:29:25', '2020-05-01 07:29:25', NULL),
(79, 83, '770', 'COD', '2020-05-01', '2020-05-01 07:30:02', '2020-05-01 07:30:02', NULL),
(80, 84, '770', 'COD', '2020-05-01', '2020-05-01 07:30:21', '2020-05-01 07:30:21', NULL),
(81, 85, '770', 'COD', '2020-05-01', '2020-05-01 07:30:39', '2020-05-01 07:30:39', NULL),
(82, 86, '770', 'COD', '2020-05-01', '2020-05-01 07:31:14', '2020-05-01 07:31:14', NULL),
(83, 87, '770', 'COD', '2020-05-01', '2020-05-01 07:31:51', '2020-05-01 07:31:51', NULL),
(84, 88, '770', 'COD', '2020-05-01', '2020-05-01 07:32:01', '2020-05-01 07:32:01', NULL),
(85, 89, '350', 'COD', '2020-05-01', '2020-05-01 07:34:23', '2020-05-01 07:34:23', NULL),
(86, 90, '350', 'COD', '2020-05-01', '2020-05-01 07:35:45', '2020-05-01 07:35:45', NULL),
(87, 91, '1', 'COD', '2020-05-01', '2020-05-01 07:36:51', '2020-05-01 07:36:51', NULL),
(88, 92, '1', 'COD', '2020-05-01', '2020-05-01 07:37:21', '2020-05-01 07:37:21', NULL),
(89, 93, '350', 'COD', '2020-05-01', '2020-05-01 08:17:22', '2020-05-01 08:17:22', NULL),
(90, 94, '350', 'COD', '2020-05-01', '2020-05-01 08:17:33', '2020-05-01 08:17:33', NULL),
(91, 95, '350', 'COD', '2020-05-01', '2020-05-01 08:40:09', '2020-05-01 08:40:09', NULL),
(92, 96, '350', 'COD', '2020-05-01', '2020-05-01 08:45:51', '2020-05-01 08:45:51', NULL),
(93, 97, '350', 'COD', '2020-05-01', '2020-05-01 08:46:04', '2020-05-01 08:46:04', NULL),
(94, 98, '350', 'COD', '2020-05-01', '2020-05-01 08:46:15', '2020-05-01 08:46:15', NULL),
(95, 99, '350', 'COD', '2020-05-01', '2020-05-01 08:46:44', '2020-05-01 08:46:44', NULL),
(96, 104, '1,040,000.00', 'COD', '2020-05-18', '2020-05-18 08:35:31', '2020-05-18 08:35:31', NULL),
(97, 105, '770,000.00', 'COD', '2020-05-18', '2020-05-18 08:35:50', '2020-05-18 08:35:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills_detail`
--

CREATE TABLE `bills_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_bill` int(10) UNSIGNED DEFAULT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills_detail`
--

INSERT INTO `bills_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(67, 74, 2, 1, 770000, '2020-05-01 07:22:09', '2020-05-01 07:22:09'),
(68, 75, 2, 1, 770000, '2020-05-01 07:24:11', '2020-05-01 07:24:11'),
(69, 76, 2, 1, 770000, '2020-05-01 07:26:25', '2020-05-01 07:26:25'),
(70, 77, 2, 1, 770000, '2020-05-01 07:26:49', '2020-05-01 07:26:49'),
(71, 78, 2, 1, 770000, '2020-05-01 07:29:25', '2020-05-01 07:29:25'),
(72, 79, 2, 1, 770000, '2020-05-01 07:30:02', '2020-05-01 07:30:02'),
(73, 80, 2, 1, 770000, '2020-05-01 07:30:21', '2020-05-01 07:30:21'),
(74, 81, 2, 1, 770000, '2020-05-01 07:30:39', '2020-05-01 07:30:39'),
(75, 82, 2, 1, 770000, '2020-05-01 07:31:14', '2020-05-01 07:31:14'),
(76, 83, 2, 1, 770000, '2020-05-01 07:31:51', '2020-05-01 07:31:51'),
(77, 84, 2, 1, 770000, '2020-05-01 07:32:01', '2020-05-01 07:32:01'),
(78, 85, 4, 1, 350000, '2020-05-01 07:34:23', '2020-05-01 07:34:23'),
(79, 86, 4, 1, 350000, '2020-05-01 07:35:45', '2020-05-01 07:35:45'),
(80, 87, 4, 2, 350000, '2020-05-01 07:36:51', '2020-05-01 07:36:51'),
(81, 87, 1, 1, 520000, '2020-05-01 07:36:51', '2020-05-01 07:36:51'),
(82, 88, 4, 2, 350000, '2020-05-01 07:37:21', '2020-05-01 07:37:21'),
(83, 88, 1, 1, 520000, '2020-05-01 07:37:21', '2020-05-01 07:37:21'),
(84, 89, 4, 1, 350000, '2020-05-01 08:17:22', '2020-05-01 08:17:22'),
(85, 90, 4, 1, 350000, '2020-05-01 08:17:33', '2020-05-01 08:17:33'),
(86, 91, 4, 1, 350000, '2020-05-01 08:40:09', '2020-05-01 08:40:09'),
(87, 92, 4, 1, 350000, '2020-05-01 08:45:52', '2020-05-01 08:45:52'),
(88, 93, 4, 1, 350000, '2020-05-01 08:46:04', '2020-05-01 08:46:04'),
(89, 94, 4, 1, 350000, '2020-05-01 08:46:15', '2020-05-01 08:46:15'),
(90, 95, 4, 1, 350000, '2020-05-01 08:46:44', '2020-05-01 08:46:44'),
(91, 96, 1, 2, 520000, '2020-05-18 08:35:31', '2020-05-18 08:35:31'),
(92, 97, 2, 1, 770000, '2020-05-18 08:35:50', '2020-05-18 08:35:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Đặc sản một nắng', 'Để làm đặc sản một nắng ngon, người ta phải rửa bằng nước biển, sau đó sẽ đem ra phơi nắng. Phải chọn nơi nhiều ánh nắng, nắng to để được ngon hơn.', '2020-03-16 07:02:49', '2020-04-23 10:16:04', NULL),
(2, 'Các loại chả', 'Chả cá Phú Yên được làm từ các loại cá biển có nhiều ở đây như cá thu, cá mối, cá cờ, cá nhồng...tùy theo mùa nên bạn sẽ nếm được hương vị thơm ngon.', '2020-03-16 07:02:49', '2020-03-16 07:02:49', NULL),
(3, 'Nước mắm Phú Yên', 'Được sản xuất theo phương pháp truyền thống, từ cá tươi và muối tinh, ủ trong  thùng, lên men hoàn toàn tự nhiên. Sau 18-24 tháng,  được rút nỏ cho ra nước mắm màu đỏ nâu cánh gián, thơm lừng, đậm đà vị béo, hậu vị sâu, thực sự tự nhiên và an toàn.\r\n', '2020-03-16 07:02:49', '2020-03-16 07:02:49', NULL),
(4, 'Cà phê Phú Yên', 'Cà phê là một loại thức uống được ủ từ hạt cà phê rang, lấy từ quả của cây cà phê. ', '2020-03-16 07:02:49', '2020-04-05 04:23:02', NULL),
(5, 'Cá ngừ Đại Dương', 'Cá ngừ đại dương là tên địa phương để chỉ loại cá ngừ mắt to và cá ngừ vây vàng. Cá ngừ đại dương là loại hải sản đặc biệt thơm ngon, mắt rất bổ (cá ngừ mắt to), được chế biến thành nhiều loại món ăn ngon và tạo nguồn hàng xuất khẩu có giá trị.', '2020-03-16 07:06:50', '2020-04-05 04:26:54', NULL),
(6, 'Đặc sản khác', 'Ẩm thực độc lạ hấp dẫn', '2020-03-16 07:08:49', '2020-04-05 08:53:04', NULL),
(16, 'Lương Bảo Tín', 'Hồng Gấm', '2020-04-23 11:07:16', '2020-04-23 11:07:22', '2020-04-23 11:07:22'),
(17, 'Lương Bảo Tín', 'tttt', '2020-04-23 11:07:41', '2020-04-23 11:07:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_product` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `email`, `name`, `content`, `id_product`, `created_at`, `updated_at`) VALUES
(3, 'luongbaotin2019@gmail.com', 'Lương Bảo Tín', 'Giá quá đắt', 24, '2020-03-31 03:46:10', '2020-03-31 03:46:10'),
(4, 'manager@gmail.com', 'User', 'ttttt', 24, '2020-03-31 03:53:22', '2020-03-31 03:53:22'),
(5, 'luongbaotin2019@gmail.com', 'Lương Bảo Tín', 'Verygood', 6, '2020-04-01 03:01:43', '2020-04-01 03:01:43'),
(7, 'admin@gmail.com', 'Lương Bảo Tín', 'Ngon', 6, '2020-04-10 01:44:39', '2020-04-10 01:44:39'),
(8, 'luongbaotin2019@gmail.com', 'Tinpro', 'Quá ngon và rẻ', 4, '2020-04-10 01:52:24', '2020-04-10 01:52:24'),
(9, 'manager@gmail.com', 'tin', 'Rất ngon!', 5, '2020-04-10 08:54:39', '2020-04-10 08:54:39'),
(10, 'admin@gmail.com', 'Lương Bảo Tín', 'tttt', 4, '2020-04-22 02:48:47', '2020-04-22 02:48:47'),
(11, 'manager@gmail.com', 'Desktop PCC', 'good', 1, '2020-05-15 02:52:06', '2020-05-15 02:52:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `email`, `name`, `phonenumber`, `address`, `created_at`, `updated_at`) VALUES
(78, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:22:09', '2020-05-01 07:22:09'),
(79, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:24:11', '2020-05-01 07:24:11'),
(80, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:26:23', '2020-05-01 07:26:23'),
(81, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:26:49', '2020-05-01 07:26:49'),
(82, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:29:25', '2020-05-01 07:29:25'),
(83, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:30:02', '2020-05-01 07:30:02'),
(84, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:30:21', '2020-05-01 07:30:21'),
(85, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:30:39', '2020-05-01 07:30:39'),
(86, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:31:14', '2020-05-01 07:31:14'),
(87, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:31:51', '2020-05-01 07:31:51'),
(88, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:32:01', '2020-05-01 07:32:01'),
(89, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:34:23', '2020-05-01 07:34:23'),
(90, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:35:45', '2020-05-01 07:35:45'),
(91, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:36:51', '2020-05-01 07:36:51'),
(92, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 07:37:21', '2020-05-01 07:37:21'),
(93, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:17:22', '2020-05-01 08:17:22'),
(94, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:17:33', '2020-05-01 08:17:33'),
(95, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:40:09', '2020-05-01 08:40:09'),
(96, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:45:51', '2020-05-01 08:45:51'),
(97, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:46:04', '2020-05-01 08:46:04'),
(98, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:46:15', '2020-05-01 08:46:15'),
(99, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-01 08:46:44', '2020-05-01 08:46:44'),
(100, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen', '2020-05-15 02:54:21', '2020-05-15 02:54:21'),
(101, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen', '2020-05-15 02:55:12', '2020-05-15 02:55:12'),
(102, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-18 08:29:43', '2020-05-18 08:29:43'),
(103, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-18 08:34:43', '2020-05-18 08:34:43'),
(104, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-18 08:35:31', '2020-05-18 08:35:31'),
(105, 'tinpro67@gmail.com', 'Lương Bảo Tín', '0385618501', 'Phu Yen, Dong Hoa', '2020-05-18 08:35:50', '2020-05-18 08:35:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_03_31_094737_comment', 1),
(4, '2020_04_04_063951_user', 2),
(8, '2020_04_04_090536_vp_users', 3),
(12, '2020_04_09_040451_customer', 4),
(13, '2020_04_09_050044_customers', 5),
(14, '2020_04_09_050218_bills', 6),
(15, '2020_04_09_050436_bills_detail', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit_price` float DEFAULT NULL,
  `promotion_price` float DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `id_category`, `description`, `unit_price`, `promotion_price`, `status`, `image`, `unit`, `featured`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bò một nắng', 1, '<p><em><strong>Ph&uacute; Y&ecirc;n</strong>&nbsp;kh&ocirc;ng chỉ được biết tới với &quot;hoa v&agrave;ng tr&ecirc;n cỏ xanh&quot; m&agrave; c&oacute;n nổi tiếng với những m&oacute;n ăn ngon lạ v&agrave; độc đ&aacute;o, trong đ&oacute;&nbsp;<strong>đặc sản b&ograve; một nắng Ph&uacute; Y&ecirc;n</strong>&nbsp;l&agrave; một trong những m&oacute;n đặc trưng kh&ocirc;ng thể bỏ qua.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>B&ograve; một nắng</em>&nbsp;l&agrave; g&igrave;? Đ&acirc;y l&agrave; c&acirc;u hỏi lu&ocirc;n được đặt ra với những ai vừa nghe n&oacute;i đến&nbsp;<em>đặc sản b&ograve; một nắng Ph&uacute; Y&ecirc;n</em>.&nbsp;<em>B&ograve; một nắng</em>&nbsp;c&ograve;n c&oacute; t&ecirc;n gọi l&agrave; b&ograve; một nắng hai sương nghe c&oacute; vẻ hơi lạ nhưng thật ra rất đơn giản. Thịt b&ograve; sau khi l&agrave;m sạch sẽ được tẩm ướp với gia vị đặc trưng rồi mang ra phơi nắng v&agrave; sấy kh&ocirc; chỉ khoảng 50% rồi lại được phơi sương khoảng 1 giờ. C&aacute;c c&ocirc;ng đoạn l&agrave;m ra m&oacute;n n&agrave;y rất l&agrave; c&ocirc;ng phu n&ecirc;n t&ecirc;n gọi b&ograve; một nắng hai sương cũng l&agrave; muốn nhắc đến c&ocirc;ng lao cực nhọc của những người chế biến ra m&oacute;n ăn đặc sắc n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đặc biệt nguy&ecirc;n liệu được chọn lựa để l&agrave;m m&oacute;n n&agrave;y phải l&agrave; b&ograve; c&oacute; nguồn gốc từ v&ugrave;ng n&uacute;i Sơn H&ograve;a v&igrave; ở đ&acirc;y b&ograve; được chăn thả tự nhi&ecirc;n tr&ecirc;n đồng cỏ n&ecirc;n thịt b&ograve; rất thơm v&agrave; săn chắc.</p>\r\n\r\n<p>Để chế biến được m&oacute;n&nbsp;<em>đặc sản b&ograve; một nắng Ph&uacute; Y&ecirc;n</em>&nbsp;ngon v&agrave; đ&uacute;ng điệu th&igrave; người ta phải chọn lọc rất kỹ. Phần thịt được sử dụng chỉ l&agrave; thịt thăn v&agrave; đ&ugrave;i v&igrave; ở v&ugrave;ng đ&oacute; mới c&oacute; được những miếng thịt to v&agrave; chắc . Sau đ&oacute; l&agrave; tới c&ocirc;ng đoạn l&agrave;m sạch, b&ograve; phải được rửa bằng rượu v&agrave; cắt l&aacute;t ra th&agrave;nh từng miếng nhỏ c&oacute; độ d&agrave;y từ 1 &ndash; 1,5cm. Thịt sẽ được tẩm ướp c&ugrave;ng với sả, ớt, rượu vang v&agrave; gia vị đặc trưng ri&ecirc;ng của v&ugrave;ng. Kế đến l&agrave; mang thịt ra phơi nắng từ 1 &ndash; 2g, sau đ&oacute; cho v&agrave;o l&ograve; sấy kh&ocirc; để loại bỏ lượng nước trong thịt. Trong khi sấy, người chế biến phải trực ở đ&oacute; canh giờ, cứ mỗi 1 giờ 30 ph&uacute;t trở một lần, cứ thao t&aacute;c li&ecirc;n tiếp như vậy trong thời gian 12 giờ, v&agrave; sau đ&oacute; mang phơi sương th&ecirc;m 1 giờ, cứ mỗi 10 ph&uacute;t trở một lần để miếng b&ograve; được mềm v&agrave; ngọt hơn. Cuối c&ugrave;ng l&agrave; cho ra l&ograve; m&oacute;n b&ograve; một nắng hai sương thơm ngon v&agrave; bổ dưỡng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một m&oacute;n ăn ngon kh&ocirc;ng thể thiếu m&oacute;n chấm đi k&egrave;m cũng như&nbsp;<em>b&ograve; một nắng</em>&nbsp;kh&ocirc;ng thể thiếu muối kiến v&agrave;ng.&nbsp;<strong>Muối kiến v&agrave;ng</strong>&nbsp;được l&agrave;m từ k&eacute;n kiến trứng kiến v&agrave; con kiến trộn với hỗn hợp muối, sả, ớt,&hellip; cho vừa ăn để l&agrave;m m&oacute;n chấm. Vị ngọt ng&agrave;o tự nhi&ecirc;n của b&ograve; một nắng xen lẫn với vị chua chua cay cay rất đặc trưng của muối kiến đ&atilde; l&agrave;m say l&ograve;ng biết bao thực kh&aacute;ch c&oacute; dịp thử qua.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Đặc sản b&ograve; một nắng Ph&uacute; Y&ecirc;n</em>&nbsp;đ&atilde; dần khẳng định được vị tr&iacute; của m&igrave;nh trong l&agrave;ng ẩm thực Việt Nam. Kh&ocirc;ng chỉ mua để thưởng thức m&agrave; kh&aacute;ch h&agrave;ng c&ograve;n d&ugrave;ng b&ograve; một nắng để l&agrave;m qu&agrave; biếu tặng trong những dịp lễ tết hay tặng c&aacute;c đối t&aacute;c để gắn kết th&ecirc;m t&igrave;nh cảm. V&igrave; vậy m&agrave; số lượng cung cấp ra thị trường c&aacute;c tỉnh từ 500kg đ&atilde; tăng l&ecirc;n 1000kg trong th&aacute;ng kể từ năm 2015 đến nay.</p>', 550000, 520000, 1, 'bo-mot-nang.jpg', 'bì', 1, '2020-03-16 07:16:17', '2020-05-12 13:34:57', NULL),
(2, 'Mục một nắng', 1, NULL, 790000, 770000, 1, 'muc-mot-nang.jpg', 'bì', 1, '2020-03-16 07:18:00', '2020-03-30 11:19:18', NULL),
(3, 'Cá thu một nắng', 1, NULL, 320000, NULL, 0, 'ca-thu-mot-nang.jpg', 'bì', 1, '2020-03-16 07:18:00', '2020-03-30 12:31:22', NULL),
(4, 'Muối kiến vàng', 1, 'Trong cuộc sống hằng ngày chắc hẳn kiến vàng không xa lạ gì với người dân chúng ta nhất là đối với nhà nông kiến vàng có khả năng tiết ra một loại axit làm thúc đẩy quy trình sinh trưởng của cây ăn quả. Hơn thế nữa, theo dân địa phương kiến vàng còn giúp ích cho người bị bệnh tiểu đường  bằng cách treo miếng thịt bò trên cành cây cao có ổ kiến vàng để khoảng 2 giờ, sau đó để nguyên miếng thịt bò không rửa sạch mà đem thái mỏng nấu cháo, chất chua tiết ra từ kiến ngấm vào miếng thịt bò sẽ khử được lượng đường thừa trong máu. Ở miền Nam Trung Bộ như Gia Lai, Bình Định, Phú Yên kiến vàng đã trở thành món ăn đặc sản, nổi bật nhất phải kể đến xôi trứng kiến, trứng kiến nấu măng sặc, trứng kiến trộn gỏi đu đủ, gỏi bưởi hay nấu canh chua lá giang.\r\n\r\nNếu có dịp đặt chân đến vùng đất Phú Yên bạn đừng quên mang về món chấm Muối kiến vàng rất nổi tiếng và không kém phần độc đáo. Cách chế biến muối kiến vàng rất là công phu người dân phải đi vào rừng núi tìm từng tổ kiến vàng và chỉ chọn lấy phẩn kén kiến, kiến non rang với muối hột, tiếp đến là công đoạn pha chế phải theo đúng tỷ lệ hợp lý không quá năng mùi, không quá mặn xen lẫn vị cay cay của ớt và vị chua chua của kiến mà không quá nồng vẫn giữ được mùi vị đặc trưng của kiến vàng. Muối kiến vàng được dùng làm gia vị ăn kèm với các món thịt một nắng như heo một nắng, tôm một nắng, nai một nắng…nhưng ngon nhất là dùng kèm với bò một nắng Sơn Hòa Phú Yên, nếu ai được nếm qua một lần chắc hẳn sẽ không bỏ lỡ “bò một nắng, muối kiến vàng”  trong danh sách món ngon cuối tuần của các quý ông.\r\n\r\nNgoài ra kiến vàng cung cấp từ 42-67% chất đạm, 28 loại axit amin và có nhiều sinh tố và khoáng chất khác.trứng kiến có chứa hàm lượng protein rất cao. Do vậy đây còn là sự lựa chọn tuyệt vời cho các bà vợ khi lựa chọn thực phẩm dự trữ tại nhà.', 350000, NULL, 1, 'muoi-kien-vang.jpg', 'hủ', 1, '2020-03-16 07:19:39', '2020-04-14 05:44:45', NULL),
(5, 'Nai một nắg', 1, NULL, 570000, NULL, 1, 'nai-mot-nang.jpg', 'bì', 1, '2020-03-16 07:19:39', '2020-03-30 12:31:46', NULL),
(6, 'Tôm một nắng', 1, NULL, 600000, NULL, 1, 'tom-mot-nang.jpg', 'bì', 1, '2020-03-16 07:19:55', '2020-04-01 08:26:36', NULL),
(7, 'Nem chua', 2, NULL, 230000, 200000, 1, 'nem-chua.jpg', 'cây', 1, '2020-03-16 07:31:53', '2020-03-30 12:32:19', NULL),
(8, 'Chả ớt xiêm', 2, NULL, 240000, NULL, 0, 'cha-ot-xiem.jpg', 'cây', 1, '2020-03-16 07:31:53', '2020-03-30 12:32:46', NULL),
(9, 'Chả cá Phú Yên', 2, NULL, 190000, 150000, 1, 'cha-ca-py.jpg', 'miếng', 0, '2020-03-16 07:31:53', '2020-03-30 12:32:38', NULL),
(10, 'Mắm mực', 3, NULL, 80000, 65000, 1, 'mam-muc.jpg', 'hủ', 0, '2020-03-16 07:31:53', '2020-03-30 12:32:51', NULL),
(11, 'Măm cá thu', 3, NULL, 150000, NULL, 0, 'mam-ca-thu-xay.jpg', 'hủ', 0, '2020-03-16 07:31:53', '2020-04-07 09:59:22', NULL),
(12, 'Mắm cá thu chưng', 3, NULL, 150000, NULL, 0, 'mam-ca-thu-chung.jpg', 'hủ', 1, '2020-03-16 07:31:53', '2020-03-30 12:33:00', NULL),
(13, 'Mắm Ông già', 3, NULL, 170000, NULL, 1, 'nuoc-mam-phu-yen.jpg', 'chai', 1, '2020-03-16 07:31:53', '2020-04-07 09:59:03', NULL),
(14, 'Mắm Tân Lập', 3, NULL, 170000, NULL, 1, 'mam-tan-lap.jpg', 'chai', 1, '2020-03-16 07:31:53', '2020-04-07 09:59:38', NULL),
(15, 'Mắm cá cơm', 3, NULL, 8000, NULL, 0, 'mam-ca-com.jpg', 'hủ', 1, '2020-03-16 07:31:53', '2020-04-07 11:16:36', NULL),
(16, 'Cà phê Huy Tùng', 4, NULL, 400000, 390000, 1, 'ca-phe-huy-tung.jpg', 'hộp', 0, '2020-03-16 07:43:44', '2020-04-07 09:59:30', NULL),
(17, 'Cà phê Hương Hương', 4, NULL, 200000, NULL, 0, 'ca-phe-huong-huong.jpg', 'hộp', 0, '2020-03-16 07:43:44', '2020-04-07 09:59:49', NULL),
(18, 'Cà phê Huy Tùng ĐB', 4, NULL, 250000, 200000, 0, 'ca-phe-huong-chon.jpg', 'hộp', 1, '2020-03-16 07:43:44', '2020-04-15 15:25:01', NULL),
(19, 'Cá ngừ Đại Dương', 5, NULL, 350000, 3300000, 0, 'ca-ngu-cat-khuc.jpg', 'phần', 1, '2020-03-16 07:56:38', '2020-04-07 10:00:21', NULL),
(20, 'Cá ngừ Đại Dương ĐB', 5, 'Giá liên hệ', 190000, NULL, 1, 'ca-ngu-nguyen-con.jpg', 'con', 0, '2020-03-16 07:56:38', '2020-04-07 10:00:33', NULL),
(21, 'Mắt cá ngừ', 5, NULL, 140000, NULL, 0, 'mat-ca-ngu.jpg', 'con', 0, '2020-03-16 07:56:38', '2020-04-07 10:00:48', NULL),
(22, 'Mắt cá ngừ ĐB', 5, NULL, 70000, NULL, 1, 'mat-ca-ngu-chung.jpg', 'con', 0, '2020-03-16 07:56:38', '2020-04-07 10:01:00', NULL),
(23, 'Thit cá ngừ', 5, NULL, 300000, NULL, 1, 'ca-ngu-phi-le.jpg', 'phần', 0, '2020-03-16 07:56:38', '2020-04-07 10:01:14', NULL),
(24, 'Khô mép cá ngừ', 5, NULL, 360000, 300000, 0, 'kho-mep-ca-ngu.jpg', 'phần', 1, '2020-03-16 07:56:38', '2020-04-15 15:24:24', NULL),
(25, 'Thịt ngâm mắm', 6, NULL, 190000, 150000, 0, 'thit-ngam-mam.jpg', 'hủ', 0, '2020-03-16 08:07:55', '2020-03-30 12:32:02', NULL),
(26, 'Cá mai Phú Yên', 6, NULL, 250000, 240000, NULL, 'ca-mai-py.jpg', 'dĩa', 0, '2020-03-16 08:07:55', '2020-03-16 08:09:10', NULL),
(27, 'Bánh tráng Hòa Đa', 1, NULL, 250000, 230000, 1, 'banh-trang-hoa-da.jpg', '10 dây', 0, '2020-03-16 08:07:55', '2020-04-23 16:00:52', NULL),
(36, NULL, 1, 'tt', NULL, NULL, NULL, 'anh-co-trang-trung-quoc-37.jpg', NULL, NULL, '2020-04-22 03:25:56', '2020-04-22 03:26:00', '2020-04-22 03:26:00'),
(37, NULL, 1, 'tt', 123, 123, 1, 'anh-co-trang-trung-quoc-37.jpg', 'yy', 1, '2020-04-22 03:34:30', '2020-04-22 03:34:34', '2020-04-22 03:34:34'),
(38, NULL, 1, NULL, 350000, 300000, 1, 'anh-co-trang-trung-quoc-37.jpg', 'tt', 1, '2020-04-22 03:44:09', '2020-04-22 03:44:13', '2020-04-22 03:44:13'),
(39, NULL, 1, NULL, 350000, 300000, 1, 'anh-co-trang-trung-quoc-37.jpg', 'uu', 0, '2020-04-22 03:50:30', '2020-04-22 03:50:33', '2020-04-22 03:50:33'),
(40, NULL, 1, NULL, 350000, NULL, 0, '1-15437403034712077921183.jpg', 'uu', 1, '2020-04-23 15:53:58', '2020-04-23 15:54:09', '2020-04-23 15:54:09'),
(41, 'Lương Bảo Tín', 1, NULL, 350000, 300000, 1, '1-15437403034712077921183.jpg', 'uu', 1, '2020-04-23 15:57:29', '2020-04-26 08:02:37', NULL),
(42, NULL, 1, '<p>&nbsp;</p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all: unset;\">&nbsp;</div>', 350000, 300000, 1, '19a01d2f749c3859bbf04b3c18922f40.jpg', 'unit', 0, '2020-05-15 03:16:04', '2020-05-15 03:16:15', '2020-05-15 03:16:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vp_users`
--

CREATE TABLE `vp_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numberphone` int(10) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timecode` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `vp_users`
--

INSERT INTO `vp_users` (`id`, `name`, `address`, `numberphone`, `email`, `password`, `level`, `remember_token`, `code`, `timecode`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, 'admin@gmail.com', '$2y$10$6Yvh3WT1Nyw6QydDY/h2NOpVJ/TzOMAZq4tUn93pJKciU/HH8hS4i', '1', 'TWbAxCkzvl7048Adi9uKjvDEFEF3oGhYtuaIBLJ1m1vvns7uVo3vaOP0MUPZ', '$2y$10$heUZbcvA.6cevZtRkgadEOeNmausXHY5/fHxqtSyeqGDvm8Eq7QYS', '2020-04-19 11:34:00', NULL, '2020-04-19 11:34:00', NULL),
(2, 'Lương Bảo Tín', 'Phu Yen, Dong Hoa', 385618501, 'user@gmail.com', '$2y$10$mvzFMctpgx9j7ZSSkRiWGu3TDn8vAHmRi0hCUZ5QdBoUARm6RLsJG', '2', 'gACjtjNHQ6Rcm3bJSTOCNSkgg3WUXzffjMBROoA0zBHHw7pe4eU44gksoQXE', '0', NULL, NULL, '2020-04-11 10:58:46', NULL),
(9, 'Lương Bảo', 'Phu Yen, Dong Hoa', 385618501, 'tinpro67@gmail.com', '$2y$10$5yTTdcdWjCKpglWWB7UGdus5yJo8c1lsruaPY6EynCCExsnCrDPMy', '2', 'EPkccnfoLcq3UyNZibtXlj9n8jmE4jkPdqEDa2KsJ3lOl2ckSzBC5bCM568T', '$2y$10$IhT3AmgxggPs8SIeKiA65umgsBFvBADmoqzbzXN74ggsIs7Rj2Fue', '2020-04-23 03:25:20', '2020-04-11 10:20:33', '2020-04-23 03:25:59', NULL),
(11, 'lương bảo tín', 'Phu Yen, Dong Hoa', 385618501, 'user2@gmail.com', '$2y$10$45GD4yv2VFgT30yHcPCHqu5wDKnrLTyCAhDsk5ix2WiQ4V4Txdd0a', '2', 'JRexNdzH5KfkbmxiKVTmoIbKY9FBPF4nDD9CXnjPKJvTGX6U7q52kAC4P1KW', '0', NULL, '2020-04-14 11:09:42', '2020-04-14 11:09:42', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_id_customer_foreign` (`id_customer`);

--
-- Chỉ mục cho bảng `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_prod` (`id_product`),
  ADD KEY `FK_billid` (`id_bill`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id_category_foreign` (`id_category`) USING BTREE;

--
-- Chỉ mục cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `code` (`code`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `bills_detail`
--
ALTER TABLE `bills_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `vp_users`
--
ALTER TABLE `vp_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `bills_detail`
--
ALTER TABLE `bills_detail`
  ADD CONSTRAINT `FK_billid` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bills_detail_id_bill_foreign` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `fk_prod` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_id_type_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
