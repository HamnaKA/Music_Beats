-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 07, 2020 at 06:58 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbmusicbeats`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE IF NOT EXISTS `tblcompany` (
  `cName` varchar(50) NOT NULL,
  `cAddress` varchar(100) NOT NULL,
  `cContact` varchar(50) NOT NULL,
  `cLicense` varchar(50) NOT NULL,
  `cEmail` varchar(50) NOT NULL,
  PRIMARY KEY (`cLicense`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`cName`, `cAddress`, `cContact`, `cLicense`, `cEmail`) VALUES
('ABC', 'sdrfgber', '9561023478', 'sd57', 'abc@gmail.com'),
('xyz', 'jkbh', '9562301478', 'sf545', 'xyz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE IF NOT EXISTS `tbllogin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`username`, `password`, `utype`, `status`) VALUES
('admin@gmail.com', 'admin', 'admin', '1'),
('abc@gmail.com', 'abc@1234', 'company', '1'),
('shilpa@gmail.com', 'shilpa@123', 'user', '1'),
('xyz@gmail.com', 'xyz@1234', 'company', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbllyrics`
--

CREATE TABLE IF NOT EXISTS `tbllyrics` (
  `lId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` int(11) NOT NULL,
  `lyrics` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`lId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbllyrics`
--

INSERT INTO `tbllyrics` (`lId`, `sId`, `lyrics`, `status`) VALUES
(1, 1, 'Thaam thakita theem thakita thom thakita tha(4)\r\nChingamaasam vannu chernaal nine nyaanum swanthamaakum\r\nNenjilolum vennilaavin ponnilani swanathamaakum\r\nMegha phazambhu kondu manathu kotaketti nine nyan kondu pogum\r\nAha..minnal vilichu ninnu marathe chela kondu nine nyan moodi vekyum\r\nAay ya ya ye ….ya ya ye…(4)\r\n\r\nChingamaasam vannu chernaal nine nyaanum swanthamaakum\r\nNenjilolum vennilaavin ponnilani swanathamaakum\r\n\r\nKanniyil kadhir koyyanam poo vaaliye mazha meghamaai\r\nOh…vinnile vana vallimel nira thingalaam thiri vaikyanam\r\nRaakozhi kunzupol paragal chinganam manathe muttamaage\r\nOh kaaveri thennalaal poomanam ponganam manathe kootilaage\r\nYini pisha pisha milla ochapicha machu kochu pacha kiliyaay\r\nNamuk onnichu yirunnu kunzu kombil yirunnu onichu namakku parakkaam\r\nAay ya ya ye ….ya ya ye…\r\n\r\nChingamaasam vannu chernaal nine nyaanum swanthamaakum\r\nNenjilolum vennilaavin ponnilani swanathamaakum\r\n\r\nDevaraay thiru thevaraay nin theeril ni yedhirelkkanam\r\nMamanaai mani maaranaai ni', '1'),
(2, 2, 'jhgjh', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE IF NOT EXISTS `tblnotes` (
  `nId` int(11) NOT NULL AUTO_INCREMENT,
  `sId` int(11) NOT NULL,
  `notes` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`nId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`nId`, `sId`, `notes`, `status`) VALUES
(1, 1, 'etdhgtrg', '1'),
(2, 2, 'kljhjb', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tblsongs`
--

CREATE TABLE IF NOT EXISTS `tblsongs` (
  `sId` int(11) NOT NULL AUTO_INCREMENT,
  `sName` varchar(50) NOT NULL,
  `film` varchar(50) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  `releasedate` varchar(50) NOT NULL,
  `album` varchar(50) NOT NULL,
  `singer` varchar(50) NOT NULL,
  `composer` varchar(50) NOT NULL,
  `lyricist` varchar(50) NOT NULL,
  `path` varchar(500) NOT NULL,
  `cName` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblsongs`
--

INSERT INTO `tblsongs` (`sId`, `sName`, `film`, `duration`, `language`, `releasedate`, `album`, `singer`, `composer`, `lyricist`, `path`, `cName`, `status`) VALUES
(1, 'Chingamasam ', 'Meesha madhavan', '5.45', 'Malayalam', '2004-03-11', 'Meesha madhavan', 'Rimi tomy', 'awrfgr', 'esargser', '/media/Chingamaasam.mp3', 'abc@gmail.com', '1'),
(2, 'aaaa', 'jyhg', '5.01', 'Malayalam', '2018-02-13', 'dfsd', 'dfgdf', 'rgfr', 'rfgr', '/media/Raftaara%20(Kuttyweb.xyz).mp3', 'abc@gmail.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE IF NOT EXISTS `tbluser` (
  `uName` varchar(50) NOT NULL,
  `uAddress` varchar(50) NOT NULL,
  `uContact` varchar(50) NOT NULL,
  `uEmail` varchar(50) NOT NULL,
  PRIMARY KEY (`uEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`uName`, `uAddress`, `uContact`, `uEmail`) VALUES
('Shilpa', 'argre', '9612345787', 'shilpa@gmail.com');
