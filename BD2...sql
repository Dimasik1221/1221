--
-- Структура таблицы `game1`
--
 
CREATE TABLE IF NOT EXISTS `game1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `username` varchar(70) NOT NULL,
  `item` text,
  `color` text,
  `value` text,
  `avatar` varchar(512) NOT NULL,
  `image` text NOT NULL,
  `from` text NOT NULL,
  `to` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
 
 
--
-- Структура таблицы `games`
--
 
CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL DEFAULT '0',
  `starttime` int(11) NOT NULL,
  `cost` text,
  `winner` varchar(128) NOT NULL,
  `userid` varchar(70) NOT NULL,
  `percent` varchar(10) DEFAULT NULL,
  `itemsnum` int(11) NOT NULL,
  `module` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;
 
--
-- Дамп данных таблицы `games`
--
 
INSERT INTO `games` (`id`, `starttime`, `cost`, `winner`, `userid`, `percent`, `itemsnum`, `module`) VALUES
(1, 2147483647, '0', '', '', NULL, 0, '');
 
-- --------------------------------------------------------
 
--
-- Структура таблицы `info`
--
 
CREATE TABLE IF NOT EXISTS `info` (
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
 
--
-- Дамп данных таблицы `info`
--
 
INSERT INTO `info` (`name`, `value`) VALUES
('current_game', '1'),
('state', 'waiting'),
('rake', '10'),
('minbet', '0.3'),
('maxitems', '10');
 
-- --------------------------------------------------------
 
--
-- Структура таблицы `items`
--
 
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `cost` text NOT NULL,
  `lastupdate` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;
 
--
-- Дамп данных таблицы `items`
--
 
INSERT INTO `items` (`id`, `name`, `cost`, `lastupdate`) VALUES
(13, 'Five-SeveN%20|%20Orange%20Peel%20(Field-Tested)', '0.06', '1433104160'),
(5, 'P250%20|%20Steel%20Disruption%20(Factory%20New)', '0.24', '1431774638'),
(4, 'UMP-45%20|%20Urban%20DDPAT%20(Field-Tested)', '0.04', '1431774638'),
(7, 'Nova%20|%20Ghost%20Camo%20(Factory%20New)', '0.28', '1431781594'),
(28, 'Operation%20Vanguard%20Weapon%20Case', '0.05', '1433503277'),
(9, 'Nova%20|%20Polar%20Mesh%20(Field-Tested)', '0.03', '1431781595'),
(10, 'MP7%20|%20Forest%20DDPAT%20(Field-Tested)', '0.04', '1431781595'),
(11, 'SSG%2008%20|%20Blue%20Spruce%20(Field-Tested)', '0.04', '1433104159'),
(12, 'M4A1-S%20|%20Boreal%20Forest%20(Battle-Scarred)', '0.18', '1433104160'),
(14, 'UMP-45%20|%20Urban%20DDPAT%20(Well-Worn)', '0.04', '1433104968'),
(15, 'Chroma%20Case', '0.05', '1433105881'),
(16, 'Operation%20Breakout%20Weapon%20Case', '0.04', '1433105910'),
(17, 'Operation%20Phoenix%20Weapon%20Case', '0.06', '1433105910'),
(18, 'MP9%20|%20Deadly%20Poison%20(Field-Tested)', '0.08', '1433153102'),
(19, 'SCAR-20%20|%20Grotto%20(Field-Tested)', '0.09', '1433153264'),
(20, 'MAG-7%20|%20Heaven%20Guard%20(Factory%20New)', '0.1', '1433153265'),
(21, 'Galil%20AR%20|%20Sandstorm%20(Field-Tested)', '0.12', '1433153265'),
(22, 'Glock-18%20|%20Catacombs%20(Minimal%20Wear)', '0.09', '1433155232'),
(23, 'Dual%20Berettas%20|%20Contractor%20(Field-Tested)', '0.04', '1433453290'),
(24, 'M249%20|%20Contrast%20Spray%20(Field-Tested)', '0.04', '1433503274'),
(25, 'Dual%20Berettas%20|%20Contractor%20(Minimal%20Wear)', '0.04', '1433503275'),
(26, 'SG%20553%20|%20Waves%20Perforated%20(Well-Worn)', '0.03', '1433503276'),
(27, 'P250%20|%20Sand%20Dune%20(Minimal%20Wear)', '0.04', '1433503276'),
(29, 'FAMAS%20|%20Colony%20(Field-Tested)', '0.03', '1433503277'),
(30, 'Sawed-Off%20|%20Origami%20(Minimal%20Wear)', '0.14', '1433503278'),
(31, 'P90%20|%20Module%20(Minimal%20Wear)', '0.13', '1433503279'),
(32, 'AK-47%20|%20Elite%20Build%20(Battle-Scarred)', '0.43', '1433506775'),
(33, 'CZ75-Auto%20|%20Pole%20Position%20(Battle-Scarred)', '0.38', '1433506775'),
(34, 'P250%20|%20Valence%20(Minimal%20Wear)', '0.29', '1433506776'),
(35, 'SG%20553%20|%20Army%20Sheen%20(Factory%20New)', '0.05', '1433508379'),
(36, 'MP9%20|%20Storm%20(Battle-Scarred)', '0.04', '1433508379'),
(37, 'MP9%20|%20Storm%20(Field-Tested)', '0.04', '1433508380'),
(38, 'SG%20553%20|%20Waves%20Perforated%20(Battle-Scarred)', '0.04', '1433508380'),
(39, 'M4A4%20|%20??%20(Dragon%20King)%20(Field-Tested)', '1.95', '1433520065');
 
-- --------------------------------------------------------
 
--
-- Структура таблицы `messages`
--
 
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `msg` text NOT NULL,
  `from` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
 
--
-- Дамп данных таблицы `messages`
--
 
-- --------------------------------------------------------
 
--
-- Структура таблицы `queue`
--
 
CREATE TABLE IF NOT EXISTS `queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(70) NOT NULL,
  `token` varchar(128) NOT NULL,
  `items` text NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;
 
 
-- --------------------------------------------------------
 
--
-- Структура таблицы `rakeitems`
--
 
CREATE TABLE IF NOT EXISTS `rakeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
 
 
-- --------------------------------------------------------
 
--
-- Структура таблицы `users`
--
 
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steamid` varchar(70) NOT NULL,
  `tlink` varchar(255) DEFAULT NULL,
  `won` float DEFAULT '0',
  `admin` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `games` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;