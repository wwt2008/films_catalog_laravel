-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 11 2018 г., 13:28
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `films`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `film_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'vcxcxvcxv', '2018-10-05 18:55:24', '2018-10-05 18:55:24'),
(2, 1, 10, 'bvbvcb', '2018-10-05 18:55:31', '2018-10-05 18:55:31'),
(3, 1, 10, 'bvcbvcbcvbcvb', '2018-10-05 19:03:08', '2018-10-05 19:03:08'),
(13, 1, 35, 'Quam accusamus qui voluptatem provident ut tempore accusantium enim.', '2018-10-06 11:53:56', '2018-10-06 11:53:56'),
(14, 1, 36, 'Dolorem est sunt dignissimos est rem laudantium.', '2018-10-06 11:53:57', '2018-10-06 11:53:57'),
(15, 1, 37, 'Exercitationem tenetur quia cupiditate error.', '2018-10-06 11:53:57', '2018-10-06 11:53:57');

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_full` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_short` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`id`, `name_full`, `name_short`, `created_at`, `updated_at`) VALUES
(2, 'Afghanistan', 'AF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(3, 'Åland Islands', 'AX', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(4, 'Albania', 'AL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(5, 'Algeria', 'DZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(6, 'American Samoa', 'AS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(7, 'Andorra', 'AD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(8, 'Angola', 'AO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(9, 'Anguilla', 'AI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(10, 'Antarctica', 'AQ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(11, 'Antigua & Barbuda', 'AG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(12, 'Argentina', 'AR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(13, 'Armenia', 'AM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(14, 'Aruba', 'AW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(15, 'Ascension Island', 'AC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(16, 'Australia', 'AU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(17, 'Austria', 'AT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(18, 'Azerbaijan', 'AZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(19, 'Bahamas', 'BS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(20, 'Bahrain', 'BH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(21, 'Bangladesh', 'BD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(22, 'Barbados', 'BB', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(23, 'Belarus', 'BY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(24, 'Belgium', 'BE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(25, 'Belize', 'BZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(26, 'Benin', 'BJ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(27, 'Bermuda', 'BM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(28, 'Bhutan', 'BT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(29, 'Bolivia', 'BO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(30, 'Bosnia & Herzegovina', 'BA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(31, 'Botswana', 'BW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(32, 'Brazil', 'BR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(33, 'British Indian Ocean Territory', 'IO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(34, 'British Virgin Islands', 'VG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(35, 'Brunei', 'BN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(36, 'Bulgaria', 'BG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(37, 'Burkina Faso', 'BF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(38, 'Burundi', 'BI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(39, 'Cambodia', 'KH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(40, 'Cameroon', 'CM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(41, 'Canada', 'CA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(42, 'Canary Islands', 'IC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(43, 'Cape Verde', 'CV', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(44, 'Caribbean Netherlands', 'BQ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(45, 'Cayman Islands', 'KY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(46, 'Central African Republic', 'CF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(47, 'Ceuta & Melilla', 'EA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(48, 'Chad', 'TD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(49, 'Chile', 'CL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(50, 'China', 'CN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(51, 'Christmas Island', 'CX', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(52, 'Cocos (Keeling) Islands', 'CC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(53, 'Colombia', 'CO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(54, 'Comoros', 'KM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(55, 'Congo - Brazzaville', 'CG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(56, 'Congo - Kinshasa', 'CD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(57, 'Cook Islands', 'CK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(58, 'Costa Rica', 'CR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(59, 'Côte d’Ivoire', 'CI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(60, 'Croatia', 'HR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(61, 'Cuba', 'CU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(62, 'Curaçao', 'CW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(63, 'Cyprus', 'CY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(64, 'Czechia', 'CZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(65, 'Denmark', 'DK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(66, 'Diego Garcia', 'DG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(67, 'Djibouti', 'DJ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(68, 'Dominica', 'DM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(69, 'Dominican Republic', 'DO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(70, 'Ecuador', 'EC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(71, 'Egypt', 'EG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(72, 'El Salvador', 'SV', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(73, 'Equatorial Guinea', 'GQ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(74, 'Eritrea', 'ER', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(75, 'Estonia', 'EE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(76, 'Ethiopia', 'ET', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(77, 'Eurozone', 'EZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(78, 'Falkland Islands', 'FK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(79, 'Faroe Islands', 'FO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(80, 'Fiji', 'FJ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(81, 'Finland', 'FI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(82, 'France', 'FR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(83, 'French Guiana', 'GF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(84, 'French Polynesia', 'PF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(85, 'French Southern Territories', 'TF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(86, 'Gabon', 'GA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(87, 'Gambia', 'GM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(88, 'Georgia', 'GE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(89, 'Germany', 'DE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(90, 'Ghana', 'GH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(91, 'Gibraltar', 'GI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(92, 'Greece', 'GR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(93, 'Greenland', 'GL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(94, 'Grenada', 'GD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(95, 'Guadeloupe', 'GP', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(96, 'Guam', 'GU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(97, 'Guatemala', 'GT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(98, 'Guernsey', 'GG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(99, 'Guinea', 'GN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(100, 'Guinea-Bissau', 'GW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(101, 'Guyana', 'GY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(102, 'Haiti', 'HT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(103, 'Honduras', 'HN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(104, 'Hong Kong SAR China', 'HK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(105, 'Hungary', 'HU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(106, 'Iceland', 'IS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(107, 'India', 'IN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(108, 'Indonesia', 'ID', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(109, 'Iran', 'IR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(110, 'Iraq', 'IQ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(111, 'Ireland', 'IE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(112, 'Isle of Man', 'IM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(113, 'Israel', 'IL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(114, 'Italy', 'IT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(115, 'Jamaica', 'JM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(116, 'Japan', 'JP', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(117, 'Jersey', 'JE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(118, 'Jordan', 'JO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(119, 'Kazakhstan', 'KZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(120, 'Kenya', 'KE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(121, 'Kiribati', 'KI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(122, 'Kosovo', 'XK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(123, 'Kuwait', 'KW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(124, 'Kyrgyzstan', 'KG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(125, 'Laos', 'LA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(126, 'Latvia', 'LV', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(127, 'Lebanon', 'LB', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(128, 'Lesotho', 'LS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(129, 'Liberia', 'LR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(130, 'Libya', 'LY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(131, 'Liechtenstein', 'LI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(132, 'Lithuania', 'LT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(133, 'Luxembourg', 'LU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(134, 'Macau SAR China', 'MO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(135, 'Macedonia', 'MK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(136, 'Madagascar', 'MG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(137, 'Malawi', 'MW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(138, 'Malaysia', 'MY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(139, 'Maldives', 'MV', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(140, 'Mali', 'ML', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(141, 'Malta', 'MT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(142, 'Marshall Islands', 'MH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(143, 'Martinique', 'MQ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(144, 'Mauritania', 'MR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(145, 'Mauritius', 'MU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(146, 'Mayotte', 'YT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(147, 'Mexico', 'MX', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(148, 'Micronesia', 'FM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(149, 'Moldova', 'MD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(150, 'Monaco', 'MC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(151, 'Mongolia', 'MN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(152, 'Montenegro', 'ME', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(153, 'Montserrat', 'MS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(154, 'Morocco', 'MA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(155, 'Mozambique', 'MZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(156, 'Myanmar (Burma)', 'MM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(157, 'Namibia', 'NA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(158, 'Nauru', 'NR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(159, 'Nepal', 'NP', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(160, 'Netherlands', 'NL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(161, 'New Caledonia', 'NC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(162, 'New Zealand', 'NZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(163, 'Nicaragua', 'NI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(164, 'Niger', 'NE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(165, 'Nigeria', 'NG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(166, 'Niue', 'NU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(167, 'Norfolk Island', 'NF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(168, 'North Korea', 'KP', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(169, 'Northern Mariana Islands', 'MP', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(170, 'Norway', 'NO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(171, 'Oman', 'OM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(172, 'Pakistan', 'PK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(173, 'Palau', 'PW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(174, 'Palestinian Territories', 'PS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(175, 'Panama', 'PA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(176, 'Papua New Guinea', 'PG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(177, 'Paraguay', 'PY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(178, 'Peru', 'PE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(179, 'Philippines', 'PH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(180, 'Pitcairn Islands', 'PN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(181, 'Poland', 'PL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(182, 'Portugal', 'PT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(183, 'Puerto Rico', 'PR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(184, 'Qatar', 'QA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(185, 'Réunion', 'RE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(186, 'Romania', 'RO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(187, 'Russia', 'RU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(188, 'Rwanda', 'RW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(189, 'Samoa', 'WS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(190, 'San Marino', 'SM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(191, 'São Tomé & Príncipe', 'ST', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(192, 'Saudi Arabia', 'SA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(193, 'Senegal', 'SN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(194, 'Serbia', 'RS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(195, 'Seychelles', 'SC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(196, 'Sierra Leone', 'SL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(197, 'Singapore', 'SG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(198, 'Sint Maarten', 'SX', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(199, 'Slovakia', 'SK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(200, 'Slovenia', 'SI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(201, 'Solomon Islands', 'SB', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(202, 'Somalia', 'SO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(203, 'South Africa', 'ZA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(204, 'South Georgia & South Sandwich Islands', 'GS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(205, 'South Korea', 'KR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(206, 'South Sudan', 'SS', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(207, 'Spain', 'ES', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(208, 'Sri Lanka', 'LK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(209, 'St. Barthélemy', 'BL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(210, 'St. Helena', 'SH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(211, 'St. Kitts & Nevis', 'KN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(212, 'St. Lucia', 'LC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(213, 'St. Martin', 'MF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(214, 'St. Pierre & Miquelon', 'PM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(215, 'St. Vincent & Grenadines', 'VC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(216, 'Sudan', 'SD', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(217, 'Suriname', 'SR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(218, 'Svalbard & Jan Mayen', 'SJ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(219, 'Swaziland', 'SZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(220, 'Sweden', 'SE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(221, 'Switzerland', 'CH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(222, 'Syria', 'SY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(223, 'Taiwan', 'TW', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(224, 'Tajikistan', 'TJ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(225, 'Tanzania', 'TZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(226, 'Thailand', 'TH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(227, 'Timor-Leste', 'TL', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(228, 'Togo', 'TG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(229, 'Tokelau', 'TK', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(230, 'Tonga', 'TO', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(231, 'Trinidad & Tobago', 'TT', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(232, 'Tristan da Cunha', 'TA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(233, 'Tunisia', 'TN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(234, 'Turkey', 'TR', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(235, 'Turkmenistan', 'TM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(236, 'Turks & Caicos Islands', 'TC', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(237, 'Tuvalu', 'TV', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(238, 'U.S. Outlying Islands', 'UM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(239, 'U.S. Virgin Islands', 'VI', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(240, 'Uganda', 'UG', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(241, 'Ukraine', 'UA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(242, 'United Arab Emirates', 'AE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(243, 'United Kingdom', 'GB', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(244, 'United Nations', 'UN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(245, 'United States', 'US', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(246, 'Uruguay', 'UY', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(247, 'Uzbekistan', 'UZ', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(248, 'Vanuatu', 'VU', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(249, 'Vatican City', 'VA', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(250, 'Venezuela', 'VE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(251, 'Vietnam', 'VN', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(252, 'Wallis & Futuna', 'WF', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(253, 'Western Sahara', 'EH', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(254, 'Yemen', 'YE', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(255, 'Zambia', 'ZM', '2018-10-05 03:27:21', '2018-10-05 03:27:21'),
(256, 'Zimbabwe', 'ZW', '2018-10-05 03:27:21', '2018-10-05 03:27:21');

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `release_date` date DEFAULT NULL,
  `ticket_price` double(5,2) DEFAULT NULL,
  `rating` double(2,1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `slug`, `description`, `release_date`, `ticket_price`, `rating`, `created_at`, `updated_at`) VALUES
(9, 'The Godfather', 'the-godfather', 'When the aging head of a famous crime family decides to transfer his position to one of his subalterns, a series of unfortunate events start happening to the family, and a war begins between all the well-known families leading to insolence, deportation, murder and revenge, and ends with the favorable successor being finally chosen.', '1974-03-24', 12.00, 5.0, '2018-10-05 14:18:06', '2018-10-05 16:40:04'),
(10, 'Venom', 'venom', 'When Eddie Brock acquires the powers of a symbiote, he will have to release his alter-ego \"Venom\" to save his life.', '2018-10-04', 5.00, 4.0, '2018-10-05 17:54:11', '2018-10-06 12:26:01'),
(35, 'Ipsam et tenetur maiores', 'ipsam-et-tenetur-maiores', 'Vero dolores similique et. Est et eligendi et quibusdam saepe mollitia ut. Mollitia minima magnam laborum velit qui odio iusto.', '1995-08-23', 450.09, 5.0, '2018-10-06 11:53:56', '2018-10-06 11:53:56'),
(36, 'Minus dolor explicabo', 'minus-dolor-explicabo', 'Maiores similique atque est ut odio velit voluptatem. Asperiores quia aspernatur non fugit praesentium cumque est.', '1997-04-11', 529.47, 2.0, '2018-10-06 11:53:56', '2018-10-06 11:53:56'),
(37, 'Quo', 'quo', 'Molestiae culpa cumque reiciendis suscipit eligendi dolor. Molestiae architecto unde id non. Tempore et repudiandae odit sint aut cupiditate.', '1995-04-01', 822.00, 2.0, '2018-10-06 11:53:56', '2018-10-06 11:53:56');

-- --------------------------------------------------------

--
-- Структура таблицы `film_country`
--

CREATE TABLE `film_country` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_country`
--

INSERT INTO `film_country` (`id`, `film_id`, `country_id`, `created_at`, `updated_at`) VALUES
(12, 9, 245, NULL, NULL),
(14, 10, 245, NULL, NULL),
(42, 35, 42, NULL, NULL),
(43, 35, 212, NULL, NULL),
(44, 36, 147, NULL, NULL),
(45, 37, 70, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `film_genre`
--

CREATE TABLE `film_genre` (
  `id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `genre_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `film_genre`
--

INSERT INTO `film_genre` (`id`, `film_id`, `genre_id`, `created_at`, `updated_at`) VALUES
(10, 9, 9, NULL, NULL),
(11, 9, 11, NULL, NULL),
(13, 10, 4, NULL, NULL),
(14, 10, 15, NULL, NULL),
(15, 10, 19, NULL, NULL),
(66, 35, 13, NULL, NULL),
(67, 35, 15, NULL, NULL),
(68, 36, 13, NULL, NULL),
(69, 36, 19, NULL, NULL),
(70, 37, 9, NULL, NULL),
(71, 37, 10, NULL, NULL),
(72, 37, 13, NULL, NULL),
(73, 37, 22, NULL, NULL),
(74, 37, 23, NULL, NULL),
(75, 35, 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(4, 'Action', 'action', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(5, 'Adventure', 'adventure', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(6, 'Adult', 'adult', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(7, 'Animation', 'animation', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(8, 'Comedy', 'comedy', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(9, 'Crime', 'crime', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(10, 'Documentary', 'documentary', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(11, 'Drama', 'drama', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(12, 'Fantasy', 'fantasy', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(13, 'Family', 'family', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(14, 'Film-Noir', 'film-noir', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(15, 'Horror', 'horror', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(16, 'Musical', 'musical', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(17, 'Mystery', 'mystery', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(18, 'Romance', 'romance', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(19, 'Sci-Fi', 'sci-fi', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(20, 'Short', 'short', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(21, 'Thriller', 'thriller', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(22, 'War', 'war', '2018-10-05 03:41:53', '2018-10-05 03:41:53'),
(23, 'Western', 'western', '2018-10-05 03:41:53', '2018-10-05 03:41:53');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_04_141522_create_genres_table', 1),
(4, '2018_10_04_141620_create_countries_table', 1),
(5, '2018_10_04_141737_create_films_table', 1),
(6, '2018_10_04_141739_create_photos_table', 1),
(7, '2018_10_04_141747_create_comments_table', 1),
(8, '2018_10_04_163435_create_film_country_table', 1),
(9, '2018_10_04_163515_create_film_genre_table', 1),
(10, '2018_10_05_102857_add_group_id_to_photos_table', 2),
(11, '2018_10_05_213851_add_foreign_key_to_comments_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `filepath` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `group_id`, `film_id`, `filepath`, `size`, `created_at`, `updated_at`) VALUES
(22, 1538759930, 9, 'uploads/photo_9_1538759930_s.jpg', 's', '2018-10-05 14:18:50', '2018-10-05 14:18:50'),
(23, 1538759930, 9, 'uploads/photo_9_1538759930_m.jpg', 'm', '2018-10-05 14:18:50', '2018-10-05 14:18:50'),
(24, 1538759930, 9, 'uploads/photo_9_1538759930_l.jpg', 'l', '2018-10-05 14:18:50', '2018-10-05 14:18:50'),
(25, 1538768404, 9, 'uploads/photo_9_1538768404_s.jpg', 's', '2018-10-05 16:40:04', '2018-10-05 16:40:04'),
(26, 1538768404, 9, 'uploads/photo_9_1538768404_m.jpg', 'm', '2018-10-05 16:40:04', '2018-10-05 16:40:04'),
(27, 1538768404, 9, 'uploads/photo_9_1538768404_l.jpg', 'l', '2018-10-05 16:40:05', '2018-10-05 16:40:05'),
(31, 1538772851, 10, 'uploads/photo_10_1538772851_s.jpg', 's', '2018-10-05 17:54:11', '2018-10-05 17:54:11'),
(32, 1538772851, 10, 'uploads/photo_10_1538772851_m.jpg', 'm', '2018-10-05 17:54:11', '2018-10-05 17:54:11'),
(33, 1538772851, 10, 'uploads/photo_10_1538772851_l.jpg', 'l', '2018-10-05 17:54:11', '2018-10-05 17:54:11'),
(34, 1538772867, 10, 'uploads/photo_10_1538772867_s.jpg', 's', '2018-10-05 17:54:27', '2018-10-05 17:54:27'),
(35, 1538772867, 10, 'uploads/photo_10_1538772867_m.jpg', 'm', '2018-10-05 17:54:27', '2018-10-05 17:54:27'),
(36, 1538772867, 10, 'uploads/photo_10_1538772867_l.jpg', 'l', '2018-10-05 17:54:28', '2018-10-05 17:54:28'),
(37, 1538772876, 10, 'uploads/photo_10_1538772876_s.jpg', 's', '2018-10-05 17:54:36', '2018-10-05 17:54:36'),
(38, 1538772876, 10, 'uploads/photo_10_1538772876_m.jpg', 'm', '2018-10-05 17:54:36', '2018-10-05 17:54:36'),
(39, 1538772876, 10, 'uploads/photo_10_1538772876_l.jpg', 'l', '2018-10-05 17:54:36', '2018-10-05 17:54:36');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Slava', 'wwt2008@gmail.com', NULL, '$2y$10$SwDKAhV8BOGBXXaESwQol.fca/rdvZ9VnI7aTxDj2j7y9OyMC0ZZu', 'gVdfFq9B1IewxHDubeC9Vez7U9wOc34lwEz85LVCl3yatFbR3zocxzu7xfrb', '2018-10-05 18:26:03', '2018-10-05 18:26:03');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_film_id_foreign` (`film_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_name_full_unique` (`name_full`),
  ADD UNIQUE KEY `countries_name_short_unique` (`name_short`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `films_slug_unique` (`slug`);

--
-- Индексы таблицы `film_country`
--
ALTER TABLE `film_country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_country_film_id_foreign` (`film_id`),
  ADD KEY `film_country_country_id_foreign` (`country_id`);

--
-- Индексы таблицы `film_genre`
--
ALTER TABLE `film_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_genre_film_id_foreign` (`film_id`),
  ADD KEY `film_genre_genre_id_foreign` (`genre_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`),
  ADD UNIQUE KEY `genres_slug_unique` (`slug`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `photos_filepath_unique` (`filepath`),
  ADD KEY `photos_film_id_foreign` (`film_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `film_country`
--
ALTER TABLE `film_country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `film_genre`
--
ALTER TABLE `film_genre`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `film_country`
--
ALTER TABLE `film_country`
  ADD CONSTRAINT `film_country_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `film_country_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `film_genre_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `film_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
