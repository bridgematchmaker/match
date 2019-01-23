-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: vibergir.mysql.ukraine.com.ua
-- Время создания: Янв 23 2019 г., 19:50
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
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `clients_girl`
--
ALTER TABLE `clients_girl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `clients_services`
--
ALTER TABLE `clients_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_log`
--
ALTER TABLE `email_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `girls`
--
ALTER TABLE `girls`
  MODIFY `girl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `girls_foto`
--
ALTER TABLE `girls_foto`
  MODIFY `foto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `girls_invite`
--
ALTER TABLE `girls_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `matchmakers`
--
ALTER TABLE `matchmakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `request_tour`
--
ALTER TABLE `request_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `request_tour_price`
--
ALTER TABLE `request_tour_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `setting_gifts`
--
ALTER TABLE `setting_gifts`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `setting_tarif`
--
ALTER TABLE `setting_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `translators`
--
ALTER TABLE `translators`
  MODIFY `translator_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
