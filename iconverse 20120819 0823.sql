-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.39-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema iconverse
--

CREATE DATABASE IF NOT EXISTS iconverse;
USE iconverse;

--
-- Definition of table `tblalias`
--

DROP TABLE IF EXISTS `tblalias`;
CREATE TABLE `tblalias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service` varchar(10) NOT NULL,
  `user` varchar(20) NOT NULL,
  `userid` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblalias`
--

/*!40000 ALTER TABLE `tblalias` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblalias` ENABLE KEYS */;


--
-- Definition of table `tblchat`
--

DROP TABLE IF EXISTS `tblchat`;
CREATE TABLE `tblchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stamp` varchar(45) NOT NULL,
  `conversation` int(11) NOT NULL,
  `message` varchar(140) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblchat`
--

/*!40000 ALTER TABLE `tblchat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblchat` ENABLE KEYS */;


--
-- Definition of table `tblconversation`
--

DROP TABLE IF EXISTS `tblconversation`;
CREATE TABLE `tblconversation` (
  `id` int(11) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `topic` varchar(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  PRIMARY KEY (`id`,`stamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblconversation`
--

/*!40000 ALTER TABLE `tblconversation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblconversation` ENABLE KEYS */;


--
-- Definition of table `tblconversationparty`
--

DROP TABLE IF EXISTS `tblconversationparty`;
CREATE TABLE `tblconversationparty` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`,`user`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblconversationparty`
--

/*!40000 ALTER TABLE `tblconversationparty` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblconversationparty` ENABLE KEYS */;


--
-- Definition of table `tblfile`
--

DROP TABLE IF EXISTS `tblfile`;
CREATE TABLE `tblfile` (
  `id` int(11) NOT NULL,
  `index` int(11) NOT NULL,
  `conversation` int(10) unsigned NOT NULL,
  `content` blob NOT NULL,
  PRIMARY KEY (`id`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblfile`
--

/*!40000 ALTER TABLE `tblfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblfile` ENABLE KEYS */;


--
-- Definition of table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
CREATE TABLE `tbluser` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser`
--

/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
