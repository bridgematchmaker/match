-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: vibergir.mysql.ukraine.com.ua
-- Время создания: Янв 10 2019 г., 11:40
-- Версия сервера: 5.7.16-10-log
-- Версия PHP: 7.0.33

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
(2, 'email@gmail.com', '698d51a19d8a121ce581499d7b701668', 'Petya', 'Petrov', 'United States', '+380931234567', 'uploads/client/1535537763.jpg', 'match1', '3', '1', '1', '1', '1', '1', '1990-05-01', '2018-06-01', '2018-11-02', ''),
(3, 'JJamson55@gmail.com', '9df519dd59a3368be389a552e3ef0562', 'John', 'Smith', 'United States', '+45896354893', 'uploads/client/1531834534.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '0', '1985-05-18', '2018-07-17', '2018-07-17', ''),
(4, 'Jamson99@gmail.com', '1d76b38eb9a0b7010e054ee8285a1000', 'Bil', 'Jackson', 'United Kingdom', '+45896354836', 'uploads/client/1531903416.jpg', 'None', '0', '0', '0', '0', '0', '1', '2018-07-18', '2018-07-18', '2018-07-18', ''),
(5, 'tenisportabr@msn.com', '0e57951c5c597cd30d27aeba20f09ae8', 'Antonio ', 'De Blas', 'Spain', '690707216', 'uploads/client/1532523282.jpeg', 'match1', '2', '0', '0', '0', '0', '0', '1986-02-16', '2018-07-25', '2018-07-25', ''),
(6, 'alanf2011@outlook.com', '2a8c3e9593ef11c3c342533acc41f1ca', 'Alan', 'Ferguson', 'United Kingdom', '07518438175', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1966-06-13', '2018-07-25', '2018-07-25', ''),
(500, 'dmitry.plohotnyuk@gmail.com', '24375c13f81103f27a83b7d5daa4d59c', 'Dmitry', 'Plohotnyuk', 'Ukraine', '+380688989207', 'uploads/client/1535616399.jpg', 'match1', '2', '1', '0', '0', '0', '1', '1990-07-31', '2018-08-30', '2018-12-07', ''),
(501, 'afrikanez78@gmail.com', '610ba050b98caaa6e257362622b92012', 'Alex', 'brokovv', 'United States', '+380933135345', 'uploads/client/1543918238.jpg', 'fedynchik78@gmail.com', '2', '1', '1', '1', '0', '1', '1958-08-20', '2018-08-30', '2000-01-01', ''),
(502, 'agraeal01705@gmail.com', '73bb1e5a0df5f3994ea450d7d8141307', 'Krishna', 'Agrawal', 'India', '08384851705', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1998-07-01', '2018-09-07', '2018-09-07', ''),
(504, 'evgeniamanukina@gmail.com', '503c95d2e375e59dfd29f73845ceb1db', 'Robert', 'Robinson', 'United States', '+45896354893', 'uploads/client/avatar.jpg', 'None', '4', '0', '1', '0', '0', '0', '2018-09-22', '2018-09-07', '2018-09-07', ''),
(505, 'tiwarimayank820@gmail.com', '137388615b916ed03e9885b326803332', 'Mayank ', 'Tiwari', 'India', '9369732560', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1997-10-03', '2018-09-07', '2018-09-07', ''),
(506, 'noreply@domainnetcenter.com', '10d9c885519ffcc1eb9fc277f1804f53', 'DomainNet', 'Center', '1', '954-320-4679', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-09-16', '2018-09-16', ''),
(507, 'jcristobal.dsv@gmail.com', 'e7ecfe5c291f173517c7619f1c85c6b7', 'Juan Cristóbal', 'Sayegh Valdés', 'Chile', '+569 97906735', 'uploads/client/1537306791.jpg', 'None', '1', '0', '1', '0', '0', '2', '1997-10-25', '2018-09-19', '2018-09-19', ''),
(508, 'matias19robles@yahoo.com', '25fb0342c8970141f885148886d77901', 'Robles', 'Matias ', 'Philippines', '09421694857', 'uploads/client/1537430965.jpg', 'None', '4', '0', '0', '0', '0', '0', '0000-00-00', '2018-09-20', '2018-09-20', ''),
(509, 'drazenkokok82@gmail.com', 'd06c1c77b4d7eac2ce27bb5cb96b0e1a', 'Drazen', 'Kokot', 'Croatia', '0917306182', 'uploads/client/1537690367.jpg', 'match1', '2', '0', '0', '0', '0', '0', '0000-00-00', '2018-09-23', '2018-09-23', ''),
(510, 'nickoprayudha1995@gmail.com', 'cbebeb71b9e97828509998742830a10b', 'Mhd Nicko', 'Prayudha', 'Indonesia', '081260640060', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1995-06-15', '2018-09-23', '2018-09-23', ''),
(511, 'loai.taher@gmail.com', '0a2ae5205622023e83e51789d5953d91', 'Loai', 'Eldesoki', 'Egypt', '201010900100', 'uploads/client/1538852978.jpg', 'None', '0', '0', '0', '0', '0', '0', '1981-05-25', '2018-10-06', '2018-10-06', ''),
(512, 'achrefmarweni55@gmail.com', '1fc00f2ff0e534e1b85a1527679ee59f', 'marweni', 'achref', 'Tunisia', '29587418', 'uploads/client/1538903856.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-10-07', '2018-10-07', ''),
(513, 'kkandy40@yahoo.com', '8f06341a9a65def449281eea7779254a', 'Con', 'Hurley ', 'United States', '7016512077', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1979-11-26', '2018-10-08', '2018-10-08', ''),
(514, 'Vesta_2014@ukr.net', '2e3d4f95a0157850e3433e00eb3a141b', 'Luda', 'Luda', 'Ukraine', '+380671397755', 'uploads/client/1539252396.jpg', 'None', '4', '0', '0', '0', '0', '0', '0000-00-00', '2018-10-11', '2018-10-11', ''),
(515, 'www.Ayodelemaxdixon@email.com', 'fb00692e53493f70605f336e167aae17', 'AYODELE', 'MAXDIXON', 'United Kingdom', '+23278309163', 'uploads/client/1539365952.jpg', 'None', '4', '0', '0', '0', '0', '0', '0000-00-00', '2018-10-12', '2018-10-12', ''),
(516, 'aillia1379@gmail.com', '4cd5daa3d1b37600f5c866dc65b14845', 'Henry Roland S', 'Paviera Jr', 'Philippines', '+639276507226', 'uploads/client/1540663341.jpg', 'None', '0', '0', '0', '0', '0', '0', '1978-01-13', '2018-10-27', '2018-10-27', ''),
(517, 'tulisateur4@gmail.com', '8ff03564bc60d09da9154e640a750910', 'Imad', 'imadox', 'United States', '0665835253', 'uploads/client/1541531717.jpeg', 'None', '1', '0', '1', '0', '0', '2', '1998-06-19', '2018-11-06', '2018-11-06', ''),
(518, 'julianawhitehouse21@gmail.com', '4087aa5bf45307a3eb1a05db2b36d5f9', 'Julian', 'Whitehouse', 'Canada', '7058962632', 'uploads/client/1541627486.jpeg', 'match1', '2', '0', '0', '0', '0', '0', '1993-08-21', '2018-11-07', '2018-11-07', ''),
(519, 'alihughes@live.co.uk', '81b1d4f07cb2b0bb5e322dd8c14cd40e', 'Alistair', 'Hughes', 'United Kingdom', '07901973403', 'uploads/client/1542075605.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1974-07-03', '2018-11-13', '2018-11-13', ''),
(520, 'Magirtl@gmail.com', '4d586ba3896545603e407d80c15179e1', 'Aziz ', 'Rtili', 'Morocco', '0600424250', 'uploads/client/1542206817.jpg', 'match1', '2', '0', '0', '0', '0', '0', '0000-00-00', '2018-11-14', '2018-11-14', ''),
(521, 'arthurwillis560@gmail.com', '86c1dc7a9f0a85520376d49e6bd1db79', 'Arthur ', 'Willis', 'United States', '16033067955', 'uploads/client/1542228683.jpeg', 'match1', '2', '0', '1', '0', '0', '1', '1977-09-09', '2018-11-14', '2018-11-14', ''),
(522, 'magar.mag@yandex.com', 'a38cd93be03e642aa4c78829735ad2b9', 'CliffNefCJ', 'CliffNefCJ', 'Somalia', '87879325834', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1980-11-10', '2018-11-16', '2018-11-16', ''),
(523, 'billtown0@gmail.com', 'f82dd2c4f091deccb2c5ecf2003d2e3c', 'Bill', 'Town', 'United States', '+123456789', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1967-01-01', '2018-11-23', '2018-11-23', ''),
(524, 'najad96@yahoo.com', 'd6ee6479d1c09afa97b1c7e7272f8467', 'bouzida', 'djamel ', 'Algeria', '0665431770', 'uploads/client/1543444101.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '1', '1979-03-18', '2018-11-29', '2018-11-29', ''),
(525, 'boomrul@icloud.com', 'b57ff8e3c1642c82649af713bdf624d9', 'bhugawoo', 'choumul', 'Mauritius', '+23058600735', 'uploads/client/avatar.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '1', '1995-07-20', '2018-11-29', '2018-11-29', ''),
(526, 'dolsher404@gemil.com', 'bf4790d0af63152de98be7ffd421b525', 'dilsher', 'dilshrr', 'Syrian Arab Republic', '00963981301566', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1995-01-01', '2018-11-29', '2018-11-29', ''),
(527, 'aansinatra@gmail.com', '37afeec16d2a5fc49f97925e25b562bb', 'aan', 'sinatra', 'Indonesia', '+62 81291145722', 'uploads/client/1543593480.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '1', '0', '1', '1982-07-12', '2018-11-30', '2018-11-30', ''),
(528, 'majid197881@gmail.com', 'e544a30fb47c240620cb90713a1b2988', 'Majid', 'Mandil', 'Germany', '+49 1749174543', 'uploads/client/1543610475.jpg', 'None', '0', '0', '0', '0', '0', '0', '1978-08-01', '2018-11-30', '2018-11-30', ''),
(529, 'azjilalikanada14@gmail.com', 'f67efa4e42aaf31442032782cc18e646', 'Djilali', 'Djilali', 'Algeria', '+213656883451', 'uploads/client/1543689006.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-12-01', '2018-12-01', ''),
(530, 'kendinl_211@hotmail.com', '5fde3065baf95afb6e9469bfb38f835e', 'Tufan', 'Sevincer', 'Turkey', '+90 5338524094', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-12-05', '2018-12-05', ''),
(531, 'ultimaweapon2000@yahoo.com', '89ec76289cfbe551026945eabc64c45f', 'Derek', 'Lee', 'United States', '3232250887', 'uploads/client/1544218163.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '2', '1994-12-04', '2018-12-07', '2018-12-07', ''),
(532, 'vcvvkEmemaMiztrita@1000xbetslots.xyz', '7bef161d6cd9987e6ca918a6b3d396e7', 'PreeliomiZG', 'PreeliomiZG', 'South Africa', '87534972433', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1976-12-11', '2018-12-10', '2018-12-10', ''),
(533, 'bibeklimb12@yahoo.com', 'd36c71408784d8123de29768f24df75e', 'Shiva', 'Shio', 'Nepal', '+977 9813445814', 'uploads/client/1545110654.jpg', 'None', '0', '0', '0', '0', '0', '0', '1985-12-28', '2018-12-18', '2018-12-18', ''),
(534, 'Jdavid03899@gmail.com', 'e529d496a0706379f504d936d8de235b', 'Thomas', 'Jeffry', 'United States', '+1 85396458', 'uploads/client/avatar.jpg', 'match1', '3', '0', '1', '1', '1', '1', '2018-10-17', '2018-12-18', '2018-12-18', ''),
(535, 'krishnaoli1968@gmail.com', '99d98a9d3f20f297aa3a999479e3abb0', 'john sharma ', 'Oli', 'Nepal', '+977 9816938404', 'uploads/client/1545384189.jpg', 'None', '1', '0', '1', '0', '0', '2', '1970-04-16', '2018-12-21', '2018-12-21', ''),
(536, 'javy32049@yahoo.com', '113c4baf113f217245b7b01f73d65ec3', 'Javier', 'Vazquez', 'United States', '+1 6462337137', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1972-06-25', '2019-01-04', '2019-01-04', ''),
(537, 'bhekimangisi07@gmail.com', '40a8492bca05ee9274b4259a92422508', 'Bhekinkosi ', 'Dube ', 'South Africa', '+27 27734989324', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-05', '2019-01-05', ''),
(538, 'nicci26041989@gmail.com', 'b6c83d0cb5891651ff33fafa222c41d7', 'Nickolay', 'Sviren', 'Ukraine', '+380 985858805', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1980-04-26', '2019-01-08', '2019-01-08', ''),
(539, 'beadle1023@icloud.com', '91518b818399318094edc9baf44c2e68', 'Benjamin', 'Beadle', 'United States', '+1 5042586539', 'uploads/client/1547087799.jpeg', 'None', '1', '0', '1', '1', '0', '2', '1986-04-23', '2019-01-10', '2019-01-10', '');

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
(30, 2, 2300, 'Alyona', '10', '2018-08-27', '0'),
(36, 510, 2304, 'Alla ', '1', '2018-10-21', '0'),
(45, 500, 2313, 'Olya', '9', '2018-11-02', '0'),
(47, 500, 2312, 'Olesya', '8', '2018-11-04', '0'),
(48, 500, 2306, 'Tatiana', '0', '2018-11-06', '2'),
(49, 500, 2303, 'Tatiana', '8', '2018-11-12', '0'),
(50, 518, 2304, 'Alla ', '1', '2018-11-12', '0'),
(51, 500, 2314, 'Victoria', '9', '2018-11-12', '0'),
(52, 525, 2310, 'Tatyana', '0', '2018-11-29', '2');

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
(1, '2', '10', '3', '0', '1', '1'),
(2, '3', '4', '0', '0', '0', '0'),
(3, '4', '3', '0', '0', '0', '0'),
(4, '5', '3', '0', '0', '0', '0'),
(5, '6', '3', '0', '0', '0', '0'),
(6, '500', '27', '16', '1', '11', '21'),
(7, '501', '9', '4', '2', '1', '1'),
(8, '502', '3', '0', '0', '0', '0'),
(10, '504', '3', '0', '0', '0', '0'),
(11, '505', '3', '0', '0', '0', '0'),
(12, '506', '3', '0', '0', '0', '0'),
(13, '507', '3', '0', '0', '0', '0'),
(14, '508', '3', '0', '0', '0', '0'),
(15, '509', '3', '0', '0', '0', '0'),
(16, '510', '3', '0', '0', '0', '0'),
(17, '511', '3', '0', '0', '0', '0'),
(18, '512', '3', '0', '0', '0', '0'),
(19, '513', '3', '0', '0', '0', '0'),
(20, '514', '3', '0', '0', '0', '0'),
(21, '515', '3', '0', '0', '0', '0'),
(22, '516', '3', '0', '0', '0', '0'),
(23, '517', '3', '0', '0', '0', '0'),
(24, '518', '3', '0', '0', '0', '0'),
(25, '519', '3', '0', '0', '0', '0'),
(26, '520', '3', '0', '0', '0', '0'),
(27, '521', '3', '0', '0', '0', '0'),
(28, '522', '3', '0', '0', '0', '0'),
(29, '523', '3', '0', '0', '0', '0'),
(30, '524', '3', '0', '0', '0', '0'),
(31, '525', '3', '0', '0', '0', '0'),
(32, '526', '3', '0', '0', '0', '0'),
(33, '527', '3', '0', '0', '0', '0'),
(34, '528', '3', '0', '0', '0', '0'),
(35, '529', '3', '0', '0', '0', '0'),
(36, '530', '3', '0', '0', '0', '0'),
(37, '531', '3', '0', '0', '0', '0'),
(38, '532', '3', '0', '0', '0', '0'),
(39, '533', '3', '0', '0', '0', '0'),
(40, '534', '3', '0', '0', '0', '0'),
(41, '535', '3', '0', '0', '0', '0'),
(42, '536', '3', '0', '0', '0', '0'),
(43, '537', '3', '0', '0', '0', '0'),
(44, '538', '3', '0', '0', '0', '0'),
(45, '539', '3', '0', '0', '0', '0');

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
(25, '2018-09-07 22:30:55', 'tiwarimayank820@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(26, '2018-09-16 05:21:40', 'noreply@domainnetcenter.com', 'Welcome BridgeMatchmaker website', 'OK'),
(27, '2018-09-19 00:39:51', 'jcristobal.dsv@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(28, '2018-09-19 00:41:17', 'jcristobal.dsv@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(29, '2018-09-20 11:09:25', 'matias19robles@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(30, '2018-09-21 16:58:29', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 500): ', 'OK'),
(31, '2018-09-21 17:02:19', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 500): ', 'OK'),
(32, '2018-09-21 17:16:49', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 500): Dmitry Plohotnyuk', 'OK'),
(33, '2018-09-21 17:22:29', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 500)', 'OK'),
(34, '2018-09-21 18:03:03', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. (Публичная часть)', 'OK'),
(35, '2018-09-23 11:12:47', 'drazenkokok82@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(36, '2018-09-23 20:15:19', 'nickoprayudha1995@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(37, '2018-10-06 22:09:38', 'loai.taher@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(38, '2018-10-07 12:17:37', 'achrefmarweni55@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(39, '2018-10-08 21:36:18', 'kkandy40@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(40, '2018-10-11 13:06:36', 'Vesta_2014@ukr.net', 'Welcome BridgeMatchmaker website', 'OK'),
(41, '2018-10-12 20:39:12', 'www.Ayodelemaxdixon@email.com', 'Welcome BridgeMatchmaker website', 'OK'),
(42, '2018-10-27 21:02:22', 'aillia1379@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(43, '2018-11-02 13:03:14', 'dmitry.plohotnyuk@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(44, '2018-11-02 13:05:03', 'dmitry.plohotnyuk@gmail.com', 'Remember password', 'OK'),
(45, '2018-11-04 13:04:42', 'afrikanez78@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(46, '2018-11-04 13:04:59', 'dmitry.plohotnyuk@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(47, '2018-11-06 21:15:17', 'tulisateur4@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(48, '2018-11-06 21:21:14', 'tulisateur4@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(49, '2018-11-07 23:51:26', 'julianawhitehouse21@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(50, '2018-11-12 21:29:13', '', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'ERROR'),
(51, '2018-11-12 21:31:51', '', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'ERROR'),
(52, '2018-11-12 21:34:00', 'dmitry.plohotnyuk@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(53, '2018-11-12 21:34:15', 'julianawhitehouse21@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(54, '2018-11-12 21:37:12', '', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'ERROR'),
(55, '2018-11-12 21:38:38', '', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'ERROR'),
(56, '2018-11-12 21:43:00', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'OK'),
(57, '2018-11-12 21:47:59', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(58, '2018-11-12 21:50:09', 'dmitry.plohotnyuk@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(59, '2018-11-12 22:15:10', 'tulisateur4@gmail.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(60, '2018-11-12 22:15:47', 'afrikanez78@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(61, '2018-11-12 22:16:45', 'aillia1379@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(62, '2018-11-12 22:17:26', 'kkandy40@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(63, '2018-11-13 03:40:21', 'alihughes@live.co.uk', 'Welcome BridgeMatchmaker website', 'OK'),
(64, '2018-11-13 03:46:53', 'alihughes@live.co.uk', 'Successful registration on BridgeMatchMaker', 'OK'),
(65, '2018-11-14 14:24:25', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(66, '2018-11-14 16:01:10', 'tulisateur4@gmail.com', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'OK'),
(67, '2018-11-14 16:46:57', 'Magirtl@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(68, '2018-11-14 22:51:24', 'arthurwillis560@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(69, '2018-11-14 22:58:46', 'arthurwillis560@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(70, '2018-11-14 22:58:48', 'arthurwillis560@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(71, '2018-11-15 00:32:40', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 521)', 'OK'),
(72, '2018-11-15 10:53:28', 'arthurwillis560@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(73, '2018-11-15 11:03:11', 'Magirtl@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(74, '2018-11-16 03:36:00', 'magar.mag@yandex.com', 'Welcome BridgeMatchmaker website', 'OK'),
(75, '2018-11-23 14:14:28', 'billtown0@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(76, '2018-11-23 14:15:08', 'billtown0@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(77, '2018-11-29 00:12:05', 'billtown0@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(78, '2018-11-29 00:28:21', 'najad96@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(79, '2018-11-29 00:29:59', 'najad96@yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(80, '2018-11-29 05:34:08', 'boomrul@icloud.com', 'Welcome BridgeMatchmaker website', 'OK'),
(81, '2018-11-29 05:53:02', 'boomrul@icloud.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(82, '2018-11-29 06:14:07', 'dolsher404@gemil.com', 'Welcome BridgeMatchmaker website', 'OK'),
(83, '2018-11-29 15:22:46', 'najad96@yahoo.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(84, '2018-11-29 15:59:35', 'najad96@yahoo.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(85, '2018-11-29 17:28:23', 'boomrul@icloud.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(86, '2018-11-30 08:46:20', 'evgeniamanukina@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(87, '2018-11-30 13:06:47', 'dmitry.plohotnyuk@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(88, '2018-11-30 13:09:48', 'dmitry.plohotnyuk@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(89, '2018-11-30 13:20:40', 'dmitry.plohotnyuk@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(90, '2018-11-30 13:34:58', 'dmitry.plohotnyuk@gmail.com', 'You received a reply from matchmaker in your cabinet', 'OK'),
(91, '2018-11-30 13:42:54', 'dmitry.plohotnyuk@gmail.com', 'You received a reply from matchmaker in your cabinet', 'OK'),
(92, '2018-11-30 17:39:26', 'aansinatra@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(93, '2018-11-30 17:41:00', 'aansinatra@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(94, '2018-11-30 22:41:15', 'majid197881@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(95, '2018-12-01 20:30:06', 'azjilalikanada14@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(96, '2018-12-01 21:28:25', 'aansinatra@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(97, '2018-12-01 21:30:16', 'majid197881@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(98, '2018-12-01 21:31:13', 'afrikanez78@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(99, '2018-12-02 20:45:09', 'azjilalikanada14@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(100, '2018-12-03 10:58:11', 'majid197881@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(101, '2018-12-03 13:35:37', 'tulisateur4@gmail.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(102, '2018-12-03 13:36:54', 'JJamson55@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(103, '2018-12-03 13:37:21', 'evgeniamanukina@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(104, '2018-12-03 13:45:14', 'evgeniamanukina@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(105, '2018-12-03 13:45:34', 'evgeniamanukina@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(106, '2018-12-03 13:46:28', 'achrefmarweni55@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(107, '2018-12-03 13:46:54', 'kkandy40@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(108, '2018-12-04 12:06:18', 'afrikanez78@gmail.com', 'Remember password', 'OK'),
(109, '2018-12-04 12:08:27', 'afrikanez78@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(110, '2018-12-04 12:37:02', 'afrikanez78@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(111, '2018-12-05 19:51:29', 'kendinl_211@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(112, '2018-12-06 10:24:04', 'kendinl_211@hotmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(113, '2018-12-07 23:29:23', 'ultimaweapon2000@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(114, '2018-12-07 23:32:53', 'ultimaweapon2000@yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(115, '2018-12-08 21:40:29', 'ultimaweapon2000@yahoo.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(116, '2018-12-08 21:41:54', 'ultimaweapon2000@yahoo.com', 'You were provided with a personal matchmaker', 'OK'),
(117, '2018-12-10 03:02:48', 'vcvvkEmemaMiztrita@1000xbetslots.xyz', 'Welcome BridgeMatchmaker website', 'OK'),
(118, '2018-12-10 15:01:22', 'vcvvkEmemaMiztrita@1000xbetslots.xyz', 'You were provided with a personal matchmaker', 'OK'),
(119, '2018-12-10 15:01:34', 'vcvvkEmemaMiztrita@1000xbetslots.xyz', 'You account was suspended on BridgeMatchMaker', 'OK'),
(120, '2018-12-12 16:29:49', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. (Публичная часть)', 'OK'),
(121, '2018-12-18 07:24:14', 'bibeklimb12@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(122, '2018-12-18 09:41:33', 'bibeklimb12@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(123, '2018-12-18 16:10:00', 'Jdavid03899@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(124, '2018-12-18 16:11:21', 'Jdavid03899@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(125, '2018-12-18 16:23:04', 'Jdavid03899@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(126, '2018-12-21 11:23:09', 'krishnaoli1968@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(127, '2018-12-21 11:27:41', 'krishnaoli1968@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(128, '2018-12-21 20:55:36', 'bibeklimb12@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(129, '2018-12-21 21:04:21', 'krishnaoli1968@gmail.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(130, '2018-12-25 11:04:06', 'afrikanez78@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(131, '2018-12-26 02:25:30', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. (Публичная часть)', 'OK'),
(132, '2019-01-04 07:49:44', 'javy32049@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(133, '2019-01-04 10:12:50', 'javy32049@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(134, '2019-01-05 18:12:56', 'afrikanez78@gmail.com', 'Remember password', 'OK'),
(135, '2019-01-05 23:24:31', 'bhekimangisi07@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(136, '2019-01-08 05:21:06', 'nicci26041989@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(137, '2019-01-09 10:13:20', 'bhekimangisi07@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(138, '2019-01-10 04:36:39', 'beadle1023@icloud.com', 'Welcome BridgeMatchmaker website', 'OK'),
(139, '2019-01-10 04:38:47', 'beadle1023@icloud.com', 'Successful registration on BridgeMatchMaker', 'OK');

-- --------------------------------------------------------

--
-- Структура таблицы `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `subject` text NOT NULL,
  `content` text NOT NULL,
  `type` varchar(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `description`, `subject`, `content`, `type`) VALUES
(1, 'auto_email_0', 'Отправка письма клиенту после регистрации', 'Welcome BridgeMatchmaker website', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                       Thank you for registration on the site BridgeMatchmaker.com. \r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       To continue press on the button below or enter the activation code on the bridgematchmaker.com\r\n                    </p>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{activation_link} \"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_activate-profile.png\"></a> \r\n						 <br><br>\r\n						<b>Your activation code: {activation_key}</b>   \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(2, 'auto_email_1', 'Отправка письма клиенту после активации почты', 'Successful registration on BridgeMatchMaker', '\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Hello, {first_name}\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Thank you for registration.\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        At this moment your profile is under administrations check.<br>\r\n                        In nearest time we will activate it so you can proceed.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content1_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        You will get one more letter in the moment when it will happen.<br>\r\n                        As soon as possible  we will check your data and notice you<br>\r\n                        about result on your E-mail: {email}<br>Thank you for your trust.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@bridgematchmaker.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(3, 'auto_email_2', 'Отправка письма клиеннту после заполнения \"Анкета 2\"', 'Fully activated on BridgeMatchMaker', '', '0'),
(4, 'auto_email_3', 'Отправка письма клиенту после того как мачмекер закрепил его за собой', 'You were provided with a personal matchmaker', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear {first_name}, according to the service you were provided by Bridgematchmaker.com, now you have personal matchmaker {match_name} \r\nyou can ask her any  questions you are interested in your cabinet by <a href=\"https://bridgematchmaker.com/member/chat_matchmaker.php\" target=\"_blank\" style=\"color: #3a6fbe;\">this link</a> or via {match_email}\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                        <tbody><tr>\r\n                            <td>\r\n                                <table width=\"300px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n                                    <tbody><tr>\r\n                                        <td align=\"center\">\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n<!--                        Avatar BridgeMatchMaker-->\r\n                        <img src=\"{match_avatar}\" alt=\"\" width=\"220px\" height=\"220px\">\r\n                                            </p>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                                                {match_name}\r\n                                            </p>\r\n                                        </td>\r\n                                    </tr>\r\n                                </tbody></table>\r\n                                <table width=\"300px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\">\r\n                                    <tbody><tr>\r\n                                        <td align=\"center\">\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                                                Email: \r\n                                                {match_email} <br>\r\n                                                Skype: \r\n                                                {match_skype} <br>\r\n                                                Phone: \r\n                                                {match_phone}\r\n                                            </p>\r\n                                        </td>\r\n                                    </tr>\r\n                                </tbody></table>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n\r\n\r\n', '0'),
(5, 'auto_email_4', 'Письмо уходит мачмейкеру при когда пришел новый заказ.', '', '', '0'),
(6, 'auto_email_5', 'Письмо уходит клиенту если его заказ отменили.', '', '', '0'),
(7, 'auto_email_6', 'Письмо уходит клиенту, если его аккаунт заблокировали', 'You account was suspended on BridgeMatchMaker', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">&shy;</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">&shy;</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear {first_name}!\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\nYou account was suspended. If you don\'t know why it happened, please contact your personal matchmaker {match_email} or administrator {admin_email} . <br>\r\nWith respect, administration.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(8, 'auto_email_7', 'Письмо уходит девушке когда нажимает кнопку \"Отправить письмо девушке\"', 'Заказ #{order_id}. Вы получили письмо от клиента (ID:{user_id}) сайта BridgeMatchMaker', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                   <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500px\">\r\n                   <tbody><tr align=\"center\">\r\n                       <td>\r\n                           <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								<b>Уважаемая {girl_first_name}.</b>\r\n							</p>\r\n							<br>\r\n							<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								Клиент нашего сайта {first_name} ID:{user_id} написал вам письмо и с нетерпением ждем ваш ответ. Что бы ответить на данное письмо нажмите кнопку \"Ответить\" в вашем почтовом клиенте и прикрепите ваше письмо на русском или английском языке. Пожалуйста не затягивайте с ответом если у вас возникли вопросы или вы не хотели бы общаться с данным клиентом пожалуйста свяжитесь с вашим мачмейкером {match_name}  по адресу {match_email}  .  С правилами ответов на письма клиентов более детально вы можете ознакомится на этой  странице  \r\n							</p>\r\n                       </td>\r\n                   </tr>                    \r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr>\r\n                            <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                        <tr align=\"center\">\r\n                            <td width=\"100%\" style=\"display:inline-block;\" align=\"center\">\r\n                                <img src=\"{client_avatar}\" alt=\"\" width=\"220px\" height=\"220px\">\r\n                            </td>\r\n                            <td width=\"100%\" style=\"display:inline-block;\">\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 18px; color: #696969; padding: 0; margin: 0;\">{first_name} ID:{user_id}</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td height=\"10px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>   \r\n            </tr>\r\n            <tr>\r\n                \r\n                            <td>\r\n                               <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#f4f4f4\">\r\n                               <tbody><tr>\r\n                                  <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                   <td>\r\n                                     <table bgcolor=\"#fbf9f3\" style=\"padding: 10px; border-radius: 5px; border: 1px solid #cbba85;\">\r\n                                      <tbody><tr>\r\n                                          <td>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 12px; color: #e95000; padding: 0; margin: 0;\">Order #{order_id}</p>\r\n                                            <hr style=\"background: #cbba85; height: 1px; border: none;\">\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 14px; color: #696969; padding: 0; margin: 0;\"><i>{mail_client}</i></p>\r\n											<hr>\r\n											{includeted_foto}\r\n                                          </td>\r\n                                      </tr>\r\n                                      </tbody></table>\r\n                                       \r\n                                   </td>\r\n                                   <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                </tr>\r\n                                <tr>\r\n                            </tr>\r\n                                </tbody></table>\r\n                                \r\n                            </td>\r\n                        </tr>\r\n                           <tr>\r\n                            <td height=\"20px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                            </tr>\r\n                            <tr>\r\n                            <td height=\"20px\" bgcolor=\"#fff\">   \r\n                            </td>\r\n                            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"http://bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(9, 'auto_email_8', 'Письмо уходит клиенту когда мачмекер нажимает \"Отправить письмо клиенту\"', 'Order #{order_id}. You\'ve got a letter from a lady (ID:{girl_id}) BridgeMatchmaker website', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                   <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"500px\">\r\n                   <tbody><tr align=\"center\">\r\n                       <td>\r\n                           <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								Dear client!\r\n							</p>\r\n							<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #484848; padding: 0; margin: 0;\">\r\n								We deliver you letter from a lady <a href=\"http://bridgematchmaker.com/member/girl.php?girl_id={girl_id}\" target=\"_blank\" style=\"color:#e95000;\">{girl_first_name} ID:{girl_id}</a> as a reply to your letter. \r\n							</p>\r\n                       </td>\r\n                   </tr>                    \r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr>\r\n                            <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                        <tr align=\"center\">\r\n                            <td width=\"100%\" style=\"display:inline-block;\" align=\"center\">\r\n                                <img src=\"{girl_avatar}\" alt=\"\" width=\"220px\" height=\"220px\">\r\n                            </td>\r\n                            <td width=\"100%\" style=\"display:inline-block;\">\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 18px; color: #696969; padding: 0; margin: 0;\">{girl_first_name} ID:{girl_id}</p>\r\n                               <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-size: 12px; color: #696969; padding: 0; margin: 0;\">{girl_country}, {girl_city}</p>\r\n                            </td>\r\n                        </tr>\r\n                        <tr>\r\n                            <td height=\"10px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>   \r\n            </tr>\r\n            <tr>\r\n                \r\n                            <td>\r\n                               <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#f4f4f4\">\r\n                               <tbody><tr>\r\n                                  <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                   <td>\r\n                                     <table bgcolor=\"#fbf9f3\" style=\"padding: 10px; border-radius: 5px; border: 1px solid #cbba85;\">\r\n                                      <tbody><tr>\r\n                                          <td>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 12px; color: #e95000; padding: 0; margin: 0;\">Order #{order_id}</p>\r\n                                            <hr style=\"background: #cbba85; height: 1px; border: none;\">\r\n                                             <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 14px; color: #696969; padding: 0; margin: 0;\"><i>{mail_girl}</i></p> \r\n                                          </td>\r\n                                      </tr>\r\n                                      </tbody></table>\r\n                                       \r\n                                   </td>\r\n                                   <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                                </tr>\r\n                                <tr>\r\n                            </tr>\r\n                                </tbody></table>\r\n                                \r\n                            </td>\r\n                        </tr>\r\n                           <tr>\r\n                            <td height=\"20px\" bgcolor=\"#f4f4f4\">   \r\n                            </td>\r\n                            </tr>\r\n                            <tr>\r\n                            <td height=\"20px\" bgcolor=\"#fff\">   \r\n                            </td>\r\n                            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"left\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr>\r\n                           <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                            <td><br>\r\n                                <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">Please pay attention, for reply on this letter you need to do following actions:</p><br>\r\n                            </td>\r\n                            <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                        </tr>\r\n                        <tr>\r\n                           <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                            <td>\r\n                                <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0; font-weight: 400;\">1. To enter in your cabinet BridgeMatchmaker</p>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">2. Be sure that you have sufficient number available letters</p>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">3. <a href=\"http://bridgematchmaker.com/member/girl.php?girl_id={girl_id}\">Go to lady\'s profile</a></p>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">4. Press the button Write Letter</p><br>\r\n                               <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 22px; font-size: 16px; color: #696969; padding: 0; margin: 0;\">If you\'re interested in online communication in Skype with this lady, order this service in your cabinet.</p><br>\r\n                            </td>\r\n                            <td width=\"40px\" bgcolor=\"#f4f4f4\"></td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"http://bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0');
INSERT INTO `email_templates` (`id`, `name`, `description`, `subject`, `content`, `type`) VALUES
(10, 'auto_email_9', 'Отправка письма клиенту при сбросе пароля', 'Remember password', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear {first_name}!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                      We are writing to comply with your request about password recovery. To change the password please press on the button below.\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						Do not forget that you have to keep the information confidential. Do not disclose your password to anybody , even to the administrators.\r\n						If you have not clicked on the Password Recovery link or clicked accidentally, please ignore this message.\r\n                    </p>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{reset_link}\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_reset-password.png\"></a> \r\n						 <br>				\r\n                    </p>\r\n					<br>\r\n					<hr>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(11, 'auto_email_10', 'Отправка письма клиенту при добавлении девушки в рекомендацию', 'New recommendation on BridgeMatchmaker.com', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">&shy;</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">&shy;</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        You have a new recommendation on BridgeMatchmaker.com  <br>\r\nYour personal matchmaker has added you a new lady and she is waiting for your attention.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" background=\"http://bridgematchmaker.com/upload_img/foto_all/auto_email_84545.jpg\" width=\"100px;\" height=\"auto\">\r\n                <td> <br>                  \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        <img src=\"{girl_avatar}\" width=\"110\" height=\"110\" alt=\"\"><br>\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 20px; font-weight: 500; font-size: 18px; color: #ffffff; padding: 0; margin: 0;\">\r\n                        {girl_first_name} ID:{girl_id}\r\n                    </p>\r\n                       <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 20px; font-weight: 500; font-size: 12px; color: #ffffff; padding: 0; margin: 0;\">\r\n                        {girl_country}, {girl_city}\r\n                    </p>\r\n                    <br> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        Go to Matchmaker\'s Recommendation to meet this lady!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        <a href=\"http://bridgematchmaker.com/member/gallery.php?view=recomendation\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/Button.png\" alt=\"\"></a>\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:{match_email}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"http://bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(12, 'auto_email_11', 'Письмо уходит клиенту когда мачмекер отвечает в чате', 'You received a reply from matchmaker in your cabinet', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear {first_name}!\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        You have a reply from your personal matchmaker {match_name} about your request. You can read it in your cabinet by <a href=\"https://bridgematchmaker.com/member/chat_matchmaker.php\" target=\"_blank\" style=\"color: #3a6fbe;\">this link</a>.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(13, 'hand_email_01', 'Получит клиент в статусе новый когда долго не верифицирует свое мыло', 'Bridgematchmaker.com - Please verify your e-mail', '\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                       You received this letter because few days ago you have registered a profile on Bridgematchmaker.com website. But you haven\'t verified your  address.We cannot do that by our own and if you will not confirm  your address by clicking a button or entering a code on activation page, You can move to next step immediately after completing this action right now.\r\n						Thank you for choosing <a href=\"https://bridgematchmaker.com\" style=\"color: #3a6fbe;\">Bridgematchmaker.com</a>  real dating service					   \r\n                    </p>				 \r\n					<p></p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{activation_link} \"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_activate-profile.png\"></a> \r\n						 <br><br>\r\n						<b>Your activation code: {activation_key}</b>   \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1'),
(14, 'hand_email_02', 'Получит клиент в статусе Активный который не сделал выбор сервиса', 'Bridgematchmaker.com - Make a choice of service settings of your profile', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Thank you for full registration on the <a href=\"https://bridgematchmaker.com\" style=\"color: #3a6fbe;\"> Bridgematchmaker.com </a> website. You have filled information about yourself and it is time to do a last setting of your cabinet to start searching relationships</p>						\r\n                </td>\r\n            </tr>		\r\n            <tr align=\"left\">\r\n                <td height=\"25px\" bgcolor=\"#fff\"><br>\r\n                <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n						According to our website\'s policy, we leave a choice to you:<br>				\r\n                    \r\n						1) You can refuse from help of our of professional matchmaker and get an access to the full database of ladies profiles\r\n					<br>\r\n						2) Leave search to us and get a full help from professional matchmaker who will find a candidate for you, provide an individual work with you, will help you to organize communication in skype and real date. \r\n					<br><br>\r\n                    </p>						\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        For making a choice please follow the link</p>	<br>					\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        <a href=\"https://bridgematchmaker.com/login.php\"><img src=\"https://www.bridge-of-love.com/data/files/images/site/article/201811111857076441.png\"></a></p>	<br>					\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/steps_1.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"left\">\r\n                <td height=\"25px\" bgcolor=\"#fff\"> <br>  \r\n				<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n				1) Enter login and password that you made during registration\r\n				<br>\r\n				2) Click on \"Select service\" menu\r\n				<br>\r\n				3) Read and choose one of the options that you find fitting.\r\n				<br>\r\n				Confirm your choice with a button  <br>Any of your choice can be canceled in same menu option in your cabinet. </p><br>\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1'),
(15, 'hand_email_03', 'Получит клиент в статусе Активный который выбрал bridge-of-love.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', '\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                    According to your settings you were provided an access and profile on Bridge of Love website. To enter and begin using a profile first you need to follow the link	\r\n					</p><p>	\r\n						<a href=\"https://www.bridge-of-love.com/login.html\"><img src=\"https://bridgematchmaker.com/upload_img/email/201811111913442425.png\"></a>\r\n					</p>						\r\n                </td>\r\n            </tr>		\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">\r\n						Enter your e-mail: {email} and password -  125D52.					\r\n                    <p>\r\n						You can always  go back to your cabinet on <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br> and change these settings\r\n					</p>\r\n						Thank you for your choice 	\r\n 					\r\n					<p>\r\n                    </p>						\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                  \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1'),
(16, 'hand_email_04', 'Получит клиент в статусе Верифицированный когда он долгое время не заполняет Анкету 2', 'Bridgematchmaker.com - We ask you to make the last step.', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Thank you for registration and fill in the profile on our website. A personal matchmaker have been assigned to you  and contact with you at the nearest time. We ask you to make the last step. You need to fill in information about the lady you are looking for  that your matchmaker can start the search of ladies that match your criteria.<br><br>\r\n For this you need to login to your cabinet. In the window you see after login click the button START NOW. Next you will need to fill in all the fields that are marked with an asterisk. <br>\r\nYour matchmaker immediatelly will start the search after you fill in this information and contact with you.<br>\r\nThank you for your attention. </p>						\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/make_your_profile_complete.png\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `feeds`
--

CREATE TABLE `feeds` (
  `id` int(11) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `foto_description` text NOT NULL,
  `video` text NOT NULL,
  `video_description` text NOT NULL,
  `day_status` varchar(32) NOT NULL,
  `day_rating` varchar(8) NOT NULL,
  `day_description` text NOT NULL,
  `waiting_foto` text NOT NULL,
  `waiting_description` text NOT NULL,
  `question_girl` text NOT NULL,
  `question_match` text NOT NULL,
  `question_rating` varchar(8) NOT NULL,
  `relation_description` text NOT NULL,
  `relation_man` text NOT NULL,
  `relation_girl` text NOT NULL,
  `present_property` text NOT NULL,
  `present_description` text NOT NULL,
  `description` text NOT NULL,
  `type` varchar(8) NOT NULL,
  `match_add` varchar(64) NOT NULL,
  `match_add_login` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `question49` text NOT NULL,
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
  `ask30` text NOT NULL,
  `date_add` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `girls`
--

INSERT INTO `girls` (`girl_id`, `first_name`, `last_name`, `country`, `city`, `birthday`, `foto`, `video`, `gallery_status`, `activation_status`, `login_match`, `dreams`, `meeting`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `ask1`, `ask2`, `ask3`, `ask4`, `ask5`, `ask6`, `ask7`, `ask8`, `ask9`, `ask10`, `ask11`, `ask12`, `ask13`, `ask14`, `ask15`, `ask16`, `ask17`, `ask18`, `ask19`, `ask20`, `ask21`, `ask22`, `ask23`, `ask24`, `ask25`, `ask26`, `ask27`, `ask28`, `ask29`, `ask30`, `date_add`) VALUES
(2, 'Tamara', 'Stolyarenko', 'Ukraine', 'Nikolaev', '1985-07-01', 'uploads/girls/1535378784.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '0', 0, 'match1', 'traveling', 'in my city', 'Ukrainian', 'Christian', '175', '56', 'slim', 'green', 'black', 'Higher education', 'negative', 'Divorced', 'Russian', 'English', 'No', 'honest, positive, open', 'love, marriage', 'Hair-stylist', 'Manager', 'Turkey', 'West Europe', 'I am an easy going, sensitive lady with kind heart.', 'traveling, shopping', 'yes', 'Pakistan', 'night owl', 'marriage, equal relation', 'like', '5', 'interesting', 'don\'t know', '35-80', 'Europe', '180', '80', 'black', 'black', 'ateist', 'no', 'desn\'t matter', 'easy-going', 'greedy', 'yes', 'active', '123', '123', 'hmudraya4@gmail.com', 'yes', 'yes', '16.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(3, 'Oksana', 'Stoyanova', 'Ukraine', 'Poltava', '1980-02-04', 'uploads/girls/1529326469.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '0', 0, 'match1', 'marriage', 'In Paris', 'Ukrainian', 'Christian', '165', '53', 'sportive', 'blue', 'blond', 'Higher education', 'negative', 'Single', 'Russian', 'no', 'No', 'positive, kind', 'family relation', 'teacher', 'teacher', 'no', 'US', 'I am a sensitive lady with kind heart.', 'sport', 'yes', 'all', 'with beloved one ', 'happily married', 'like', 'don\'t know', 'good man', 'don\'t know', '35-60', 'US', '180', '80', 'blue', 'black', 'American', 'Catholic', 'no', 'open', 'stubborn', 'yes', 'active', '123', '123', 'oksanS3@gmail.com', 'yes', 'yes', '16.00', 'Test', 'sdafs', 'zcxvzxv', 'fsadfdf', '111', '', 'asdfdsf', 'dfsafds', 'asfdads', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '123', '0000-00-00'),
(4, 'Inna', 'Inina', 'Ukraine', 'Kiev', '1985-05-16', 'uploads/girls/1529327114.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '0', 0, 'match1', 'dreamy', 'everywhere', 'Ukrainian', 'Christian', '170', '50', 'slim', 'grey', 'blond', 'Higher education', 'negative', 'Single', 'Russian', 'English', 'yes', 'honest, positive, open', 'marriage', 'model', 'model', 'Italy', 'Praga', 'I am a sensitive lady with openheart.', 'no', 'yes', 'all', 'night owl', 'marriage', 'like', '5', 'interesting', 'don\'t know', '35-80', 'Europe', '180', '80', 'black', 'grey', 'European', 'Catholic', 'desn\'t matter', '123', '123', 'yes', 'active', '123', '123', 'dmitry.plohotnyuk@gmail.com', 'yes', 'yes', '16.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(5, 'Natalia', 'Nikituk', 'Ukraine', 'Odessa', '1980-02-02', 'uploads/girls/1530439682.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '0', 0, 'match1', 'no', 'come to me', 'Ukrainian', 'Christian', '175', '56', 'slim', 'grey', 'black', 'Higher education', 'negative', 'Single', 'Russian', 'Ukrainian', 'No', 'honest, positive, open', 'love, marriage', '5', 'yes', 'no', 'West Europe', 'I am an easy going, sensitive lady ', 'sport', 'yes', 'all', 'night owl', 'marriage', 'like', '5', 'interesting', 'don\'t know', '35-80', 'all', '180', '80', 'black', 'black', 'American', 'Catholic', 'desn\'t matter', '123', 'greedy', 'yes', 'active', '123', '123', 'natali123@gmail.com', 'yes', 'yes', '16.00', '', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', 'asdfsd', '0000-00-00'),
(6, 'Anna', 'Nikituk', 'Ukraine', 'Kiev', '1985-07-03', 'uploads/girls/1530439660.jpg', 'https://www.youtube.com/embed/oZa_djYJr4E', '0', 0, 'match1', 'have', 'my city', 'Ukrainian', 'Christian', '170', '50', 'sportive', 'green', 'black', 'Higher education', 'negative', 'Divorced', 'Russian', 'English', 'yes', 'honest, positive, open', 'marriage', 'model', 'Manager', 'no', 'West Europe', 'I am an easy going, sensitive lady ', 'traveling, shopping', 'yes', 'all', 'with beloved one ', 'marriage, equal relation', 'like', '5', 'interesting', 'don\'t know', '35-80', 'all', '180', '80', 'black', 'grey', 'ateist', 'Catholic', 'desn\'t matter', 'easy-going', 'greedy', 'yes', 'active', '123', '123', 'anna7@gmail.com', 'yes', 'yes', '16.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2300, 'Alyona', 'makarova', 'ukrauine', 'Odessa', '1982-08-21', 'uploads/girls/1535376066.jpg', 'https://www.youtube.com/embed/LryExbArjAc', '0', 1, 'match1', 'sea sand evening .. he and I together. music light breeze, martini glass and sea of love', 'I prefer the first date in Ukraine. but I really want to see the country of a man whom I will call my', 'Ukrainian', 'Ateist', '178', '76', 'Slim', 'blue', 'blonde', 'zzd', 'no', 'never marige', 'russian', 'ukrainian , russian', 'ni', 'saa', 'dating romantic', 'seller', 'mix', 'UK', 'US', 'I am a communicative, loyal and kind lady. I am also a tender and caring woman. I value inner world of a person a lot. I think that a kind and deep soul is more valuable than a good looking appearance. I like psychology very much. I enjoy traveling and visiting new places. I am fond of cooking and taking care of people I love.', 'I am a communicative, loyal and kind lady. I am also a tender and caring woman. I value inner world of a person a lot. I think that a kind and deep soul is more valuable than a good looking appearance. I like psychology very much. I enjoy traveling and visiting new places. I am fond of cooking and taking care of people I love.', 'no', 'nomate', 'a', 'a', 'no', '', 'смисчичсми', '', '30-55', '', '199', '90', 'nomate', 'no mate', 'ukrainian', 'sg', 'nimate', 'af', 'af', 'ag', 'ag', '---', '+380936659921', 'fedynchik78@gmail.com', '+380936659921', 'facebook', '17 00 -22 00 ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2301, 'Alyona', 'makarova', 'Ukraine', 'Odessa', '1982-08-21', 'uploads/girls/1538997685.jpg', '', '0', 0, 'migel', '', '', 'russian', 'Christian Sientist', '145', '61', 'Athletic', 'Blue', 'Red', 'Collage', 'Don\'t know', 'never marige', 'German', 'ukrainian , russian', 'ni', 'saa', 'dating romantic', 'seller', 'mix', 'UK', 'US', 'I am a communicative, loyal and kind lady. I am also a tender and caring woman. I value inner world of a person a lot. I think that a kind and deep soul is more valuable than a good looking appearance. I like psychology very much. I enjoy traveling and visiting new places. I am fond of cooking and taking care of people I love.', 'I am a communicative, loyal and kind lady. I am also a tender and caring woman. I value inner world of a person a lot. I think that a kind and deep soul is more valuable than a good looking appearance. I like psychology very much. I enjoy traveling and visiting new places. I am fond of cooking and taking care of people I love.', 'No', 'nomate', 'a', 'a', 'no', 'zxvzxv', 'xcvxzcv', 'xzcbvbbv', '18-25', 'Afghanistan', '4 feet 9 inches (144.78 cm)', '92 lbs (41.7 kg)', 'Blue', 'Blond', 'andorran', 'Chatholic', 'No', 'bcvbcb', 'vbvcb', 'No', 'cvbcvb', 'cvncvn', '537823269876', 'farea1055@gayt.com', '+380936659921', 'facebook', '17 00 -22 00 ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2302, 'Irina', 'makarova', 'Ukraine', 'Nikolaev', '1990-06-10', 'uploads/girls/1539692479.jpg', '', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '172', '56', 'Sportive', 'Blue', 'Black', 'High school', 'Negative', 'never marige', 'Russian', 'ukrainian , russian, English', 'no', 'I may state that I am jovial and upbeat girl, who strongly confides in fact that all which may happen during the life leads to everything good', 'Dating or building the life with me will be for sure interesting and exciting because I prefer to amuse my partner - bringing element of surprise and fun every possible way.', 'Beautician', 'Beautician', 'Europe Ukraine', 'Poland ', 'I enjoy smiling and having fun, spending the time in the company of entertaining people. I am a great listener and can be really helpful in any situation. I like to prepare lovely pleasing surprises for my close people because I adore seeing beams on their faces.', 'Among my hobbies are tennis and billiards', 'Doesn\'t matter', 'Europe Ukraine', '   ', ' ', '', '', '', '', '36-45', '', '4 feet 2 inches (127.00 cm)', '138 lbs (62.6 kg)', 'Blue', 'Red', 'algerian', 'Chatholic', 'No', 'af', 'vbvcb', '', '', 'см', '+380936659921', 'farea4455@gayt.com', '+380936659921', 'Facebook ', '', 'In Skype, I ask you to avoid talking about sex. i don\'t do sex online', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2303, 'Tatiana', 'Tarasova', 'Ukraine', 'Odessa', '2018-10-17', '', '', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '164', '57', 'Sportive', 'Grey-blue', 'Blond', 'University Degree', 'Negative', 'Widow', 'Ukrainian', 'Italian', 'yes', 'open, easy--going, cheerful', 'love, marriage', 'psychologist', 'model', 'Italy', 'West Europe', 'I am an easy going, sensitive lady with kind heart.', 'traveling, shopping', 'Yes', 'Pakistan', 'night owl', 'marriage, equal relation', 'like', 'dirty plates; lie', 'to find my destiny', 'no good man', '46-55', 'United States', '6 feet 3 inches (190.50 cm)', '136 lbs (61.7 kg)', 'Blue', 'Golden', 'australian', 'Christian General', 'Yes', 'easy-going', 'stubborn', 'Yes', 'active', 'sense of humor', '123', 'tattaras12@gmail.com', 'yes', 'yes', '16.00', 'he should be in suit', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2304, 'Alla ', 'volkova', 'Ukraine', 'Nikolaev', '1995-03-04', 'uploads/girls/1539789764.jpg', 'https://www.youtube.com/embed/gWKjDUjnp40', '0', 1, 'match1', '', '', 'ukrainian', 'Unitarian', '170', '64', 'Sportive', 'Brown', 'Ligh-brown', 'High school', 'Negative', 'never marige', 'Russian', 'ukrainian , russian, English', 'no', 'I want to be honest with you...I try to find my future here near 2 years and unfortunately I did not find. I had some relationship  on this site but in the end it is not such I need. I am serious girl who really wants meeting in real life and try to build serious relationship', 'I don\'t understand how people can describe &quot;ideal partner&quot;, because I think that if you are together with the person you like, then you fall in love and he will be ideal for you in all the senses! So I prefer to accept man a person he is', 'Nurse', 'Nurse', 'Europe Ukraine', 'US', ' Sometimes absolutely different genres - it all depends on my mood.', ' I also like listening to music. I prefer jazz and club music.', 'Doesn\'t matter', 'Europe Ukraine', '', 'a', '', '', '', '', '36-45', 'Doesn\'t matter', '5 feet 7 inches (170.18 cm)', '116 lbs (52.6 kg)', 'Black', 'Red', 'australian', 'Orthodox', 'Doesn\'t matter', 'modesty, honesty, independence', 'anger, insolence', 'Doesn\'t matter', '', '+380963365510', '+380963365510', 'tasira1055@gmail.com', '+380963365510', 'Facebook ', '17 00 -22 00 ', 'c', 'Quiet girl', 'Spontaneity', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2305, 'Olesya ', 'Shundel', 'Ukraine', 'Nikolaev', '1981-02-24', 'uploads/girls/1540199576.jpg', 'https://www.youtube.com/embed/nuOZNdY1AuY', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '175', '56', 'Athletic', 'Green', 'Brown', 'High school', 'Don\'t know', 'never marige', 'Russian', 'Ukrainian , Russian, English', 'no', 'I am an ordinary woman. I try to look good and also not to forget about life priorities being important for a man, in particular to create a family', ' A sense of humour is important for both partners. I like to laugh heartily and think that evenings should be filled with laugh and cheerful mood. I do not care about age difference.', 'Cosmetologist', 'Cosmetologist', 'Europe, US', 'Europe', 'Like many people, I like walks in the open air and to participate in promoting the city greening.', 'Having tried diving one day, no one can stop me from doing this. If there is such an opportunity, I do scuba diving and study the underwater world.', 'Doesn\'t matter', 'Ukraine or Europ', '', 'I like to laugh heartily and think that evenings should be filled with laugh and cheerful mood. I do not care about age difference.', '', '', '', '', '46-55', 'Doesn\'t matter', '5 feet 0 inches (152.40 cm)', '134 lbs (60.8 kg)', 'Black', 'Black', 'italian', 'Christian General', 'Doesn\'t matter', 'modesty, honesty, independence', 'anger, insolence', 'Doesn\'t matter', '', '+3809963365510', '+3809963365510', 'tasira0255@gmail.com', '+3809963365510', 'Twitter ', '10 00 -20 00 ', 'I am always ready to communicate with a man who is ready to be a gentleman in video chat and respects me. I prefer to start chatting when my friend is in the video chat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2306, 'Tatiana', 'Nekrasova', 'Ukraine', 'Nikolaev', '1962-12-19', 'uploads/girls/1540201922.jpg', '', '0', 1, 'match1', '', 'I prefer to spend my first date in my city. But also I like traveling and will be glad to visit foreign country together with my man.', 'ukrainian', 'Orthodox', '163', '63', 'Thin', 'Green', 'Ligh-brown', 'University Degree', 'Negative', 'Widow', 'Russian', ' Ukrainian', '2 kids', 'I\'m sociable and versatile woman. I\'m not scandalous and think communication help to decide all problems', 'Hope to create family', 'Librarianship', 'I work in trading field', 'UAE, Italy, Turkey, Egypt, Poland, Slovakia', 'China, France', 'I like to spend time with my family and friends. I like visit my children. I\'m active  and don\'t like to sit on one place.', 'I have many hobbies,I like to sing, to draw, to play mini tennis abd swim; go to the cinema and theatre.', 'Doesn\'t matter', 'Pakistan', 'My morning starts from little cup of coffee', 'My desire is very simple, I want to love and to be loved', 'I have two dogs, cat and fish. As you can see I like pets', '', '', '', '56-65', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', '156 lbs (70.8 kg)', 'Grey-blue', 'Ligh-brown', 'australian', 'Chatholic', 'Doesn\'t matter', 'My man  should be versatile, not greedy, that we can look at one side and find compromize with each other', 'lie and betreial', 'Doesn\'t matter', 'I\'d like my man can be active just like me. ', 'I\'d like that my man understand me and appreciate my family, value not only my outer beauty, but estimate my inner world. ', '+380503944500', 'tnekrasova62@gmail.com', 'yes', 'facebook', 'during the day', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2307, 'Natalia', 'Levitskaya', 'Ukraine', 'Dnepr', '1982-02-20', 'uploads/girls/1540205514.JPG', 'https://www.youtube.com/embed/9U8bUZXeAEk', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '162', '50', 'Athletic', 'Blue', 'Blond', 'University Degree', 'Negative', 'Divorced', 'Russian', 'English - beginner', 'No', 'I am tender and romantic woman with good imagination how relationship should be.', 'love, marriage', 'Doctor', 'Doctor', 'Turkey, Dubai', 'West Europe, US', 'I am sure that all is in our hands... We decide what our life will be like, and I decided that my life will be long, happy and of course with big-big LOVE! And here I am looking for this love - is your goal the same? Each of us is worth of love, but only those who does his best and works on relationship - can be happy in love...', 'My main hobbies are healthy lifestyle, traveling (I have been to few countries abroad, ice-skating.', 'Yes', 'Iran, Iraq', 'I\'m early bird. The breakfast already can be on the table when my man wakes up', 'I\'m happpily married woman. ', 'I don\'t have', 'don\'t know', 'to find my destiny', 'I\'m already on way to him', '46-55', 'Doesn\'t matter', '5 feet 7 inches (170.18 cm)', '156 lbs (70.8 kg)', 'Black', 'Brown', 'british', 'Chatholic', 'Doesn\'t matter', 'For me ideal relationship based on love, respect and mutual understanding.', 'greedy', 'Yes', 'active', 'I want to be happy, to know that I always have suppirt from my man and that our life will be bright and we have mutual love. ', '0634508971', 'natali_pretty@gmail.com', 'yes', 'facebook', '16.00', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2308, 'Tamara ', 'volkova', 'Ukraine', 'Kremenchuk', '1995-05-07', 'uploads/girls/1540203508.jpg', 'https://www.youtube.com/embed/l4PI1YlRLA8', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '167', '49', 'Athletic', 'Brown', 'Ligh-brown', 'Collage', 'Negative', 'never marige', 'Russian', 'Ukrainian , Russian, English', 'no', 'I try to follow my appearance and health. This helps me to sport and healthy eating. I will prepare tasty and healthy food for you', 'Happiness for me - is to love each other, feel each other, care for each other)', '', 'Nail master', 'Europe, US', 'any', '', ' I like music, dancing and outdoor activities', 'Doesn\'t matter', '', '', 'Happiness for me - is to love each other, feel each other', '', '', '', '', '36-45', 'Doesn\'t matter', '4 feet 5 inches (134.62 cm)', '100 lbs (45.4 kg)', 'Black', 'Black', 'austrian', 'Christian General', 'Doesn\'t matter', 'modesty, honesty, independence', 'When Have you been happy', 'Doesn\'t matter', '', '-', '+380916659921', 'arde41055@gmail.com', '+380966659921', 'Facebook ', '', 'always be honest', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2309, 'Valentina', 'Zaporozhchenko', 'Ukraine', 'Zaporozhye', '1997-02-14', 'uploads/girls/1540207812.jpg', 'https://www.youtube.com/embed/MKhxnnvsnAk', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '172', '54', 'Athletic', 'Green', 'Ligh-brown', 'University Degree', 'Negative', 'Never Married', 'Russian', 'Ukrainian; English - beginner', 'No', ' I am a sensitive creative person - my imagination helps me to perceive the world. I am optimistic, cheerful, passionate and loyal.', 'create loving relation', 'Tourism manager', 'Tourism manager', '', 'West Europe; Australia, China', 'The words that describe me best are: kind, feminine, intelligent, passionate, romantic. I am trustworthy and genuine. I love to be creative and learn new things. ', 'I like sport, cooking, going to theatres, cinemas and different concerts. I enjoy reading, like different type of books. Do you like reading?', 'Yes', 'Don\'t know', 'My each morning is perfect', 'I can tell you many interesting things about me, if you interested, please ask me! =)', 'I am living alone, really like pets. I have cats and dogs in parents house. ', 'I don\'t want to have a reason to forgive my man', 'I dream to find a man who will adore me', 'Who knows)))', '36-45', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', '178 lbs (80.7 kg)', 'Grey-blue', 'Blond', 'luxembourger', 'Chatholic', 'Doesn\'t matter', 'I wish to meet a nice man, positive, honest and smart. ', 'stubborn', 'Yes', 'I don\'t want to have a man who always lay on the sofa. So, of  course active', 'Also you should be passionate and persistent, sometimes I can also be persistent, still I am not a little girl, I have natural needs, physical and emotional. Mutual feelings to each other, magnetism', '+380933988500', 'Valentine14@gmail.com', 'yes', 'facebook', '', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2310, 'Tatyana', 'Moroz', 'Ukraine', 'Nikolaev', '1997-12-29', 'uploads/girls/1540300557.jpg', '', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '185', '52', 'Thin', 'Blue', 'Ligh-brown', 'Collage', 'Negative', 'Never Married', 'Russian', 'Ukrainian', 'No', 'I\'m very open, positive and passionate lady', 'To find my Mr. Perfect', 'financier', 'financier', 'I', 'West Europe', 'I am very serious in my intentions and I am not going to wear some mask while our communication.', 'First of all, I like sports. I like outdoor activities and I have a habit of going to the gym. Also, I really like to dance! I bring joy to try something new!', 'Doesn\'t matter', '', 'When I\'m n the arms of my beloved', 'happily married', 'I don\'t have them', 'betrayal', 'To find you here;)', 'don\'t know', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Yes', ' If we feel the connection between us, we need to be sure to meet and feel the chemistry of love!', 'pettiness', 'Doesn\'t matter', 'active', 'I think the &quot;ideal man&quot; does not exist for me! I\'m also not a perfect woman. I\'m just looking for real feelings. Just let us know each other better.', '+380983579521', 'tattie888@gmail.com', 'yes', 'yes', '', 'doesn\'t matter', 'quiet girl', 'stability', 'I\'m sleepy in the morning', 'yes', 'all', 'yes, of course', 'rose', 'eyes', 'no', 'half full', 'sometimes even black', 'yes', 'yes', 'desire to develop in life', 'positive', 'communication with family', 'try something new', 'not very much', 'to be happy', 'don\'t know', 'at home', 'speak', 'of course', 'to move', 'morning', 'yes', 'to be at home and look outside the window', 'depends from the gift', 'yes', 'just come tome me. ', '0000-00-00'),
(2311, 'Svetlana', 'Momot', 'Ukraine', 'Kharkiv', '1984-07-18', 'uploads/girls/1540397296.jpg', 'https://www.youtube.com/embed/-2VejzNTZME', '0', 1, 'viktoria2544', '', '', 'ukrainian', 'Christian General', '175', '64', 'Thin', 'Blue', 'Blond', 'University Degree', 'I do not smoke and no drugs. I may drink a little bit alcohol on special occasion. Romantic dinner with wine sounds good for  me.  I expected the same attitude to smoking, alcohol and drugs from my partner.', 'Divorced', 'Russian', 'Russian, Ukrainian and learning English', 'I have  daughter, her birth year is  2010', ' I am  positive, open, calm, loyal, trustful and family oriented. I am very caring towards my neatest and dearest. ', 'I would like to find a man who I may create strong loving  family with. I am interested in a relationship that  end up with a marriage. If you are looking for fun,  pen pal or distant relationship, please, don\'t contact me.', 'accountant', 'a manager in a bank', 'Sri Lanka, Egypt', 'USA, Canada, UK', 'I am family oriented. I believe happy family help us overcome all life\'s down.  In our country people get married when they are too young. I think it is not  good tradition. When I got married for the first time I was young and  for sure  not experienced in  relationship.  I did not know how treat my man and how  keep peace in my family.   And as a result we ended up with divorce.  Now I know for sure that I don\'t want to be right I want to be happy. I know  how treat my man and I know what I want from life.  I am ready for new start and for new loving relationship.', 'I adore being outdoors. Being near the water or in a forest is the ideal weekend for me. I like swimming and suntanning. For the vacation I keen on traveling if I have possibility.  I am curious about  new countries, new people, new food and new impression.  I like cooking and  you may check whether I am good at it.   I am romantic and like romantic dinners and walks. ', 'To have or not to have kids depends on both partner. Sure it will be nice to have a common kid but if for some reason it is impossible I will take it easy. ', '', 'I am an early bird. Perfect morning to me will be a morning when I open my eyes and first I see  is my beloved man next to me and then   the sun is shining behind the windows. ', 'I want to have stable  loving family.  I am  tender woman with heart that fool of love that I want to give  to my husband.  I want to spend time together, share our  lives and small things. ', 'I love pets', 'I can\'t forgive betrayal and violence (physical and emotional)  and  in a family. All other things we may discuss  over and understand each other. ', ' I  see no limitation in means when  it comes to  looking for my beloved. ', 'I am looking for love and  did not met it yet.', '35-55', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for a Caucasian man', 'Doesn\'t matter', 'Doesn\'t matter', 'I want you to be reliable, loyal, intelligent  and easy going. I always keep my promises and waiting it from my beloved. I am loyal and know for sure that  I can\'t forgive betrayal', 'aggression and falseness', 'Doesn\'t matter', ' I love both kind of rest.  I like sightseeing and may walk a lot  and I  adore being on the beach and do nothing. ', 'I would love to meet a man who are serious in his search and ready  for a family.  Stability in all   life spheres  is very important to me.', '380500721202', 'dt_kt@meta.ua', 'Viber', 'no', ' any days  from 10 am till 1 pm', 'Skype is a good option to see each other. It may be kind of  our first date. As for me I think the most important to meet each other in reality. ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2312, 'Olesya', 'Muntyan', 'Ukraine', 'Kharkov', '1995-11-20', 'uploads/girls/1540373864.jpg', 'https://www.youtube.com/embed/iGfRXxZmnmQ', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '157', '48', 'Sportive', 'Grey', 'Brown', 'Collage', 'Negative', 'Never Married', 'Russian', ' Ukrainian', 'No', 'I really appreciate the truth , I will not deceive my love. I\'m also passionate and loving', 'My goal is a real relationship I\'m not here for games , if you didn\'t come here to play I am waiting for you', 'Nurse', 'Nurse', 'I haven\'t been abroad yet', 'Greece, Spane. I like warm countries', 'Small things make me happy. Hug, kiss, smile, hold hands. t\'s hard to talk about myself but I can say that I\'m a girl who is waiting for love, regardless of my age I know how to love I want to give my man all the way ', 'I love books , the book for me is a way to escape from reality, something like a gate to other worlds. ', 'Doesn\'t matter', '', 'I like weekeends', 'I\'m dreaming of a happy loving family.I want to give all my care, love and affection to people who are close to me ', 'I don\'t have', 'don\'t know', 'To find new and serious relation', 'don\'t know', '36-45', 'United States', '5 feet 6 inches (167.64 cm)', '134 lbs (60.8 kg)', 'Grey-blue', 'Doesn\'t matter', 'Doesn\'t matter', 'Chatholic', 'Doesn\'t matter', 'He should be intelligent, funny , honest, romantic, passionate and tender ', 'laziness', 'Yes', 'sometimes active, sometimes passive', 'For me family comes first !!', '+380503543545', 'olesya123@gmail.com', 'yes', 'yes', '16.00', 'Let\'s drink coffee together', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2313, 'Olya', 'Tkachenko', 'Ukraine', 'Kiev', '1996-01-18', 'uploads/girls/1540377017.jpg', '', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '173', '57', 'Athletic', 'Blue', 'Blond', 'Collage', 'Negative', 'Never Married', 'Russian', 'English', 'No', 'I can start with a fact I\'m really simple and easy-going lady. ', 'I want to make my future happy', 'Student', 'Photographer', 'Egypt, France', 'Canada, US', 'I really like some unexpected surprises and bright emotions! Of course, I have some friends and love to spend time with them.', 'I would like to see the world and to feel the beauty of our Earth! Also I adore dancing and having fun with friends', 'Doesn\'t matter', '', 'I\'m early bird', 'I imagine my future life in bright coolors, in the circle of my family and beloveed man', 'I like cats', 'Don\'t like jealousy and lie. ', 'Who said that we have limits in our search!', 'Maybe because we live in different countries and soon we\'ll meet each other', '46-55', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', '181 lbs (82.1 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I wish to meet a nice man, positive, honest and smart. ', 'jealousy', 'Yes', 'Of course active', 'I\\\'m looking for a man. Yes, just for a man, but it looks like not every man understand how to be a REAL man.', '+380669878987', 'olga_tkachenko@gmail.com', 'yes', 'yes', '16.00', 'Hope our communication can make our relation deeper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2314, 'Victoria', 'Romanenko', 'Ukraine', 'Kharkiv', '1987-04-05', 'uploads/girls/1540378362.jpg', 'https://www.youtube.com/embed/iOAFAir8c8A', '0', 1, 'match1', '', '', 'ukrainian', 'Atheist', '165', '50', 'Thin', 'Grey-blue', 'Brown', 'University Degree', 'Negative', 'Never Married', 'Russian', 'I\'d like to teach English', 'No', 'I am a cute, cheerful , harmonious , sensual and romantic girl! ', 'I am looking for a man to live, to work together, to build a nice house and a happy life. ', 'Music teacher', 'Music teacher', 'I haven\'t been abroad yet', 'I dream to travel with my man to the most romantic places', 'I am a woman, whose heart is full of love and positive emotions. And I want to share all that is beautiful in me, with special for me man! I am also very creative and active girl. I am sweet and gentle lady who is sometimes very emotional, but at the same time a calm understanding and forgiveness. ', 'In my life I have really a lot of hobbies! I dance in a team, I teach singing and playing the piano, guitar and accordion! Im kind of one-man band. LOL! I also sometimes create soap, I like to read books, I\\\\\\\\\\\\\\\'m very good rollerblading, this is my passion and grace. In the winter I like snowboarding. I am a sports girl. I also do massage, I have two diplomas, I do massage therapy for women and children.', 'Yes', '', 'I have so many interesting things in my life that each morning is perfect for me. ', 'If you let me, I won\'t tell this now and I can share such things about me, to the man who is really interested in me. ', 'I like animals', 'I can\'t forgive when a man want to close me in the cage and could forgive if he forget to buy flowers for my birthday;)', 'I hope communication on this site bring me strong and happy relation', 'I go to my partner at the moment', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for an honest, loyal, caring and affectionate man!', 'greedy', '', 'It\'s never mind that sometimes he prefer passive rest. But I want that we can live an active life toegther', '+380936664455', '+380936664455', 'viktory888@gmail.com', 'yes', 'yes', '', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2315, 'Diana', 'Sytnik', 'Ukraine', 'Nikolaev', '1985-06-12', 'uploads/girls/1540383962.jpg', '', '0', 0, 'svetabarsukova27', '', '', 'ukrainian', 'Christian General', '165', '57', 'Thin', 'Grey-blue', 'Red', 'Collage', 'Negative', 'divorced', 'Russian', 'Russian', 'yes', 'calm, kind, romantic, purposeful, caring!', 'meet my love of my life!', 'manager', 'shop assistant', 'Germany, France, Turkey', 'Italy, Spain, Dubai, America', 'I am a cheerful girl with a calm character! I work and bring up my son, attend various events with him, actively spend time!I am not attracted to rude people, greedy, and mercantile!', 'Reading, fitness', 'Yes', '', 'I\'m a night owl, I prefer to wallow in the morning!', 'I see my future with my beloved man, the laughter of children, a big house, with a beautiful courtyard, where a beautiful flower garden, and a caring husband!', 'positively', 'I do not forgive treason!', 'Because I think that men from another country are more decent.', 'Probably because they do not want a serious relationship and family!', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Caring, gentle, not greedy, kind and decent, had respect for the lady!', 'Greed, rudeness!', 'Doesn\'t matter', 'active', 'I would like to meet a decent man on this site who will be my friend, partner, lover, and also a good friend for my son!', '+380993406193', 'sytnikdiana85@gmail.com', '+380993406193', 'https://www.facebook.com/profile.php?id=100017211671270', 'all week', 'Диана Сытник', 'quiet girl', 'stability', 'sleepy', 'yes,  tango', 'son\'s birth', 'yes', 'rose', 'My hair', 'no', 'half full', 'usual', 'yes', 'yes', 'generosity', 'calm', 'happiness', 'spent time with my son', 'I do not depend on someone else\'s opinion', 'Give a birth to a baby', 'bake', 'home', 'I can listen and speak!', 'yes', 'have a full family and health', 'evening', 'No', 'lie under the covers', 'Every gift has some meaning!', '1 mounth ago.. I do not refresh my memories', 'Yes..', '0000-00-00'),
(2316, 'Anna', 'Gryga', 'Ukraine', 'Nikolaev', '1987-09-14', 'uploads/girls/1540395874.jpg', '', '0', 0, 'svetabarsukova27', '', '', 'ukrainian', 'Christian General', '175', '60', 'Sportive', 'Green', 'Black', 'University Degree', 'Negative', 'Single', 'Russian', 'Russian', 'No', 'Honest, responsible, purposeful, caring, cheerful, open!', 'friend and lover in one person!', 'rehabilitologist', 'masseur', 'Turkey, Czech Republic, Russia, Poland, Georgia!', 'USA', 'I lead a healthy lifestyle, watch over my body, looking for a like-minded person! I do not like lazy and aggressive people!', 'Ski, yoga, sewing!', 'Yes', '', 'Perfect morning at 12 o\'clock in the afternoon! I am an owl!', 'I want a happy family, children, and life in harmony!', 'Better than people!', 'treason and betrayal!', 'I work a lot and therefore there is not always time to get acquainted in real life!', 'The men in my country disappointed me!', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Sense of humor, responsibility, and seriousness!', 'boring men, laziness, rudeness!', 'Yes', 'active', 'I would like to meet a caring man who knows what he wants from his life, a family man, as well as male support!', '+380952078579', 'annagriega345@gmail.com', '+380952078579', 'https://www.facebook.com/anna.griga.3', 'all time', '____', 'quiet girl', 'stability', 'bad', 'No', 'All ahead!', 'Yes', 'Orchids', 'Sense of humor', 'no', 'half full', 'usual', 'Yes', 'Yes', 'Mind, respect for the woman, honesty!', 'Responsible', 'journey', 'engaged in self-development!', 'does not affect', 'adrenaline rush!', 'I bake delicious cakes!', 'My home', 'I can listen and speak!', 'yes', 'Health and wellness', 'night', 'summer warm rain', 'I enjoy it', 'fine', 'So long time ago..I forgot all..I do not want to refresh my memories!', 'Yes..', '0000-00-00'),
(2317, 'Marina', 'Savenkova', 'Ukraine', 'Kharkiv', '1992-10-05', 'uploads/girls/1542814417.jpg', 'https://www.youtube.com/embed/LFygxlE_4JE', '0', 1, 'viktoria2544', '', '', 'ukrainian', 'Orthodox', '159', '52', 'Thin', 'Green', 'Blond', 'University Degree', 'Negative', 'Never married', 'Russian', 'Russian, Ukrainian and learning English', 'no', 'I am  an easy-going  smiling girl.  I am down to earth. I am a home person. For sure I like meetings with friend and  social events  but for some occasion.   ', 'I would love to  get married and start a family.  The only reason for me to get married is to  be in love. So I am here to find my beloved man.', 'econimist', ' shop assiatant', ' Thailand', ' I want to see an ocean so any place  where I may stay on an ocean shore will be great for me. ', 'I adore skating. I love it a lot and now I  am doing that quite well after many bruises on my knees.  During the winter when  weather very often is not good for being outdoors I have my reading time.  I spend evenings with books.  I like helping  my mum to plant vegetables. My soul rests when I am somewhere  on the seashore listening to  land swell. ', ' I adore skating. I was born is a village and I love gardening.  I love reading, cooking and now I am learning English  via some Internet means. ', 'Yes', '', ' I am a  night owl. ', 'I would love to have a family that  laugh a lot and do many things together. I would love to have cozy  home with  tasty smell of homemade  food. I want to  have  children. I know that I am immature in many things so I would love to meet intelligent  man who will be example for me in many spheres.', 'I love pets  but I am afraid of dogs. At my mom home we have a dog and love it but I am  feel scared when I saw  an unknown dog.', 'Violence  is what I can\'r forgive. ', '  I may see no reason not to try international dating', 'I think it is time for me to get married.  Earlier I was too young for marriage. ', '36-45', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'A honest decent man who I will fell comfortable with and who I may be who I am with.', 'Violence', 'Doesn\'t matter', 'I prefer passive rest', ' First of all I want you to be serious in your search and intention. ', '+380507798506', 'savenkova.marina@gmail.com', 'Viber', 'no ', ' any day in the evening about 10 pm', 'I may tell you that I may be shy during the Skype. For me easier communicate  when we meet in real. It will be nice if you have questions to me during the Skype and  take initiative in conversation. ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2318, 'Alyona', 'Alyona', 'Ukraine', 'Nikolaev', '1995-06-05', '', '', '0', 0, 'match1', 'I wish to meet  my man in a city with high towers..where in a little comfortable cafe we will drink coffee and when our eyes will meet, we will feel unusual mutual love.', 'You don\'t need to do something unusual to meet with me. You only need to come in one of the Europian style cities, like Kyiv or Lviv', 'ukrainian', 'Christian General', '172', '57', 'Sportive', 'Grey', 'Brown', 'Collage', 'Negative', 'Never Married || Некорректное заполнение поля!', 'Russian', 'Ukrainian; My English isn\'t so good and dream to improve it. ', 'No', 'I\'m positive and cheerful girl, like to meet with new people. Also I can be serious and detemined person  - Некорректное заполнение поля!', 'Hope to meet a man here, who can make my life more interesting and we can enjoy together each day of our life', 'Hair-stylist', 'Hair-stylist', 'Egypt, Poland', 'I dream to visit such romantic countries as Spane and Italy', 'If you\'d like to be a part of my life, I\'ll tell something now. Besides work, my life is my friends, who makes my life better. In life, I want to be not only beautiful woman, but affectionate wife and best friend to my man and I develop in this way;)', 'My hobbies are different. I like to stay at home and cook tasty dishes or read about beauty news. Also I like sport, city work, go to cinema and so on. I\'ll be glad if you join to me;)', 'Doesn\'t matter', '', 'I even don\'t know I\'m a night owl or an early bird. But my perfect morning is tasty breakfast with cup of coffee, favorite music in the room and in front of me smiling face of my beloved man. ', 'I see my future with my family and beloved man, that\'s why I\'m here. I want to love and to be loved ', 'I have a dog, the Beagle. His name is Lucky', 'I can\'t forgive when a man want to close me in the cage and could forgive if he forget to buy flowers for my birthday;)', 'I dream to find a man who will adore me', 'Because I want to meet a man for whom family relationships are as important as for me', '36-45', 'United States', '5 feet 9 inches (175.26 cm)', '166 lbs (75.3 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'My man  should be versatile, not greedy, that we can look at one side and find compromize with each other', 'laziness, stubbornness and greed', 'Yes', 'I don\'t mind if sometimes we can spend calm evenings at home, but it will be really boring for me if it will be all the time', '+380508996321', '+380508996321', 'email@gmail.com', '+380508996321 (Viber)', 'https://www.facebook.com/', 'Work days from 1pm till 6pm and weekends', 'I\'d like to see your smile when we can talk on Skype. ', 'I was a quiet girl', 'I choose stability in relation, but sometimes spontaneity helps to make life brighter', 'Ussually I wake up in the good mood, but sometimes I can be sleepy', 'Yes, but I need a partner. Do you know a guy who would like to dance with me?;)', '', 'Yes', 'Peonies', 'Maybe my beautiful smile attracts you the most', 'No', 'half full', 'I like humor in general, especially when a man has a good sense of humor', 'Yes, I dream to travel to exotic countries', 'I  Think after you try how I cook, you can answer this question;)', 'Desire to develop in life', 'Cheerful and open', 'communication with family', 'I\'d try something new', 'Not so much', 'To overcome his/her fear', 'Always stay young', 'At home', 'I\'ll tell you later in our communication', 'Yes. And what about you?', 'To look around', 'Morning. Do you agree?', 'Not very much, I like more  bright day', 'To be at home, to cook something tasty and spend a day together with my man. ', 'It depends what exactly I recieve', 'I like dates. Are you going to invite me on a date? ', 'I know a good cafe where make very tasty coffee. I\'ll wait for your coming;)', '0000-00-00'),
(2319, 'Olga', 'Vorobyouva', 'Ukraine', 'Nikolaev', '1974-06-04', 'uploads/girls/1542012734.png', '', '0', 0, 'svetabarsukova27', '', '', 'ukrainian', 'Christian General', '167', '50', 'Thin', 'Green', 'Black', 'University Degree', 'Negative', 'divorced', 'Russian', 'русский', 'yes', 'Kind, sympathetic, mysterious!', 'I expect to meet a man with whom we will become soul mates!', 'economist', 'Sales Manager', 'Russia, Romania, Poland, Greece, Turkey', 'Iceland', 'I am an active person, I like to learn new things, I like a pleasant pastime!', 'I love to grow plants, flowers, care for them! I love to travel!', 'Doesn\'t matter', '', 'The ideal morning for me begins at 7 am, with light jogs and aromatic coffee!', 'I would like that next to me there was a strong man’s shoulder, a big house, where children\'s laughter, harmony and mutual understanding are heard!', 'positively', 'Forgive, that I can understand, and I can not understand, respectively, I can not forgive!', 'Because this is a site all over the world and I have more trenches to find my soul mate!', 'I just left the relationship and I would not want to repeat them!', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Kind, loving, with good feelings of humor, caring and sincere in his feelings!', 'cruelty, greed!', 'Doesn\'t matter', 'active', 'For me, eye color is not so important as their look and expression!', '+380955125570', 'ovorobyouva@gmail.com', 'ovorobyouva@gmail.com', 'facebook', 'all time', 'yes', 'quiet girl', 'Spontaneity ', 'good', 'I love to dance, so I am constantly improving!YES!', 'the birth of my children', 'yes', 'roses', 'my femininity', 'no', 'half full', 'usual', 'Yes', 'Yes', 'Masculinity, independence, kindness!', 'sociable', 'Love beloved', 'dream', 'does not affect', 'make another person happy', 'dance', 'home', 'I can listen and speak!', 'yes', 'healthy', 'That time when I am with my beloved man', 'Yes..', 'I\'m sitting on the windowsill, with a cup of hot cocoa', 'I appreciate the attention, not the value of the gift', 'A few  months ago, and I would not want to recall this relationship!', 'Yes..', '0000-00-00'),
(2320, 'Ludmila', 'Sich', 'Ukraine', 'Nikolaev', '1982-12-30', 'uploads/girls/1543858139.jpg', '', '0', 0, 'Evgeniya', '', '', 'ukrainian', 'Christian General', '163', '57', 'Sportive', 'Grey-blue', 'dark blond', 'University Degree', 'Negative', 'divorsed', 'Ukrainian', 'Ukrainian, russian', 'no', 'Speaking about myself, I want to mention that I am very open and friendly person. I never refuse my friends, when they need my help. I am considered to be the soul of any party. I like to communicate and I see that people like to speak with me as well. My friends say that I have a heart of gold and always thank me for this.', 'Nevertheless my friends are married and I keep being alone. That’s why I am here on this site. I dream about a big and wonderful wedding day.', ' psychologist', ' manager in fitness club', ' I was not in other countries', ' European countries, such as Italy, France', ' I am an interesting and open woman, always positive. I love to be the soul of the company and inspire people. I am kind and sympathetic, always help than I can. But I do not like lies and when something is said about me behind my back. It is better for me to say this directly)', 'I have a lot of hobbies, I love cooking delicious dishes, taking care of my home. I love animals very much and I have a dog that gets a lot of my attention) I am also interested in psychology, I like to read and go to the cinema.', 'Yes', '', 'I am early bird) ', ' My perfect morning is to wake up in the arms of a beloved man, then slowly get up and go make us breakfast and coffee. I love cooking and I can take on cooking breakfast every morning!', 'Love very very much.', ' I do not forgive systematic lies, violence, insults. I can forgive the lies of salvation.', ' I think this is a good site and wonderful people work here who are ready to help me in my search.', 'Because I\'m still alone)', '36-45', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', '144 lbs (65.3 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Intelligent, handsome, decent man that will make me a happy woman!', ' Rudeness, cruelty, lies.', 'Doesn\'t matter', 'Depending on the situation.', 'I need a man who can really take care of me and make this world a better and more enjoyable for me. He must understand that the current relations still need to be based on love and mutual respect, so we cannot dwell on the problems. It is better to look for ways to solve them. I love romantic man who at the same time understands that he must take care of the girl. This is very important because mutual respect and this is exactly the quality that creates relationships. I would like to build relationships in which reigned to love and understanding. Such relationships have a future and can only change for the better.', '+380975769591', 'galina8111@rambler.ru', '+380975769591', 'no', ' all weekdays afternoon.', ' Please always make calls and meetings in advance.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00');
INSERT INTO `girls` (`girl_id`, `first_name`, `last_name`, `country`, `city`, `birthday`, `foto`, `video`, `gallery_status`, `activation_status`, `login_match`, `dreams`, `meeting`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `ask1`, `ask2`, `ask3`, `ask4`, `ask5`, `ask6`, `ask7`, `ask8`, `ask9`, `ask10`, `ask11`, `ask12`, `ask13`, `ask14`, `ask15`, `ask16`, `ask17`, `ask18`, `ask19`, `ask20`, `ask21`, `ask22`, `ask23`, `ask24`, `ask25`, `ask26`, `ask27`, `ask28`, `ask29`, `ask30`, `date_add`) VALUES
(2321, 'Diana', 'Bondar', 'Ukraine', 'Kharkiv', '1995-09-23', 'uploads/girls/1546954726.jpg', '', '0', 1, 'match1', '', 'As you see I like traveling and together we can see a new country. But it will be great if the first meeting can be in Ukraine and I can show you my city', 'ukrainian', 'Christian General', '170', '57', 'Athletic', 'Hazel', 'Chestbut', 'University Degree', 'Negative', 'Never Married', 'Russian', 'English', 'No', 'Sweet, charming and cheerful girl - it\'s all about me. But I am also active, sociable and purposeful. I always know what I want and try to achieve my goals.', 'Hope to meet a man who know what family relation is and who dream about love as well as me. ', 'Music teacher', 'Music teacher', 'Turkey, Egypt, Prague', 'West Europe, USA', 'I love when I am surrounded by positive people, I am also pleased with my work. My day begins with music and ends with music. But I want my life to be connected not only with work, but also with a strong and loving family.', 'Most of all I love to sing and dream of develop  myself  in this profession. In addition, I love to travel and share positive emotions with friends. I like to meet with friends in a cafe, and in the summer to sunbathe on the sea. I will be glad if you can join me.', 'Yes', '', 'I love the early awakening and feel the aroma of delicious coffee and the kiss of a loved one. I hope you can make me happy and make my morning perfect)))', 'I consider a person without desires, an empty person. I have many desires, to create a happy family, to be successful in work, to see many interesting places. I hope I can share other wishes with you.', 'I don\'t have pets at home, but I like cats', 'I don\'t like indifference and laziness in relation', 'I think you can know more a person when you start from communication', 'Earlier I was too young for marriage. ', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for an honest, loyal, caring and affectionate man!', 'I don\'t like indifference and laziness in relation', 'Yes', 'active', 'I want that  you understand what family relation is and how to please a woman and make her happy', '+38050258852', 'Di_email@gmail.com', 'yes', 'yes', '10 pm', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-08');

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
(27, 3, 'uploads/girls/gallery_foto/1534323615.jpg', 0),
(28, 3, 'uploads/girls/gallery_foto/1534323621.jpg', 0),
(29, 3, 'uploads/girls/gallery_foto/1534323627.jpg', 0),
(34, 4, 'uploads/girls/gallery_foto/1534338065.jpeg', 1),
(35, 4, 'uploads/girls/gallery_foto/1534338072.jpg', 1),
(36, 4, 'uploads/girls/gallery_foto/1534338079.jpg', 1),
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
(50, 2, 'uploads/girls/gallery_foto/1535378927.jpg', 0),
(52, 2301, 'uploads/girls/gallery_foto/1538998034.jpg', 0),
(53, 2302, 'uploads/girls/gallery_foto/1539694232.jpg', 1),
(54, 2302, 'uploads/girls/gallery_foto/1539694251.jpg', 1),
(55, 2302, 'uploads/girls/gallery_foto/1539694261.jpg', 1),
(56, 2302, 'uploads/girls/gallery_foto/1539694272.jpg', 1),
(57, 2302, 'uploads/girls/gallery_foto/1539694283.jpg', 1),
(58, 2302, 'uploads/girls/gallery_foto/1539694300.jpg', 0),
(59, 2304, 'uploads/girls/gallery_foto/1539789785.jpg', 1),
(60, 2304, 'uploads/girls/gallery_foto/1539789797.jpg', 1),
(61, 2304, 'uploads/girls/gallery_foto/1539789807.jpg', 1),
(62, 2304, 'uploads/girls/gallery_foto/1539789817.jpg', 1),
(63, 2304, 'uploads/girls/gallery_foto/1539789828.jpg', 1),
(64, 2304, 'uploads/girls/gallery_foto/1539789838.jpg', 1),
(65, 2304, 'uploads/girls/gallery_foto/1539789847.jpg', 1),
(66, 2304, 'uploads/girls/gallery_foto/1539789860.jpg', 1),
(67, 2305, 'uploads/girls/gallery_foto/1540199661.jpg', 0),
(68, 2305, 'uploads/girls/gallery_foto/1540199669.jpg', 0),
(69, 2305, 'uploads/girls/gallery_foto/1540199681.jpg', 0),
(70, 2305, 'uploads/girls/gallery_foto/1540199690.jpg', 0),
(71, 2305, 'uploads/girls/gallery_foto/1540199701.jpg', 0),
(72, 2305, 'uploads/girls/gallery_foto/1540199710.jpg', 0),
(73, 2305, 'uploads/girls/gallery_foto/1540199722.jpg', 0),
(74, 2306, 'uploads/girls/gallery_foto/1540201938.jpg', 1),
(75, 2306, 'uploads/girls/gallery_foto/1540201947.jpg', 1),
(76, 2306, 'uploads/girls/gallery_foto/1540201957.jpg', 1),
(77, 2306, 'uploads/girls/gallery_foto/1540201966.jpg', 1),
(78, 2308, 'uploads/girls/gallery_foto/1540203625.jpg', 1),
(79, 2308, 'uploads/girls/gallery_foto/1540203637.jpg', 1),
(80, 2308, 'uploads/girls/gallery_foto/1540203646.jpg', 1),
(81, 2308, 'uploads/girls/gallery_foto/1540203657.jpg', 1),
(82, 2308, 'uploads/girls/gallery_foto/1540203675.jpg', 1),
(83, 2308, 'uploads/girls/gallery_foto/1540203686.jpg', 1),
(84, 2307, 'uploads/girls/gallery_foto/1540205525.JPG', 1),
(85, 2307, 'uploads/girls/gallery_foto/1540205534.JPG', 1),
(86, 2307, 'uploads/girls/gallery_foto/1540205545.jpg', 1),
(87, 2309, 'uploads/girls/gallery_foto/1540207823.jpg', 1),
(88, 2309, 'uploads/girls/gallery_foto/1540207833.jpg', 1),
(89, 2309, 'uploads/girls/gallery_foto/1540207844.jpg', 1),
(90, 2310, 'uploads/girls/gallery_foto/1540300577.jpg', 1),
(91, 2310, 'uploads/girls/gallery_foto/1540300588.jpg', 1),
(92, 2312, 'uploads/girls/gallery_foto/1540373874.jpg', 1),
(93, 2312, 'uploads/girls/gallery_foto/1540373890.jpg', 1),
(94, 2312, 'uploads/girls/gallery_foto/1540373898.jpg', 0),
(95, 2313, 'uploads/girls/gallery_foto/1540377028.jpg', 1),
(96, 2313, 'uploads/girls/gallery_foto/1540377035.jpg', 1),
(97, 2313, 'uploads/girls/gallery_foto/1540377043.jpg', 1),
(98, 2314, 'uploads/girls/gallery_foto/1540378374.jpg', 1),
(99, 2314, 'uploads/girls/gallery_foto/1540378382.jpg', 1),
(100, 2314, 'uploads/girls/gallery_foto/1540378394.jpg', 1),
(101, 2314, 'uploads/girls/gallery_foto/1540378403.jpg', 1),
(102, 2314, 'uploads/girls/gallery_foto/1540378411.jpg', 0),
(103, 2315, 'uploads/girls/gallery_foto/1540383980.jpg', 0),
(104, 2315, 'uploads/girls/gallery_foto/1540383988.jpg', 0),
(105, 2315, 'uploads/girls/gallery_foto/1540384001.jpg', 0),
(106, 2315, 'uploads/girls/gallery_foto/1540384011.jpg', 0),
(107, 2315, 'uploads/girls/gallery_foto/1540384028.jpg', 0),
(108, 2315, 'uploads/girls/gallery_foto/1540384040.jpg', 0),
(109, 2315, 'uploads/girls/gallery_foto/1540384051.jpg', 0),
(110, 2315, 'uploads/girls/gallery_foto/1540384061.jpg', 0),
(111, 2315, 'uploads/girls/gallery_foto/1540384084.jpg', 0),
(112, 2316, 'uploads/girls/gallery_foto/1540395884.jpg', 0),
(113, 2316, 'uploads/girls/gallery_foto/1540395892.jpg', 0),
(114, 2316, 'uploads/girls/gallery_foto/1540395901.jpg', 0),
(115, 2316, 'uploads/girls/gallery_foto/1540395913.jpg', 0),
(116, 2316, 'uploads/girls/gallery_foto/1540395921.jpg', 0),
(117, 2316, 'uploads/girls/gallery_foto/1540395929.jpg', 0),
(118, 2316, 'uploads/girls/gallery_foto/1540395937.jpg', 0),
(119, 2316, 'uploads/girls/gallery_foto/1540395946.jpg', 0),
(120, 2316, 'uploads/girls/gallery_foto/1540395952.jpg', 0),
(121, 2316, 'uploads/girls/gallery_foto/1540395962.jpg', 0),
(122, 2316, 'uploads/girls/gallery_foto/1540395972.jpg', 0),
(123, 2316, 'uploads/girls/gallery_foto/1540395982.jpg', 0),
(124, 2316, 'uploads/girls/gallery_foto/1540395993.jpg', 0),
(125, 2311, 'uploads/girls/gallery_foto/1540397675.jpg', 1),
(126, 2311, 'uploads/girls/gallery_foto/1540397697.jpg', 1),
(127, 2311, 'uploads/girls/gallery_foto/1540397716.jpg', 1),
(128, 2311, 'uploads/girls/gallery_foto/1540397754.jpg', 1),
(129, 2311, 'uploads/girls/gallery_foto/1540397766.jpg', 1),
(130, 2311, 'uploads/girls/gallery_foto/1540397793.jpg', 1),
(131, 2311, 'uploads/girls/gallery_foto/1540397822.jpg', 1),
(132, 2311, 'uploads/girls/gallery_foto/1540397837.jpg', 1),
(133, 2311, 'uploads/girls/gallery_foto/1540397850.jpg', 1),
(134, 2311, 'uploads/girls/gallery_foto/1540397863.jpg', 1),
(135, 2311, 'uploads/girls/gallery_foto/1540397879.jpg', 1),
(136, 2311, 'uploads/girls/gallery_foto/1540397893.jpg', 1),
(137, 2311, 'uploads/girls/gallery_foto/1540397906.jpg', 1),
(138, 2311, 'uploads/girls/gallery_foto/1540397921.jpg', 1),
(139, 2311, 'uploads/girls/gallery_foto/1540397939.jpg', 1),
(140, 2311, 'uploads/girls/gallery_foto/1540397953.jpg', 1),
(141, 2311, 'uploads/girls/gallery_foto/1540397973.jpg', 1),
(142, 2311, 'uploads/girls/gallery_foto/1540397994.jpg', 1),
(143, 2311, 'uploads/girls/gallery_foto/1540398012.jpg', 1),
(144, 2311, 'uploads/girls/gallery_foto/1540398028.jpg', 1),
(145, 2311, 'uploads/girls/gallery_foto/1540398047.jpg', 1),
(146, 2311, 'uploads/girls/gallery_foto/1540398063.jpg', 1),
(147, 2311, 'uploads/girls/gallery_foto/1540398080.jpg', 1),
(148, 2311, 'uploads/girls/gallery_foto/1540398117.jpg', 1),
(149, 2311, 'uploads/girls/gallery_foto/1540398133.jpg', 1),
(150, 2319, 'uploads/girls/gallery_foto/1541607759.jpg', 0),
(151, 2319, 'uploads/girls/gallery_foto/1541607771.jpg', 0),
(152, 2319, 'uploads/girls/gallery_foto/1541607783.jpg', 0),
(153, 2319, 'uploads/girls/gallery_foto/1541607799.jpg', 0),
(154, 2319, 'uploads/girls/gallery_foto/1541607817.jpg', 0),
(155, 2319, 'uploads/girls/gallery_foto/1541607841.jpg', 0),
(156, 2319, 'uploads/girls/gallery_foto/1541607854.jpg', 0),
(157, 2317, 'uploads/girls/gallery_foto/1542814467.jpg', 1),
(158, 2317, 'uploads/girls/gallery_foto/1542814480.jpg', 1),
(159, 2317, 'uploads/girls/gallery_foto/1542814497.jpg', 1),
(160, 2317, 'uploads/girls/gallery_foto/1542814517.jpg', 1),
(161, 2317, 'uploads/girls/gallery_foto/1542814533.jpg', 1),
(162, 2317, 'uploads/girls/gallery_foto/1542814556.jpg', 0),
(163, 2317, 'uploads/girls/gallery_foto/1542814573.jpg', 1),
(164, 2317, 'uploads/girls/gallery_foto/1542814599.jpg', 1),
(165, 2317, 'uploads/girls/gallery_foto/1542814612.jpg', 1),
(166, 2317, 'uploads/girls/gallery_foto/1542814632.jpg', 1),
(167, 2320, 'uploads/girls/gallery_foto/1543858165.jpg', 0),
(168, 2320, 'uploads/girls/gallery_foto/1543858215.jpg', 0),
(169, 2320, 'uploads/girls/gallery_foto/1543858284.jpg', 0),
(170, 2320, 'uploads/girls/gallery_foto/1543858319.jpg', 0),
(171, 2321, 'uploads/girls/gallery_foto/1546954766.jpg', 0),
(172, 2321, 'uploads/girls/gallery_foto/1546954783.jpg', 0),
(173, 2321, 'uploads/girls/gallery_foto/1546954792.jpg', 0),
(174, 2321, 'uploads/girls/gallery_foto/1546954804.jpg', 0),
(175, 2321, 'uploads/girls/gallery_foto/1546954813.jpg', 0);

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
  `city` varchar(64) NOT NULL,
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

INSERT INTO `matchmakers` (`id`, `name`, `email`, `skype`, `login`, `pass`, `description`, `age`, `country`, `city`, `phone`, `time`, `meetings`, `rating`, `answers`, `foto`, `status`) VALUES
(6, 'Alexandra Berezyanskaya', 'alexandra.berezyanskaya@bridgematchmaker.com', 'alexandra_match3', 'match1', '202203f067c39fb6d4771909d195dc0e', 'Age 47 years, married for 21 year, 3 kids, 1 grandchild. More than 10 years of experience. 4 marriages in 2016. Works individually with every client. Communicative and very professional in question of relationships. Doctor of Psychology. A successful woman, a happy wife, mother and grandmother.', '47', 'Ukraine', 'Kiev', '+380681234567', '08:00 - 22:00', '12', '5', '', 'uploads/match/1531740715.jpg', '1'),
(9, 'Fedir Moskor', 'fedynchik78@gmail.com', 'fedynchik78', 'fedynchik78@gmail.com', '7b5647abd054e1dbc1eec9af5a36cf9b', 'Matchmaking is my calling. Many of my friends have met and became pairs with my help. Already 8 years i`m working as a professional matchmaker. I meet people from different parts of the world, different cultures and traditions. I have complicated and very interesting job. Building relationships is work of the man and woman as well. This is a job for two, who decided to change themselves. You are ready to work on new relationships. \r\nWelcome.', '47', 'Poland', 'Krakow', '+3809332234567', '08:00 - 16:00', '42', '4', 'If I made registration and filled up info about myself, how soon I will get results???\r\n- It is individual. In our database there is more than 1000 profiles and its always growing. I begin my work right after you will make a registration and will inform you if search is successful. You will get recent information from me frequently.', 'uploads/match/1537251777.jpeg', '1'),
(10, 'David Madrid', 'madrit@mail.com', 'madrit1963', 'madrit1963', 'a5af7651495d2d5363f26efe6c6899d5', 'My education - architect, but I work as psychologist for 6 years and almost for 2 years as matchmaker. \r\nI carefully look over my clients expectations. At same time you always can change or edit them. I think that I understand what women needs and how to find a man who will fit her. I talk a lot with my clients via phone. My method is 100% chance to get you a friend. Will it be love is depends more on clients themselves and how open they will be. Meetings with ladies that you choose will be in Kiev (Ukraine) or Moscow (Russia)', '46', '46', '', '+78093226011', '08:00 - 21:00', '65', '4', '', 'uploads/match/1537254160.jpg', '1'),
(11, 'Miroslava Fokina', 'miroslava785@gmail.com', 'miroslava785', 'miroslava', '7a19f868ace585156d4b7f3bac08eb34', 'I am very pleasant when I manage to find successful matches fast. But according to my experience it could happen in 3-6 months. If you are working with  me, then you will need to be patient. We will talk a lot before I could make a group of ladies who will be interesting to you. I am practicing clients meeting on neutral territory. Prague for example. Prague is a  very beautiful and romantic place for first meeting. Ona  first meeting I go with a lady, its my rule. I will call not so often and will save your time maximum possible. Among profiles that will be provided there won\'t be any mother with many kids or women with serious wealth problems. Besides I do not work with women who are older than 40 years old. In all other I am open-hearted and will do everything for your success.', '38', '38', '', '+4520369522', '10:00 - 20:00', '9', '3', '', 'uploads/match/1537255397.jpg', '1'),
(12, 'Viktoriya', '9359452@gmail.com', 'v.lialko', 'viktoria2544', '6a4e647e75175c1a5cb4dc6543fb68e9', 'My name is Victoria and I am working in a dating business for almost 10 year. We have a lot of successful stories but not as many as we want. People relationship is complicated and in order to reach positive result  both side should be open  and  patient.  I may warrantee that all you tell me  I will keep under  my hat.   You may ask me about everything that is connected with  the dating  service in Ukraine and  with visiting  Ukraine. I am open, easy-going and love what I do. \r\nWe are working with girls of any age. I believe that love is possible in any age and also I believe that everybody who wants to have  a happy family  may find what he/she is looking for. Everybody deserves love and be loved.  We may organize meeting in any  country that you  and  your girl  will choose. In many cases  girl\'s hometown is ideal place for meeting let alone Kharkiv is wonderful city and easy to get in. If you would like to meet  the girl  somewhere else it won\'t be a problem  if you choose  country that don\'t require  visa or a visa is easy to get.   First meeting in any case will be with me.  It is about both side safety and comfort and I may be help in many situation. \r\nI hope we will be your way to  a happy family.', '54', 'Ukraine', 'Kharkiv', '+380679359452', '8-30  21-30', '0', '5', '', 'uploads/match/1538563223.jpg', '0'),
(13, 'Migel Alonso', 'alonso899@gmail.com', '1alonso899', 'migel', 'e10adc3949ba59abbe56e057f20f883e', '	I am very pleasant when I manage to find successful matches fast. But according to my experience it could happen in 3-6 months. If you are working with me, then you will need to be patient. We will talk a lot before I could make a group of ladies who will be interesting to you. I am practicing clients meeting on neutral territory. Prague for example. Prague is a very beautiful and romantic place for first meeting. Ona first meeting I go with a lady, its my rule. I will call not so often and will save your time maximum possible. Among profiles that will be provided there won\'t be any mother with many kids or women with serious wealth problems. Besides I do not work with women who are older than 40 years old. In all other I am open-hearted and will do everything for your success.', '39', '39', '', '+696355201', '10:00 - 20:00', '19', '4', '', 'uploads/match/1538584902.jpg', '0'),
(14, 'Barsukova Svetlana', 'sveta.barsukova27@gmail.com', 'SvetOk Barsukova', 'svetabarsukova27', '8ab96c38499544b0e70e2896106d13cf', 'Hi, my name is Svetlana! I am 29 years old, I am not married, I don\'t have children! I received higher education in the National Pedagogical University. I am a teacher! My level of English is advanced!\r\nI have been working in this field for more than three years! I will be happy to help people find their soulmates and connect their hearts! I am sure that I will be able to share my experience with strangers! I am a versatile person, I can carry on conversations on various topics!\r\nI know how to organize meetings, having communicated in advance with both candidates, having discussed where it would be more comfortable for them to meet! \r\nHaving learned about the candidacy, I select the soulmates according to their interests, as well as their hobbies and lifestyle! As I have already said you can talk to me on various topics and I will be able to answer all the questions, but there are also questions that can be missed, for example, not formal relations, politics, and also religion. We suggest organising meetings in Ukraine, in the city of Nikolaev! Nikolaev is a beautiful city, where you can go sightseeing, enjoy its beauty and have a great time!', '29', 'Ukraine', 'Nikolaev', '+380939772923', '11.00  - 21.00 ', '', '3', '', 'uploads/match/1539602174.jpg', '0'),
(15, 'anna', 'anna2596@gmail.com', '', 'anna2596', 'ae8b50d460365d0a1b79cdcf87af5be0', '', '', '', '', '', '', '', '1', '', 'uploads/match/avatar.jpg', '0'),
(16, 'Evgeniya', 'androjane82@gmail.com', '', 'Evgeniya', '41431a27e735d8a89137a618a7a41f15', '', '', '', '', '', '', '', '1', '', 'uploads/match/avatar.jpg', '0');

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
  `skype_link` text NOT NULL,
  `gift_delivery` varchar(64) NOT NULL,
  `gift_video_report` varchar(64) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `match_login_processed` varchar(64) NOT NULL,
  `description1` text NOT NULL,
  `description2` text NOT NULL,
  `skype_time` datetime NOT NULL,
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

INSERT INTO `orders` (`order_id`, `user_id`, `user_email`, `skype_link`, `gift_delivery`, `gift_video_report`, `girl_id`, `type`, `match_login_processed`, `description1`, `description2`, `skype_time`, `mail_client`, `foto_client`, `mail_girl`, `date_add`, `date_end`, `status`) VALUES
(15, 2, 'email@gmail.com', '', '', '', 2, -2, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2', '', '0000-00-00 00:00:00', 'asfsdf', '', '', '2018-08-27', '2018-09-05', 3),
(16, 501, 'afrikanez78@gmail.com', '', '', '', 2300, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2300', '', '0000-00-00 00:00:00', 'ичичсмичсм сч  ячсиячсичясмчсмчс   ячсиячсичясимчси    ', 'uploads/client/email/1535638906.jpg', '', '2018-08-30', '2018-08-30', 3),
(17, 501, 'afrikanez78@gmail.com', '', '', '', 2300, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2300', '', '0000-00-00 00:00:00', 'ссоарпоапр ырварвар ыврвравпр', 'uploads/client/email/1535640845.jpg', '', '2018-08-30', '2018-10-16', 3),
(18, 500, 'dmitry.plohotnyuk@gmail.com', '', '', '', 4, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:4', '', '0000-00-00 00:00:00', 'Текст письма. Текст письма. Текст письма. Текст письма.  Text TEXT  Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT', 'uploads/client/email/1536139215.jpg', '', '2018-09-05', '2018-09-05', 2),
(19, 500, 'dmitry.plohotnyuk@gmail.com', '', '', '', 3, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:3', '', '0000-00-00 00:00:00', 'Test', '', '', '2018-09-05', '2018-09-05', 3),
(20, 501, 'afrikanez78@gmail.com', '', '', '', 2300, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:2300', '', '0000-00-00 00:00:00', 'kri kiss ks\'\'\' ssjkkk sljkhh sslj ', '', 'kuguytb ooiybuytb kuybiutbliurrrrrrrrrrrrrrrr tttttttttttttttttttttttttt', '2018-09-06', '2018-09-06', 2),
(21, 500, 'dmitry.plohotnyuk@gmail.com', 'login_skype', '', '', 5, -1, 'match1', 'Клиент ID:500 заказал Skype для девушки ID:5', 'Description', '2018-10-17 04:11:00', '', '', '', '2018-10-17', '2018-10-22', 2),
(24, 500, 'dmitry.plohotnyuk@gmail.com', 'dmitry_plohotnyuk', '', '', 4, 1, 'match1', 'Клиент ID:500 заказал Skype для девушки ID:4', 'My comment                                            ', '2018-10-25 13:00:00', '', '', '', '2018-10-22', '2018-10-22', 3),
(25, 501, 'afrikanez78@gmail.com', 'afrikanez78', '', '', 2305, 1, 'match1', 'Клиент ID:501 заказал Skype для девушки ID:2305', '                                            ', '2018-10-30 15:30:00', '', '', '', '2018-10-22', '2018-10-22', 2),
(26, 501, 'afrikanez78@gmail.com', 'afrikanez78', '', '', 2305, 1, 'match1', 'Клиент ID:501 заказал Skype для девушки ID:2305', '                                            ', '2018-10-29 15:00:00', '', '', '', '2018-10-23', '2018-10-31', 3),
(27, 501, 'afrikanez78@gmail.com', 'afrikanez78', '', '', 2302, 1, 'match1', 'Клиент ID:501 заказал Skype для девушки ID:2302', '                                            ', '2019-02-27 20:00:00', '', '', '', '2018-10-31', '2018-10-31', 2),
(28, 500, 'dmitry.plohotnyuk@gmail.com', 'https://www.google.com', '', '', 2307, 1, 'match1', 'Клиент ID:500 заказал Skype для девушки ID:2307', 'Test                                            ', '2018-11-22 13:00:00', '', '', '', '2018-11-01', '2018-11-14', 3),
(29, 500, 'dmitry.plohotnyuk@gmail.com', '', '', '', 2307, 1, 'match1', 'Клиент ID:500 заказал Skype для девушки ID:2307', '123123123                                            ', '2018-11-12 19:00:00', '', '', '', '2018-11-01', '2018-11-14', 3),
(30, 501, 'afrikanez78@gmail.com', 'https://videolink2me.com/o/d6e39250', '', '', 2308, 1, 'match1', 'Клиент ID:501 заказал Skype для девушки ID:2308', '                                            ', '2018-11-03 13:00:00', '', '', '', '2018-11-01', '2018-11-14', 3),
(31, 2, 'email@gmail.com', 'https://translate.google.com/#ru/en/%D0%B7%D0%B0%D0%B4%D0%B5%D1%80%D0%B6%D0%BA%D0%B0', '', '', 2306, -2, 'match1', 'Клиент ID:2 заказал Skype для девушки ID:2306', '                                            pkl-00ol', '2018-11-13 13:00:00', '', '', '', '2018-11-02', '2018-11-14', 3),
(32, 500, 'dmitry.plohotnyuk@gmail.com', '', 'Yes', 'Yes', 2313, -2, '', 'Клиент ID:500 заказал Подарок для девушки ID:2313', '4_0.419987001545578176', '0000-00-00 00:00:00', '', '', '', '0000-00-00', '0000-00-00', 0),
(33, 500, 'dmitry.plohotnyuk@gmail.com', '', 'Yes', 'Yes', 2313, 2, 'miroslava', 'Клиент ID:500 заказал Подарок (ID:.1. - .Цветы.) для девушки ID:2313', '5_0.862164001545579103', '0000-00-00 00:00:00', '', '', '', '2018-12-23', '2018-12-23', 2),
(34, 500, 'dmitry.plohotnyuk@gmail.com', '', 'Yes', 'No', 2313, 2, '', 'Клиент ID:500 заказал Подарок (ID:1 - Цветы) для девушки ID:2313', '6_0.821975001545579695', '0000-00-00 00:00:00', '', '', '', '2018-12-23', '0000-00-00', 0),
(35, 501, 'afrikanez78@gmail.com', '', 'No', 'No', 2314, 2, '', 'Клиент ID:501 заказал Подарок (ID:1 - Цветы) для девушки ID:2314', '7_0.955098001545729062', '0000-00-00 00:00:00', '', '', '', '2018-12-25', '0000-00-00', 0),
(36, 501, 'afrikanez78@gmail.com', '', '', '', 2314, 1, '', 'Клиент ID:501 заказал Skype для девушки ID:2314', '                                            ', '2018-12-26 13:00:00', '', '', '', '2018-12-25', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(128) NOT NULL,
  `order_id` int(11) NOT NULL,
  `tarif_name` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `payment_info` text NOT NULL,
  `payment_system` varchar(64) NOT NULL,
  `payment_error` text NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_payment` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `order_id`, `tarif_name`, `user_id`, `price`, `type`, `payment_info`, `payment_system`, `payment_error`, `date_add`, `date_payment`, `status`) VALUES
(15, '7_0.955098001545729062', 35, '', 501, '50', 1, 'Order of the gift', 'pastabank', '', '2018-12-25 11:11:02', '2018-12-25 11:12:27', 1),
(14, '6_0.821975001545579695', 34, '', 500, '62', 1, 'Order of the gift', 'pastabank', '', '2018-12-23 17:41:35', '2018-12-23 17:41:58', 1),
(13, '5_0.862164001545579103', 33, '', 500, '67', 2, 'Order of the gift', 'pastabank', '', '2018-12-23 00:00:00', '2018-12-23 17:32:27', 1),
(12, '4_0.419987001545578176', 32, '', 500, '67', 1, 'Order of the gift', 'pastabank', '', '2018-12-23 17:16:16', '0000-00-00 00:00:00', 0),
(9, '9_0.912657001544163389', 0, 'GOLD', 500, '99', 0, 'Order of the tariff plan GOLD', 'pastabank', 'Invalid expiry date', '2018-12-07 08:16:29', '0000-00-00 00:00:00', 0),
(10, '10_0.534332001544172574', 0, 'SILVER', 500, '69', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2018-12-07 10:49:34', '2018-12-07 10:52:16', 1),
(11, '3_0.870196001544526314', 0, 'SILVER', 501, '69', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2018-12-11 13:05:14', '2018-12-11 13:06:06', 1);

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
(6, '500', 'ukrainian', 'Christian General', '5 feet 9 inches (175.26 cm)', '160 lbs (72.6 kg)', 'Sportive', 'Blue', 'Ligh-brown', 'University Degree', 'Don\'t know', 'Window', 'Heterosexual', '', '', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(7, '501', 'american', 'Baptist', '4 feet 1 inches (124.46 cm)', '101 lbs (45.8 kg)', 'Sportive', 'Black', 'Blond', 'Collage', 'Positive', 'Divorced', 'Heterosexual', 'ukrainian , russian', 'ni', '60.000-75.000$', 'Yes', 'English', 'Yes', 'Yes', 'Listening to music; Traveling; Conversation; ', '', ' I also like listening to music. I prefer jazz and club music.', '', '', 'I take time out for others; I care about the physical shape I am in; ', 'Keeping physically fit; ', 'I know I can always count on the people who are closest to me; It is important for me to have close friends in my life; Being monogamous is one of benefits of being in a successful relationship; ', '', 'смисчичсми', '', '', '', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Cristian', '', 'no', 'Divorced', 'Negative', 'чсмичсми', 'cccc', '', '', 'cvdbdbc  dsfv  ', '', 'Viber; WhatsApp; ', '', '                                        xcbxbxbcvb'),
(8, '502', 'indian', 'Buddhist', '5 feet 5 inches (165.10 cm)', '138 lbs (62.6 kg)', 'Athletic', 'Black', 'Blond', 'University Degree', 'Don\'t know', 'Window', 'Heterosexual', '02 years', 'Biguniess', '20.000-35.000$', 'No', 'Hindi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '           By massages on mobil.                             '),
(10, '504', 'american', 'Chatholic', '5 feet 10 inches (177.80 cm)', '127 lbs (57.6 kg)', 'Athletic', 'Grey-blue', 'Black', 'High school', 'Negative', 'Single', 'Heterosexual', '2 years', 'no', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; ', '         facebook                               '),
(11, '505', 'indian', 'Atheist', '5 feet 10 inches (177.80 cm)', '119 lbs (54 kg)', 'Thin', 'Black', 'Black', 'Collage', 'Positive', 'Single', 'Homosexual', '2 years', 'Businessman', '20.000-35.000$', 'No', 'Hindi', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Searching point by Google'),
(12, '506', 'afghan', '1', '4 feet 0 inches (121.92 cm)', '90 lbs (40.8 kg)', '1', 'Black', 'Black', '1', 'Negative', '1', 'Heterosexual', '1', '1', '1', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', 'Disclaimer: We are not liable for any financial loss, lost data, missed customers, loss of search engine rankings, undelivered email or any other damages that you may incur due to the expiration of bridgematchmaker.com. For further information please refer to section 12.b.7a of our User Agreement. \n\n This is your final notification to renew bridgematchmaker.com: \n\n https://domainnetcenter.com/?n=bridgematchmaker.com&amp;r=a \n\n In the event that you allow bridgematchmaker.com to expire, the listing will be automatically deleted from our servers within 3 business days. After expiration, we reserve the right to offer your web listing to competing businesses or interested parties in the same category and state/region after 3 business days on an auction basis. \n\n This is the final notification that we are required to transmit for the expiration of bridgematchmaker.com \n\n Secure Online Payment: \n\n https://domainnetcenter.com/?n=bridgematchmaker.com&amp;r=a \n\n All services will be restored automatically on bridgematchmaker.com if payment is received in full on time before expiration. We thank you for your cooperation.'),
(13, '507', 'chilean', 'Atheist', '5 feet 10 inches (177.80 cm)', '176 lbs (79.8 kg)', 'Athletic', 'Light-brown', 'Ligh-brown', 'Collage', 'Negative', 'Single', 'Heterosexual', '10 month', 'seller', '20.000-35.000$', 'No', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                facebook        '),
(14, '508', 'filipino', '', '5 feet 9 inches (175.26 cm)', '136 lbs (61.7 kg)', 'Athletic', 'Black', 'Black', 'High school', 'Negative', 'Single', 'Homosexual', '', 'Trailer driver', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(15, '509', 'croatian', 'Chatholic', '5 feet 10 inches (177.80 cm)', '120 lbs (54.4 kg)', 'Overweight', 'Blue', 'Black', 'High school', 'Negative', 'Single', 'Heterosexual', '2 godine', '', '', 'No', 'Croation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'German; English; ', '                                        '),
(16, '510', 'indonesian', 'Muslim', '5 feet 1 inches (154.94 cm)', '134 lbs (60.8 kg)', 'Athletic', 'Black', 'Black', 'None', 'Don\'t know', 'Single', 'Bisexual', '', 'Engginer', '75.000-100.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(17, '511', 'egyptian', 'Muslim', '5 feet 10 inches (177.80 cm)', '166 lbs (75.3 kg)', 'Athletic', 'Light-brown', 'Black', 'University Degree', 'Positive', 'Divorced', 'Heterosexual', '2', 'Engineer', '60.000-75.000$', 'Yes', 'Arabic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(18, '512', 'tunisian', 'Muslim', '5 feet 10 inches (177.80 cm)', '', 'Sportive', 'Light-brown', 'Blond', 'High school', 'Negative', 'Single', 'Heterosexual', '3 montg', '', '20.000-35.000$', 'No', 'French', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        i hear about you in social media'),
(19, '513', 'american', '', '5 feet 10 inches (177.80 cm)', '200 lbs (90.7 kg)', 'Overweight', 'Brown', 'Brown', 'High school', 'Negative', 'Single', 'Homosexual', 'All time', 'Farming ', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(20, '514', 'ukrainian', 'Orthodox', '5 feet 7 inches (170.18 cm)', '140 lbs (63.5 kg)', 'Athletic', 'Brown', 'Brown', 'University Degree', 'Negative', '', 'Heterosexual', '', '', '', 'Yes', 'Ukranian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(21, '515', 'ugandan', 'Christian General', '4 feet 4 inches (132.08 cm)', '190 lbs (86.2 kg)', 'Athletic', 'Black', 'Black', 'High school', 'Negative', 'Single', 'Heterosexual', '2', 'WORKER', '20.000-35.000$', 'No', 'Welsh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', 'THROUGH SOCIAL MEDIA'),
(22, '516', 'filipino', 'Mormon', '5 feet 5 inches (165.10 cm)', '112 lbs (50.8 kg)', 'Thin', 'Black', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', 'so long', 'partime broadband sales agent', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        in facebook'),
(23, '517', 'american', 'Atheist', '4 feet 0 inches (121.92 cm)', '90 lbs (40.8 kg)', 'Sportive', 'Light-brown', 'Ligh-brown', 'High school', 'Don\'t know', 'Window', 'Bisexual', '...', 'archetect', '60.000-75.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'French; ', '                                        ............'),
(24, '518', 'canadian', 'Atheist', '5 feet 8 inches (172.72 cm)', '190 lbs (86.2 kg)', 'Sportive', 'Blue', 'Red', 'None', 'Don\'t know', 'Single', 'Heterosexual', 'Many years!', 'Part time work ', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                     Facebook    '),
(25, '519', 'scottish', '', '5 feet 10 inches (177.80 cm)', '93 lbs (42.2 kg)', 'Thin', 'Grey-blue', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', '6months', 'site manager construction', '40.000-55.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                   facebook                     '),
(26, '520', 'moroccan', 'Muslim', '5 feet 9 inches (175.26 cm)', '177 lbs (80.3 kg)', 'Overweight', 'Brown', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', '6 ans', 'Agent commerciales ', '20.000-35.000$', 'No', 'Arabic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; English; ', '               Par Facebook                          '),
(27, '521', 'french', 'Atheist', '6 feet 1 inches (185.42 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Hazel', 'Brown', 'High school', 'Negative', 'Single', 'Heterosexual', '12 years', 'Painter', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(28, '522', 'yemenite', 'Christian General', '5 feet 1 inches (154.94 cm)', '214 lbs (97.1 kg)', 'Athletic', 'Light-brown', 'Ligh-brown', 'Collage', 'Positive', 'Divorced', 'Homosexual', '', '', '100.000- more$', 'No', 'Hebrew', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', 'Roadsatr riders'),
(29, '523', 'american', '', '5 feet 10 inches (177.80 cm)', '161 lbs (73 kg)', '', 'Blue', 'Black', '', 'Negative', '', 'Homosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(30, '524', 'algerian', 'Muslim', '5 feet 7 inches (170.18 cm)', '155 lbs (70.3 kg)', 'Sportive', 'Hazel', 'Black', 'High school', 'Don\'t know', 'Divorced', 'Heterosexual', '1 month', 'driver', '20.000-35.000$', 'Yes', 'Arabic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'French; ', '            facebook                           '),
(31, '525', 'mauritian', '', '5 feet 9 inches (175.26 cm)', '195 lbs (88.5 kg)', '', 'Black', 'Black', 'High school', 'Positive', 'Single', 'Heterosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(32, '526', 'syrian', 'Muslim', '6 feet 0 inches (182.88 cm)', '170 lbs (77.1 kg)', 'Sportive', 'Brown', 'Black', 'University Degree', 'Negative', 'Single', 'Homosexual', 'How long are you lonely?', 'nothing', '20.000-35.000$', 'No', 'Arabic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                 nice'),
(33, '527', 'indonesian', 'Muslim', '5 feet 8 inches (172.72 cm)', '176 lbs (79.8 kg)', 'Sportive', 'Light-brown', 'Black', '', 'Negative', 'Divorced', 'Heterosexual', '', '', '', 'No', 'English', 'No', 'Yes', 'Watching movies; Listening to music; Watching TV; Reading; Parties; Traveling; Talking with friends; Religious Community; Conversation; ', 'i love dogs ', 'im just a good man. i love to cook, jungle activities, watching movies, and sex', '', '', 'I do things according to my plan; I seek adventure; I desire sexual activity; I think it is important to improve myself; I care about the physical shape I am in; I feel better when I am around other people; ', 'I Creating romance in a relationship; Keeping physically fit; Finding and taking on challenging activities; ', 'A serious relationship needs to be monogamous; I know I can always count on the people who are closest to me; To my mind being monogamous helps build trust in a romantic relationship; Being monogamous is one of benefits of being in a successful relationship; I sometimes find it difficult to trust people I get romantic relation; ', '', 'an affairs / liar is in my black list', 'cuz i want to have a life partner from other country ( european )', '', '', '26-35', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Doesn\'t matter', 'Doesn\'t matter', 'depends', 'Seperated', 'Nutral', 'any', 'liar', 'sure', 'both', 'i am seeking someone serious for my life partner', '', '', '', '                                        '),
(34, '528', 'syrian', '', '6 feet 0 inches (182.88 cm)', '172 lbs (78 kg)', 'Sportive', 'Brown', 'Brown', 'Collage', 'Negative', 'Single', 'Homosexual', '12 months ', 'Driver', '20.000-35.000$', 'Yes', 'Arabic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'German; English; ', '                                        Facebook'),
(35, '529', 'algerian', 'Muslim', '5 feet 9 inches (175.26 cm)', '134 lbs (60.8 kg)', 'Sportive', 'Grey', 'Black', 'High school', 'Don\'t know', 'Single', 'Heterosexual', 'منذو مدة', 'لا أعمل', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'French; ', '                                    في فيسبوك فاأىسلت لكم     '),
(36, '530', 'turkish', 'Atheist', '4 feet 0 inches (121.92 cm)', '95 lbs (43.1 kg)', 'Thin', 'Black', 'Black', 'None', 'Don\'t know', 'Single', 'Bisexual', ' 1 yıl', 'Garson şefi', '100.000- more$', 'Yes', 'Ukranian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(37, '531', 'american', 'Orthodox', '5 feet 2 inches (157.48 cm)', '90 lbs (40.8 kg)', 'Thin', 'Light-brown', 'Black', 'Collage', 'Positive', 'Single', 'Heterosexual', '6 years', 'Student', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', ' Youtube               '),
(38, '532', 'barbadian', 'Christian General', '5 feet 10 inches (177.80 cm)', '165 lbs (74.8 kg)', 'Overweight', 'Hazel', 'Red', 'Collage', 'Positive', 'Divorced', 'Bisexual', '', '', '40.000-55.000$', 'No', 'Tamil', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', 'https://cbdoilamericano.com/# cbd oil and drug testing \r\n&lt;a href=&quot;https://cbdoilamericano.com/#&quot;&gt;the cbd store&lt;/a&gt; \r\n&lt;a href=&quot;https://cbdoilamericano.com/#&quot;&gt;pure essence cbd oil&lt;/a&gt;'),
(39, '533', 'nepalese', 'Christian General', '5 feet 2 inches (157.48 cm)', '148 lbs (67.1 kg)', 'Sportive', 'Light-brown', 'Ligh-brown', 'High school', 'Positive', 'Single', 'Heterosexual', 'many ', 'driver ', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        My cont.no +9779813445814 '),
(40, '534', 'american', 'Atheist', '4 feet 2 inches (127.00 cm)', '94 lbs (42.6 kg)', '', 'Light-brown', 'Black', '', 'Negative', '', 'Heterosexual', '', '', '', 'No', 'English', 'Yes', 'Yes', 'Watching movies; Listening to music; ', 'like them', ' I adore skating. I was born is a village and I love gardening.  ', '', '', 'I do things according to my plan; I desire sexual activity; ', 'I Creating romance in a relationship; Finding compromise in relationship; ', 'When I get romantically involved, I tell about everything to my partner; I know I can always count on the people who are closest to me; ', '', 'lie', '', '', '', '36-45', '4 feet 0 inches (121.92 cm) - 5 feet 0 inches (152.40 cm)', '165 lbs (74.8 kg)-178 lbs (80.7 kg)', 'Grey', 'Black', '', 'Cristian', '', 'yes', 'Never Married', 'Negative', 'sense of humor', 'greedy', '', '', 'khbfksbhlsjhlghsi', '', 'Viber; ', '', '                                        '),
(41, '535', 'nepalese', 'Christian General', '5 feet 5 inches (165.10 cm)', '145 lbs (65.8 kg)', 'Athletic', 'Black', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', '5 year ', 'officer', '20.000-35.000$', 'No', 'Nepali', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        by net '),
(42, '536', 'american', 'Chatholic', '5 feet 7 inches (170.18 cm)', '215 lbs (97.5 kg)', 'Athletic', 'Brown', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', '19 years', 'Salesman and detective ', '40.000-55.000$', 'Yes', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; English; ', '                                        On my internet phone '),
(43, '537', 'south african', 'Christian General', '5 feet 7 inches (170.18 cm)', '132 lbs (59.9 kg)', 'Athletic', 'Black', 'Black', 'High school', 'Positive', 'Single', 'Heterosexual', 'Five years ', 'Chef ', '60.000-75.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '  You guys you a fantastic job                                       '),
(44, '538', 'ukrainian', 'Atheist', '6 feet 0 inches (182.88 cm)', '164 lbs (74.4 kg)', 'Sportive', 'Black', 'Black', 'University Degree', 'Negative', 'Single', 'Heterosexual', 'One year', 'Manager', '20.000-35.000$', 'No', 'Russian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Ukrainian; Russian; English; ', ''),
(45, '539', 'american', 'Jewish', '6 feet 2 inches (187.96 cm)', '205 lbs (93 kg)', 'Athletic', 'Blue', 'Brown', 'University Degree', 'Negative', 'Single', 'Heterosexual', 'two years', 'Tech Sales Specialist Hewlett-Packard', '20.000-35.000$', 'No', 'English', 'Yes', 'Yes', 'Watching movies; Listening to music; Watching TV; Reading; Traveling; Talking with friends; Conversation; Hosting / Entertaining; ', 'No dogs. I am allergic but I love cats', 'History, traveling, movies, reading, writing, visiting friends', 'night owl', 'Smart, steady, strong, and sweet', 'I do things according to my plan; I take time out for others; I seek adventure; I desire sexual activity; I think it is important to improve myself; I care about the physical shape I am in; I feel better when I am around other people; ', 'I Creating romance in a relationship; Finding and taking on challenging activities; Finding compromise in relationship; ', 'A serious relationship needs to be monogamous; I know I can always count on the people who are closest to me; To my mind being monogamous helps build trust in a romantic relationship; It is important for me to have close friends in my life; ', 'dream tech job, living in Germany or Austria, beautiful wife, traveling, lots of romance, and maybe a kid eventually', 'Cheating is very hard for me to forgive', 'I want to move to Europe for the chance at a better life.', 'many reasons. Women cheated, didn\'t want relationship, or didn\'t know what they wanted', 'two or three', '26-35', '5 feet 0 inches (152.40 cm) - 5 feet 8 inches (172.72 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Doesn\'t matter', 'Doesn\'t matter', 'of course', 'Never Married', 'Negative', 'Sexy, smart, steady, strong, and sweet', 'Cheating, lying, dishonesty,', 'that would make things much easier for us in person of course', '', 'Sexy, smart, steady, strong, and sweet', 'Sexy, smart, steady, strong, and sweet', 'Viber; ', '', 'Bridge of Love website');

-- --------------------------------------------------------

--
-- Структура таблицы `request_tour`
--

CREATE TABLE `request_tour` (
  `id` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `question1` varchar(32) NOT NULL DEFAULT 'No',
  `question2` varchar(32) NOT NULL DEFAULT 'No',
  `question3` varchar(32) NOT NULL DEFAULT 'No',
  `question4` varchar(32) NOT NULL DEFAULT 'No',
  `question5` varchar(32) NOT NULL DEFAULT 'No',
  `question6` varchar(32) NOT NULL DEFAULT 'No',
  `question7` varchar(32) NOT NULL DEFAULT 'No',
  `question8` varchar(32) NOT NULL DEFAULT 'No',
  `question9` varchar(32) NOT NULL DEFAULT 'No',
  `question10` varchar(32) NOT NULL DEFAULT 'No',
  `question11` varchar(32) NOT NULL DEFAULT 'No',
  `question12` varchar(32) NOT NULL DEFAULT 'No',
  `question13` varchar(32) NOT NULL DEFAULT 'No',
  `question14` varchar(32) NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `request_tour`
--

INSERT INTO `request_tour` (`id`, `date_add`, `first_name`, `last_name`, `email`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`) VALUES
(5, '2018-11-13 21:42:30', 'Ariel', 'David', 'sweet-star@ircx.co.il', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Структура таблицы `request_tour_price`
--

CREATE TABLE `request_tour_price` (
  `id` int(11) NOT NULL,
  `question1_price` varchar(64) NOT NULL,
  `question2_price` varchar(64) NOT NULL,
  `question3_price` varchar(64) NOT NULL,
  `question4_price` varchar(64) NOT NULL,
  `question5_price` varchar(64) NOT NULL,
  `question6_price` varchar(64) NOT NULL,
  `question7_price` varchar(64) NOT NULL,
  `question8_price` varchar(64) NOT NULL,
  `question9_price` varchar(64) NOT NULL,
  `question10_price` varchar(64) NOT NULL,
  `question11_price` varchar(64) NOT NULL,
  `question12_price` varchar(64) NOT NULL,
  `question13_price` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `request_tour_price`
--

INSERT INTO `request_tour_price` (`id`, `question1_price`, `question2_price`, `question3_price`, `question4_price`, `question5_price`, `question6_price`, `question7_price`, `question8_price`, `question9_price`, `question10_price`, `question11_price`, `question12_price`, `question13_price`) VALUES
(1, '226', '82', '300', '125', '330', '110', '123', '8', '82', '225', '80', '245', '210');

-- --------------------------------------------------------

--
-- Структура таблицы `setting_gifts`
--

CREATE TABLE `setting_gifts` (
  `gift_id` int(11) NOT NULL,
  `gift_name` text NOT NULL,
  `gift_price` float UNSIGNED NOT NULL,
  `gift_description` text NOT NULL,
  `gift_foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting_gifts`
--

INSERT INTO `setting_gifts` (`gift_id`, `gift_name`, `gift_price`, `gift_description`, `gift_foto`) VALUES
(2, 'Spring bouquet', 50, '<div>- Aroma tea in bags with a print&nbsp;</div><div>- Honey cream \"Rapsberry shake\"&nbsp;</div><div>- A mug with a print</div><div>- Mini bouquet&nbsp;</div><div>- Greeting card</div><div>- Gift box with a filler&nbsp;</div>', 'uploads/gift/1546707382.jpeg'),
(3, 'Gift set Chanel №5 ', 85, '<div>- Bracelet \"Chanel\"</div><div>- Bonbonniere with candies - 50UAH</div><div>- Perfume sample \"Chanel №5\"</div><div>- A tablet for records with a print</div><div>- Greeting card</div><div>- Gift box with a filler</div>', 'uploads/gift/1546707459.jpeg'),
(4, 'Gift set &quot;By beloved&quot; ', 40, '<div>- Chewing gum in tin can</div><div>- Soap leaves &amp;soap in cake form&nbsp;</div><div>- Shower gel Fiesta Rose(500 ml)</div><div>- Night light projector</div><div>- Kinder chocolates&nbsp;</div><div>- Gift wrap</div>', 'uploads/gift/1546707607.jpg');

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
(2, 'silver', '99', '30', '15', '2', '0', '1', '1', '<ul><li>Writing <b>1</b><span class=\"text-accent\" style=\"\"><b>5 letters</b> </span>to any girls on the site</li>\r\n                                                        <li><span class=\"text-accent\" style=\"\"><b>2x30 minutes</b></span> of communication with any girl on Skype</li>\r\n                                                        <li>10% discount for the purchase of site services</li>\r\n                                                        <li>10% discount for additional site services</li><li>Personal matchmaker at any stage of acquaintance</li>\r\n                                                    </ul>'),
(3, 'gold', '299', '60', '10', '3', '2', '5', '10', '<ul><li>Writing <span class=\"text-accent\"><b>25 letters</b> </span>to any girls on the site</li>\r\n                                                    <li><span class=\"text-accent\"><b>3x30 minutes</b></span> of communication with any girl on Skype</li>\r\n                                                    <li>10% discount for the purchase of site services</li>\r\n                                                    <li>10% discount for additional site services</li><li>Personal matchmaker at any stage of acquaintance</li><li>Recommendations of the matchmaker on filling in the profile</li><li>Recommending your profile to all ladies</li>\r\n                                                </ul>'),
(4, 'premium', '699', '120', '50', '5', '5', '10', '20', '<ul>\r\n                                                        <li>Writing <span class=\"text-accent\"><b>50 letters</b> </span>to any girls on the site</li>\r\n                                                        <li><span class=\"text-accent\"><b>5x30 minutes</b></span> of communication with any girl on Skype</li>\r\n                                                        <li>15% discount for the purchase of site services</li>\r\n                                                        <li>10% discount for additional site services</li><li>Personal matchmaker at any stage of acquaintance</li><li>Recommendations of the matchmaker on filling in the profile</li><li>Recommending your profile to all ladies</li>\r\n                                                    </ul>');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `user_email` varchar(128) NOT NULL,
  `user_foto` varchar(64) NOT NULL,
  `matchmaker_login` varchar(64) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `status` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`ticket_id`, `date_add`, `date_end`, `user_id`, `user_email`, `user_foto`, `matchmaker_login`, `question`, `answer`, `status`) VALUES
(7, '2018-09-28 12:31:53', '2018-09-28 12:33:31', '501', 'afrikanez78@gmail.com', 'uploads/client/ticket/1538127113.jpg', 'match1', 'ффффффффффф ыаывпафваы вапвыап ', '\\чясмяывмпвя кфуцпвафы ефуце ', '1'),
(6, '2018-09-28 12:07:18', '2018-09-28 12:09:29', '501', 'afrikanez78@gmail.com', '', 'match1', 'mhngjhgj лрлдрнлдр лдрогдлрогд', ',njfh jhtgfjh vfghrfgh hjgrffg jhyrfrghr ', '1'),
(5, '2018-09-28 12:46:07', '2018-09-28 12:47:15', '500', 'dmitry.plohotnyuk@gmail.com', 'uploads/client/ticket/1538124367.png', 'match1', 'Text with foto', 'Answer from manager', '1'),
(8, '2018-09-28 12:33:50', '2018-09-28 12:34:24', '501', 'afrikanez78@gmail.com', '', 'match1', '\\ывма\\яы ывм   КЙАЦйуцк  ЙЦК  УЦА ', 'ЯВЧМСИ ЦУЕ  ЙУЦКККККККККК ', '1'),
(9, '2018-10-10 14:22:43', '2018-10-16 13:56:02', '500', 'dmitry.plohotnyuk@gmail.com', '', 'match1', '111', '222', '1'),
(10, '2018-10-16 13:48:58', '0000-00-00 00:00:00', '501', 'afrikanez78@gmail.com', '', 'match1', 'Zfzvxc Dfszdv b ', '', '0'),
(11, '2018-11-30 13:34:35', '2018-11-30 13:34:58', '500', 'dmitry.plohotnyuk@gmail.com', '', 'match1', '1232132133', 'ывапвапвыапывп', '1'),
(12, '2018-11-30 13:42:37', '2018-11-30 13:42:54', '500', 'dmitry.plohotnyuk@gmail.com', '', 'match1', '11232', 'dfasfasd dsf asdfaf', '1');

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
-- Индексы таблицы `feeds`
--
ALTER TABLE `feeds`
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
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `request_tour`
--
ALTER TABLE `request_tour`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `request_tour_price`
--
ALTER TABLE `request_tour_price`
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
-- Индексы таблицы `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT для таблицы `clients_girl`
--
ALTER TABLE `clients_girl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `clients_services`
--
ALTER TABLE `clients_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT для таблицы `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `girls`
--
ALTER TABLE `girls`
  MODIFY `girl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2322;

--
-- AUTO_INCREMENT для таблицы `girls_foto`
--
ALTER TABLE `girls_foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT для таблицы `girls_invite`
--
ALTER TABLE `girls_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `matchmakers`
--
ALTER TABLE `matchmakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `notifications_status`
--
ALTER TABLE `notifications_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `request_tour`
--
ALTER TABLE `request_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `request_tour_price`
--
ALTER TABLE `request_tour_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `setting_gifts`
--
ALTER TABLE `setting_gifts`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `setting_tarif`
--
ALTER TABLE `setting_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `translators`
--
ALTER TABLE `translators`
  MODIFY `translator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
