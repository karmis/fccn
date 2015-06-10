-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 09 2015 г., 11:44
-- Версия сервера: 5.5.43-cll-lve
-- Версия PHP: 5.4.41

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `new_colornew`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Article`
--

CREATE TABLE IF NOT EXISTS `Article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `annotation` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `recommended` tinyint(1) NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `metaKeywords` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `Article`
--

INSERT INTO `Article` (`id`, `caption`, `annotation`, `content`, `created`, `updated`, `published`, `deleted`, `recommended`, `path`, `metaTitle`, `metaDescription`, `metaKeywords`, `slug`) VALUES
(1, 'Статья для магазина', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</span><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</span><span style="font-family: Arial, Helvetica, sans; font-size: 11px; line-height: 14px; text-align: justify;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</span></p>', '2015-05-03 15:53:12', '2015-05-26 15:34:16', 0, 1, 0, NULL, '', '', '', ''),
(2, 'Статья для landing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 02:50:09', '2015-05-26 12:11:33', 0, 1, 0, NULL, '', '', '', ''),
(3, 'Статья для визитки', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 02:50:46', '2015-05-26 15:34:01', 0, 1, 0, NULL, '', '', '', ''),
(4, 'Статья для корпоративного сайта', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 02:51:18', '2015-05-26 15:33:46', 0, 1, 0, NULL, '', '', '', ''),
(5, 'Не привязанная статья', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 02:51:32', '2015-06-01 12:13:29', 0, 1, 0, '55686a35219ff.jpeg', '', '', '', ''),
(6, 'Статья по минимуму', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 03:28:53', '2015-06-01 12:13:31', 0, 1, 0, '55686a3fd351d.jpeg', '', '', '', ''),
(7, 'Статья для всех', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 03:37:45', '2015-06-01 12:13:33', 0, 1, 0, '55686a43de7ed.jpeg', '', '', '', ''),
(8, 'Рекомендованная статья', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ex nunc, blandit nec varius quis, placerat eget metus. Nulla accumsan posuere erat, quis posuere mi mollis vel. Proin dignissim arcu vitae tellus convallis molestie. Nulla at imperdiet metus. Nunc consectetur risus quis tortor malesuada aliquam. Sed rutrum, arcu sed convallis auctor, purus nibh cursus lorem, ac aliquam mi tortor et lectus. Nunc aliquet augue quis porta gravida. Phasellus ac arcu nec mauris ornare viverra. Phasellus sed sapien et metus fermentum facilisis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam eu malesuada nisl.</p>', '2015-05-04 04:29:05', '2015-06-01 12:13:37', 0, 1, 1, '55686a479d83b.jpeg', '', '', '', ''),
(9, 'Еще одна статья', 'Еще одна статьяЕще одна статьяЕще одна статьяЕще одна статья', '<p>Еще одна статьяЕще одна статьяЕще одна статьяЕще одна статьяЕще одна статья</p>', '2015-05-26 10:43:38', '2015-06-01 12:13:39', 0, 1, 0, '55686a4c222c8.jpeg', '', '', '', ''),
(10, 'Еще одна статья', 'Еще одна статьяЕще одна статьяЕще одна статьяЕще одна статья', '<p>Еще одна статьяЕще одна статьяЕще одна статьяЕще одна статьяЕще одна статья</p>', '2015-05-26 10:45:05', '2015-05-26 15:37:52', 0, 1, 0, NULL, '', '', '', ''),
(11, 'Еще одна статья', 'Еще одна статьяЕще одна статьяЕще одна статьяЕще одна статья', '<p>Еще одна статьяЕще одна статьяЕще одна статьяЕще одна статьяЕще одна статья</p>', '2015-05-26 10:54:25', '2015-06-01 12:13:42', 0, 1, 0, '55686a53b66e7.jpeg', '', '', '', ''),
(12, '567567', '567567', '<p>567567</p>', '2015-05-26 12:10:41', '2015-05-26 15:36:56', 0, 1, 0, NULL, '', '', '', ''),
(13, '123', '123', '<p>123</p>', '2015-05-26 13:18:14', '2015-05-26 15:36:45', 0, 1, 1, NULL, '', '', '', ''),
(14, '123', '123', '<p>123</p>', '2015-05-26 13:18:48', '2015-05-26 15:36:38', 0, 1, 1, NULL, '', '', '', ''),
(15, '123', '123', '<p>123</p>', '2015-05-26 16:22:35', '2015-05-28 16:03:36', 0, 1, 0, NULL, '', '', '', ''),
(16, '123', '123', '<p>123</p>', '2015-05-26 16:22:39', '2015-05-28 16:03:53', 0, 1, 0, NULL, '', '', '', ''),
(17, '123', '123', '<p>123</p>', '2015-05-26 16:23:39', '2015-05-28 16:03:47', 0, 1, 0, NULL, '', '', '', ''),
(18, '123', '123', '<p>123</p>', '2015-05-26 16:23:51', '2015-05-28 16:03:41', 0, 1, 0, NULL, '', '', '', ''),
(19, '123', '123', '<p>123</p>', '2015-05-28 18:47:50', '2015-05-28 18:48:15', 0, 1, 0, NULL, '', '', '', ''),
(20, '123', '123', '<p>123</p>', '2015-05-28 18:47:58', '2015-05-28 18:48:23', 0, 1, 0, NULL, '', '', '', ''),
(21, '123', '123', '<p>123</p>', '2015-05-28 21:19:06', '2015-05-28 21:19:58', 0, 1, 0, NULL, '', '', '', ''),
(22, '123', '123', '<p>123</p>', '2015-05-28 21:19:09', '2015-06-01 12:14:05', 0, 1, 0, '55686a579dfd0.jpeg', '', '', '', ''),
(23, '575757474775474754745', '675467', '<p>5674567467</p>', '2015-05-29 18:39:46', '2015-06-01 12:14:08', 0, 1, 1, '556888427fd1f.jpeg', '', '', '', ''),
(24, 'Сайты на 1С Битрикс', 'Мы разрабатываем сайты на разных системах управления, включая 1С-Битрикс. Преимущество этой системы управления описано в данной статье.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Мы разрабатываем сайты на разных системах управления, включая 1С-Битрикс. Преимущество этой системы управления описано в данной статье.&nbsp;<br /> <br /> Несколько задач, когда следует купить 1С-Битрикс и заказать сайт на 1С-Битрикс:&nbsp;<br /> <br /> 1. У Вас планируется нестандартный функционал сайта, требующий детальной проработки;<br /> 2. На Вашем сайте будет реализована большая структура и расширяемый каталог товаров (или услуг);&nbsp;<br /> 3. На Вашем сайте планируется сервис для приема заявок с online оплатой;&nbsp;<br /> 4. На Вашем сайте планируется разделение пользователей (или создание разных групп пользователей) с разными правами;&nbsp;<br /> 5. Ваш сайт планируется с высокой степенью посещаемости и нагрузки;&nbsp;<br /> 6. Вам хочется очень удобную систему управления и администрирования, при этом не зависеть от разработчиков сайта;&nbsp;<br /> 7. Вам хочется безопасную систему управления с высокой степенью шифрования и защиты данных.&nbsp;<br /> <br /> Если хотя бы один из пунктов совпадает с Вашими требованиями, Вам точно нужно заказать создание сайта на 1С-Битрикс!&nbsp;<br /> <br /> - Создание сайта 1С-Битрикс позволит Вам воплотить в проект любые пожелания и не ограничивать себя в функционале.&nbsp;<br /> <br /> - Заказав создание сайта на 1С-Битрикс, Вы будете пользоваться двухсторонней технической поддержкой &ndash; как со стороны разработчиков, так и со стороны компании 1С-Битрикс.<br /> <br /> - На 1С-Битрикс реализована легкая интеграция с 1С в один клик! Вам будет очень просто связать каталог созданной базы на Вашем компьютере с сайтом!&nbsp;<br /> <br /> - Огромное количество готовых решений: 1C-Битрикс для городских, медицинских, образовательных учреждений, а также пакеты 1С-Битрикс управления бизнесом в виде CRM-системы и корпоративные сайты.&nbsp;<br /> <br /> - Удобное резервирование сайта (бекап) на сервер Битрикса позволит всегда хранить копию сайта &laquo;на всякий случай&raquo;, а купленная лицензия на Ваше имя позволит в любой момент восстановить доступы к сайту, если даже логин и пароль утеряны.&nbsp;<br /> <br /> 1С-Битрикс специально разработал несколько готовых систем управления: 1С-Битрикс старт, стандарт, малый бизнес, эксперт. Мы поможем определиться с редакцией, которая нужна именно Вам, а также разработаем для Вас сайт на одной из самых удобных и безопасных системах управления &ndash; 1С-Битрикс!&nbsp;<br /> <br /> <strong>Заказав разработку сайта на 1С-Битрикс у нас, Вы получаете:</strong> <br /> <br /> 1. Бесплатное написание технического задания (если его нет),&nbsp;<br /> 2. Скидку на разработку сайта, равную стоимости лицензии 1С-Битрикс,&nbsp; <br /> 3. Прототип сайта бесплатно,&nbsp; <br /> 4. Техническую поддержку в режиме online,&nbsp; <br /> 5. Подробную инструкцию по проекту.&nbsp;<br /><br /> <span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">E-mail:</span><a href="mailto:support@colornew.ru"><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">support@colornew.ru</span></a> <br /> <br /> Skype:<a href="skype:colornew.ru?add">colornew.ru</a>(круглосуточно)<br /> <br /> Тел.: +7 (4922) 60-02-32 (пн-пт с 10.00 до 19.00)&nbsp;<br /> <a class="fancybox" href="#forma_zvonok">Заказать обратный звонок</a> <br /> Возможна <a href="../../../../site-in-installments.html" target="_blank">рассрочка</a> на разработку сайта <br /> <strong>Ответы на часто-задаваемые вопросы:</strong> <br /> <br /> <strong> 1. Стоимость разработки сайта не входит в стоимость 1С-Битрикс? </strong> <br /> <br /> Нет, система 1С-Битрикс покупается отдельно от разработки. Это всего лишь программный продукт, на котором будет разрабатываться в последствии Ваш сайт.&nbsp; <br /> <br /> Если Вы заказываете создание сайта на 1С-Битрикс у нас, мы предоставляем Вам скидку на разработку, равную стоимости купленной лицензии, то есть сам 1С-Битрикс для Вас получается бесплатным!&nbsp;<br /> <br /> <strong>2. Покупка 1С-Битрикс производится один раз, абонентских плат нет?</strong> <br /> <br /> 1С-Битрикс покупается один раз. При необходимости на следующий год, Вы дополнительно можете приобрести обновления системы (по желанию).&nbsp; <br /> <br /> <strong> 3. Почему проекты на 1С-Битрикс больше по стоимости? </strong> <br /> <br /> Процесс разработки сайтов на 1С-Битрикс достаточно трудоемкий и более долгий. Поэтому и стоимость разработки проектов на 1С-Битрикс немного дороже чем на других системах управления.</p>\r\n</body>\r\n</html>', '2015-06-01 11:49:11', '2015-06-03 16:29:55', 1, 0, 1, '556c284f6dbda.jpeg', 'Сайты на 1С Битрикс - ColorNew Интернет Студия', 'Сайты на 1С Битрикс, asdasdasdasdasd', 'Сайты на 1С Битрикс,asdasasdasd', '1c-bitrix'),
(25, 'Преимущества UMI CMS', 'Мы предлагаем всем Заказчикам при заказе сайта выбрать систему управления UMI CMS, с помощью которой можно легко и просто изменить информацию на сайте.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<div>При заказе сайта Заказчик обычно не задумывается об удобстве управления ним.<br /> <br /> Как правило, Заказчик на первом этапе думает, что обновление сайта ему и вовсе не потребуется.&nbsp;<br /> <br /> Что же бывает после одного-двух месяцев, когда проект уже в сети? Заказчику потребуется обновить новости на сайте, опубликовать новые реквизиты, или загрузить фотографии. Все бесплатные системы управления, конечно, дают Заказчику эту возможность, но без интуитивного и понятного интерфейса, поэтому у многих Заказчиков возникают сложности при обновлении информации на сайте и они обращаются за помощью к специалистам, оплачивая их труд. Но зачем дополнительно платить кому-то за обновление информации, когда на дворе 21 век!&nbsp;<br /> <br /> Мы предлагаем всем Заказчикам при заказе сайта выбрать систему управления UMI CMS, с помощью которой можно легко и просто изменить информацию на сайте.&nbsp;</div>\r\n</body>\r\n</html>', '2015-06-01 11:50:44', '2015-06-03 16:51:20', 1, 0, 0, '556c2856d17b2.jpeg', 'Преимущества UMI CMS - ColorNew Интернет Студия', '=', '=', 'umi'),
(26, 'Техническое задание для сайта', 'Техническое задание – это перечень требований Заказчика к проекту, документ который связывает Дизайнера, Программиста и самого Заказчика.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Техническое задание &ndash; это перечень требований Заказчика к проекту, документ который связывает Дизайнера, Программиста и самого Заказчика.&nbsp; <br /> <br /> Перед тем как приступить к реализации какой-либо идеи, эту идею необходимо придумать и описать.&nbsp; <br /> <br /> Многие клиенты спрашивают &laquo;Сколько будет стоить сайт&raquo;? Вполне справедливый вопрос. Сайт будет стоить столько, сколько времени на его разработку будет затрачено. Определить объем работ и, соответственно, время любой специалист может только после того, как получит полный перечень требований к проекту, который и называется Техническое задание.&nbsp; <br /> <br /> Для всех наших клиентов, мы предлагаем&nbsp; <strong>разработку технического задания</strong> перед созданием сайта&nbsp; <strong>бесплатно</strong> &nbsp;(при условии заказа сайта после написания тех.задания).&nbsp; <br /> <br /> Написание технического задания мы осуществляем в несколько этапов:&nbsp; <br /> <br /> 1. Анализируем сайты конкурентов;&nbsp;<br /> <br /> 2. Пишем требования к дизайну сайта на основе выгод и преимуществ, которые представят сайт в более выгодном положении, чем у конкурентов;&nbsp;<br /> <br /> 3. Описываем структуру сайта, понятную как для людей, так и для поисковых машин (Яндекс, Google) , для того, чтобы сайт был на первых позициях.&nbsp;<br /> <br /> 4. Описываем странички сайта, которые должны быть в Вашем проекте.&nbsp;<br /> <br /> Все эти работы мы делаем для Вас! От Вас лишь нужно уделить 15 минут в день, чтобы прочитать наше, написанное для Вас, техническое задание и внести свои пожелания и корректировки.&nbsp;<br /> <br /> Обычно, написание Тех.задания строится таким образом: мы с Вами обговариваем какой-либо пункт сайта, далее, мы уже со своей стороны описываем этот пункт, предлагаем идеи и решения, затем присылаем Вам на оценку и утверждение, при необходимости вносим правки.&nbsp;<br /> <br /> В итоге, у Вас получится документ, именуемый Техническое задание на изготовление сайта. На некоторые проекты, Техническое задание, конечно, не нужно и стоимость таких проектов можно определить сразу. Например, если у Вас небольшой сайт-визитка из 5 страниц, который можно описать тремя предложениями. Но если у Вас крупный проект, на котором выложено максимальное количество услуг и Вы хотите получить от этого проекта максимальную отдачу, здесь уже перед тем, как его разрабатывать, структуру необходимо продумать и описать.&nbsp;</p>\r\n<p>А что если не писать Техническое задание и сразу начать разрабатывать сайт? &nbsp;<br /> <br /> Многие компании так и поступают, заключая договор на одном листке. При этом, как правило, Заказчик не получает того, что хотел, а компания показывает Заказчику договор и говорит, что все условия по разработке сайта она выполнила. В итоге, Заказчик хотел дом, а получил шалаш. Все это произошло потому, что Исполнителю не был представлен документ, описывающий подробно весь сайт.&nbsp; <br /> <br /> Компания "ColorNew" LLC сделала множество успешных проектов в сети, а все благодаря тому, что перед разработкой сайта мы подробно продумываем с Заказчиком структуру, обсуждаем дизайн и анализируем конкурентов и все это делаем абсолютно бесплатно при условии сотрудничества с нами.&nbsp;<br /> <br /> <strong>Как происходит разработка сайта у нас:</strong><br /> <br /> 1. Заказчик заполняет краткую бриф-анкету в произвольной форме по изначальным требованиям к предполагаемому сайту.&nbsp; <br /> <br /> 2. На основе заполненной бриф-анкеты мы формируем ориентировочную смету расходов на создание будущего сайта.&nbsp; <br /> <br /> 3. Если предварительная смета устроила Заказчика, заключаем Договор на создание сайта, по условиям которого, первым этапом является разработка Технического задания и данная разработка является бесплатной, при условии дальнейшего сотрудничества.&nbsp;<br /> <br /> 4. После написания Технического задания, мы формируем окончательную смету расходов по требованиям, которые были изложены в данном Техническом задании.&nbsp;<br /> <br /> 5. Заказчик может отказаться от окончательной сметы расходов и уйти с нашим Техническим заданием в другую компанию. В этом случае, Заказчик оплачивает стоимость разработки Технического задания из расчета 250 руб./страница. Над Техническом заданием будут трудиться специалисты и вкладывать в него все свои идеи и мысли. Итогом будет являться полностью продуманный сайт как с эстетической стороны (дизайн), так и с внутренней (страницы, программный код, навигация).&nbsp;</p>\r\n<p><span style="text-decoration: underline;"><a href="../../../../become-a-client.html">Закажите сайт у нас</a></span>&nbsp;и Вы получите написание технического задания бесплатно!&nbsp;</p>\r\n<p><span style="text-decoration: underline;"><a href="../../../../become-a-client.html">Стать клиентом и получить консультацию</a></span></p>\r\n</body>\r\n</html>', '2015-06-01 11:51:32', '2015-06-07 12:04:14', 1, 0, 1, '556c286354474.jpeg', 'Техническое задание для сайта', '=', '=', 'tech-task-site'),
(27, 'Программа лояльности', 'Уважаемые клиенты и гости веб-студии! В данной статье мы хотим рассказать о нашей программе лояльности для клиентов и о возможностях реализовать любой проект, каким бы сложным и уникальным он не был.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Уважаемые клиенты и гости веб-студии! В данной статье мы хотим рассказать о нашей программе лояльности для клиентов и о возможностях реализовать любой проект, каким бы сложным и уникальным он не был.&nbsp;<br /> <br /> <strong>1. Уменьшение стоимости разработки.&nbsp;</strong><br /> <br /> Стоимость каждого проекта мы всегда определяем в зависимости от количества трудо-часов работы наших специалистов.&nbsp;<br /> <br /> Например, крупный портал стоимостью 50 000 руб. и сроком разработки в 20 рабочих дней можно уменьшить в цене за счет увеличения сроков до 30 рабочих дней. При этом каждый дополнительный рабочий день равен 300 руб. В итоге Вы получите проект, который обойдется Вам на 3 тыс. рублей дешевле.&nbsp;<br /> <br /> В данном подходе мы убиваем 2-х зайцев сразу. Во-первых, Вы получаете скидку в размере 3 тыс. руб., во-вторых у наших специалистов появляется дополнительное рабочее время для работ над более мелкими проектами параллельно Вашему.&nbsp;<br /> <br /> Максимальная сумма скидки не может превышать 10% от стоимости проекта.&nbsp;<br /> <br /> <strong>2. Сайт в рассрочку!</strong>&nbsp;<br /> <br /> Мы предлагаем всем нашим клиентам сайт в рассрочку на 4, или 6 месяцев, причем разработанный проект мы полностью передаем в Ваше распоряжение.&nbsp;<br /> <br /> Ваш сайт будет готов уже через 2 недели! Вы будете получать заказы с сайта, параллельно оплачивая рассрочку.&nbsp;<br /> <br /> <strong>3. Общение со всеми специалистами online.</strong>&nbsp;<br /> <br /> Мы работаем с клиентами по всей России. Обычно, общение происходит по средствам Skype. Это очень удобно, так как не нужно тратить время на то, чтобы приезжать в офис, дожидаться специалиста и т.д.&nbsp;<br /> <br /> Мы убрали всю бюрократию и сделали удобное общение со всеми сотрудниками. В процессе разработки Вы можете лично пообщаться не только с Вашим менеджером, который ведет проект, но и с другими специалистами, которые работают над Вашим проектом.&nbsp;<br /> <br /> <strong>4. Электронный документооборот.</strong>&nbsp;<br /> <br /> Мы заключаем договоры на всей территории России и даже за рубежом, используя электронный документооборот. Оригиналы документов при необходимости высылаются курьерской службой. Мы ценим Ваше время и считаем, что в 21 веке бумажную волокиту нужно упрощать!&nbsp;<br /> <br /> <strong>5. Любые способы оплаты.</strong>&nbsp;<br /> <br /> Для наших клиентов есть все виды оплаты услуг &ndash; наличный, безналичный (для организаций и ИП), электронные платежные системы Яндекс.Деньги, WebMoney, QIWI, или оплата через салоны связи &laquo;Евросеть&raquo;.&nbsp;<br /> <br /> <strong>6. Только индивидуальный подход!</strong>&nbsp;<br /> <br /> Мы обязательно пойдем Вам на встречу и создадим те условия, которые будут выгодны Вам! Кроме хороших скидок на сайты, нашим постоянным клиентам мы бесплатно пишем информационные статьи, предоставляем безвозмездно услугу &laquo;хостинг&raquo;, а также выделенный бесплатный номер &laquo;8-800&raquo;.&nbsp;<br /> <br /> <a href="http://colornew.ru/become-a-client.html">Стать клиентом и получить консультацию</a></p>\r\n</body>\r\n</html>', '2015-06-01 11:52:39', '2015-06-03 16:56:47', 1, 0, 0, '556c286d5b4ab.jpeg', 'Программа лояльности - ColorNew Интернет Студия', '=', '=', 'loyalty');
INSERT INTO `Article` (`id`, `caption`, `annotation`, `content`, `created`, `updated`, `published`, `deleted`, `recommended`, `path`, `metaTitle`, `metaDescription`, `metaKeywords`, `slug`) VALUES
(28, 'Удобство удаленного общения', 'Современные технологии позволяют общаться на расстоянии. Это очень удобно и в нашей сфере. Данная статья рассказывает о преимуществах общения по Skype при разработке сайта.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Современные технологии позволяют общаться на расстоянии. Это очень удобно и в нашей сфере. Данная статья рассказывает о преимуществах общения по Skype при разработке сайта.&nbsp;<br /> <br /> Вам необязательно приезжать к нам в офис, чтобы обсудить детали проекта &ndash; все можно делать удаленно.&nbsp;<br /> <br /> Мы предоставляем нашим клиентам новый и удобный способ связи &ndash; с помощью программы Skype. Данная программа позволяет слышать собеседника и звонить ему в любую точку мира абсолютно бесплатно.&nbsp;<br /> <br /> Для того, чтобы начать пользоваться программой, нужно сначала зарегистрироваться. Это <span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">можно сделать на официальном сайте Skype, здесь: https://login.skype.com/account/signup-form Заполните предложенную на странице анкету.&nbsp;</span></p>\r\n<p>&nbsp;<img src="../../../../assets/img/articles/1 (1).jpg" alt="" width="473" height="488" /></p>\r\n<p><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <font color="#222222">Придумайте логин Skype и пароль (на латинице) &ndash; этот логин Вы можете сообщать Вашим друзьям, у кого есть Skype. Они могут звонить Вам, зная Ваш логин.&nbsp;</font></span></p>\r\n<p>&nbsp;<img src="../../../../assets/img/articles/2 (1).jpg" alt="" /></p>\r\n<p><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> </span>Ниже логина введите текст, который Вы видите в поле (защиту) и нажмите кнопку завершения.&nbsp;<span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span>Регистрация закончена! Теперь можете скачать программу Skype по этой ссылке:&nbsp;<span style="display: inline-block; border: none; padding: 0cm;"><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><a href="http://skype.yandex.ru/" target="_blank">скачать Skype</a></span></span><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">&nbsp;</span><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span>После загрузки программы, установите ее. Установка очень проста. Просто кликайте &laquo;далее&raquo; по всем пунктам.&nbsp;<span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span>После установки, skype попросить Вас ввести логин ипароль. Введите придуманные Вами на шаги регистрации данные.&nbsp;<span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span>Если данные введены верно, перед Вами появится окно с контактами. Изначально контактов у Вас никаких не будет, Вы можете добавить своего первого &laquo;друга&raquo; (контакт) &ndash; это веб-студию ColorNew.&nbsp;<span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span>Установите курсор на строку поиска и введите colornew.ru Вам выведутся найденные совпадения. Выберите нас (у нас на главном изображении логотип и краска), мы, обычно, первые в списке. Нажмите &laquo;добавить в список контактов&raquo;&nbsp;</p>\r\n<p>&nbsp;<img src="../../../../assets/img/articles/3 (1).jpg" alt="" width="524" height="361" /></p>\r\n<p style="line-height: 0.58cm;"><br /><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Далее Вам выведится окно с просьбой &laquo;отправить контактные данные&raquo;, подтвердите.&nbsp;</span><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Теперь дождитесь пока контакт &laquo;ColorNew&raquo; получит Ваш запрос и добавит Вас.</span><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"><br /> <br /> </span><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Для звонков Вам необходимы будут наушники и микрофон. Можно приобрести обычные, недорогие наушники с микрофоном (2 в 1) &ndash; они продаются в любом компьютерном магазине.</span></p>\r\n</body>\r\n</html>', '2015-06-01 11:58:35', '2015-06-03 16:13:59', 1, 0, 0, '556c288ca04df.jpeg', 'Удобство удаленного общения - ColorNew Интернет Студия', '=', '=', 'remote-says'),
(29, 'Ошибки, которые нельзя повторять Заказчикам', 'В данной публикации мы постарались изложить распространенные ошибки Заказчиков, которые совершаются в процессе работы над созданием сайта. Данные ошибки могут привести к тому, что разработанный сайт не будет соответствовать начальным требованиям Заказчика и не будет приносить желаемый результат.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">В данной публикации мы постарались изложить распространенные ошибки Заказчиков, которые совершаются в процессе работы над созданием сайта. Данные ошибки могут привести к тому, что разработанный сайт не будет соответствовать начальным требованиям Заказчика и не будет приносить желаемый результат.</span></p>\r\n<p>&nbsp;<br /><img src="../../../../assets/img/articles/1.jpg" alt="" width="350" height="358" /><img src="../../../../assets/img/articles/2.jpg" alt="" width="361" height="358" /><img src="../../../../assets/img/articles/3.jpg" alt="" width="350" height="289" /><img src="../../../../assets/img/articles/4.jpg" alt="" width="325" height="289" /><img src="../../../../assets/img/articles/5.jpg" alt="" width="349" height="324" /><img src="../../../../assets/img/articles/6.jpg" alt="" width="323" height="324" /></p>\r\n<p><span style="background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">Мы разрабатываем сайты, нацеленные на большую часть пользователей и знаем как грамотно преподнести информацию по разным сферам деятельности. Доверьте свой новый сайт профессионалам!</span></p>\r\n</body>\r\n</html>', '2015-06-01 12:03:46', '2015-06-03 16:57:58', 1, 0, 0, '556c289dcb490.jpeg', 'Ошибки, которые нельзя повторять Заказчикам - ColorNew Интернет Студия', '=', '=', 'errors-that-cannot-be-repeat-customers'),
(30, 'Сайты, которые продают!', 'В сети Интернет существуют миллионы сайтов, но как выделить тот, который действительно будет достоен внимания пользователя?', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>В сети Интернет существуют миллионы сайтов, но как выделить тот, который действительно будет достоен внимания пользователя?&nbsp;<br /> <br /> При заказе разработки сайта нужно в первую очередь определиться с целью. &laquo;Для чего Вам нужен сайт? Что Вы хотите от него?&raquo; Цели создания сайта могут быть самыми разными: просто заявить о себе, расширить круг аудитории, продавать какие-либо товары и услуги.&nbsp; <br /> <br /> Веб-сайт делает Вас более узнаваемыми, конкурентоспособными, позволяет привлечь огромное количество целевой аудитории. Каким же должен быть современный сайт, чтобы его заметили пользователи, а самое главное заинтересовались?&nbsp; <br /> <br /> Первое &mdash; это внешний вид сайта, его дизайн. Именно по первоначальному оформлению человек решает - оставаться на сайте и дальше изучать его, либо же покинуть ресурс. Представьте, у Вас в руках красивый глянцевый журнал &mdash; вы изначально перелистываете его, а потом уже читаете необходимую информацию. Но, в отличии от полиграфии, у сайтов есть свои особенности. Озвучим некоторые из них.&nbsp; <br /> <br /> Плюсы. Немаловажный плюс &ndash; вы не платите за краски. Если при печати журнала или газеты надо учитывать множество факторов, например &ndash; чтобы чернил оказалось не больше определенного количества, иначе изображение может проступить на обратной стороне и многое-многое другое. Использование дополнительных цветов (ярко-кислотный зеленый, к примеру) влечет за собой резкое подорожание изделия. В электронном же продукте вы не задумываетесь о цене того или иного оттенка. Да просто представьте себе ситуацию, что Вы думаете о выборе цветов для своего сайта с позиции стоимости в данный момент красного или оранжевого цвета?&nbsp; <br /> <br /> Подвижность. &laquo;Сегодня новостную страницу читал, и уже хотел закрывать, как свежая новость появилась!&raquo; &ndash; эта фраза сейчас никого не удивит. Еще лет тридцать назад она могла вырваться, например, у городского сумасшедшего, а в семнадцатом веке такое не стоило бы произносить в Европе в присутствии представителей инквизиции. Информация движется, а вместе с ней и дизайн становится подвижным.&nbsp; <br /> <br /> Следующий момент &ndash; возможность всё исправить. Как вы думаете, много ли доставит хлопот исправить опечатку в тридцатитысячном тираже бланков с банковскими реквизитами? Думаю, что эта кипа ненужной бумаги отправится в макулатуру, или доставит развлечение на месяц десятерым людям, при условии, что они исправят за день по 100 бланков каждый. А на сайте с грамотной и интуитивно понятной системой управления это под силу сделать одному человеку за несколько минут.&nbsp; <br /> <br /> Минусы. Нельзя пощупать. Пока эта проблема не решена &ndash; тактильную пальму первенства следует отдать печатной продукции. Но удаленность странички в интернете удаётся смягчить интерактивностью и сделать её чуть ближе к реальности. Именно поэтому многие кнопки подсвечиваются при наведении, &laquo;утапливаются&raquo; при нажатии и так далее.&nbsp; <br /> <br /> При создании электронного продукта важно, чтобы графическая составляющая не мешала программной и наоборот. Как, например, встроенный радиоприемник в пылесосе является лишь дополнением к основной функции &ndash; пылесосить, так и большинство элементов дизайна при разработке онлайн-магазина должны, в идеале, способствовать выполнению основной задачи такого сайта &ndash; продавать. А на сайте, посвященному фотографии, дизайн-составляющая начинает занимать главенствующее положение.&nbsp; <br /> <br />В этом поиске симбиоза графической и программной части, грамотной расстановке приоритетов и состоит задача специалистов по созданию сайтов.</p>\r\n</body>\r\n</html>', '2015-06-01 12:05:55', '2015-06-05 12:52:18', 1, 0, 1, '556c28ac82260.jpeg', 'Сайты, которые продают! - ColorNew Интернет Студия', '=', '=', 'sites-that-sell!'),
(31, 'Продающая реклама', 'Продающей рекламе следует быть искренней и простой, близкой к разговорной речи. Редко кто станет задумываться над скучными и заумными текстами некоторых рекламных кампаний.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong> Продающей рекламе </strong> следует быть искренней и простой, близкой к разговорной речи. Редко кто станет задумываться над скучными и заумными текстами некоторых рекламных кампаний. <br /> <br /> В идеальном случае всякая маркетинговая коммуникация должна выполнить следующие действия: <br /> - Привлекать внимание целевой аудитории. <br /> - Предельно ясно и просто сообщать о Ваших товарах или услугах. <br /> - Вызвать только положительные эмоции и отзывы. <br /> - Убеждать в том, что Ваше предложение наиболее выгодное из всех доступных за эту цену. <br /> <br /> Делайте акцент &mdash; на <strong>продающую рекламу</strong> !</p>\r\n</body>\r\n</html>', '2015-06-01 12:07:01', '2015-06-03 16:59:12', 1, 0, 1, '556c4775b9b91.jpeg', 'Продающая реклама', '=', '=', '2'),
(32, 'Продвижение сайтов в Яндексе', 'Продвижение в поисковой системе Яндекс является эффективнейшим решением. Во-первых, эта поисковая система по сей день остается самой популярной в Рунете. Во-вторых, Яндекс незаменим если речь идет о коммерческой информации.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><strong>Продвижение в поисковой системе Яндекс</strong> &nbsp; является эффективнейшим решением. Во-первых, эта поисковая система по сей день остается самой популярной в Рунете. Во-вторых, Яндекс незаменим если речь идет о коммерческой информации.&nbsp; <br /> <br /> Российские пользователи доверяют&nbsp;<strong>продвижению Яндексе</strong>.&nbsp; <br /> <br /> При продвижении в Яндекс учитывается огромное количество факторов показа, что несомненно улучшает позиции и в других поисковых системах;&nbsp; <br /> <br /> Так же Яндекс учитывает поведенческий, или как его еще называют пользовательский фактор, для максимально качественной выдачи информации.&nbsp; <br /> <br /> <strong>Продвижение сайтов Яндекс</strong> &nbsp;обеспечивает результат достаточно быстро. При попадании в ТОП Яндекса ваш ресурс станет гораздо более известным и привлечет сотни, тысячи новых посетителей.&nbsp;<br /> <br /> Иными словами, продвижение сайта в Яндекс - самое правильно решение для российского бизнеса!</p>\r\n</body>\r\n</html>', '2015-06-01 12:09:25', '2015-06-05 12:52:28', 1, 0, 1, '556c47825c5a8.jpeg', 'Продвижение сайтов в Яндексе - ColorNew Интернет Студия', '=', '=', '1'),
(33, 'Классификация интернет-рекламы', 'Формат размещения рекламы в сети Интернет может быть разным и зависит от целей рекламной кампании, целевой аудиториии и географии показов рекламы.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Формат размещения рекламы в сети Интернет может быть разным и зависит от целей рекламной кампании, целевой аудиториии и географии показов рекламы. <br /> <br /> Форматы рекламы могут быть следующими: <br /> <br /> - Текстовое объявление; <br /> - Баннер в виде статической картинки; <br /> - Баннер в виде анимированной картинки; <br /> - Видеоролик; <br /> - Рич-медиа; <br /> - Комбинированные форматы. <br /> <br /> Место размещения рекламы: <br /> <br /> - На страницах выдачи поисковой системы; <br /> - На страницах отдельных сайтов в виде рекламного модуля; <br /> - В видеоматериалах при просмотре ролика; <br /> - В отдельном всплывающем окне при просмотре сайта; <br /> - В теле почтового письма при массовой рассылке писем; <br /> - В программах, работающих через Интернет. <br /> <br /> Принцип показов Интернет-рекламы: <br /> <br /> - Привязка к определенной аудитории (пол, возраст, геотаргетинг, род занятий, соц.статус);<br /> - Без привязки к определенной аудитории, массовость; <br /> - Привязка к сайтам по определенной тематике; <br /> - Привязка к поведению пользователя в сети Интернет (его истории переходов на сайты, действия на них); <br /> - Привязка к интересам пользователя (то, что он часто ищет в сети Интернет). <br /> <br /> Разделение Интернет-рекламы полезно, когда нужно настроить рекламную кампанию таким образом, чтобы она показывалась определенное время на определенной области и ограниченному количеству человек. Разделение Интернет-рекламы называется &laquo;таргетингом&raquo;. <br /> <br /> Существуют разделения: <br /> <br /> - По географическому месту нахождения пользователя; <br /> - По времени показа рекламы; <br /> - По количеству показов рекламы одному пользователю (частота запросов); <br /> - По возрасту, полу, роду занятий, соц.статусу; <br /> - По наличию/отсутствию определенного программного обеспечения у пользователя; <br /> - По характеристикам используемого пользователем оборудования для выхода в Интернет (пк, телефон, коммуникатор). <br /> <br /> Преимущества Интернет-рекламы над остальной: <br /> <br /> - Возможность запускать и останавливать рекламу в любое время без ущерба по бюджету;<br /> - Возможность таргетировать рекламу по различным критериям; <br /> - Полный контроль над действиями пользователя; <br /> - Конверсия выше, стоимость ниже; <br /> - Мобильность. <br /> <br /> Как все начиналось? Первый рекламный Интернет-баннер появился 25 октября 1994 года на сайте hotwired.com (сегодня это Wired News - http://wired.com/). Баннер появился вверху страницы и имел огромный успех! <br /> <br /> &nbsp; <br /> <br /> В декабре 2004 года первый баннер похоронили. <br /> <br /> &nbsp; <br /> <br /> Интернет-реклама постепенно набирала обороты и сейчас она легко может конкурировать с наружной, телевизионной и радио-рекламой. <br /> <br /> <br /> <br /> &nbsp; <a href="http://colornew.ru/assets/template/img/blog/01/prezent.pptx">Скачать презентацию по Интернет-рекламе</a></p>\r\n</body>\r\n</html>', '2015-06-01 12:10:47', '2015-06-05 12:52:36', 1, 0, 1, '556c4790da745.jpeg', 'Классификация интернет-рекламы - ColorNew Интернет Студия', '=', '=', 'blog-entry-number-two'),
(34, 'Отличие SEO от Контекстной рекламы', 'Смысл продвижения сайтов, или, как его еще называют, SEO-продвижение, заключается в том, чтобы вывести сайт в список первых 10 запросов поисковых систем.', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Смысл продвижения сайтов, или, как его еще называют,&nbsp;<strong>SEO-продвижение</strong> , заключается в том, чтобы вывести сайт в список первых 10 запросов поисковых систем. Поисковые системы ведут политику авторитетности ресурса. Чем больше на ресурс ссылаются, тем больший вес он дает для поискового робота. Ссылаться на сайт могут различными способами: ссылками, статьями, упоминаниями в новостных лентах, социальных сетях и т.п.&nbsp; <br /> <br /> Для поисковых систем очень важна не только авторитетность Вашего ресурса, но и авторитетность ресурса, который ссылается на Вас. Ведь есть разница, кто поставил ссылку на Вас &ndash; какой-нибудь &laquo;клуб анонимных алкоголиков&raquo;, или &laquo;Википедия&raquo;? Кроме упоминания Вашего ресурса на сторонних сайтах для SEO-продвижения очень важна техническая сторона вопроса, а именно:&nbsp; <br /> <br /> Корректная обработка ошибок. Особенно это касается 404 ошибки (страница не найдена). Допустим, есть сайт www.colornew.ru Если пользователь введет несуществующую страницу, например, www.colornew.ru/frg33g3r56.php , то он автоматически переадресовывается на страницу обработки ошибки, где ему предлагается выбрать другой, существующий раздел сайта.&nbsp; <br /> <br /> Правильная настройка файла robots.txt. Это файл-помощник для поисковых систем, который указывает что нужно искать, а что нет. Например, файлы конфигурации сайта совершенно не обязательно выводить для поиска. Зачем тратить время и силы поискового робота, если данные файлы не несут ничего полезного для конечного пользователя, а только существуют для корректной работы сайта.&nbsp; <br /> <br /> Правильная настройка файла sitemaps.xml (карта сайта). Поисковый робот, как и человек, быстрее найдет нужный ему объект, если будет карта, по которой он сможет ориентироваться. Естественно, карта сайта должна быть верной. Если на сайте меняется имя файла, или раздела, то карту сайта нужно также обновить.&nbsp; <br /> <br /> Соответствие стандарту W3C. Существует международный стандарт веб-разработки. Конечно, не следуя правилам данного стандарта сайт будет работать, на пользователях это не отразится. Но поисковый робот привык к тому, что все сайты должны быть чистые, опрятные, а самое главное, понятные! Программный код должен быть написан в соответствии с правилами, которые признаны во всем мире.&nbsp; <br /> <br /> Присутствие описания в тегах meta и title. Тег &mdash; это блок программного кода веб-страниц. Теги meta и title существуют для описания веб-страницы. Title &ndash; это заголовок страницы. Та информация, которая прописана в title отображается в верхней панели браузера. В meta-тегах прописываются ключевые слова и описание страницы.&nbsp; <br /> <br /> Результат от seo-продвижения не может быть моментальным. Постепенно, небольшими шагами, производится ряд работ по &laquo;пиару&raquo; сайта: закупаются ссылки на различных каталогах и порталах, пишутся статьи и проделывается ряд технических работ внутри самого сайта.&nbsp; <br /> <br /> Теперь поговорим о&nbsp; <strong>контекстной рекламе</strong> . Контекстная реклама &mdash; это спасательный круг для молодых сайтов! Контекстная реклама позволяет выводить сайт на первую страницу поисковых систем моментально. Кроме того, в контекстной рекламе осуществляется оплата "по факту". Рекламодатель платит только за реальные переходы пользователей на сайт.&nbsp; <br /> <br /> Контекстная реклама также позволяет следить за пользователями! Есть такое понятие, как &laquo;отложенный спрос&raquo;. Человек может доходить до мысли &laquo;о покупке&raquo; через множество просмотренных сайтов, каталогов, прочитав различные форумы и блоги.&nbsp; <br /> <br /> Если человек зашел на Ваш сайт и ничего не купил &mdash; это не значит, что ему не интересны Ваши услуги. Ему просто хочется &laquo;изучить рынок&raquo;. Но нельзя давать человеку возможность расслабляться! Ему нужно постоянно напоминать о том, что он когда-то искал. Это позволяет делать контекстная реклама!&nbsp; <br /> <br /> Представим, пользователь ввел запрос в поисковую систему &laquo;туры в Египет&raquo;, ему выводятся множество предложений и он начинает выбирать. Пользователь просматривает сайт за сайтом в поисках лучших условий и соотношений цена-качество. Вдруг он находит красивый сайт, где есть очень удобная форма подбора тура, понятный интерфейс и красивый дизайн. Также пользователь приятно удивлен ценами и он решает, что когда соберется на отдых, он обратится именно в эту фирму и на этот сайт для заказа. Далее пользователь закрывает браузер и на время забывает о сайте. Пользователь чуть не стал клиентом фирмы. Но он обязательно им станет, если вернется на сайт ещё раз, когда наступит отпуск. Но представьте ситуацию, что пользователь просто мог не записать адрес сайта, или не добавить в избранное, тем самым он уже, возможно, на этот сайт не сможет попасть и фирма потеряет клиента. Для таких ситуаций системы контекстной рекламы (Яндекс, Google, Бегун и др.) придумали идею партнерских, тематических площадок. То, что ищет человек в поисковой системе сохраняется в браузере пользователя во временных файлах и файлах cookie. Cookie &ndash; это небольшие текстовые файлы, которые веб-сайты помещают на компьютер пользователя. Они используются для сбора сведений о посещаемых сайтах.&nbsp; <br /> <br /> Вернемся к нашей ситуации. Пользователь закрыл сайт тур-агентства и на время забыл о нем. Через несколько дней он решил зайти на Интернет-магазин по продаже мягких игрушек и вдруг, выбирая игрушку для своего ребенка, он видит рекламу того же сайта тур-агентства, на котором он был 3 дня назад. Это ли не чудо? Пользователь вновь заходит на этот сайт и заполняет заявку на тур! Реклама на тематических площадках очень эффективна, особенно, если работать с отложенным спросом.&nbsp; <br /> <br /> Так что же выбрать &mdash; SEO-продвижение, или все же контекстную рекламу? Нельзя выбрать что-то одно. Это не две противоборствующих технологии, это два совершенно разных источника привлечения клиентов на сайт.&nbsp; <br /> <br /> SEO-продвижение может дать больший эффект по сравнению с контекстной рекламой, при условии постоянных работ над сайтом, написанием статей, регистрацией в каталогах, упоминанием сайта на различных форумах, блогах и т. д. SEO-продвижение очень дорогое, т. к. конкуренция большая даже по тематикам, которые редко встречаются. Тем самым, это ограничивает владельца сайта в подборе ключевых слов, так как цена по ним в разы выше цены контекстной рекламы.&nbsp; <br /> <br /> Контекстная реклама дает моментальный эффект. Сайт появляется на выдаче сразу же после поступления денежных средств. Оплата производится не за то, что сайт находится на какой-то позиции, а только за реальные переходы пользователей на сайт, либо за определенные действия на этом сайте (например, заполнение регистрационной формы).&nbsp; <br /> <br /> Для всех клиентов студия &laquo;ColorNew&raquo; рекомендует начинать именно с контекстной рекламы и небольшой бюджет отводить на SEO. Пока сайт поднимается в списке Яндекса по SEO, клиент уже имеет покупателей с контекстной рекламы. Как только сайт по SEO начинает обгонять конкурентов, мы меняем стратегию &mdash; уменьшаем бюджет по контекстной рекламе и увеличиваем его по SEO.</p>\r\n</body>\r\n</html>', '2015-06-01 12:13:11', '2015-06-03 17:00:38', 1, 0, 1, '556c28dc2c37c.jpeg', 'Отличие SEO от Контекстной рекламы - ColorNew Интернет Студия', '=', '=', 'blog-entry-number-one');

-- --------------------------------------------------------

--
-- Структура таблицы `Article_Path`
--

CREATE TABLE IF NOT EXISTS `Article_Path` (
  `article_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`path_id`),
  KEY `IDX_31578C87294869C` (`article_id`),
  KEY `IDX_31578C8D96C566B` (`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Article_Path`
--

INSERT INTO `Article_Path` (`article_id`, `path_id`) VALUES
(1, 2),
(2, 4),
(3, 1),
(4, 3),
(5, 3),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 3),
(10, 3),
(11, 3),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 4),
(14, 4),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 3),
(20, 3),
(21, 4),
(22, 1),
(22, 4),
(23, 2),
(23, 6),
(24, 2),
(24, 3),
(25, 3),
(26, 1),
(26, 2),
(26, 3),
(26, 4),
(27, 5),
(28, 5),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(29, 5),
(29, 6),
(29, 7),
(30, 1),
(30, 4),
(30, 8),
(31, 4),
(32, 5),
(32, 8),
(33, 2),
(33, 3),
(33, 5),
(33, 8),
(34, 1),
(34, 4),
(34, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `fos_group`
--

CREATE TABLE IF NOT EXISTS `fos_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_4B019DDB5E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'dev', 'dev', 'init.reg@gmail.com', 'init.reg@gmail.com', 1, '6c40qoyzrzwgcwoowkc0s44ko0gwooo', 'lmCeHiWhi1xW1H+Thu3wV93VfflstMQvq4DVjGOO5JPd5cuj+o3rACtZ6o91X1BtdRw0RWoztRQg1i/ntcO1IQ==', '2015-06-07 12:00:22', 0, 0, NULL, NULL, NULL, 'a:1:{i:0;s:16:"ROLE_SUPER_ADMIN";}', 0, NULL),
(3, 'karmis', 'karmis', 'support@yandex.ru', 'support@yandex.ru', 1, '93sifzn5tu88gs4wo08c8wcs4c0osw4', 'ljQt8mAWKQozmcGIlK8sJAdGhq2Ae1tNUHMOrKDcwIgRK4Oboi3f8GHPxi+V/RH4KHTHHnlsfBkHKozHrKk4QA==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL),
(4, 'test', 'test', 'asd@asd.ru', 'asd@asd.ru', 1, 'dmeyomo6cb48kk0w00c4g048c8kcgc0', 'eQMljjre+BMlzlhEeolJ0NfAUPJe0rlb/HIEm5cKmUPgROn7XeBYFlxjeSXSBExjxJHSPzB39lG9VAvui5YHaw==', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fos_user_user_group`
--

CREATE TABLE IF NOT EXISTS `fos_user_user_group` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `IDX_B3C77447A76ED395` (`user_id`),
  KEY `IDX_B3C77447FE54D947` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Module`
--

CREATE TABLE IF NOT EXISTS `Module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `metaKeywords` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `Module`
--

INSERT INTO `Module` (`id`, `caption`, `content`, `path`, `price`, `created`, `updated`, `published`, `deleted`, `metaTitle`, `metaDescription`, `metaKeywords`) VALUES
(1, '3747', '<p>12341341234</p>', '55688bc264777.jpeg', '1001.99', '2015-05-29 18:42:13', '2015-05-29 18:56:27', 1, 0, '', '', ''),
(2, '3747', '<p>12341341234</p>', NULL, '99999999.99', '2015-05-29 18:43:55', '2015-05-29 18:43:55', 1, 0, '', '', ''),
(3, '3747', '<p>12341341234</p>', NULL, '99999999.99', '2015-05-29 18:44:40', '2015-05-29 18:44:40', 1, 0, '', '', ''),
(4, '34634634', '<p>3563463456345</p>', '55688a7e31e65.jpeg', '3565466.00', '2015-05-29 18:49:18', '2015-05-29 18:49:18', 1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `ModulePath`
--

CREATE TABLE IF NOT EXISTS `ModulePath` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `ModulePath`
--

INSERT INTO `ModulePath` (`id`, `caption`, `created`, `updated`, `published`, `deleted`) VALUES
(1, 'Один', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(2, 'Два', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(3, 'Три', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(4, 'Четыре', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(5, 'Пять', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(6, 'Шесть', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(7, 'Семь', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 'Восемь', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(9, 'Девять', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(10, 'Десять', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(11, 'Одиннадцать', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Module_ModulePath`
--

CREATE TABLE IF NOT EXISTS `Module_ModulePath` (
  `article_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`path_id`),
  KEY `IDX_FE652E887294869C` (`article_id`),
  KEY `IDX_FE652E88D96C566B` (`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `Module_ModulePath`
--

INSERT INTO `Module_ModulePath` (`article_id`, `path_id`) VALUES
(1, 3),
(1, 4),
(1, 6),
(1, 11),
(2, 3),
(2, 4),
(2, 6),
(2, 11),
(3, 3),
(3, 4),
(3, 6),
(3, 11),
(4, 1),
(4, 4),
(4, 5),
(4, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `Page`
--

CREATE TABLE IF NOT EXISTS `Page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `metaTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `metaDescription` longtext COLLATE utf8_unicode_ci NOT NULL,
  `metaKeywords` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B438191E989D9B62` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Дамп данных таблицы `Page`
--

INSERT INTO `Page` (`id`, `caption`, `content`, `slug`, `created`, `updated`, `published`, `deleted`, `metaTitle`, `metaDescription`, `metaKeywords`) VALUES
(4, 'Скидки', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><a class="item-menu" style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: MyriadProLight; font-size: 18px; color: #333333; outline: none; text-decoration: none; height: 21px; display: inline-block; line-height: 25px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #aaaaaa; background-color: #ffffff;" title="Скидки" href="../../../sale-site.html">Скидки</a></p>\r\n</body>\r\n</html>', 'sale-site', '2015-05-25 17:30:37', '2015-06-03 11:52:14', 1, 0, 'Скидки - ColorNew Интернет Студия', '=', '='),
(5, 'Вакансии', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Вакансии</p>\r\n</body>\r\n</html>', 'job', '2015-05-25 17:40:36', '2015-06-02 15:52:16', 1, 0, 'Вакансии web-студии - ColorNew Интернет Студия', '=', '='),
(6, 'Регистрация доменов', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><a style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: MyriadProLight; font-size: 18px; color: #333333; outline: none; text-decoration: none; display: inline-block; line-height: 25px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #aaaaaa; height: 21px; background-color: #ffffff;" title="Регистрация доменов" href="../../../domains-and-hosting.html">Регистрация доменов</a></p>\r\n</body>\r\n</html>', 'register-domains', '2015-05-25 17:50:04', '2015-06-02 15:53:05', 1, 0, 'Регистрация доменов - ColorNew Интернет Студия', '=', '='),
(7, 'Защита сайта от взлома', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Защита сайта от взлома</p>\r\n</body>\r\n</html>', 'anti-hacker', '2015-05-26 12:53:05', '2015-06-02 15:56:12', 1, 0, 'Защита сайта от взлома - ColorNew Интернет Студия', '=', '='),
(8, 'Регистрация доменов', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Регистрация доменов</p>\r\n</body>\r\n</html>', 'domains-regoster', '2015-05-26 12:55:19', '2015-06-02 15:56:43', 1, 0, 'Регистрация доменов - ColorNew Интернет Студия', '=', '='),
(9, 'Резервное копирование', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Резервное копирование</p>\r\n</body>\r\n</html>', 'backups-page', '2015-05-26 12:59:10', '2015-06-03 11:52:28', 1, 0, 'Резервное копирование - ColorNew Интернет Студия', '=', '='),
(10, 'Номера 8-800', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Номера 8-800</p>\r\n</body>\r\n</html>', '8-800', '2015-05-26 13:00:58', '2015-06-03 11:52:34', 1, 0, 'Номера 8-800 - ColorNew Интернет Студия', '=', '='),
(11, 'Прямые городские номера', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Прямые городские номера</p>\r\n</body>\r\n</html>', 'city-phone', '2015-05-26 13:02:17', '2015-06-03 11:52:39', 1, 0, 'Прямые городские номера - ColorNew Интернет Студия', '=', '='),
(12, 'Два домена по цене одного RU+РФ', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Два домена по цене одного RU+РФ</p>\r\n</body>\r\n</html>', 'two-domains', '2015-05-26 13:32:49', '2015-06-03 11:52:45', 1, 0, 'Два домена по цене одного RU+РФ - ColorNew Интернет Студия', '=', '='),
(13, 'Разработка модулей на сайт', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Разработка модулей на сайт</p>\r\n</body>\r\n</html>', 'modules', '2015-05-26 13:33:57', '2015-06-02 15:56:59', 1, 0, 'Разработка модулей на сайт - ColorNew Интернет Студия', '=', '='),
(14, 'Написание текстов (копирайтинг)', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Написание текстов (копирайтинг)</p>\r\n</body>\r\n</html>', 'copyright', '2015-05-26 13:34:53', '2015-06-02 15:57:31', 1, 0, 'Написание текстов (копирайтинг) - ColorNew Интернет Студия', '=', '='),
(15, 'Наполнение сайтов', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Наполнение сайтов</p>\r\n</body>\r\n</html>', 'content-for-sites', '2015-05-26 13:37:41', '2015-06-02 15:57:44', 1, 0, 'Наполнение сайтов - ColorNew Интернет Студия', '=', '='),
(16, 'Сайты в рассрочку', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Сайты в рассрочку</p>\r\n</body>\r\n</html>', 'credit-page', '2015-05-26 13:39:15', '2015-06-02 15:58:29', 1, 0, 'Сайты в рассрочку - ColorNew Интернет Студия', '=', '='),
(17, 'Программа лояльности', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Программа лояльности</p>\r\n</body>\r\n</html>', 'friendship-page', '2015-05-26 13:40:34', '2015-06-02 15:59:06', 1, 0, 'Программа лояльности - ColorNew Интернет Студия', '=', '='),
(18, 'Услуга "без сомнений"', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Услуга "без сомнений"</p>\r\n</body>\r\n</html>', 'nodoubt-page', '2015-05-26 13:42:12', '2015-06-02 15:59:18', 1, 0, 'Услуга "без сомнений" - ColorNew Интернет Студия', '=', '='),
(19, 'Индивидуальные проекты', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Индивидуальные проекты</p>\r\n</body>\r\n</html>', 'personal_page', '2015-05-26 13:46:36', '2015-06-02 15:59:35', 1, 0, 'Индивидуальные проекты - ColorNew Интернет Студия', '=', '='),
(20, 'Партнёрская программа', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Партнёрская программа</p>\r\n</body>\r\n</html>', 'partners_page', '2015-05-26 13:50:28', '2015-06-02 15:59:49', 1, 0, 'Партнёрская программа - ColorNew Интернет Студия', '=', '='),
(21, 'Страница оплаты', '<p>Страница оплаты</p>', 'payment', '2015-05-26 13:51:00', '2015-05-27 12:41:56', 0, 1, '', '', ''),
(22, 'Для рекламных агенств', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p>Для рекламных агенств</p>\r\n</body>\r\n</html>', 'forreclams_page', '2015-05-26 13:51:54', '2015-06-02 16:00:04', 1, 0, 'Для рекламных агенств - ColorNew Интернет Студия', '=', '='),
(23, 'Сайты на 1С Битрикс', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><a style="box-sizing: border-box; margin: 0px; padding: 0px; font-family: MyriadProLight; font-size: 18px; outline: none; text-decoration: none; display: inline-block; line-height: 25px; color: #dddddd !important; border: none !important; background-color: #141416;" title="Сайты на 1С Битрикс" href="../../../bitrix_page.html">Сайты на 1С Битрикс</a></p>\r\n</body>\r\n</html>', 'bitrix_page', '2015-05-28 14:16:19', '2015-06-02 16:00:18', 1, 0, 'Сайты на 1С Битрикс - ColorNew Интернет Студия', '=', '='),
(24, 'Политика конфиденциальности', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p><span style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; font-family: MyriadProLight; font-size: 21px; font-weight: bold; font-stretch: inherit; line-height: 19px; vertical-align: baseline; background-color: #ffffff;">Соглашение об обработке персональных данных</span><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><span style="font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;">Обработка персональных данных Пользователя осуществляется в соответствии с законодательством Российской Федерации. Администрация Сайта обрабатывает персональные данные Пользователя в целях предоставления Пользователю услуг.&nbsp;</span><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><span style="font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;">Пользователь заполняя поля формы &laquo;Имя&raquo;, &laquo;Почта (email)&raquo;, "Телефон", "Сообщение" даёт согласие на обработку своих персональных данных &ndash; имени, адреса электронной почты и номера телефона. Под обработкой персональных данных понимается сбор, систематизация, накопление, уточнение (обновление, изменение).&nbsp;</span><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><span style="font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;">Обработка осуществляется с использованием средств автоматизации и/или без использования таких средств, в целях реализации мероприятий оповещения пользователя о изменениях на сайте и по поддержке обратной связи с пользователями сайта.&nbsp;</span><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><br style="box-sizing: border-box; font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;" /><span style="font-family: MyriadProLight; font-size: 14px; line-height: 19px; background-color: #ffffff;">В соответствии с ФЗ от 27.07.2006 г. № 152-ФЗ &laquo;О персональных данных&raquo; я согласен, при необходимости, во время заполнения информации при регистрации в сайте, входе в Личный кабинет или при отправке формы предоставить информацию, относящуюся к моей личности, например: мое имя, мой адрес электронной почты, номер телефона.</span></p>\r\n</body>\r\n</html>', 'confidentiality', '2015-05-28 14:21:26', '2015-06-02 16:00:32', 1, 0, 'Политика конфиденциальности - ColorNew Интернет Студия', '=', '='),
(25, 'Наши документы', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', 'doc', '2015-06-05 12:44:25', '2015-06-05 12:44:25', 1, 0, 'Документы ООО "Колор Нью"', 'Документы ООО "Колор Нью"', 'Документы ООО "Колор Нью"');

-- --------------------------------------------------------

--
-- Структура таблицы `Path`
--

CREATE TABLE IF NOT EXISTS `Path` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `Path`
--

INSERT INTO `Path` (`id`, `caption`, `created`, `updated`, `published`, `deleted`) VALUES
(1, 'Сайт-визитка', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(2, 'Интернет-магазин', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(3, 'Корпоративный сайт', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(4, 'Landing-page', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(5, 'Продвижение бизнеса', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(6, 'Размещение сайта', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(7, 'IP-телефония', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 'Главная', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Payment`
--

CREATE TABLE IF NOT EXISTS `Payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `summ` decimal(10,2) NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bik` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rs` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ogrn` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kpp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `basis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `legalAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mailAddress` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `report` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Дамп данных таблицы `Payment`
--

INSERT INTO `Payment` (`id`, `type`, `fio`, `organization`, `email`, `summ`, `phone`, `inn`, `bik`, `rs`, `ogrn`, `kpp`, `basis`, `legalAddress`, `mailAddress`, `created`, `deleted`, `report`) VALUES
(1, 'individual', '5789', '0', '6798', '6789.00', '768', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 07:57:45', 0, ''),
(2, 'legal', '345', '345', '0', '34534.00', '0', '34534', '34534', '5345', '534', '534', '345', '345', '345', '2015-06-05 08:02:56', 0, ''),
(3, 'individual', '56756', '0', '7567', '567.00', '567', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 08:56:06', 0, ''),
(4, 'individual', '567', '0', '56765', '7567.00', '567', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 09:10:47', 0, ''),
(5, 'individual', '567567', '0', '567567', '56756.00', '756756', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 10:31:10', 0, ''),
(6, 'individual', '345345', '0', '345345', '1000.00', '345345', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 12:34:03', 0, ''),
(7, 'individual', '312', '0', '123123', '1000.00', '123', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 12:35:27', 0, ''),
(8, 'individual', '23423', '0', '4234', '241963.72', '23243', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:18:27', 0, '5571a1a4008d7.pdf'),
(9, 'individual', '567', '0', '756756', '586296.71', '5667', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:20:39', 0, '5571a22724a99.pdf'),
(10, 'individual', '567', '0', '756756', '586296.71', '5667', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:20:41', 0, '5571a2296e70a.pdf'),
(11, 'individual', '567', '0', '756756', '586296.71', '5667', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:20:46', 0, '5571a22e8b42e.pdf'),
(12, 'individual', '567', '0', '756756', '586296.71', '5667', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:20:48', 0, '5571a230ef364.pdf'),
(13, 'individual', '567', '0', '756756', '586296.71', '5667', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:20:55', 0, '5571a237e0434.pdf'),
(14, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:21:50', 0, '5571a26e5d4ba.pdf'),
(15, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:21:52', 0, '5571a27095f14.pdf'),
(16, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:21:56', 0, '5571a2746d81e.pdf'),
(17, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:21:58', 0, '5571a276bc623.pdf'),
(18, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:21:59', 0, '5571a27756cd9.pdf'),
(19, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:21:59', 0, '5571a277e6ccf.pdf'),
(20, 'individual', '234234', '0', '23423', '4373.72', '2342344', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:22:00', 0, '5571a27879b00.pdf'),
(21, 'individual', '57567', '0', '5676', '585.71', '567', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:23:24', 0, '5571a2cc7dae8.pdf'),
(22, 'individual', '345345', '0', '345345', '356.39', '5345', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:24:00', 0, '5571a2f03a410.pdf'),
(23, 'individual', '345345', '0', '345345', '356.39', '5345', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:24:02', 0, '5571a2f215ca0.pdf'),
(24, 'individual', '789', '0', '789', '815.04', '789', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:31:06', 0, '5571a49aaa452.pdf'),
(25, 'individual', '789', '0', '789', '815.04', '789', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:31:08', 0, '5571a49c7ef3b.pdf'),
(26, 'legal', '78978', '789789', '0', '789789.00', '0', '78789', '789789', '78789', '789789', '789789', '789789', '789789789789789', '789789789789789', '2015-06-05 16:31:40', 0, '5571a4bcb5afb.pdf'),
(27, 'legal', '78978', '789789', '0', '789789.00', '0', '78789', '789789', '78789', '789789', '789789', '789789', '789789789789789', '789789789789789', '2015-06-05 16:31:48', 0, '5571a4c4827e5.pdf'),
(28, 'legal', '78978', '789789', '0', '789789.00', '0', '78789', '789789', '78789', '789789', '789789', '789789', '789789789789789', '789789789789789', '2015-06-05 16:31:53', 0, '5571a4c985ab3.pdf'),
(29, 'legal', '6778', '67867', '0', '6786787.00', '0', '867867', '678678', '678', '678678', '8678', '67867', '67867867867', '67867867867', '2015-06-05 16:34:44', 0, '5571a574f1819.pdf'),
(30, 'individual', '78978', '0', '9789789', '815852.04', '789789', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:37:00', 0, 'none'),
(31, 'individual', '234234', '0', '234234', '241963.72', '234234', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:41:28', 0, '5571a70823fb8.pdf'),
(32, 'individual', '234234', '0', '234234', '241963.72', '234234', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:41:30', 0, '5571a70a330e3.pdf'),
(33, 'individual', 'Аупкп', '0', 'fefef@fefffef.ru', '35.12', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:41:31', 0, 'none'),
(34, 'individual', 'Аупкп', '0', 'fefef@fefffef.ru', '10.33', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:41:43', 0, 'none'),
(35, 'individual', '234234', '0', '234234', '241963.72', '234234', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:41:47', 0, '5571a71bc878e.pdf'),
(36, 'individual', 'Аупкп', '0', 'fefef@fefffef.ru', '10.33', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:41:55', 0, '5571a723ce77e.pdf'),
(37, 'individual', 'Аупкп', '0', 'fefef@fefffef.ru', '10.33', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-05 16:42:00', 0, '5571a728b75eb.pdf'),
(38, 'legal', 'директора Иванова Ивана Ивановича', 'fgrgegefg', '0', '100.00', '0', '111111111', '4444444444', '55555555', '333333333', '2222222222', 'Устава', 'гор. Владимир, ул. Растопчина, д. 39 "Б", кв. 37', 'гор. Владимир, ул. Растопчина, д. 39 "Б", кв. 37', '2015-06-05 16:49:09', 0, '5571a8d548962.pdf'),
(39, 'legal', 'директора Иванова Ивана Ивановича', 'fgrgegefg', '0', '100.00', '0', '111111111', '4444444444', '55555555', '333333333', '2222222222', 'Устава', 'гор. Владимир, ул. Растопчина, д. 39 "Б", кв. 37', 'гор. Владимир, ул. Растопчина, д. 39 "Б", кв. 37', '2015-06-05 16:49:13', 0, '5571a8d90d02d.pdf'),
(40, 'individual', 'Дмитрий', '0', 'efef3fefef@yandex.ru', '20.66', '95656', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-07 11:35:54', 0, 'none'),
(41, 'individual', 'Чугунов Дмитрий Сергеевич', '0', 'site@colornew.ru', '103.30', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-07 11:40:16', 0, '55740370cf802.pdf'),
(42, 'individual', 'Чугунов Дмитрий Сергеевич', '0', 'site@colornew.ru', '103.30', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-07 11:40:23', 0, '55740377e03f2.pdf'),
(43, 'individual', 'Чугунов Дмитрий Сергеевич', '0', 'site@colornew.ru', '103.30', '9308888888', '0', '0', '0', '0', '0', '0', '0', '0', '2015-06-07 11:41:47', 0, 'none'),
(44, 'legal', 'Ауцацкп', 'ООО "Рога и Копыта"', '0', '100.00', '0', '656565', '6565656', '65995', '565656', '565656', 'Укукпукп', 'ацакпуцпкп', 'уацацацуа', '2015-06-07 11:44:06', 0, '557404560c348.pdf');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Article_Path`
--
ALTER TABLE `Article_Path`
  ADD CONSTRAINT `FK_31578C87294869C` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  ADD CONSTRAINT `FK_31578C8D96C566B` FOREIGN KEY (`path_id`) REFERENCES `Path` (`id`);

--
-- Ограничения внешнего ключа таблицы `fos_user_user_group`
--
ALTER TABLE `fos_user_user_group`
  ADD CONSTRAINT `FK_B3C77447A76ED395` FOREIGN KEY (`user_id`) REFERENCES `fos_user` (`id`),
  ADD CONSTRAINT `FK_B3C77447FE54D947` FOREIGN KEY (`group_id`) REFERENCES `fos_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `Module_ModulePath`
--
ALTER TABLE `Module_ModulePath`
  ADD CONSTRAINT `FK_FE652E88D96C566B` FOREIGN KEY (`path_id`) REFERENCES `ModulePath` (`id`),
  ADD CONSTRAINT `FK_FE652E887294869C` FOREIGN KEY (`article_id`) REFERENCES `Module` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
