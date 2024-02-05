/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - showtime
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `showtime`;

USE `showtime`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `avail_tab` */

DROP TABLE IF EXISTS `avail_tab`;

CREATE TABLE `avail_tab` (
  `tid_ct` varchar(10) DEFAULT NULL,
  `tname_ct` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) DEFAULT NULL,
  `cat_ct` varchar(100) DEFAULT NULL,
  `cost_ct` double DEFAULT NULL,
  `tot_seats_ct` int(11) DEFAULT NULL,
  `avail_seats_ct` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `avail_tab` */

insert  into `avail_tab`(`tid_ct`,`tname_ct`,`screen_ct`,`cat_ct`,`cost_ct`,`tot_seats_ct`,`avail_seats_ct`) values ('1','Satyam Theater','Screen1','Platinum',100,250,125),('1','Satyam Theater','Screen1','Gold',70,250,125),('2','Satyam Theater','Screen2','Platinum',170,270,135),('3','Big Cinimas','Screen1','Platinum',100,250,125),('3','Big Cinimas','Screen1','Gold',70,250,125),('4','Big Cinimas','Screen2','Platinum',100,250,125);

/*Table structure for table `manager_tab` */

DROP TABLE IF EXISTS `manager_tab`;

CREATE TABLE `manager_tab` (
  `rid_ct` varchar(5) DEFAULT NULL,
  `mname_ct` varchar(500) DEFAULT NULL,
  `memail_ct` varchar(500) NOT NULL,
  `mpno_ct` varchar(500) DEFAULT NULL,
  `mno_ct` varchar(500) DEFAULT NULL,
  `city_ct` varchar(100) DEFAULT NULL,
  `street_ct` varchar(100) DEFAULT NULL,
  `un_ct` varchar(100) NOT NULL DEFAULT '',
  `pwd_ct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`un_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `manager_tab` */

insert  into `manager_tab`(`rid_ct`,`mname_ct`,`memail_ct`,`mpno_ct`,`mno_ct`,`city_ct`,`street_ct`,`un_ct`,`pwd_ct`) values ('1','sajid','sajid24x7@gmail.com','0404090099','9838233','nndfnjds','hyd','sajid','sajid'),('2','Md Sajid','sajid@gmail.com','04065511811','0819135811','siri towers','Hyderabad','sajid12','sajid');

/*Table structure for table `movies_tab` */

DROP TABLE IF EXISTS `movies_tab`;

CREATE TABLE `movies_tab` (
  `tid_ct` varchar(10) NOT NULL,
  `tname` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) NOT NULL,
  `movie_ct` varchar(100) NOT NULL,
  `show_ct` varchar(100) NOT NULL,
  `time_ct` varchar(100) DEFAULT NULL,
  `sdate_ct` varchar(100) DEFAULT NULL,
  `edate_ct` varchar(100) DEFAULT NULL,
  `pic_ct` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`tid_ct`,`movie_ct`,`show_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `movies_tab` */

insert  into `movies_tab`(`tid_ct`,`tname`,`screen_ct`,`movie_ct`,`show_ct`,`time_ct`,`sdate_ct`,`edate_ct`,`pic_ct`) values ('2','Satyam Theater','Screen2','Guru Telugu 2D','11:00','Morning Show','2017-03-04','2017-03-06','IMG_20161212_224454.jpg'),('2','Satyam Theater','Screen2','Guru Telugu 2D','14:00','Matnie Show','2017-03-04','2017-03-06','IMG_20161212_224454.jpg'),('2','Satyam Theater','Screen2','Guru Telugu 2D','18:00','1st show','2017-03-04','2017-03-06','IMG_20161212_224454.jpg'),('2','Satyam Theater','Screen2','Guru Telugu 2D','21:00','2nd show','2017-03-04','2017-03-06','IMG_20161212_224454.jpg'),('3','Big Cinimas','Screen1','Guru','10:30','Morning Show','2017-03-02','2017-03-04','IMG_20161212_224454.jpg'),('3','Big Cinimas','Screen1','Guru','14:00','Matnie Show','2017-03-02','2017-03-04','IMG_20161212_224454.jpg'),('3','Big Cinimas','Screen1','Guru','18:00','1st show','2017-03-02','2017-03-04','IMG_20161212_224454.jpg'),('3','Big Cinimas','Screen1','Guru','21:00','2nd show','2017-03-02','2017-03-04','IMG_20161212_224454.jpg');

/*Table structure for table `register_tab` */

DROP TABLE IF EXISTS `register_tab`;

CREATE TABLE `register_tab` (
  `id_ct` int(10) NOT NULL,
  `name_ct` varchar(50) NOT NULL,
  `lname_ct` varchar(50) NOT NULL,
  `address_ct` varchar(500) DEFAULT NULL,
  `phone_ct` varchar(14) DEFAULT NULL,
  `email_ct` varchar(50) NOT NULL,
  `pwd_ct` varchar(50) NOT NULL,
  PRIMARY KEY (`email_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register_tab` */

insert  into `register_tab`(`id_ct`,`name_ct`,`lname_ct`,`address_ct`,`phone_ct`,`email_ct`,`pwd_ct`) values (0,'ali','md','siri towers','9879879878','ali@gmail.com','sajid');

/*Table structure for table `shows_tab` */

DROP TABLE IF EXISTS `shows_tab`;

CREATE TABLE `shows_tab` (
  `tid_ct` varchar(10) DEFAULT NULL,
  `tname_ct` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) DEFAULT NULL,
  `time_ct` varchar(100) DEFAULT NULL,
  `show_ct` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `shows_tab` */

insert  into `shows_tab`(`tid_ct`,`tname_ct`,`screen_ct`,`time_ct`,`show_ct`) values ('1','Satyam Theater','Screen1','11:00','Morning Show'),('1','Satyam Theater','Screen1','14:00','Matnie Show'),('1','Satyam Theater','Screen1','18:00','1st show'),('1','Satyam Theater','Screen1','21:00','2nd show'),('2','Satyam Theater','Screen2','11:00','Morning Show'),('2','Satyam Theater','Screen2','14:00','Matnie Show'),('2','Satyam Theater','Screen2','18:00','1st show'),('2','Satyam Theater','Screen2','21:00','2nd show'),('3','Big Cinimas','Screen1','10:30','Morning Show'),('3','Big Cinimas','Screen1','14:00','Matnie Show'),('3','Big Cinimas','Screen1','18:00','1st show'),('3','Big Cinimas','Screen1','21:00','2nd show'),('4','Big Cinimas','Screen2','11:01','Morning Show'),('4','Big Cinimas','Screen2','14:00','Matnie Show'),('4','Big Cinimas','Screen2','17:45','1st show'),('4','Big Cinimas','Screen2','21:00','2nd show');

/*Table structure for table `subscribe_tab` */

DROP TABLE IF EXISTS `subscribe_tab`;

CREATE TABLE `subscribe_tab` (
  `name_ct` varchar(100) DEFAULT NULL,
  `email_ct` varchar(500) NOT NULL,
  PRIMARY KEY (`email_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `subscribe_tab` */

insert  into `subscribe_tab`(`name_ct`,`email_ct`) values ('ali','sajid24x7@gmail.com');

/*Table structure for table `theater_tab` */

DROP TABLE IF EXISTS `theater_tab`;

CREATE TABLE `theater_tab` (
  `tid_ct` int(11) DEFAULT NULL,
  `tname_ct` varchar(100) NOT NULL,
  `screen_ct` varchar(100) NOT NULL,
  `city_ct` varchar(100) DEFAULT NULL,
  `type_ct` varchar(100) DEFAULT NULL,
  `address_ct` varchar(500) DEFAULT NULL,
  `email_ct` varchar(100) DEFAULT NULL,
  `contact_ct` varchar(100) DEFAULT NULL,
  `loc_ct` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`tname_ct`,`screen_ct`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `theater_tab` */

insert  into `theater_tab`(`tid_ct`,`tname_ct`,`screen_ct`,`city_ct`,`type_ct`,`address_ct`,`email_ct`,`contact_ct`,`loc_ct`) values (3,'Big Cinimas','Screen1','Multiplex','Hyderabad','hud','big@gmail.com','9999999999','https://www.google.co.in/maps/place/Carnival+Cinemas+(Big+Cinemas)/@17.4302614,78.4484621,15z/data=!4m2!3m1!1s0x0:0xfebc6b9cd60f8715?sa=X&ved=0ahUKEwj_rcevj7XSAhUEKpQKHZAIDhQQ_BIIlgEwCw'),(4,'Big Cinimas','Screen2','Multiplex','Hyderabad','hud','big@gmail.com','9999999999','https://www.google.co.in/maps/place/Carnival+Cinemas+(Big+Cinemas)/@17.4302614,78.4484621,15z/data=!4m2!3m1!1s0x0:0xfebc6b9cd60f8715?sa=X&ved=0ahUKEwj_rcevj7XSAhUEKpQKHZAIDhQQ_BIIlgEwCw'),(1,'Satyam Theater','Screen1','Multiplex',' Hyderabad','jksdfhkjl','sajid24x7@gmail.com','10980980909','https://www.google.co.in/maps/place/Satyam+Theatre/@17.4371499,78.4465843,17z/data=!3m1!4b1!4m5!3m4!1s0x3bcb90c8c0100001:0xfc81b7ef3c1ab298!8m2!3d17.4371499!4d78.448773'),(2,'Satyam Theater','Screen2','Multiplex',' Hyderabad','jksdfhkjl','sajid24x7@gmail.com','10980980909','https://www.google.co.in/maps/place/Satyam+Theatre/@17.4371499,78.4465843,17z/data=!3m1!4b1!4m5!3m4!1s0x3bcb90c8c0100001:0xfc81b7ef3c1ab298!8m2!3d17.4371499!4d78.448773');

/*Table structure for table `tickets_tab` */

DROP TABLE IF EXISTS `tickets_tab`;

CREATE TABLE `tickets_tab` (
  `tid_ct` varchar(10) NOT NULL,
  `tname_ct` varchar(100) DEFAULT NULL,
  `screen_ct` varchar(100) NOT NULL,
  `movie_ct` varchar(100) NOT NULL,
  `show_ct` varchar(100) NOT NULL,
  `time_ct` varchar(100) DEFAULT NULL,
  `date_ct` varchar(100) DEFAULT NULL,
  `cat_ct` varchar(100) DEFAULT NULL,
  `cost_ct` varchar(100) DEFAULT NULL,
  `tcost_ct` varchar(100) DEFAULT NULL,
  `tickets_ct` int(4) DEFAULT NULL,
  `name_ct` varchar(100) DEFAULT NULL,
  `email_ct` varchar(100) DEFAULT NULL,
  `ticketid_ct` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tickets_tab` */

insert  into `tickets_tab`(`tid_ct`,`tname_ct`,`screen_ct`,`movie_ct`,`show_ct`,`time_ct`,`date_ct`,`cat_ct`,`cost_ct`,`tcost_ct`,`tickets_ct`,`name_ct`,`email_ct`,`ticketid_ct`) values ('2','Satyam Theater','Screen2','Guru Telugu 2D','11:00','Morning Show','2017-03-04','Platinum','170','340',2,'sajid','sajid24x7@gmail.com','T6749'),('2','Satyam Theater','Screen2','Guru Telugu 2D','11:00','Morning Show','2017-03-04','Platinum','170','850',5,'sajid','sajid24x7@gmail.com','T8594'),('3','Big Cinimas','Screen1','Guru','14:00','Matnie Show','2017-03-03','Platinum','100','300',3,'ali','ali@gmail.com','T6006');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
