-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Авг 09 2018 г., 13:41
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `match`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `utm_source` varchar(128) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`user_id`, `email_client`, `password`, `first_name`, `last_name`, `country`, `telefon`, `foto`, `matchmaker_login`, `status_system`, `status_tarif`, `status_email`, `status_anketa2`, `status_verification`, `service`, `birthday`, `date_reg`, `date_tarif_set`, `utm_source`) VALUES
(1, 'Ivanov', '1', 'Ivan', 'Ivanov', '', '+380981234567', 'uploads/client/avatar.jpg', 'None', '1', '1', '0', '0', '0', '0', '1975-07-09', '2018-05-09', '0000-00-00', ''),
(2, 'email@gmail.com', '698d51a19d8a121ce581499d7b701668', 'Petya', 'Petrov', '', '+380931234567', 'uploads/client/avatar.jpg', 'match1', '3', '2', '0', '1', '0', '2', '1990-05-01', '2018-06-01', '2018-06-16', ''),
(3, 'email3@gmail.com', '3', 'Alex', 'Alexandrov', '', '+380681234567', 'uploads/client/avatar.jpg', 'match1', '2', '1', '0', '0', '0', '0', '1988-07-01', '2018-05-09', '2018-06-15', ''),
(4, 'dddd@gmail.com', '698d51a19d8a121ce581499d7b701668', 'Ivan', 'Petrov', 'United States', '+380981234567', 'uploads/client/1531827137.jpg', 'None', '0', '0', '0', '0', '0', '0', '2018-07-17', '0000-00-00', '2018-07-17', '');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_girl`
--

CREATE TABLE IF NOT EXISTS `clients_girl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `girl_name` varchar(64) NOT NULL,
  `conformity` varchar(64) NOT NULL,
  `date_add` date NOT NULL,
  `girl_status` varchar(64) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `clients_girl`
--

INSERT INTO `clients_girl` (`id`, `user_id`, `girl_id`, `girl_name`, `conformity`, `date_add`, `girl_status`) VALUES
(4, 2, 45, 'Anna', '9', '2018-05-16', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `clients_services`
--

CREATE TABLE IF NOT EXISTS `clients_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(64) NOT NULL,
  `letters` varchar(8) NOT NULL DEFAULT '0',
  `skypes` varchar(8) NOT NULL DEFAULT '0',
  `gifts` varchar(8) NOT NULL DEFAULT '0',
  `advice_match` varchar(8) NOT NULL DEFAULT '0',
  `assessment_match` varchar(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `clients_services`
--

INSERT INTO `clients_services` (`id`, `client_id`, `letters`, `skypes`, `gifts`, `advice_match`, `assessment_match`) VALUES
(1, '2', '3', '0', '0', '1', '0'),
(2, '4', '3', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `email_log`
--

CREATE TABLE IF NOT EXISTS `email_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  `email` varchar(64) NOT NULL,
  `subject` varchar(128) NOT NULL,
  `status` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `email_templates`
--

CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `subject` text NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `description`, `subject`, `content`) VALUES
(1, 'auto_email_1', 'Отправка письма клиенту после регистрации', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `girls`
--

CREATE TABLE IF NOT EXISTS `girls` (
  `girl_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `city` varchar(64) NOT NULL,
  `birthday` date NOT NULL,
  `foto` varchar(128) NOT NULL,
  `video` varchar(256) NOT NULL,
  `gallery_status` varchar(8) NOT NULL DEFAULT '0',
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
  `ask30` text NOT NULL,
  PRIMARY KEY (`girl_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `girls`
--

INSERT INTO `girls` (`girl_id`, `first_name`, `last_name`, `country`, `city`, `birthday`, `foto`, `video`, `gallery_status`, `login_match`, `dreams`, `meeting`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `ask1`, `ask2`, `ask3`, `ask4`, `ask5`, `ask6`, `ask7`, `ask8`, `ask9`, `ask10`, `ask11`, `ask12`, `ask13`, `ask14`, `ask15`, `ask16`, `ask17`, `ask18`, `ask19`, `ask20`, `ask21`, `ask22`, `ask23`, `ask24`, `ask25`, `ask26`, `ask27`, `ask28`, `ask29`, `ask30`) VALUES
(1, 'Polinka', 'Ivanova', 'Ukraine', 'Odessa', '2018-05-08', 'uploads/girls/1526380418.jpg', '35', '1', '', 'girl dreams', 'To meeting', '', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '', '15', '', '', '', '16', '17', '18', '', '19', '', '', '', '', '20', '', '21', '22', '23', '24', '25', '26', '27', '28', '29', '', '', '31', '31', 'polina1@gmail.com', '32', '33', '34', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `girls_foto`
--

CREATE TABLE IF NOT EXISTS `girls_foto` (
  `foto_id` int(11) NOT NULL AUTO_INCREMENT,
  `girl_id` int(11) NOT NULL,
  `foto` text NOT NULL,
  `status_foto` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`foto_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `girls_foto`
--

INSERT INTO `girls_foto` (`foto_id`, `girl_id`, `foto`, `status_foto`) VALUES
(3, 1, 'uploads/girls/gallery_foto/1526380865.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `girls_invite`
--

CREATE TABLE IF NOT EXISTS `girls_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `birthday` text NOT NULL,
  `marital_status` text NOT NULL,
  `message` text NOT NULL,
  `date_add` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `girls_invite`
--

INSERT INTO `girls_invite` (`id`, `name`, `email`, `phone`, `birthday`, `marital_status`, `message`, `date_add`) VALUES
(5, 'Test', 'Trst@gmail.com', '+380671234567', '33', 'TextText TextText TextText', 'TextTextTextTextTextTextTextTextTextTextTextTextTextText TextTextTextTextTextTextTextTextText TextTextTextTextTextTextTextTextText', '2018-06-12');

-- --------------------------------------------------------

--
-- Структура таблицы `matchmakers`
--

CREATE TABLE IF NOT EXISTS `matchmakers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` varchar(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `matchmakers`
--

INSERT INTO `matchmakers` (`id`, `name`, `email`, `skype`, `login`, `pass`, `description`, `age`, `country`, `phone`, `time`, `meetings`, `rating`, `answers`, `foto`, `status`) VALUES
(6, 'Alexandra Berezyanskaya', 'alexandra@bridgematchmaker.com', 'alexandra_match3', 'match1', '4e7a0323e43dcb20b9671d54d2edfb95', 'Age 47 years, married for 21 year, 3 kids, 1 grandchild. More than 10 years of experience. 4 marriages in 2016. Works individually with every client. Communicative and very professional in question of relationships. Doctor of Psychology. A successful woman, a happy wife, mother and grandmother.', '47', 'Ukraine', '+380681234567', '08:00 - 22:00', '7', '4', 'asdfasdfsdfs', 'uploads/match/1531143351.jpg', '1'),
(9, 'sdfasdffsdf', 'asdfsdf@gmail.com', '', 'asfsdf', 'ddacccdc49121375b1116d7c72918869', '', '', '', '', '', '', '5', '', 'uploads/match/1531741734.jpg', '');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_add` date NOT NULL,
  `header` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `notifications`
--

INSERT INTO `notifications` (`id`, `date_add`, `header`, `message`) VALUES
(1, '2018-07-03', '4123423', 'sadfsdfsd afasddf fasdfasd fd sf dasf adsf sd f sdf sdfsdf'),
(2, '2018-07-04', 'Привет мир 1ё13ё13123ё2', 'в ыаффыводлдар фывлдоад ыфвлоа фырвалоыфвл афывдло а фывлдо афывлода  фывлоа рфыдлвоа ');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications_status`
--

CREATE TABLE IF NOT EXISTS `notifications_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `date_read` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `notifications_status`
--

INSERT INTO `notifications_status` (`id`, `msg_id`, `client_id`, `date_read`) VALUES
(1, 1, 2, '2018-07-06');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(128) NOT NULL,
  `girl_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `match_login_processed` varchar(64) NOT NULL,
  `description1` text NOT NULL,
  `description2` text NOT NULL,
  `description3` text NOT NULL,
  `date_add` date NOT NULL,
  `date_end` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `user_email`, `girl_id`, `type`, `match_login_processed`, `description1`, `description2`, `description3`, `date_add`, `date_end`, `status`) VALUES
(1, 2, 'email2@gmail.com', 1, 1, '', 'Клиент ID:2 сделал заказ Skype звонка девушке ID:1', '', '', '2018-05-17', '0000-00-00', 0),
(2, 3, 'email3@gmail.com', 1, 0, 'match1', 'Клиент ID:3 Отправил E-Mail для девушки ID:1', 'Примечание 1', 'Примечание 2', '2018-05-17', '2018-05-17', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `question51` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `client_id`, `question1`, `question2`, `question3`, `question4`, `question5`, `question6`, `question7`, `question8`, `question9`, `question10`, `question11`, `question12`, `question13`, `question14`, `question15`, `question16`, `question17`, `question18`, `question19`, `question20`, `question21`, `question22`, `question23`, `question24`, `question25`, `question26`, `question27`, `question28`, `question29`, `question30`, `question31`, `question32`, `question33`, `question34`, `question35`, `question36`, `question37`, `question38`, `question39`, `question40`, `question41`, `question42`, `question43`, `question44`, `question45`, `question46`, `question47`, `question48`, `question49`, `question50`, `question51`) VALUES
(2, '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Yes', 'Yes', 'Watching TV; Traveling; Religious Community; ', '', '1', '', '', 'I seek adventure; I care about the physical shape I am in; ', 'Finding and taking on challenging activities; ', 'I know I can always count on the people who are closest to me; It is important for me to have close friends in my life; ', '', 'sdfgdfg', '', '', '', '18-25', '4 feet 0 inches (121.92 cm) - 5 feet 0 inches (152.40 cm)', '165 lbs (74.8 kg)-178 lbs (80.7 kg)', 'Brown', 'Black', 'Ukrainian', 'Ateist', '', 'sfd', 'Divorced', 'Negative', 'sdgfgsdg', 'sdfgsdfgsdfg', '', '', 'sdgsdgsdg', 'sdgdfgdsd', 'WhatsApp; ', '', ''),
(3, '4', 'afghan', 'Buddhist', '5 feet 8 inches (172.72 cm) - 5 feet 11 inches (180.34 cm)', '165 lbs (74.8 kg)-178 lbs (80.7 kg)', 'Athletic', 'Blue', 'Blond', '', 'Negative', 'Single', 'Heterosexual', 'dfgsdfgsd', 'dfgdfgg', '20.000-35.000$', 'Yes', 'English', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '; ; ', '                                        dfsafsdfasdf');

-- --------------------------------------------------------

--
-- Структура таблицы `setting_gifts`
--

CREATE TABLE IF NOT EXISTS `setting_gifts` (
  `gift_id` int(11) NOT NULL AUTO_INCREMENT,
  `gift_name` text NOT NULL,
  `gift_description` text NOT NULL,
  `gift_foto` varchar(128) NOT NULL,
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `setting_service`
--

CREATE TABLE IF NOT EXISTS `setting_service` (
  `id` int(11) NOT NULL,
  `letters` varchar(32) NOT NULL,
  `skypes` varchar(32) NOT NULL,
  `gifts` varchar(32) NOT NULL,
  `advice_match` varchar(32) NOT NULL,
  `assessment_match` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
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

CREATE TABLE IF NOT EXISTS `setting_tarif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tarif_name` varchar(32) NOT NULL,
  `tarif_price` varchar(32) NOT NULL,
  `tarif_day` varchar(32) NOT NULL,
  `tarif_letters` varchar(32) NOT NULL,
  `tarif_skypes` varchar(32) NOT NULL,
  `tarif_gifts` varchar(32) NOT NULL,
  `tarif_advice_match` varchar(32) NOT NULL,
  `tarif_assessment_match` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `setting_tarif`
--

INSERT INTO `setting_tarif` (`id`, `tarif_name`, `tarif_price`, `tarif_day`, `tarif_letters`, `tarif_skypes`, `tarif_gifts`, `tarif_advice_match`, `tarif_assessment_match`, `description`) VALUES
(1, 'free', '0', '15', '3', '0', '0', '0', '0', '<ul><li>aksjdf&nbsp; kasfdb sdkf</li><li>sd fkjasd f</li><li>sd as;ldkf a</li></ul>'),
(2, 'silver', '69', '30', '7', '2', '0', '1', '1', '<br>'),
(3, 'gold', '99', '60', '10', '3', '2', '5', '10', '<br>'),
(4, 'premium', '299', '120', '25', '10', '5', '10', '20', '<br>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
