-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for chatapp
CREATE DATABASE IF NOT EXISTS `chatapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `chatapp`;


-- Dumping structure for table chatapp.feed
CREATE TABLE IF NOT EXISTS `feed` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '0',
  `feed` text,
  `color` varchar(50) DEFAULT '0',
  `date` varchar(50) DEFAULT '0',
  `time` varchar(50) DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.feed: ~4 rows (approximately)
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
INSERT INTO `feed` (`Id`, `name`, `feed`, `color`, `date`, `time`) VALUES
	(2, 'Anant', 'All the things  will be fine soon', 'Green', '18 Jun, 2018', '6:51:27 PM'),
	(3, 'Anant', 'be happy, avoid tensions', 'Blue', '18 Jun, 2018', '6:52:18 PM'),
	(4, 'Anant', 'We will meet soon , wait for me', 'Brown', '18 Jun, 2018', '6:53:01 PM'),
	(7, 'Gaurav', ' YOU WILL HAVE THE WORLD, BELIEVE YOURSELF.', 'Yellow', '20 Jun, 2018', '7:27:55 PM'),
	(8, 'Anant', 'Make the day your day', 'Blue', '21 Jun, 2018', '5:23:51 PM');
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;


-- Dumping structure for table chatapp.follow
CREATE TABLE IF NOT EXISTS `follow` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `member1` varchar(50) DEFAULT NULL,
  `member2` varchar(50) DEFAULT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.follow: ~6 rows (approximately)
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` (`Id`, `member1`, `member2`, `value`) VALUES
	(1, 'Anant', 'Gaurav', 1),
	(3, 'Anant', 'Vishal Singhal', 1),
	(4, 'Anant', 'Jitendra Gora', 1),
	(5, 'Anant', 'Naman Garg', 1),
	(6, 'Anant', 'Manglam', 1),
	(7, 'Gaurav', 'Anant', 1);
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;


-- Dumping structure for table chatapp.friend
CREATE TABLE IF NOT EXISTS `friend` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `member1` varchar(50) DEFAULT NULL,
  `member2` varchar(50) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.friend: ~32 rows (approximately)
/*!40000 ALTER TABLE `friend` DISABLE KEYS */;
INSERT INTO `friend` (`Id`, `member1`, `member2`, `value`) VALUES
	(6, 'Gaurav', 'Jitendra Gora', 3),
	(7, 'Jitendra Gora', 'Gaurav', 3),
	(8, 'Gaurav', 'Vivek', 1),
	(9, 'Vivek', 'Gaurav', 2),
	(12, 'Anant', 'Gaurav', 3),
	(13, 'Gaurav', 'Anant', 3),
	(16, 'Jitendra Gora', 'Manglam', 1),
	(17, 'Manglam', 'Jitendra Gora', 2),
	(18, 'Anant', 'Manglam', 3),
	(19, 'Manglam', 'Anant', 3),
	(20, 'Anant', 'Naman Garg', 3),
	(21, 'Naman Garg', 'Anant', 3),
	(22, 'Anant', 'Vipin Mahawar', 3),
	(23, 'Vipin Mahawar', 'Anant', 3),
	(24, 'Anant', 'Vishal Singhal', 3),
	(25, 'Vishal Singhal', 'Anant', 3),
	(26, 'Anant', 'Nikhil Singh', 3),
	(27, 'Nikhil Singh', 'Anant', 3),
	(28, 'Anant', 'Vivek', 3),
	(29, 'Vivek', 'Anant', 3),
	(30, 'Anant', 'Chetan Sharma', 3),
	(31, 'Chetan Sharma', 'Anant', 3),
	(32, 'Anant', 'Anil', 3),
	(33, 'Anil', 'Anant', 3),
	(34, 'Anant', 'Jitendra Gora', 3),
	(35, 'Jitendra Gora', 'Anant', 3),
	(36, 'Anil', 'Vipin Mahawar', 1),
	(37, 'Vipin Mahawar', 'Anil', 2),
	(42, 'Naman Garg', 'Gaurav', 3),
	(43, 'Gaurav', 'Naman Garg', 3),
	(44, 'Naman Garg', 'Manglam', 1),
	(45, 'Manglam', 'Naman Garg', 2);
/*!40000 ALTER TABLE `friend` ENABLE KEYS */;


-- Dumping structure for table chatapp.frmessage
CREATE TABLE IF NOT EXISTS `frmessage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) DEFAULT NULL,
  `receiver` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.frmessage: ~9 rows (approximately)
/*!40000 ALTER TABLE `frmessage` DISABLE KEYS */;
INSERT INTO `frmessage` (`Id`, `sender`, `receiver`, `date`, `message`) VALUES
	(1, 'Anant', 'Manglam', '2018-45-03 08:45:10', 'hello bro, how are you'),
	(2, 'Manglam', 'Anant', '2018-03-03 09:03:02', 'I am fine, tell me about you'),
	(3, 'Anant', 'Manglam', '2018-09-03 09:09:07', 'i am also fine , what is going on'),
	(4, 'Anant', 'Manglam', '2018-16-05 03:16:39', 'tell me about yourself'),
	(5, 'Jitendra Gora', 'Gaurav', '2018-19-16 11:19:55', 'HI'),
	(6, 'Anant', 'Gaurav', '2018-54-28 07:54:29', 'hello bro, how are you'),
	(7, 'Gaurav', 'Anant', '2018-35-29 07:35:11', 'I am fine, tell me about you'),
	(8, 'Anant', 'Gaurav', '2018-35-29 07:35:27', 'tell me about yourself'),
	(9, 'Anant', 'Gaurav', '2018-24-30 06:24:00', 'i am fine'),
	(10, 'Anant', 'Gaurav', '2018-32-30 06:32:45', 'what is going on '),
	(11, 'Anant', 'Vishal Singhal', '2018-10-07 12:10:37', 'Hello bro'),
	(12, 'Anant', 'Manglam', '2018-47-14 05:47:05', 'how are you'),
	(13, 'Gaurav', 'Anant', '2018-20-20 07:20:24', '( All the things  will be fine soon )-> what happen brother'),
	(14, 'Gaurav', 'Anant', '2018-33-20 07:33:04', '( All the things  will be fine soon )-> kya hua');
/*!40000 ALTER TABLE `frmessage` ENABLE KEYS */;


-- Dumping structure for table chatapp.gmessage
CREATE TABLE IF NOT EXISTS `gmessage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) DEFAULT NULL,
  `groupname` text,
  `content` text,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.gmessage: ~4 rows (approximately)
/*!40000 ALTER TABLE `gmessage` DISABLE KEYS */;
INSERT INTO `gmessage` (`Id`, `sender`, `groupname`, `content`, `date`, `time`, `value`) VALUES
	(4, 'Anant', 'AWP', 'hello to all', '12 Jun, 2018', '6:05:29 PM', 1),
	(5, 'Anant', 'SRK guys', 'hello to all', '12 Jun, 2018', '6:09:13 PM', 1),
	(6, 'Anil', 'AWP', 'hello bro', '12 Jun, 2018', '6:14:55 PM', 1),
	(7, 'Gaurav', 'SRK guys', 'Gaurav added into the group', '12 Jun, 2018', '7:04:24 PM', 2),
	(8, 'Gaurav', 'SRK guys', 'hello', '12 Jun, 2018', '7:07:35 PM', 1);
/*!40000 ALTER TABLE `gmessage` ENABLE KEYS */;


-- Dumping structure for table chatapp.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `groupname` varchar(50) NOT NULL,
  `objective` varchar(50) NOT NULL,
  `value` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.groups: ~10 rows (approximately)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`Id`, `name`, `groupname`, `objective`, `value`, `date`, `time`) VALUES
	(3, 'Anant', 'SRK guys', 'Studies', 1, '5 Jun, 2018', '8:12:17 AM'),
	(4, 'Naman Garg', 'SRK guys', 'Studies', 3, '6 Jun, 2018', '3:29:42 PM'),
	(14, 'Jitendra Gora', 'SRK guys', 'Studies', 2, '7 Jun, 2018', '8:34:47 AM'),
	(15, 'Vishal Singhal', 'SRK guys', 'Studies', 2, '7 Jun, 2018', '8:32:47 AM'),
	(16, 'Vipin Mahawar', 'SRK guys', 'Studies', 3, '6 Jun, 2018', '4:22:49 PM'),
	(20, 'Jitendra Gora', 'Gym boys', 'Fitness', 1, '7 Jun, 2018', '12:23:40 PM'),
	(21, 'Anil', 'AWP', 'Fun', 1, '7 Jun, 2018', '12:27:48 PM'),
	(22, 'Vishal Singhal', 'JK Programming ', 'programming', 1, '7 Jun, 2018', '12:30:07 PM'),
	(25, 'Anil', 'JK Programming ', 'programming', 4, '7 Jun, 2018', '6:33:45 PM'),
	(32, 'Anant', 'JK Programming ', 'programming', 4, '13 Jun, 2018', '6:49:03 PM');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;


-- Dumping structure for table chatapp.notification
CREATE TABLE IF NOT EXISTS `notification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) DEFAULT NULL,
  `receiver` varchar(50) DEFAULT NULL,
  `content` text,
  `date` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
  `kind` int(11) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.notification: ~15 rows (approximately)
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` (`Id`, `sender`, `receiver`, `content`, `date`, `time`, `kind`, `value`) VALUES
	(1, 'Anant', 'Chetan Sharma', 'Anant has sent you group request for the Studies group, SRK guys', '6 Jun, 2018', '4:34:35 PM', 1, 1),
	(2, 'Anant', 'Anil', 'Anant has sent you group request for the Studies group, SRK guys', '6 Jun, 2018', '6:17:25 PM', 1, 1),
	(3, 'Vishal Singhal', 'Anant', 'Vishal Singhal has accepted group request by you for the Studies group, SRK guys', '7 Jun, 2018', '8:32:47 AM', 1, 2),
	(4, 'Jitendra Gora', 'Anant', 'Jitendra Gora has accepted group request sent by you for the Studies group, SRK guys', '7 Jun, 2018', '8:34:47 AM', 1, 2),
	(5, 'Anant', 'Gaurav', 'Anant has sent you group request for the Studies group, SRK guys', '7 Jun, 2018', '12:11:05 PM', 1, 2),
	(6, 'Anant', 'Vishal Singhal', 'Anant has asked you to make him the member of the programming group, JK Programming ', '7 Jun, 2018', '6:06:19 PM', 1, 1),
	(7, 'Anant', 'Anil', 'Anant has asked you to make him the member of the Fun group, AWP', '7 Jun, 2018', '6:23:15 PM', 1, 1),
	(8, 'Anil', 'Vishal Singhal', 'Anil has asked you to make him the member of the programming group, JK Programming ', '7 Jun, 2018', '6:33:45 PM', 1, 1),
	(9, 'Chetan Sharma', 'Anant', 'Chetan Sharma has accepted group request sent by you for the Studies group, SRK guys', '8 Jun, 2018', '7:02:57 PM', 1, 2),
	(10, 'Anant', 'Nikhil Singh', 'Anant has sent you group request for the Studies group, SRK guys', '8 Jun, 2018', '7:06:28 PM', 1, 1),
	(12, 'Naman Garg', 'Gaurav', 'Naman Garg has sent you friend request', '12 Jun, 2018', '6:59:57 PM', 2, 1),
	(13, 'Naman Garg', 'Manglam', 'Naman Garg has sent you friend request', '12 Jun, 2018', '7:00:39 PM', 2, 1),
	(14, 'Gaurav', 'Naman Garg', 'Gaurav has accepted your friend request.You can chat with him', '12 Jun, 2018', '7:02:31 PM', 2, 1),
	(15, 'Gaurav', 'Anant', 'Gaurav has accepted group request sent by you for the Studies group, SRK guys', '12 Jun, 2018', '7:04:24 PM', 1, 2),
	(19, 'Anant', 'Vishal Singhal', 'Anant has asked you to make him the member of the programming group, JK Programming ', '12 Jun, 2018', '7:51:13 PM', 1, 1),
	(20, 'Anant', 'Chetan Sharma', 'Anant has sent you group request for the Studies group, SRK guys', '13 Jun, 2018', '6:47:56 PM', 1, 1),
	(21, 'Anant', 'Vishal Singhal', 'Anant has asked you to make him the member of the programming group, JK Programming ', '13 Jun, 2018', '6:49:03 PM', 1, 1);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;


-- Dumping structure for table chatapp.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `name` varchar(50) DEFAULT NULL,
  `status` text,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `interest` text,
  `hobby` text,
  `view` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.profile: ~3 rows (approximately)
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` (`name`, `status`, `city`, `state`, `education`, `interest`, `hobby`, `view`) VALUES
	('Anant', 'Be Busy and Be happy', 'Roorkee', 'Uttarakhand', 'Studying B.TECH CSE', 'Web-development and Coding', 'Poem-Writing', 'Live and let live.'),
	('Gaurav', 'Busy', 'Roorkee', 'Uttarakhand', 'Studying B.TECH ECE', 'VLSI designing', 'Reading Novels', 'Live and enjoy'),
	('Manglam', 'At the Gym', 'Roorkee', 'Uttarakhand', 'Studying B.TECH CIVIL', 'Bodybuilding', 'bikeriding', 'be happy'),
	('Jitendra Gora', 'Busy', 'Jaipur', 'Rajasthan', 'Studying B.TECH CSE', 'Fitness', 'Singing,Dancing', 'Live and enjoy');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;


-- Dumping structure for table chatapp.user
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table chatapp.user: ~11 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`name`, `email`, `password`, `mobile`, `username`) VALUES
	('Anant', 'anant11197@gmail.com', '12321', '7895666641', 'ajrke'),
	('Gaurav', 'gps@gmail.com', '12345', '7896575700', 'gps1234'),
	('Manglam', 'mgmawl@gmail.com', '123453', '98973445700', 'mgal123'),
	('Vivek', 'vivek@gmail.com', '1234', '12345', 'vk123'),
	('Jitendra Gora', 'jitendra@gmail.com', '12321', '987678543', 'jitu1232'),
	('Anil', 'anil@gmail.com', '12321', '1232113', 'anil'),
	('Vishal Singhal', 'vishal123@gmail.com', '12343', '9976836678', 'vishu123'),
	('Nikhil Singh', 'nikhil3452@gmail.com', '12321', '7809885448', 'nikhil34'),
	('Chetan Sharma', 'chetansharma123@gmail.com', '2332223', '9877676378', 'chetan2233'),
	('Vipin Mahawar', 'vpmmr12321@gmail.com', '23544', '9834566542', 'vpn2342'),
	('Naman Garg', 'namangarg123@gmail.com', '12321', '9878967887', 'naman234');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for view chatapp.v_userfeed
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `v_userfeed` (
	`Id` INT(11) NOT NULL,
	`name` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`feed` TEXT NULL COLLATE 'latin1_swedish_ci',
	`color` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`date` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`time` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`member1` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`member2` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;


-- Dumping structure for view chatapp.v_userfeed
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `v_userfeed`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` VIEW `v_userfeed` AS SELECT fd.Id,fd.name,fd.feed,fd.color,fd.date,fd.time,fw.member1,fw.member2
FROM feed as fd
LEFT JOIN
follow as fw
ON fd.name=fw.member2 ;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
