-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: vibergir.mysql.ukraine.com.ua
-- Время создания: Сен 11 2018 г., 19:40
-- Версия сервера: 5.7.16-10-log
-- Версия PHP: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vibergir_demo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `user_id` int(11) NOT NULL,
  `email_client` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `telefon` varchar(32) NOT NULL,
  `foto` varchar(128) NOT NULL DEFAULT 'uploads/client/avatar.jpg',
  `matchmaker_login` varchar(64) NOT NULL DEFAULT 'None',
  `status_system` varchar(8) NOT NULL DEFAULT '0',
  `status_tarif` varchar(8) NOT NULL DEFAULT '0',
  `status_email` varchar(8) NOT NULL DEFAULT '0',
  `status_anketa2` varchar(8) NOT NULL DEFAULT '0',
  `status_verification` varchar(8) NOT NULL DEFAULT '0',
  `service` varchar(8) NOT NULL DEFAULT '0',
  `birthday` date NOT NULL,
  `date_reg` date NOT NULL,
  `date_tarif_set` date NOT NULL DEFAULT '2000-01-01',
  `utm_source` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`user_id`, `email_client`, `password`, `first_name`, `last_name`, `country`, `telefon`, `foto`, `matchmaker_login`, `status_system`, `status_tarif`, `status_email`, `status_anketa2`, `status_verification`, `service`, `birthday`, `date_reg`, `date_tarif_set`, `utm_source`) VALUES
(2, 'email@gmail.com', '698d51a19d8a121ce581499d7b701668', 'Petya', 'Petrov', 'United States', '+380931234567', 'uploads/client/1535537763.jpg', 'None', '4', '0', '1', '1', '1', '2', '1990-05-01', '2018-06-01', '2018-08-25', ''),
(3, 'JJamson55@gmail.com', '9df519dd59a3368be389a552e3ef0562', 'John', 'Smith', 'United States', '+45896354893', 'uploads/client/1531834534.jpg', 'None', '1', '0', '1', '0', '0', '0', '1985-05-18', '2018-07-17', '2018-07-17', ''),
(4, 'Jamson99@gmail.com', '1d76b38eb9a0b7010e054ee8285a1000', 'Bil', 'Jackson', 'United Kingdom', '+45896354836', 'uploads/client/1531903416.jpg', 'None', '0', '0', '0', '0', '0', '1', '2018-07-18', '2018-07-18', '2018-07-18', ''),
(5, 'tenisportabr@msn.com', '0e57951c5c597cd30d27aeba20f09ae8', 'Antonio ', 'De Blas', 'Spain', '690707216', 'uploads/client/1532523282.jpeg', 'match1', '2', '0', '0', '0', '0', '0', '1986-02-16', '2018-07-25', '2018-07-25', ''),
(6, 'alanf2011@outlook.com', '2a8c3e9593ef11c3c342533acc41f1ca', 'Alan', 'Ferguson', 'United Kingdom', '07518438175', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1966-06-13', '2018-07-25', '2018-07-25', ''),
(500, 'dmitry.plohotnyuk@gmail.com', '24375c13f81103f27a83b7d5daa4d59c', 'Dmitry', 'Plohotnyuk', 'Ukraine', '+380688989207', 'uploads/client/1535616399.jpg', 'None', '1', '0', '0', '0', '0', '1', '1990-07-31', '2018-08-30', '2000-01-01', ''),
(501, 'afrikanez78@gmail.com', '36f86def269130592e297b60171326bb', 'Alex', 'brokovv', 'United States', '+380933135345', 'uploads/client/1535639471.jpeg', 'match1', '2', '0', '1', '0', '0', '2', '1958-08-20', '2018-08-30', '2000-01-01', ''),
(502, 'agraeal01705@gmail.com', '73bb1e5a0df5f3994ea450d7d8141307', 'Krishna', 'Agrawal', 'India', '08384851705', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1998-07-01', '2018-09-07', '2018-09-07', ''),
(504, 'evgeniamanukina@gmail.com', '503c95d2e375e59dfd29f73845ceb1db', 'Robert', 'Robinson', 'United States', '+45896354893', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '0', '2018-09-22', '2018-09-07', '2018-09-07', ''),
(505, 'tiwarimayank820@gmail.com', '137388615b916ed03e9885b326803332', 'Mayank ', 'Tiwari', 'India', '9369732560', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1997-10-03', '2018-09-07', '2018-09-07', '');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_girl`
--

CREATE TABLE `clients_girl` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `girl_name` varchar(64) NOT NULL,
  `conformity` varchar(64) NOT NULL,
  `date_add` date NOT NULL,
  `girl_status` varchar(64) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients_girl`
--

INSERT INTO `clients_girl` (`id`, `user_id`, `girl_id`, `girl_name`, `conformity`, `date_add`, `girl_status`) VALUES
(7, 3, 6, 'Anna', '1', '2018-06-18', '0'),
(8, 3, 5, 'Natalia', '1', '2018-06-18', '0'),
(29, 2, 3, 'Oksana', '0', '2018-08-29', '2'),
(30, 2, 2300, 'Alyona', '10', '2018-08-27', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_services`
--

CREATE TABLE `clients_services` (
  `id` int(11) NOT NULL,
  `client_id` varchar(64) NOT NULL,
  `letters` varchar(8) NOT NULL DEFAULT '0',
  `skypes` varchar(8) NOT NULL DEFAULT '0',
  `gifts` varchar(8) NOT NULL DEFAULT '0',
  `advice_match` varchar(8) NOT NULL DEFAULT '0',
  `assessment_match` varchar(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients_services`
--

INSERT INTO `clients_services` (`id`, `client_id`, `letters`, `skypes`, `gifts`, `advice_match`, `assessment_match`) VALUES
(1, '2', '10', '3', '0', '1', '0'),
(2, '3', '4', '0', '0', '0', '0'),
(3, '4', '3', '0', '0', '0', '0'),
(4, '5', '3', '0', '0', '0', '0'),
(5, '6', '3', '0', '0', '0', '0'),
(6, '500', '2', '0', '0', '0', '0'),
(7, '501', '1', '0', '0', '0', '0'),
(8, '502', '3', '0', '0', '0', '0'),
(10, '504', '3', '0', '0', '0', '0'),
(11, '505', '3', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `email_log`
--

CREATE TABLE `email_log` (
  `id` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `email` varchar(64) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_log`
--

INSERT INTO `email_log` (`id`, `date_add`, `email`, `subject`, `status`) VALUES
(19, '2018-09-06 12:00:41', 'fedynchik78@gmail.com', 'Заказ #20. Вы получили письмо от клиента (ID:501) сайта BridgeMatchMaker', 'OK'),
(20, '2018-09-06 12:09:26', 'afrikanez78@gmail.com', 'Order #20. You\'ve got a letter from a lady (ID:2300) BridgeMatchmaker website', 'OK'),
(21, '2018-09-07 13:27:23', 'agraeal01705@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(22, '2018-09-07 14:27:52', '78alexandr788@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(23, '2018-09-07 15:07:21', 'evgeniamanukina@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(24, '2018-09-07 15:08:22', 'evgeniamanukina@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(25, '2018-09-07 22:30:55', 'tiwarimayank820@gmail.com', 'Welcome BridgeMatchmaker website', 'OK');

-- --------------------------------------------------------

--
-- Структура таблицы `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `subject` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `description`, `subject`, `content`) VALUES
(1, 'auto_email_0', 'Отправка письма клиенту после регистрации', 'Welcome BridgeMatchmaker website', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                       Thank you for registration on the site BridgeMatchmaker.com. \r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       To continue press on the button below or enter the activation code on the bridgematchmaker.com\r\n                    </p>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{activation_link} \"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_activate-profile.png\"></a> \r\n						 <br><br>\r\n						<b>Your activation code: {activation_key}</b>   \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n'),
(2, 'auto_email_1', 'Отправка письма клиенту после активации почты', 'Successful registration on BridgeMatchMaker', '\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Hello, {first_name}\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Thank you for registration.\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        At this moment your profile is under administrations check.<br>\r\n                        In nearest time we will activate it so you can proceed.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content1_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        You will get one more letter in the moment when it will happen.<br>\r\n                        As soon as possible  we will check your data and notice you<br>\r\n                        about result on your E-mail: {email}<br>Thank you for your trust.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@bridgematchmaker.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n'),
(3, 'auto_email_2', 'Отправка письма клиеннту после заполнения \"Анкета 2\"', 'Fully activated on BridgeMatchMaker', ''),
(4, 'auto_email_3', 'Отправка письма клиенту после того как мачмекер закрепил его за собой', '', ''),
(5, 'auto_email_4', 'Письмо уходит мачмейкеру при когда пришел новый заказ.', '', ''),
(6, 'auto_email_5', 'Письмо уходит клиенту если его заказ отменили.', '', ''),
(7, 'auto_email_6', 'Письмо уходит клиенту, если его аккаунт заблокировали', '', ''),
(8, 'auto_email_7', 'Письмо уходит девушке когда нажимает кнопку \"Отправить письмо девушке\"', 'Заказ #{order_id}. Вы получили письмо от клиента (ID:{user_id}) сайта BridgeMatchMaker', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                   <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500px\">\r\n                   <tbody><tr align=\"center\">\r\n                       <td>\r\n                           <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								<b>Уважаемая {girl_first_name}.</b>\r\n							</p>\r\n							<br>\r\n							<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								Клиент нашего сайта {first_name} ID:{user_id} написал вам письмо и с нетерпением ждем ваш ответ. Что бы ответить на данное письмо нажмите кнопку \"Ответить\" в вашем почтовом клиенте и прикрепите ваше письмо на русском или английском языке. Пожалуйста не затягивайте с ответом если у вас возникли вопросы или вы не хотели бы общаться с данным клиентом пожалуйста свяжитесь с вашим мачмейкером {match_name}  по адресу {match_email}  .  С правилами ответов на письма клиентов более детально вы можете ознакомится на этой  странице  \r\n							</p>\r\n                       </td>\r\n                   </tr>                    \r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr>\r\n                            <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                        <tr align=\"center\">\r\n                            <td width=\"100%\" style=\"display:inline-block;\" align=\"center\">\r\n                                <img src=\"{client_avatar}\" alt=\"\" width=\"220px\" height=\"220px\">\r\n                            </td>\r\n                            <td width=\"100%\" style=\"display:inline-block;\">\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 18px; color: #696969; padding: 0; margin: 0;\">{first_name} ID:{user_id}</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td height=\"10px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>   \r\n            </tr>\r\n            <tr>\r\n                \r\n                            <td>\r\n                               <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#f4f4f4\">\r\n                               <tbody><tr>\r\n                                  <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                   <td>\r\n                                     <table bgcolor=\"#fbf9f3\" style=\"padding: 10px; border-radius: 5px; border: 1px solid #cbba85;\">\r\n                                      <tbody><tr>\r\n                                          <td>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 12px; color: #e95000; padding: 0; margin: 0;\">Order #{order_id}</p>\r\n                                            <hr style=\"background: #cbba85; height: 1px; border: none;\">\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 14px; color: #696969; padding: 0; margin: 0;\"><i>{mail_client}</i></p>\r\n											<hr>\r\n											{includeted_foto}\r\n                                          </td>\r\n                                      </tr>\r\n                                      </tbody></table>\r\n                                       \r\n                                   </td>\r\n                                   <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                </tr>\r\n                                <tr>\r\n                            </tr>\r\n                                </tbody></table>\r\n                                \r\n                            </td>\r\n                        </tr>\r\n                           <tr>\r\n                            <td height=\"20px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                            </tr>\r\n                            <tr>\r\n                            <td height=\"20px\" bgcolor=\"#fff\">   \r\n                            </td>\r\n                            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"http://bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n'),
(9, 'auto_email_8', 'Письмо уходит клиенту когда мачмекер нажимает \"Отправить письмо клиенту\"', 'Order #{order_id}. You\'ve got a letter from a lady (ID:{girl_id}) BridgeMatchmaker website', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                   <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500px\">\r\n                   <tbody><tr align=\"center\">\r\n                       <td>\r\n                           <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								Dear client!\r\n							</p>\r\n							<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								We deliver you letter from a lady <a href=\"http://bridgematchmaker.com/member/girl.php?girl_id={girl_id}\" target=\"_blank\" style=\"color:#e95000;\">{girl_first_name} ID:{girl_id}</a> as a reply to your letter. \r\n							</p>\r\n                       </td>\r\n                   </tr>                    \r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr>\r\n                            <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                        <tr align=\"center\">\r\n                            <td width=\"100%\" style=\"display:inline-block;\" align=\"center\">\r\n                                <img src=\"{girl_avatar}\" alt=\"\" width=\"220px\" height=\"220px\">\r\n                            </td>\r\n                            <td width=\"100%\" style=\"display:inline-block;\">\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 18px; color: #696969; padding: 0; margin: 0;\">{girl_first_name} ID:{girl_id}</p>\r\n                               <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-size: 12px; color: #696969; padding: 0; margin: 0;\">{girl_country}, {girl_city}</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td height=\"10px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>   \r\n            </tr>\r\n            <tr>\r\n                \r\n                            <td>\r\n                               <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#f4f4f4\">\r\n                               <tbody><tr>\r\n                                  <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                   <td>\r\n                                     <table bgcolor=\"#fbf9f3\" style=\"padding: 10px; border-radius: 5px; border: 1px solid #cbba85;\">\r\n                                      <tbody><tr>\r\n                                          <td>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 12px; color: #e95000; padding: 0; margin: 0;\">Order #{order_id}</p>\r\n                                            <hr style=\"background: #cbba85; height: 1px; border: none;\">\r\n                                             <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 14px; color: #696969; padding: 0; margin: 0;\"><i>{mail_girl}</i></p> \r\n                                          </td>\r\n                                      </tr>\r\n                                      </tbody></table>\r\n                                       \r\n                                   </td>\r\n                                   <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                </tr>\r\n                                <tr>\r\n                            </tr>\r\n                                </tbody></table>\r\n                                \r\n                            </td>\r\n                        </tr>\r\n                           <tr>\r\n                            <td height=\"20px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                            </tr>\r\n                            <tr>\r\n                            <td height=\"20px\" bgcolor=\"#fff\">   \r\n                            </td>\r\n                            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr>\r\n                           <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                            <td><br>\r\n                                <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">Please pay attention, for reply on this letter you need to do following actions:</p><br>\r\n                            </td>\r\n                            <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                        </tr>\r\n                        <tr>\r\n                           <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                            <td>\r\n                                <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0; font-weight: 400;\">1. To enter in your cabinet BridgeMatchmaker</p>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">2. Be sure that you have sufficient number available letters</p>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">3. <a href=\"http://bridgematchmaker.com/member/girl.php?girl_id={girl_id}\">Go to lady\'s profile</a></p>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">4. Press the button Write Letter</p><br>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">If you\'re interested in online communication in Skype with this lady, order this service in your cabinet.</p><br>\r\n                            </td>\r\n                            <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"http://bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n'),
(10, 'auto_email_9', 'Отправка письма клиенту при сбросе пароля', 'Remember password', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear {first_name}!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                      We are writing to comply with your request about password recovery. To change the password please press on the button below.\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						Do not forget that you have to keep the information confidential. Do not disclose your password to anybody , even to the administrators.\r\n						If you have not clicked on the Password Recovery link or clicked accidentally, please ignore this message.\r\n                    </p>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{reset_link}\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_reset-password.png\"></a> \r\n						 <br>				\r\n                    </p>\r\n					<br>\r\n					<hr>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `girls`
--

CREATE TABLE `girls` (
  `girl_id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `birthday` date NOT NULL,
  `foto` varchar(128) NOT NULL,
  `video` varchar(256) NOT NULL,
  `gallery_status` varchar(8) NOT NULL DEFAULT '0',
  `activation_status` int(11) NOT NULL DEFAULT '0',
  `login_match` varchar(64) NOT NULL,
  `dreams` text NOT NULL,
  `meeting` text NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL,
  `question4` text NOT NULL,
  `question5` text NOT NULL,
  `question6` text NOT NULL,
  `question7` text NOT NULL,
  `question8` text NOT NULL,
  `question9` text NOT NULL,
  `question10` text NOT NULL,
  `question11` text NOT NULL,
  `question12` text NOT NULL,
  `question13` text NOT NULL,
  `question14` text NOT NULL,
  `question15` text NOT NULL,
  `question16` text NOT NULL,
  `question17` text NOT NULL,
  `question18` text NOT NULL,
  `question19` text NOT NULL,
  `question20` text NOT NULL,
  `question21` text NOT NULL,
  `question22` text NOT NULL,
  `question23` text NOT NULL,
  `question24` text NOT NULL,
  `question25` text NOT NULL,
  `question26` text NOT NULL,
  `question27` text NOT NULL,
  `question28` text NOT NULL,
  `question29` text NOT NULL,
  `question30` text NOT NULL,
  `question31` text NOT NULL,
  `question32` text NOT NULL,
  `question33` text NOT NULL,
  `question34` text NOT NULL,
  `question35` text NOT NULL,
  `question36` text NOT NULL,
  `question37` text NOT NULL,
  `question38` text NOT NULL,
  `question39` text NOT NULL,
  `question40` text NOT NULL,
  `question41` text NOT NULL,
  `question42` text NOT NULL,
  `question43` text NOT NULL,
  `question44` text NOT NULL,
  `question45` text NOT NULL,
  `question46` text NOT NULL,
  `question47` text NOT NULL,
  `question48` text NOT NULL,
  `ask1` text NOT NULL,
  `ask2` text NOT NULL,
  `ask3` text NOT NULL,
  `ask4` text NOT NULL,
  `ask5` text NOT NULL,
  `ask6` text NOT NULL,
  `ask7` text NOT NULL,
  `ask8` text NOT NULL,
  `ask9` text NOT NULL,
  `ask10` text NOT NULL,
  `ask11` text NOT NULL,
  `ask12` text NOT NULL,
  `ask13` text NOT NULL,
  `ask14` text NOT NULL,
  `ask15` text NOT NULL,
  `ask16` text NOT NULL,
  `ask17` text NOT NULL,
  `ask18` text NOT NULL,
  `ask19` text NOT NULL,
  `ask20` text NOT NULL,
  `ask21` text NOT NULL,
  `ask22` text NOT NULL,
  `ask23` text NOT NULL,
  `ask24` text NOT NULL,
  `ask25` text NOT NULL,
  `ask26` text NOT NULL,
  `ask27` text NOT NULL,
  `ask28` text NOT NULL,
  `ask29` text NOT NULL,
  `ask30` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `girls`
--

INSERT INTO `girls` (`girl_id`, `first_name`, `last_name`, `country`, `city`, `birthday`, `foto`, `video`, `gallery_status`, `activation_status`, `login_match`, `dreams`, `meeting`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `ask1`, `ask2`, `ask3`, `ask4`, `ask5`, `ask6`, `ask7`, `ask8`, `ask9`, `ask10`, `ask11`, `ask12`, `ask13`, `ask14`, `ask15`, `ask16`, `ask17`, `ask18`, `ask19`, `ask20`, `ask21`, `ask22`, `ask23`, `ask24`, `ask25`, `ask26`, `ask27`, `ask28`, `ask29`, `ask30`) VALUES
(1, 'Polinka', 'Ivanova', 'Ukraine', 'Odessa', '2018-05-08', 'uploads/girls/1529142359.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '0', 0, '', 'girl dreams', 'To meeting', '', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '', '15', '', '', '', '16', '17', '18', '', '19', '', '', '', '', '20', '', '21', '22', '23', '24', '25', '26', '27', '28', '29', '', '', '31', '31', 'polina1@gmail.com', '32', '33', '34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Tamara', 'Stolyarenko', 'Ukraine', 'Nikolaev', '1985-07-01', 'uploads/girls/1535378784.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '1', 1, 'match1', 'traveling', 'in my city', 'Ukrainian', 'Christian', '175', '56', 'slim', 'green', 'black', 'Higher education', 'negative', 'Divorced', 'Russian', 'English', 'No', 'honest, positive, open', 'love, marriage', 'Hair-stylist', 'Manager', 'Turkey', 'West Europe', 'I am an easy going, sensitive lady with kind heart.', 'traveling, shopping', 'yes', 'Pakistan', 'night owl', 'marriage, equal relation', 'like', '5', 'interesting', 'don\'t know', '35-80', 'Europe', '180', '80', 'black', 'black', 'ateist', 'no', 'desn\'t matter', 'easy-going', 'greedy', 'yes', 'active', '123', '123', 'hmudraya4@gmail.com', 'yes', 'yes', '16.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Oksana', 'Stoyanova', 'Ukraine', 'Poltava', '1980-02-04', 'uploads/girls/1529326469.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '1', 1, 'match1', 'marriage', 'In Paris', 'Ukrainian', 'Christian', '165', '53', 'sportive', 'blue', 'blond', 'Higher education', 'negative', 'Single', 'Russian', 'no', 'No', 'positive, kind', 'family relation', 'teacher', 'teacher', 'no', 'US', 'I am a sensitive lady with kind heart.', 'sport', 'yes', 'all', 'with beloved one ', 'happily married', 'like', 'don\'t know', 'good man', 'don\'t know', '35-60', 'US', '180', '80', 'blue', 'black', 'American', 'Catholic', 'no', 'open', 'stubborn', 'yes', 'active', '123', '123', 'oksanS3@gmail.com', 'yes', 'yes', '16.00', 'sdafs', 'zcxvzxv', 'fsadfdf', '111', '', 'asdfdsf', 'dfsafds', 'asfdads', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '123'),
(4, 'Inna', 'Inina', 'Ukraine', 'Kiev', '1985-05-16', 'uploads/girls/1529327114.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '1', 1, 'match1', 'dreamy', 'everywhere', 'Ukrainian', 'Christian', '170', '50', 'slim', 'grey', 'blond', 'Higher education', 'negative', 'Single', 'Russian', 'English', 'yes', 'honest, positive, open', 'marriage', 'model', 'model', 'Italy', 'Praga', 'I am a sensitive lady with openheart.', 'no', 'yes', 'all', 'night owl', 'marriage', 'like', '5', 'interesting', 'don\'t know', '35-80', 'Europe', '180', '80', 'black', 'grey', 'European', 'Catholic', 'desn\'t matter', '123', '123', 'yes', 'active', '123', '123', 'dmitry.plohotnyuk@gmail.com', 'yes', 'yes', '16.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'Natalia', 'Nikituk', 'Ukraine', 'Odessa', '1980-02-02', 'uploads/girls/1530439682.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '1', 1, 'match1', 'no', 'come to me', 'Ukrainian', 'Christian', '175', '56', 'slim', 'grey', 'black', 'Higher education', 'negative', 'Single', 'Russian', 'Ukrainian', 'No', 'honest, positive, open', 'love, marriage', '5', 'yes', 'no', 'West Europe', 'I am an easy going, sensitive lady ', 'sport', 'yes', 'all', 'night owl', 'marriage', 'like', '5', 'interesting', 'don\'t know', '35-80', 'all', '180', '80', 'black', 'black', 'American', 'Catholic', 'desn\'t matter', '123', 'greedy', 'yes', 'active', '123', '123', 'natali123@gmail.com', 'yes', 'yes', '16.00', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd'),
(6, 'Anna', 'Nikituk', 'Ukraine', 'Kiev', '1985-07-03', 'uploads/girls/1530439660.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '1', 1, 'match1', 'have', 'my city', 'Ukrainian', 'Christian', '170', '50', 'sportive', 'green', 'black', 'Higher education', 'negative', 'Divorced', 'Russian', 'English', 'yes', 'honest, positive, open', 'marriage', 'model', 'Manager', 'no', 'West Europe', 'I am an easy going, sensitive lady ', 'traveling, shopping', 'yes', 'all', 'with beloved one ', 'marriage, equal relation', 'like', '5', 'interesting', 'don\'t know', '35-80', 'all', '180', '80', 'black', 'grey', 'ateist', 'Catholic', 'desn\'t matter', 'easy-going', 'greedy', 'yes', 'active', '123', '123', 'anna7@gmail.com', 'yes', 'yes', '16.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2300, 'Alyona', 'makarova', 'ukrauine', 'Odessa', '1982-08-21', 'uploads/girls/1535376066.jpg', 'https://www.youtube.com/embed/LryExbArjAc', '1', 1, 'match1', 'sea sand evening .. he and I together. music light breeze, martini glass and sea of love', 'I prefer the first date in Ukraine. but I really want to see the country of a man whom I will call my', 'Ukrainian', 'Ateist', '178', '76', 'Slim', 'blue', 'blonde', 'zzd', 'no', 'never marige', 'russian', 'ukrainian , russian', 'ni', 'saa', 'dating romantic', 'seller', 'mix', 'UK', 'US', 'I am a communicative, loyal and kind lady. I am also a tender and caring woman. I value inner world of a person a lot. I think that a kind and deep soul is more valuable than a good looking appearance. I like psychology very much. I enjoy traveling and visiting new places. I am fond of cooking and taking care of people I love.', 'I am a communicative, loyal and kind lady. I am also a tender and caring woman. I value inner world of a person a lot. I think that a kind and deep soul is more valuable than a good looking appearance. I like psychology very much. I enjoy traveling and visiting new places. I am fond of cooking and taking care of people I love.', 'no', 'nomate', 'a', 'a', 'no', '', 'смисчичсми', '', '30-55', '', '199', '90', 'nomate', 'no mate', 'ukrainian', 'sg', 'nimate', 'af', 'af', 'ag', 'ag', '---', '+380936659921', 'fedynchik78@gmail.com', '+380936659921', 'facebook', '17 00 -22 00 ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `girls_foto`
--

CREATE TABLE `girls_foto` (
  `foto_id` int(11) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `status_foto` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `girls_foto`
--

INSERT INTO `girls_foto` (`foto_id`, `girl_id`, `foto`, `status_foto`) VALUES
(3, 1, 'uploads/girls/gallery_foto/1526380865.jpg', 1),
(27, 3, 'uploads/girls/gallery_foto/1534323615.jpg', 0),
(28, 3, 'uploads/girls/gallery_foto/1534323621.jpg', 0),
(29, 3, 'uploads/girls/gallery_foto/1534323627.jpg', 0),
(34, 4, 'uploads/girls/gallery_foto/1534338065.jpeg', 0),
(35, 4, 'uploads/girls/gallery_foto/1534338072.jpg', 0),
(36, 4, 'uploads/girls/gallery_foto/1534338079.jpg', 0),
(37, 5, 'uploads/girls/gallery_foto/1534338127.jpg', 0),
(38, 5, 'uploads/girls/gallery_foto/1534338132.jpg', 0),
(39, 5, 'uploads/girls/gallery_foto/1534338138.jpg', 0),
(40, 5, 'uploads/girls/gallery_foto/1534338144.jpg', 0),
(41, 6, 'uploads/girls/gallery_foto/1534338191.jpg', 0),
(42, 6, 'uploads/girls/gallery_foto/1534338196.jpg', 0),
(43, 6, 'uploads/girls/gallery_foto/1534338203.jpg', 0),
(44, 2300, 'uploads/girls/gallery_foto/1535376084.jpg', 1),
(45, 2300, 'uploads/girls/gallery_foto/1535376098.jpg', 0),
(46, 2300, 'uploads/girls/gallery_foto/1535376243.jpg', 1),
(48, 2300, 'uploads/girls/gallery_foto/1535376277.jpg', 0),
(49, 2300, 'uploads/girls/gallery_foto/1535376789.jpg', 0),
(50, 2, 'uploads/girls/gallery_foto/1535378927.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `girls_invite`
--

CREATE TABLE `girls_invite` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `birthday` text NOT NULL,
  `marital_status` text NOT NULL,
  `message` text NOT NULL,
  `date_add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `girls_invite`
--

INSERT INTO `girls_invite` (`id`, `name`, `email`, `phone`, `birthday`, `marital_status`, `message`, `date_add`) VALUES
(6, 'Катя', 'katya123@gmail.com', '05023535212', '30', 'не замужем', 'замуж', '2018-06-26');

-- --------------------------------------------------------

--
-- Структура таблицы `matchmakers`
--

CREATE TABLE `matchmakers` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `skype` varchar(64) NOT NULL,
  `login` varchar(64) NOT NULL,
  `pass` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `age` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `time` varchar(64) NOT NULL,
  `meetings` varchar(32) NOT NULL,
  `rating` varchar(32) NOT NULL,
  `answers` text NOT NULL,
  `foto` varchar(256) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `matchmakers`
--

INSERT INTO `matchmakers` (`id`, `name`, `email`, `skype`, `login`, `pass`, `description`, `age`, `country`, `phone`, `time`, `meetings`, `rating`, `answers`, `foto`, `status`) VALUES
(6, 'Alexandra Berezyanskaya', 'alexandra.berezyanskaya@bridgematchmaker.com', 'alexandra_match3', 'match1', '7a19f868ace585156d4b7f3bac08eb34', 'Age 47 years, married for 21 year, 3 kids, 1 grandchild. More than 10 years of experience. 4 marriages in 2016. Works individually with every client. Communicative and very professional in question of relationships. Doctor of Psychology. A successful woman, a happy wife, mother and grandmother.', '47', 'Ukraine', '+380681234567', '08:00 - 22:00', '12', '5', '', 'uploads/match/1531740715.jpg', '1'),
(9, 'fedynchik', 'fedynchik78@gmail.com', 'fedynchik78', 'fedynchik78@gmail.com', '7b5647abd054e1dbc1eec9af5a36cf9b', '', '47', '47', '+3809332234567', '08:00 - 16:00', '1', '5', '', 'uploads/match/1536652033.png', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `date_add` date NOT NULL,
  `header` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `notifications_status`
--

CREATE TABLE `notifications_status` (
  `id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date_read` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(128) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `match_login_processed` varchar(64) NOT NULL,
  `description1` text NOT NULL,
  `mail_client` text NOT NULL,
  `foto_client` varchar(128) NOT NULL,
  `mail_girl` text NOT NULL,
  `date_add` date NOT NULL,
  `date_end` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `user_email`, `girl_id`, `type`, `match_login_processed`, `description1`, `mail_client`, `foto_client`, `mail_girl`, `date_add`, `date_end`, `status`) VALUES
(15, 2, 'email@gmail.com', 2, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2', 'asfsdf', '', '', '2018-08-27', '2018-09-05', 3),
(16, 501, 'afrikanez78@gmail.com', 2300, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2300', 'ичичсмичсм сч  ячсиячсичясмчсмчс   ячсиячсичясимчси    ', 'uploads/client/email/1535638906.jpg', '', '2018-08-30', '2018-08-30', 3),
(17, 501, 'afrikanez78@gmail.com', 2300, 0, '', 'Клиент ID: отправил E-Mail для девушки ID:2300', 'ссоарпоапр ырварвар ыврвравпр', 'uploads/client/email/1535640845.jpg', '', '2018-08-30', '0000-00-00', 1),
(18, 500, 'dmitry.plohotnyuk@gmail.com', 4, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:4', 'Текст письма. Текст письма. Текст письма. Текст письма.  Text TEXT  Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT', 'uploads/client/email/1536139215.jpg', '', '2018-09-05', '2018-09-05', 2),
(19, 500, 'dmitry.plohotnyuk@gmail.com', 3, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:3', 'Test', '', '', '2018-09-05', '2018-09-05', 3),
(20, 501, 'afrikanez78@gmail.com', 2300, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2300', 'kri kiss ks\'\'\' ssjkkk sljkhh sslj ', '', 'kuguytb ooiybuytb kuybiutbliurrrrrrrrrrrrrrrr tttttttttttttttttttttttttt', '2018-09-06', '2018-09-06', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `client_id` text NOT NULL,
  `question1` text NOT NULL,
  `question2` text NOT NULL,
  `question3` text NOT NULL,
  `question4` text NOT NULL,
  `question5` text NOT NULL,
  `question6` text NOT NULL,
  `question7` text NOT NULL,
  `question8` text NOT NULL,
  `question9` text NOT NULL,
  `question10` text NOT NULL,
  `question11` text NOT NULL,
  `question12` text NOT NULL,
  `question13` text NOT NULL,
  `question14` text NOT NULL,
  `question15` text NOT NULL,
  `question16` text NOT NULL,
  `question17` text NOT NULL,
  `question18` text NOT NULL,
  `question19` text NOT NULL,
  `question20` text NOT NULL,
  `question21` text NOT NULL,
  `question22` text NOT NULL,
  `question23` text NOT NULL,
  `question24` text NOT NULL,
  `question25` text NOT NULL,
  `question26` text NOT NULL,
  `question27` text NOT NULL,
  `question28` text NOT NULL,
  `question29` text NOT NULL,
  `question30` text NOT NULL,
  `question31` text NOT NULL,
  `question32` text NOT NULL,
  `question33` text NOT NULL,
  `question34` text NOT NULL,
  `question35` text NOT NULL,
  `question36` text NOT NULL,
  `question37` text NOT NULL,
  `question38` text NOT NULL,
  `question39` text NOT NULL,
  `question40` text NOT NULL,
  `question41` text NOT NULL,
  `question42` text NOT NULL,
  `question43` text NOT NULL,
  `question44` text NOT NULL,
  `question45` text NOT NULL,
  `question46` text NOT NULL,
  `question47` text NOT NULL,
  `question48` text NOT NULL,
  `question49` text NOT NULL,
  `question50` text NOT NULL,
  `question51` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `client_id`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `question50`, `question51`) VALUES
(1, '2', 'albanian', 'Atheist', '4 feet 2 inches (127.00 cm)', '91 lbs (41.3 kg)', '', 'Light-brown', 'Blond', '', 'Positive', 'Single', 'Heterosexual', '', '', '', 'Yes', '', 'No', 'Yes', 'Traveling; ', '', 'мисми', '', '', 'I care about the physical shape I am in; I feel better when I am around other people; ', '', '', '', 'смисчичсми', '', '', '', '26-35', '5 feet 0 inches (152.40 cm) - 5 feet 8 inches (172.72 cm)', '165 lbs (74.8 kg)-178 lbs (80.7 kg)', 'Grey', 'Light-brown', '', 'Ateist', '', 'смичсми', 'Divorced', 'Nutral', 'чсмичсми', 'чсмичсмис', '', '', 'чсичсми', '', 'WhatsApp; ', '', ''),
(2, '3', 'american', 'Chatholic', '4 feet 0 inches (121.92 cm)', '94 lbs (42.6 kg)', 'Thin', 'Black', 'Black', '', 'Negative', 'Single', 'Heterosexual', '2 years', 'Truck driver', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', '                 Google                       '),
(3, '4', 'american', 'Atheist', '4 feet 2 inches (127.00 cm)', '92 lbs (41.7 kg)', 'Sportive', 'Light-brown', 'Golden', 'High school', 'Don\'t know', 'Single', 'Heterosexual', ' for some time', 'Manager', '75.000-100.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', '             google                           '),
(4, '5', 'spanish', 'Christian General', '5 feet 8 inches (172.72 cm)', '140 lbs (63.5 kg)', 'Athletic', 'Grey-blue', 'Ligh-brown', 'Collage', 'Negative', 'Single', 'Heterosexual', '5 years', 'Shop-Assistant ', '', 'No', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '   Through the administrator of the webside: www.bridge-of-love.com; He recommend to register here, as a gold user, since I am a customer there for get my real and true love.                 '),
(5, '6', 'british', 'Baptist', '5 feet 6 inches (167.64 cm)', '140 lbs (63.5 kg)', 'Overweight', 'Blue', 'Brown', 'High school', 'Negative', 'Divorced', 'Heterosexual', '7 years', 'Retail', '40.000-55.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                            Facebook            '),
(6, '500', 'ukrainian', 'Christian General', '5 feet 9 inches (175.26 cm)', '160 lbs (72.6 kg)', 'Sportive', 'Blue', 'Ligh-brown', 'University Degree', 'Don\'t know', 'Window', 'Heterosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(7, '501', 'american', 'Baptist', '4 feet 1 inches (124.46 cm)', '101 lbs (45.8 kg)', 'Sportive', 'Black', 'Blond', 'Collage', 'Positive', 'Divorced', 'Heterosexual', 'ukrainian , russian', 'ni', '60.000-75.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', '                                        xcbxbxbcvb'),
(8, '502', 'indian', 'Buddhist', '5 feet 5 inches (165.10 cm)', '138 lbs (62.6 kg)', 'Athletic', 'Black', 'Blond', 'University Degree', 'Don\'t know', 'Window', 'Heterosexual', '02 years', 'Biguniess', '20.000-35.000$', 'No', 'Hindi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '           By massages on mobil.                             '),
(10, '504', 'american', 'Chatholic', '5 feet 10 inches (177.80 cm)', '127 lbs (57.6 kg)', 'Athletic', 'Grey-blue', 'Black', 'High school', 'Negative', 'Single', 'Heterosexual', '2 years', 'no', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; ', '         facebook                               '),
(11, '505', 'indian', 'Atheist', '5 feet 10 inches (177.80 cm)', '119 lbs (54 kg)', 'Thin', 'Black', 'Black', 'Collage', 'Positive', 'Single', 'Homosexual', '2 years', 'Businessman', '20.000-35.000$', 'No', 'Hindi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Searching point by Google');

-- --------------------------------------------------------

--
-- Структура таблицы `setting_gifts`
--

CREATE TABLE `setting_gifts` (
  `gift_id` int(11) NOT NULL,
  `gift_name` text NOT NULL,
  `gift_description` text NOT NULL,
  `gift_foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting_gifts`
--

INSERT INTO `setting_gifts` (`gift_id`, `gift_name`, `gift_description`, `gift_foto`) VALUES
(1, 'Цветы', 'Описание подарака цветы', 'uploads/gift/1531741568.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `setting_service`
--

CREATE TABLE `setting_service` (
  `id` int(11) NOT NULL,
  `letters` varchar(32) NOT NULL,
  `skypes` varchar(32) NOT NULL,
  `gifts` varchar(32) NOT NULL,
  `advice_match` varchar(32) NOT NULL,
  `assessment_match` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting_service`
--

INSERT INTO `setting_service` (`id`, `letters`, `skypes`, `gifts`, `advice_match`, `assessment_match`) VALUES
(1, '3', '35', '50', '12', '90');

-- --------------------------------------------------------

--
-- Структура таблицы `setting_tarif`
--

CREATE TABLE `setting_tarif` (
  `id` int(11) NOT NULL,
  `tarif_name` varchar(32) NOT NULL,
  `tarif_price` varchar(32) NOT NULL,
  `tarif_day` varchar(32) NOT NULL,
  `tarif_letters` varchar(32) NOT NULL,
  `tarif_skypes` varchar(32) NOT NULL,
  `tarif_gifts` varchar(32) NOT NULL,
  `tarif_advice_match` varchar(32) NOT NULL,
  `tarif_assessment_match` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting_tarif`
--

INSERT INTO `setting_tarif` (`id`, `tarif_name`, `tarif_price`, `tarif_day`, `tarif_letters`, `tarif_skypes`, `tarif_gifts`, `tarif_advice_match`, `tarif_assessment_match`, `description`) VALUES
(1, 'free', '0', '15', '3', '0', '0', '0', '0', 'Описание тарифа Free'),
(2, 'silver', '69', '30', '7', '2', '0', '1', '1', 'asfsdf2'),
(3, 'gold', '99', '60', '10', '3', '2', '5', '10', 'sdfsd3'),
(4, 'premium', '299', '120', '25', '10', '5', '10', '20', 'sdgdf');

-- --------------------------------------------------------

--
-- Структура таблицы `translators`
--

CREATE TABLE `translators` (
  `translator_id` int(11) NOT NULL,
  `translator_first_name` varchar(64) NOT NULL,
  `translator_last_name` varchar(64) NOT NULL,
  `translator_age` varchar(32) NOT NULL,
  `translator_email` varchar(128) NOT NULL,
  `translator_phone` varchar(32) NOT NULL,
  `translator_level` text NOT NULL,
  `translator_experience` text NOT NULL,
  `translator_foto` text NOT NULL,
  `translator_match` varchar(64) NOT NULL,
  `agency` text NOT NULL,
  `agency_email` varchar(128) NOT NULL,
  `agency_phone` varchar(32) NOT NULL,
  `translator_date_add` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `translators`
--

INSERT INTO `translators` (`translator_id`, `translator_first_name`, `translator_last_name`, `translator_age`, `translator_email`, `translator_phone`, `translator_level`, `translator_experience`, `translator_foto`, `translator_match`, `agency`, `agency_email`, `agency_phone`, `translator_date_add`) VALUES
(2, 'Nikolai', 'Ivanov', '30', 'traslane@gmail.com', '+380671234568', 'Elementary', 'Not have!', 'uploads/translator/1536655482.jpg', 'match1', 'Roga i Kopita ---', 'ahenscy1@gmail.com', '+306987654322', '2018-09-11');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`user_id`);

--
-- Индексы таблицы `clients_girl`
--
ALTER TABLE `clients_girl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clients_services`
--
ALTER TABLE `clients_services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email_log`
--
ALTER TABLE `email_log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `girls`
--
ALTER TABLE `girls`
  ADD PRIMARY KEY (`girl_id`);

--
-- Индексы таблицы `girls_foto`
--
ALTER TABLE `girls_foto`
  ADD PRIMARY KEY (`foto_id`);

--
-- Индексы таблицы `girls_invite`
--
ALTER TABLE `girls_invite`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `matchmakers`
--
ALTER TABLE `matchmakers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications_status`
--
ALTER TABLE `notifications_status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting_gifts`
--
ALTER TABLE `setting_gifts`
  ADD PRIMARY KEY (`gift_id`);

--
-- Индексы таблицы `setting_service`
--
ALTER TABLE `setting_service`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `setting_tarif`
--
ALTER TABLE `setting_tarif`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translators`
--
ALTER TABLE `translators`
  ADD PRIMARY KEY (`translator_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=506;

--
-- AUTO_INCREMENT для таблицы `clients_girl`
--
ALTER TABLE `clients_girl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `clients_services`
--
ALTER TABLE `clients_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `girls`
--
ALTER TABLE `girls`
  MODIFY `girl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2301;

--
-- AUTO_INCREMENT для таблицы `girls_foto`
--
ALTER TABLE `girls_foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблицы `girls_invite`
--
ALTER TABLE `girls_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `matchmakers`
--
ALTER TABLE `matchmakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `notifications_status`
--
ALTER TABLE `notifications_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `setting_gifts`
--
ALTER TABLE `setting_gifts`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `setting_tarif`
--
ALTER TABLE `setting_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `translators`
--
ALTER TABLE `translators`
  MODIFY `translator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
