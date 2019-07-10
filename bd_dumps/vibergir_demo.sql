-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: vibergir.mysql.ukraine.com.ua
-- Время создания: Июл 10 2019 г., 07:17
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
  `last_login` datetime NOT NULL,
  `utm_source` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`user_id`, `email_client`, `password`, `first_name`, `last_name`, `country`, `telefon`, `foto`, `matchmaker_login`, `status_system`, `status_tarif`, `status_email`, `status_anketa2`, `status_verification`, `service`, `birthday`, `date_reg`, `date_tarif_set`, `last_login`, `utm_source`) VALUES
(2, 'email@gmail.com', '698d51a19d8a121ce581499d7b701668', 'Petya', 'Petrov', 'United States', '+380931234567', 'uploads/client/1535537763.jpg', 'None', '4', '1', '1', '1', '1', '1', '1990-05-01', '2018-06-01', '2018-11-02', '2019-02-07 10:21:28', ''),
(3, 'JJamson55@gmail.com', '9df519dd59a3368be389a552e3ef0562', 'John', 'Smith', 'United States', '+45896354893', 'uploads/client/1531834534.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '0', '1985-05-18', '2018-07-17', '2018-07-17', '0000-00-00 00:00:00', ''),
(4, 'Jamson99@gmail.com', '1d76b38eb9a0b7010e054ee8285a1000', 'Bil', 'Jackson', 'United Kingdom', '+45896354836', 'uploads/client/1531903416.jpg', 'None', '0', '0', '0', '0', '0', '1', '2018-07-18', '2018-07-18', '2018-07-18', '0000-00-00 00:00:00', ''),
(5, 'tenisportabr@msn.com', '0e57951c5c597cd30d27aeba20f09ae8', 'Antonio ', 'De Blas', 'Spain', '690707216', 'uploads/client/1532523282.jpeg', 'match1', '2', '0', '0', '0', '0', '0', '1986-02-16', '2018-07-25', '2018-07-25', '0000-00-00 00:00:00', ''),
(6, 'alanf2011@outlook.com', '2a8c3e9593ef11c3c342533acc41f1ca', 'Alan', 'Ferguson', 'United Kingdom', '07518438175', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1966-06-13', '2018-07-25', '2018-07-25', '0000-00-00 00:00:00', ''),
(500, 'dmitry.plohotnyuk@gmail.com', '24375c13f81103f27a83b7d5daa4d59c', 'Dmitry', 'Plohotnyuk', 'Ukraine', '+380688989207', 'uploads/client/1535616399.jpg', 'match1', '2', '1', '0', '0', '0', '1', '1990-07-31', '2018-08-30', '2019-06-06', '2019-07-07 14:51:55', ''),
(501, 'afrikanez78@gmail.com', '36f86def269130592e297b60171326bb', 'Alex', 'brokovv', 'United States', '+380933135345', 'uploads/client/1543918238.jpg', 'fedynchik78@gmail.com', '2', '1', '1', '1', '0', '1', '1958-08-20', '2018-08-30', '2000-01-01', '2019-05-23 09:33:47', ''),
(502, 'agraeal01705@gmail.com', '73bb1e5a0df5f3994ea450d7d8141307', 'Krishna', 'Agrawal', 'India', '08384851705', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1998-07-01', '2018-09-07', '2018-09-07', '0000-00-00 00:00:00', ''),
(504, 'evgeniamanukina@gmail.com', '503c95d2e375e59dfd29f73845ceb1db', 'Robert', 'Robinson', 'United States', '+45896354893', 'uploads/client/avatar.jpg', 'None', '4', '0', '1', '0', '0', '0', '2018-09-22', '2018-09-07', '2018-09-07', '0000-00-00 00:00:00', ''),
(505, 'tiwarimayank820@gmail.com', '137388615b916ed03e9885b326803332', 'Mayank ', 'Tiwari', 'India', '9369732560', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1997-10-03', '2018-09-07', '2018-09-07', '0000-00-00 00:00:00', ''),
(506, 'noreply@domainnetcenter.com', '10d9c885519ffcc1eb9fc277f1804f53', 'DomainNet', 'Center', '1', '954-320-4679', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '0000-00-00', '2018-09-16', '2018-09-16', '0000-00-00 00:00:00', ''),
(507, 'jcristobal.dsv@gmail.com', 'e7ecfe5c291f173517c7619f1c85c6b7', 'Juan Cristóbal', 'Sayegh Valdés', 'Chile', '+569 97906735', 'uploads/client/1537306791.jpg', 'match1', '2', '0', '1', '0', '0', '2', '1997-10-25', '2018-09-19', '2018-09-19', '0000-00-00 00:00:00', ''),
(508, 'fedynchik78@gmail.com', '7b5647abd054e1dbc1eec9af5a36cf9b', 'Robles', 'Matias ', 'Philippines', '09421694857', 'uploads/client/1537430965.jpg', 'None', '1', '1', '0', '0', '0', '1', '1963-06-12', '2018-09-20', '2019-06-06', '2019-06-24 11:00:10', ''),
(509, 'drazenkokok82@gmail.com', 'd06c1c77b4d7eac2ce27bb5cb96b0e1a', 'Drazen', 'Kokot', 'Croatia', '0917306182', 'uploads/client/1537690367.jpg', 'match1', '2', '0', '0', '0', '0', '0', '0000-00-00', '2018-09-23', '2018-09-23', '0000-00-00 00:00:00', ''),
(510, 'nickoprayudha1995@gmail.com', 'cbebeb71b9e97828509998742830a10b', 'Mhd Nicko', 'Prayudha', 'Indonesia', '081260640060', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1995-06-15', '2018-09-23', '2018-09-23', '0000-00-00 00:00:00', ''),
(511, 'loai.taher@gmail.com', '0a2ae5205622023e83e51789d5953d91', 'Loai', 'Eldesoki', 'Egypt', '201010900100', 'uploads/client/1538852978.jpg', 'None', '0', '0', '0', '0', '0', '0', '1981-05-25', '2018-10-06', '2018-10-06', '0000-00-00 00:00:00', ''),
(512, 'achrefmarweni55@gmail.com', '1fc00f2ff0e534e1b85a1527679ee59f', 'marweni', 'achref', 'Tunisia', '29587418', 'uploads/client/1538903856.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-10-07', '2018-10-07', '0000-00-00 00:00:00', ''),
(513, 'kkandy40@yahoo.com', '8f06341a9a65def449281eea7779254a', 'Con', 'Hurley ', 'United States', '7016512077', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1979-11-26', '2018-10-08', '2018-10-08', '0000-00-00 00:00:00', ''),
(514, 'Vesta_2014@ukr.net', '2e3d4f95a0157850e3433e00eb3a141b', 'Luda', 'Luda', 'Ukraine', '+380671397755', 'uploads/client/1539252396.jpg', 'None', '4', '0', '0', '0', '0', '0', '0000-00-00', '2018-10-11', '2018-10-11', '0000-00-00 00:00:00', ''),
(515, 'www.Ayodelemaxdixon@email.com', 'fb00692e53493f70605f336e167aae17', 'AYODELE', 'MAXDIXON', 'United Kingdom', '+23278309163', 'uploads/client/1539365952.jpg', 'None', '4', '0', '0', '0', '0', '0', '0000-00-00', '2018-10-12', '2018-10-12', '0000-00-00 00:00:00', ''),
(516, 'aillia1379@gmail.com', '4cd5daa3d1b37600f5c866dc65b14845', 'Henry Roland S', 'Paviera Jr', 'Philippines', '+639276507226', 'uploads/client/1540663341.jpg', 'None', '0', '0', '0', '0', '0', '0', '1978-01-13', '2018-10-27', '2018-10-27', '0000-00-00 00:00:00', ''),
(517, 'tulisateur4@gmail.com', '8ff03564bc60d09da9154e640a750910', 'Imad', 'imadox', 'United States', '0665835253', 'uploads/client/1541531717.jpeg', 'None', '1', '0', '1', '0', '0', '2', '1998-06-19', '2018-11-06', '2018-11-06', '0000-00-00 00:00:00', ''),
(518, 'julianawhitehouse21@gmail.com', '4087aa5bf45307a3eb1a05db2b36d5f9', 'Julian', 'Whitehouse', 'Canada', '7058962632', 'uploads/client/1541627486.jpeg', 'match1', '2', '0', '0', '0', '0', '0', '1993-08-21', '2018-11-07', '2018-11-07', '0000-00-00 00:00:00', ''),
(519, 'alihughes@live.co.uk', '81b1d4f07cb2b0bb5e322dd8c14cd40e', 'Alistair', 'Hughes', 'United Kingdom', '07901973403', 'uploads/client/1542075605.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1974-07-03', '2018-11-13', '2018-11-13', '0000-00-00 00:00:00', ''),
(520, 'Magirtl@gmail.com', '4d586ba3896545603e407d80c15179e1', 'Aziz ', 'Rtili', 'Morocco', '0600424250', 'uploads/client/1542206817.jpg', 'match1', '2', '0', '0', '0', '0', '0', '0000-00-00', '2018-11-14', '2018-11-14', '0000-00-00 00:00:00', ''),
(521, 'arthurwillis560@gmail.com', '86c1dc7a9f0a85520376d49e6bd1db79', 'Arthur ', 'Willis', 'United States', '16033067955', 'uploads/client/1542228683.jpeg', 'match1', '2', '0', '1', '0', '0', '1', '1977-09-09', '2018-11-14', '2018-11-14', '0000-00-00 00:00:00', ''),
(522, 'magar.mag@yandex.com', 'a38cd93be03e642aa4c78829735ad2b9', 'CliffNefCJ', 'CliffNefCJ', 'Somalia', '87879325834', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1980-11-10', '2018-11-16', '2018-11-16', '0000-00-00 00:00:00', ''),
(523, 'billtown0@gmail.com', 'f82dd2c4f091deccb2c5ecf2003d2e3c', 'Bill', 'Town', 'United States', '+123456789', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1967-01-01', '2018-11-23', '2018-11-23', '0000-00-00 00:00:00', ''),
(524, 'najad96@yahoo.com', 'd6ee6479d1c09afa97b1c7e7272f8467', 'bouzida', 'djamel ', 'Algeria', '0665431770', 'uploads/client/1543444101.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '1', '1979-03-18', '2018-11-29', '2018-11-29', '0000-00-00 00:00:00', ''),
(525, 'boomrul@icloud.com', 'b57ff8e3c1642c82649af713bdf624d9', 'bhugawoo', 'choumul', 'Mauritius', '+23058600735', 'uploads/client/avatar.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '1', '1995-07-20', '2018-11-29', '2018-11-29', '0000-00-00 00:00:00', ''),
(526, 'dolsher404@gemil.com', 'bf4790d0af63152de98be7ffd421b525', 'dilsher', 'dilshrr', 'Syrian Arab Republic', '00963981301566', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1995-01-01', '2018-11-29', '2018-11-29', '0000-00-00 00:00:00', ''),
(527, 'aansinatra@gmail.com', '37afeec16d2a5fc49f97925e25b562bb', 'aan', 'sinatra', 'Indonesia', '+62 81291145722', 'uploads/client/1543593480.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '1', '0', '1', '1982-07-12', '2018-11-30', '2018-11-30', '0000-00-00 00:00:00', ''),
(528, 'majid197881@gmail.com', 'e544a30fb47c240620cb90713a1b2988', 'Majid', 'Mandil', 'Germany', '+49 1749174543', 'uploads/client/1543610475.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1978-08-01', '2018-11-30', '2018-11-30', '0000-00-00 00:00:00', ''),
(529, 'azjilalikanada14@gmail.com', 'f67efa4e42aaf31442032782cc18e646', 'Djilali', 'Djilali', 'Algeria', '+213656883451', 'uploads/client/1543689006.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-12-01', '2018-12-01', '0000-00-00 00:00:00', ''),
(530, 'kendinl_211@hotmail.com', '5fde3065baf95afb6e9469bfb38f835e', 'Tufan', 'Sevincer', 'Turkey', '+90 5338524094', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2018-12-05', '2018-12-05', '0000-00-00 00:00:00', ''),
(531, 'ultimaweapon2000@yahoo.com', '89ec76289cfbe551026945eabc64c45f', 'Derek', 'Lee', 'United States', '3232250887', 'uploads/client/1544218163.jpg', 'fedynchik78@gmail.com', '2', '0', '1', '0', '0', '2', '1994-12-04', '2018-12-07', '2018-12-07', '0000-00-00 00:00:00', ''),
(532, 'vcvvkEmemaMiztrita@1000xbetslots.xyz', '7bef161d6cd9987e6ca918a6b3d396e7', 'PreeliomiZG', 'PreeliomiZG', 'South Africa', '87534972433', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1976-12-11', '2018-12-10', '2018-12-10', '0000-00-00 00:00:00', ''),
(533, 'bibeklimb12@yahoo.com', 'd36c71408784d8123de29768f24df75e', 'Shiva', 'Shio', 'Nepal', '+977 9813445814', 'uploads/client/1545110654.jpg', 'None', '4', '0', '0', '0', '0', '0', '1985-12-28', '2018-12-18', '2018-12-18', '0000-00-00 00:00:00', ''),
(534, 'Jdavid03899@gmail.com', 'e529d496a0706379f504d936d8de235b', 'Thomas Teest!!!!!!', 'Jeffry', 'United States', '+1 85396458', 'uploads/client/1550146091.png', 'match1', '3', '0', '1', '1', '1', '1', '2018-10-17', '2018-12-18', '2019-02-27', '2019-05-02 10:51:03', ''),
(535, 'krishnaoli1968@gmail.com', '99d98a9d3f20f297aa3a999479e3abb0', 'john sharma ', 'Oli', 'Nepal', '+977 9816938404', 'uploads/client/1545384189.jpg', 'match1', '2', '0', '1', '0', '0', '2', '1970-04-16', '2018-12-21', '2018-12-21', '2019-02-03 09:13:36', ''),
(536, 'javy32049@yahoo.com', '113c4baf113f217245b7b01f73d65ec3', 'Javier', 'Vazquez', 'United States', '+1 6462337137', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1972-06-25', '2019-01-04', '2019-01-04', '0000-00-00 00:00:00', ''),
(537, 'bhekimangisi07@gmail.com', '40a8492bca05ee9274b4259a92422508', 'Bhekinkosi ', 'Dube ', 'South Africa', '+27 27734989324', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-05', '2019-01-05', '0000-00-00 00:00:00', ''),
(538, 'nicci26041989@gmail.com', 'b6c83d0cb5891651ff33fafa222c41d7', 'Nickolay', 'Sviren', 'Ukraine', '+380 985858805', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1980-04-26', '2019-01-08', '2019-01-08', '0000-00-00 00:00:00', ''),
(539, 'beadle1023@icloud.com', '91518b818399318094edc9baf44c2e68', 'Benjamin', 'Beadle', 'United States', '+1 5042586539', 'uploads/client/1550391491.jpeg', 'match1', '2', '0', '1', '1', '0', '1', '1986-04-23', '2019-01-10', '2019-01-10', '2019-02-17 10:14:40', ''),
(540, 'jsuchovsky87@gmail.com', 'c9e71c3936634fbac9c71106a6505410', 'Jon', 'Suchovsky ', 'United States', '+1 6613614193', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1987-02-24', '2019-01-12', '2019-01-12', '0000-00-00 00:00:00', ''),
(541, 'McIntoshStereo@gmail.com', '015735bad013d26950ee7980369e0a9e', 'James', 'Alexander', 'United States', '+1 (530) 275-6000', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '1', '0000-00-00', '2019-01-12', '2019-01-12', '0000-00-00 00:00:00', ''),
(542, 'diurnodiez@gmail.com', 'c9d119fd798b5f091510663d74f2ab61', 'federico', 'cadierno', 'United States', '3052197781', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '1', '1978-04-23', '2019-01-13', '2019-01-13', '0000-00-00 00:00:00', ''),
(543, 'poppawolf13@yahoo.com', '0cdb2bc61527a15e88776db945231024', 'Anthony', 'Hurlbert', 'United States', '9512155577', 'uploads/client/avatar.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1974-04-22', '2019-01-13', '2019-01-13', '0000-00-00 00:00:00', ''),
(544, 'thomasbchiki@gmail.com', '2f87f23d56ba11e2b70866a3fb7b533b', 'Thom', 'Chiki', 'United States', '+1 ', 'uploads/client/1547413242.jpg', 'match1', '2', '0', '1', '1', '0', '1', '1987-04-16', '2019-01-13', '2019-01-13', '2019-01-29 23:18:25', ''),
(545, 'steph.vanaelst@Gmail.com', '6c1df24e7faa37d3a3c1ab4841d5c622', 'Stéphane', 'Van-Aelst', 'Canada', '5812344058', 'uploads/client/1547428399.jpg', 'match1', '2', '0', '0', '0', '0', '0', '1976-08-21', '2019-01-14', '2019-01-14', '0000-00-00 00:00:00', ''),
(546, 'jamesdmullens@yahoo.com', 'ebee7fde15f9d4d6f85c2c0d10107925', 'James', 'Mullens', 'United States', '3046189266', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '0', '1977-05-31', '2019-01-14', '2019-01-14', '0000-00-00 00:00:00', ''),
(547, 'chem.master3@gmail.com', '2c4989babd50092c0a41abaf699a45d1', 'Danny', 'Harper', 'United States', '2086816186', 'uploads/client/1547514141.jpg', 'match1', '2', '0', '0', '0', '0', '2', '1987-11-19', '2019-01-15', '2019-01-15', '2019-03-01 06:32:28', ''),
(548, 'daveyboy201860@gmail.com', 'b6fbed5745d6e21e520cab7b0dbfce64', 'David', 'James', 'United Kingdom', '+1 ', 'uploads/client/1553382920.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1960-12-24', '2019-01-15', '2019-01-15', '2019-03-24 01:11:28', ''),
(549, 'lokis94.dl@gmail.com', '88bfdff572f27a299eec1665acca462a', 'Dima', 'Kim', 'Russian Federation', '+961 568625655', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '2019-01-17', '2019-01-17', '2019-01-17', '0000-00-00 00:00:00', ''),
(550, 'naganath72@gmail.com', '10be72365cd60a558296826b4dd86cc7', 'Naganath', 'ingle', 'India', '+919966669406', 'uploads/client/1547746935.jpeg', 'match1', '2', '0', '1', '1', '0', '1', '1989-03-07', '2019-01-17', '2019-01-17', '2019-02-01 19:53:46', ''),
(551, 'jer7191979@gmail.com', '60b90e3e7078e6710ecbea68fcbc565c', 'Jerry', 'Morris', 'United States', '+1 5092372869', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-21', '2019-01-21', '0000-00-00 00:00:00', ''),
(552, 'billyamacneil|@hotmail.com', '5fa045a3a3f28e0f8317d8d07c757a81', 'billy', 'mac neil', 'Canada', '+1 902 241 5341', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1959-05-25', '2019-01-22', '2019-01-22', '0000-00-00 00:00:00', ''),
(553, 'johnsylliboy@hotmail.com', '123889d666560725b8032f2386f03630', 'john', 'sylliboy', 'Canada', '+1 9023045333', 'uploads/client/1548122742.jpg', 'None', '1', '0', '1', '0', '0', '2', '1977-06-29', '2019-01-22', '2019-01-22', '0000-00-00 00:00:00', ''),
(554, 'abowman67@msn.com', '01cf5c101bd58dbe44cabcf4ef1b45b0', 'Anthony ', 'Bowman', 'United States', '+1 2067798661', 'uploads/client/1548129368.jpg', 'None', '0', '0', '0', '0', '0', '0', '1967-02-20', '2019-01-22', '2019-01-22', '0000-00-00 00:00:00', ''),
(555, 'bishop88keys@gmail.com', '16d7fab651169549a16b5e23b066769d', 'Leonard', 'Ross', 'United States', '+1 2816737979', 'uploads/client/1548183012.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-22', '2019-01-22', '0000-00-00 00:00:00', ''),
(556, 'mikepowell7345@gmail.com', '8fec842d3f8e6f754488f8f8fbeb92df', 'Mike', 'Powell', 'United States', '+1 8643401266', 'uploads/client/1548199493.jpg', 'None', '0', '0', '0', '0', '0', '0', '1973-06-07', '2019-01-23', '2019-01-23', '2019-01-24 22:19:24', ''),
(557, 'mikeossa55@gmail.com', '890f4cbf66a7e8b8e3ef84a6f126f871', 'Mike', 'Ossa', 'United States', '+17406704600 ', 'uploads/client/1548258567.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-23', '2019-01-23', '0000-00-00 00:00:00', ''),
(558, 'saratoga1662@gmail.com', 'a39e3f3f9d1e199f861504ab679fdfb2', 'Chris', 'Indilicato', 'United States', '7725211388', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '1', '0000-00-00', '2019-01-23', '2019-01-23', '2019-01-23 19:59:06', ''),
(559, 'stevenriverala@gmail.com', '149fbebc4e5c817ae09794160c771340', 'Steven', 'Rivera', 'United States', '+1 2108366650', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-23', '2019-01-23', '0000-00-00 00:00:00', ''),
(560, 'alhansen4109@gmail.com', 'fe6b5d7ede6682395bdc7ed6f452fe31', 'Al', 'Hansen ', 'United States', '+1 9206068982', 'uploads/client/1548300324.jpg', 'None', '0', '0', '0', '0', '0', '0', '1964-09-20', '2019-01-24', '2019-01-24', '2019-01-24 05:36:47', ''),
(561, 'abdallahhemmat@yahoo.com', 'c1b2368daf15c07e72093b3229fa6942', 'Abdallah ', 'Hemmat ', 'American Samoa', '+15027144245', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1967-04-08', '2019-01-24', '2019-01-24', '2019-01-24 07:57:11', ''),
(562, 'a.managerbridgeoflove@yahoo.com', 'f82dd2c4f091deccb2c5ecf2003d2e3c', 'Andrey', 'Andrey', 'United States', '+1 23456789', 'uploads/client/avatar.jpg', 'None', '4', '0', '1', '0', '0', '1', '1963-01-17', '2019-01-24', '2019-01-24', '2019-01-24 11:01:55', ''),
(563, 'a.managerbridgeoflovee@yahoo.com', 'f82dd2c4f091deccb2c5ecf2003d2e3c', 'AndreyS', 'AndreyS', 'United Kingdom', '+1 234567890', 'uploads/client/avatar.jpg', 'None', '4', '0', '1', '0', '0', '1', '1963-01-21', '2019-01-24', '2019-01-24', '2019-01-24 11:55:22', ''),
(564, 'tomaxtony67@gmail.com', 'f82dd2c4f091deccb2c5ecf2003d2e3c', 'Tony', 'Tomax', 'United States', '+1 2345678901', 'uploads/client/avatar.jpg', 'None', '4', '0', '1', '0', '0', '1', '1963-01-12', '2019-01-24', '2019-01-24', '2019-01-24 12:33:34', ''),
(565, 'steve9221@gmail.com', '72d6527a3665047981d90f1692657062', 'Steven', 'Caravousanos ', 'United States', '+1 9345008008', 'uploads/client/1548366942.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-01-24', '2019-01-24', '2019-01-24 23:58:06', ''),
(566, 'rfrfisher1@gmail.com', '94e9df2a1b474301702ae7f7d450ea14', 'Ron', 'Rogers', 'United States', '+1 3364061992', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1968-02-05', '2019-01-25', '2019-01-25', '2019-01-25 01:05:17', ''),
(567, 'ar894721@gmail.com', 'f5ca2d0fea818f7c46b004aa04214791', 'Antwaine', 'Robinson', 'United States', '+1 7865267401', 'uploads/client/1548373396.jpg', 'None', '0', '0', '0', '0', '0', '0', '1976-09-03', '2019-01-25', '2019-01-25', '2019-01-25 03:32:04', ''),
(568, 'jpoir1094@gmail.com', '3c996cc15a0b8c00b9bce4d0c01ff676', 'James', 'Poirier', 'United States', '7158289913', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1966-03-22', '2019-01-25', '2019-01-25', '2019-01-28 23:02:22', ''),
(569, 'shoedog0314@gmail.com', '604817d39b1817f876daaa5c1652fc3e', 'Quinlan', 'Gilliam', 'United States', '+1 4404060725', 'uploads/client/1548395812.jpg', 'None', '0', '0', '0', '0', '0', '0', '1973-02-15', '2019-01-25', '2019-01-25', '2019-01-25 12:52:54', ''),
(570, 'yihogopici@heximail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Dmitry', 'Test', 'United States', '+11234567777', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1995-06-05', '2019-01-30', '2019-01-30', '2019-01-30 17:31:29', ''),
(571, 'antoniolimonchelli@yandex.ua', '48c17ce46e3336488ea1a78aec49071c', 'Antonio', 'Limonchelli', 'Bermuda', '+1789541215', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '1', '1969-07-23', '2019-02-01', '2019-02-01', '2019-02-01 12:14:25', ''),
(572, 'markitigran52@gmail.com', '558cbe1b24c164ddfdea2656339fbaf2', 'tigran', 'markirosyan', 'United States', '+1250-25-251', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '1', '1942-02-24', '2019-02-01', '2019-02-01', '2019-02-01 12:20:24', ''),
(573, 'marcusgblack1024@gmail.com', 'de08ccc4a51420b1d0a2276401eda64a', 'Marcus ', 'Black', 'United States', '+19035768083', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1972-10-24', '2019-02-05', '2019-02-05', '2019-02-05 11:41:14', ''),
(574, 'nickrihan@hotmail.com', '95a631c6d500f0cf2a322d23fc42399b', 'Nicolas', 'Rihan', 'Sweden', '+46790158872', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1977-05-18', '2019-02-08', '2019-02-08', '2019-02-08 19:02:14', ''),
(575, 'offworldinc@hotmail.com', 'b8ea9d7dba942dd5df4b376c4fd4935e', 'Thomas', 'Lovén', 'Sweden', '+46707920687', 'uploads/client/1549748048.JPG', 'match1', '2', '0', '1', '1', '0', '1', '1975-11-27', '2019-02-09', '2019-02-09', '2019-02-09 23:34:15', ''),
(576, 'ashot1982@yandex.ru', 'e33789a765dbe1643c05584128185539', 'Ashot', 'Hovhannisyan ', 'Armenia', '+37494727732', 'uploads/client/1549775185.jpg', 'None', '1', '0', '1', '0', '0', '1', '0000-00-00', '2019-02-10', '2019-02-10', '2019-02-10 07:06:31', ''),
(577, 'evega@online.no', '6e80c810e5cea54e608a4bfcaeda9cac', 'Einar Carl ', 'Vegaa ', 'Norway', '+4790962067', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '0', '1960-11-22', '2019-02-10', '2019-02-10', '2019-02-12 22:48:14', ''),
(578, 'bogdancoca@yahoo.com', '0a159812f69766a191dd7cbbf061fc4c', 'Bogdan ', 'Coc6', 'Norway', '+4745523804', 'uploads/client/1549829795.png', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-02-10', '2019-02-10', '2019-02-10 22:16:41', ''),
(579, 'mich.butt@Yahoo.com', '9ba6a7c395d6eb379368b2f73eaccc9d', 'Michael', 'Butt', 'United States', '+17158210484', 'uploads/client/1550067161.jpg', 'match1', '2', '0', '1', '0', '0', '1', '2019-08-18', '2019-02-13', '2019-02-13', '2019-02-25 16:05:26', ''),
(580, 'lekro@gmx.com', '01f85624987710203d64fadc9481ed4d', 'Leon', 'Kropsy', 'Estonia', '+13435454544', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '1', '2014-02-06', '2019-02-20', '2019-02-20', '2019-02-20 11:37:26', ''),
(581, 'reinaldorosa054@gmail.com', '4d896d267a67028a527f7b08b785208d', 'Реинальдо', 'Роса', 'Russian Federation', '+79251608915', 'uploads/client/1551142620.jpeg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-02-26', '2019-02-26', '0000-00-00 00:00:00', ''),
(582, 'novapappy@gmail.com', 'bb964c88cc8fc3cacde8c8bdcb694e1c', 'Michael', 'Hampton', 'United States', '+17577151019', 'uploads/client/1551288226.jpg', 'match1', '2', '0', '1', '0', '0', '1', '0000-00-00', '2019-02-26', '2019-02-26', '2019-02-27 19:21:28', ''),
(583, 'ladlarajpoot3811366@gmail.com', 'd4f109d5a8ff3ea84a0e6843fb7429c6', 'Waseem', 'Akram', 'United Arab Emirates', '+971529212876', 'uploads/client/1551281150.jpg', 'None', '0', '0', '0', '0', '0', '0', '1990-08-06', '2019-02-27', '2019-02-27', '2019-02-27 17:25:59', ''),
(584, 'patbray00@gmail.com', '921b207283575a06b53e4a05f97312b6', 'Patrick', 'Bray', 'United States', '+15985943', 'uploads/client/1551342804.jpg', 'match1', '2', '0', '1', '0', '0', '1', '0000-00-00', '2019-02-28', '2019-02-28', '2019-02-28 10:53:50', ''),
(585, 'peacemanlove78@gmail.com', '4ee05a9b0d1d2670b1c88525d2e49239', 'brown', 'smith', 'United States', '+212537798461', 'uploads/client/1553043917.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1978-09-06', '2019-03-20', '2019-03-20', '2019-03-20 03:05:48', ''),
(586, 'dalibormarkovic234@gmail.com', 'ed43a48c507531bc4d14c85e27ca15f1', 'Dalibor', 'Markovic', 'Serbia and Montenegro', '+10691861189', 'uploads/client/1553319378.jpg', 'match1', '2', '0', '0', '0', '0', '2', '0000-00-00', '2019-03-23', '2019-03-23', '2019-03-23 07:36:28', ''),
(587, 'xsidey@gmail.com', '40ba95eaaa406e4fd94090e5b55e8110', 'Ahmed ', 'Siraj ', 'Maldives', '+9607775363', 'uploads/client/1553589043.jpeg', 'None', '1', '0', '1', '1', '0', '1', '1980-04-27', '2019-03-26', '2019-03-26', '2019-03-26 14:11:33', ''),
(588, 'siro_2001@yahoo.com', 'ac36079d72ac2951c02acc2e62e8bcb2', 'Jonathon', 'Chambers', 'United States', '+15403081540', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '2', '2019-02-20', '2019-04-05', '2019-04-05', '2019-04-06 19:14:20', ''),
(589, 'abdejahmouni@gmail.comcom', '2198215738b8d54ae005fdf680e217c4', 'abdo', 'jah', 'Morocco', '+212668451696', 'uploads/client/1555689638.jpg', 'None', '0', '0', '0', '0', '0', '0', '1979-11-13', '2019-04-19', '2019-04-19', '2019-04-19 19:00:45', ''),
(590, 'hortlaks_tr_07@hotmail.com', '3973409125df55431b50a2bbe2a241ed', 'vargin', 'güney', 'Turkey', '+905383261053', 'uploads/client/1555991998.jpg', 'None', '1', '0', '1', '0', '0', '2', '0000-00-00', '2019-04-23', '2019-04-23', '2019-04-23 07:00:07', ''),
(591, 'jogralsatpu@gmail.com', 'ef4cb87f5bc6532c1a356193d8c8eedd', 'Rudi ', 'Pamuji', 'Indonesia', '+6285268037370', 'uploads/client/1556289833.jpg', 'None', '4', '0', '1', '0', '0', '1', '1994-04-06', '2019-04-26', '2019-04-26', '2019-04-26 17:43:59', ''),
(592, 'carlitokaune@gmail.com', 'f488aeab81e2647b82948aa7162dc4f2', 'Waka', 'Waka', 'Namibia', '+264812654483', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1991-06-25', '2019-04-27', '2019-04-27', '2019-04-27 06:15:14', ''),
(593, 'khaloos786@gmail.com', '6e0533ed83ff2272eca56c4cc8e83727', 'simple', 'malik', 'Pakistan', '+92+923092375759', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '0', '1975-02-05', '2019-05-13', '2019-05-13', '2019-05-14 09:20:16', ''),
(594, 'marvelant3@gmail.com', '1f54e5cf729f98223f5d41a6638b96db', 'Anton ', 'Marvel', 'United Kingdom', '+12012534', 'uploads/client/1558356484.jpg', 'match1', '2', '0', '1', '0', '0', '1', '2019-05-04', '2019-05-20', '2019-05-20', '2019-05-20 15:51:21', ''),
(595, 'test-ikyft@mail-tester.com', 'a6b0b61afa8f9316dcaa4bcb5ce72afb', 'Dmitry', 'Test', 'United States', '+1201555132', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '2019-01-15', '2019-05-20', '2019-05-20', '2019-05-20 16:35:24', ''),
(596, 'test-izdd6@mail-tester.com', 'c1a823a9a6a1b6400a6a21aaf8260160', 'Dmitry', 'Test', 'United States', '+1201555321', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '2019-02-09', '2019-05-20', '2019-05-20', '0000-00-00 00:00:00', ''),
(597, 'test-iab94@mail-tester.com', 'c1a823a9a6a1b6400a6a21aaf8260160', 'Dmitry', 'Test', 'United States', '+12015550123', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '1992-10-05', '2019-05-20', '2019-05-20', '2019-05-20 16:44:51', ''),
(598, 'ldtgekro@gmx.com', '9a97d6a19403663733643e2068550819', 'Leon', 'Kropsy', 'Estonia', '+13435454544', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '2014-02-06', '2019-05-29', '2019-05-29', '2019-05-29 14:04:32', ''),
(599, 'shanitahnamubiru89@gmail.com', '35e56e228c135fcc34adcdd17986c872', 'Namubiru', 'Shanitah', 'Uganda', '+256770647566', 'uploads/client/avatar.jpg', 'None', '1', '0', '1', '0', '0', '0', '0000-00-00', '2019-06-05', '2019-06-05', '2019-06-10 01:30:11', ''),
(600, 'sa3047041@gmail.com', 'f5cbe75965a3b58e8f090549170b9b9a', 'ชยธร', 'ห่วงเจริญ', 'Thailand', '+66890887651', 'uploads/client/1559801569.jpg', 'None', '1', '0', '0', '1', '0', '1', '0000-00-00', '2019-06-06', '2019-06-06', '2019-06-09 20:56:02', ''),
(601, 'tvann73@gmail.com', 'b4fbf341909f2fb7d20afbb065b43d72', 'Travis', 'Vann', 'United States', '+15185721132', 'uploads/client/1559876980.jpg', 'None', '0', '0', '0', '0', '0', '0', '1973-10-05', '2019-06-07', '2019-06-07', '2019-06-07 06:09:48', ''),
(602, 'masoudbeheshti@hotmail.com', 'eb852354a3ca6b470c35c6f2cb9b8f81', 'masoud', 'beh', 'Turkey', '+989127174307', 'uploads/client/1559886403.png', 'None', '1', '0', '1', '0', '0', '0', '1977-06-26', '2019-06-07', '2019-06-07', '2019-06-07 08:49:19', ''),
(603, 'Kellyvonk@yahoo.com', '460794bd57ef59aa6f0b4784eebac868', 'Kelly', 'Vonk', 'United States', '+12083058586', 'uploads/client/avatar.jpg', 'match1', '2', '0', '1', '0', '0', '1', '1980-01-04', '2019-06-08', '2019-06-08', '2019-06-09 00:41:12', ''),
(604, 'umer_hasnain_fareed@outlook.com', '478740914719f653fb77944f1221c3fc', 'Umer', 'Fareed ', 'United Kingdom', '+447784149744', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-06-10', '2019-06-10', '2019-06-10 21:11:29', ''),
(605, 'umer_fareed1@outlook.com', '478740914719f653fb77944f1221c3fc', 'Umer ', 'Fareed ', 'United Kingdom', '+447784149744', 'uploads/client/avatar.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-06-10', '2019-06-10', '2019-06-10 21:21:23', ''),
(606, 'danidivitos@gmail.com', '9bbfe175dd406a0876f6cf4f90f7ba14', 'Dani', 'Divitos', 'Canada', '+16139179003', 'uploads/client/1560731765.jpg', 'None', '0', '0', '0', '0', '0', '0', '1978-06-02', '2019-06-17', '2019-06-17', '2019-06-17 03:37:50', ''),
(607, 'lekfkjho@gmx.com', '01f85624987710203d64fadc9481ed4d', 'Leon', 'Kropsy', 'Estonia', '+372+3723435454544', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1992-06-11', '2019-06-17', '2019-06-17', '0000-00-00 00:00:00', ''),
(608, 'fvbjdjklfvb@gmail.com', '01f85624987710203d64fadc9481ed4d', 'Leon', 'Kropsy', 'Estonia', '+372+3723435454544', 'uploads/client/avatar.jpg', 'None', '4', '0', '0', '0', '0', '0', '1991-06-12', '2019-06-17', '2019-06-17', '2019-06-17 12:48:07', ''),
(609, 'Robert Willettmetro@gmail.com', '4d7f17596d33596c6ef153bec47ee22f', 'Robert', 'Willett ', 'United States', '+14125454380', 'uploads/client/1561110739.jpg', 'None', '0', '0', '0', '0', '0', '0', '0000-00-00', '2019-06-21', '2019-06-21', '2019-06-21 12:52:26', '');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_foto`
--

CREATE TABLE `clients_foto` (
  `foto_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `status` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clients_foto`
--

INSERT INTO `clients_foto` (`foto_id`, `user_id`, `foto`, `status`) VALUES
(3, 500, 'uploads/client/foto/1549887198.jpg', ''),
(5, 501, 'uploads/client/foto/1549888284.jpg', ''),
(7, 501, 'uploads/client/foto/1549888849.jpg', ''),
(8, 534, 'uploads/client/foto/1549892164.jpg', ''),
(9, 548, 'uploads/client/foto/1553382747.jpg', ''),
(10, 587, 'uploads/client/foto/1553602863.jpeg', ''),
(11, 591, 'uploads/client/foto/1556291132.jpg', ''),
(12, 591, 'uploads/client/foto/1556291149.jpg', ''),
(13, 600, 'uploads/client/foto/1559801414.jpg', '');

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
(47, 500, 2312, 'Olesya', '8', '2018-11-04', '0'),
(48, 500, 2306, 'Tatiana', '0', '2018-11-06', '2'),
(50, 518, 2304, 'Alla ', '1', '2018-11-12', '0'),
(52, 525, 2310, 'Tatyana', '0', '2018-11-29', '2'),
(61, 501, 2313, 'Olya', '1', '2019-01-14', '0'),
(62, 501, 2311, 'Svetlana', '4', '2019-01-15', '0'),
(63, 500, 2321, 'Diana', '3', '2019-01-15', '0'),
(64, 501, 2312, 'Olesya', '1', '2019-01-15', '0'),
(65, 572, 2320, 'Ludmila', '1', '2019-02-01', '0'),
(66, 572, 2304, 'Alla ', '1', '2019-02-01', '0'),
(67, 575, 2307, 'Natalia', '0', '2019-02-09', '2'),
(68, 534, 2300, 'Alyona', '3', '2019-02-14', '0'),
(69, 0, 2314, 'Victoria', '0', '2019-02-19', '2'),
(70, 587, 2305, 'Olesya ', '0', '2019-03-26', '2'),
(71, 590, 2305, 'Olesya ', '0', '2019-04-23', '2'),
(72, 590, 2307, 'Natalia', '0', '2019-04-23', '2'),
(73, 590, 2311, 'Svetlana', '0', '2019-04-23', '2'),
(74, 590, 2317, 'Marina', '0', '2019-04-23', '2'),
(75, 590, 2320, 'Ludmila', '0', '2019-04-23', '2'),
(76, 590, 2329, 'Anna', '0', '2019-04-23', '2'),
(77, 590, 2330, 'Anna', '0', '2019-04-23', '2'),
(78, 590, 2331, 'Yulia', '0', '2019-04-23', '2');

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
(6, '500', '52', '21', '2', '17', '32'),
(7, '501', '9', '4', '2', '1', '1'),
(8, '502', '3', '0', '0', '0', '0'),
(10, '504', '3', '0', '0', '0', '0'),
(11, '505', '3', '0', '0', '0', '0'),
(12, '506', '3', '0', '0', '0', '0'),
(13, '507', '3', '0', '0', '0', '0'),
(14, '508', '8', '2', '0', '0', '0'),
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
(45, '539', '3', '0', '0', '0', '0'),
(46, '540', '3', '0', '0', '0', '0'),
(47, '541', '3', '0', '0', '0', '0'),
(48, '542', '3', '0', '0', '0', '0'),
(49, '543', '3', '0', '0', '0', '0'),
(50, '544', '3', '0', '0', '0', '0'),
(51, '545', '3', '0', '0', '0', '0'),
(52, '546', '3', '0', '0', '0', '0'),
(53, '547', '3', '0', '0', '0', '0'),
(54, '548', '3', '0', '0', '0', '0'),
(55, '549', '3', '0', '0', '0', '0'),
(56, '550', '3', '0', '0', '0', '0'),
(57, '551', '3', '0', '0', '0', '0'),
(58, '552', '3', '0', '0', '0', '0'),
(59, '553', '3', '0', '0', '0', '0'),
(60, '554', '3', '0', '0', '0', '0'),
(61, '555', '3', '0', '0', '0', '0'),
(62, '556', '3', '0', '0', '0', '0'),
(63, '557', '3', '0', '0', '0', '0'),
(64, '558', '3', '0', '0', '0', '0'),
(65, '559', '3', '0', '0', '0', '0'),
(66, '560', '3', '0', '0', '0', '0'),
(67, '561', '3', '0', '0', '0', '0'),
(68, '562', '3', '0', '0', '0', '0'),
(69, '563', '3', '0', '0', '0', '0'),
(70, '564', '3', '0', '0', '0', '0'),
(71, '565', '3', '0', '0', '0', '0'),
(72, '566', '3', '0', '0', '0', '0'),
(73, '567', '3', '0', '0', '0', '0'),
(74, '568', '3', '0', '0', '0', '0'),
(75, '569', '3', '0', '0', '0', '0'),
(76, '570', '3', '0', '0', '0', '0'),
(77, '571', '3', '0', '0', '0', '0'),
(78, '572', '3', '0', '0', '0', '0'),
(79, '573', '3', '0', '0', '0', '0'),
(80, '574', '3', '0', '0', '0', '0'),
(81, '575', '3', '0', '0', '0', '0'),
(82, '576', '3', '0', '0', '0', '0'),
(83, '577', '3', '0', '0', '0', '0'),
(84, '578', '3', '0', '0', '0', '0'),
(85, '579', '2', '0', '0', '0', '0'),
(86, '580', '3', '0', '0', '0', '0'),
(87, '581', '3', '0', '0', '0', '0'),
(88, '582', '3', '0', '0', '0', '0'),
(89, '583', '3', '0', '0', '0', '0'),
(90, '584', '3', '0', '0', '0', '0'),
(91, '585', '3', '0', '0', '0', '0'),
(92, '586', '3', '0', '0', '0', '0'),
(93, '587', '3', '0', '0', '0', '0'),
(94, '588', '3', '0', '0', '0', '0'),
(95, '589', '3', '0', '0', '0', '0'),
(96, '590', '3', '0', '0', '0', '0'),
(97, '591', '3', '0', '0', '0', '0'),
(98, '592', '3', '0', '0', '0', '0'),
(99, '593', '3', '0', '0', '0', '0'),
(100, '594', '3', '0', '0', '0', '0'),
(101, '595', '3', '0', '0', '0', '0'),
(102, '596', '3', '0', '0', '0', '0'),
(103, '597', '3', '0', '0', '0', '0'),
(104, '598', '3', '0', '0', '0', '0'),
(105, '599', '3', '0', '0', '0', '0'),
(106, '600', '3', '0', '0', '0', '0'),
(107, '601', '3', '0', '0', '0', '0'),
(108, '602', '3', '0', '0', '0', '0'),
(109, '603', '3', '0', '0', '0', '0'),
(110, '604', '3', '0', '0', '0', '0'),
(111, '605', '3', '0', '0', '0', '0'),
(112, '606', '3', '0', '0', '0', '0'),
(113, '607', '3', '0', '0', '0', '0'),
(114, '608', '3', '0', '0', '0', '0'),
(115, '609', '3', '0', '0', '0', '0');

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
(139, '2019-01-10 04:38:47', 'beadle1023@icloud.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(140, '2019-01-12 02:43:19', 'jsuchovsky87@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(141, '2019-01-12 16:56:38', 'jsuchovsky87@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(142, '2019-01-12 19:38:13', 'javy32049@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(143, '2019-01-12 22:37:32', 'McIntoshStereo@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(144, '2019-01-12 22:38:46', 'McIntoshStereo@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(145, '2019-01-13 02:51:39', 'diurnodiez@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(146, '2019-01-13 02:52:56', 'diurnodiez@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(147, '2019-01-13 12:16:33', 'McIntoshStereo@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(148, '2019-01-13 17:52:53', 'poppawolf13@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(149, '2019-01-13 22:38:37', 'thomasbchiki@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(150, '2019-01-13 22:39:00', 'thomasbchiki@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(151, '2019-01-14 03:13:19', 'steph.vanaelst@Gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(152, '2019-01-14 04:23:01', 'jamesdmullens@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(153, '2019-01-14 04:24:38', 'jamesdmullens@yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(154, '2019-01-14 11:01:00', 'jamesdmullens@yahoo.com', 'You were provided with a personal matchmaker', 'OK'),
(155, '2019-01-14 11:08:49', 'afrikanez78@gmail.com', 'Remember password', 'OK'),
(156, '2019-01-14 11:11:59', 'afrikanez78@gmail.com', 'New recommendation on BridgeMatchmaker.com', 'OK'),
(157, '2019-01-14 11:24:38', 'steph.vanaelst@Gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(158, '2019-01-14 11:26:15', 'jamesdmullens@yahoo.com', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'OK'),
(159, '2019-01-14 11:42:59', 'thomasbchiki@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(160, '2019-01-14 11:50:10', 'poppawolf13@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(161, '2019-01-14 12:17:33', 'noreply@domainnetcenter.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(162, '2019-01-14 12:19:03', 'nickoprayudha1995@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(163, '2019-01-14 12:19:32', 'tiwarimayank820@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(164, '2019-01-14 12:24:07', 'dolsher404@gemil.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(165, '2019-01-14 12:28:23', 'nicci26041989@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(166, '2019-01-14 12:28:56', 'bibeklimb12@yahoo.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(167, '2019-01-15 03:02:21', 'chem.master3@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(168, '2019-01-15 03:03:46', 'chem.master3@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(169, '2019-01-15 12:33:48', 'chem.master3@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(170, '2019-01-15 13:38:58', 'steph.vanaelst@Gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(171, '2019-01-15 13:39:29', 'poppawolf13@yahoo.com', 'You were provided with a personal matchmaker', 'OK'),
(172, '2019-01-15 13:39:47', 'jsuchovsky87@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(173, '2019-01-15 13:41:28', 'beadle1023@icloud.com', 'You were provided with a personal matchmaker', 'OK'),
(174, '2019-01-15 13:42:07', 'bhekimangisi07@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(175, '2019-01-15 13:42:22', 'krishnaoli1968@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(176, '2019-01-15 13:42:46', 'majid197881@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(177, '2019-01-15 13:43:26', 'jcristobal.dsv@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(178, '2019-01-15 14:44:09', 'afrikanez78@gmail.com', 'New girl recommendation on BridgeMatchmaker.com', 'OK'),
(179, '2019-01-15 14:45:09', 'dmitry.plohotnyuk@gmail.com', 'New girl recommendation on BridgeMatchmaker.com', 'OK'),
(180, '2019-01-15 15:17:30', 'afrikanez78@gmail.com', 'New girl recommendation on BridgeMatchmaker.com', 'OK'),
(181, '2019-01-15 17:58:00', 'daveyboy201860@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(182, '2019-01-15 19:46:36', 'majid197881@gmail.com', 'Remember password', 'OK'),
(183, '2019-01-16 13:46:11', 'daveyboy201860@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(184, '2019-01-16 18:38:46', 'diurnodiez@gmail.com', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'OK'),
(185, '2019-01-17 13:55:20', 'daveyboy201860@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(186, '2019-01-17 14:00:02', 'McIntoshStereo@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(187, '2019-01-17 15:33:08', 'lokis94.dl@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(188, '2019-01-17 19:16:13', 'lokis94.dl@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(189, '2019-01-17 19:42:15', 'naganath72@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(190, '2019-01-17 19:46:23', 'naganath72@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(191, '2019-01-18 10:29:30', 'naganath72@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(192, '2019-01-18 13:25:53', 'thomasbchiki@gmail.com', 'You received a reply from matchmaker in your cabinet', 'OK'),
(193, '2019-01-21 04:14:52', 'jer7191979@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(194, '2019-01-21 22:12:18', 'jer7191979@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(195, '2019-01-22 02:29:30', 'billyamacneil|@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(196, '2019-01-22 04:05:42', 'johnsylliboy@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(197, '2019-01-22 04:10:27', 'johnsylliboy@hotmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(198, '2019-01-22 04:10:28', 'johnsylliboy@hotmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(199, '2019-01-22 05:56:08', 'abowman67@msn.com', 'Welcome BridgeMatchmaker website', 'OK'),
(200, '2019-01-22 13:33:57', 'billyamacneil|@hotmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(201, '2019-01-22 13:35:46', 'abowman67@msn.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(202, '2019-01-22 20:50:12', 'bishop88keys@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(203, '2019-01-23 01:24:53', 'mikepowell7345@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(204, '2019-01-23 11:48:36', 'bishop88keys@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(205, '2019-01-23 12:02:30', 'chem.master3@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(206, '2019-01-23 17:49:27', 'mikeossa55@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(207, '2019-01-23 19:59:01', 'saratoga1662@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(208, '2019-01-23 19:59:31', 'saratoga1662@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(209, '2019-01-23 23:18:21', 'stevenriverala@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(210, '2019-01-24 05:25:24', 'alhansen4109@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(211, '2019-01-24 07:57:05', 'abdallahhemmat@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(212, '2019-01-24 11:01:46', 'a.managerbridgeoflove@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(213, '2019-01-24 11:02:21', 'a.managerbridgeoflove@yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(214, '2019-01-24 11:06:41', 'a.managerbridgeoflove@yahoo.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(215, '2019-01-24 11:55:18', 'a.managerbridgeoflovee@yahoo.com', 'Welcome BridgeMatchmaker website', 'ERROR'),
(216, '2019-01-24 12:04:28', 'mikeossa55@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'ERROR'),
(217, '2019-01-24 12:10:04', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'ERROR'),
(218, '2019-01-24 12:12:35', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'ERROR'),
(219, '2019-01-24 12:15:51', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'ERROR'),
(220, '2019-01-24 12:19:17', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'ERROR'),
(221, '2019-01-24 12:20:32', 'a.managerbridgeoflovee@yahoo.com', 'Successful registration on BridgeMatchMaker', 'ERROR'),
(222, '2019-01-24 12:24:09', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(223, '2019-01-24 12:33:13', 'stevenriverala@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(224, '2019-01-24 12:33:27', 'tomaxtony67@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(225, '2019-01-24 12:34:41', 'tomaxtony67@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(226, '2019-01-24 12:36:03', 'alhansen4109@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(227, '2019-01-24 12:50:09', 'tomaxtony67@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(228, '2019-01-24 13:04:42', 'a.managerbridgeoflovee@yahoo.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(229, '2019-01-24 13:45:38', 'abdallahhemmat@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(230, '2019-01-24 13:46:19', 'jer7191979@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(231, '2019-01-24 15:31:37', 'alihughes@live.co.uk', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(232, '2019-01-24 20:34:02', 'daveyboy201860@gmail.com', 'Remember password', 'OK'),
(233, '2019-01-24 23:55:43', 'steve9221@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(234, '2019-01-25 01:05:12', 'rfrfisher1@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(235, '2019-01-25 01:43:17', 'ar894721@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(236, '2019-01-25 04:01:43', 'jpoir1094@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(237, '2019-01-25 07:56:53', 'shoedog0314@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(238, '2019-01-25 12:45:44', 'steve9221@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(239, '2019-01-25 12:47:30', 'rfrfisher1@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(240, '2019-01-25 12:48:56', 'ar894721@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(241, '2019-01-25 12:50:14', 'jpoir1094@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(242, '2019-01-25 12:51:53', 'shoedog0314@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(243, '2019-01-28 15:02:39', 'email@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(244, '2019-01-28 15:15:56', 'mikeossa55@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(245, '2019-01-29 13:36:58', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(246, '2019-01-30 17:31:24', 'yihogopici@heximail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(247, '2019-01-30 17:32:01', 'yihogopici@heximail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(248, '2019-01-30 17:41:55', 'daveyboy201860@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(249, '2019-01-30 21:34:15', 'daveyboy201860@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(250, '2019-01-31 14:33:37', 'afrikanez78@gmail.com', 'Bridgematchmaker.com - Your profile haven\'t attracted any ladies', 'OK'),
(251, '2019-01-31 14:37:04', 'afrikanez78@gmail.com', 'Bridgematchmaker.com - Your profile haven\'t attracted any ladies', 'OK'),
(252, '2019-01-31 15:07:03', 'daveyboy201860@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(253, '2019-02-01 00:25:52', 'shoedog0314@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(254, '2019-02-01 00:26:12', 'jpoir1094@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(255, '2019-02-01 00:26:30', 'ar894721@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(256, '2019-02-01 00:26:57', 'rfrfisher1@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(257, '2019-02-01 00:27:21', 'steve9221@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(258, '2019-02-01 12:14:18', 'antoniolimonchelli@yandex.ua', 'Welcome BridgeMatchmaker website', 'OK'),
(259, '2019-02-01 12:14:53', 'antoniolimonchelli@yandex.ua', 'Successful registration on BridgeMatchMaker', 'OK'),
(260, '2019-02-01 12:20:16', 'markitigran52@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(261, '2019-02-01 12:23:03', 'markitigran52@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(262, '2019-02-01 12:31:13', 'dmitry.plohotnyuk@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(263, '2019-02-01 12:58:52', 'markitigran52@gmail.com', 'New girl recommendation on BridgeMatchmaker.com', 'OK'),
(264, '2019-02-01 12:59:18', 'markitigran52@gmail.com', 'New girl recommendation on BridgeMatchmaker.com', 'OK'),
(265, '2019-02-05 11:41:06', 'marcusgblack1024@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(266, '2019-02-05 22:43:50', 'marcusgblack1024@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(267, '2019-02-06 12:49:35', 'julianawhitehouse21@gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(268, '2019-02-06 13:46:35', 'alihughes@live.co.uk', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(269, '2019-02-06 13:46:46', 'billtown0@gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(270, '2019-02-06 14:29:27', 'jsuchovsky87@gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(271, '2019-02-06 14:29:38', 'McIntoshStereo@gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(272, '2019-02-06 15:14:49', 'poppawolf13@yahoo.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(273, '2019-02-06 15:15:05', 'steph.vanaelst@Gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(274, '2019-02-07 10:41:33', 'saratoga1662@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(275, '2019-02-07 10:54:42', 'jamesdmullens@yahoo.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(276, '2019-02-07 10:55:01', 'chem.master3@gmail.com', 'Bridgematchmaker.com - How to login on the site', 'OK'),
(277, '2019-02-07 11:55:49', 'billyamacneil|@hotmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(278, '2019-02-08 19:02:08', 'nickrihan@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(279, '2019-02-08 21:07:33', 'nickrihan@hotmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(280, '2019-02-08 21:25:25', 'daveyboy201860@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(281, '2019-02-09 23:34:09', 'offworldinc@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(282, '2019-02-09 23:36:22', 'offworldinc@hotmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(283, '2019-02-10 07:06:25', 'ashot1982@yandex.ru', 'Welcome BridgeMatchmaker website', 'OK'),
(284, '2019-02-10 07:07:31', 'ashot1982@yandex.ru', 'Successful registration on BridgeMatchMaker', 'OK'),
(285, '2019-02-10 14:18:22', 'evega@online.no', 'Welcome BridgeMatchmaker website', 'OK'),
(286, '2019-02-10 16:25:29', 'evega@online.no', 'Successful registration on BridgeMatchMaker', 'OK'),
(287, '2019-02-10 19:05:41', 'offworldinc@hotmail.com', 'You were provided with a personal matchmaker', 'OK'),
(288, '2019-02-10 19:07:15', 'nickrihan@hotmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(289, '2019-02-10 19:10:45', 'evega@online.no', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'OK'),
(290, '2019-02-10 22:16:35', 'bogdancoca@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(291, '2019-02-11 09:43:32', 'bogdancoca@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(292, '2019-02-11 14:58:09', 'evega@online.no', 'You were provided with a personal matchmaker', 'OK'),
(293, '2019-02-11 14:58:46', 'evega@online.no', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(294, '2019-02-12 09:51:11', 'bogdancoca@yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(295, '2019-02-12 12:05:36', 'ashot1982@yandex.ru', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(296, '2019-02-13 11:41:38', 'dmitry.plohotnyuk@gmail.com', 'Test', 'OK'),
(297, '2019-02-13 12:15:55', 'bogdancoca@yahoo.com', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(298, '2019-02-13 12:31:11', 'evega@online.no', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(299, '2019-02-13 13:29:06', 'ashot1982@yandex.ru', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(300, '2019-02-13 13:47:11', 'offworldinc@hotmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(301, '2019-02-13 14:05:47', 'nickrihan@hotmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(302, '2019-02-13 14:06:38', 'marcusgblack1024@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(303, '2019-02-13 14:26:32', 'shoedog0314@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(304, '2019-02-13 14:59:04', 'ar894721@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(305, '2019-02-13 14:59:35', 'rfrfisher1@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(306, '2019-02-13 15:00:08', 'alhansen4109@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(307, '2019-02-13 15:09:24', 'stevenriverala@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(308, '2019-02-13 15:25:51', 'saratoga1662@gmail.com', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(309, '2019-02-13 15:26:23', 'mikeossa55@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(310, '2019-02-13 15:27:01', 'bishop88keys@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(311, '2019-02-13 15:27:29', 'abowman67@msn.com', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(312, '2019-02-13 15:38:16', 'jer7191979@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(313, '2019-02-13 15:38:45', 'naganath72@gmail.com', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(314, '2019-02-13 15:39:43', 'daveyboy201860@gmail.com', ' Happy Valentine\\\'s Day with BridgeMatchmaker', 'OK'),
(315, '2019-02-13 15:47:20', 'chem.master3@gmail.com', 'BridgeMatchmaker - Happy Valentine\\\'s Day!', 'OK'),
(316, '2019-02-13 16:12:41', 'mich.butt@Yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(317, '2019-02-14 10:07:56', 'mich.butt@Yahoo.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(318, '2019-02-14 14:36:44', 'Jdavid03899@gmail.com', 'New girl recommendation on BridgeMatchmaker.com', 'OK'),
(319, '2019-02-15 16:42:55', 'tomaxtony67@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(320, '2019-02-15 16:50:31', 'andrewarivers@gmail.com', 'Serious relationships with slavic girls | Bridgematchmaker.com', 'OK'),
(321, '2019-02-15 17:08:23', 'charlene14000@hotmail.com', '10000 profiles of lonely ladies in our database', 'OK'),
(322, '2019-02-18 16:16:21', 'mich.butt@Yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(323, '2019-02-18 16:18:40', 'mich.butt@Yahoo.com', 'You were provided with a personal matchmaker', 'OK'),
(324, '2019-02-18 16:20:56', 'mich.butt@Yahoo.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(325, '2019-02-19 10:02:17', 'savenkova.marina@gmail.com', 'Заказ #37. Вы получили письмо от клиента (ID:579) сайта BridgeMatchMaker', 'OK'),
(326, '2019-02-20 11:37:19', 'lekro@gmx.com', 'Welcome BridgeMatchmaker website', 'OK'),
(327, '2019-02-20 11:39:40', 'lekro@gmx.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(328, '2019-02-21 15:18:23', 'mich.butt@yahoo.com', 'Order #37. You\'ve got a letter from a lady (ID:2317) BridgeMatchmaker website', 'OK'),
(329, '2019-02-26 02:57:00', 'reinaldorosa054@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(330, '2019-02-26 05:54:43', 'novapappy@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(331, '2019-02-26 05:55:13', 'novapappy@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(332, '2019-02-26 13:36:43', 'novapappy@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(333, '2019-02-27 09:31:07', 'lekro@gmx.com', 'You were provided with a personal matchmaker', 'OK'),
(334, '2019-02-27 17:25:50', 'ladlarajpoot3811366@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(335, '2019-02-28 10:33:25', 'patbray00@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(336, '2019-02-28 10:52:56', 'patbray00@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(337, '2019-02-28 11:36:48', 'patbray00@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(338, '2019-02-28 16:02:26', 'patbray00@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(339, '2019-03-04 10:04:16', 'novapappy@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(340, '2019-03-20 03:05:17', 'peacemanlove78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(341, '2019-03-20 03:10:03', 'peacemanlove78@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(342, '2019-03-20 14:45:00', 'peacemanlove78@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(343, '2019-03-23 07:36:18', 'dalibormarkovic234@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(344, '2019-03-23 07:37:17', 'dalibormarkovic234@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(345, '2019-03-26 10:30:43', 'xsidey@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(346, '2019-03-26 12:31:05', 'ladlarajpoot3811366@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(347, '2019-03-26 12:31:27', 'reinaldorosa054@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(348, '2019-03-26 12:37:26', 'dalibormarkovic234@gmail.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(349, '2019-03-26 12:38:43', 'xsidey@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(350, '2019-03-26 12:41:47', 'xsidey@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(351, '2019-03-26 12:50:52', 'reinaldorosa054@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(352, '2019-03-26 13:02:30', 'xsidey@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(353, '2019-03-26 13:04:49', 'xsidey@gmail.com', 'Remember password', 'OK'),
(354, '2019-03-26 13:04:50', 'xsidey@gmail.com', 'Remember password', 'OK'),
(355, '2019-03-26 13:15:11', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 587)', 'OK'),
(356, '2019-03-26 13:15:12', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 587)', 'OK'),
(357, '2019-03-26 13:29:18', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 587)', 'OK'),
(358, '2019-03-26 13:32:48', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. Клиент (ID - 587)', 'OK'),
(359, '2019-04-03 14:21:23', 'tevaras@gmail.com', 'Bridgemachmaker', 'OK'),
(360, '2019-04-03 14:22:16', 'solomb1@gmail.com', 'bridgematchmaker com', 'OK'),
(361, '2019-04-03 14:23:17', 'enderfenris@yahoo.es', 'Good day. We inform you BridgeMatchmaker', 'OK'),
(362, '2019-04-05 23:02:13', 'siro_2001@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(363, '2019-04-05 23:03:02', 'siro_2001@yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(364, '2019-04-08 11:39:27', 'dalibormarkovic234@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(365, '2019-04-19 19:00:38', 'abdejahmouni@gmail.comcom', 'Welcome BridgeMatchmaker website', 'OK'),
(366, '2019-04-23 06:59:58', 'hortlaks_tr_07@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(367, '2019-04-23 07:00:39', 'hortlaks_tr_07@hotmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(368, '2019-04-24 10:05:12', 'abdejahmouni@gmail.comcom', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(369, '2019-04-26 17:43:53', 'jogralsatpu@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(370, '2019-04-26 17:44:47', 'jogralsatpu@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(371, '2019-04-27 06:15:00', 'carlitokaune@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(372, '2019-04-30 10:17:00', 'jogralsatpu@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(373, '2019-04-30 10:17:27', 'jogralsatpu@gmail.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(374, '2019-04-30 11:24:35', 'hortlaks_tr_07@hotmail.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', 'OK'),
(375, '2019-04-30 11:26:49', 'carlitokaune@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(376, '2019-05-13 11:33:02', 'carlitokaune@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(377, '2019-05-13 11:33:20', 'jogralsatpu@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(378, '2019-05-13 13:43:04', 'khaloos786@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(379, '2019-05-13 13:44:02', 'khaloos786@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(380, '2019-05-13 14:02:53', 'khaloos786@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(381, '2019-05-14 08:30:55', 'khaloos786@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(382, '2019-05-14 12:46:57', 'abdejahmouni@gmail.comcom', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(383, '2019-05-20 15:48:04', 'marvelant3@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(384, '2019-05-20 15:48:58', 'marvelant3@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(385, '2019-05-20 15:49:54', 'marvelant3@gmail.com', 'You were provided with a personal matchmaker', 'OK'),
(386, '2019-05-20 16:26:06', 'dmitry.plohotnyuk@gmail.com', 'Test', 'OK'),
(387, '2019-05-20 16:35:19', 'test-ikyft@mail-tester.com', 'Welcome BridgeMatchmaker website', 'OK'),
(388, '2019-05-20 16:35:21', 'test-ikyft@mail-tester.com', 'Welcome BridgeMatchmaker website', 'ERROR'),
(389, '2019-05-20 16:41:26', 'test-izdd6@mail-tester.com', 'Welcome BridgeMatchmaker website', 'OK'),
(390, '2019-05-20 16:41:27', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'ERROR'),
(391, '2019-05-20 16:44:45', 'test-iab94@mail-tester.com', 'Welcome BridgeMatchmaker website', 'OK'),
(392, '2019-05-20 16:44:47', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(393, '2019-05-29 14:04:24', 'ldtgekro@gmx.com', 'Welcome BridgeMatchmaker website', 'OK'),
(394, '2019-05-29 14:04:27', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(395, '2019-05-29 15:22:28', 'ldtgekro@gmx.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(396, '2019-06-05 22:09:32', 'shanitahnamubiru89@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(397, '2019-06-05 22:09:33', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(398, '2019-06-05 22:12:27', 'shanitahnamubiru89@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(399, '2019-06-06 09:02:38', 'sa3047041@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(400, '2019-06-06 09:02:40', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(401, '2019-06-06 09:03:32', 'sa3047041@gmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(402, '2019-06-06 10:54:44', 'fedynchik78@gmail.com', 'Remember password', 'OK'),
(403, '2019-06-06 11:10:44', 'fedynchik78@gmail.com', 'Remember password', 'OK'),
(404, '2019-06-06 11:58:22', 'shanitahnamubiru89@gmail.com', 'Bridgematchmaker.com - Make a choice of service settings of your profile', 'OK'),
(405, '2019-06-06 12:13:48', 'shanitahnamubiru89@gmail.com', 'BridgeMatchmaker - activation of your profile', 'OK'),
(406, '2019-06-06 14:33:02', 'sa3047041@gmail.com', 'BridgeMatchmaker - activation of your profile', 'OK'),
(407, '2019-06-07 06:09:40', 'tvann73@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(408, '2019-06-07 06:09:42', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(409, '2019-06-07 08:46:45', 'masoudbeheshti@hotmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(410, '2019-06-07 08:46:46', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(411, '2019-06-07 08:47:18', 'masoudbeheshti@hotmail.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(412, '2019-06-07 10:42:34', 'tvann73@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(413, '2019-06-08 22:14:07', 'Kellyvonk@yahoo.com', 'Welcome BridgeMatchmaker website', 'OK'),
(414, '2019-06-08 22:14:09', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(415, '2019-06-09 00:40:36', 'Kellyvonk@yahoo.com', 'Successful registration on BridgeMatchMaker', 'OK'),
(416, '2019-06-10 20:36:39', 'umer_hasnain_fareed@outlook.com', 'Welcome BridgeMatchmaker website', 'OK'),
(417, '2019-06-10 20:36:41', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(418, '2019-06-10 21:11:09', 'support@bridgematchmaker.com', 'Сообщение \'Contact US\'. (Публичная часть)', 'OK'),
(419, '2019-06-10 21:21:15', 'umer_fareed1@outlook.com', 'Welcome BridgeMatchmaker website', 'OK'),
(420, '2019-06-10 21:21:16', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(421, '2019-06-12 13:17:46', 'Kellyvonk@yahoo.com', 'Bridgematchmaker.com - We ask you to make the last step.', 'OK'),
(422, '2019-06-12 13:17:57', 'Kellyvonk@yahoo.com', 'You were provided with a personal matchmaker', 'OK'),
(423, '2019-06-17 03:36:05', 'danidivitos@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(424, '2019-06-17 03:36:07', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(425, '2019-06-17 10:25:26', 'danidivitos@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'OK'),
(426, '2019-06-17 12:47:11', 'lekfkjho@gmx.com', 'Welcome BridgeMatchmaker website', 'OK'),
(427, '2019-06-17 12:47:13', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(428, '2019-06-17 12:48:00', 'fvbjdjklfvb@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(429, '2019-06-17 12:48:02', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(430, '2019-06-21 12:52:20', 'Robert Willettmetro@gmail.com', 'Welcome BridgeMatchmaker website', 'ERROR'),
(431, '2019-06-21 12:52:20', 'afrikanez78@gmail.com', 'Welcome BridgeMatchmaker website', 'OK'),
(432, '2019-06-24 12:45:52', 'Robert Willettmetro@gmail.com', 'Bridgematchmaker.com - Please verify your e-mail', 'ERROR'),
(433, '2019-07-03 10:06:22', 'fvbjdjklfvb@gmail.com', 'You account was suspended on BridgeMatchMaker', 'OK'),
(434, '2019-07-03 10:06:39', 'lekfkjho@gmx.com', 'You account was suspended on BridgeMatchMaker', 'OK');

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
(1, 'auto_email_0', 'Отправка письма клиенту после регистрации', 'Welcome BridgeMatchmaker website', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                       Thank you for registration on the site BridgeMatchmaker.com. \r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       To continue press on the button below or enter the activation code on the bridgematchmaker.com\r\n                    </p>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{activation_link}\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_activate-profile.png\"></a> \r\n						 <br><br>\r\n						<b>Your activation code: {activation_key}</b>   \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
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
(11, 'auto_email_10', 'Отправка письма клиенту при добавлении девушки в рекомендацию', 'New girl recommendation on BridgeMatchmaker.com', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 720px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width: 300px!important;\r\n            height: auto!important;\r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#ffffff\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#ffffff\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #ffffff;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#ffffff\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n                        <tbody><tr>\r\n                            <td>\r\n                                <table width=\"350px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\">\r\n                                    <tbody><tr align=\"center\" background=\"http://bridgematchmaker.com/upload_img/foto_all/matchmaker_recommendation_background.jpg\" width=\"auto\" height=\"250px\">\r\n                                        <td align=\"center\"><br>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 26px; font-weight: 500; font-size: 29px; color: #383838; background: rgba(12,12,12,0.1); padding: 5px 0; margin: 0;\">\r\n                        {girl_first_name} ID:{girl_id}\r\n                                            </p>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 20px; font-weight: 500; font-size: 20px; color: #383838; padding: 0; margin: 0;\">\r\n                        {girl_country}\r\n                                            </p><br>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        Go to Matchmaker\'s Recommendation to meet this lady!\r\n                                            </p>\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        <a href=\"https://bridgematchmaker.com/member/gallery.php?view=recomendation\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/matchmaker_button.png\" alt=\"\"></a>\r\n                                            </p><br>\r\n                                        </td>\r\n                                    </tr>\r\n                                </tbody></table>\r\n                                <table width=\"250px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\">\r\n                                    <tbody><tr width=\"auto\" heigt=\"250px\">\r\n                                        <td align=\"center\">\r\n                                            <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        <img src=\"{girl_avatar}\" alt=\"\" class=\"image\" width=\"250px\" height=\"250px\">\r\n                    </p>\r\n                                        </td>\r\n                                    </tr>\r\n                                </tbody></table>\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        You have a new recommendation on BridgeMatchmaker.com  <br>\r\nYour personal matchmaker has added you a new lady and she is waiting for your attention.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n\r\n\r\n\r\n\r\n', '0'),
(12, 'auto_email_11', 'Письмо уходит клиенту когда мачмекер отвечает в чате', 'You received a reply from matchmaker in your cabinet', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">­</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear {first_name}!\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        You have a reply from your personal matchmaker {match_name} about your request. You can read it in your cabinet by <a href=\"https://bridgematchmaker.com/member/chat_matchmaker.php\" target=\"_blank\" style=\"color: #3a6fbe;\">this link</a>.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0'),
(13, 'hand_email_01', 'Получит клиент в статусе новый когда долго не верифицирует свое мыло', 'Bridgematchmaker.com - Please verify your e-mail', '\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                       You received this letter because few days ago you have registered a profile on Bridgematchmaker.com website. But you haven\'t verified your  address.We cannot do that by our own and if you will not confirm  your address by clicking a button or entering a code on activation page, You can move to next step immediately after completing this action right now.\r\n						Thank you for choosing <a href=\"https://bridgematchmaker.com\" style=\"color: #3a6fbe;\">Bridgematchmaker.com</a>  real dating service					   \r\n                    </p>				 \r\n					<p></p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                       \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n          \r\n            <tr align=\"center\">\r\n                <td>   \r\n					<br><br>\r\n					<hr>\r\n					<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n						<br>\r\n						<a href=\"{activation_link} \"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/button_activate-profile.png\"></a> \r\n						 <br><br>\r\n						<b>Your activation code: {activation_key}</b>   \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/content2_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1'),
(14, 'hand_email_02', 'Получит клиент в статусе Активный который не сделал выбор сервиса', 'Bridgematchmaker.com - Make a choice of service settings of your profile', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Thank you for full registration on the <a href=\"https://bridgematchmaker.com\" style=\"color: #3a6fbe;\"> Bridgematchmaker.com </a> website. You have filled information about yourself and it is time to do a last setting of your cabinet to start searching relationships</p>						\r\n                </td>\r\n            </tr>		\r\n            <tr align=\"left\">\r\n                <td height=\"25px\" bgcolor=\"#fff\"><br>\r\n                <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n						According to our website\'s policy, we leave a choice to you:<br>				\r\n                    \r\n						1) You can refuse from help of our of professional matchmaker and get an access to the full database of ladies profiles\r\n					<br>\r\n						2) Leave search to us and get a full help from professional matchmaker who will find a candidate for you, provide an individual work with you, will help you to organize communication in skype and real date. \r\n					<br><br>\r\n                    </p>						\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        For making a choice please follow the link</p>	<br>					\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        <a href=\"https://bridgematchmaker.com/login.php\"><img src=\"https://www.bridge-of-love.com/data/files/images/site/article/201811111857076441.png\"></a></p>	<br>					\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/steps_1.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"left\">\r\n                <td height=\"25px\" bgcolor=\"#fff\"> <br>  \r\n				<p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n				1) Enter login and password that you made during registration\r\n				<br>\r\n				2) Click on \"Select service\" menu\r\n				<br>\r\n				3) Read and choose one of the options that you find fitting.\r\n				<br>\r\n				Confirm your choice with a button  <br>Any of your choice can be canceled in same menu option in your cabinet. </p><br>\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1'),
(15, 'hand_email_03', 'Получит клиент в статусе Активный который выбрал bridge-of-love.com', 'Bridgematchmaker.com - Thank you for your choice. You can use Bridge of Love service', '\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                    According to your settings you were provided an access and profile on Bridge of Love website. To enter and begin using a profile first you need to follow the link	\r\n					</p><p>	\r\n						<a href=\"https://www.bridge-of-love.com/login.html\"><img src=\"https://bridgematchmaker.com/upload_img/email/201811111913442425.png\"></a>\r\n					</p>						\r\n                </td>\r\n            </tr>		\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">\r\n						Enter your e-mail: {email} and password -  125D52.					\r\n                    <p>\r\n						You can always  go back to your cabinet on <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br> and change these settings\r\n					</p>\r\n						Thank you for your choice 	\r\n 					\r\n					<p>\r\n                    </p>						\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                  \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1'),
(16, 'hand_email_04', 'Получит клиент в статусе Верифицированный когда он долгое время не заполняет Анкету 2', 'Bridgematchmaker.com - We ask you to make the last step.', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n	</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Open Sans, Arial, Tahoma, sans-serif; line-height: 22px; font-weight: bold; font-size: 24px; color: #484848; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Thank you for registration and fill in the profile on our website. A personal matchmaker have been assigned to you  and contact with you at the nearest time. We ask you to make the last step. You need to fill in information about the lady you are looking for  that your matchmaker can start the search of ladies that match your criteria.<br><br>\r\n For this you need to login to your cabinet. In the window you see after login click the button START NOW. Next you will need to fill in all the fields that are marked with an asterisk. <br>\r\nYour matchmaker immediatelly will start the search after you fill in this information and contact with you.<br>\r\nThank you for your attention. </p>						\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/make_your_profile_complete.png\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:admin@bridgematchmaker.com}\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\n						To be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>', '1');
INSERT INTO `email_templates` (`id`, `name`, `description`, `subject`, `content`, `type`) VALUES
(17, 'hand_email_05', 'Получает клиент в статуе Верифицированный когда мачмейкер не смог найти ему пару по его критериям', 'Bridgematchmaker.com - Your profile haven\'t attracted any ladies', '\r\n\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <!--<td width=\"127px\" bgcolor=\"#f4f4f4\">&shy;</td>-->\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                            <!--<td width=\"128px\" bgcolor=\"#f4f4f4\">&shy;</td>-->\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"left\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear client, at this moment there are not ladies on the website who would fit your search criteria. There could be a number of reasons: <br><br>\r\n1) You didn\'t filled your profile with enough information. Please follow <a href=\"https://bridgematchmaker.com/member/profile_about_me.php\" target=\"_blank\" style=\"color: #3a6fbe;\">this link</a> and add more information.\r\n                    </p><br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        2) Your account status is not allowing you to  launch a full presentation of your  profile among ladies on the website. We recommend you to use a paid subscription to raise your chances and get guaranteed matches for your profiles. You can  get subscription    \r\n <a href=\"https://bridgematchmaker.com/member/temp_msg.php\" target=\"_blank\" style=\"color: #3a6fbe;\">here</a>.\r\n                    </p> <br>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Your personal matchmaker still continues to search candidates for you. <br>\r\nThank you for being with us. \r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"https://bridgematchmaker.com/\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n\r\n\r\n', '1'),
(18, 'hand_email_06', 'Получает клиент в любом статусе если у него возникли проблемы с входом', 'Bridgematchmaker.com - How to login on the site', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 720px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width: 300px!important;\r\n            height: auto!important;\r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#ffffff\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#ffffff\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #ffffff;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 19px; color: #696969; padding: 0; margin: 0;\">\r\n                        Dear client!\r\n                    </p>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        You recieve this notification as you are client of the website <a href=\"https://bridgematchmaker.com\" target=\"_blank\" style=\"color: #3a6fbe;\">bridgematchmaker.com</a>. <br>According to our data you have problems with login on our website. Remind you to login on the site you can follow by <a href=\"https://bridgematchmaker.com/login.php\" target=\"_blank\" style=\"color: #3a6fbe;\">this link</a>    and enter your login  {email}  and password you indicated at registration. <br>If you recieve an error <strong>\"Invalid E-Mail or password\"</strong> please use the procedure password recovery by the link <a href=\"https://bridgematchmaker.com/forgot.php\" target=\"_blank\" style=\"color: #3a6fbe;\">Forgot password</a>.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>                    \r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 16px; color: #696969; padding: 0; margin: 0;\">\r\n                        If you have any questions - the <a href=\"mailto:support@mail.bridge-of-love.ladesk.com\" style=\"color: #3a6fbe;\">support</a> team will be happy to help you.\r\n                    </p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgematchmaker/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/BridgeMatchmak1\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UCap_nmYRTPcs0XfRlPQh-Ig/featured?view_as=subscriber\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/bridgematchmaker/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '1'),
(19, 'auto_email_12', 'Письмо получает администратор, когда регистрируется новый клиент', 'На сайте Bridgematchmaker.com зарегистрировался новый клиент', '\r\n\r\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Playfair+Display\" rel=\"stylesheet\">\r\n    <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:600\" rel=\"stylesheet\">\r\n    <style type=\"text/css\">\r\n    @media only screen and (max-width: 480px) {\r\n        table { \r\n            width:300px !important;\r\n        }\r\n        img[class=\"image\"] {\r\n           width:300px !important; \r\n        }\r\n    }\r\n</style>\r\n\r\n\r\n	<table width=\"600px\" style=\"background-color: #fff;\" bgcolor=\"#fff\" align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n		<tbody align=\"center\">\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <table align=\"center\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"600px\" bgcolor=\"#f4f4f4\">\r\n                        <tbody><tr align=\"center\">\r\n                            <td>\r\n                                <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/logo_BM.png\" alt=\"\" style=\"display: block; background-color: #f4f4f4;\" width=\"auto\">\r\n                            </td>\r\n                        </tr>\r\n                    </tbody></table>\r\n                    \r\n                </td>   \r\n            </tr>    \r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\"></td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\">\r\n                <td>\r\n                    <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 18px; color: #696969; padding: 0; margin: 0;\">\r\n                        На Сайте Bridgematchmaker.com зарегистрировался новый клиент /// ID- {user_id} // Имя- {first_name} /// Страна - {country}</p>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#fff\">   \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td>\r\n                    <img class=\"image\" src=\"http://bridgematchmaker.com/upload_img/foto_all/footer_BM.jpg\" alt=\"\" style=\"display: block;\" width=\"auto\">\r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <p style=\"font-family: Arial, Tahoma, sans-serif; line-height: 24px; font-weight: 500; font-size: 12px; color: #696969; padding: 0; margin: 0;\">\r\n                        Message sent from <a href=\"Bridgematchmaker.com\" style=\"color: #3a6fbe; text-decoration: none;\">Bridgematchmaker.com</a><br>\r\nTo be unsubscribed simply click on the link below: <a href=\"{unsubscribe_link}\" target=\"_blanck\" style=\"color: #3a6fbe;\">Unsubscribe</a>\r\n                    </p> \r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n            <tr align=\"center\" bgcolor=\"#f4f4f4\">\r\n                <td>\r\n                   <a href=\"https://www.facebook.com/bridgeoflove.info/\" title=\"FaceBook\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/facebook.png\"></a>&nbsp;\r\n                    <a href=\"https://twitter.com/Bridgeoflovecom\" title=\"Twitter\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/twitter.png\"></a>&nbsp;\r\n                    <a href=\"https://www.youtube.com/channel/UClkbq2IiIfBVWdkQSjSYG0g\" title=\"YouTube\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/youtube.png\"></a>&nbsp;\r\n                    <a href=\"https://www.instagram.com/gallery.bridgeoflovecom/\" title=\"Instagram\" target=\"_blank\"><img src=\"http://bridgematchmaker.com/upload_img/foto_all/instagram.png\"></a>\r\n                </td>\r\n            </tr>\r\n            <tr>\r\n                <td height=\"25px\" bgcolor=\"#f4f4f4\">   \r\n                </td>\r\n            </tr>\r\n		</tbody>\r\n	</table>\r\n\r\n', '0');

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
  `relation_foto` text NOT NULL,
  `present_property` text NOT NULL,
  `present_description` text NOT NULL,
  `present_foto` text NOT NULL,
  `description` text NOT NULL,
  `type` varchar(8) NOT NULL,
  `match_add` varchar(64) NOT NULL,
  `match_add_login` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `feeds`
--

INSERT INTO `feeds` (`id`, `girl_id`, `foto`, `foto_description`, `video`, `video_description`, `day_status`, `day_rating`, `day_description`, `waiting_foto`, `waiting_description`, `question_girl`, `question_match`, `question_rating`, `relation_description`, `relation_man`, `relation_girl`, `relation_foto`, `present_property`, `present_description`, `present_foto`, `description`, `type`, `match_add`, `match_add_login`, `date_add`, `status`) VALUES
(11, 2314, '', '', 'https://www.youtube.com/embed/YjSUSPzJiAU', 'In the upcoming YouTube Red Originals drama series IMPULSE, 16-year-old Henry Coles is an outsider in her new town of Reston, New York. With a major chip on her shoulder and no friends, she remains withdrawn and isolated, but everything changes when a traumatic encounter with a classmate triggers something deep within Henry—  unleashing a power she cannot control.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2', 'Fedir Moskor', 'fedynchik78@gmail.com', '2019-02-20 08:26:21', ''),
(5, 2314, 'uploads/feed/1550565746.jpg', 'Do you like red on me? ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'Alexandra Berezyanskaya', 'match1', '2019-02-19 10:42:26', ''),
(6, 2330, '', '', '', '', 'Positive day', '10', 'Sunny day in winder means good mood for me', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', 'Alexandra Berezyanskaya', 'match1', '2019-02-19 10:45:13', ''),
(7, 2324, '', '', '', '', '', '', '', 'uploads/feed/1550568283.png', 'I\'m waiting to meet a positive man here  who can share his feelings with me. Let\'s have fun together!', '', '', '', '', '', '', '', '', '', '', '', '4', 'Alexandra Berezyanskaya', 'match1', '2019-02-19 11:24:43', ''),
(8, 2327, '', '', '', '', '', '', '', '', '', 'How Do I Make A Long-Distance Relationship Work?', 'I think it’s a matter of making sure you’re communicating a lot. Our service allow you to communicate with your partner not only through letters, but have Video conference. So, communication is really importnat to avoid feeling of loneliness. When you feel that you are ready for real date, we\'ll be glad to help you to organize your meeting ', '8', '', '', '', '', '', '', '', '', '5', 'Alexandra Berezyanskaya', 'match1', '2019-02-19 11:34:51', ''),
(9, 2327, '', '', '', '', '', '', '', '', '', '', '', '', 'He must be smart, sympathetic, For me, age is not important! Love knows no age, I think it very important to me the inner beauty!', 'And do you believe that age difference can make relation even more deeper?', 'I think it very important to me the inner beauty!', 'uploads/feed/1550569107.png', '', '', '', '', '6', 'Alexandra Berezyanskaya', 'match1', '2019-02-19 11:38:28', ''),
(10, 2334, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Sexy and beautiful, smart and creative but a single women.', 'This is very cute ladywho is looking for a man whocan care about her. ', 'uploads/feed/1550569393.jpg', '', '7', 'Alexandra Berezyanskaya', 'match1', '2019-02-19 11:43:13', ''),
(12, 2327, 'uploads/feed/1554292138.jpg', 'Wanna have fun with me and enjoy first spring rays?;)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', 'Alexandra Berezyanskaya', 'match1', '2019-04-03 14:48:58', ''),
(13, 2335, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Elena is   very creative and talented woman!  She knows how to enjoy simple things in life, like art and care about her health. ', 'If you decide to meet closer with this lady, she will surround you with her care and love, you will feel how this lady tender and honest.  ', 'uploads/feed/1554292890.jpg', '', '7', 'Alexandra Berezyanskaya', 'match1', '2019-04-03 15:01:31', ''),
(14, 2336, '', '', '', '', 'Positive day', '8', 'Today I have a great day and enjoy warm and sunny day in the park near my home. And what are you doing? ', '', '', '', '', '', '', '', '', '', '', '', '', '', '3', 'Alexandra Berezyanskaya', 'match1', '2019-04-05 14:46:13', ''),
(15, 2337, '', '', '', '', '', '', '', '', '', '', '', '', 'I am also ready to be with him in good times and in difficult times, too. I want to make my life full and meaningful. ', 'And how important it is for you to find your life partner. ', 'It\'s really importnat, as I think in pair, we acquire not only a new experience, but also opens those parts of the soul that cannot be opened when you are alone.', 'uploads/feed/1554727558.jpg', '', '', '', '', '6', 'Alexandra Berezyanskaya', 'match1', '2019-04-08 15:45:58', ''),
(16, 2335, '', '', '', '', '', '', '', '', '', 'Who does the matching? How does communication between client and matchmaker take place?', 'A matchmaker is someone who you will be working very closely with. Matchmakers provide more than just introductions to potential partners. They work with you in a number of different ways to help you learn more about yourself and what you are looking for. Some matchmakers provide dating coaching, image consulting, mock date scenarios, and wing man/woman services. ', '10', '', '', '', '', '', '', '', '', '5', 'Alexandra Berezyanskaya', 'match1', '2019-04-11 13:13:25', ''),
(17, 2310, '', '', '', '', '', '', '', 'uploads/feed/1555589193.jpg', 'All I seek is real feelngs. If you ready to open your heart, open different sides of your soul and meet closer, I\'m here for you. \r\nI came here to experince completetely new feelings. Do you have something for me?;) ', '', '', '', '', '', '', '', '', '', '', '', '4', 'Alexandra Berezyanskaya', 'match1', '2019-04-18 15:06:34', '');

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
(2305, 'Olesya ', 'Shundel', 'Ukraine', 'Nikolaev', '1981-02-24', 'uploads/girls/1540199576.jpg', 'https://www.youtube.com/embed/nuOZNdY1AuY', '1', 1, 'match1', '', '', 'ukrainian', 'Christian General', '175', '56', 'Athletic', 'Green', 'Brown', 'High school', 'Don\'t know', 'never marige', 'Russian', 'Ukrainian , Russian, English', 'no', 'I am an ordinary woman. I try to look good and also not to forget about life priorities being important for a man, in particular to create a family', ' A sense of humour is important for both partners. I like to laugh heartily and think that evenings should be filled with laugh and cheerful mood. I do not care about age difference.', 'Cosmetologist', 'Cosmetologist', 'Europe, US', 'Europe', 'Like many people, I like walks in the open air and to participate in promoting the city greening.', 'Having tried diving one day, no one can stop me from doing this. If there is such an opportunity, I do scuba diving and study the underwater world.', 'Doesn\'t matter', 'Ukraine or Europ', '', 'I like to laugh heartily and think that evenings should be filled with laugh and cheerful mood. I do not care about age difference.', '', '', '', '', '46-55', 'Doesn\'t matter', '5 feet 0 inches (152.40 cm)', '134 lbs (60.8 kg)', 'Black', 'Black', 'italian', 'Christian General', 'Doesn\'t matter', 'modesty, honesty, independence', 'anger, insolence', 'Doesn\'t matter', '', '+3809963365510', '+3809963365510', 'tasira0255@gmail.com', '+3809963365510', 'Twitter ', '10 00 -20 00 ', 'I am always ready to communicate with a man who is ready to be a gentleman in video chat and respects me. I prefer to start chatting when my friend is in the video chat', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2306, 'Tatiana', 'Nekrasova', 'Ukraine', 'Nikolaev', '1962-12-19', 'uploads/girls/1540201922.jpg', '', '0', 1, 'match1', '', 'I prefer to spend my first date in my city. But also I like traveling and will be glad to visit foreign country together with my man.', 'ukrainian', 'Orthodox', '163', '63', 'Thin', 'Green', 'Ligh-brown', 'University Degree', 'Negative', 'Widow', 'Russian', ' Ukrainian', '2 kids', 'I\'m sociable and versatile woman. I\'m not scandalous and think communication help to decide all problems', 'Hope to create family', 'Librarianship', 'I work in trading field', 'UAE, Italy, Turkey, Egypt, Poland, Slovakia', 'China, France', 'I like to spend time with my family and friends. I like visit my children. I\'m active  and don\'t like to sit on one place.', 'I have many hobbies,I like to sing, to draw, to play mini tennis abd swim; go to the cinema and theatre.', 'Doesn\'t matter', 'Pakistan', 'My morning starts from little cup of coffee', 'My desire is very simple, I want to love and to be loved', 'I have two dogs, cat and fish. As you can see I like pets', '', '', '', '56-65', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', '156 lbs (70.8 kg)', 'Grey-blue', 'Ligh-brown', 'australian', 'Chatholic', 'Doesn\'t matter', 'My man  should be versatile, not greedy, that we can look at one side and find compromize with each other', 'lie and betreial', 'Doesn\'t matter', 'I\'d like my man can be active just like me. ', 'I\'d like that my man understand me and appreciate my family, value not only my outer beauty, but estimate my inner world. ', '+380503944500', 'tnekrasova62@gmail.com', 'yes', 'facebook', 'during the day', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2307, 'Natalia', 'Levitskaya', 'Ukraine', 'Dnepr', '1982-02-20', 'uploads/girls/1540205514.JPG', 'https://www.youtube.com/embed/9U8bUZXeAEk', '1', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '162', '50', 'Athletic', 'Blue', 'Blond', 'University Degree', 'Negative', 'Divorced', 'Russian', 'English - beginner', 'No', 'I am tender and romantic woman with good imagination how relationship should be.', 'love, marriage', 'Doctor', 'Doctor', 'Turkey, Dubai', 'West Europe, US', 'I am sure that all is in our hands... We decide what our life will be like, and I decided that my life will be long, happy and of course with big-big LOVE! And here I am looking for this love - is your goal the same? Each of us is worth of love, but only those who does his best and works on relationship - can be happy in love...', 'My main hobbies are healthy lifestyle, traveling (I have been to few countries abroad, ice-skating.', 'Yes', 'Iran, Iraq', 'I\'m early bird. The breakfast already can be on the table when my man wakes up', 'I\'m happpily married woman. ', 'I don\'t have', 'don\'t know', 'to find my destiny', 'I\'m already on way to him', '46-55', 'Doesn\'t matter', '5 feet 7 inches (170.18 cm)', '156 lbs (70.8 kg)', 'Black', 'Brown', 'british', 'Chatholic', 'Doesn\'t matter', 'For me ideal relationship based on love, respect and mutual understanding.', 'greedy', 'Yes', 'active', 'I want to be happy, to know that I always have suppirt from my man and that our life will be bright and we have mutual love. ', '0634508971', 'natali_pretty@gmail.com', 'yes', 'facebook', '16.00', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2308, 'Tamara ', 'volkova', 'Ukraine', 'Kremenchuk', '1995-05-07', 'uploads/girls/1540203508.jpg', 'https://www.youtube.com/embed/l4PI1YlRLA8', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '167', '49', 'Athletic', 'Brown', 'Ligh-brown', 'Collage', 'Negative', 'never marige', 'Russian', 'Ukrainian , Russian, English', 'no', 'I try to follow my appearance and health. This helps me to sport and healthy eating. I will prepare tasty and healthy food for you', 'Happiness for me - is to love each other, feel each other, care for each other)', '', 'Nail master', 'Europe, US', 'any', '', ' I like music, dancing and outdoor activities', 'Doesn\'t matter', '', '', 'Happiness for me - is to love each other, feel each other', '', '', '', '', '36-45', 'Doesn\'t matter', '4 feet 5 inches (134.62 cm)', '100 lbs (45.4 kg)', 'Black', 'Black', 'austrian', 'Christian General', 'Doesn\'t matter', 'modesty, honesty, independence', 'When Have you been happy', 'Doesn\'t matter', '', '-', '+380916659921', 'arde41055@gmail.com', '+380966659921', 'Facebook ', '', 'always be honest', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2309, 'Valentina', 'Zaporozhchenko', 'Ukraine', 'Zaporozhye', '1997-02-14', 'uploads/girls/1540207812.jpg', 'https://www.youtube.com/embed/MKhxnnvsnAk', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '172', '54', 'Athletic', 'Green', 'Ligh-brown', 'University Degree', 'Negative', 'Never Married', 'Russian', 'Ukrainian; English - beginner', 'No', ' I am a sensitive creative person - my imagination helps me to perceive the world. I am optimistic, cheerful, passionate and loyal.', 'create loving relation', 'Tourism manager', 'Tourism manager', '', 'West Europe; Australia, China', 'The words that describe me best are: kind, feminine, intelligent, passionate, romantic. I am trustworthy and genuine. I love to be creative and learn new things. ', 'I like sport, cooking, going to theatres, cinemas and different concerts. I enjoy reading, like different type of books. Do you like reading?', 'Yes', 'Don\'t know', 'My each morning is perfect', 'I can tell you many interesting things about me, if you interested, please ask me! =)', 'I am living alone, really like pets. I have cats and dogs in parents house. ', 'I don\'t want to have a reason to forgive my man', 'I dream to find a man who will adore me', 'Who knows)))', '36-45', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', '178 lbs (80.7 kg)', 'Grey-blue', 'Blond', 'luxembourger', 'Chatholic', 'Doesn\'t matter', 'I wish to meet a nice man, positive, honest and smart. ', 'stubborn', 'Yes', 'I don\'t want to have a man who always lay on the sofa. So, of  course active', 'Also you should be passionate and persistent, sometimes I can also be persistent, still I am not a little girl, I have natural needs, physical and emotional. Mutual feelings to each other, magnetism', '+380933988500', 'Valentine14@gmail.com', 'yes', 'facebook', '', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2310, 'Tatyana', 'Moroz', 'Ukraine', 'Nikolaev', '1997-12-29', 'uploads/girls/1540300557.jpg', '', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '185', '52', 'Thin', 'Blue', 'Ligh-brown', 'Collage', 'Negative', 'Never Married', 'Russian', 'Ukrainian', 'No', 'I\'m very open, positive and passionate lady', 'To find my Mr. Perfect', 'financier', 'financier', 'I', 'West Europe', 'I am very serious in my intentions and I am not going to wear some mask while our communication.', 'First of all, I like sports. I like outdoor activities and I have a habit of going to the gym. Also, I really like to dance! I bring joy to try something new!', 'Doesn\'t matter', '', 'When I\'m n the arms of my beloved', 'happily married', 'I don\'t have them', 'betrayal', 'To find you here;)', 'don\'t know', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Yes', ' If we feel the connection between us, we need to be sure to meet and feel the chemistry of love!', 'pettiness', 'Doesn\'t matter', 'active', 'I think the &quot;ideal man&quot; does not exist for me! I\'m also not a perfect woman. I\'m just looking for real feelings. Just let us know each other better.', '+380983579521', 'tattie888@gmail.com', 'yes', 'yes', '', 'doesn\'t matter', 'quiet girl', 'stability', 'I\'m sleepy in the morning', 'yes', 'all', 'yes, of course', 'rose', 'eyes', 'no', 'half full', 'sometimes even black', 'yes', 'yes', 'desire to develop in life', 'positive', 'communication with family', 'try something new', 'not very much', 'to be happy', 'don\'t know', 'at home', 'speak', 'of course', 'to move', 'morning', 'yes', 'to be at home and look outside the window', 'depends from the gift', 'yes', 'just come tome me. ', '0000-00-00'),
(2311, 'Svetlana', 'Momot', 'Ukraine', 'Kharkiv', '1984-07-18', 'uploads/girls/1540397296.jpg', 'https://www.youtube.com/embed/-2VejzNTZME', '1', 1, 'viktoria2544', '', '', 'ukrainian', 'Christian General', '175', '64', 'Thin', 'Blue', 'Blond', 'University Degree', 'I do not smoke and no drugs. I may drink a little bit alcohol on special occasion. Romantic dinner with wine sounds good for  me.  I expected the same attitude to smoking, alcohol and drugs from my partner.', 'Divorced', 'Russian', 'Russian, Ukrainian and learning English', 'I have  daughter, her birth year is  2010', ' I am  positive, open, calm, loyal, trustful and family oriented. I am very caring towards my neatest and dearest. ', 'I would like to find a man who I may create strong loving  family with. I am interested in a relationship that  end up with a marriage. If you are looking for fun,  pen pal or distant relationship, please, don\'t contact me.', 'accountant', 'a manager in a bank', 'Sri Lanka, Egypt', 'USA, Canada, UK', 'I am family oriented. I believe happy family help us overcome all life\'s down.  In our country people get married when they are too young. I think it is not  good tradition. When I got married for the first time I was young and  for sure  not experienced in  relationship.  I did not know how treat my man and how  keep peace in my family.   And as a result we ended up with divorce.  Now I know for sure that I don\'t want to be right I want to be happy. I know  how treat my man and I know what I want from life.  I am ready for new start and for new loving relationship.', 'I adore being outdoors. Being near the water or in a forest is the ideal weekend for me. I like swimming and suntanning. For the vacation I keen on traveling if I have possibility.  I am curious about  new countries, new people, new food and new impression.  I like cooking and  you may check whether I am good at it.   I am romantic and like romantic dinners and walks. ', 'To have or not to have kids depends on both partner. Sure it will be nice to have a common kid but if for some reason it is impossible I will take it easy. ', '', 'I am an early bird. Perfect morning to me will be a morning when I open my eyes and first I see  is my beloved man next to me and then   the sun is shining behind the windows. ', 'I want to have stable  loving family.  I am  tender woman with heart that fool of love that I want to give  to my husband.  I want to spend time together, share our  lives and small things. ', 'I love pets', 'I can\'t forgive betrayal and violence (physical and emotional)  and  in a family. All other things we may discuss  over and understand each other. ', ' I  see no limitation in means when  it comes to  looking for my beloved. ', 'I am looking for love and  did not met it yet.', '35-55', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for a Caucasian man', 'Doesn\'t matter', 'Doesn\'t matter', 'I want you to be reliable, loyal, intelligent  and easy going. I always keep my promises and waiting it from my beloved. I am loyal and know for sure that  I can\'t forgive betrayal', 'aggression and falseness', 'Doesn\'t matter', ' I love both kind of rest.  I like sightseeing and may walk a lot  and I  adore being on the beach and do nothing. ', 'I would love to meet a man who are serious in his search and ready  for a family.  Stability in all   life spheres  is very important to me.', '380500721202', 'dt_kt@meta.ua', 'Viber', 'no', ' any days  from 10 am till 1 pm', 'Skype is a good option to see each other. It may be kind of  our first date. As for me I think the most important to meet each other in reality. ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2312, 'Olesya', 'Muntyan', 'Ukraine', 'Kharkov', '1995-11-20', 'uploads/girls/1540373864.jpg', 'https://www.youtube.com/embed/iGfRXxZmnmQ', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '157', '48', 'Sportive', 'Grey', 'Brown', 'Collage', 'Negative', 'Never Married', 'Russian', ' Ukrainian', 'No', 'I really appreciate the truth , I will not deceive my love. I\'m also passionate and loving', 'My goal is a real relationship I\'m not here for games , if you didn\'t come here to play I am waiting for you', 'Nurse', 'Nurse', 'I haven\'t been abroad yet', 'Greece, Spane. I like warm countries', 'Small things make me happy. Hug, kiss, smile, hold hands. t\'s hard to talk about myself but I can say that I\'m a girl who is waiting for love, regardless of my age I know how to love I want to give my man all the way ', 'I love books , the book for me is a way to escape from reality, something like a gate to other worlds. ', 'Doesn\'t matter', '', 'I like weekeends', 'I\'m dreaming of a happy loving family.I want to give all my care, love and affection to people who are close to me ', 'I don\'t have', 'don\'t know', 'To find new and serious relation', 'don\'t know', '36-45', 'United States', '5 feet 6 inches (167.64 cm)', '134 lbs (60.8 kg)', 'Grey-blue', 'Doesn\'t matter', 'Doesn\'t matter', 'Chatholic', 'Doesn\'t matter', 'He should be intelligent, funny , honest, romantic, passionate and tender ', 'laziness', 'Yes', 'sometimes active, sometimes passive', 'For me family comes first !!', '+380503543545', 'olesya123@gmail.com', 'yes', 'yes', '16.00', 'Let\'s drink coffee together', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2313, 'Olya', 'Tkachenko', 'Ukraine', 'Kiev', '1996-01-18', 'uploads/girls/1540377017.jpg', '', '0', 1, 'match1', '', '', 'ukrainian', 'Orthodox', '173', '57', 'Athletic', 'Blue', 'Blond', 'Collage', 'Negative', 'Never Married', 'Russian', 'English', 'No', 'I can start with a fact I\'m really simple and easy-going lady. ', 'I want to make my future happy', 'Student', 'Photographer', 'Egypt, France', 'Canada, US', 'I really like some unexpected surprises and bright emotions! Of course, I have some friends and love to spend time with them.', 'I would like to see the world and to feel the beauty of our Earth! Also I adore dancing and having fun with friends', 'Doesn\'t matter', '', 'I\'m early bird', 'I imagine my future life in bright coolors, in the circle of my family and beloveed man', 'I like cats', 'Don\'t like jealousy and lie. ', 'Who said that we have limits in our search!', 'Maybe because we live in different countries and soon we\'ll meet each other', '46-55', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', '181 lbs (82.1 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I wish to meet a nice man, positive, honest and smart. ', 'jealousy', 'Yes', 'Of course active', 'I\\\'m looking for a man. Yes, just for a man, but it looks like not every man understand how to be a REAL man.', '+380669878987', 'olga_tkachenko@gmail.com', 'yes', 'yes', '16.00', 'Hope our communication can make our relation deeper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2314, 'Victoria', 'Romanenko', 'Ukraine', 'Kharkiv', '1987-04-05', 'uploads/girls/1540378362.jpg', 'https://www.youtube.com/embed/iOAFAir8c8A', '0', 1, 'match1', '', '', 'ukrainian', 'Atheist', '165', '50', 'Thin', 'Grey-blue', 'Brown', 'University Degree', 'Negative', 'Never Married', 'Russian', 'I\'d like to teach English', 'No', 'I am a cute, cheerful , harmonious , sensual and romantic girl! ', 'I am looking for a man to live, to work together, to build a nice house and a happy life. ', 'Music teacher', 'Music teacher', 'I haven\'t been abroad yet', 'I dream to travel with my man to the most romantic places', 'I am a woman, whose heart is full of love and positive emotions. And I want to share all that is beautiful in me, with special for me man! I am also very creative and active girl. I am sweet and gentle lady who is sometimes very emotional, but at the same time a calm understanding and forgiveness. ', 'In my life I have really a lot of hobbies! I dance in a team, I teach singing and playing the piano, guitar and accordion! Im kind of one-man band. LOL! I also sometimes create soap, I like to read books, I\\\\\\\\\\\\\\\'m very good rollerblading, this is my passion and grace. In the winter I like snowboarding. I am a sports girl. I also do massage, I have two diplomas, I do massage therapy for women and children.', 'Yes', '', 'I have so many interesting things in my life that each morning is perfect for me. ', 'If you let me, I won\'t tell this now and I can share such things about me, to the man who is really interested in me. ', 'I like animals', 'I can\'t forgive when a man want to close me in the cage and could forgive if he forget to buy flowers for my birthday;)', 'I hope communication on this site bring me strong and happy relation', 'I go to my partner at the moment', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for an honest, loyal, caring and affectionate man!', 'greedy', '', 'It\'s never mind that sometimes he prefer passive rest. But I want that we can live an active life toegther', '+380936664455', '+380936664455', 'viktory888@gmail.com', 'yes', 'yes', '', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2315, 'Diana', 'Sytnik', 'Ukraine', 'Nikolaev', '1985-06-12', 'uploads/girls/1540383962.jpg', '', '0', 0, 'svetabarsukova27', '', '', 'ukrainian', 'Christian General', '165', '57', 'Thin', 'Grey-blue', 'Red', 'Collage', 'Negative', 'divorced', 'Russian', 'Russian', 'yes', 'calm, kind, romantic, purposeful, caring!', 'meet my love of my life!', 'manager', 'shop assistant', 'Germany, France, Turkey', 'Italy, Spain, Dubai, America', 'I am a cheerful girl with a calm character! I work and bring up my son, attend various events with him, actively spend time!I am not attracted to rude people, greedy, and mercantile!', 'Reading, fitness', 'Yes', '', 'I\'m a night owl, I prefer to wallow in the morning!', 'I see my future with my beloved man, the laughter of children, a big house, with a beautiful courtyard, where a beautiful flower garden, and a caring husband!', 'positively', 'I do not forgive treason!', 'Because I think that men from another country are more decent.', 'Probably because they do not want a serious relationship and family!', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Caring, gentle, not greedy, kind and decent, had respect for the lady!', 'Greed, rudeness!', 'Doesn\'t matter', 'active', 'I would like to meet a decent man on this site who will be my friend, partner, lover, and also a good friend for my son!', '+380993406193', 'sytnikdiana85@gmail.com', '+380993406193', 'https://www.facebook.com/profile.php?id=100017211671270', 'all week', 'Диана Сытник', 'quiet girl', 'stability', 'sleepy', 'yes,  tango', 'son\'s birth', 'yes', 'rose', 'My hair', 'no', 'half full', 'usual', 'yes', 'yes', 'generosity', 'calm', 'happiness', 'spent time with my son', 'I do not depend on someone else\'s opinion', 'Give a birth to a baby', 'bake', 'home', 'I can listen and speak!', 'yes', 'have a full family and health', 'evening', 'No', 'lie under the covers', 'Every gift has some meaning!', '1 mounth ago.. I do not refresh my memories', 'Yes..', '0000-00-00'),
(2316, 'Anna', 'Gryga', 'Ukraine', 'Nikolaev', '1987-09-14', 'uploads/girls/1540395874.jpg', '', '0', 0, 'svetabarsukova27', '', '', 'ukrainian', 'Christian General', '175', '60', 'Sportive', 'Green', 'Black', 'University Degree', 'Negative', 'Single', 'Russian', 'Russian', 'No', 'Honest, responsible, purposeful, caring, cheerful, open!', 'friend and lover in one person!', 'rehabilitologist', 'masseur', 'Turkey, Czech Republic, Russia, Poland, Georgia!', 'USA', 'I lead a healthy lifestyle, watch over my body, looking for a like-minded person! I do not like lazy and aggressive people!', 'Ski, yoga, sewing!', 'Yes', '', 'Perfect morning at 12 o\'clock in the afternoon! I am an owl!', 'I want a happy family, children, and life in harmony!', 'Better than people!', 'treason and betrayal!', 'I work a lot and therefore there is not always time to get acquainted in real life!', 'The men in my country disappointed me!', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Sense of humor, responsibility, and seriousness!', 'boring men, laziness, rudeness!', 'Yes', 'active', 'I would like to meet a caring man who knows what he wants from his life, a family man, as well as male support!', '+380952078579', 'annagriega345@gmail.com', '+380952078579', 'https://www.facebook.com/anna.griga.3', 'all time', '____', 'quiet girl', 'stability', 'bad', 'No', 'All ahead!', 'Yes', 'Orchids', 'Sense of humor', 'no', 'half full', 'usual', 'Yes', 'Yes', 'Mind, respect for the woman, honesty!', 'Responsible', 'journey', 'engaged in self-development!', 'does not affect', 'adrenaline rush!', 'I bake delicious cakes!', 'My home', 'I can listen and speak!', 'yes', 'Health and wellness', 'night', 'summer warm rain', 'I enjoy it', 'fine', 'So long time ago..I forgot all..I do not want to refresh my memories!', 'Yes..', '0000-00-00'),
(2317, 'Marina', 'Savenkova', 'Ukraine', 'Kharkiv', '1992-10-05', 'uploads/girls/1542814417.jpg', 'https://www.youtube.com/embed/LFygxlE_4JE', '1', 1, 'viktoria2544', '', '', 'ukrainian', 'Orthodox', '159', '52', 'Thin', 'Green', 'Blond', 'University Degree', 'Negative', 'Never married', 'Russian', 'Russian, Ukrainian and learning English', 'no', 'I am  an easy-going  smiling girl.  I am down to earth. I am a home person. For sure I like meetings with friend and  social events  but for some occasion.   ', 'I would love to  get married and start a family.  The only reason for me to get married is to  be in love. So I am here to find my beloved man.', 'econimist', ' shop assiatant', ' Thailand', ' I want to see an ocean so any place  where I may stay on an ocean shore will be great for me. ', 'I adore skating. I love it a lot and now I  am doing that quite well after many bruises on my knees.  During the winter when  weather very often is not good for being outdoors I have my reading time.  I spend evenings with books.  I like helping  my mum to plant vegetables. My soul rests when I am somewhere  on the seashore listening to  land swell. ', ' I adore skating. I was born is a village and I love gardening.  I love reading, cooking and now I am learning English  via some Internet means. ', 'Yes', '', ' I am a  night owl. ', 'I would love to have a family that  laugh a lot and do many things together. I would love to have cozy  home with  tasty smell of homemade  food. I want to  have  children. I know that I am immature in many things so I would love to meet intelligent  man who will be example for me in many spheres.', 'I love pets  but I am afraid of dogs. At my mom home we have a dog and love it but I am  feel scared when I saw  an unknown dog.', 'Violence  is what I can\'r forgive. ', '  I may see no reason not to try international dating', 'I think it is time for me to get married.  Earlier I was too young for marriage. ', '36-45', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'A honest decent man who I will fell comfortable with and who I may be who I am with.', 'Violence', 'Doesn\'t matter', 'I prefer passive rest', ' First of all I want you to be serious in your search and intention. ', '+380507798506', 'savenkova.marina@gmail.com', 'Viber', 'no ', ' any day in the evening about 10 pm', 'I may tell you that I may be shy during the Skype. For me easier communicate  when we meet in real. It will be nice if you have questions to me during the Skype and  take initiative in conversation. ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00'),
(2318, 'Alyona', 'Alyona', 'Ukraine', 'Nikolaev', '1995-06-05', '', '', '0', 0, 'match1', 'I wish to meet  my man in a city with high towers..where in a little comfortable cafe we will drink coffee and when our eyes will meet, we will feel unusual mutual love.', 'You don\'t need to do something unusual to meet with me. You only need to come in one of the Europian style cities, like Kyiv or Lviv', 'ukrainian', 'Christian General', '172', '57', 'Sportive', 'Grey', 'Brown', 'Collage', 'Negative', 'Never Married || Некорректное заполнение поля!', 'Russian', 'Ukrainian; My English isn\'t so good and dream to improve it. ', 'No', 'I\'m positive and cheerful girl, like to meet with new people. Also I can be serious and detemined person  - Некорректное заполнение поля!', 'Hope to meet a man here, who can make my life more interesting and we can enjoy together each day of our life', 'Hair-stylist', 'Hair-stylist', 'Egypt, Poland', 'I dream to visit such romantic countries as Spane and Italy', 'If you\'d like to be a part of my life, I\'ll tell something now. Besides work, my life is my friends, who makes my life better. In life, I want to be not only beautiful woman, but affectionate wife and best friend to my man and I develop in this way;)', 'My hobbies are different. I like to stay at home and cook tasty dishes or read about beauty news. Also I like sport, city work, go to cinema and so on. I\'ll be glad if you join to me;)', 'Doesn\'t matter', '', 'I even don\'t know I\'m a night owl or an early bird. But my perfect morning is tasty breakfast with cup of coffee, favorite music in the room and in front of me smiling face of my beloved man. ', 'I see my future with my family and beloved man, that\'s why I\'m here. I want to love and to be loved ', 'I have a dog, the Beagle. His name is Lucky', 'I can\'t forgive when a man want to close me in the cage and could forgive if he forget to buy flowers for my birthday;)', 'I dream to find a man who will adore me', 'Because I want to meet a man for whom family relationships are as important as for me', '36-45', 'United States', '5 feet 9 inches (175.26 cm)', '166 lbs (75.3 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'My man  should be versatile, not greedy, that we can look at one side and find compromize with each other', 'laziness, stubbornness and greed', 'Yes', 'I don\'t mind if sometimes we can spend calm evenings at home, but it will be really boring for me if it will be all the time', '+380508996321', '+380508996321', 'email@gmail.com', '+380508996321 (Viber)', 'https://www.facebook.com/', 'Work days from 1pm till 6pm and weekends', 'I\'d like to see your smile when we can talk on Skype. ', 'I was a quiet girl', 'I choose stability in relation, but sometimes spontaneity helps to make life brighter', 'Ussually I wake up in the good mood, but sometimes I can be sleepy', 'Yes, but I need a partner. Do you know a guy who would like to dance with me?;)', '', 'Yes', 'Peonies', 'Maybe my beautiful smile attracts you the most', 'No', 'half full', 'I like humor in general, especially when a man has a good sense of humor', 'Yes, I dream to travel to exotic countries', 'I  Think after you try how I cook, you can answer this question;)', 'Desire to develop in life', 'Cheerful and open', 'communication with family', 'I\'d try something new', 'Not so much', 'To overcome his/her fear', 'Always stay young', 'At home', 'I\'ll tell you later in our communication', 'Yes. And what about you?', 'To look around', 'Morning. Do you agree?', 'Not very much, I like more  bright day', 'To be at home, to cook something tasty and spend a day together with my man. ', 'It depends what exactly I recieve', 'I like dates. Are you going to invite me on a date? ', 'I know a good cafe where make very tasty coffee. I\'ll wait for your coming;)', '0000-00-00'),
(2319, 'Olga', 'Vorobyouva', 'Ukraine', 'Nikolaev', '1974-06-04', 'uploads/girls/1542012734.png', '', '0', 0, 'svetabarsukova27', '', '', 'ukrainian', 'Christian General', '167', '50', 'Thin', 'Green', 'Black', 'University Degree', 'Negative', 'divorced', 'Russian', 'русский', 'yes', 'Kind, sympathetic, mysterious!', 'I expect to meet a man with whom we will become soul mates!', 'economist', 'Sales Manager', 'Russia, Romania, Poland, Greece, Turkey', 'Iceland', 'I am an active person, I like to learn new things, I like a pleasant pastime!', 'I love to grow plants, flowers, care for them! I love to travel!', 'Doesn\'t matter', '', 'The ideal morning for me begins at 7 am, with light jogs and aromatic coffee!', 'I would like that next to me there was a strong man’s shoulder, a big house, where children\'s laughter, harmony and mutual understanding are heard!', 'positively', 'Forgive, that I can understand, and I can not understand, respectively, I can not forgive!', 'Because this is a site all over the world and I have more trenches to find my soul mate!', 'I just left the relationship and I would not want to repeat them!', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Kind, loving, with good feelings of humor, caring and sincere in his feelings!', 'cruelty, greed!', 'Doesn\'t matter', 'active', 'For me, eye color is not so important as their look and expression!', '+380955125570', 'ovorobyouva@gmail.com', 'ovorobyouva@gmail.com', 'facebook', 'all time', 'yes', 'quiet girl', 'Spontaneity ', 'good', 'I love to dance, so I am constantly improving!YES!', 'the birth of my children', 'yes', 'roses', 'my femininity', 'no', 'half full', 'usual', 'Yes', 'Yes', 'Masculinity, independence, kindness!', 'sociable', 'Love beloved', 'dream', 'does not affect', 'make another person happy', 'dance', 'home', 'I can listen and speak!', 'yes', 'healthy', 'That time when I am with my beloved man', 'Yes..', 'I\'m sitting on the windowsill, with a cup of hot cocoa', 'I appreciate the attention, not the value of the gift', 'A few  months ago, and I would not want to recall this relationship!', 'Yes..', '0000-00-00'),
(2320, 'Ludmila', 'Sich', 'Ukraine', 'Nikolaev', '1982-12-30', 'uploads/girls/1543858139.jpg', 'https://www.youtube.com/embed/8SHZRFne3Oo', '1', 1, 'Evgeniya', '', '', 'ukrainian', 'Christian General', '163', '57', 'Sportive', 'Grey-blue', 'dark blond', 'University Degree', 'Negative', 'divorsed', 'Ukrainian', 'Ukrainian, russian', 'no', 'Speaking about myself, I want to mention that I am very open and friendly person. I never refuse my friends, when they need my help. I am considered to be the soul of any party. I like to communicate and I see that people like to speak with me as well. My friends say that I have a heart of gold and always thank me for this.', 'Nevertheless my friends are married and I keep being alone. That’s why I am here on this site. I dream about a big and wonderful wedding day.', ' psychologist', ' manager in fitness club', ' I was not in other countries', ' European countries, such as Italy, France', ' I am an interesting and open woman, always positive. I love to be the soul of the company and inspire people. I am kind and sympathetic, always help than I can. But I do not like lies and when something is said about me behind my back. It is better for me to say this directly)', 'I have a lot of hobbies, I love cooking delicious dishes, taking care of my home. I love animals very much and I have a dog that gets a lot of my attention) I am also interested in psychology, I like to read and go to the cinema.', 'Yes', '', 'I am early bird) ', ' My perfect morning is to wake up in the arms of a beloved man, then slowly get up and go make us breakfast and coffee. I love cooking and I can take on cooking breakfast every morning!', 'Love very very much.', ' I do not forgive systematic lies, violence, insults. I can forgive the lies of salvation.', ' I think this is a good site and wonderful people work here who are ready to help me in my search.', 'Because I\'m still alone)', '36-45', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', '144 lbs (65.3 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Intelligent, handsome, decent man that will make me a happy woman!', ' Rudeness, cruelty, lies.', 'Doesn\'t matter', 'Depending on the situation.', 'I need a man who can really take care of me and make this world a better and more enjoyable for me. He must understand that the current relations still need to be based on love and mutual respect, so we cannot dwell on the problems. It is better to look for ways to solve them. I love romantic man who at the same time understands that he must take care of the girl. This is very important because mutual respect and this is exactly the quality that creates relationships. I would like to build relationships in which reigned to love and understanding. Such relationships have a future and can only change for the better.', '+380975769591', 'galina8111@rambler.ru', '+380975769591', 'no', ' all weekdays afternoon.', ' Please always make calls and meetings in advance.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00');
INSERT INTO `girls` (`girl_id`, `first_name`, `last_name`, `country`, `city`, `birthday`, `foto`, `video`, `gallery_status`, `activation_status`, `login_match`, `dreams`, `meeting`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `ask1`, `ask2`, `ask3`, `ask4`, `ask5`, `ask6`, `ask7`, `ask8`, `ask9`, `ask10`, `ask11`, `ask12`, `ask13`, `ask14`, `ask15`, `ask16`, `ask17`, `ask18`, `ask19`, `ask20`, `ask21`, `ask22`, `ask23`, `ask24`, `ask25`, `ask26`, `ask27`, `ask28`, `ask29`, `ask30`, `date_add`) VALUES
(2321, 'Diana', 'Bondar', 'Ukraine', 'Kharkiv', '1995-09-23', 'uploads/girls/1546954726.jpg', '', '0', 0, 'match1', '', 'As you see I like traveling and together we can see a new country. But it will be great if the first meeting can be in Ukraine and I can show you my city', 'ukrainian', 'Christian General', '170', '57', 'Athletic', 'Hazel', 'Chestbut', 'University Degree', 'Negative', 'Never Married', 'Russian', 'English', 'No', 'Sweet, charming and cheerful girl - it\'s all about me. But I am also active, sociable and purposeful. I always know what I want and try to achieve my goals.', 'Hope to meet a man who know what family relation is and who dream about love as well as me. ', 'Music teacher', 'Music teacher', 'Turkey, Egypt, Prague', 'West Europe, USA', 'I love when I am surrounded by positive people, I am also pleased with my work. My day begins with music and ends with music. But I want my life to be connected not only with work, but also with a strong and loving family.', 'Most of all I love to sing and dream of develop  myself  in this profession. In addition, I love to travel and share positive emotions with friends. I like to meet with friends in a cafe, and in the summer to sunbathe on the sea. I will be glad if you can join me.', 'Yes', '', 'I love the early awakening and feel the aroma of delicious coffee and the kiss of a loved one. I hope you can make me happy and make my morning perfect)))', 'I consider a person without desires, an empty person. I have many desires, to create a happy family, to be successful in work, to see many interesting places. I hope I can share other wishes with you.', 'I don\'t have pets at home, but I like cats', 'I don\'t like indifference and laziness in relation', 'I think you can know more a person when you start from communication', 'Earlier I was too young for marriage. ', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for an honest, loyal, caring and affectionate man!', 'I don\'t like indifference and laziness in relation', 'Yes', 'active', 'I want that  you understand what family relation is and how to please a woman and make her happy', '+38050258852', 'Di_email@gmail.com', 'yes', 'yes', '10 pm', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-08'),
(2322, 'Rita', 'Khorosheva', 'Ukraine', 'Lvov', '1996-07-08', 'uploads/girls/1547645537.jpg', '', '0', 0, 'match1', 'I have curious dream, it\'s to write a list of dreams with my mand and make it come true together. Are you ready?;)', '', 'ukrainian', 'Christian General', '165', '50', 'Sportive', 'Blue', 'Ligh-brown', 'Collage', 'Negative', 'Never Married', 'Ukrainian', 'English - beginner', 'No', 'I have tender and kind nature. I\'m open and easy going. Each day is special for me and I\'m grateful for destiny for this', 'I tend to believe to my inner voice as it never left me and think I meet my destiny here', 'Teacher', 'I teach little kids', 'I haven\'t been abroad', 'I like warm countries', 'I find happiness in small details like kissing my beloved man, dancing under the stars without any music, eating an ice cream or just listening to a nice music.', 'Listening to music, love nature and sea', 'Yes', '', 'As you can guess my ideal morning will be to meet sunrising at the seashore', 'I hope to be a good wife for my man, that we can enjoy each day together, even if we have misunderstandings', 'I like animals', 'I get used to forgive people, believe that we show negative traits when we close from something', 'I think in modern world it\'s easy to meet online', 'I don\'t have an answer yet', '36-45', 'Doesn\'t matter', '5 feet 5 inches (165.10 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I would like to meet my best half here on this love dating site to share it with, to enjoy each other, our life and thousands of moments to make special just for each other.', 'I don\'t like when a man don\'t want to show his feelings to his woman', 'Yes', 'Sometimes active, sometimes passive. I hope we can enjoy different rest', 'It will be pleasant when he will enjoy to spend time on nature with me', '+380505564557', 'Rita_love@gmail.com', 'yes', 'yes', 'during the day', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-16'),
(2323, 'Julia', 'Philipova', 'Ukraine', 'Kiev', '1990-02-14', 'uploads/girls/1547648033.jpg', '', '0', 0, 'match1', '', 'Just write me your wish to meet and we can start to plan it;)', 'ukrainian', 'Christian General', '170', '50', 'Thin', 'Brown', 'Ligh-brown', 'University Degree', 'Negative', 'Never Married', 'Russian', 'English', 'No', 'I am an ordinary girl who enjoy her life. I always try to achieve the goal. I am a cheerful, non conflict person.', 'I hope my dreams of a happy relationship will become a reality.', 'Manager', 'deputy head in a beauty salon', '', '', 'I dream to have serious relationship! But it  does not mean that I can be only a serious person. Ilike to have fun. I can make the day bright!', 'design, photography, traveling', 'Yes', '', 'I start each day with positive through and the sun shining every day even in cloudy day. ', 'I would like to meet a man with whom every day will be happy and an unforgettable night! ', 'I have a can Gucci', 'Violence  is what I can\'t forgive. ', '', '', '26-35', 'Doesn\'t matter', '5 feet 7 inches (170.18 cm)', '166 lbs (75.3 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for meet a sincere, kind, serious man I could love.', 'greedy', 'Yes', '', 'From him I do not need wealth. I need his attention, good attitude towards me, respect, love. I like a little spontaneity in a man.', '+30663669987', 'Juli_juli14@gmail.com', 'yes', 'yes', '', 'Hope our communication can make our relation deeper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-16'),
(2324, 'Tatyana', 'Ivanchenko', 'Ukraine', 'Nikolaev', '1996-09-14', 'uploads/girls/1547717096.jpg', '', '0', 1, 'match1', 'I dream to travel on the car and enjoy beautiful landscapes. Would you like to join me in this trip?;)', 'Hey, I\'m here for real date, so wait for your invitation. Hope you like Ukraine;)', 'ukrainian', 'Christian General', '165', '50', 'Athletic', 'Hazel', 'Brown', 'University Degree', 'Negative', 'Single', 'Russian', ' I start learning English', 'No', 'It seems to me that in our time many things have lost their meaning. I can be thoughtful and like to reflect about many things. I\'m calm person and like romance in life. ', 'I am an optimist and I think that this website will help me find love.', 'Office manager', 'Office manager', '', '', 'I am a rather purposeful person, but I think that besides achieving goals, you need to enjoy life. I hope you also do not like a boring life and together we can have all the joys of this life.', 'I love to ride horses, these proud creatures that draw me like a magnet. ', 'Yes', '', 'Sometimes I like to wake up when there is silence at home and turn on old music. ', 'I dream that together with my man we create not only strong relation, but also can see in one direction, can travel together, support in reaching new heights', 'As you can see I like animals, but at the moment I don\'t have pets. ', 'I don\'t like when a man doesn\'t listen to me', '', '', '36-45', 'Doesn\'t matter', '5 feet 6 inches (167.64 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Chatholic', 'Doesn\'t matter', 'A man who will love children, will be happy from his work and will give me time for my growing personality and beauty. ', 'I can\'t be with a man who show aggerssion', '', '', 'Also I would like him to show me his feelings to me all the time because I am very affectionate woman.', '+380637894565', 'tata_iv14@gmail.com', 'yes', 'yes', '', 'Let\'s drink coffee together', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-17'),
(2325, 'Veronika', 'Kovalenko', 'Ukraine', 'Krivoy Rog', '1994-11-29', 'uploads/girls/1548159064.png', '', '0', 0, 'match1', 'I\'m dreaming to fall in love, that\'s why I\'m here', 'I\'ll be glad if you invite me on a date in my city. ', 'ukrainian', 'Christian General', '180', '56', 'Thin', 'Green', 'Brown', 'University Degree', 'Negative', 'Single', 'Russian', 'No', 'No', 'I\'m friendly and sincere person, well-educated and open-minded', 'Communicating through online dating sites provides a good chance to meet a man who will share my interests and views', 'Econimist', 'Econimist', '', 'My dream is to see ocean', 'If you&amp;rsquo;re looking for a kind and at the same time passion woman for serious relationship, it could be me.', 'Traveling, dancing', 'Doesn\'t matter', '', 'Sometimes like to wake up late and to stay in bed, but it\'s not so often', 'My desired future is to create a family with serious and loving man, we can share together our dreams, desires and goals.  ', 'I don\'t have', '', '', '', '36-45', 'United States', '6 feet 0 inches (182.88 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I appreciate such qualities as honesty and optimism, active life position and love to travels.', 'stubborn', '', 'active', 'I need an ambitious man who respects and values family ties. ', '+380934501221', 'sweetveronika@gmail.com', '+380934501221', 'yes', '', 'Hope our communication can make our relation deeper', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-17'),
(2326, 'Svetlana', 'Yakovenko', 'Ukraine', 'Kiev', '1973-06-13', 'uploads/girls/1548158805.jpg', '', '0', 0, 'match1', '', 'Hello! I invite you to visit the city of beautiful ladies and have a greate date with me))', 'ukrainian', 'Christian General', '160', '55', 'Athletic', 'Blue', 'Blond', 'University Degree', 'Negative', 'Divorced', 'Russian', 'Ukrainian', '1 child', 'I like to smile a lot and really nice when I see the smiles from people here. ', 'Hope to create family', 'Accountant', 'Now I work as shop assistant', '', '', 'My heart is full of love and positive emotions and I dream to share this with a nice man. I dream that we enoy life together ', 'I like cinema, theater, like to rest on nature', 'No', '', '', 'Ukrainian girls like me appreciate men to be a head in family.So, I want to have traditional family', '', '', '', '', '46-55', 'Italy', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Chatholic', 'Doesn\'t matter', 'You should be a real man. You should be strong, independent, smart.', 'You should not depend on any other materials or any judgments of other single women. You should not like when someone commands on you. ', 'Yes', '', 'You should be ready to get my respect and love, support of a single woman who will loves and appreciates you and only you. If everything you read you like - write me. We can do this!:)', '+380935508582', 'Swetik123@gmail.com', 'yes', 'yes', '', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-18'),
(2327, 'Ludmila', 'Vasilchenko', 'Ukraine', 'Nikolaev', '1982-10-10', 'uploads/girls/1548162167.jpg', '', '0', 1, 'match1', 'I\'d like to try many news things,to visit LA for example and to go to casino. ', '', 'ukrainian', 'Christian General', '161', '48', 'Sportive', 'Green', 'Blond', 'University Degree', 'Negative', 'Divorced', 'Russian', 'Ukrainian', '1 child', 'I am an optimist am tender and romantic, caring and kind, intelligent and educated. ', 'It must have been very interesting to communicate with him, that\'s why he must have a good sense of humor. ', 'Teacher', 'Teacher', 'Turkey', 'European countries', 'I love people who know what they want and secure their objects.', 'Cooking, sport and dance', 'No', '', 'It\'s early morning when I have time  for sport and shower', ' I love changes, to develop myself and to grow, to learn new things', 'I love animals', '', '', '', '46-55', '', '5 feet 5 inches (165.10 cm)', '178 lbs (80.7 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I\'d like to meet cheerful, joyful, curious, romantic and serious man, who love life and to live, who can rejoice over amenities of life.', 'I can\'t understand when a man doesn\'t have own life opinion.', '', '', 'He must be smart, sympathetic,   For me, age is not important! Love knows no age, I think it very important to me the inner beauty!', '+380665053366', 'seek_love@gmail.com', 'yes', 'yes', '', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-22'),
(2328, 'Irina', 'Evseenko', 'Ukraine', 'Lugansk', '1976-02-29', 'uploads/girls/1548166157.jpg', '', '0', 0, 'match1', '', 'Hello! I\'ll be glad to show you our beautiful country, Ukraine. ', 'ukrainian', 'Christian General', '171', '57', 'Athletic', 'Green', 'Brown', 'University Degree', 'Don\'t know', 'Divorced', 'Russian', 'Ukrainian', '1 child', 'You got into the unusual union of a strong woman with a vulnerable soul. Life from an early age tempered me.', 'The only thing I really lack in life. This is a true friend near, in the face of a loving man.', 'Beautician', 'Beautician', '', '', 'I am hardworking and persistent. I am ready for difficulties. I set goals and confidently go to them.But besides external strength, I have a vulnerable soul that longs to be warmed.', 'Hiking, Dancing, Watching movies, Music', 'Yes', '', '', 'We are all adults, and we understand perfectly well that ideal people do not exist.  I am looking for the perfect man for myself, with all its flaws and virtues. ', '', '', '', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Atheist', 'Doesn\'t matter', 'I\'d like to meet with easy-going and purposeful man who is ready develop in life as well as me', 'I don\'t like indifference and laziness in relation', 'Yes', 'I\'d like my man can be active just like me. ', 'I\'m not looking for an easy relationship. I\'m looking for a man, with whom we every day, step by step, will build our relationship. Only by taking steps towards each other can we be happy. Any relationship is a job! I\'m ready to work, and you?', '+380933664554', 'be_mymatch@gmail.com', 'yes', 'yes', '', 'Let\'s have fun together!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-01-22'),
(2329, 'Anna', 'Nadeevets', 'Ukraine', 'Kharkov', '1988-11-11', 'uploads/girls/1549180536.jpg', 'https://www.youtube.com/embed/yGU2oYy_2Yo', '1', 1, 'fedynchik78@gmail.com', '', '', 'ukrainian', 'Orthodox', '175', '60', 'Athletic', 'Green', 'Blond', 'Collage', 'Negative', 'Single', 'Russian', 'Ukrainian , Russian, English', '2', 'I am very active and motivated person. I like to travel and learn something new. I\\\'m fond of the history of interesting places. My hobby is music.', 'I am looking for a man who is like me) For me appearance is not of first importance, but I would like my man to be a little taller than I am. I will be happy to meet smart, well-read man who have a good sense of humor.', '', 'real estate agent', 'Europe, US', 'US', ' I love learning new things) I like cooking and  I am a real chef in my kitchen, bet I can surprise you with something very tasty! I like sports and being active, I like to dance and sing, I like to feel myself young and full of energy! ', 'I love music, art and having fun.', 'No', '', 'flowers, music and sea breeze', 'mutual understanding love and trust, remaining honest with you', 'no', 'I can forgive the mistake. but one must admit it and not repeat', 'I trust my matchmaker. He is very professional', 'my heart is silent', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Yes', 'honesty, passion, gentleman', 'pride, arrogance', 'Doesn\'t matter', 'active or passive  ', 'it should be the chemistry of relationships. Sometimes a look is sometimes a word. But the main thing is to be yourself', '+380933135355', 'afrikanez78@gmai.com', 'Viber', 'Facebook ', 'all time', 'Please do not need virtual sex.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-02-03'),
(2330, 'Anna', 'Koganovich', 'Ukraine', 'Nikopol', '1993-11-05', 'uploads/girls/1549624676.jpg', '', '1', 1, 'match1', 'One of my dreams is to dance belly dance for my man. I\'m sure it can be your dream too;)', 'I\'ll tell you later in our personal conversation', 'ukrainian', 'Christian General', '165', '49', 'Thin', 'Blue', 'Black', 'Collage', 'Negative', 'Never Married', 'Russian', 'Ukrainian', 'No', 'I am cheerful and sociable person. I like to enjoy life and meet new people.', 'I am not looking for a prince or billionaire, I simply looking for a person who will love me, respect me.', '', 'psychologist', 'Egypt', '', 'In people I value openness, honest, sincerity, respectable and sense of humor. I take a great interest in poetry, music, psychology, philosophy.', 'My passion is belly dancing, dance me to help me keep fit and in good spirits.', 'Doesn\'t matter', '', 'My perfect morning will be in your arms and doesn\'t matter, it\'s early morning or not', 'I am fragile woman, like a beautiful flower I need love and care. ', '', 'I can\'t forgive man\'s betrayal, i think it\'s the most horrible thing for me ', 'it\'s comfortable for communication and meeting nice people', 'Maybe I\'m waiting for you;)', '26-35', 'United States', '5 feet 7 inches (170.18 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I\'m looking for a man who will be honest and faithful, easy-going and sensual.', 'I don\'t like a man who cares much about his appearance', 'Doesn\'t matter', 'active', 'I need a strong man mentally and physically to protect me and to cherish me. ', '+380502301214', 'anutick12@gmail.com', 'yes', 'yes', 'during the day', 'I\'m wairing for nicee conversation', 'I was calm and cute girl', 'Spontaneity ', 'I can be sleepy sometimes, but usually I\'m cheerful and smiling in the morning', 'I know how to dance belly dance, but for such dances I need a partner first. Who knows maybe I\'ll find him here', 'when I wom belly dance competition', 'I know a little Enlish, would like to improve it', 'I like almost all flwers except lilies', '', 'No', 'Of course half full', 'I\'m positive person and i like good and positive humor', 'yes and would like to visit many countries', 'I\'m not very good in it now, but would like to  be a good cook for my man', 'when he want to go further in life and doesn\'t stop', 'Cheerful and open', 'communicate with nice and creative people ', 'spend with my family', 'it depen\'s who is this person', '', '', '', '', '', '', '', '', '', '', '', '', '2019-02-08'),
(2331, 'Yulia', 'Kravets', 'Ukraine', 'Kiev', '1989-04-10', 'uploads/girls/1549628403.jpg', '', '1', 1, 'match1', 'I have interesting dream, to take part in Festival La Tomantina', 'I\'ll be glad if you can visit Kiev for a real date with me', 'ukrainian', 'Christian General', '170', '70', 'Athletic', 'Black', 'Brown', 'University Degree', 'Negative', 'Single', 'Russian', 'Ukrainian', 'No', 'I\'m active and adventurous girl.at the same time I can be calm and romantic', 'To meet a man with whom I can feel comfortable in life ', 'Accountant', 'Accountant', '', '', 'I believe in true love and would be glad to live in harmony with my special man and make him happy.', 'I like traveling', 'Doesn\'t matter', '', 'I can\'t say exactly who I am, as all depends frm my mood or how tired I am', ' I\'m dreaming about happy family', '', 'I hate lie', 'I decided to try my luck here, as I think I can meet here my soul mate', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'No', 'I am looking for brave and smart man', 'I don\'t like when a man is indifferent to what is happening between us', 'Yes', 'Depending on the situation.', 'f you like to smile, like to start every day with postive emotions and ready to return your love, let us know each other!', '+380734408965', 'SweetJulie_Kr@gmail.com', 'yes', 'yes', ' all weekdays afternoon.', 'Let\'s have fun together!', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-02-08'),
(2332, 'Yuliya', 'Dmitruk', 'Ukraine', 'Zhitomir', '1984-04-19', 'uploads/girls/1549629984.jpg', '', '0', 1, 'match1', '', 'I think real meeting is importnat, doesn\'t matter it\'s a walk or drink some coffee or just having fun ', 'ukrainian', 'Christian General', '163', '52', 'Sportive', 'Hazel', 'Ligh-brown', 'University Degree', 'Negative', 'Divorced', 'Russian', 'Ukrainian', '2 kids', 'I am kind and open minded and goal-oriented woman', 'To find a man who is ready to build true and serious relaton', 'Military', 'Secretary', '', '', 'I am striving for the real life, real feelings and passion with my man.', 'aerobics', 'Doesn\'t matter', '', ' do not want to talk about waking up with my man but to wake up with him!', 'I have this love in my heart, it is build up for a special man who can see deeper the just skin. ', 'I have a dog Funtik', 'It\'s hard for me to understand when a man look just on appearance in a woman and not at her personality', 'Hope here I can find serious man who can opne a new world for me', 'I hope it\'s a time to meet him!', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', '178 lbs (80.7 kg)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Yes', 'He knows what he wants from life, gentle, well-educated, positive and caring person.   ', 'A man who doesn\'t respect woman\'s opinion', 'Yes', 'active', 'I am looking for a man who is looking for a real feeling, who is ready for relations and does something for it.I do not want just to chat and get entertained.', '+380664536585', 'Dmit_ruk65@gmail.com', 'yes', 'yes', 'all day', 'waiting for a pleasant communication', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-02-08'),
(2333, 'Elena', 'Ermak', 'Ukraine', 'Odessa', '1980-09-25', 'uploads/girls/1549633787.jpg', '', '0', 1, 'match1', 'You know I have very romantic dream. I dream that my man invites me to dance under the rain? Hope you will be braive)', '', 'ukrainian', 'Christian General', '167', '50', 'Sportive', 'Blue', 'Blond', 'University Degree', 'Negative', 'Divorced', 'Russian', 'Ukrainian', '1 child', 'I am also so king, intelligent, patient, hard working woman.', 'I am looking just for my native soul on this online dating site.', 'Econimist', 'Econimist', 'I haven\'t been abroad yet', '', 'I like the nature, I like animals. I am a good friend, honest, and faithful person. I like to give happiness, and good mood for people.', 'sports, reading, relaxing', 'Yes', '', 'We can go to the country sides with my man, and to share our own special moments together.', 'On this online dating service I hope to meet a man with same goal, and interests in life. ', 'I like animals and nature', '', 'I believe that relation start from communication and hope to meet a man with whom we can feel comfortable in communication. ', 'don\'t know', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Yes', 'I like, when he is funny, and serious at the same time. I like a man, who is easy going, and understanding. ', 'lie and betrayal', '', '', ' First of all I want you to be serious in your search and intention. I\'m here because I dream to meet a man with whom we can create real relation and real date can help us in it. Let\'s go together to our real meeting!', '+380637849653', 'helen434@gmail.com', 'yes', 'yes', 'during the day', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-02-08'),
(2334, 'Viktoriya', 'Moroz', 'Ukraine', 'Chernigov', '1996-06-23', 'uploads/girls/1549635379.jpg', '', '0', 1, 'match1', '', 'Would you like to see my smile in real life? Take a plane and fly to my;)', 'ukrainian', 'Christian General', '160', '59', 'Sportive', 'Brown', 'Ligh-brown', 'University Degree', 'Don\'t know', 'Single', 'Russian', 'a little English', 'No', 'Sexy and beautiful, smart and creative but a single women.', 'I hope that dating love sites help me found true love. ', 'Student', 'Student', '', 'I dream to travel with my man to the most romantic places', 'I know how to have fun, so you will be fine with me. ', 'Archery', 'Yes', '', 'It will be perfect when I will hear the aroma of coffee and my favorite flowers', 'I\'m here to create happy family, to be happy together with my man. ', 'Love very very much.', 'I even didn\'t think about it, but maybe I can\'t forget if my man betray our love', '', '', '26-35', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'No', 'I am looking for a smart, who can be caring and loving husband.', 'Violence', 'Yes', 'It\'s never mind that sometimes he prefer passive rest. ', 'I\'d like that my man understand me and appreciate my family value ', '+380503536015', 'viki_rose@gmail.com', 'yes', 'yes', ' all weekdays afternoon.', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-02-08'),
(2335, 'Elena', 'Oleksina', 'Ukraine', 'Odessa', '1983-08-09', 'uploads/girls/1553771011.jpg', 'Doesn\'t matter', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '167', '60', 'Sportive', 'Brown', 'Ligh-brown', 'University Degree', 'Negative', 'Divorced', 'Russian', 'Ukrainian', '2 kids', 'By nature, I am a very creative and talented woman! I like to make my life interesting and always try to find positive things around! I am a healthy woman and try to lead healthy life style, I am sporty!', 'I am always positive and never give up and here I hope to meet a man, who will make me to believe in love again!', 'Cosmetologist', 'Cosmetologist', '', '', 'I want to enjoy simple moments of our life with you my man!  I like dining in nice restaurants, but I am also a good cook and can cook many tasty dishes! I try to eat not fat food, but sometimes I eat too much ice cream! I am a very sweet lady! I do not have bad habits, I care about my health a lot and I hope to find a man who will think alike!', 'I like drawing, I like art! I like romantic movies, comedies and love stories! ', 'Yes', '', '', 'I want to have not only a happy, but also healthy life!', 'I don\'t have', '', '', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am searching for a serious man, who is loyal, confident, with good manners, faithful and romantic, caring and gentle! ', 'Maybe it will be lie', '', '', 'You are romantic and you know how to make a woman very happy! Mutual understanding and respect is very important in relationship!', '+380936664455', 'Oleksina_E@gmail.com', 'yes', 'yes', '15', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-03-28'),
(2336, 'Ekaterina', 'Shanina', 'Ukraine', 'Nikolaev', '1986-05-16', 'uploads/girls/1554380824.jpg', '', '0', 1, 'match1', '', 'I seek a man who is ready for real date and for real relation. I\'ll be glad to meet you in Ukraine ', 'ukrainian', 'Christian General', '170', '60', 'Thin', 'Brown', 'Hazel', 'University Degree', 'Negative', 'Single', 'Russian', 'English with difficulties', 'Don\'t have children', 'I am calm and down to earth woman with very simple character, no drama included LOL', 'I joined this dating site with a direct intention to find my soulmate.', 'Manager', 'cashier', 'I haven\'t been abroad yet', 'I like warm countries', 'I believe in myself, i believe in love, i believe in kindness and warmth being still alive in our world. I am not ready to give up and live all my life lonely warming my empty bed all by myself.', 'Like calm evenings with interesting film, rest in nature. Also I have interesting and creative hobby, make up', 'Yes', '', 'My ideal morning starts from some minutes of sport and tasty breakfast. It will be great if we can such ideal morning together. ', 'My goals for the future are to become a happy wife of a strong and loving husband and to be the super mom ', 'I like animals', 'It\'s difficult to say when you don\'t know the person, but I hate lie', 'Here are the people who really seek serious relation and want to create family', '', '46-55', 'United States', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I want real, honest, simple and MINE!', 'I don\'t like when a man behavior like he is the best what I have in my life. ', '', 'active', 'I know that this dating site is used with a very huge number of very different people, different by nation, age, height and weight, color of eyes, jobs, goal and dreams and i do not want to put any restriction on any of this matters. ', '+380995203384', 'joy_kate@gmail.com', 'yes', 'yes', ' all weekdays afternoon.', 'doesn\'t matter', 'Let me live this in secret for now. Later I\'ll tell you my story', 'In some things in life I like stability and in some spontaneity', 'I can have different mood in the morning', 'I love to dance and it will be great to learn how to dance one of these dances. ', 'I have many bright moments, I\'ll share with you later in communication;) ', 'I\'ll be glad to talk with my man on the same language', 'I\'ll enjoy if you present me even smal and cute flowers', 'Maybe my long and beautiful legs. Hope this is not the only thing you will like in me;)', 'No', 'It depends from what side to look', 'If you have a good sense of humor it\'s already plus, and maybe you will open a new side of humor for me', 'Yes, I like to open new piturecque parts of our world', 'Oh, I like to cook something interesting and bake especially', 'The desire to conquer the woman he likes', 'open to new things in life', 'even little things can bring me pleasure, especially when they are from dear peson ', 'spend it together with my beloved man ', 'I listen to opinion of my family or friends, but still take my own decision', 'to live your life without regrets', 'Don\'t think about yet ', 'at home', 'Hmm, I can listen to, but I can be silent too', 'Unexpected things and surprises bring a pleasure to my life', 'Maybe family and friends', 'I like morning', 'I like walk under the rain', 'Look outside a window and dream about something pleasant', 'It depends what exactly I recieve', 'Do you invite me on a date? ', 'I think it\'s very easy to do;)', '2019-04-04'),
(2337, 'Elena', 'Nikitina', 'Ukraine', 'Kharkov', '1982-05-13', 'uploads/girls/1554725645.jpg', '', '0', 1, 'match1', 'Of course my dreams don\'t finish on having Scottish Fold, I also dream to be professional in dances. ', 'I want to feel again this impression  from romantic date. Will you invite me?;) ', 'ukrainian', 'Christian General', '165', '49', 'Thin', 'Brown', 'Black', 'University Degree', 'Negative', 'Divorced', 'Russian', 'Ukrainian, good English', 'I don\'t have children ', 'I am an experienced and responsible lonely Ukrainian woman who is looking for her love. ', 'With the help of this site I hope to find a man for serious relationship.', 'Manager', 'Manager', 'I don\'t travel much but was in European but tour', 'My dream is to visit a place from famous movie - Eat, Pray, Love. ', 'I am also ready to be with him in good times and in difficult times, too.', 'Cooking, travel, dancing, watching movies, reading, sports exercise, playing cards, chess...', 'Yes', '', 'I\'m a night owl more, but sometimes it good to wake up early and meet the day with good mood and cup of tasty coffee. ', 'If I\'m here, I think it\'s easy to guess that I dream about strong family, that we can feel comfortable with each other in any situation and help eah other to develop in life and ', 'I\'m dreaming about Scotish Fold ', 'It\'s difficult to say, as life is unpredictable, and I hope here I\'ll meet a man who doesn\'t give me the reason to fogive him.  ', '', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Hope to meet an educated and kind husband.', 'It irritates me when my man doesn\'t fullfill his promises. ', 'Yes', 'I think both', 'A man who will drive me on weekends to attractions or just stroll in the park. For whom it will be important to be with me.', '+380994435226', 'writeme_here@gmail.com', 'yes', 'yes', 'during the day', 'doesn\'t matter', 'I was very activ child and sometimes, yes I was a hooligan', 'If in general, maybe more spontaneity. But in some parts of my life I still want to have stability', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-04-08'),
(2338, 'Aliona', 'Alyonina', 'Ukraine', 'Zaporozhye', '1994-05-13', 'uploads/girls/1555069296.jpg', '', '0', 1, 'match1', '', '', 'ukrainian', 'Christian General', '163', '45', 'Thin', 'Hazel', 'Brown', 'High school', 'Negative', 'Never been Married', 'Russian', 'English - good', 'No', 'I am communicative, active woman with positive outlook on life', 'I am looking for a honest relationships on this international dating site. ', 'Business administration and Management', 'Econimist', 'Dubai', 'I\'d like to travel with my man. I\'m curious what place can you offer;)', 'I am a romantic woman.I like to care about dear people to me. But at the same time I don\'t like when people use my kindness', ' I like listen to music and go to the cinema sometimes. I like to go on picnics and like to have fun!', 'Yes', '', 'My perferct morning is a sunny spring day. I like to start my day with music and tasty breakfast. ', 'Maybe I am your future Ukrainian bride?  I always enjoy to cook something new. Do you have favorite dish? You can tell it and I will cook it for you! Or we can cook your favorite dish together! I am sure it will be so fun and interesting!', 'Love very very much.', 'Violence  is what I can\'t forgive. ', 'I need someone who enjoys doing things together.', 'I just wait for man who likes the same things as me and we can do thm together', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I am looking for a man who believe in love and strong relationships, honest, loving, a strong man.', 'Violence', 'Yes', 'Depends hat we\'d like to do together', 'I want to be happy with my future husband. If you are looking for happiness on the rest of your life I am here for you.', '+380998532455', 'Aliona_aliona@gmail.com', 'yes', 'yes', ' all weekdays afternoon.', 'doesn\'t matter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-04-12'),
(2339, 'Tatiana', 'Nesterova', 'Ukraine', 'Kharkiv', '1969-10-27', 'uploads/girls/1556790611.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Christian General', '168', '53', 'Sportive', 'Brown', 'Brown', 'University Degree', 'Negative', 'divorced', 'Russian', 'English', '2 ', 'I am an attractive, self-sufficient and happy woman. I can say that life loves me, and I love it)) At the same time, I am gentle, romantic, and a little girl lives in my soul who still believes in a fairy tale about a prince on a white Mercedes)) I am a multi-person person, I like traveling, going to the gym, going to theaters and operas and experimenting in the kitchen:) I\'m communicative and funny, sometimes I like to joke with my friends. A boring life is not for me! So beware! :))', 'I expect to meet a man who will loves my real soul. With whom we will be able to create our common future.', '', 'Cosmetologist', 'Austria, Czech Republic, Germany, Poland', 'USA, Indonesia', '', 'Sports, gym, travel, theater, psychology', 'Doesn\'t matter', '', '', 'I want a family full of feelings and understanding. In which, reigns passion, devotion and all-consuming love.', '', '', '', '', '56-65', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Clever, educated, educated, versatile', 'rudeness, dishonesty', '', '', 'Love, caress, attention, warmth, the value of the relationship is with you, only with my man. I need a man who will love me, with whom I can open my heart and soul. And no matter what he is tall, or what his eye color. After all, if a person lives without love, then “the sun is an annoying lantern for him”, if you fall asleep alone - then “a prickly blanket, a stuffy pillow”.', '+380936888095', 'gidram1488@gmail.com', 'Viber', 'No', '', 'I have no special preferences, the main thing that we were comfortable.', '', 'Spontaneity', 'Good and calm', 'tango', '', 'yes', 'Rose', 'Slender legs', 'No', 'half full', '', 'Yes', 'Yes', 'Sincerity, honesty', '', '', 'Read', '', '', '', '', 'listen', 'Yes', '', 'Evening sunset', 'Somtimes', '', '', '', '', '2019-05-02'),
(2340, 'Marta', 'Poluhovich', 'Ukraine', 'Rivne', '1998-01-11', 'uploads/girls/1556798820.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Christian General', '159', '60', 'Sportive', 'Grey-blue', 'Blond', 'University Degree', 'Negative', 'single', 'Ukrainian', 'Russian', 'no', 'positive, easy-going, kind, honest, faithful', 'I expect  from the search that I will find a man', '', 'police-officer', 'France,Germany, Poland', 'OAE, India', 'I have a very calm and gentle nature ...', 'Gym,  make a photos, meet with friends, ', 'Yes', '', 'I\'m night owl', 'My main goal is to have a happy family!', 'Good', 'I can\'t forgive betrayal', 'I think it is faster and easier to find your match', 'I\'m very young. I think all will be in my future!', '26-35', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', '167 lbs (75.8 kg)', 'Green', 'Black', 'Doesn\'t matter', 'Christian General', 'No', 'I like smart, educated and polite men who are ready to turn the world for the benefit of our relationship.', 'envy, arrogance, selfishness', 'No', 'mixed', 'The most important for me that man need to be kind, honest, independent, serious.', '+380968041549', 'poluhoviamarta@gmail.com', 'Skype', 'Facebook', 'In the evening', 'I have not a special preferences for it.', 'In my childhood I was a quiet girl', 'Spontaneity', 'good', 'Yes, I like to dance', '', 'Yes, I want to learn English ', 'rose', '', 'no', 'half full', '', 'Yes', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-02'),
(2341, 'Tatiana', 'Budko', 'Ukraine', 'Rivne', '1983-05-15', 'uploads/girls/1556799854.jpg', 'https://www.youtube.com/embed/TX556ObVXM0', '0', 0, 'kamila19', '', '', 'ukrainian', 'Orthodox', '171', '55', 'Sportive', 'Green', 'Blond', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'English, Germany, Russian', 'daughter', 'honest, charismatic, cheerful, kind', 'I want to meet here my future husband, to meet old age together.', 'Lawyer', 'Lawyer', '', '', '', 'Horseback riding, oriental dances, ice skating, reading, knitting children\'s clothes, photographing.', 'Yes', '', '', 'My goal is to become happy, have a loving husband, healthy and happy children, have a favorite work and do not stop in my self-realization.', '', '', '', '', '36-45', 'Doesn\'t matter', '6 feet 1 inches (185.42 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Kind heart, honesty, openness, generosity, intellect', 'Lies, rudeness, greed', '', '', 'He must be attractive, courageous, and charismatic.', '+380973731828', 'ntm-2007@ukr.net', 'Viber and WhatsApp', 'Facebook', '', 'No special preference', '', '', '', 'Yes, I love dancing', 'Birth of my child, parachute jump, diving', 'Italian', 'Tulips', '', 'No, I am not', '', '', 'I travel a lot', 'I love', '', '', '', '', '', '', '', '', '', '', '', '', 'I like rain only in Summer', '', '', '', '', '2019-05-02'),
(2342, 'Tatiana', 'Galah', 'Ukraine', 'Rivne', '1986-06-30', 'uploads/girls/1556866304.jpg', 'https://www.youtube.com/embed/0OpC3ZCu3vk', '0', 1, 'Kamila19', '', '', 'ukrainian', 'Christian General', '169', '64', 'Sportive', 'Grey-blue', 'Blond', 'University Degree', 'Negative', 'single', 'Ukrainian', 'Russian', 'no', 'feminine, honest, attentive, sensitive, loyal, cheerful', 'I expect to find my love', '', 'psychologist', 'Czech Republic, Turkey, Thailand', 'Italy, OAE, Egypt', ' I always strive for self-improvement, “to be on the wave”, to be interesting, bright, conscious ... to be a PERSON. ', 'Maybe it can\'t call it a hobby! But my passion is a photo! I like to be a model on a photo!) I\'m for experimenting! I love to dress in nice clothes, change poses, and look at the beautiful result!', 'Yes', '', 'I\'m a night owl. I like when my morning starts with a cup of tasty coffee', 'My main goal is  create a  happy family.', 'Good, I like animals.', 'I cant forgive the rudeness of man and disrespect.', 'I think in 21 century it is a very good feature. So, why not?', 'Maybe, I  have not  met my true love yet. ', '36-45', 'Doesn\'t matter', '5 feet 8 inches (172.72 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'A person who believes in me and believes in us as a couple! Cheerful, cute, attentive to me.', 'bad manners, lies, rudeness, aggression,', 'Doesn\'t matter', 'active', 'The most important that he  need to be  a kind and pleasant persone.', '0932321886', 'Galah1Tatiana@gmail.com', 'Viber', 'Facebook', '', 'I have not a special preferences for it.', 'I was a quiet girl', 'Stability', 'I have a good mood', 'I likr to dance. I want to learn tango', '', 'I want to learn Italian .', 'Red Roses', '', 'no', 'Half full', '', 'Yes, I like to travel', 'Yes', '', '', '', '', '', '', '', '', '', '', '', 'Evening', 'yes', 'I like read book or drink a tea', 'It doesnot metter. The main thing that it be from the heart', '', 'Yes, I will help you.', '2019-05-03'),
(2343, 'Anna', 'Gogaladze', 'Ukraine', 'Rivne', '1990-09-02', 'uploads/girls/1556876208.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Christian General', '173', '65', 'Sportive', 'Brown', 'Black', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'Russian, basic English', '1', 'I think that I\'m sociable, faithful, caring and friendly.', 'I hope to find my other half here.', 'Choreographer', 'Choreographer', 'Georgia, Malaysia, Hong Kong, China, South Korea, Japan', 'USA, Indonesia', '', 'I enjoy a broad range of activities and listing them all would require too much room, so I’ll only mention some of them: travel to unknown places (especially warm countries), always learn something new for yourself, dance on the sand during sunset, walk barefoot under the summer rain. I like to cook something interesting, I like to experiment.', 'Yes', '', '', 'I dream of my strong family, where love and understanding reign, where children\'s laughter is heard and where you always want to return after a working day)', 'love', '', '', '', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Charming, kind, intelligent, confident', 'dishonesty, fearfulness, not good manners', '', '', 'When I think of the right guy for me I think of someone who could carry on a conversation whether the topic is silly or serious, who knows who he is, what he wants, and what things in life matter. A man who can see something beautiful in a small and insignificant thing and someone who likes to be loved and who wants to share good life, hopes and dreams with me.', '+380734671393', 'khunashvili1990@gmail.com', 'Viber, WhatsApp', 'Facebook', '', 'For me, it doesn\'t matter how and where our conversation will take place, the main thing is that we find a common language.', '', 'I think - stability', '', 'I know all these dances', '', 'yes', 'Chamomile', '', 'No', '', '', 'Yes', 'I really enjoy cooking', '', '', '', '', '', '', '', '', 'listen', '', '', '', 'Yes', '', '', '', '', '2019-05-03'),
(2344, 'Nataly', 'Romanuk', 'Ukraine', 'Rivne', '1990-09-17', 'uploads/girls/1556875785.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Christian General', '168', '59', 'Athletic', 'Green', 'Brown', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'Russian', 'Boy- 2012', 'sincere, honest, fair, punctual, modern,', 'I expect that I change my life in a good side', '', 'own business', 'Poland,Turkey, OAE', 'USA, France', 'I am the person who loves to develop, to do something and in no case sit still.', 'drawing, sewing', 'Yes', '', '', 'I want change my life and meet a special man, with whom I can build a serious relationships.', 'Good', '', '', '', '26-35', 'Doesn\'t matter', '5 feet 8 inches (172.72 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'kind, confident, pleasant to talk to, an interesting conversationalist', 'arrogance, selfishness, hypocrisy,', 'Doesn\'t matter', 'active', 'The most important thing for me is sincerity and honesty.', ' +380971851988', 'romanukn018@gmail.com', 'Viber', 'Facebook', 'In the evening', 'I have not a special preferences for it.', 'I was a quiet girl', 'spontaneity', 'I have a good mood', 'Dance hip-hop', 'When I became a mother ', 'Yes. I want to learn English', 'pion', '', 'no', 'Half full', '', 'Yes, I like to travel', 'Yes', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-03'),
(2345, 'Oksana', 'Kharchishina', 'Ukraine', 'Rivne', '1987-12-05', 'uploads/girls/1556882471.jpg', 'https://www.youtube.com/embed/Z-RmtVjodaM', '0', 1, 'kamila19', '', '', 'ukrainian', 'Orthodox', '165', '58', 'Sportive', 'Blue', 'Ligh-brown', 'University Degree', 'Negative', 'single', 'Ukrainian', 'English, Russian', 'no', 'Kind, cheerful, faithful, always I say what I think.', 'I want to find family happiness.', 'Accountant', 'Accountant', '', '', '', 'Reading, listening to music, creating clothes', 'Yes', '', '', 'I dream of having a family, a small house by the sea, traveling with my family.', '', '', '', '', '36-45', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Kind, intelligent, polite, have family values.', 'Rudeness, lies.', '', '', 'He must be a good husband, a loving and caring father for our children.', '+380961931329', 'avroravip@ukr.net', 'Viber ', 'Facebook', '', 'He should have a good mood', '', 'Stability', '', '', '', 'Italian, Spanish', 'Tulips, carnations', '', 'No', '', '', 'I travel a lot', 'I like', 'Honesty, support, understanding', '', '', '', '', '', '', '', 'I can listen and talk a lot', '', '', '', 'Sometimes', '', '', '', '', '2019-05-03');
INSERT INTO `girls` (`girl_id`, `first_name`, `last_name`, `country`, `city`, `birthday`, `foto`, `video`, `gallery_status`, `activation_status`, `login_match`, `dreams`, `meeting`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `ask1`, `ask2`, `ask3`, `ask4`, `ask5`, `ask6`, `ask7`, `ask8`, `ask9`, `ask10`, `ask11`, `ask12`, `ask13`, `ask14`, `ask15`, `ask16`, `ask17`, `ask18`, `ask19`, `ask20`, `ask21`, `ask22`, `ask23`, `ask24`, `ask25`, `ask26`, `ask27`, `ask28`, `ask29`, `ask30`, `date_add`) VALUES
(2346, 'Victoria', 'Khrystyanovich', 'Ukraine', 'Rivne', '1978-04-22', 'uploads/girls/1556884702.jpg', 'https://www.youtube.com/embed/l6dWKpVLWVI', '0', 1, 'kamila19', '', '', 'ukrainian', 'Orthodox', '164', '52', 'Sportive', 'Green', 'Ligh-brown', 'Collage', 'Negative', 'Divorced', 'Ukrainian', 'Russian', '3', 'Kindness, good sense of humor, activity', 'I want to meet my future husband', 'Accountant', 'Financial director', '', '', '', 'Riding a bicycle, listen to music', 'Doesn\'t matter', '', '', 'My plans for the next 5 years are to love and be loved, enjoy every minute with my family.', '', '', '', '', '36-45', 'Doesn\'t matter', '5 feet 9 inches (175.26 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Honest, charismatic, interesting conversationalist', 'Arrogance, lie', '', '', 'A man should be a hunter and protector for his family. The most important is that I feel his support, his strong shoulder, his care and love.', '+380674046940', 'vika.vita2204@gmail.com', 'Viber ', 'Facebook', '', 'No special preference', '', '', '', 'Yes, of course', '', 'English', 'Roses', '', 'No, I am not', '', '', 'Yes, I do', 'Yes, I do', '', 'Sociable, cheerful', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-03'),
(2347, 'Maria', 'Scyra', 'Ukraine', 'Rivne', '1978-09-17', 'uploads/girls/1556887844.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Orthodox', '168', '62', 'Sportive', 'Brown', 'Black', 'University Degree', 'Negative', 'Single', 'Ukrainian', 'French', 'No', 'I am hardworking, modest, gentle, truthful, sincere, always trying to finish what I started.', 'I am here to fulfill my dream - to find a loved one and create our strong family', 'mathematic teacher', 'mathematic teacher', '', 'European countries', '', 'Since I live outside the city, of course I love nature and animals very much. I love to run in the morning, especially when the whole world is still asleep. Like any woman, I can and I love to cook. I am a good experimenter, and I know not only Ukrainian cuisine. And this experimenter lacks a deguster:))))) I also have a very big beautiful garden. After the routine work, only there I have a soul rest, caring for each flower.', 'Yes', '', '', 'I dream to devote myself to my family, my man and my God.', 'I like animals', '', '', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Responsive, kind, generous, the one who loves children', 'greed, bad manners and rudeness', '', '', 'My man is the one sent to me by God. I am sure that our couple will be created in heaven. He will appreciate with dignity how long I waited for him.', '+380962115239', 'mariasciry@gmal.com', 'Viber', 'No', '', 'I have no special preferences for Skype conveference', 'I was a quiet girl in childhood', '', 'I always wake up with a good mood)', 'Waltz', '', '', 'White Rose', '', 'No', '', '', '', 'I really enjoy cooking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-03'),
(2348, 'Daria', 'Barabash', 'Ukraine', 'Rivne', '1991-08-16', 'uploads/girls/1557133366.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Orthodox', '169', '52', 'Sportive', 'Grey', 'Brown', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'Russian, basic English', '1', 'I think that I am kind, cheerful, caring. Friends say that I have a big heart)))', 'Here I hope to meet a person with whom we will understand each other, become one.', 'Manager', 'Manager', 'Jordan, Russia', '', '', 'The hobby of my whole life is diving. But recently I started attending massage training and got myself another interesting hobby.', 'Doesn\'t matter', '', '', 'I dream of a life filled with bright colors and the most important thing is to see happy people near me.', 'I like animals', '', '', '', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Smart and with a sense of humorous, of course serious in their intentions.', 'insecurity, lack of manners, rudeness, deceit', '', '', 'I dream a lot about the man of my dreams, but honestly I can not describe how he should look, dress and so on. I think that as soon as I see him, I will understand - this is he, MY!', '+380680224202', 'barabash.dariya@mail.ru', 'Viber, WhatsApp', 'Facebook', '', 'I have no special preferences, the main thing that we were comfortable.', '', '', 'I always wake up with a good mood)', ' hip-hop', '', 'Yes', 'Red rose', '', 'No', '', '', 'I like travel ', 'Yes', '', '', '', '', '', '', '', '', 'listen', '', '', '', 'I think yes', '', '', '', '', '2019-05-06'),
(2349, 'Liliya', 'Perenchuk', 'Ukraine', 'Rivne', '1978-03-20', 'uploads/girls/1557136125.jpg', 'https://www.youtube.com/embed/xqYGDZi5FNI', '0', 1, 'kamila19', '', '', 'ukrainian', 'Orthodox', '170', '56', 'Sportive', 'Brown', 'Brown', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'English, Russian', '1', 'Pragmatic, cheerful, sociable, educated', 'To meet the soul mate', 'Economist', 'Economist', '', '', '', 'Ride a bicycle, read novels, watch documentaries and historical films.', 'Doesn\'t matter', '', '', 'I want to become a loving wife, have a small house in a warm country.', 'Yes', '', '', '', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Interesting, educated, polite, adventurous.', 'Lies', '', '', 'A man who is ready for a serious relationship.', '+380677973740', 'liliaperencuk@gmail.com', 'Viber and WhatsApp', 'Facebook', '', 'No special preference', '', 'Stability', '', 'Yes, I love dancing', 'A visiting Paris', 'Yes, Italian, Germany', 'Roses', '', 'No, I am not', '', '', 'I travel a lot', 'Yes, I do', 'Purposefulness, self-sufficiency', '', '', '', '', '', '', '', 'I like to listen', '', '', '', 'I like rain only in Summer', '', '', '', '', '2019-05-06'),
(2350, 'Tatiana', 'Terletska', 'Ukraine', 'Rivne', '1978-04-07', 'uploads/girls/1557136748.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Orthodox', '160', '54', 'Thin', 'Green', 'Blond', 'University Degree', 'Negative', 'Single', 'Ukrainian', 'Russian, basic English', '1', 'I am sensitive and romantic, family and kind.', 'I have a great need to love and be loved. I hope that this is where my dream will come true....', 'Musician, music teacher', 'Shop assistant', 'Switzerland, Poland, Greece, Italy, Germany', 'USA, Canada, Australia .... ', '', 'I am a multi-faceted person, insanely romantic and talented in my soul. I like to spend quiet cozy evenings behind the piano, playing romances, meet dawns on the seaside and just walk in the fresh air. All this inspires me and fills my soul with beauty. To say that I love art is to say nothing. Why do I really love art? Not that it brings admiration, inspiration and tranquility. No! I love art for the fact that in this way a person shows how he can create, create something beautiful, and not destroy. For me, creating something beautiful, carrying warmth and light is the real art. I can listen to easy jazz and classics for hours, or spend time at the exhibition center. I believe that art gives us to feel in full all the beauty of this world.', 'Doesn\'t matter', '', '', 'I dream to love, I am maximally open to new relationships, my heart is absolutely free for a new love.', '', '', '', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Kindness, honesty, responsiveness, courage, love for children', 'dishonesty, fearfulness, not good manners', '', '', 'A man can be tall and short, gentle and rude, a well-built athlete and a stoop fat man, a gilded oligarch and a poor gypsy - if he is confident in himself and in his charisma, not all women can resist him and I\'m no exception. Only the presence of potential, a clear mindset and a good soul can make me pay attention to this man and conquer me completely.', '+380673661285', 'tatiana-t2017@ukr.net', 'Viber, WhatsApp', 'Facebook', '', 'For me, it doesn\'t matter how and where our conversation will take place, the main thing is that we find a common language.', '', 'I am prefer stability', '', 'tango', '', '', 'Roses, Peonies and Orchids', '', 'No', '', '', 'I like travel ', 'Yes', '', '', '', '', '', '', '', '', 'listen', '', '', '', 'No', '', '', '', '', '2019-05-06'),
(2351, 'Olexandra', 'Philipchuk', 'Ukraine', 'Rivne', '1977-10-04', 'uploads/girls/1557136795.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Orthodox', '168', '63', 'Sportive', 'Blue', 'Brown', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'Russian,Italian', 'boy 1998, girl 2005', 'I\'m an honest, romantic, cheerful woman with a big heart', 'I expect to find my soulmate!', '', 'Accountant', 'Italy, Poland', 'USA, UAE', '', 'I have been running for a long time, regularly and with great pleasure. ', 'Doesn\'t matter', '', 'I\'m night owl. I like get up late', 'I want to create a happy family . It is my main goal.', 'Good', 'I can\'t forgive betrayal and bad attitude of a man to a woman', 'I want to try, with the help of the internet to find my future man.', 'I don\'t think about it. I prefer to think that my love finds me  soon.)', '46-55', 'Doesn\'t matter', '5 feet 7 inches (170.18 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'I like the kind, easy0going and responsible man with a good soul.', 'deceit, distrust, treason,', 'Doesn\'t matter', 'mixed', 'The most important that he  need to be  brave, honest, kind, inpendent person.', '+380502272399', 'pilipchuka489@gmail.com', 'Viber', 'Facebook', 'Mostly in the evening.', 'I have not a special preferences for it.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-06'),
(2352, 'Nataly', 'Kirichenko', 'Ukraine', 'Rivne', '1974-09-25', 'uploads/girls/1557139288.jpg', 'https://www.youtube.com/embed/sTyIPyVa0hs', '0', 0, 'kamila19', '', '', 'ukrainian', 'Orthodox', '156', '48', 'Thin', 'Blue', 'Blond', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'English, Russian', '2', 'kindness, tenderness, optimism', 'I want to meet a man with whom I can create a family', 'English teacher', 'English teacher', '', '', '', 'Read, walk, travel', 'Doesn\'t matter', '', '', 'I want to meet a foreign man with whom I can create a family.', '', '', '', '', '46-55', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Kind, honest, courageous, caring, reliable', 'Insincerity, unreliability', '', '', 'He must love me, be a responsible and interesting companion', '+380509032998', 'kisslucky@ukr.net', 'Viber and WhatsApp', 'Facebook', '', 'No special preference', '', 'Stability', '', 'Yes, of course', '101 roses for my birthda from my best friends ', 'Yes, Italian, Germany', 'Roses', '', 'No, I am not', '', '', 'Yes, I do', 'I like cooking with good company', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-06'),
(2353, 'Antonina', 'Revutskaya', 'Ukraine', 'Rivne', '1979-10-15', 'uploads/girls/1557140744.jpg', '', '0', 0, 'Kamila19', '', '', 'ukrainian', 'Orthodox', '178', '58', 'Thin', 'Green', 'Black', 'University Degree', 'Negative', 'divorced', 'Ukrainian', 'English', 'I\'m romantic :) I don’t like to stand still or be bored. Living with taste is my motto!', 'sincere, honest, fair, punctual, funny,', 'I expect to find my true  love', '', 'lawyer', '', '', '', 'drawing, singing, dancing', 'Doesn\'t matter', '', '', 'My main goal is to be a happy woman with beloved man!', 'Good', '', '', '', '46-55', 'Doesn\'t matter', '5 feet 10 inches (177.80 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'kind, confident, pleasant to talk to, love nature, ', 'arrogance, selfishness, rudeness', 'Yes', 'mixed', 'The most important for me his atittude to woman', '+380964330774 ', 'antoninareva79@gmail.com', 'Viber', 'Facebook', 'In the evening', 'I have not a special preferences for it.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2019-05-06');

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
(67, 2305, 'uploads/girls/gallery_foto/1540199661.jpg', 1),
(68, 2305, 'uploads/girls/gallery_foto/1540199669.jpg', 0),
(69, 2305, 'uploads/girls/gallery_foto/1540199681.jpg', 1),
(70, 2305, 'uploads/girls/gallery_foto/1540199690.jpg', 0),
(71, 2305, 'uploads/girls/gallery_foto/1540199701.jpg', 1),
(72, 2305, 'uploads/girls/gallery_foto/1540199710.jpg', 1),
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
(167, 2320, 'uploads/girls/gallery_foto/1543858165.jpg', 1),
(168, 2320, 'uploads/girls/gallery_foto/1543858215.jpg', 1),
(169, 2320, 'uploads/girls/gallery_foto/1543858284.jpg', 1),
(170, 2320, 'uploads/girls/gallery_foto/1543858319.jpg', 1),
(171, 2321, 'uploads/girls/gallery_foto/1546954766.jpg', 1),
(172, 2321, 'uploads/girls/gallery_foto/1546954783.jpg', 1),
(173, 2321, 'uploads/girls/gallery_foto/1546954792.jpg', 0),
(174, 2321, 'uploads/girls/gallery_foto/1546954804.jpg', 0),
(175, 2321, 'uploads/girls/gallery_foto/1546954813.jpg', 1),
(176, 2329, 'uploads/girls/gallery_foto/1549181222.JPG', 1),
(177, 2329, 'uploads/girls/gallery_foto/1549181234.JPG', 1),
(178, 2329, 'uploads/girls/gallery_foto/1549181252.JPG', 1),
(179, 2329, 'uploads/girls/gallery_foto/1549181266.JPG', 1),
(180, 2329, 'uploads/girls/gallery_foto/1549181281.JPG', 1),
(181, 2322, 'uploads/girls/gallery_foto/1549618406.jpg', 1),
(182, 2322, 'uploads/girls/gallery_foto/1549618419.jpg', 1),
(183, 2323, 'uploads/girls/gallery_foto/1549618855.jpg', 1),
(184, 2323, 'uploads/girls/gallery_foto/1549618865.jpg', 1),
(185, 2323, 'uploads/girls/gallery_foto/1549618873.jpg', 1),
(186, 2324, 'uploads/girls/gallery_foto/1549619217.jpg', 1),
(187, 2324, 'uploads/girls/gallery_foto/1549619231.jpg', 1),
(188, 2324, 'uploads/girls/gallery_foto/1549619241.jpg', 1),
(189, 2325, 'uploads/girls/gallery_foto/1549619741.jpg', 1),
(190, 2325, 'uploads/girls/gallery_foto/1549619752.jpg', 1),
(191, 2326, 'uploads/girls/gallery_foto/1549620242.jpg', 1),
(192, 2326, 'uploads/girls/gallery_foto/1549620253.jpg', 1),
(193, 2326, 'uploads/girls/gallery_foto/1549620261.jpg', 1),
(194, 2327, 'uploads/girls/gallery_foto/1549620514.jpg', 1),
(195, 2327, 'uploads/girls/gallery_foto/1549620521.jpg', 1),
(196, 2327, 'uploads/girls/gallery_foto/1549620530.jpg', 1),
(197, 2328, 'uploads/girls/gallery_foto/1549620801.jpg', 1),
(198, 2328, 'uploads/girls/gallery_foto/1549620809.jpg', 1),
(199, 2328, 'uploads/girls/gallery_foto/1549620819.jpg', 1),
(200, 2330, 'uploads/girls/gallery_foto/1549624692.jpg', 1),
(201, 2330, 'uploads/girls/gallery_foto/1549624879.jpg', 1),
(202, 2330, 'uploads/girls/gallery_foto/1549624892.jpg', 1),
(203, 2331, 'uploads/girls/gallery_foto/1549628545.jpg', 1),
(204, 2331, 'uploads/girls/gallery_foto/1549628553.jpg', 1),
(205, 2331, 'uploads/girls/gallery_foto/1549628562.jpg', 1),
(206, 2332, 'uploads/girls/gallery_foto/1549629993.jpg', 1),
(207, 2332, 'uploads/girls/gallery_foto/1549630001.jpg', 1),
(208, 2332, 'uploads/girls/gallery_foto/1549630010.jpg', 1),
(209, 2333, 'uploads/girls/gallery_foto/1549633796.jpg', 1),
(210, 2333, 'uploads/girls/gallery_foto/1549633809.jpg', 1),
(211, 2333, 'uploads/girls/gallery_foto/1549633821.jpg', 1),
(212, 2334, 'uploads/girls/gallery_foto/1549635392.jpg', 1),
(213, 2334, 'uploads/girls/gallery_foto/1549635400.jpg', 1),
(214, 2334, 'uploads/girls/gallery_foto/1549635427.jpg', 1),
(215, 2337, 'uploads/girls/gallery_foto/1554726714.jpg', 1),
(216, 2337, 'uploads/girls/gallery_foto/1554726726.jpg', 1),
(217, 2339, 'uploads/girls/gallery_foto/1556791120.jpg', 0),
(218, 2339, 'uploads/girls/gallery_foto/1556791138.jpg', 0),
(219, 2339, 'uploads/girls/gallery_foto/1556791173.jpg', 0),
(220, 2339, 'uploads/girls/gallery_foto/1556791182.jpg', 0),
(221, 2339, 'uploads/girls/gallery_foto/1556791198.jpg', 0),
(222, 2339, 'uploads/girls/gallery_foto/1556791212.jpg', 0),
(223, 2339, 'uploads/girls/gallery_foto/1556791228.jpg', 0),
(224, 2339, 'uploads/girls/gallery_foto/1556791266.jpg', 0),
(225, 2340, 'uploads/girls/gallery_foto/1556798862.jpg', 0),
(226, 2340, 'uploads/girls/gallery_foto/1556798874.jpg', 0),
(227, 2340, 'uploads/girls/gallery_foto/1556798892.jpg', 0),
(228, 2340, 'uploads/girls/gallery_foto/1556798934.jpg', 0),
(229, 2340, 'uploads/girls/gallery_foto/1556798957.jpg', 0),
(230, 2341, 'uploads/girls/gallery_foto/1556799907.jpg', 0),
(231, 2341, 'uploads/girls/gallery_foto/1556799929.jpg', 0),
(232, 2341, 'uploads/girls/gallery_foto/1556799950.jpg', 0),
(233, 2341, 'uploads/girls/gallery_foto/1556799973.jpg', 0),
(234, 2341, 'uploads/girls/gallery_foto/1556800351.jpg', 0),
(235, 2341, 'uploads/girls/gallery_foto/1556800440.JPG', 0),
(236, 2342, 'uploads/girls/gallery_foto/1556866361.jpg', 1),
(237, 2342, 'uploads/girls/gallery_foto/1556866372.jpg', 1),
(238, 2342, 'uploads/girls/gallery_foto/1556866387.jpg', 1),
(239, 2342, 'uploads/girls/gallery_foto/1556866402.jpg', 1),
(240, 2342, 'uploads/girls/gallery_foto/1556866434.jpg', 1),
(241, 2342, 'uploads/girls/gallery_foto/1556874010.jpg', 1),
(242, 2342, 'uploads/girls/gallery_foto/1556874033.jpg', 1),
(243, 2342, 'uploads/girls/gallery_foto/1556874091.jpg', 1),
(244, 2341, 'uploads/girls/gallery_foto/1556874780.jpg', 0),
(245, 2341, 'uploads/girls/gallery_foto/1556874802.jpg', 0),
(246, 2341, 'uploads/girls/gallery_foto/1556874824.jpg', 0),
(247, 2341, 'uploads/girls/gallery_foto/1556874870.jpg', 0),
(248, 2344, 'uploads/girls/gallery_foto/1556875809.jpg', 0),
(249, 2344, 'uploads/girls/gallery_foto/1556875825.jpg', 0),
(250, 2344, 'uploads/girls/gallery_foto/1556875861.jpg', 0),
(251, 2344, 'uploads/girls/gallery_foto/1556875875.jpg', 0),
(252, 2344, 'uploads/girls/gallery_foto/1556875927.jpg', 0),
(253, 2344, 'uploads/girls/gallery_foto/1556875951.jpg', 0),
(254, 2344, 'uploads/girls/gallery_foto/1556875970.jpg', 0),
(255, 2344, 'uploads/girls/gallery_foto/1556875988.jpg', 0),
(256, 2344, 'uploads/girls/gallery_foto/1556876010.jpg', 0),
(257, 2343, 'uploads/girls/gallery_foto/1556876227.jpg', 0),
(258, 2343, 'uploads/girls/gallery_foto/1556876373.jpg', 0),
(259, 2343, 'uploads/girls/gallery_foto/1556876386.jpg', 0),
(260, 2343, 'uploads/girls/gallery_foto/1556876400.jpg', 0),
(261, 2343, 'uploads/girls/gallery_foto/1556880236.jpg', 0),
(262, 2343, 'uploads/girls/gallery_foto/1556880257.jpg', 0),
(263, 2343, 'uploads/girls/gallery_foto/1556880461.jpg', 0),
(264, 2343, 'uploads/girls/gallery_foto/1556880477.jpg', 0),
(265, 2343, 'uploads/girls/gallery_foto/1556881065.jpg', 0),
(266, 2345, 'uploads/girls/gallery_foto/1556882491.jpg', 1),
(267, 2345, 'uploads/girls/gallery_foto/1556882514.jpg', 1),
(268, 2345, 'uploads/girls/gallery_foto/1556882532.jpg', 1),
(269, 2345, 'uploads/girls/gallery_foto/1556882553.jpg', 0),
(270, 2345, 'uploads/girls/gallery_foto/1556882576.jpg', 1),
(271, 2345, 'uploads/girls/gallery_foto/1556882591.jpg', 1),
(272, 2345, 'uploads/girls/gallery_foto/1556882897.jpg', 0),
(273, 2345, 'uploads/girls/gallery_foto/1556882923.jpg', 0),
(274, 2345, 'uploads/girls/gallery_foto/1556882952.jpg', 1),
(275, 2346, 'uploads/girls/gallery_foto/1556884725.jpg', 1),
(276, 2346, 'uploads/girls/gallery_foto/1556884739.jpg', 1),
(277, 2346, 'uploads/girls/gallery_foto/1556884761.jpg', 1),
(278, 2346, 'uploads/girls/gallery_foto/1556884782.jpg', 1),
(279, 2346, 'uploads/girls/gallery_foto/1556884803.jpg', 1),
(280, 2346, 'uploads/girls/gallery_foto/1556884819.jpg', 1),
(281, 2346, 'uploads/girls/gallery_foto/1556884837.jpg', 1),
(282, 2346, 'uploads/girls/gallery_foto/1556884856.jpg', 1),
(283, 2346, 'uploads/girls/gallery_foto/1556885045.jpg', 1),
(284, 2346, 'uploads/girls/gallery_foto/1556885064.jpg', 1),
(285, 2346, 'uploads/girls/gallery_foto/1556885083.jpg', 1),
(286, 2347, 'uploads/girls/gallery_foto/1556887860.jpg', 0),
(287, 2347, 'uploads/girls/gallery_foto/1556887871.jpg', 0),
(288, 2347, 'uploads/girls/gallery_foto/1556887887.jpg', 0),
(289, 2347, 'uploads/girls/gallery_foto/1556887901.jpg', 0),
(290, 2347, 'uploads/girls/gallery_foto/1556887912.jpg', 0),
(291, 2347, 'uploads/girls/gallery_foto/1556887924.jpg', 0),
(292, 2347, 'uploads/girls/gallery_foto/1556887934.jpg', 0),
(293, 2347, 'uploads/girls/gallery_foto/1556887950.jpg', 0),
(294, 2347, 'uploads/girls/gallery_foto/1556887965.jpg', 0),
(295, 2339, 'uploads/girls/gallery_foto/1557127918.jpg', 0),
(296, 2339, 'uploads/girls/gallery_foto/1557127940.jpg', 0),
(297, 2339, 'uploads/girls/gallery_foto/1557127982.jpg', 0),
(298, 2348, 'uploads/girls/gallery_foto/1557133664.jpg', 0),
(299, 2348, 'uploads/girls/gallery_foto/1557133675.jpg', 0),
(300, 2348, 'uploads/girls/gallery_foto/1557133686.jpg', 0),
(301, 2348, 'uploads/girls/gallery_foto/1557133697.jpg', 0),
(302, 2348, 'uploads/girls/gallery_foto/1557133719.jpg', 0),
(303, 2348, 'uploads/girls/gallery_foto/1557133740.jpg', 0),
(304, 2348, 'uploads/girls/gallery_foto/1557133819.jpg', 0),
(305, 2348, 'uploads/girls/gallery_foto/1557134314.jpg', 0),
(306, 2348, 'uploads/girls/gallery_foto/1557134331.jpg', 0),
(307, 2348, 'uploads/girls/gallery_foto/1557134360.jpg', 0),
(308, 2349, 'uploads/girls/gallery_foto/1557135718.jpg', 0),
(309, 2349, 'uploads/girls/gallery_foto/1557135740.jpg', 0),
(310, 2349, 'uploads/girls/gallery_foto/1557135760.jpg', 0),
(311, 2349, 'uploads/girls/gallery_foto/1557135778.jpg', 0),
(312, 2349, 'uploads/girls/gallery_foto/1557135795.jpg', 0),
(313, 2349, 'uploads/girls/gallery_foto/1557135812.jpg', 0),
(314, 2349, 'uploads/girls/gallery_foto/1557135833.JPG', 0),
(315, 2349, 'uploads/girls/gallery_foto/1557135862.jpg', 0),
(316, 2350, 'uploads/girls/gallery_foto/1557136763.jpg', 0),
(317, 2350, 'uploads/girls/gallery_foto/1557136778.jpg', 0),
(318, 2350, 'uploads/girls/gallery_foto/1557136801.jpg', 0),
(319, 2351, 'uploads/girls/gallery_foto/1557136814.jpg', 0),
(320, 2350, 'uploads/girls/gallery_foto/1557136815.jpg', 0),
(321, 2350, 'uploads/girls/gallery_foto/1557136830.jpg', 0),
(322, 2351, 'uploads/girls/gallery_foto/1557136833.jpg', 0),
(323, 2351, 'uploads/girls/gallery_foto/1557136849.jpg', 0),
(324, 2351, 'uploads/girls/gallery_foto/1557136868.jpg', 0),
(325, 2350, 'uploads/girls/gallery_foto/1557136883.jpg', 0),
(326, 2351, 'uploads/girls/gallery_foto/1557136893.jpg', 0),
(327, 2350, 'uploads/girls/gallery_foto/1557136907.jpg', 0),
(328, 2351, 'uploads/girls/gallery_foto/1557136916.jpg', 0),
(329, 2350, 'uploads/girls/gallery_foto/1557136941.jpg', 0),
(330, 2351, 'uploads/girls/gallery_foto/1557136942.jpg', 0),
(331, 2351, 'uploads/girls/gallery_foto/1557136970.jpg', 0),
(332, 2350, 'uploads/girls/gallery_foto/1557137400.jpg', 0),
(333, 2350, 'uploads/girls/gallery_foto/1557137571.jpg', 0),
(334, 2352, 'uploads/girls/gallery_foto/1557139304.jpg', 0),
(335, 2352, 'uploads/girls/gallery_foto/1557139317.jpg', 0),
(336, 2352, 'uploads/girls/gallery_foto/1557139331.jpg', 0),
(337, 2352, 'uploads/girls/gallery_foto/1557139670.jpg', 0),
(338, 2352, 'uploads/girls/gallery_foto/1557139704.jpg', 0),
(339, 2352, 'uploads/girls/gallery_foto/1557139732.jpg', 0),
(340, 2352, 'uploads/girls/gallery_foto/1557139767.jpg', 0),
(341, 2352, 'uploads/girls/gallery_foto/1557139788.jpg', 0),
(342, 2353, 'uploads/girls/gallery_foto/1557140756.jpg', 0),
(343, 2353, 'uploads/girls/gallery_foto/1557140767.jpg', 0),
(344, 2353, 'uploads/girls/gallery_foto/1557140778.jpg', 0),
(345, 2353, 'uploads/girls/gallery_foto/1557140792.jpg', 0),
(346, 2353, 'uploads/girls/gallery_foto/1557140815.jpg', 0),
(347, 2353, 'uploads/girls/gallery_foto/1557140836.jpg', 0),
(348, 2353, 'uploads/girls/gallery_foto/1557140851.jpg', 0),
(349, 2353, 'uploads/girls/gallery_foto/1557140865.jpg', 0),
(350, 2340, 'uploads/girls/gallery_foto/1557841956.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `girls_foto_document`
--

CREATE TABLE `girls_foto_document` (
  `foto_document_id` int(11) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `foto` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `girls_foto_document`
--

INSERT INTO `girls_foto_document` (`foto_document_id`, `girl_id`, `foto`) VALUES
(3, 2327, 'uploads/girls/gallery_foto/document/1557828917.jpg'),
(4, 2339, 'uploads/girls/gallery_foto/document/1557839468.jpg'),
(5, 2339, 'uploads/girls/gallery_foto/document/1557839509.jpg'),
(6, 2339, 'uploads/girls/gallery_foto/document/1557839528.jpg'),
(7, 2339, 'uploads/girls/gallery_foto/document/1557839547.jpg'),
(8, 2345, 'uploads/girls/gallery_foto/document/1557839605.jpg'),
(9, 2352, 'uploads/girls/gallery_foto/document/1557839677.jpg'),
(10, 2349, 'uploads/girls/gallery_foto/document/1557839714.jpg'),
(11, 2349, 'uploads/girls/gallery_foto/document/1557839765.jpg'),
(12, 2352, 'uploads/girls/gallery_foto/document/1557839815.jpg'),
(13, 2345, 'uploads/girls/gallery_foto/document/1557839858.jpg'),
(14, 2341, 'uploads/girls/gallery_foto/document/1557839895.jpg'),
(15, 2341, 'uploads/girls/gallery_foto/document/1557839911.jpg'),
(16, 2343, 'uploads/girls/gallery_foto/document/1557839961.jpg'),
(17, 2343, 'uploads/girls/gallery_foto/document/1557840175.jpg'),
(18, 2343, 'uploads/girls/gallery_foto/document/1557840309.jpg'),
(19, 2343, 'uploads/girls/gallery_foto/document/1557840333.jpg'),
(24, 2353, 'uploads/girls/gallery_foto/document/1557841668.jpg'),
(21, 2344, 'uploads/girls/gallery_foto/document/1557841312.jpg'),
(30, 2351, 'uploads/girls/gallery_foto/document/1557842225.jpg'),
(27, 2351, 'uploads/girls/gallery_foto/document/1557841820.jpg'),
(29, 2344, 'uploads/girls/gallery_foto/document/1557842102.jpg'),
(38, 2342, 'uploads/girls/gallery_foto/document/1557907928.jpg'),
(39, 2340, 'uploads/girls/gallery_foto/document/1557908191.jpg'),
(42, 2320, 'uploads/girls/gallery_foto/document/1558515147.jpg'),
(43, 2311, 'uploads/girls/gallery_foto/document/1558517902.jpg'),
(44, 2311, 'uploads/girls/gallery_foto/document/1558517917.JPG'),
(45, 2311, 'uploads/girls/gallery_foto/document/1558517945.JPG'),
(46, 2311, 'uploads/girls/gallery_foto/document/1558517960.jpg');

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
(6, 'Alexandra Berezyanskaya', 'alexandra.berezyanskaya@bridgematchmaker.com', 'alexandra_match3', 'match1', '202203f067c39fb6d4771909d195dc0e', 'Age 47 years, married for 21 year, 3 kids, 1 grandchild. More than 10 years of experience. 4 marriages in 2016. Works individually with every client. Communicative and very professional in question of relationships. Doctor of Psychology. A successful woman, a happy wife, mother and grandmother.', '47', 'Ukraine', 'Kiev', '+380666548539', '08:00 - 22:00', '12', '5', '', 'uploads/match/1547456661.jpg', '1'),
(9, 'Fedir Moskor', 'fedynchik78@gmail.com', 'fedynchik78', 'fedynchik78@gmail.com', '7b5647abd054e1dbc1eec9af5a36cf9b', 'Matchmaking is my calling. Many of my friends have met and became pairs with my help. Already 8 years i`m working as a professional matchmaker. I meet people from different parts of the world, different cultures and traditions. I have complicated and very interesting job. Building relationships is work of the man and woman as well. This is a job for two, who decided to change themselves. You are ready to work on new relationships. \r\nWelcome.', '47', 'Poland', 'Krakow', '+3809332234567', '08:00 - 16:00', '42', '4', 'If I made registration and filled up info about myself, how soon I will get results???\r\n- It is individual. In our database there is more than 1000 profiles and its always growing. I begin my work right after you will make a registration and will inform you if search is successful. You will get recent information from me frequently.', 'uploads/match/1537251777.jpeg', '1'),
(10, 'David Madrid', 'madrit@mail.com', 'madrit1963', 'madrit1963', 'a5af7651495d2d5363f26efe6c6899d5', 'My education - architect, but I work as psychologist for 6 years and almost for 2 years as matchmaker. \r\nI carefully look over my clients expectations. At same time you always can change or edit them. I think that I understand what women needs and how to find a man who will fit her. I talk a lot with my clients via phone. My method is 100% chance to get you a friend. Will it be love is depends more on clients themselves and how open they will be. Meetings with ladies that you choose will be in Kiev (Ukraine) or Moscow (Russia)', '46', '46', '', '+78093226011', '08:00 - 21:00', '65', '4', '', 'uploads/match/1537254160.jpg', '1'),
(11, 'Miroslava Fokina', 'miroslava785@gmail.com', 'miroslava785', 'miroslava', '7a19f868ace585156d4b7f3bac08eb34', 'I am very pleasant when I manage to find successful matches fast. But according to my experience it could happen in 3-6 months. If you are working with  me, then you will need to be patient. We will talk a lot before I could make a group of ladies who will be interesting to you. I am practicing clients meeting on neutral territory. Prague for example. Prague is a  very beautiful and romantic place for first meeting. Ona  first meeting I go with a lady, its my rule. I will call not so often and will save your time maximum possible. Among profiles that will be provided there won\'t be any mother with many kids or women with serious wealth problems. Besides I do not work with women who are older than 40 years old. In all other I am open-hearted and will do everything for your success.', '38', '38', '', '+4520369522', '10:00 - 20:00', '9', '3', '', 'uploads/match/1537255397.jpg', '1'),
(12, 'Viktoriya', '9359452@gmail.com', 'v.lialko', 'viktoria2544', '6a4e647e75175c1a5cb4dc6543fb68e9', 'My name is Victoria and I am working in a dating business for almost 10 year. We have a lot of successful stories but not as many as we want. People relationship is complicated and in order to reach positive result  both side should be open  and  patient.  I may warrantee that all you tell me  I will keep under  my hat.   You may ask me about everything that is connected with  the dating  service in Ukraine and  with visiting  Ukraine. I am open, easy-going and love what I do. \r\nWe are working with girls of any age. I believe that love is possible in any age and also I believe that everybody who wants to have  a happy family  may find what he/she is looking for. Everybody deserves love and be loved.  We may organize meeting in any  country that you  and  your girl  will choose. In many cases  girl\'s hometown is ideal place for meeting let alone Kharkiv is wonderful city and easy to get in. If you would like to meet  the girl  somewhere else it won\'t be a problem  if you choose  country that don\'t require  visa or a visa is easy to get.   First meeting in any case will be with me.  It is about both side safety and comfort and I may be help in many situation. \r\nI hope we will be your way to  a happy family.', '54', 'Ukraine', 'Kharkiv', '+380679359452', '8-30  21-30', '0', '5', '', 'uploads/match/1538563223.jpg', '0'),
(13, 'Migel Alonso', 'alonso899@gmail.com', '1alonso899', 'migel', 'e10adc3949ba59abbe56e057f20f883e', '	I am very pleasant when I manage to find successful matches fast. But according to my experience it could happen in 3-6 months. If you are working with me, then you will need to be patient. We will talk a lot before I could make a group of ladies who will be interesting to you. I am practicing clients meeting on neutral territory. Prague for example. Prague is a very beautiful and romantic place for first meeting. Ona first meeting I go with a lady, its my rule. I will call not so often and will save your time maximum possible. Among profiles that will be provided there won\'t be any mother with many kids or women with serious wealth problems. Besides I do not work with women who are older than 40 years old. In all other I am open-hearted and will do everything for your success.', '39', '39', '', '+696355201', '10:00 - 20:00', '19', '4', '', 'uploads/match/1538584902.jpg', '0'),
(14, 'Barsukova Svetlana', 'sveta.barsukova27@gmail.com', 'SvetOk Barsukova', 'svetabarsukova27', '8ab96c38499544b0e70e2896106d13cf', 'Hi, my name is Svetlana! I am 29 years old, I am not married, I don\'t have children! I received higher education in the National Pedagogical University. I am a teacher! My level of English is advanced!\r\nI have been working in this field for more than three years! I will be happy to help people find their soulmates and connect their hearts! I am sure that I will be able to share my experience with strangers! I am a versatile person, I can carry on conversations on various topics!\r\nI know how to organize meetings, having communicated in advance with both candidates, having discussed where it would be more comfortable for them to meet! \r\nHaving learned about the candidacy, I select the soulmates according to their interests, as well as their hobbies and lifestyle! As I have already said you can talk to me on various topics and I will be able to answer all the questions, but there are also questions that can be missed, for example, not formal relations, politics, and also religion. We suggest organising meetings in Ukraine, in the city of Nikolaev! Nikolaev is a beautiful city, where you can go sightseeing, enjoy its beauty and have a great time!', '29', 'Ukraine', 'Nikolaev', '+380939772923', '11.00  - 21.00 ', '', '3', '', 'uploads/match/1539602174.jpg', '0'),
(15, 'anna', 'anna2596@gmail.com', '', 'anna2596', 'ae8b50d460365d0a1b79cdcf87af5be0', '', '', '', '', '', '', '', '1', '', 'uploads/match/avatar.jpg', '0'),
(16, 'Evgeniya', 'androjane82@gmail.com', '', 'Evgeniya', '41431a27e735d8a89137a618a7a41f15', '', '', '', '', '', '', '', '1', '', 'uploads/match/avatar.jpg', '0'),
(17, 'Kristina', 'ivckristina@gmail.com', '', 'Kristina0112', '15b3805b70ccf3c54909fb5ab9387dd5', '', '', 'Ukraine', 'Kiev', '+380 93 889 7373 ', '', '', '5', '', 'uploads/match/avatar.jpg', '0'),
(18, 'Elena', 'kamila_egency@ukr.net', '', 'Kamila19', 'becd46fa1cdffc8cb5885547bf37dbc5', '', '', 'Ukraine', 'Rivne ', '+380686850956', '', '', '5', '', 'uploads/match/1556784673.jpg', '0');

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
(18, 500, 'dmitry.plohotnyuk@gmail.com', '', '', '', 4, 0, 'match1', 'Клиент ID: отправил E-Mail для девушки ID:4', '', '0000-00-00 00:00:00', 'Текст письма. Текст письма. Текст письма. Текст письма.  Text TEXT  Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT Text TEXT', 'uploads/client/email/1536139215.jpg', 'TEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXTTEXT Text TEXT Text TEXT Text TEXT', '2018-09-05', '2018-09-05', 2),
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
(36, 501, 'afrikanez78@gmail.com', '', '', '', 2314, 1, '', 'Клиент ID:501 заказал Skype для девушки ID:2314', '                                            ', '2018-12-26 13:00:00', '', '', '', '2018-12-25', '0000-00-00', 0),
(37, 579, 'mich.butt@yahoo.com', '', '', '', 2317, 0, 'match1', 'Клиент ID:579 отправил E-Mail для девушки ID:2317', '', '0000-00-00 00:00:00', 'Hello! you are a pure dream, I am seeking a woman to fall in love with. I live in the United States, but i am only 29. is that close enough or am i too young?', '', 'Hello Michael!\r\nIt’s nice to meet you. Thank you for such a compliment. \r\nMaybe you can tell me more what is a pure dream for you. I mean can you tell me what a lady are you looking for? I don’t mind to meet closer and it will be pleasant to know something more about you and your life. What lead you to the search of your lady abroad? What traits you value more in a lady? What plans do you have for your future?  \r\nI’ll be glad to continue our communication. \r\nMarina \r\n', '2019-02-18', '2019-02-21', 2),
(38, 579, 'mich.butt@yahoo.com', '', '', '', 2317, 0, 'match1', 'Клиент ID:579 отправил E-Mail для девушки ID:2317', '', '0000-00-00 00:00:00', 'I am seeking a kind gentle woman who loves lots of affection and is willing to try things, but is a bit of a home body, and does not need expensive things or to go out and party and drink. Someone who loves movies and or books.   I would love a girl who likes to be snuggled on the sofa and be called a good girl, and have her bottom rubbed and adored.  I am a motion picture maker with a small following, but i am not very much into YouTube. you can watch the trailers of my films and see my work here www.more-onproductions.weebly.com. So i would love to continue my work with that, as my films are enjoyed by television watchers. I would love to turn it into my only source of income, but for now i have to continue my day job, or find a new better one. so id just love to add a woman like you to my life.   Do you have a face book or other social media we could speak better on?  ', '', '', '2019-02-25', '2019-02-27', 3),
(39, 534, 'Jdavid03899@gmail.com', '', '', '', 2330, 0, 'match1', 'Клиент ID:534 отправил E-Mail для девушки ID:2330', '', '0000-00-00 00:00:00', 'fhdfhndfnjdfgnfgnfrgtn', '', '', '2019-02-27', '2019-02-27', 3);

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
(19, '11_0.094195001559818045', 0, 'GOLD', 508, '299', 0, 'Order of the tariff plan GOLD', 'pastabank', '', '2019-06-06 13:47:25', '0000-00-00 00:00:00', 0),
(18, '10_0.133766001559816520', 0, 'SILVER', 500, '99', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2019-06-06 13:22:00', '2019-06-06 13:22:25', 1),
(17, '9_0.831359001559815732', 0, 'SILVER', 500, '99', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2019-06-06 13:08:52', '0000-00-00 00:00:00', 0),
(16, '8_0.705748001559128013', 0, 'SILVER', 508, '99', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2019-05-29 14:06:53', '0000-00-00 00:00:00', 0),
(15, '7_0.955098001545729062', 35, '', 501, '50', 1, 'Order of the gift', 'pastabank', '', '2018-12-25 11:11:02', '2018-12-25 11:12:27', 1),
(14, '6_0.821975001545579695', 34, '', 500, '62', 1, 'Order of the gift', 'pastabank', '', '2018-12-23 17:41:35', '2018-12-23 17:41:58', 1),
(13, '5_0.862164001545579103', 33, '', 500, '67', 2, 'Order of the gift', 'pastabank', '', '2018-12-23 00:00:00', '2018-12-23 17:32:27', 1),
(12, '4_0.419987001545578176', 32, '', 500, '67', 1, 'Order of the gift', 'pastabank', '', '2018-12-23 17:16:16', '0000-00-00 00:00:00', 0),
(9, '9_0.912657001544163389', 0, 'GOLD', 500, '99', 0, 'Order of the tariff plan GOLD', 'pastabank', '', '2018-12-07 08:16:29', '2019-06-06 13:18:19', 1),
(10, '10_0.534332001544172574', 0, 'SILVER', 500, '69', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2018-12-07 10:49:34', '2018-12-07 10:52:16', 1),
(11, '3_0.870196001544526314', 0, 'SILVER', 501, '69', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2018-12-11 13:05:14', '2018-12-11 13:06:06', 1),
(20, '12_0.418887001560331531', 0, 'SILVER', 508, '99', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2019-06-12 12:25:31', '0000-00-00 00:00:00', 0),
(21, '13_0.431735001560765148', 0, 'GOLD', 508, '299', 0, 'Order of the tariff plan GOLD', 'pastabank', '', '2019-06-17 12:52:28', '0000-00-00 00:00:00', 0),
(22, '14_0.587361001561363362', 0, 'SILVER', 508, '99', 0, 'Order of the tariff plan SILVER', 'pastabank', '', '2019-06-24 11:02:42', '0000-00-00 00:00:00', 0);

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
(45, '539', 'american', 'Jewish', '6 feet 2 inches (187.96 cm)', '205 lbs (93 kg)', 'Athletic', 'Blue', 'Brown', 'University Degree', 'Negative', 'Single', 'Heterosexual', 'two years', 'Tech Sales Specialist Hewlett-Packard', '20.000-35.000$', 'No', 'English', 'Yes', 'Yes', 'Watching movies; Listening to music; Watching TV; Reading; Parties; Traveling; Shopping; Talking with friends; Religious Community; Conversation; Hosting / Entertaining; ', 'No dogs. I am allergic but I love cats', 'History, traveling, movies, reading, writing, visiting friends', 'night owl', 'Smart, steady, strong, and sweet', 'I do things according to my plan; I take time out for others; I seek adventure; I desire sexual activity; I think it is important to improve myself; I care about the physical shape I am in; I feel better when I am around other people; ', 'I Creating romance in a relationship; Finding and taking on challenging activities; Finding compromise in relationship; ', 'A serious relationship needs to be monogamous; I know I can always count on the people who are closest to me; To my mind being monogamous helps build trust in a romantic relationship; It is important for me to have close friends in my life; ', 'dream tech job, living in Germany or Austria, beautiful wife, traveling, lots of romance, and maybe a kid eventually', 'Cheating is very hard for me to forgive', 'I want to move to Europe for the chance at a better life.', 'many reasons. Women cheated, didn\'t want relationship, or didn\'t know what they wanted', 'two or three', '26-35', '5 feet 0 inches (152.40 cm) - 5 feet 8 inches (172.72 cm)', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Doesn\'t matter', 'Doesn\'t matter', 'of course', 'Never Married', 'Negative', 'Sexy, smart, steady, strong, and sweet', 'Cheating, lying, dishonesty,', 'that would make things much easier for us in person of course', '', 'Sexy, smart, steady, strong, and sweet', 'Sexy, smart, steady, strong, and sweet', 'Viber; WhatsApp; ', '', 'Bridge of Love website'),
(46, '540', 'american', '', '5 feet 10 inches (177.80 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Brown', 'Ligh-brown', 'Collage', 'Don\'t know', 'Single', 'Heterosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(47, '541', 'american', 'Chatholic', '6 feet 0 inches (182.88 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Brown', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', 'All My Life ', 'Professional Driver', '60.000-75.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', '                                        Facebook '),
(48, '542', 'argentinean', '', '5 feet 8 inches (172.72 cm)', '140 lbs (63.5 kg)', 'Athletic', 'Light-brown', 'Brown', 'University Degree', 'Don\'t know', 'Single', 'Heterosexual', '', '', '', 'No', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(49, '543', 'american', '', '5 feet 8 inches (172.72 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Hazel', 'Ligh-brown', 'High school', 'Don\'t know', 'Divorced', 'Heterosexual', '4 years', 'mechanic', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(50, '544', 'hungarian', 'Unitarian', '5 feet 9 inches (175.26 cm)', '130 lbs (59 kg)', 'Thin', 'Hazel', 'Brown', 'University Degree', 'Positive', 'Single', 'Heterosexual', 'Several Years', 'Acting Agent', '20.000-35.000$', 'No', 'English', 'No', 'No', 'Watching movies; Listening to music; Parties; Hosting / Entertaining; ', '', 'I live an exciting single lifestyle and am looking for someone similar to enjoy life with.  There is never a dull moment!', 'Night owl', '', 'I do things according to my plan; I take time out for others; I seek adventure; I desire sexual activity; I think it is important to improve myself; I care about the physical shape I am in; ', 'Keeping physically fit; Finding and taking on challenging activities; Finding compromise in relationship; ', 'When I get romantically involved, I tell about everything to my partner; A serious relationship needs to be monogamous; To my mind being monogamous helps build trust in a romantic relationship; It is important for me to have close friends in my life; ', '', 'I can forgive honest mistakes but not intentional ones like dishonesty.', '', '', '', '26-35', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', '', 'Doesn\'t matter', '', 'No', 'Never Married', 'Positive', 'Cute, fun-loving.', 'Dishonesty, unpleasantness, easily bored', 'Either is fine', '', 'I\'m pretty open to anyone as long as they are interested in me also.', '', 'Viber; WhatsApp; Telegram; ', '', '                                        '),
(51, '545', 'canadian', 'Atheist', '6 feet 4 inches (193.04 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Light-brown', 'Ligh-brown', 'Collage', 'Positive', 'Single', 'Heterosexual', '', 'Clerk', '60.000-75.000$', 'No', 'French', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(52, '546', 'american', 'Christian General', '6 feet 0 inches (182.88 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Brown', 'Black', 'High school', 'Negative', 'Divorced', 'Heterosexual', '6 years', '', '40.000-55.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(53, '547', 'american', 'Mormon', '6 feet 0 inches (182.88 cm)', '132 lbs (59.9 kg)', 'Athletic', 'Blue', 'Blond', 'University Degree', 'Negative', 'Single', 'Heterosexual', '', 'Farmer', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                    facebook ad                    '),
(54, '548', 'british', '', '5 feet 10 inches (177.80 cm)', '154 lbs (69.9 kg)', 'Athletic', 'Blue', 'Brown', 'University Degree', 'Negative', 'Single', 'Heterosexual', '', 'Business Owner', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(55, '549', 'russian', 'Atheist', '4 feet 0 inches (121.92 cm)', '90 lbs (40.8 kg)', '', 'Black', 'Black', '', 'Negative', '', 'Heterosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(56, '550', 'indian', '', '5 feet 7 inches (170.18 cm)', '144 lbs (65.3 kg)', 'Sportive', 'Light-brown', 'Black', 'University Degree', 'Negative', 'Single', 'Heterosexual', '', 'Digital Marketer', '20.000-35.000$', 'No', 'Marathi', 'Yes', 'No', 'Watching movies; Listening to music; Watching TV; Parties; Traveling; Shopping; Talking with friends; Hosting / Entertaining; ', '', 'dance, volleyball, swimming', 'fitness', 'Nagu', 'I do things according to my plan; I think it is important to improve myself; I care about the physical shape I am in; ', 'I Creating romance in a relationship; Finding and taking on challenging activities; ', 'I know I can always count on the people who are closest to me; It is important for me to have close friends in my life; ', '', 'nothing like that ', '', '', '', '18-25', '5 feet 0 inches (152.40 cm) - 5 feet 8 inches (172.72 cm)', '130 lbs (59 kg) -  150 lbs (68 kg)', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Doesn\'t matter', 'No', 'no', 'Never Married', 'Negative', 'honest, caring', 'angry', 'yes if she like to learn', 'active', 'beautiful', 'Naganath Ingle here currently working as Digital Marketing in Accenture and also do side business www.stratixdigital.com\r\ndone electronics engineering and MBA.\r\nMy facebook id is www.facebook.com/naganathingle\r\ninstagram - naganath_ingle\r\nwhatsapp - +919966669406\r\nsnapchat - naganath ingle\r\n\r\nmention bridge match when you text me. \r\n\r\nthank you.', 'WhatsApp; ', '', 'ad'),
(57, '551', 'american', 'Christian General', '6 feet 0 inches (182.88 cm)', '192 lbs (87.1 kg)', 'Athletic', 'Blue', 'Brown', 'University Degree', 'Don\'t know', 'Divorced', 'Heterosexual', '7 years', 'Proprietor', '100.000- more$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; English; ', '                                        from a friend.'),
(58, '552', 'canadian', 'Christian General', '5 feet 7 inches (170.18 cm)', '184 lbs (83.5 kg)', 'Overweight', 'Brown', 'Ligh-brown', 'High school', 'Don\'t know', 'Single', 'Heterosexual', 'too long', 'pension', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '       face book                                 '),
(59, '553', 'canadian', 'Chatholic', '5 feet 9 inches (175.26 cm)', '180 lbs (81.6 kg)', 'Sportive', 'Green-brown', 'Brown', 'University Degree', 'Positive', 'Single', 'Heterosexual', '6 months', 'engineer', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Facebook'),
(60, '554', 'american', '', '6 feet 1 inches (185.42 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Blue', 'Red', '', 'Negative', 'Divorced', 'Heterosexual', 'Not lonely', 'Customer Service Analyst', '40.000-55.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        Facebook'),
(61, '555', 'american', 'Christian General', '5 feet 8 inches (172.72 cm)', '180 lbs (81.6 kg)', '', 'Brown', 'Black', 'High school', 'Negative', 'Single', 'Heterosexual', '', '', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(62, '556', 'american', 'Christian General', '5 feet 10 inches (177.80 cm)', '220 lbs (99.8 kg)', 'Sportive', 'Hazel', 'Black', 'High school', 'Negative', 'Divorced', 'Heterosexual', 'Year', 'Driver', '60.000-75.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '   Facebook                                     '),
(63, '557', 'american', 'Chatholic', '5 feet 6 inches (167.64 cm)', '180 lbs (81.6 kg)', 'Sportive', 'Brown', 'Brown', 'High school', 'Don\'t know', 'Divorced', 'Heterosexual', 'To long', 'Retired', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '     From some ad on face book                                   '),
(64, '558', 'italian', 'Chatholic', '6 feet 0 inches (182.88 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Blue', 'Blond', 'Collage', 'Don\'t know', 'Window', 'Heterosexual', '4 years', 'Computers', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(65, '559', 'spanish', 'Christian Sientist', '5 feet 10 inches (177.80 cm)', '213 lbs (96.6 kg)', 'Athletic', 'Brown', 'Black', 'High school', 'Negative', 'Single', 'Heterosexual', '1', 'Construction', '40.000-55.000$', 'No', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        app\r\n\r\n'),
(66, '560', 'american', 'Christian General', '5 feet 9 inches (175.26 cm)', '175 lbs (79.4 kg)', 'Athletic', 'Blue', 'Ligh-brown', 'High school', 'Negative', 'Divorced', 'Heterosexual', '1year', 'Self employed handyman', '40.000-55.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '       Facebook                                 '),
(67, '561', 'american', 'Muslim', '4 feet 0 inches (121.92 cm)', '91 lbs (41.3 kg)', 'Thin', 'Black', 'Black', 'None', 'Negative', 'Single', 'Bisexual', '5', ' embroidery', '20.000-35.000$', 'No', 'Arabic', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', 'From fact book  '),
(68, '562', 'american', 'Chatholic', '6 feet 0 inches (182.88 cm)', '113 lbs (51.3 kg)', 'Athletic', 'Black', 'Black', 'Primary school', 'Negative', 'Single', 'Homosexual', '', '', '', 'Yes', 'Vietnamese', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(69, '563', 'afghan', '', '6 feet 4 inches (193.04 cm)', '121 lbs (54.9 kg)', '', 'Black', 'Blond', '', 'Positive', '', 'Heterosexual', '', '', '', 'Yes', 'Danish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(70, '564', 'albanian', '', '4 feet 0 inches (121.92 cm)', '90 lbs (40.8 kg)', '', 'Blue', 'Red', '', 'Don\'t know', '', 'Heterosexual', '', '', '', 'No', 'German', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(71, '565', 'american', '', '5 feet 7 inches (170.18 cm)', '199 lbs (90.3 kg)', 'Athletic', 'Light-brown', 'Ligh-brown', 'High school', 'Positive', 'Divorced', 'Heterosexual', '1 yr', 'Fire fighter ,bus driver', '60.000-75.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Facebook'),
(72, '566', 'american', 'Christian General', '5 feet 9 inches (175.26 cm)', '155 lbs (70.3 kg)', 'Thin', 'Hazel', 'Brown', 'High school', 'Don\'t know', 'Divorced', 'Homosexual', '1yr', 'Tech', '40.000-55.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(73, '567', 'american', 'Christian Sientist', '5 feet 8 inches (172.72 cm)', '130 lbs (59 kg)', 'Thin', 'Light-brown', 'Black', 'High school', 'Positive', 'Single', 'Heterosexual', '15 years ', 'Jantior ', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '       Website                                  '),
(74, '568', 'french', '', '5 feet 7 inches (170.18 cm)', '155 lbs (70.3 kg)', 'Sportive', 'Light-brown', 'Ligh-brown', '', 'Don\'t know', 'Divorced', 'Heterosexual', '', '', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(75, '569', 'american', '', '5 feet 10 inches (177.80 cm)', '160 lbs (72.6 kg)', '', 'Brown', 'Black', '', 'Don\'t know', 'Single', 'Heterosexual', '', '', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(76, '570', 'afghan', '', '4 feet 1 inches (124.46 cm)', '92 lbs (41.7 kg)', '', 'Grey-blue', 'Black', '', 'Negative', '', 'Heterosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(77, '571', 'british', 'Orthodox', '6 feet 5 inches (195.58 cm)', '159 lbs (72.1 kg)', '', 'Black', 'Ligh-brown', '', 'Positive', '', 'Heterosexual', '', '', '', 'No', 'Japanese', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(78, '572', 'czech', 'Atheist', '6 feet 5 inches (195.58 cm)', '160 lbs (72.6 kg)', 'Athletic', 'Light-brown', 'Red', 'Collage', 'Negative', 'Divorced', 'Heterosexual', '6', 'dgf', '75.000-100.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italian; ', '           dsfgdsfgdsfgdsfgds          dzgfdfgdsfgds                   '),
(79, '573', 'american', 'Christian General', '6 feet 1 inches (185.42 cm)', '210 lbs (95.3 kg)', 'Overweight', 'Hazel', 'Ligh-brown', 'None', 'Don\'t know', 'Single', 'Homosexual', 'All my life', 'Greenhouse associate', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Facebook ad'),
(80, '574', 'swedish', '', '5 feet 9 inches (175.26 cm)', '117 lbs (53.1 kg)', 'Thin', 'Grey-blue', 'Ligh-brown', 'University Degree', 'Positive', 'Divorced', 'Homosexual', '1', '', '75.000-100.000$', 'No', 'Italian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'French; ', '                                        '),
(81, '575', 'swedish', '', '5 feet 9 inches (175.26 cm)', '177 lbs (80.3 kg)', 'Sportive', 'Grey-blue', 'Hazel', 'University Degree', 'Don\'t know', 'Single', 'Heterosexual', '', '', '', 'Yes', 'Swedish ', 'Yes', 'Yes', 'Watching movies; Listening to music; Watching TV; Reading; Traveling; Talking with friends; Conversation; ', 'Love all animals', 'Easygoing, active,curious', 'both.Like spending nights drinking wine at home, love early mornings', 'Intresting, active, humble,curious', 'I take time out for others; I seek adventure; I desire sexual activity; I think it is important to improve myself; I care about the physical shape I am in; ', 'I Creating romance in a relationship; Keeping physically fit; Finding and taking on challenging activities; Finding compromise in relationship; ', 'When I get romantically involved, I tell about everything to my partner; A serious relationship needs to be monogamous; I know I can always count on the people who are closest to me; To my mind being monogamous helps build trust in a romantic relationship; Being monogamous is one of benefits of being in a successful relationship; I find it easy to get emotionally close to people; ', '', 'I forgive misstakes but not forgive disloyalty or lies', '', '', '', '36-45', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Doesn\'t matter', 'Doesn\'t matter', 'offcourse', 'Never Married', 'Nutral', 'soft,humble, funny,aktive', 'dishonesty', 'dosent matter, but english is a good start', '', 'easygoig, aktive, take care of herselv. loyal.', '', '', '', '                                        '),
(82, '576', 'armenian', 'Christian Sientist', '5 feet 7 inches (170.18 cm)', '160 lbs (72.6 kg)', 'Athletic', 'Green', 'Black', 'University Degree', 'Negative', 'Single', 'Heterosexual', '4', 'Autodetaliting ', '20.000-35.000$', 'Yes', 'Armenian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Russian; English; ', '                                        Qwerty iio'),
(83, '577', 'norwegian', 'Christian General', '6 feet 0 inches (182.88 cm)', '157 lbs (71.2 kg)', 'Thin', 'Blue', 'Blond', 'University Degree', 'Positive', 'Single', 'Heterosexual', '9 Years ', 'Retired Medical Doctor ', '40.000-55.000$', 'No', 'Norwegian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '            Internet                            '),
(84, '578', 'romanian', 'Orthodox', '5 feet 5 inches (165.10 cm)', '122 lbs (55.3 kg)', 'Thin', 'Blue', 'Blond', 'High school', 'Don\'t know', 'Single', 'Heterosexual', 'Few years ', 'Chef ', '40.000-55.000$', 'No', 'Romanian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Internet '),
(85, '579', 'american', 'Christian General', '5 feet 10 inches (177.80 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Blue', 'Blond', 'Collage', 'Negative', 'Single', 'Heterosexual', '6 years', 'Janitor /  writer', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; English; ', '                                    Looking up matchmaker on facebook    '),
(86, '580', 'american', '', '4 feet 2 inches (127.00 cm)', '93 lbs (42.2 kg)', '', 'Grey-blue', 'Ligh-brown', 'University Degree', 'Don\'t know', 'Divorced', 'Heterosexual', '', '', '', 'No', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Russian; French; German; Spanish; Italian; English; ', '                                        '),
(87, '581', 'cuban', 'Chatholic', '5 feet 8 inches (172.72 cm)', '125 lbs (56.7 kg)', 'Thin', 'Light-brown', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', '1 años', 'Pintor', '20.000-35.000$', 'No', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '     En Facebook                                   '),
(88, '582', 'american', '', '6 feet 6 inches (198.12 cm)', '220 lbs (99.8 kg)', 'Sportive', 'Grey', 'Ligh-brown', 'Collage', 'Positive', 'Divorced', 'Heterosexual', 'Recently ', 'Transportation', '60.000-75.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Web'),
(89, '583', 'pakistani', 'Muslim', '5 feet 6 inches (167.64 cm)', '137 lbs (62.1 kg)', 'Athletic', 'Black', 'Black', 'High school', 'Don\'t know', 'Single', 'Bisexual', '', 'Bessnismaan', '', 'No', 'Urdu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(90, '584', 'american', 'Baptist', '5 feet 9 inches (175.26 cm)', '180 lbs (81.6 kg)', '', 'Hazel', 'Ligh-brown', 'High school', 'Negative', 'Single', 'Heterosexual', '6 months', 'Supervisor ', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                Good hook up spot        '),
(91, '585', 'moroccan', 'Muslim', '5 feet 9 inches (175.26 cm)', '133 lbs (60.3 kg)', 'Sportive', 'Light-brown', 'Black', 'University Degree', 'Don\'t know', 'Single', 'Heterosexual', '2 years', 'artiste', '75.000-100.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        just on facebook'),
(92, '586', 'serbian', 'Orthodox', '5 feet 9 inches (175.26 cm)', '141 lbs (64 kg)', 'Athletic', 'Brown', 'Blond', 'High school', 'Don\'t know', '', 'Heterosexual', '', '', '', 'No', 'Serbian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '           Preko drustvenih mreza                             '),
(93, '587', 'maldivan', 'Muslim', '5 feet 7 inches (170.18 cm)', '146 lbs (66.2 kg)', 'Sportive', 'Black', 'Black', 'High school', 'Negative', 'Divorced', 'Heterosexual', '11 years ', 'Captain ', '100.000- more$', 'Yes', 'English', 'Yes', 'Yes', 'Watching movies; Reading; Traveling; Shopping; Talking with friends; Religious Community; Conversation; Hosting / Entertaining; ', 'Eclectus ', 'I am in very responsible man on the Ocean ', 'Yes ', 'Not yet it my on life ', 'I do things according to my plan; I desire sexual activity; I think it is important to improve myself; I get angry easily; ', 'I Creating romance in a relationship; Keeping physically fit; Finding and taking on challenging activities; Finding compromise in relationship; ', 'When I get romantically involved, I tell about everything to my partner; A serious relationship needs to be monogamous; To my mind being monogamous helps build trust in a romantic relationship; People often let me down if I depend on them; It is important for me to have close friends in my life; Being monogamous is one of benefits of being in a successful relationship; I sometimes find it difficult to trust people I get romantic relation; I find it easy to get emotionally close to people; ', 'I want my life partner and lovely wife ', 'I give my life ', 'I want fine my life partner and lovely wife ', 'I was agree in my experience ', 'It was good ', '36-45', '5 feet 8 inches (172.72 cm) - 5 feet 11 inches (180.34 cm)', '130 lbs (59 kg) -  150 lbs (68 kg)', 'Blue', 'Does not matter', 'Ukrainian', 'Doesn\'t matter', 'No', 'Yes ', 'Divorced', 'Positive', 'Yes ', 'I want that ', 'Yes English ', 'Not yet ', 'I was important my WhatApp and messenger ', 'Hi I am Ahmed Siraj \r\nI want my life partner and lovely wife hopefully instresting me \r\nRegards \r\nAhmed ', 'Viber; WhatsApp; ', '', '                                        Hi I was you my Life partner and I want lovely Wife '),
(94, '588', 'american', 'Christian General', '5 feet 10 inches (177.80 cm)', '220 lbs (99.8 kg)', 'Overweight', 'Light-brown', 'Blond', 'Collage', 'Negative', 'Single', 'Heterosexual', '', '', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        ');
INSERT INTO `questions` (`id`, `client_id`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `question50`, `question51`) VALUES
(95, '589', 'moroccan', 'Muslim', '5 feet 8 inches (172.72 cm)', '144 lbs (65.3 kg)', 'Athletic', 'Light-brown', 'Ligh-brown', 'University Degree', 'Don\'t know', 'Single', 'Heterosexual', 'two years', 'English teacher', '20.000-35.000$', 'No', 'Afrikanns', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'French; English; ', '                 in the internet (a social media plat form)                       '),
(96, '590', 'turkish', 'Muslim', '5 feet 7 inches (170.18 cm)', '155 lbs (70.3 kg)', 'Sportive', 'Grey-blue', 'Blond', 'University Degree', 'Negative', 'Divorced', 'Heterosexual', '', '', '20.000-35.000$', 'No', 'Turkish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(97, '591', 'indonesian', 'Muslim', '5 feet 9 inches (175.26 cm)', '133 lbs (60.3 kg)', 'Athletic', 'Brown', 'Black', 'None', 'Don\'t know', 'Single', 'Bisexual', '8 year', '', '', 'No', 'Indonesian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(98, '592', 'namibian', 'Christian General', '4 feet 4 inches (132.08 cm)', '', 'Athletic', 'Brown', 'Black', 'Collage', 'Negative', 'Single', 'Bisexual', '1 year', 'Love', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '              Just via friends                          '),
(99, '593', 'pakistani', 'Muslim', '5 feet 4 inches (162.56 cm)', '95 lbs (43.1 kg)', 'Athletic', 'Black', 'Ligh-brown', 'Collage', 'Negative', 'Divorced', 'Homosexual', '1', 'job', '20.000-35.000$', 'Yes', 'Urdu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                      freind                  '),
(100, '594', 'french', 'Atheist', '5 feet 9 inches (175.26 cm)', '156 lbs (70.8 kg)', 'Athletic', 'Light-brown', 'Brown', 'University Degree', 'Negative', 'Single', 'Heterosexual', '', '', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(101, '595', 'albanian', '', '4 feet 1 inches (124.46 cm)', '90 lbs (40.8 kg)', '', 'Light-brown', 'Black', '', 'Negative', '', 'Heterosexual', '', '', '', 'Yes', 'Danish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(102, '596', 'afghan', '', '4 feet 0 inches (121.92 cm)', '91 lbs (41.3 kg)', '', 'Grey-blue', 'Ligh-brown', '', 'Negative', 'Single', 'Heterosexual', '', '', '', 'Yes', 'Danish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(103, '597', 'albanian', '', '4 feet 1 inches (124.46 cm)', '91 lbs (41.3 kg)', '', 'Blue', 'Blond', '', 'Negative', '', 'Heterosexual', '', '', '', 'Yes', 'Spanish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(104, '598', 'albanian', '', '4 feet 2 inches (127.00 cm)', '93 lbs (42.2 kg)', '', 'Grey-blue', 'Red', 'University Degree', 'Positive', '', 'Homosexual', '', '', '', 'Yes', 'Italian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(105, '599', 'ugandan', 'Christian General', '5 feet 7 inches (170.18 cm)', '159 lbs (72.1 kg)', 'Thin', 'Black', 'Black', 'Collage', 'Negative', 'Single', 'Homosexual', '4years', 'Highy school', '20.000-35.000$', 'No', 'Afrikanns', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '   Online                                     '),
(106, '600', 'thai', 'Baptist', '5 feet 5 inches (165.10 cm)', '134 lbs (60.8 kg)', '', 'Black', 'Black', '', 'Don\'t know', 'Single', 'Heterosexual', '', '', '', 'No', 'Thai', '', 'Yes', '', '', 'สบายๆ', '', '', '', '', '', '', 'ได้', '', '', '', '18-25', 'Doesn\'t matter', 'Doesn\'t matter', 'Doesn\'t matter', 'Does not matter', 'Does not matter', 'Doesn\'t matter', '', 'ได้', 'Seperated', 'Negative', 'ดี', 'ไม่มี', '', '', 'สวย', '', '', '', '                                        '),
(107, '601', 'american', 'Chatholic', '6 feet 0 inches (182.88 cm)', '200 lbs (90.7 kg)', 'Athletic', 'Grey-blue', 'Ligh-brown', 'High school', 'Don\'t know', 'Single', 'Heterosexual', 'Lol once in a while', 'Machine operator', '40.000-55.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Spanish; ', '                                        Facebook'),
(108, '602', 'iranian', '', '5 feet 10 inches (177.80 cm)', '180 lbs (81.6 kg)', 'Sportive', 'Black', 'Black', 'University Degree', 'Negative', '', 'Heterosexual', '22 years', '', '40.000-55.000$', 'No', 'Persian', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(109, '603', 'american', 'Christian General', '5 feet 9 inches (175.26 cm)', '195 lbs (88.5 kg)', 'Athletic', 'Hazel', 'Brown', 'High school', 'Positive', 'Divorced', 'Homosexual', '1 year', 'Construction ', '60.000-75.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Scrolling'),
(110, '604', 'british', 'Muslim', '5 feet 8 inches (172.72 cm)', '220 lbs (99.8 kg)', 'Athletic', 'Black', 'Black', 'Collage', 'Negative', 'Single', 'Heterosexual', '3 year ', 'Personal trainer ', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        Through bridge of love '),
(111, '605', 'british', 'Muslim', '5 feet 8 inches (172.72 cm)', '220 lbs (99.8 kg)', 'Athletic', 'Black', 'Black', 'None', 'Positive', 'Single', 'Homosexual', '3 year ', 'Personal  trainer', '', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                                        '),
(112, '606', 'canadian', 'Muslim', '6 feet 0 inches (182.88 cm)', '195 lbs (88.5 kg)', 'Athletic', 'Light-brown', 'Black', 'University Degree', 'Don\'t know', 'Single', 'Heterosexual', '8 years', 'Owner', '20.000-35.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'French; English; ; ', '                                        Facebook'),
(113, '607', 'algerian', '', '4 feet 1 inches (124.46 cm)', '', '', 'Grey-blue', 'Ligh-brown', '', 'Negative', '', 'Homosexual', '', '', '', 'Yes', 'Danish', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(114, '608', 'afghan', '', '4 feet 2 inches (127.00 cm)', '93 lbs (42.2 kg)', 'Sportive', 'Grey-blue', 'Ligh-brown', '', 'Negative', '', 'Heterosexual', '', '', '', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '                                        '),
(115, '609', 'american', 'Christian General', '5 feet 7 inches (170.18 cm)', '180 lbs (81.6 kg)', 'Athletic', 'Light-brown', 'Ligh-brown', 'High school', 'Don\'t know', 'Single', 'Heterosexual', '2year', 'Construction', '40.000-55.000$', 'No', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'English; ', '                    On Facebook                    ');

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
-- Структура таблицы `setting_tours`
--

CREATE TABLE `setting_tours` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `setting_tours`
--

INSERT INTO `setting_tours` (`id`, `name`, `description`, `price`) VALUES
(1, 'Basic', 'Basic description 1', '3003'),
(2, 'Comfort', 'Comfort description 2', '2002'),
(3, 'Luxe', 'Luxe description 3', '');

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
(12, '2018-11-30 13:42:37', '2018-11-30 13:42:54', '500', 'dmitry.plohotnyuk@gmail.com', '', 'match1', '11232', 'dfasfasd dsf asdfaf', '1'),
(13, '2019-01-15 04:10:47', '2019-01-18 13:25:53', '544', 'thomasbchiki@gmail.com', '', 'match1', 'It seems as though I cannot view any profiles of the women.', 'Hello Thom!\r\nThank you for your message.\r\nSir, in order for you to have access to the Women Profiles, we ask you to provide more information about your search criteria. \r\nIt is very important for us to find out the purpose of your search, what your preferences are and by what criteria you want to choose a girl for creating new relationships.\r\nAs soon as your personal matchmaker receives more information about your search, we will begin work on the selection of profiles that we think match you  the best and you can start your communication.\r\nSincerely, Matchmaker.', '1'),
(14, '2019-01-18 18:49:12', '0000-00-00 00:00:00', '544', 'thomasbchiki@gmail.com', '', 'match1', 'I filled out all the required information and still do not see any profiles.', '', '0'),
(15, '2019-02-17 10:16:35', '0000-00-00 00:00:00', '539', 'beadle1023@icloud.com', '', 'match1', 'See if Yulya ID 119779 is wanting to exchange contact info so we can talk more easily. ', '', '0');

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
-- Индексы таблицы `clients_foto`
--
ALTER TABLE `clients_foto`
  ADD PRIMARY KEY (`foto_id`);

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
-- Индексы таблицы `girls_foto_document`
--
ALTER TABLE `girls_foto_document`
  ADD PRIMARY KEY (`foto_document_id`);

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
-- Индексы таблицы `setting_tours`
--
ALTER TABLE `setting_tours`
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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT для таблицы `clients_foto`
--
ALTER TABLE `clients_foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `clients_girl`
--
ALTER TABLE `clients_girl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT для таблицы `clients_services`
--
ALTER TABLE `clients_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT для таблицы `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- AUTO_INCREMENT для таблицы `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `girls`
--
ALTER TABLE `girls`
  MODIFY `girl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2354;

--
-- AUTO_INCREMENT для таблицы `girls_foto`
--
ALTER TABLE `girls_foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT для таблицы `girls_foto_document`
--
ALTER TABLE `girls_foto_document`
  MODIFY `foto_document_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT для таблицы `girls_invite`
--
ALTER TABLE `girls_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `matchmakers`
--
ALTER TABLE `matchmakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

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
-- AUTO_INCREMENT для таблицы `setting_tours`
--
ALTER TABLE `setting_tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `translators`
--
ALTER TABLE `translators`
  MODIFY `translator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
