﻿SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `ipbans` (
  `ip` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `settings` (
  `motd` text NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `authcodes` (
  `AuthType` tinyint(1) NOT NULL,
  `Value` varchar(256) NOT NULL,
  `User` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `settings` (`motd`, `news`) VALUES
('', '');

CREATE TABLE IF NOT EXISTS `users` (
  `Username` varchar(16) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Points` int(11) NOT NULL,
  `Rank` tinyint(6) NOT NULL,
  `Ban` tinyint(1) NOT NULL,
  `Mute` tinyint(1) NOT NULL,
  `Avatar` text NOT NULL,
  `Bio` text NOT NULL,
  `ProfileLink` text NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
