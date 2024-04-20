/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - trusted_data_transfer
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`trusted_data_transfer` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `trusted_data_transfer`;

/*Table structure for table `datastorage` */

DROP TABLE IF EXISTS `datastorage`;

CREATE TABLE `datastorage` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `datastorage` */

insert  into `datastorage`(`username`,`password`) values ('ds','ds');

/*Table structure for table `images` */

DROP TABLE IF EXISTS `images`;

CREATE TABLE `images` (
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `images` */

insert  into `images`(`username`,`email`,`img`) values ('shiva','shivakrish5573@gmail.com','1.jpg');

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manager` */

insert  into `manager`(`username`,`password`) values ('manager','manager');

/*Table structure for table `source` */

DROP TABLE IF EXISTS `source`;

CREATE TABLE `source` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `source` */

/*Table structure for table `td` */

DROP TABLE IF EXISTS `td`;

CREATE TABLE `td` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `address` text,
  `mobile` varchar(100) DEFAULT NULL,
  `skey` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `td` */

/*Table structure for table `tdrequest` */

DROP TABLE IF EXISTS `tdrequest`;

CREATE TABLE `tdrequest` (
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tdrequest` */

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `file` longtext,
  `filename` varchar(100) NOT NULL,
  `CDate` timestamp NULL DEFAULT NULL,
  `cipher` longtext,
  `email` varchar(100) DEFAULT NULL,
  `bank` varchar(100) DEFAULT NULL,
  `card` varchar(100) DEFAULT NULL,
  `cvv` varchar(100) DEFAULT NULL,
  `skey` varchar(100) DEFAULT NULL,
  `stat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
