-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 27 نوفمبر 2018 الساعة 13:46
-- إصدار الخادم: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuewithlaravel`
--

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_resets_table', 1),
(19, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(20, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(21, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(22, '2016_06_01_000004_create_oauth_clients_table', 1),
(23, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(24, '2018_11_21_095632_create_products_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('88cde892d2094fa90b48a6a88552a62733dcb369e588f50f402bf79435ed67ba8c374748341e1d1d', 1, 2, NULL, '[]', 0, '2018-11-27 10:20:20', '2018-11-27 10:20:20', '2019-11-27 12:20:20'),
('f31a80c31a791c7edf0548a590cbf094c52ea50204850ceda0429255359cee0129e3f7bf273be448', 2, 2, NULL, '[]', 0, '2018-11-27 10:28:30', '2018-11-27 10:28:30', '2019-11-27 12:28:30');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'M6wj8HTVaWUh5W4Itwv1U35plo8wxPTO5EV3WdqX', 'http://localhost', 1, 0, 0, '2018-11-27 10:02:57', '2018-11-27 10:02:57'),
(2, NULL, 'Laravel Password Grant Client', 'zKiVq9jTY5FHfpvdsQKUdI7qskgLOZyigaB6U0g2', 'http://localhost', 0, 1, 0, '2018-11-27 10:02:57', '2018-11-27 10:02:57');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-11-27 10:02:57', '2018-11-27 10:02:57');

-- --------------------------------------------------------

--
-- بنية الجدول `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('0aa4c97b02c15c359af907b9148129b7b5c17fe5fc85bd9ae54e9f9d70d7ad4471405abb81d47207', '88cde892d2094fa90b48a6a88552a62733dcb369e588f50f402bf79435ed67ba8c374748341e1d1d', 0, '2019-11-27 12:20:20'),
('8a744b0fff998769d807af8c7b761a8caba19b05e8769788ad52f6070a692e6d50ecf5b49cee1831', 'f31a80c31a791c7edf0548a590cbf094c52ea50204850ceda0429255359cee0129e3f7bf273be448', 0, '2019-11-27 12:28:30');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `image`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 19, 'id', '', 81.33, 'Quaerat necessitatibus rerum iste est non officiis tenetur. Quia eaque at dolores omnis.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(2, 30, 'quis', '', 38.62, 'Quae aut pariatur labore est. Porro culpa qui recusandae sit corrupti et. Amet rerum pariatur animi id consequuntur dolore. Tempora ut velit alias autem. Et voluptatibus facere nisi non ut nihil. Itaque nihil amet velit tempora quos corrupti. Id quisquam rerum ea provident doloribus accusamus nobis rerum. Tenetur nisi aut quo in vero et modi non. Et praesentium ipsum accusantium repudiandae quod at. Mollitia a dolor sed quis voluptatibus maiores.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(3, 25, 'iusto', '', 21.07, 'Est quisquam veritatis explicabo. Consequatur dolores tempore voluptatibus autem possimus delectus aut. Praesentium reiciendis atque velit vero recusandae enim sed eum. Aut enim temporibus asperiores ut ratione eveniet. Et numquam ducimus excepturi molestiae occaecati.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(4, 1, 'est', '', 4.35, 'Aliquid aut hic et saepe. Et qui explicabo tempora sed. Nostrum omnis et inventore est. Recusandae nisi suscipit praesentium. Consectetur aut quidem eveniet porro dolore et. Eum similique sint maxime assumenda a quia odit consectetur. Optio voluptatibus iste quia et deleniti voluptatem odio. Delectus molestiae itaque consequatur deserunt consequuntur. Illum ut eos in. Sed totam molestiae dolore quod rerum quae alias. Asperiores nisi voluptatem ipsam facere.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(5, 9, 'consectetur', '', 92.03, 'Aut mollitia minima eius aut consequatur. Similique iusto maxime culpa at ipsam quis sunt. Quidem cupiditate maxime consequuntur vel eveniet eius. Optio necessitatibus rerum numquam qui eveniet numquam facere. Hic expedita et ut. Cum temporibus non rerum error. Quia ab aut recusandae dolorem vero. Autem dolor quae nisi. Minima voluptatem voluptas aut suscipit libero velit unde eius. Aut in iste enim necessitatibus ad possimus. Et et necessitatibus rerum minima eos.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(6, 12, 'numquam', '', 16.03, 'Ea est voluptatem omnis ratione. Beatae officia corporis ut a et omnis quia. Velit vero ut voluptatibus eius consequuntur velit. Perspiciatis magni consequatur minus voluptatem est recusandae. Porro reiciendis tempora omnis est iste tenetur itaque nemo. Temporibus facere aut et ut. Voluptatem magnam minus ipsum nobis numquam. Quam quibusdam temporibus ut et earum.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(7, 3, 'et', '', 84.81, 'Iure doloremque voluptatem dicta asperiores voluptatem. Asperiores id est fugiat dicta aut nam in. Autem dolorem iusto est laboriosam ut repudiandae culpa. In officia in aut labore quo. Officia ut exercitationem expedita. Illum incidunt reiciendis dicta. Fuga aut eius dolores similique perspiciatis quia ut fuga. Aut animi enim ut facilis sed.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(8, 7, 'quia', '', 97.37, 'Iusto provident et fuga quia quam. Rerum ut eum ducimus qui qui. Est praesentium ut eos corporis ad repellat quas. Quasi reiciendis non omnis et perferendis tempore quisquam. Totam quos nobis incidunt delectus quaerat dolore pariatur. Numquam dolorum aut nulla nobis accusamus dignissimos est veritatis. Illum hic soluta enim consectetur omnis. Vel sint qui placeat omnis consectetur nobis. Doloremque fugit pariatur aliquam.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(9, 9, 'vel', '', 56.31, 'Et aut et id enim reiciendis. Aspernatur ut omnis ad explicabo aut deleniti vel. Quia libero sit aut odio voluptate. Earum ut commodi quibusdam odio at repellendus et aliquam. Minus animi quibusdam quam excepturi deleniti earum veritatis. Et similique tenetur perferendis iusto natus reprehenderit eum.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(10, 22, 'dolor', '', 28.38, 'Qui inventore ea dolorem. Similique dolorem quas qui enim. Quia consectetur totam alias qui est. Voluptatem aut quasi reiciendis voluptatum. Voluptas qui veniam nam mollitia repellat delectus magni. Ipsum velit iste ipsam iure beatae ea quis. Quisquam ducimus consectetur a sunt recusandae blanditiis maxime est.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(11, 13, 'libero', '', 82.41, 'Consequatur explicabo soluta sint ut vel est. Explicabo dolorem dicta reprehenderit error sint maxime modi. Maxime eum aliquam occaecati ut alias reiciendis suscipit magni. Voluptas sed molestiae dolor recusandae est necessitatibus ad.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(12, 22, 'perferendis', '', 36.07, 'Quibusdam quia nesciunt ducimus. Soluta sit sit fugiat impedit et. Minus optio cum aut aspernatur. Facilis ipsam et voluptas exercitationem ut voluptatem et. Aut officiis laudantium rerum id quod id ut.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(13, 30, 'id', '', 78.54, 'Reprehenderit voluptas vel dolor et. Molestiae aperiam a quo enim suscipit. Qui commodi exercitationem quam molestiae esse. Autem et voluptas dolorem ea ut. Facilis et non consequatur.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(14, 1, 'adipisci', '', 49.58, 'Minima iste sit nesciunt aliquam doloribus illo est. Porro sunt commodi quisquam quia. Laboriosam ullam sunt neque et. Ut quia quam asperiores sit. Harum in et quos et labore voluptatem debitis. Sequi sapiente quas id molestias sed aut. Nisi et ut ex adipisci quisquam. Deleniti eius voluptatem quod modi aut cum. In dicta quo assumenda dolorem maiores error magnam. Earum esse praesentium nam atque sit reprehenderit explicabo est. Quae blanditiis quam ea perspiciatis non.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(15, 5, 'amet', '', 40.17, 'Quam dignissimos quia fuga provident quia est. Vel rerum aut impedit iste veritatis. Non nihil consequatur quo ab enim. Quia repellendus sint ratione unde et laudantium quos blanditiis. Commodi saepe voluptatibus temporibus repellat.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(16, 13, 'dignissimos', '', 8.92, 'Excepturi soluta omnis facere porro quia in consectetur. Laboriosam et libero quam sunt. Vel nesciunt numquam at mollitia nesciunt est. Suscipit optio et atque error sint eligendi.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(17, 28, 'consequatur', '', 24.65, 'Expedita architecto maiores amet cum sunt. Facere excepturi incidunt atque inventore. Quod neque suscipit neque eius quasi quam. Dolores facilis non natus laudantium incidunt neque eaque. Qui fuga quibusdam rerum ad. Est totam est hic blanditiis occaecati possimus. Excepturi qui quia aut qui ea impedit provident.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(18, 11, 'non', '', 45.97, 'Facilis fuga ea corrupti ea. Incidunt quibusdam corporis sit aperiam aliquam earum deserunt distinctio.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(19, 22, 'eius', '', 11.32, 'Ut culpa quae numquam eum accusantium rerum. Quasi sint et eos id reprehenderit et. Officiis omnis at rerum totam sed dolore dignissimos. Error corporis voluptas facere in ea consequatur dolorum ut. Quibusdam ea eos eum doloribus. Reprehenderit ut dolores nostrum sed culpa voluptate et. Error voluptas et vero. Dolore sit voluptatem iure quaerat molestias est. Voluptatem nostrum facilis temporibus praesentium molestias facere.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(20, 9, 'porro', '', 62.85, 'Nulla asperiores dolor voluptatem veniam excepturi. Commodi earum illo in eos porro. Vel voluptas est reprehenderit autem. Dolore quis et in.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(21, 2, 'ab', '', 42.02, 'Reprehenderit numquam qui eaque fuga ea et debitis porro. Ut aut nesciunt dignissimos aut voluptate maxime. Minus et repellendus et quasi aut. Qui nihil distinctio provident consequuntur architecto molestiae enim. Iure aut sunt non quis nam. Nulla eius ipsam commodi illo saepe omnis. Sit consequatur facere tempora in necessitatibus nulla molestiae.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(22, 26, 'aliquam', '', 97.18, 'Consequatur et neque quasi veritatis sunt est.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(23, 23, 'repellat', '', 16.96, 'Laborum voluptas veritatis ipsa. Dolores reprehenderit ut fugit voluptate dolorem error. Consequatur et qui aspernatur cumque. Provident et voluptas quod ut et. Culpa ut maiores est quidem animi non. Placeat eum provident et nesciunt illo sit. Et dolorem sit sit libero. Blanditiis id et voluptatibus. Sed quo excepturi illo sed nobis est. Vitae laboriosam mollitia est et expedita. Maiores quae ipsum tenetur veritatis nemo voluptatem. In dolorem architecto et cum quod dolores. Animi eum qui magni corrupti sapiente.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(24, 2, 'explicabo', '', 25.93, 'Illo dolorem velit dolores blanditiis beatae ut. Molestias optio sequi eius consequatur minima necessitatibus. Sint sint quo modi quod ullam. Facere optio et exercitationem earum quo.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(25, 19, 'itaque', '', 82.43, 'Minus nemo quia maxime. Exercitationem vitae praesentium qui facilis minus perspiciatis.', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(26, 2, 'a', '', 20.54, 'Rerum id alias natus culpa voluptatem eius. Porro aut reprehenderit est est est sit ut. Vitae sequi in nisi est exercitationem non. In quis quasi excepturi est.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(27, 14, 'quidem', '', 17.4, 'Itaque dolorem consequatur accusantium est labore. Et ex aut excepturi nobis eius sequi sit. Nobis consectetur unde id repellat ullam quam iusto nihil. Minus minus ratione impedit aperiam. Neque voluptate commodi exercitationem facilis et. Modi rem occaecati repudiandae harum modi maxime. Qui eum laudantium reiciendis sapiente ex et fugiat. Animi dignissimos animi sit voluptates quia quam. Optio quaerat velit consequuntur voluptas nemo quia sit facilis. Id harum esse quidem quos illo non. Sit magnam quia pariatur aliquam totam voluptatem sequi. Aut ab saepe dolore vel. Reprehenderit expedita id ea at.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(28, 9, 'et', '', 65.71, 'Autem eos ullam assumenda porro itaque laboriosam labore. Voluptas reiciendis tenetur rerum et reiciendis architecto corporis. Repellat vel voluptates deleniti reiciendis.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(29, 6, 'in', '', 96.06, 'Dolorem vitae sit voluptatibus error. Itaque nulla dolore voluptatem incidunt. Reiciendis dolores rerum inventore commodi. Iusto qui voluptas explicabo quo perferendis animi nobis. Nemo a quia soluta ut.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(30, 12, 'reiciendis', '', 10.65, 'Voluptas nulla quis corrupti modi et vel ab. Asperiores consectetur voluptas eveniet atque. Est eos nam natus dolorum eveniet ex nam. Molestias consequatur et beatae tempore labore facere. Dolore voluptates dolores quo quo. Et delectus rem reiciendis libero nemo. Repudiandae laboriosam minus ipsum et. Ducimus magnam repudiandae consequatur illo aut at. Nam sed possimus molestias aut. Aut tempore occaecati corrupti eius tenetur sint repellendus. Aliquid non quibusdam consequatur voluptate occaecati molestias suscipit. Consequuntur doloremque temporibus qui inventore id. Rerum qui sit quae et rerum eum inventore molestiae. Commodi vero est sunt qui veritatis.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(31, 3, 'reprehenderit', '', 71.62, 'Ipsum est ab aperiam unde. Fugiat voluptatem omnis asperiores eos. Et molestiae et sit non.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(32, 9, 'culpa', '', 18.37, 'Illo excepturi vero culpa qui. Ad velit sit tenetur blanditiis a sequi. Ab sit quia sunt neque est. Sunt veniam culpa explicabo accusamus distinctio. Est qui officia adipisci numquam repellat molestias et sed. Beatae ab est id eaque expedita. Fuga vitae reprehenderit ratione commodi repellendus. Ducimus consequatur pariatur enim voluptates id. Est aut quibusdam suscipit et consequatur voluptas commodi eaque. Exercitationem hic et iusto est ratione dolor. Perspiciatis alias provident necessitatibus quisquam quaerat quibusdam quo repellat. Earum animi velit dolorem.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(33, 23, 'culpa', '', 26.66, 'Porro itaque a magni perspiciatis. Error voluptas aperiam assumenda voluptatem. Reprehenderit pariatur quis quas illo accusamus animi nihil. Fugit iusto quod aliquid.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(34, 7, 'veniam', '', 65.74, 'Natus et qui omnis explicabo quia eos. Aperiam qui repudiandae quo. Et repudiandae alias consectetur quasi. Id ipsa nesciunt optio et ut sapiente iusto beatae. Et incidunt id sunt. Corrupti quia repellat asperiores animi error. Ut quo qui aut eum. Veniam quod nesciunt quia eaque iusto sint. Ratione asperiores asperiores non repellat ut qui ut.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(35, 5, 'nulla', '', 13.2, 'Sit est in voluptatum et sed vel nam aut. Amet deleniti et explicabo nihil. Voluptatibus similique nobis illum blanditiis dolorum.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(36, 14, 'corporis', '', 55.29, 'Animi sed magni non et nulla. Et id in soluta labore architecto aut pariatur quidem.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(37, 23, 'eos', '', 92.86, 'Sit repudiandae temporibus quia nisi illum non. Voluptas est ab delectus et. Dolores ut fugit enim rerum molestias nam voluptatem. Qui et laborum aliquid officia tempora eveniet et. Enim consequatur distinctio aut quisquam ut consequatur nesciunt. Enim veniam voluptas est ad velit.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(38, 12, 'quia', '', 30.62, 'Recusandae vel modi eligendi. Nostrum nulla suscipit velit temporibus. Suscipit eius doloremque nesciunt non aperiam. Recusandae deleniti qui pariatur aut quos laborum. Eum error itaque labore ut eos libero dignissimos dolor. Nostrum incidunt ea ducimus debitis. Vel et dolorem accusamus amet odit. Maxime omnis officiis in qui suscipit.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(39, 13, 'nesciunt', '', 94.01, 'Veniam vitae tempore sint et voluptatem. Incidunt sunt aperiam natus iure.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(40, 21, 'sit', '', 49.12, 'Sequi recusandae necessitatibus ut tempora assumenda fugiat. Molestias qui adipisci est accusantium repudiandae. Ducimus architecto et quibusdam.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(41, 28, 'eligendi', '', 45.03, 'Sunt dolore magni aut ut. Quis quia libero corporis facere et tempora non sit. Recusandae nihil voluptates id sed esse. A et ullam quia temporibus.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(42, 5, 'repellat', '', 70.9, 'Et repellendus et ratione consequatur qui qui quod.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(43, 26, 'est', '', 66.29, 'Est quaerat beatae consequatur optio et. Pariatur eaque natus non quidem esse exercitationem. Et quo blanditiis voluptatem provident optio. Vero voluptas quam soluta est voluptate. Labore sunt eum eaque soluta.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(44, 26, 'voluptatibus', '', 76.51, 'Itaque quos explicabo repudiandae iure. Voluptas ad pariatur aut. Eveniet commodi aut modi voluptatum consequuntur nostrum dignissimos. In rerum animi molestias nobis molestias et.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(45, 29, 'eligendi', '', 57.86, 'Voluptatem commodi consequatur sunt. Est numquam repudiandae et quia accusamus quia rerum. Optio omnis et corrupti accusamus non ad quidem. Maiores et omnis fugiat suscipit. Laboriosam quod nobis eos provident. Est quia sunt assumenda architecto. Incidunt placeat est mollitia numquam expedita eveniet amet. Ipsum impedit aut sapiente officiis repellat enim. Enim aut et neque non.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(46, 29, 'accusamus', '', 95.3, 'Repellendus iste voluptatem et fugiat autem.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(47, 28, 'debitis', '', 34.87, 'Pariatur vel quidem dignissimos aut dolore rerum veniam. Incidunt minima iste inventore tempore. Optio inventore et iure et et sit ea. Ducimus sed et blanditiis est. Quisquam nemo voluptatem commodi et voluptatibus magni.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(48, 17, 'et', '', 12.71, 'Omnis necessitatibus alias pariatur vitae voluptatum. Voluptates numquam a omnis sequi magnam odio qui. Ut sint dolorum eum fugit. Ut voluptatem amet voluptas similique fugiat explicabo modi. A quibusdam doloremque placeat veniam laboriosam.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(49, 21, 'velit', '', 60.34, 'Et veritatis nostrum ex aliquam necessitatibus. Nulla quis enim pariatur praesentium doloremque a similique. Voluptatem quo mollitia et vel nihil explicabo molestiae et.', '2018-11-27 10:26:08', '2018-11-27 10:26:08'),
(50, 4, 'facere', '', 76.39, 'Dolores ut et voluptatem corporis autem. Recusandae sint et sit nemo sed sunt velit. Animi exercitationem quas ratione facere et reprehenderit. Officia consequatur quo fugiat assumenda itaque assumenda.', '2018-11-27 10:26:08', '2018-11-27 10:26:08');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Coralie Wunsch', 'meredith.daugherty@example.net', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dfb8lOoSVF', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(2, 'Serenity Osinski', 'osvaldo.littel@example.org', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3jT9GSEgte', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(3, 'Sterling Senger', 'marques.bergnaum@example.org', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9aygXLqXMA', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(4, 'Tyson Rempel', 'xhalvorson@example.net', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'D4SZFcuxdt', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(5, 'Mozell Renner', 'hillard.sawayn@example.net', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'S2UIPNqILb', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(6, 'Brain Parker', 'twillms@example.net', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '3uHNHsr1ke', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(7, 'Prof. Lisette Labadie DVM', 'xavier.monahan@example.org', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Iz52VMvbir', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(8, 'Dr. Teresa Gutkowski', 'jyost@example.org', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'egNZCmbQnZ', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(9, 'Nathen Christiansen V', 'morar.ettie@example.com', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NbZJtOcPXA', '2018-11-27 09:59:28', '2018-11-27 09:59:28'),
(10, 'Deja Feest', 'bria25@example.org', '2018-11-27 09:59:28', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XqnL6PRaJX', '2018-11-27 09:59:29', '2018-11-27 09:59:29'),
(11, 'Dr. Aliya Heller', 'vbatz@example.net', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mkawRWgUQf', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(12, 'Mr. Dillan Rau PhD', 'krystal.green@example.net', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BFq5XcRG3e', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(13, 'Nedra Lowe', 'gmorissette@example.org', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aJJxJN2PwN', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(14, 'Reinhold Champlin DDS', 'schuyler05@example.net', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XLfiHI75Wz', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(15, 'Dejuan Konopelski', 'altenwerth.estevan@example.org', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yoc3cMRCsw', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(16, 'Angela Gaylord', 'sandy97@example.net', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ULEd7h00RP', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(17, 'Marielle Tromp', 'abraham.connelly@example.org', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'o2ZfKH335e', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(18, 'Hector Emard', 'mariam.raynor@example.com', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1YJAv50mHz', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(19, 'Murphy Boehm', 'thea77@example.net', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZV7fT4qCJb', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(20, 'Haleigh Lynch', 'gerlach.lauryn@example.net', '2018-11-27 10:24:36', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'kJVkw22buL', '2018-11-27 10:24:36', '2018-11-27 10:24:36'),
(21, 'Mrs. Alexa Streich', 'zwisoky@example.com', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'j072mnFEll', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(22, 'Pink Kerluke', 'sonia37@example.net', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'NmARsAx3tz', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(23, 'Dr. Davonte Conn', 'vernon.krajcik@example.org', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ePg7iKJRve', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(24, 'Dr. Liliane Corwin MD', 'nhagenes@example.net', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mEBrgcddP0', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(25, 'Jaime Runolfsdottir', 'petra.bednar@example.org', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2onNx6rJXr', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(26, 'Kristin Klein', 'qspinka@example.com', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IXQ9C2l6RD', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(27, 'Mrs. Della Huel III', 'santino.heaney@example.com', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Isw9WFoSMj', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(28, 'Ms. Lexi Cartwright Jr.', 'vivienne.vonrueden@example.com', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'OC5xED3YWA', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(29, 'Dr. Clifton Armstrong', 'stokes.aimee@example.com', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '9lWnga16R8', '2018-11-27 10:26:07', '2018-11-27 10:26:07'),
(30, 'Lily Marvin DDS', 'ana15@example.net', '2018-11-27 10:26:07', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ubSgRp5XrC', '2018-11-27 10:26:07', '2018-11-27 10:26:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
