-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 08:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `espace`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `programme_schedule_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `mobile`, `email`, `class_code`, `status`, `programme_schedule_id`, `created_at`, `updated_at`) VALUES
(1, '+1-301-912-4002', 'clifton95@example.com', 'Labore.', 'CONFIRMED', 12, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(2, '351-271-3137', 'considine.torey@example.net', 'Sequi.', 'CONFIRMED', 9, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(3, '862-836-3031', 'king.diana@example.net', 'Unde.', 'CONFIRMED', 3, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(4, '351-271-3137', 'considine.torey@example.net', 'Sequi.', 'CONFIRMED', 8, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(6, '862-836-3031', 'king.diana@example.net', 'Unde.', 'CONFIRMED', 3, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(7, '+14585832923', 'ugreen@example.org', 'Unde.', 'CONFIRMED', 13, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(8, '+1-283-828-8655', 'londricka@example.net', 'Dicta.', 'CONFIRMED', 3, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(9, '+1.540.258.7996', 'bbruen@example.net', 'Velit.', 'CONFIRMED', 15, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(10, '+1-301-912-4002', 'clifton95@example.com', 'Labore.', 'CONFIRMED', 9, '2023-02-26 03:57:00', '2023-02-26 03:57:00'),
(12, '87807629', 'test@test.com', 'OI620s', 'CANCELLED', 1, '2023-02-26 04:33:50', '2023-02-26 06:18:18'),
(13, '87807629', 'test@test.com', 'OI620s', 'CONFIRMED', 2, '2023-02-26 04:48:32', '2023-02-26 04:48:32'),
(14, '87807629', 'test@test.com', 'OI620s', 'CONFIRMED', 1, '2023-02-26 07:29:46', '2023-02-26 07:29:46');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_02_25_051401_create_programmes_table', 1),
(5, '2023_02_25_051454_create_schedules_table', 1),
(6, '2023_02_25_063643_create_users_table_in_user', 1),
(7, '2023_02_25_063857_change_category_type_in_users', 1),
(8, '2023_02_25_092229_change_default_in_users', 1),
(9, '2023_02_25_104512_change_unique_in_users', 1),
(10, '2023_02_25_112030_change_default_in_users', 1),
(11, '2023_02_25_171859_delete_column_in_programmes', 1),
(12, '2023_02_25_193850_create_column_in_programmes', 1),
(13, '2023_02_26_114110_create_bookings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `programmes`
--

CREATE TABLE `programmes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `synopsis` longtext NOT NULL,
  `uploaded_by` varchar(255) NOT NULL,
  `image_file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedules` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schedules`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programmes`
--

INSERT INTO `programmes` (`id`, `title`, `synopsis`, `uploaded_by`, `image_file`, `created_at`, `updated_at`, `schedules`) VALUES
(1, 'Quia est vel esse rerum quis id autem.', 'Voluptas deserunt accusantium quaerat voluptate consequuntur. Voluptatem voluptas autem repellat facilis praesentium. Neque sit sint sit deserunt eius id est. Vel consequuntur ipsum et assumenda excepturi ex laudantium. Et illum possimus quidem impedit mollitia qui aut. Illum corporis corporis qui quasi et tenetur. Quaerat et perspiciatis maxime voluptatem.', 'Prof. Dandre Jacobson MD', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\cbce66b6d2e484277d82bf79e4a1f6b1.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(2, 'Ullam officia molestiae non ea accusamus.', 'Optio adipisci in similique a aspernatur. Quia ipsa quod sed qui doloribus. Enim quod eum similique recusandae id. Sit nemo et eos laborum. Magnam enim eum harum qui. Facilis alias enim eos et quaerat. Facilis rerum consequuntur facilis est ipsa harum dolor. Commodi tenetur repellendus sit eius ut soluta porro. Reiciendis ut corrupti eum.', 'Mrs. Jaida Grimes I', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\65cb10970e9b96a645ff847bde40c3d2.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(3, 'Dolores architecto numquam deleniti non ad.', 'Quam molestiae eum ipsum laborum similique. Tempora dolor est excepturi optio. Est asperiores tempore ut qui omnis corrupti nam esse. Molestiae doloremque optio eos. Eius molestiae quia hic et. Minima consequuntur possimus suscipit earum culpa quo. Ipsum omnis autem est dolorem. Quia et quia eveniet iste at quos id. Dolores rerum est totam placeat nam nulla.', 'Gabriel Tromp', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\38c9d19944dc55da4a8f41b33a3074ef.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(4, 'Possimus qui et sunt quod aut id reprehenderit.', 'Reprehenderit illo quibusdam eum quod. In et exercitationem dolore molestiae esse soluta quas. Aut est explicabo voluptates omnis. Tempore sint nihil numquam quisquam nam distinctio. Reprehenderit illum est porro nihil illo. Exercitationem voluptates quas qui vel molestiae ex. Dolorem iste consequatur ab non asperiores incidunt. Voluptate nihil enim quia consequatur autem temporibus vero.', 'Aileen Bahringer Sr.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\235f98b890a42a2bf7499733e6c39b37.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(5, 'Dolor nulla vel velit.', 'Vitae aspernatur pariatur quidem quae. Ut ducimus doloribus ad amet nihil aliquid a. Est aut et et minus et voluptas. Sint voluptas qui non est quibusdam vitae sunt asperiores. Sunt atque qui quaerat aliquid eum fugit beatae. Odio quos sapiente optio qui qui corporis. Earum dolore iste assumenda quae quaerat sed quo. Cum quibusdam nam doloremque necessitatibus. Totam repudiandae earum rerum dignissimos repudiandae. Aut qui autem maxime ab.', 'Richmond Cummings', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\5be934e9b4d6c83041e129d082abf09a.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(6, 'Vero rem totam nemo consequatur ea.', 'Reiciendis id eos dolorem necessitatibus perferendis delectus. Nihil necessitatibus in quia quia. Eveniet nihil quia sed ipsum et. Quod occaecati optio rerum illo sint doloribus. Similique explicabo possimus accusantium et. Nam quisquam fugit id et explicabo quae consequatur. Dolorum alias quam nesciunt sequi. Eveniet id eum aliquam et. Culpa laudantium et esse corrupti. Ut adipisci eius reiciendis ex. Harum amet tempore eos ipsum consequuntur in facere.', 'Vivien Mohr', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\c3f5dcea75d98c02de023197df137c94.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(7, 'Dolores cum et sunt culpa et perspiciatis.', 'Repellendus autem dolor facilis magnam tempora tempora eum. Et deleniti quo sit laborum. Deserunt non at distinctio corporis. Beatae est atque impedit id aperiam suscipit nisi. Nostrum necessitatibus deleniti culpa ducimus dolorem sint ab quod. Ab temporibus deserunt nam quia quibusdam ea praesentium. Tenetur eum consequatur facilis consequatur et placeat corrupti fuga. Hic iste qui iste maxime ducimus consequatur odio.', 'Cortez Hintz', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\ee79567e5eaf75342aa43359d793b129.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(8, 'Voluptatem ad dolorem alias omnis eveniet saepe.', 'Qui esse ut quia sunt nostrum. Maiores libero itaque voluptatem tempora velit nulla aut. Aut magnam consequatur aliquam laudantium aut quia. Nisi illum velit dolore repudiandae harum ut. Nam adipisci rerum velit. In voluptate dolores voluptatem velit. Omnis et voluptatem nesciunt a. Possimus magni maiores minima omnis. Quaerat natus a ad consectetur. Alias distinctio et suscipit dolores aut at. Porro in vero voluptatibus qui numquam tenetur.', 'Hermann Will', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\06490cd45452a144d2ec1f7637976f27.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(9, 'Sit autem voluptate iure cumque non mollitia.', 'Rem sit commodi fugiat perspiciatis provident vero. Et distinctio quas rerum impedit dolores quia officia. Placeat sint architecto aliquam culpa repellendus. Ab omnis dolore vero. Error culpa provident voluptas autem ea unde. Ut omnis sit alias illo et ducimus. Sapiente exercitationem adipisci rerum accusantium. Earum voluptas fugit ad. Tempore voluptas aliquid et. Iusto ad beatae dignissimos ad.', 'Ned Hegmann', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\a30ca4c2dbd654b41af3f835d4f68b09.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL),
(10, 'Minima voluptas ut impedit quia.', 'Debitis optio nihil cum repudiandae excepturi et hic. Commodi facilis et facere iure molestiae. Quia harum omnis ipsa facere. Magni id excepturi nostrum error ea mollitia corporis. Voluptatem et omnis dolorem recusandae. Aspernatur deleniti itaque commodi corrupti magnam ipsum placeat accusamus. Reiciendis tenetur illum commodi nostrum ut reprehenderit sit architecto. Dolor aut nihil rerum ipsam ut.', 'Jaclyn Kuhic', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\dfe1ac8c3443e56e0d2047da12a17dee.png', '2023-02-26 02:55:55', '2023-02-26 02:55:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slot_taken` varchar(255) NOT NULL,
  `start_date_time` timestamp NULL DEFAULT NULL,
  `end_date_time` timestamp NULL DEFAULT NULL,
  `class_size` int(11) NOT NULL,
  `slot_left` int(11) DEFAULT NULL,
  `venue` varchar(255) NOT NULL,
  `remarks` text NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `programme_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `slot_taken`, `start_date_time`, `end_date_time`, `class_size`, `slot_left`, `venue`, `remarks`, `instructor`, `programme_id`, `created_at`, `updated_at`) VALUES
(1, '2', '2022-12-31 16:00:00', '2023-12-31 16:00:00', 1, 0, 'The Moon', 'The Moon', 'Moon', 1, '2023-02-26 02:55:55', '2023-02-26 07:29:46'),
(2, '8', '1974-08-02 14:54:41', '1995-05-20 17:19:07', 28, 1, 'Krajcik Valley', 'Consequatur qui vero distinctio ipsa optio. Non beatae aperiam praesentium illo. Nisi est nisi tenetur illum tempore. Nobis dolorem labore tempore quisquam accusantium quia ratione.', 'Braden Sporer', 3, '2023-02-26 02:55:55', '2023-02-26 04:48:32'),
(3, '8', '1979-03-24 15:35:14', '1973-11-29 04:10:10', 11, 10, 'Maureen Crescent', 'Expedita similique nostrum harum accusantium. Doloribus iusto quisquam molestias dolorem. Quos quo numquam esse voluptate quisquam libero. Quis iste occaecati consequatur quas.', 'Maggie Kerluke', 2, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(4, '9', '2019-03-13 21:20:39', '1973-06-21 02:59:16', 2, 7, 'Millie Parkways', 'Fugit ut est quidem ab. Molestias veniam consequatur culpa non eaque occaecati. Eligendi fugit eum voluptate laborum ut est doloremque. Ea porro itaque explicabo nulla unde accusamus.', 'Elise Feil', 2, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(5, '6', '1997-05-08 21:11:46', '1990-02-26 06:42:34', 7, 13, 'Torey Run', 'Odit qui tenetur natus qui ad. Minima a sed labore cum ut incidunt doloremque rerum. Autem quis pariatur vero aut labore maxime ipsa. Consequatur non rerum distinctio omnis id maxime.', 'Dr. Yolanda Rau DVM', 1, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(6, '8', '2005-11-07 13:35:19', '2019-01-04 16:49:22', 27, 10, 'Orn Mountain', 'Odio est consequatur ipsam dolorem vitae animi. Dolor et rem atque id eos odio. Inventore quibusdam labore id id qui. Aperiam optio nihil sequi maxime aspernatur nostrum.', 'Clarissa Connelly', 7, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(7, '10', '1976-05-01 07:53:14', '2007-10-18 00:05:56', 11, 2, 'Sheridan Mountain', 'Dicta rerum vel quo id id exercitationem veniam. Distinctio ut est ad facilis qui placeat. Adipisci temporibus eligendi corrupti unde vel. Aut aut vitae est perspiciatis neque.', 'Mr. Brendon Hudson Sr.', 4, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(8, '8', '1971-04-25 21:18:01', '2003-03-08 19:55:10', 3, 0, 'Jennyfer Mission', 'Iste quibusdam quod sequi molestiae exercitationem consequuntur. Illum consequatur error consequatur et. Maxime est earum ut nihil maxime. Ducimus repudiandae provident eos possimus.', 'Prof. Amir Luettgen', 8, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(9, '10', '2008-07-15 09:47:56', '2005-07-10 08:07:43', 29, 6, 'Orpha Field', 'Voluptates amet natus ducimus nesciunt. Atque rerum sit et hic. Qui impedit soluta porro porro.', 'Mrs. Dasia Mohr', 8, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(10, '10', '1982-07-15 11:05:51', '1995-12-05 20:04:54', 4, 10, 'Alvina Fall', 'Cumque eius at sit ut aspernatur sint ea. Ullam voluptatem fuga maiores adipisci cumque non error animi. Ratione accusantium qui quae iusto. Tempora corporis ut sint ut.', 'Sydni Jerde', 9, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(11, '5', '2008-01-19 21:14:15', '2000-07-14 04:46:45', 12, 0, 'Wunsch Station', 'Molestiae magni aut quia iure. Et possimus quia rem dolores rem eaque et. Non omnis saepe et sint rerum optio quo omnis. Nihil aut quia esse tempore qui. Omnis sunt tenetur rerum et incidunt aut aut.', 'Miss Maddison Cummings PhD', 9, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(12, '8', '1976-03-20 16:33:55', '1995-10-14 10:04:35', 2, 5, 'Gregoria Mountains', 'Sequi pariatur similique sint. Quisquam ea rerum quaerat enim consequatur. Quis ducimus eaque eveniet quidem aliquid id quibusdam. Nostrum labore iure molestiae veritatis veritatis voluptatem.', 'Hermann West', 8, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(13, '7', '2007-07-27 21:48:45', '2001-10-17 11:38:51', 2, 6, 'Stefanie Locks', 'Excepturi corporis possimus iste quo repellendus expedita consequatur. Qui eos eligendi eum nemo omnis est. Et numquam eum et eaque. Eos sapiente magnam et fuga cupiditate.', 'Myrtie Satterfield', 1, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(14, '6', '2007-02-13 09:21:23', '1990-06-07 23:09:33', 18, 7, 'Amya Stravenue', 'Facilis est nihil molestias magnam iure. Aut error sed enim quasi cupiditate. Molestias et dicta iusto incidunt modi ut. Voluptatem voluptas officia aut quibusdam.', 'Mrs. Cassandre Howell', 9, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(15, '10', '1978-02-07 16:43:46', '1973-07-03 15:17:59', 1, 1, 'Ezekiel Estate', 'Deserunt quaerat numquam est libero quis similique ullam voluptas. Sint sed ratione beatae illo. Culpa esse quo et nihil accusamus facere consequatur in. Libero earum nesciunt est est sed.', 'Carlee Stamm', 4, '2023-02-26 02:55:55', '2023-02-26 02:55:55'),
(16, '8', '1971-05-19 20:58:10', '1987-06-30 18:43:43', 19, 15, 'Tiara Flat', 'Vel esse quaerat fuga tenetur et unde. Hic id sapiente assumenda expedita eum aut sint. Architecto molestias non tempora omnis. Quod iusto voluptatum distinctio corporis quod libero.', 'Prof. Vidal Macejkovic Sr.', 1, '2023-02-26 02:55:55', '2023-02-26 02:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `mobile` varchar(255) NOT NULL,
  `class_code` varchar(255) NOT NULL,
  `profile_picture` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `username`, `first_name`, `last_name`, `mobile`, `class_code`, `profile_picture`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@test.com', '123456', 'test', 'test', 'test', '87802862', 'OI620s', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\85da51ada78f9a1362a5981ba57d6bc4.png', 0, '2023-02-26 02:55:20', '2023-02-26 02:55:20'),
(2, 'Cortney Labadie V', 'ugreen@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vbailey', 'Trudie', 'Lubowitz', '+14585832923', 'Unde.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\2625612deab4eb418483d5b080c52120.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(3, 'Torrance Lebsack', 'clifton95@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'burdette.hahn', 'Isaac', 'Bruen', '+1-301-912-4002', 'Labore.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\ffeaf9e61f811be7c921b0e4ab7bed1a.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(4, 'Edythe Upton', 'considine.torey@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uveum', 'Marianne', 'Dooley', '351-271-3137', 'Sequi.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\d58e5bf30d051731dddb0521f3ffe79b.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(5, 'Aglae Prohaska', 'maximus76@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'amiya.harris', 'Nathanial', 'Murray', '820.379.3732', 'Ipsum.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\f33fa7e4818f2860dcfa128edf78a7cb.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(6, 'Lempi Konopelski', 'price.ilene@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'carmella.deckow', 'Sylvia', 'Kunde', '253-567-5387', 'A.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\69ad3b5387d17fdc92f2bc32b0aaecae.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(7, 'Cydney Greenfelder', 'king.diana@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'harvey40', 'Rashawn', 'Johns', '862-836-3031', 'Unde.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\98d77f5cd92ea145a141c56419c3d729.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(8, 'Stewart Runte', 'bbruen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ngreenfelder', 'Kurtis', 'Weber', '+1.540.258.7996', 'Velit.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\3c011709ebbeb9add60e1eff8e8a9b1d.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(9, 'Miss Diana Collins', 'londricka@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eichmann.mose', 'Aubrey', 'Brakus', '+1-283-828-8655', 'Dicta.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\52356be2650bc624d0bf088f4a6a2352.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38'),
(10, 'Mr. Duncan Grady', 'waelchi.faustino@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'freddie.heaney', 'Deion', 'Labadie', '(434) 726-5507', 'Est.', 'C:\\Users\\lookf\\AppData\\Local\\Temp\\766d51d67851b55e8581ab023d2e7459.png', 0, '2023-02-26 02:55:38', '2023-02-26 02:55:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_programme_schedule_id_foreign` (`programme_schedule_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_programme_id_foreign` (`programme_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_programme_schedule_id_foreign` FOREIGN KEY (`programme_schedule_id`) REFERENCES `schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_programme_id_foreign` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
