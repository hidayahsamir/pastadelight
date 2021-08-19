-- phpMyAdmin SQL Dump
-- version 3.3.8
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 11:25 AM
-- Server version: 5.1.52
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pastadelight`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cusid` int(10) NOT NULL DEFAULT '0',
  `cuspassword` varchar(255) DEFAULT NULL,
  `cusfname` varchar(255) DEFAULT NULL,
  `cuslname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `hpno` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postcode` int(10) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  PRIMARY KEY (`cusid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--


-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `cusid` int(10) DEFAULT NULL,
  `orderid` int(10) DEFAULT NULL,
  `feedbackdate` varchar(255) DEFAULT NULL,
  `cusfname` varchar(255) DEFAULT NULL,
  `cuslname` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `itemid` int(255) DEFAULT NULL,
  `feedbackdesc` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `itemid` int(10) NOT NULL DEFAULT '0',
  `itemname` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `itemprice` int(10) DEFAULT NULL,
  `itemdisc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE IF NOT EXISTS `orderlist` (
  `orderid` int(10) NOT NULL DEFAULT '0',
  `orderdate` varchar(255) DEFAULT NULL,
  `cusid` int(10) DEFAULT NULL,
  `orderstatus` varchar(255) DEFAULT NULL,
  `orderprice` int(10) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderlist`
--

