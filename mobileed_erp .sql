-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 11:55 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileed_erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `attendance_trial` (
  `aid` int(11) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `student_email` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(30) NOT NULL,
  `attend` int(5) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `answer` (
  `qid` int(255) NOT NULL,
  `ansid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
(1901246, 428783),
(1152707, 1007118),
(241613, 583204),
(1411439, 1453311),
(1782455, 69219),
(254387, 1152301),
(296033, 1818282),
(1900291, 1212263),
(184203, 1421099),
(595023, 157648),
(1239149, 1915308),
(773804, 53255),
(227548, 261750),
(844614, 1510256),
(468428, 59386),
(310888, 1847501),
(1849942, 1683012),
(76178, 894097),
(356677, 1172398),
(835032, 779274),
(399911, 1303457),
(1364177, 28571),
(1819007, 1271020),
(1975901, 1980708),
(1160134, 1511487),
(1461942, 764136),
(433194, 240713),
(1360439, 1762372),
(1203722, 1111855),
(45490, 145290),
(1895210, 1600636),
(1045279, 1675843),
(348897, 257715),
(556785, 1061618),
(929567, 708143),
(1684248, 1972313),
(1798867, 1878833),
(1624, 516),
(1772, 690),
(1448, 564),
(1994, 874),
(1591, 501),
(1451, 923),
(1122, 561),
(1449, 817),
(1817, 615),
(1530, 619),
(1694, 743),
(1165, 763),
(1101, 588),
(1107, 769),
(1437, 605),
(1320, 739),
(1938, 708),
(1398, 770),
(1755, 766),
(1926, 845),
(1476, 927),
(1031, 806),
(1661, 717),
(1363, 949);

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `aid` int(11) NOT NULL,
  `docid` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `doc` varchar(255) NOT NULL,
  `stuemail` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` varchar(300) NOT NULL,
  `late` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`aid`, `docid`, `date`, `doc`, `stuemail`, `subject`, `message`, `late`) VALUES
(19, 1, '01-02-2021', '10501012017_Ishita_ACA_File.pdf', 'b@gmail.com', 'Mobile Architecture and Programming', 'Test 22 return by student', ''),
(20, 1, '01-02-2021', 'vocab_6.pdf', 'pranatimittal10@gmail.com', 'Mobile Architecture and Programming', '', ''),
(23, 2, '2021-03-28', 'pdf24_converted.pdf', 'shilpikri2000@gmail.com', 'Mobile Architecture and Programming', '', 'YES'),
(24, 6, '2021-03-28', 'My_Card.pdf', 'shilpikri2000@gmail.com', 'Mobile Architecture and Programming', 'ji', 'NO'),
(25, 2, '2021-04-06', 'Data_Communications_and_Networking_By_Behrouz_A.Forouzan.pdf', 'bshweta099@gmail.com', 'Mobile Architecture and Programming', '', 'YES'),
(26, 6, '2021-04-06', 'Placement_Undertaking.pdf', 'bshweta099@gmail.com', 'Mobile Architecture and Programming', '', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `program` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `rollno` varchar(15) NOT NULL,
  `tid` int(225) NOT NULL,
  `attendno` int(100) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`program`, `branch`, `semester`, `rollno`, `tid`, `attendno`) VALUES
('BTech.', 'CSE2', 6, '14001012018', 24, 0),
('BTech.', 'CSE2', 6, '11401012018', 24, 1),
('BTech.', 'CSE2', 6, '14901012018', 24, 1),
('BTech.', 'CSE2', 6, '14101012018', 24, 0),
('BTech.', 'CSE2', 6, '10401012018', 24, 0),
('BTech.', 'CSE2', 6, '08301012018', 24, 0),
('BTech.', 'CSE2', 6, '12101012018', 24, 1),
('BTech.', 'CSE2', 6, '12701012018', 24, 1),
('BTech.', 'CSE2', 6, '11501012018', 24, 0),
('BTech.', 'CSE2', 6, '10801012018', 24, 0),
('BTech.', 'CSE2', 6, '14301012018', 24, 0),
('BTech.', 'CSE2', 6, '09601012018', 24, 1),
('BTech.', 'CSE2', 6, '08601012018', 24, 0),
('BTech.', 'CSE2', 6, '14801012018', 24, 1),
('BTech.', 'CSE2', 6, '12501012018', 24, 1),
('BTech.', 'CSE2', 6, '08201012018', 24, 1),
('BTech.', 'CSE2', 6, '08401012018', 24, 0),
('BTech.', 'CSE2', 6, '12201012018', 24, 1),
('BTech.', 'CSE2', 6, '10901012018', 24, 1),
('BTech.', 'CSE2', 6, '12001012018', 24, 1),
('BTech.', 'CSE2', 6, '13401012018', 24, 0),
('BTech.', 'CSE2', 6, '08701012018', 24, 0),
('BTech.', 'CSE2', 6, '0800102018', 24, 0),
('BTech.', 'CSE2', 6, '10501012018', 24, 1),
('BTech.', 'CSE2', 6, '10201012018', 24, 1),
('BTech.', 'CSE2', 6, '11801012018', 24, 1),
('BTech.', 'CSE2', 6, '12301012018', 24, 1),
('BTech.', 'CSE2', 6, '08101012018', 24, 1),
('BTech.', 'CSE2', 6, '11901012018', 24, 1),
('BTech.', 'CSE2', 6, '07801012018', 24, 1),
('BTech.', 'CSE2', 6, '09801012018', 24, 1),
('BTech.', 'CSE2', 6, '15601012018', 24, 1),
('BTech.', 'CSE2', 6, '15301012018', 24, 1),
('BTech.', 'CSE2', 6, '09001012018', 24, 0),
('BTech.', 'CSE2', 6, '14401012018', 24, 0),
('BTech.', 'CSE2', 6, '10101012018', 24, 1),
('BTech.', 'CSE2', 6, '15801012018', 24, 1),
('BTech.', 'CSE2', 6, '08501012018', 24, 0),
('BTech.', 'CSE2', 6, '07701012018', 24, 1),
('BTech.', 'CSE2', 6, '14201012018', 24, 0),
('BTech.', 'CSE2', 6, '09901012018', 24, 1),
('BTech.', 'CSE2', 6, '10701012018', 24, 1),
('BTech.', 'CSE2', 6, '13001012018', 24, 1),
('BTech.', 'CSE2', 6, '14701012018', 24, 0),
('BTech.', 'CSE2', 6, '15401012018', 24, 1),
('BTech.', 'CSE2', 6, '10001012018', 24, 1),
('BTech.', 'CSE2', 6, '15901012018', 24, 1),
('BTech.', 'CSE2', 6, '13701012018', 24, 0),
('BTech.', 'CSE2', 6, '14501012018', 24, 0),
('BTech.', 'CSE2', 6, '09301012018', 24, 0),
('BTech.', 'CSE2', 6, '09401012018', 24, 1),
('BTech.', 'CSE2', 6, '15501012018', 24, 0),
('BTech.', 'CSE2', 6, '11601012018', 24, 0),
('BTech.', 'CSE2', 6, '08801012018', 24, 0),
('BTech.', 'CSE2', 6, '12901012018', 24, 1),
('BTech.', 'CSE2', 6, '15201012018', 24, 0),
('BTech.', 'CSE2', 6, '15701012018', 24, 1),
('BTech.', 'CSE2', 6, '15001012018', 24, 1),
('BTech.', 'CSE2', 6, '09101012018', 24, 0),
('BTech.', 'CSE2', 6, '07901012018', 24, 1),
('BTech.', 'CSE2', 6, '12401012018', 24, 1),
('BTech.', 'CSE2', 6, '11301012018', 24, 1),
('BTech.', 'CSE2', 6, '11201012018', 24, 1),
('BTech.', 'CSE2', 6, '13901012018', 24, 0),
('BTech.', 'CSE2', 6, '10601012018', 24, 0),
('BTech.', 'CSE2', 6, '15101012018', 24, 1),
('BTech.', 'CSE2', 6, '13801012018', 24, 0),
('BTech.', 'CSE2', 6, '09501012018', 24, 1),
('BTech.', 'CSE2', 6, '13601012018', 24, 0),
('BTech.', 'CSE2', 6, '11101012018', 24, 0),
('BTech.', 'CSE2', 6, '13501012018', 24, 0),
('BTech.', 'CSE2', 6, '09201012018', 24, 0),
('BTech.', 'CSE2', 6, '12801012018', 24, 1),
('BTech.', 'CSE2', 6, '12601012018', 24, 1),
('MTech.', 'AI', 2, '01202102020', 24, 1),
('MTech.', 'AI', 2, '02802102020 ', 24, 1),
('MTech.', 'AI', 2, '01102102020', 24, 1),
('MTech.', 'AI', 2, '01602102020', 24, 1),
('MTech.', 'AI', 2, '02602102020', 24, 1),
('BTech.', 'CSE2', 6, '13101012018', 24, 0),
('MTech.', 'AI', 2, '02202102020', 24, 1),
('MTech.', 'AI', 2, '0200210202', 24, 1),
('BTech.', 'CSE2', 6, '1320102018', 24, 0),
('MTech.', 'AI', 2, '02102102020', 24, 1),
('MTech.', 'AI', 2, '00902102020', 24, 1),
('MTech.', 'AI', 2, '00202102020', 24, 1),
('MTech.', 'AI', 2, '01802102020', 24, 1),
('MTech.', 'AI', 2, '01902102020', 24, 1),
('MTech.', 'AI', 2, '02302102020', 24, 1),
('MTech.', 'AI', 2, '00602102020', 24, 1),
('MTech.', 'AI', 2, '01002102020', 24, 1),
('MTech.', 'AI', 2, '01502102020', 24, 1),
('MTech.', 'AI', 2, '00302102020', 24, 1),
('MTech.', 'AI', 2, '03302102020', 24, 1),
('MTech.', 'AI', 2, '02702102020', 24, 1),
('MTech.', 'AI', 2, '01402102020', 24, 1),
('MTech.', 'AI', 2, '00502102020', 24, 1),
('MTech.', 'AI', 2, '00702102020', 24, 1),
('MTech.', 'AI', 2, '01702102020', 24, 1),
('MTech.', 'AI', 2, '00802102020', 24, 1),
('MTech.', 'AI', 2, '00402102020', 24, 1),
('MTech.', 'AI', 2, '01302102020', 24, 1),
('MTech.', 'AI', 2, '03002102020', 24, 1),
('MTech.', 'AI', 2, '00102102020', 24, 0),
('BTech.', 'CSE2', 6, '09701012018', 24, 1),
('BTech.', 'CSE2', 6, '10301012018', 24, 1),
('BTech.', 'CSE2', 6, '11701012018', 24, 2),
('BTech.', 'CSE2', 6, '13301012018', 24, 1),
('BTech.', 'CSE2', 6, '14601012018', 24, 0),
('BTech.', 'CSE2', 6, '11001012018', 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_fb`
--

CREATE TABLE `class_fb` (
  `f_id` int(11) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `tid` int(11) NOT NULL,
  `date` varchar(12) NOT NULL,
  `program` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `semester` int(11) NOT NULL,
  `feedback` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_fb`
--

INSERT INTO `class_fb` (`f_id`, `tname`, `tid`, `date`, `program`, `branch`, `batch`, `semester`, `feedback`) VALUES
(1, 'Monika', 1, '2020-01-23', 'Btech.', 'CSE', '2016-2020', 8, 'CSE will have a class test on 2/02/2020.');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `program` varchar(20) NOT NULL,
  `branch` varchar(15) NOT NULL,
  `semester` int(11) NOT NULL,
  `tid` varchar(12) NOT NULL,
  `subjcode` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`program`, `branch`, `semester`, `tid`, `subjcode`) VALUES
('BTech.', 'CSE2', 6, '24', 'BCS 302'),
('MTech.', 'AI', 2, '24', 'MCS 104'),
('Mtech.', 'AI', 1, '2', ''),
('Btech.', 'CSE2', 4, '1', ''),
('Btech.', 'CSE2', 8, '1', ''),
('Btech.', 'CSE2', 8, '3', ''),
('MTech.', 'AI', 2, '', ''),
('PhD', 'AI', 8, '1', ''),
('BTech.', 'CSE1', 6, '1', ''),
('Btech.', 'CSE1', 8, '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `did` int(11) NOT NULL,
  `dname` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `date` varchar(12) NOT NULL,
  `deaddate` date DEFAULT NULL,
  `sub_name` varchar(100) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc` varchar(255) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `prog` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `sem` varchar(100) NOT NULL,
  `options` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `date`, `deaddate`, `sub_name`, `doc_name`, `doc`, `message`, `teacher_id`, `prog`, `branch`, `sem`, `options`) VALUES
(2, '28-03-2021', '2021-04-05', 'Mobile Architecture and Programming', 'Eukarya', 'pdf24_converted.pdf', 'Ki', 24, 'BTech.', 'CSE2', '6', 'Assignment'),
(4, '28-03-2021', '2021-03-25', 'IoT and its Application in AI', 'Toxic Comment Classifier', 'B.Tech_8th_Sem_Project_Presentation_Schedule_02.03.2021.pdf', 'Yo', 24, 'MTech.', 'AI', '6', 'Assignment'),
(5, '2021-03-28', '2021-03-28', 'Mobile Architecture and Programming', 'Eukarya', 'power-electronics-by-ps-bimbhraeng4world-com.pdf', 'ji', 24, 'BTech.', 'CSE2', '6', 'LearningResource'),
(6, '2021-03-28', '2021-04-28', 'Mobile Architecture and Programming', 'Mini-Tennis', 'power-electronics-by-ps-bimbhraeng4world-com.pdf', 'hi', 24, 'BTech.', 'CSE2', '6', 'Assignment'),
(15, '2020-02-06', NULL, 'MAP', 'Assignment 12', 'minor project research paper.pdf', 'Complete by tomorrow.', 1, '', '', '', ''),
(16, '2020-02-07', NULL, 'OS', 'notes', 'aca file.docx', 'submit next monday', 3, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` int(11) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `qualification` longtext NOT NULL,
  `area_of_sp` longtext NOT NULL,
  `did` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `email` varchar(180) NOT NULL,
  `office_loc` varchar(10000) NOT NULL,
  `cur_teaching` mediumtext NOT NULL,
  `interests` mediumtext NOT NULL,
  `prof_society` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_achievement`
--

CREATE TABLE `f_achievement` (
  `aid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_books`
--

CREATE TABLE `f_books` (
  `bid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `year` varchar(6) NOT NULL,
  `bookname` text NOT NULL,
  `publisher` varchar(1000) NOT NULL,
  `author` text NOT NULL,
  `isbn` varchar(10) NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_complete_funding`
--

CREATE TABLE `f_complete_funding` (
  `com_id` int(100) NOT NULL,
  `fid` int(255) NOT NULL,
  `completed_project` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_conference`
--

CREATE TABLE `f_conference` (
  `cid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `year` varchar(6) NOT NULL,
  `paper` longtext NOT NULL,
  `link` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_cons_ass_funding`
--

CREATE TABLE `f_cons_ass_funding` (
  `cons_id` int(100) NOT NULL,
  `fid` int(255) NOT NULL,
  `cons_ass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_current_funding`
--

CREATE TABLE `f_current_funding` (
  `cur_id` int(100) NOT NULL,
  `fid` int(255) NOT NULL,
  `current_project` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_equipment_funding`
--

CREATE TABLE `f_equipment_funding` (
  `equip_id` int(100) NOT NULL,
  `fid` int(255) NOT NULL,
  `equipment_grant` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `f_journal`
--

CREATE TABLE `f_journal` (
  `jid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `year` varchar(6) NOT NULL,
  `papertitle` longtext NOT NULL,
  `indexing` varchar(1000) NOT NULL,
  `impactfactor` varchar(10) NOT NULL,
  `publisher` varchar(10000) NOT NULL,
  `volume` varchar(1000) NOT NULL,
  `isbn` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_research`
--

CREATE TABLE `f_research` (
  `rid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `year` varchar(6) NOT NULL,
  `p_name` longtext NOT NULL,
  `link` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `f_student`
--

CREATE TABLE `f_student` (
  `sid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `type` varchar(8) NOT NULL,
  `name` varchar(40) NOT NULL,
  `topic` text NOT NULL,
  `university` varchar(500) NOT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quizid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `right_ans` int(11) NOT NULL,
  `wrong_ans` int(11) NOT NULL,
  `unattempted` int(10) NOT NULL,
  `date` varchar(10) NOT NULL,
  `stud_ans` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hid`, `email`, `quizid`, `score`, `right_ans`, `wrong_ans`, `unattempted`, `date`, `stud_ans`) VALUES
(4, 's@gmail.com', 179, 2, 1, 1, 0, '2020-01-23', '3@8@'),
(5, 's@gmail.com', 188, 1, 1, 0, 0, '2020-01-23', 'contagious@'),
(6, 's@gmail.com', 188, 0, 0, 1, 0, '2020-01-24', 'randomly@'),
(7, 's@gmail.com', 188, 1, 1, 0, 0, '2020-01-24', 'contagious@'),
(8, 's@gmail.com', 188, 0, 0, 0, 1, '2020-01-25', 'Unattempted@'),
(10, 'n@gmail.com', 179, 0, 0, 1, 1, '2020-01-25', '3@Unattempted@'),
(11, 'n@gmail.com', 105, 8, 2, 0, 0, '2020-01-25', 'Intranet Message Access Protocol@none of the above@'),
(12, 'n@gmail.com', 105, 8, 2, 0, 0, '2020-01-25', 'Intranet Message Access Protocol@none of the above@'),
(13, 'r@gmail.com', 105, 8, 2, 0, 0, '2020-01-26', 'Intranet Message Access Protocol@none of the above@'),
(14, 'r@gmail.com', 105, 0, 0, 0, 2, '2020-01-26', 'Unattempted@'),
(15, 'r@gmail.com', 105, -2, 0, 2, 0, '2020-01-26', 'malware@'),
(16, 'r@gmail.com', 105, 8, 2, 0, 0, '2020-01-26', 'Intranet Message Access Protocol@none of the above@'),
(17, 's@gmail.com', 105, 8, 2, 0, 0, '2020-01-26', 'Intranet Message Access Protocol@none of the above@'),
(18, 's@gmail.com', 179, 0, 0, 1, 1, '2020-01-26', '2@Unattempted@'),
(19, 's@gmail.com', 179, 2, 1, 1, 0, '2020-01-26', '1@8@'),
(20, 's@gmail.com', 179, 2, 1, 1, 0, '2020-01-26', '5@7@'),
(21, 's@gmail.com', 105, 0, 0, 0, 2, '2020-01-26', 'Unattempted@'),
(22, 'rsmojha1997@gmail.com', 177, 0, 0, 0, 0, '2020-01-26', ''),
(23, 'rsmojha1997@gmail.com', 179, 2, 1, 1, 0, '2020-01-26', '3@8@'),
(24, '', 141, -1, 0, 1, 0, '2020-01-26', 'Q@'),
(25, '', 173, 0, 0, 0, 2, '2020-01-26', 'Unattempted@Unattempted@'),
(26, '', 187, 0, 0, 0, 2, '2020-01-26', 'Unattempted@Unattempted@'),
(27, 'rsmojha1997@gmail.com', 129, -1, 0, 1, 0, '2020-02-03', 'e@'),
(28, 'rsmojha1997@gmail.com', 105, -2, 0, 2, 0, '2020-02-03', 'malware@@'),
(29, 's@gmail.com', 141, -1, 0, 1, 0, '2020-02-12', 'W@'),
(30, 's@gmail.com', 619574, 2, 2, 1, 1, '2020-02-12', 'w@c@d@a@Unattempted@'),
(31, '', 619574, 2, 2, 2, 0, '2020-02-17', '3@d@a@a@c@'),
(32, 'n@gmail.com', 619574, 1, 1, 0, 3, '2020-02-19', 'Unattempted@Unattempted@a@Unattempted@'),
(33, 'an@gmail.com', 619574, 2, 2, 0, 2, '2020-02-20', 'b@Unattempted@Unattempted@c@'),
(34, 'an@gmail.com', 105, 0, 0, 0, 2, '2020-02-20', 'Unattempted@'),
(35, 'n@gmail.com', 129, 0, 0, 0, 1, '2020-02-20', 'Unattempted@'),
(171, 'b@gmail.com', 233971, 2, 1, 1, 0, '01-02-2021', '1503971@1602366@'),
(172, 'pranatimittal10@gmail.com', 233971, 0, 0, 2, 0, '01-02-2021', '43937@1007118@'),
(173, 'annu003mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '233528@1510256@1451362@1847501@1683012@'),
(174, 'aarushi027mtcse20@igdtuw.ac.in', 1827397, 2, 1, 4, 0, '04-02-2021', '233528@1510256@1451362@1280976@549690@'),
(175, 'ruchika020mtcse20@igdtuw.ac.in', 1827397, 8, 4, 1, 0, '04-02-2021', '261750@1510256@1061030@1847501@1683012@'),
(176, 'testid@gmail.com', 1115461, 0, 0, 0, 10, '04-02-2021', 'UWhich animal is known as the ‘Ship of the Desert?@UHow many letters are there in the English alphabet?@UWhat do you call a type of shape that has five sides?@UWhat is a baby frog called?@UWhich is the largest mammal?@UFor which of the following disciplines is Nobel Prize awarded?\r\n\r\nA.	Physics and Chemistry\r\nB.	Physiology or Medicine\r\nC.	Literature, Peace and Economics\r\nD.	All of the above@UHitler party which came into power in 1933 is known as\r\n\r\nA.	Labour Party\r\nB.	Nazi Party\r\nC.	Ku-Klux-Klan\r\nD.	Democratic Party@UFamous sculptures depicting art of love built some time in 950 AD - 1050 AD are\r\n\r\nA.	Khajuraho temples\r\nB.	Jama Masjid\r\nC.	Sun temple\r\nD.	Mahabalipuram temples@UFriction can be reduced by changing from\r\n\r\nA.	sliding to rolling\r\nB.	rolling to sliding\r\nC.	potential energy to kinetic energy\r\nD.	dynamic to static@UIndia has largest deposits of ____ in the world.\r\n\r\nA.	gold\r\nB.	copper\r\nC.	mica\r\nD.	None of the above@'),
(177, 'srishti023mtcse20@igdtuw.ac.in', 1827397, 8, 4, 1, 0, '04-02-2021', '261750@1510256@59386@1847501@1795251@'),
(178, 'anshi004mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1508202@646351@1847501@1683012@'),
(179, 'naaima014mtcse20@igdtuw.ac.in', 1827397, 2, 1, 4, 0, '04-02-2021', '964254@1510256@1451362@1590275@549690@'),
(180, 'medha013mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1510256@646351@1847501@549690@'),
(181, 'garima008mtcse20@igdtuw.ac.in', 1827397, 8, 4, 1, 0, '04-02-2021', '261750@1510256@1451362@1847501@1683012@'),
(182, 'mansi012mtcse20@igdtuw.ac.in', 1827397, 2, 1, 4, 0, '04-02-2021', '261750@1508202@646351@1280976@549690@'),
(183, 'arpita006mtcse20@igdtuw.ac.in', 1827397, 4, 2, 3, 0, '04-02-2021', '261750@1508202@646351@1847501@1419219@'),
(184, 'pragya016mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1508202@1451362@1847501@1683012@'),
(185, 'kriti029mtcse20@igdtuw.ac.in', 1827397, 8, 4, 1, 0, '04-02-2021', '261750@1510256@1061030@1847501@1683012@'),
(186, 'fayezasifat028mtcse20@igdtuw.ac.in', 1827397, 0, 0, 4, 1, '04-02-2021', '964254@1579906@1061030@1590275@UCtrl, Shift and Alt are called .......... keys.\r\n\r\nA) modifier	B) function\r\nC) alphanumeric	D) adjustment@'),
(187, 'isha010mtcse20@igdtuw.ac.in', 1827397, 10, 5, 0, 0, '04-02-2021', '261750@1510256@59386@1847501@1683012@'),
(188, 'shikha021mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1508202@1061030@1847501@1683012@'),
(189, 'romaisa019mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1579906@1451362@1847501@1683012@'),
(190, 'madhurima011mtcse20@igdtuw.ac.in', 1827397, 4, 2, 3, 0, '04-02-2021', '261750@1094099@1061030@1410668@1683012@'),
(191, 'shivangi022mtcse20@igdtuw.ac.in', 1827397, 8, 4, 1, 0, '04-02-2021', '261750@1510256@1061030@1847501@1683012@'),
(192, 'ras23yad@gmail.com', 1827397, 0, 0, 0, 5, '04-02-2021', 'UIndia and China are divided by which of these imaginary lines?\r\n@UWhich of the following statements are correct about the Budget?\r\ni) It is derived from Latin word Bougette\r\n\r\nii) This year the budget was paperless for the first time @UWhat is blue jet lightning? \r\n\r\nLightning that is blue in colour\r\nNorthern lights \r\nLights from the flying jet planes\r\nUpward lights emitted from the thunderstorm clouds@UThe tropic of cancer does not pass through which of these Indian states ?\r\n\r\nA) Madhya Pradesh	B) West Bengal\r\nC) Rajasthan	D) Odisha@UCtrl, Shift and Alt are called .......... keys.\r\n\r\nA) modifier	B) function\r\nC) alphanumeric	D) adjustment@'),
(193, 'chahak007mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1508202@646351@1847501@1683012@'),
(194, 'aafreen002mtcse20@igdtuw.ac.in', 1827397, 4, 2, 3, 0, '04-02-2021', '1104066@1508202@1451362@1847501@1683012@'),
(195, 'sapna026mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1579906@1061030@1847501@1683012@'),
(196, 'archana005mtcse20@igdtuw.ac.in', 1827397, 4, 2, 3, 0, '04-02-2021', '233528@1579906@59386@1847501@1795251@'),
(197, 'poulamee015mtcse20@igdtuw.ac.in ', 1827397, 6, 3, 2, 0, '04-02-2021', '261750@1510256@1061030@1280976@1683012@'),
(198, 'vishakha001mtcse20@igdtuw.ac.in', 1827397, 2, 1, 4, 0, '04-02-2021', '964254@1579906@1061030@1410668@1683012@'),
(199, 'tanjuljain19@gmail.com', 1115461, 12, 6, 3, 1, '05-02-2021', '583204@1453311@69219@1152301@1818282@444900@UHitler party which came into power in 1933 is known as\r\n\r\nA.	Labour Party\r\nB.	Nazi Party\r\nC.	Ku-Klux-Klan\r\nD.	Democratic Party@312519@1915308@1719838@'),
(200, 'urvigoel26@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@312519@1311382@53255@'),
(201, 'prernaa930@gmail.com', 1115461, 12, 6, 4, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@63010@1591824@1562586@1915308@1099417@'),
(202, 'simranaggarwal738@gmail.com', 1115461, 8, 4, 6, 0, '05-02-2021', '583204@1453311@69219@879572@1818282@444900@1442769@312519@1311382@1719838@'),
(203, 'anusha.bansal17@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(204, 'shiavangisingh@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(205, 'parulbeniwal435@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '583204@1453311@69219@1152301@763016@63010@1442769@1562586@1951808@53255@'),
(206, 'kkaurk2000@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '583204@1453311@69219@879572@1818282@63010@1442769@957867@1915308@1099417@'),
(207, 'abhipsajena2k@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '972717@1453311@69219@879572@1818282@1212263@1257618@1562586@1311382@53255@'),
(208, 'medha106btcse18@igdtuw.ac.in', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1311382@53255@'),
(209, 'nehapandey2811@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@157648@1915308@1719838@'),
(210, 'muskan.lalit18@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@957867@1915308@1719838@'),
(211, 'twinklestar039@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@139450@1421099@312519@1311382@53255@'),
(212, 'mongiakajal@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@157648@1915308@1099417@'),
(213, 'anguralaginni@yahoo.in', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@1562586@1915308@1099417@'),
(214, 'sanjana.celestron@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(215, '', 0, 0, 0, 0, 0, '05-02-2021', ''),
(216, 'gautamdeeksha7098@gmail.com', 1115461, 4, 2, 8, 0, '05-02-2021', '375357@1453311@424718@1152301@449040@444900@1257618@957867@1311382@216337@'),
(217, 'akanksha096btcse18@igdtuw.ac.in', 1115461, 12, 6, 4, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1591824@312519@1311382@216337@'),
(218, 'shilpikri2000@gmail.com', 1115461, 4, 2, 8, 0, '05-02-2021', '583204@572907@124138@1152301@1853166@444900@1257618@957867@1311382@1099417@'),
(219, 'aroma.agarwal@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@216337@'),
(220, 'manyakumari044@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@1562586@1423368@216337@'),
(221, 'pariksha.prajapati@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1423368@53255@'),
(222, 'pooniaprachi2000@gmail.com', 1115461, 2, 1, 9, 0, '05-02-2021', '583204@1078372@424718@879572@1853166@444900@1257618@957867@1951808@216337@'),
(223, 'jhamonika711@gmail.com', 1115461, 4, 2, 8, 0, '05-02-2021', '1671484@1701619@1407416@1152301@1818282@139450@1442769@957867@1423368@1719838@'),
(224, 'adyabansal18@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@157648@1311382@216337@'),
(225, 'soumya.kapsime@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@449040@1212263@1421099@312519@1915308@1099417@'),
(226, 'bhavishyatolani@gmail.com', 1115461, 6, 3, 7, 0, '05-02-2021', '583204@1078372@124138@1152301@1818282@444900@1442769@1562586@1311382@1719838@'),
(227, 'raosoumya1724@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@449040@1212263@1421099@157648@1915308@53255@'),
(228, 'sakshivats2001@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@957867@1915308@53255@'),
(229, 'sukritisingh23600@gmail.com', 1115461, 12, 6, 4, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@444900@1421099@957867@1311382@1099417@'),
(230, 'hansikarajput1611@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@216337@'),
(231, 'aditiverma0308@gmail.com', 1115461, 8, 4, 6, 0, '05-02-2021', '375357@1453311@124138@1152301@1818282@139450@1421099@312519@1423368@1719838@'),
(232, 'dhritiarora2000@gmail.com', 1115461, 4, 2, 8, 0, '05-02-2021', '375357@1701619@424718@1152301@449040@139450@1257618@1562586@1915308@1719838@'),
(233, 'ananyajain721@gmail.com', 1115461, 6, 3, 6, 1, '05-02-2021', '1671484@1453311@69219@1152301@449040@UFor which of the following disciplines is Nobel Prize awarded?\r\n\r\nA.	Physics and Chemistry\r\nB.	Physiology or Medicine\r\nC.	Literature, Peace and Economics\r\nD.	All of the above@1442769@312519@1423368@1719838@'),
(234, 'vidhikatyal2500@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '1671484@1453311@69219@879572@1818282@139450@1421099@957867@1951808@53255@'),
(235, 'ananyaautreja@gmail.com', 1115461, 12, 6, 4, 0, '05-02-2021', '375357@1453311@69219@1152301@1853166@1212263@1421099@312519@1311382@53255@'),
(236, 'divyasha.2013@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@1719838@'),
(237, 'haripriyavats@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@444900@1421099@157648@1915308@216337@'),
(238, 'muskan.dav@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(239, 'muskanbhardwaj7126@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@139450@1421099@312519@1915308@53255@'),
(240, 'sanjanadrall16@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@444900@1421099@157648@1951808@53255@'),
(241, 'neetusingh12091999@gmail.com', 1115461, 10, 5, 2, 3, '05-02-2021', '583204@UHow many letters are there in the English alphabet?@69219@1152301@UWhich is the largest mammal?@1212263@1591824@157648@1311382@UIndia has largest deposits of ____ in the world.\r\n\r\nA.	gold\r\nB.	copper\r\nC.	mica\r\nD.	None of the above@'),
(242, 'pooja.kr.374@gmail.com', 1115461, 12, 6, 4, 0, '05-02-2021', '1671484@1453311@69219@892328@449040@1212263@1421099@157648@1951808@53255@'),
(243, 'sanskalra23@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(244, 'astha.jain99@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@312519@1915308@216337@'),
(245, 'aanya.195@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@1562586@1915308@53255@'),
(246, 'guptaquanta@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@216337@'),
(247, 'dvitiarora14@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@312519@1915308@1099417@'),
(248, 'singhchanchal950@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1591824@1562586@1915308@1099417@'),
(249, 'rastogibhavika@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1951808@53255@'),
(250, 'vermaaashi22@gmail.com', 1115461, 8, 4, 6, 0, '05-02-2021', '583204@1453311@69219@1152301@763016@139450@1591824@957867@1951808@216337@'),
(251, 'aastha131btcse18@igdtuw.ac.in', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@1562586@1915308@53255@'),
(252, 'singhsakshi0623@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@312519@1951808@216337@'),
(253, 'ashmeenkaur1203@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(254, 'dakshitalal@gmail.com', 1115461, 14, 7, 1, 2, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@UFamous sculptures depicting art of love built some time in 950 AD - 1050 AD are\r\n\r\nA.	Khajuraho temples\r\nB.	Jama Masjid\r\nC.	Sun temple\r\nD.	Mahabalipuram temples@UFriction can be reduced by changing from\r\n\r\nA.	sliding to rolling\r\nB.	rolling to sliding\r\nC.	potential energy to kinetic energy\r\nD.	dynamic to static@1719838@'),
(255, 'sanchibisht29@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@139450@1421099@157648@1311382@216337@'),
(256, 'minakshi14400@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '583204@1453311@424718@1152301@1818282@63010@1421099@312519@1951808@216337@'),
(257, 'nehasingh14010@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@63010@1421099@1562586@1915308@53255@'),
(258, 'joshitaverma20@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@312519@1915308@53255@'),
(259, 'sakshi097btcse18@igdtuw.ac.in', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@312519@1915308@1099417@'),
(260, 'aakankshasingh2002@gmail.com', 1115461, 20, 10, 0, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1421099@157648@1915308@53255@'),
(261, 'vanshikasingh1303@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '583204@1453311@69219@1152301@449040@63010@1257618@1562586@1951808@53255@'),
(262, 'swatibhat499@gmail.com', 1115461, 18, 9, 1, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@157648@1915308@53255@'),
(263, 'pearlgupta2000@gmail.com', 1115461, 2, 1, 0, 9, '05-02-2021', 'UWhich animal is known as the ‘Ship of the Desert?@UHow many letters are there in the English alphabet?@UWhat do you call a type of shape that has five sides?@UWhat is a baby frog called?@1818282@UFor which of the following disciplines is Nobel Prize awarded?\r\n\r\nA.	Physics and Chemistry\r\nB.	Physiology or Medicine\r\nC.	Literature, Peace and Economics\r\nD.	All of the above@UHitler party which came into power in 1933 is known as\r\n\r\nA.	Labour Party\r\nB.	Nazi Party\r\nC.	Ku-Klux-Klan\r\nD.	Democratic Party@UFamous sculptures depicting art of love built some time in 950 AD - 1050 AD are\r\n\r\nA.	Khajuraho temples\r\nB.	Jama Masjid\r\nC.	Sun temple\r\nD.	Mahabalipuram temples@UFriction can be reduced by changing from\r\n\r\nA.	sliding to rolling\r\nB.	rolling to sliding\r\nC.	potential energy to kinetic energy\r\nD.	dynamic to static@UIndia has largest deposits of ____ in the world.\r\n\r\nA.	gold\r\nB.	copper\r\nC.	mica\r\nD.	None of the above@'),
(264, 'ishika073btcse18@igdtuw.ac.in', 1115461, 4, 2, 8, 0, '05-02-2021', '972717@1453311@124138@892328@1853166@444900@1257618@157648@1951808@216337@'),
(265, 'ayubiafshan03@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@312519@1915308@216337@'),
(266, 'komal.15k1999@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@763016@1212263@1421099@157648@1915308@1719838@'),
(267, 'riyadabas0@gmail.com', 1115461, 6, 3, 7, 0, '05-02-2021', '375357@1453311@424718@1152301@449040@444900@1591824@957867@1311382@53255@'),
(268, 'arudhingra1701@gmail.com', 1115461, 10, 5, 5, 0, '05-02-2021', '583204@1078372@69219@1152301@449040@444900@1421099@1562586@1951808@53255@'),
(269, 'anvitabansal28@gmail.com', 1115461, 14, 7, 3, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@1212263@1442769@157648@1423368@216337@'),
(270, 'nimbhalgarima@gmail.com', 1115461, 16, 8, 2, 0, '05-02-2021', '583204@1453311@69219@1152301@1818282@139450@1421099@157648@1915308@216337@'),
(271, 'indu009mtcse20@igdtuw.ac.in', 1827397, 6, 3, 2, 0, '07-02-2021', '261750@1094099@646351@1847501@1683012@'),
(272, 'pratibha.2902s@gmail.com', 1827397, 2, 1, 4, 0, '11-02-2021', '261750@1508202@646351@1590275@549690@'),
(273, 'gautamdeeksha7098@gmail.com', 1723925, 2, 2, 7, 1, '12-02-2021', '894097@259653@1127124@1303457@977546@1959961@791566@140235@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1052198@'),
(274, 'hansikarajput1611@gmail.com', 1723925, 6, 6, 4, 0, '12-02-2021', '894097@1172398@1127124@1911208@28571@1959961@1980708@210921@764136@240713@'),
(275, 'pooniaprachi2000@gmail.com', 1723925, 5, 5, 4, 1, '12-02-2021', '894097@1172398@UWhich of the following Memory is non volatile and main memory can be used to store OS @1911208@1118014@1959961@1980708@140235@764136@240713@'),
(276, 'mauryachetna46@gmail.com', 1723925, 3, 3, 7, 0, '12-02-2021', '47967@1172398@779274@1911208@28571@1959961@791566@140235@1772649@1052198@'),
(277, 'shubhi150btcse18@igdtuw.ac.in ', 1723925, 6, 6, 4, 0, '12-02-2021', '47967@1172398@207121@1911208@28571@1959961@1980708@1511487@764136@240713@'),
(278, 'sakshivats2001@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@1959961@1980708@140235@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1052198@'),
(279, 'adyabansal18@gmail.com', 1723925, 6, 6, 4, 0, '12-02-2021', '894097@1172398@1127124@1911208@28571@1271020@1980708@210921@246193@240713@'),
(280, 'akanksha096btcse18@igdtuw.ac.in', 1723925, 7, 7, 2, 1, '12-02-2021', '894097@1172398@779274@1303457@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@1271020@1980708@140235@764136@1338945@'),
(281, 'twinklestar039@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@1172398@1127124@1911208@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@1086000@1980708@210921@764136@1338945@'),
(282, 'astha.jain99@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', '894097@259653@1127124@1911208@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@1271020@172355@855666@764136@1052198@'),
(283, 'sukritisingh23600@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', '894097@1172398@1127124@1911208@977546@1271020@UWhich of the following function is used to specify kind of SoC @140235@1772649@1052198@'),
(284, 'minakshi14400@gmail.com', 1723925, 5, 5, 4, 1, '12-02-2021', '894097@1172398@UWhich of the following Memory is non volatile and main memory can be used to store OS @1911208@977546@1271020@1980708@140235@764136@1338945@'),
(285, 'neetusingh12091999@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @1172398@207121@1303457@1674208@1271020@791566@140235@823798@1052198@'),
(286, 'abhipsajena2k@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@259653@1127124@UTo develop Mobile Applications, we use @28571@1271020@1615628@855666@764136@1338945@'),
(287, 'singhchanchal950@gmail.com', 1723925, 1, 1, 8, 1, '12-02-2021', '1642539@259653@1127124@1911208@977546@1959961@1980708@140235@823798@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(288, 'aroma.agarwal@gmail.com', 1723925, 7, 7, 2, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@1271020@1980708@1511487@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @240713@'),
(289, 'muskan.lalit18@gmail.com', 1723925, 6, 6, 3, 1, '12-02-2021', '1642539@1172398@207121@1911208@28571@1271020@1980708@1511487@764136@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(290, 'Imkannupriya5@gmail.com ', 1723925, 1, 1, 8, 1, '12-02-2021', '47967@259653@207121@1911208@28571@UIs the following code is \r\ndef cal( a, b):\r\n    return( a+b, a-b, a*b, a/b);\r\nx=int(input(\"enter the first no\"));\r\nxx=int(input(\"enter the second no\"));\r\na1, a1, a1, a1 =cal(x, xx);\r\nprint (a1);@1615628@855666@246193@1338945@'),
(291, 'simranaggarwal738@gmail.com', 1723925, 7, 7, 3, 0, '12-02-2021', '894097@1172398@1127124@1303457@28571@1086000@1980708@1511487@823798@240713@'),
(292, 'prernaa930@gmail.com', 1723925, 1, 1, 7, 2, '12-02-2021', '47967@259653@1127124@1911208@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@UIs the following code is \r\ndef cal( a, b):\r\n    return( a+b, a-b, a*b, a/b);\r\nx=int(input(\"enter the first no\"));\r\nxx=int(input(\"enter the second no\"));\r\na1, a1, a1, a1 =cal(x, xx);\r\nprint (a1);@1615628@1511487@823798@44939@'),
(293, 'dvitiarora14@gmail.com', 1723925, 6, 6, 3, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@UIs the following code is \r\ndef cal( a, b):\r\n    return( a+b, a-b, a*b, a/b);\r\nx=int(input(\"enter the first no\"));\r\nxx=int(input(\"enter the second no\"));\r\na1, a1, a1, a1 =cal(x, xx);\r\nprint (a1);@1980708@140235@764136@240713@'),
(294, 'anguralaginni@yahoo.in', 1723925, 1, 1, 8, 1, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @1172398@69404@1911208@977546@1959961@791566@140235@823798@1052198@'),
(295, 'riyadabas0@gmail.com', 1723925, 1, 1, 9, 0, '12-02-2021', '454537@259653@1127124@1911208@1118014@631798@791566@210921@764136@1052198@'),
(296, 'muskanbhardwaj7126@gmail.com', 1723925, 5, 5, 5, 0, '12-02-2021', '894097@1172398@1127124@1911208@28571@1959961@1980708@1511487@1772649@1052198@'),
(297, 'aanya.195@gmail.com', 1723925, 5, 5, 3, 2, '12-02-2021', '894097@UWhich of the programming language is best suited for Mobile Application development w.r.t ease of programming@1127124@1911208@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@1271020@1980708@1511487@764136@1052198@'),
(298, 'joshitaverma20@gmail.com', 1723925, 2, 2, 8, 0, '12-02-2021', '47967@476462@207121@1911208@28571@1959961@1980708@855666@823798@1052198@'),
(299, 'sushmitayadav267@gmail.com', 1723925, 2, 2, 6, 2, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @259653@1127124@1911208@28571@1271020@UWhich of the following function is used to specify kind of SoC @140235@823798@1338945@'),
(300, 'anusha.bansal17@gmail.com', 1723925, 5, 5, 4, 1, '12-02-2021', '894097@1172398@207121@1303457@28571@1959961@1980708@UTouch sensor has the following no of pins with @246193@1052198@'),
(301, 'pariksha.prajapati@gmail.com', 1723925, 6, 6, 2, 2, '12-02-2021', '894097@1172398@UWhich of the following Memory is non volatile and main memory can be used to store OS @1911208@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@1271020@1980708@855666@764136@240713@'),
(302, 'raosoumya1724@gmail.com', 1723925, 1, 1, 8, 1, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @259653@1127124@1911208@28571@1959961@1615628@210921@246193@1338945@'),
(303, 'dakshitalal@gmail.com', 1723925, 4, 4, 4, 2, '12-02-2021', '894097@1172398@1127124@UTo develop Mobile Applications, we use @28571@1086000@791566@855666@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @240713@'),
(304, 'nehapandey2811@gmail.com', 1723925, 5, 5, 4, 1, '12-02-2021', '894097@1172398@1127124@1911208@UWhat is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue@1086000@1980708@1511487@764136@1052198@'),
(305, 'arudhingra1701@gmail.com', 1723925, 2, 2, 7, 1, '12-02-2021', '47967@259653@1127124@1911208@28571@1271020@UWhich of the following function is used to specify kind of SoC @855666@246193@1338945@'),
(306, 'nehasingh14010@gmail.com', 1723925, 2, 2, 7, 1, '12-02-2021', '1642539@259653@1127124@774677@1118014@1271020@791566@855666@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @240713@'),
(307, 'singhsakshi0623@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', '47967@1172398@1127124@1911208@977546@631798@1980708@1511487@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1338945@'),
(308, 'medha106btcse18@igdtuw.ac.in', 1723925, 5, 5, 4, 1, '12-02-2021', '894097@1172398@207121@1911208@28571@1271020@1980708@140235@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1052198@'),
(309, 'vanshikasingh1303@gmail.com', 1723925, 2, 2, 8, 0, '12-02-2021', '47967@1172398@1127124@1911208@28571@1959961@1615628@855666@1772649@44939@'),
(310, 'kkaurk2000@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@1959961@1980708@140235@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1052198@'),
(311, 'aastha131btcse18@igdtuw.ac.in', 1723925, 4, 4, 5, 1, '12-02-2021', '454537@1172398@1127124@1303457@977546@1271020@1615628@1511487@246193@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(312, 'ananyajain721@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', '894097@259653@1127124@UTo develop Mobile Applications, we use @28571@1959961@172355@140235@246193@240713@'),
(313, 'mongiakajal@gmail.com', 1723925, 5, 5, 5, 0, '12-02-2021', '894097@1172398@1127124@1911208@28571@1271020@172355@140235@823798@240713@'),
(314, 'guptaquanta@gmail.com', 1723925, 6, 6, 4, 0, '12-02-2021', '1642539@259653@779274@1303457@977546@1271020@1980708@855666@764136@240713@'),
(315, 'divyasha.2013@gmail.com', 1723925, 7, 7, 2, 1, '12-02-2021', '894097@1172398@207121@UTo develop Mobile Applications, we use @28571@1271020@1980708@855666@764136@240713@'),
(316, 'bshweta099@gmail.com ', 1723925, 2, 2, 7, 1, '12-02-2021', '894097@259653@779274@1911208@977546@1086000@791566@855666@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1052198@'),
(317, 'manyakumari044@gmail.com', 1723925, 5, 5, 4, 1, '12-02-2021', '47967@1172398@69404@1692832@28571@1959961@UWhich of the following function is used to specify kind of SoC @1511487@764136@240713@'),
(318, 'komal.15k1999@gmail.com', 1723925, 5, 5, 5, 0, '12-02-2021', '894097@476462@1127124@1692832@28571@1271020@1980708@140235@764136@1052198@'),
(319, 'jhamonika711@gmail.com', 1723925, 5, 5, 5, 0, '12-02-2021', '894097@259653@779274@1911208@28571@1271020@791566@210921@823798@240713@'),
(320, 'soumya.kapsime@gmail.com', 1723925, 3, 3, 5, 2, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @1172398@1127124@1911208@28571@1959961@1980708@855666@1772649@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(321, 'ananyaautreja@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@1172398@69404@1911208@1674208@1959961@UWhich of the following function is used to specify kind of SoC @855666@764136@240713@'),
(322, 'pooja.kr.374@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @1172398@1127124@1911208@28571@1086000@172355@1511487@764136@1052198@'),
(323, 'sakshi097btcse18@igdtuw.ac.in', 1723925, 3, 3, 5, 2, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @259653@1127124@1911208@28571@1271020@791566@1511487@UCDR used to interface with Rpi is a ..... Sensor and has --- pins @1338945@'),
(324, 'muskan.dav@gmail.com', 1723925, 3, 3, 7, 0, '12-02-2021', '894097@1172398@1127124@1911208@28571@1959961@791566@140235@246193@1052198@'),
(325, 'aditiverma0308@gmail.com', 1723925, 2, 2, 8, 0, '12-02-2021', '1642539@259653@1127124@1911208@1674208@1271020@791566@1511487@1772649@1338945@'),
(326, 'sanskalra23@gmail.com', 1723925, 7, 7, 3, 0, '12-02-2021', '894097@1172398@779274@1911208@28571@1086000@1980708@1511487@246193@240713@'),
(327, 'anvitabansal28@gmail.com', 1723925, 3, 3, 5, 2, '12-02-2021', '454537@259653@1127124@1911208@1674208@1271020@UWhich of the following function is used to specify kind of SoC @1511487@764136@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(328, 'nayangupta98@gmail.com', 1723925, 1, 1, 8, 1, '12-02-2021', '47967@259653@69404@1911208@28571@1959961@UWhich of the following function is used to specify kind of SoC @140235@823798@44939@'),
(329, 'haripriyavats@gmail.com', 1723925, 6, 6, 3, 1, '12-02-2021', '894097@1172398@779274@UTo develop Mobile Applications, we use @28571@1086000@1980708@855666@246193@240713@'),
(330, 'pearlgupta2000@gmail.com', 1723925, 4, 4, 6, 0, '12-02-2021', '894097@259653@1127124@1911208@28571@1959961@1980708@1511487@823798@1338945@'),
(331, 'bhavishyatolani@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@259653@1127124@1911208@28571@1959961@1980708@1511487@823798@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(332, 'ishika073btcse18@igdtuw.ac.in', 1723925, 6, 6, 3, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@1271020@UWhich of the following function is used to specify kind of SoC @1511487@246193@240713@'),
(333, 'aakankshasingh2002@gmail.com', 1723925, 6, 6, 3, 1, '12-02-2021', '894097@UWhich of the programming language is best suited for Mobile Application development w.r.t ease of programming@779274@1911208@28571@1959961@1980708@1511487@246193@240713@'),
(334, 'ashmeenkaur1203@gmail.com', 1723925, 6, 6, 4, 0, '12-02-2021', '894097@1172398@779274@1911208@1674208@1086000@1980708@1511487@246193@240713@'),
(335, 'rastogibhavika@gmail.com', 1723925, 4, 4, 6, 0, '12-02-2021', '47967@1172398@1127124@1911208@28571@1959961@1980708@1511487@246193@1052198@'),
(336, 'shiavangisingh@gmail.com', 1723925, 2, 2, 8, 0, '12-02-2021', '1642539@259653@1127124@1911208@1674208@1271020@1980708@855666@1772649@1052198@'),
(337, 'sanchibisht29@gmail.com', 1723925, 7, 7, 3, 0, '12-02-2021', '894097@1172398@1127124@1911208@28571@1271020@791566@1511487@764136@240713@'),
(338, 'mehak140btcse18@igdtuw.ac.in', 1723925, 5, 5, 4, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@1959961@1980708@855666@764136@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(339, 'vidhikatyal2500@gmail.com', 1723925, 10, 10, 0, 0, '12-02-2021', '894097@1172398@779274@1303457@28571@1271020@1980708@1511487@764136@240713@'),
(340, 'anhigyakumawat0141@gmail.com', 1723925, 3, 3, 4, 3, '12-02-2021', '894097@259653@1127124@1911208@1674208@1271020@UWhich of the following function is used to specify kind of SoC @UTouch sensor has the following no of pins with @764136@UIntel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving @'),
(341, 'dhritiarora2000@gmail.com', 1723925, 6, 6, 3, 1, '12-02-2021', '894097@1172398@779274@UTo develop Mobile Applications, we use @28571@1086000@1980708@855666@246193@240713@'),
(342, 'tamannaverma1912@gmail.com', 1723925, 6, 6, 4, 0, '12-02-2021', '894097@259653@1127124@1303457@28571@1959961@1980708@1511487@764136@44939@'),
(343, 'sanjanadrall16@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', '47967@259653@1127124@UTo develop Mobile Applications, we use @28571@1271020@791566@1511487@823798@1338945@'),
(344, 'sanjana.celestron@gmail.com', 1723925, 6, 6, 3, 1, '12-02-2021', '894097@1172398@1127124@1911208@28571@1271020@UWhich of the following function is used to specify kind of SoC @855666@764136@240713@'),
(345, 'ayubiafshan03@gmail.com', 1723925, 3, 3, 7, 0, '12-02-2021', '47967@259653@207121@1303457@977546@1271020@1980708@855666@246193@1338945@'),
(346, 'shilpikri2000@gmail.com', 1723925, 3, 3, 7, 0, '12-02-2021', '47967@1172398@69404@1911208@1674208@1086000@1980708@1511487@823798@44939@'),
(347, 'parulbeniwal435@gmail.com', 1723925, 2, 2, 8, 0, '12-02-2021', '47967@1172398@69404@1911208@1674208@1086000@1980708@140235@823798@1052198@'),
(348, 'vermaaashi22@gmail.com', 1723925, 4, 4, 6, 0, '12-02-2021', '47967@1172398@779274@1911208@1674208@1959961@791566@855666@764136@240713@'),
(349, 'tanjuljain19@gmail.com', 1723925, 4, 4, 5, 1, '12-02-2021', '894097@259653@779274@UTo develop Mobile Applications, we use @977546@1959961@1980708@855666@764136@1338945@'),
(350, 'nimbhalgarima@gmail.com', 1723925, 3, 3, 6, 1, '12-02-2021', 'UWhich of the following is not a SoC/Processor for Smart Phones/ Phones  @259653@1127124@1911208@1674208@1271020@1980708@1511487@1772649@1052198@'),
(351, 'swatibhat499@gmail.com', 1723925, 1, 1, 8, 1, '12-02-2021', '47967@259653@69404@UTo develop Mobile Applications, we use @1118014@1959961@791566@210921@246193@240713@');

-- --------------------------------------------------------

--
-- Table structure for table `login_faculty`
--

CREATE TABLE `login_faculty` (
  `id` int(255) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mob` varchar(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `sec_ques` varchar(10000) NOT NULL,
  `sques_ans` varchar(100) NOT NULL,
  `meeting_url` varchar(200) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `time_table` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_faculty`
--

INSERT INTO `login_faculty` (`id`, `tname`, `email`, `mob`, `password`, `sec_ques`, `sques_ans`, `meeting_url`, `image`, `time_table`) VALUES
(1, 'Pranati Mittal', 'pranatimittal10@gmail.com', '08826298717', 'pran', 'What is the name of the author of your favourite book ?', 'lor', 'https://meet.jit.si/pranatimittal', 'dp.png', 'comp.png'),
(24, 'SRN Reddy', 'srnreddy@igdtuw.ac.in', '9810101742', '12435687', 'What is the name of the author of your favourite book ?', 'ABCD', 'https://meet.jit.si/srnreddy', 's rn reddy.jpg', 'Prof. SRN TT.png'),
(25, 'Divanshi Wangoo', 'divanshi.wangoo@gmail.com', '09711673807', '12435687', 'What is the name of the author of your favourite book ?', 'ABCD', 'https://meet.jit.si/divanshiwangoo', 'Divanshi Photo.jpg', 'DIVANSHI TT (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login_student`
--

CREATE TABLE `login_student` (
  `stu_id` int(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL,
  `semester` int(2) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `sec_ques` varchar(10000) NOT NULL,
  `sques_ans` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_student`
--

INSERT INTO `login_student` (`stu_id`, `name`, `rollno`, `email`, `mob`, `password`, `branch`, `program`, `semester`, `batch`, `image`, `sec_ques`, `sques_ans`) VALUES
(2, 'monika', '07401012016', 'rsmojha1997@gmail.com', 8447583022, 'monika', 'CSE1', 'Btech.', 8, '2016-2020', '', 'What is your pet\'s name?', 'Rocky'),
(4, 'Nikunj', '09201012018', 'n@gmail.com', 7785068889, '123n', 'CSE1', 'Btech.', 8, '2017-2021', '', '', ''),
(5, 'Shree', '0876510108', 's@gmail.com', 123456789, '123', 'CSE2', 'Btech.', 8, '2016-2020', '', 'What is your pet\'s name?', 'Rocky'),
(6, 'Rohit Sharma', '09201012016', 'r@gmail.com', 9310214958, 'rohit', 'CSE2', 'Btech.', 8, '2016-2020', 'Screenshot (1).png', '', ''),
(7, 'Romita', '06501012017', 'rom@gmail.com', 8787878787, 'rom', 'AI', 'Mtech.', 8, '2017-2021', 'Sketch.png', '', ''),
(8, 'Ananya', '09701012016', 'an@gmail.com', 111111111, 'an', 'CSE1', 'BTech.', 8, '2016-2020', 'Sketch.png', 'What is your favorite food?', 'momos'),
(9, 'Seema', '08001012017', 'seema@gmail.com', 222222222, 'seema', 'CSE1', 'BTech.', 6, '2017-2021', 'Screenshot (1).png', 'What is the name of the author of your favourite book ?', 'ruskin bond'),
(462, 'Shubhi Khanna', '14001012018', 'shubhi150btcse18@igdtuw.ac.in', 9560936726, 'delight4u', 'CSE2', 'BTech.', 6, '2018-2022', '20210112_233632.jpg', 'What was the name of your primary school?', 'DPS'),
(463, 'Anvita Bansal', '11401012018', 'anvitabansal28@gmail.com', 7080488803, 'LbcWBXEia5h5@rR', 'CSE2', 'BTech.', 6, '2018-2022', '20210202_093948.jpg', 'What was the name of your primary school?', 'Ryan'),
(464, 'Pariksha Prajapati', '14901012018', 'pariksha.prajapati@gmail.com', 9205645854, 'Pariksha21@', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20201209_171508.jpg', 'What is your favorite food?', 'Food'),
(465, 'Bhavishya Tolani', '14101012018', 'bhavishyatolani@gmail.com', 6378312328, 'i6hDF@xCqkhLeFf', 'CSE2', 'BTech.', 6, '2018-2022', 'b_photo.jpg', 'What is the name of the author of your favourite book ?', 'nifty'),
(466, 'Sukriti Singh', '10401012018', 'sukritisingh23600@gmail.com', 918743939945, 'shanuoxford', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20210109_135102.jpg', 'What was the name of your primary school?', 'VBPS'),
(467, 'Kannu Priya ', '08301012018', 'Imkannupriya5@gmail.com ', 8882841545, 'Kannu@25', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20200201_202839_406.jpg', 'What is your favorite food?', 'Rice'),
(468, 'Shilpi kumari', '12101012018', 'shilpikri2000@gmail.com', 8851749847, 'shilpi123', 'CSE2', 'BTech.', 6, '2018-2022', 'New Doc 2019-04-06 20.29.46_1.jpg', 'What is the name of the author of your favourite book ?', 'Chetan'),
(469, 'APURVA SHARMA', '12701012018', 'twinklestar039@gmail.com', 9318409988, 'Jsmk@789', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20200227_232806.jpg', 'What is your favorite food?', 'Cp'),
(470, 'Minakshi', '11501012018', 'minakshi14400@gmail.com', 9354737453, 'mohita@', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20210120_133003.jpg', 'What is your favorite food?', 'Panipuri'),
(471, 'shweta', '10801012018', 'bshweta099@gmail.com', 9717410430, 'Shweta*24', 'CSE2', 'BTech.', 6, '2018-2022', '20161216_121854.jpg', 'What is your favorite food?', 'DahiVada'),
(472, 'Sushmita Yadav', '14301012018', 'sushmitayadav267@gmail.com', 9560394329, 'yadav1234', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG-20210117-WA0362.jpg', 'What is your favorite food?', 'Momos'),
(475, 'Aashi Verma', '09601012018', 'vermaaashi22@gmail.com', 9354272684, 'Aashi22@', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20200427_175900.jpg', 'What is your favorite food?', 'Manturian'),
(476, 'Ginni', '08601012018', 'anguralaginni@yahoo.in', 9811435743, 'Ginni*5', 'CSE2', 'BTech.', 6, '2018-2022', 'pIC.jpg', 'What was the name of your primary school?', 'SMS'),
(479, 'Ishika Bansal', '14801012018', 'ishika073btcse18@igdtuw.ac.in', 8178257946, '@1I2s3h4i5k6a', 'CSE2', 'BTech.', 6, '2018-2022', 'Passport size pic.jpeg', 'What is your favorite food?', 'Pasta'),
(480, 'Bhavika Rastogi', '12501012018', 'rastogibhavika@gmail.com', 9999978460, 'jayabhav', 'CSE2', 'BTech.', 6, '2018-2022', 'photoid.JPG', '', ''),
(481, 'Aroma Agarwal', '08201012018', 'aroma.agarwal@gmail.com', 9999579924, 'Aroma2***', 'CSE2', 'BTech.', 6, '2018-2022', 'profile.JPG', 'What is your favorite food?', 'pizza'),
(482, 'Prerna', '08401012018', 'prernaa930@gmail.com', 8700985688, 'mobile123', 'CSE2', 'BTech.', 6, '2018-2022', 'InShot_20210202_095032934.jpg', 'What is your favorite food?', 'Momos'),
(483, 'Divyasha Singh ', '12201012018', 'divyasha.2013@gmail.com', 7982651992, 'singh12345', 'CSE2', 'BTech.', 6, '2018-2022', '20210202_095244.jpg', 'What is your favorite food?', 'Chocolate'),
(484, 'SIRSHASREE TRIPATHY', '10901012018', 'sirshasreetripathy@gmail.com', 8108613954, 'sirshadk31*', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG-20200126-WA0004.jpg', 'What is the name of the author of your favourite book ?', 'Sister of my Heart'),
(485, 'Neha Pandey', '12001012018', 'nehapandey2811@gmail.com', 9667291229, 'waterisliquid', 'CSE2', 'BTech.', 6, '2018-2022', 'MAP reg img.jpg', 'What was the name of your primary school?', 'faith academy'),
(486, 'Neha Kumari', '13401012018', 'nehasingh14010@gmail.com', 8800158372, 'Neha@12345', 'CSE2', 'BTech.', 6, '2018-2022', 'Screenshot_2020_0823_152846.png', 'What is your favorite food?', 'Rice'),
(487, 'Sakshi Vats', '08701012018', 'sakshivats2001@gmail.com', 9354448317, '20042001', 'CSE2', 'BTech.', 6, '2018-2022', 'Sakshi-JEE-Photo.jpg', 'What was the name of your primary school?', 'KV BTB'),
(488, 'Deeksha Gautam', '0800102018', 'gautamdeeksha7098@gmail.com', 9971077462, '2177@deeksha', 'CSE2', 'BTech.', 6, '2018-2022', 'Screenshot_20210202_095521.jpg', 'What is the name of the author of your favourite book ?', 'Harry potter'),
(489, 'Hansika Rajput', '10501012018', 'hansikarajput1611@gmail.com', 9871685661, '16112000', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20201222_170256.jpg', 'What was the name of your primary school?', 'Kidiz campus'),
(491, 'Soumya Kapsime', '10201012018', 'soumya.kapsime@gmail.com', 9910630215, '115244', 'CSE2', 'BTech.', 6, '2018-2022', 'PicPassportSize1.jpeg', 'What was the name of your primary school?', 'SUMO'),
(492, 'Dviti Arora', '11801012018', 'dvitiarora14@gmail.com', 8800231014, 'dviti@1409', 'CSE2', 'BTech.', 6, '2018-2022', '118_Dviti_passport_photo.jpeg', 'What is the name of the author of your favourite book ?', 'J.K Rowling'),
(493, 'Aastha ', '12301012018', 'aastha131btcse18@igdtuw.ac.in', 8929882654, 'Krishna@2266', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20200924_191048.jpg', 'What is your favorite food?', 'kadichawal'),
(494, 'Joshita verma', '08101012018', 'joshitaverma20@gmail.com', 9354770396, '123Abc@joy', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20210202_095720.jpg', 'What was the name of your primary school?', 'Lis'),
(495, 'Sanjana Singh', '11901012018', 'sanjana.celestron@gmail.com', 9319750623, 'Apollo12Moon', 'CSE2', 'BTech.', 6, '2018-2022', 'WhatsApp Image 2021-02-02 at 09.57.43.jpeg', 'What is the name of the author of your favourite book ?', 'Ian Cardozo'),
(496, 'Astha Jain', '07801012018', 'astha.jain99@gmail.com', 8826003725, 'astha504', 'CSE2', 'BTech.', 6, '2018-2022', 'FE306DBE-4BAB-40E5-B973-C3533B7DE8CB.jpeg', 'What is your favorite food?', 'Mango'),
(497, 'Swati Bhat', '09801012018', 'swatibhat499@gmail.com', 9082529291, 'Kishu99@', 'CSE2', 'BTech.', 6, '2018-2022', 'My photo.jpeg', 'What is your favorite food?', 'Pasta'),
(498, 'Aakanksha Singh', '15601012018', 'aakankshasingh2002@gmail.com', 9973807014, 'chinu0609', 'CSE2', 'BTech.', 6, '2018-2022', 'Aakanksha.jpg', 'What is your favorite food?', 'biryani'),
(499, 'Haripriya Vats', '15301012018', 'haripriyavats@gmail.com', 9711129631, 'Student@2021', 'CSE2', 'BTech.', 6, '2018-2022', 'Screenshot 2020-08-23 at 3.23.57 PM.png', 'What is your favorite food?', 'Pizza'),
(500, 'Akanksha Pal', '09001012018', 'akanksha096btcse18@igdtuw.ac.in', 9340254751, '90@int', 'CSE2', 'BTech.', 6, '2018-2022', 'photo-min2.jpg', 'What is your favorite food?', 'pizza'),
(501, 'Sanchi Bisht', '14401012018', 'sanchibisht29@gmail.com', 7011340158, 'Sanchi@29', 'CSE2', 'BTech.', 6, '2018-2022', 'pic__01.jpg', 'What is your favorite food?', 'Rajma'),
(503, 'Sanjana Drall ', '10101012018', 'sanjanadrall16@gmail.com', 9205122185, '#Drall123', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG-20210119-WA0024.jpg', 'What is your favorite food?', 'Pasta'),
(504, 'Dhriti Arora', '15801012018', 'dhritiarora2000@gmail.com', 7042179788, 'dhriti2000', 'CSE2', 'BTech.', 6, '2018-2022', 'Profile Pic.jpeg', 'What was the name of your primary school?', 'Hillwoods Academy'),
(505, 'Manya', '08501012018', 'manyakumari044@gmail.com', 7011273621, 'MAPclass', 'CSE2', 'BTech.', 6, '2018-2022', 'pssprt-page-001.jpg', 'What was the name of your primary school?', 'presentation'),
(506, 'Mehak Kataria', '1320102018', 'mehak06kataria@gmail.com', 9891303204, 'mehak@132', 'CSE2', 'BTech.', 5, '2018-2022', 'SquareFit_20200324_14412538.jpg', 'What was the name of your primary school?', 'Vgs'),
(507, 'Muskan', '07701012018', 'muskan.dav@gmail.com', 9899944271, 'mp#1598$dv', 'CSE2', 'BTech.', 6, '2018-2022', '8.jpg', 'What is your favorite food?', 'varies'),
(508, 'Tanjul Jain', '14201012018', 'tanjuljain19@gmail.com', 8279914930, 'Tanju71@123', 'CSE2', 'BTech.', 6, '2018-2022', 'Screenshot (237).png', 'What is your favorite food?', 'Pav Bhaji'),
(509, 'Muskan Lalit', '09901012018', 'muskan.lalit18@gmail.com', 9999428797, 'Muskan1!', 'CSE2', 'BTech.', 6, '2018-2022', 'Muskan.jpg', 'What is your favorite food?', 'Pizza'),
(510, 'Pearl Gupta', '10701012018', 'pearlgupta2000@gmail.com', 7082162959, 'pearl2000', 'CSE2', 'BTech.', 6, '2018-2022', 'd.jpeg', 'What was the name of your primary school?', 'JDKPS'),
(511, 'Neetu', '13001012018', 'neetusingh12091999@gmail.com', 7210167484, 'Neetu@123', 'CSE2', 'BTech.', 6, '2018-2022', 'Snapchat-971887559-1.jpg', 'What is your favorite food?', 'Chowmin'),
(512, 'Sanchi Bisht', '14401012018', 'sanchibisht29@gmail.com', 7011340158, 'Sanchi@29', 'CSE2', 'BTech.', 6, '2018-2022', 'Image.jpeg', 'What is your favorite food?', 'Rajma'),
(513, 'Sakshi Singh', '14701012018', 'singhsakshi0623@gmail.com', 9650561471, 'Sakshi@', 'CSE2', 'BTech.', 6, '2018-2022', 'Photo.jpg', 'What is the name of the author of your favourite book ?', 'Paul Cohelo'),
(514, 'Parul', '15401012018', 'parulbeniwal435@gmail.com', 8708331180, 'punamkumari1', 'CSE2', 'BTech.', 6, '2018-2022', 'Screenshot_20210202_100337.jpg', 'What is your favorite food?', 'Pizza'),
(515, 'Medha Bhattacharya', '10001012018', 'medha106btcse18@igdtuw.ac.in', 9354766018, 'mb180399', 'CSE2', 'BTech.', 6, '2018-2022', 'mepic.jpg', 'What was the name of your primary school?', 'Kids Kingdom School'),
(516, 'Sanskriti Kalra', '15901012018', 'sanskalra23@gmail.com', 7065661078, 'Mkal3&mkal3', 'CSE2', 'BTech.', 6, '2018-2022', 'WhatsApp Image 2021-02-02 at 10.05.48 AM.jpeg', 'What was the name of your primary school?', 'Rosary Senior Secondary School'),
(517, 'Vidhi Katyal', '13701012018', 'vidhikatyal2500@gmail.com', 9354772236, 'teS!@tm@p123', 'CSE2', 'BTech.', 6, '2018-2022', 'my pic.jpeg', 'What was the name of your primary school?', 'CJM'),
(518, 'Shivangi singh', '14501012018', 'shiavangisingh@gmail.com', 9319621499, 'shiv123', 'CSE2', 'BTech.', 6, '2018-2022', '4B33826D-8BB2-490D-9EFF-D3E75B78C8F5.jpeg', 'What is the name of the author of your favourite book ?', 'sjm'),
(519, 'chanchal Singh', '09301012018', 'singhchanchal950@gmail.com', 9319758796, 'iamchanchal19', 'CSE2', 'BTech.', 6, '2018-2022', '16122405437924922328085218029167.jpg', 'What is your favorite food?', 'Biryani'),
(520, 'Afshan Ayubi', '09401012018', 'ayubiafshan03@gmail.com', 8860302426, 'Afshan03', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20201219_144238.jpg', 'What was the name of your primary school?', 'Variations public school'),
(521, 'Ashmeen Kaur', '15501012018', 'ashmeenkaur1203@gmail.com', 9818582188, '9958999215', 'CSE2', 'BTech.', 6, '2018-2022', 'PAN_img.jpeg', 'What is your favorite food?', 'pizza'),
(522, 'Abhipsa Jena', '11601012018', 'abhipsajena2k@gmail.com', 9958992567, 'jena@420', 'CSE2', 'BTech.', 6, '2018-2022', 'WhatsApp Image 2020-09-19 at 11.04.06 PM(2).jpeg', 'What is the name of the author of your favourite book ?', 'Arthur'),
(523, 'Kritleen Kaur', '08801012018', 'kkaurk2000@gmail.com', 8800671371, 'Kritleen1407', 'CSE2', 'BTech.', 6, '2018-2022', '16122407372171713414296823407362.jpg', 'What was the name of your primary school?', 'Mata Jai Kaur Public School'),
(526, 'Aditi Verma', '12901012018', 'aditiverma0308@gmail.com', 8130606104, 'aditi0308', 'CSE2', 'BTech.', 6, '2018-2022', 'WhatsApp Image 2020-11-11 at 6.13.44 PM.jpeg', 'What is your favorite food?', 'pizza'),
(527, 'Riya dabas ', '15201012018', 'riyadabas0@gmail.com', 9354717330, 'riyaarth00', 'CSE2', 'BTech.', 6, '2018-2022', 'FAF03BD9-8682-411F-92CB-37529F6045C2.jpeg', 'What is your favorite food?', 'Rajma chawal '),
(528, 'Urvi Goel', '15701012018', 'urvigoel26@gmail.com', 8826970586, 'varun70480', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_2055 2.jpg', 'What is your favorite food?', 'Pizza'),
(529, 'Pooja Kumari', '15001012018', 'pooja.kr.374@gmail.com', 9319630330, 'Igdtuwiitd1#', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG20200922003421.jpg', 'What was the name of your primary school?', 'DLDAV'),
(530, 'SAKSHI', '09101012018', 'sakshi097btcse18@igdtuw.ac.in', 9540809998, 'sakshi25', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20201106_221043.jpg', 'What was the name of your primary school?', 'Rao Man Singh'),
(531, 'Ananya Jain', '07901012018', 'ananyajain721@gmail.com', 9625001193, 'Home@127', 'CSE2', 'BTech.', 6, '2018-2022', 'WhatsApp Image 2021-02-02 at 10.16.03 AM.jpeg', 'What is your favorite food?', 'Fruits'),
(532, 'Aaniya Agrawala', '12401012018', 'aanya.195@gmail.com', 9650479269, '1995@@ny@', 'CSE2', 'BTech.', 6, '2018-2022', 'DSC_0265.JPG', 'What is the name of the author of your favourite book ?', 'Susan Collins'),
(533, 'Vanshika Singh', '11301012018', 'vanshikasingh1303@gmail.com', 9591121241, 'Chetna@4', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20201208_205643.jpg', 'What is your favorite food?', 'Samosa'),
(534, 'Nayan Gupta', '11201012018', 'nayangupta98@gmail.com', 9680971693, 'Nayan123', 'CSE2', 'BTech.', 6, '2018-2022', 'WhatsApp Image 2021-02-02 at 10.20.02.jpeg', 'What is your favorite food?', 'Dosa'),
(535, 'Garima Nimbhal', '13901012018', 'nimbhalgarima@gmail.com', 8860087253, 'Garima@14', 'CSE2', 'BTech.', 6, '2018-2022', 'B726FFEF-7748-4004-A5F2-10C485FB3692.png', 'What is your favorite food?', 'Gobhi'),
(536, 'Ananyaa Utreja', '10601012018', 'ananyaautreja@gmail.com', 7011733084, 'tammatamma', 'CSE2', 'BTech.', 6, '2018-2022', '20191010_075506_0.jpg', 'What is your favorite food?', 'Rajma'),
(538, 'Chetna', '15101012018', 'mauryachetna46@gmail.com', 917048901230, '7048901230', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG-20210130-WA0080.jpg', 'What is your favorite food?', 'Samosa'),
(539, 'Quanta Gupta', '13801012018', 'guptaquanta@gmail.com', 9811589270, 'quantaquanta', 'CSE2', 'BTech.', 6, '2018-2022', 'EC2AAA56-B72F-4286-BF8B-EB388D9F7F0C.jpeg', 'What is your favorite food?', 'ice cream'),
(540, 'Muskan Bhardwaj', '09501012018', 'muskanbhardwaj7126@gmail.com', 9711183362, 'Musk@n12345', 'CSE2', 'BTech.', 6, '2018-2022', '20210120_105137.jpg', 'What is your favorite food?', 'Momos'),
(541, 'Aarushi Dhingra', '13601012018', 'arudhingra1701@gmail.com', 8851468487, 'Aarushi@1234', 'CSE2', 'BTech.', 6, '2018-2022', '08C31C91-DEE7-42BB-B89C-222C84B17007.jpeg', '', ''),
(542, 'Komal', '11101012018', 'komal.15k1999@gmail.com', 9001442566, 'Password12@', 'CSE2', 'BTech.', 6, '2018-2022', '111 Komal.jpg', 'What is your favorite food?', 'Pizza'),
(543, 'Dakshita ', '13501012018', 'dakshitalal@gmail.com', 8826694437, 'dakshita04', 'CSE2', 'BTech.', 6, '2018-2022', 'Dakshita Photo.jpg', 'What was the name of your primary school?', 'vvdav'),
(544, 'Yogita', '09201012018', 'Yogita940786@gmail.com', 8929211738, 'yogita.yogita12345', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20201116_033052_996.jpg', 'What is your favorite food?', 'Indian'),
(564, 'Simran Aggarwal', '12801012018', 'simranaggarwal738@gmail.com', 8851424829, 'SIMI@123', 'CSE2', 'BTech.', 6, '2018-2022', '59D88DB4-0844-4446-A3F9-42D811E9D41F.jpeg', 'What was the name of your primary school?', 'VGS'),
(567, 'TestID', '10501012017', 'testid@gmail.com', 9350655068, 'testedFinal', 'CSE2', 'BTech.', 6, '2018-2022', 'abc.png', 'What is your favorite food?', 'pasta'),
(571, 'tt', '15001012017', 't@gmail.com', 9350655068, 't', 'CSE2', 'BTech.', 1, '2019-2023', 'IGDTUW-logo.png', 'What is your favorite food?', 'aaa'),
(579, 'Kajal Mongia', '12601012018', 'mongiakajal@gmail.com', 919667008537, 'Chhemistry123', 'CSE2', 'BTech.', 6, '2018-2022', 'resumepic (1).jpg', 'What is the name of the author of your favourite book ?', 'Chitra Banerjee'),
(580, 'Mansi Sharma', '01202102020', 'mansi012mtcse20@igdtuw.ac.in', 9625737212, 'Honey@5454', 'AI', 'MTech.', 2, '2020-2022', '12509863_1685813748326092_2358774086448883144_n.jpg', 'What is your favorite food?', 'Pizza'),
(581, 'Kriti Sharma', '02802102020 ', 'kriti029mtcse20@igdtuw.ac.in', 9123261710, 'GheePaneer', 'AI', 'MTech.', 2, '2020-2022', '1598250369754.jpeg', 'What was the name of your primary school?', 'Ssvm'),
(582, 'Madhurima Saha', '01102102020', 'madhurima011mtcse20@igdtuw.ac.in', 7449696936, '@Honey1992', 'AI', 'MTech.', 2, '2020-2022', 'photo.jpg', 'What was the name of your primary school?', 'Mother Teresa Academy'),
(583, 'Pragya Jain', '01602102020', 'pragya016mtcse20@igdtuw.ac.in', 9013398870, 'Akumar@123', 'AI', 'MTech.', 2, '2020-2022', 'IMG_20180912_175251_787.jpg', 'What is your favorite food?', 'Fries'),
(584, 'Fayeza Sifat Fatima', '02602102020', 'fayezasifat028mtcse20@igdtuw.ac.in', 8130184485, 'fayeza123', 'AI', 'MTech.', 2, '2020-2022', 'passport size.jpg', '', ''),
(585, 'Monika Jha', '13101012018', 'jhamonika711@gmail.com', 7678594717, 'monika711jha', 'CSE2', 'BTech.', 6, '2018-2022', 'monika new.jpg', 'What was the name of your primary school?', 'dav'),
(586, 'Shivangi Tyagi', '02202102020', 'shivangi022mtcse20@igdtuw.ac.in', 7073210873, 'Shivangi10', 'AI', 'MTech.', 2, '2020-2022', 'shivangi.jpg', 'What is your favorite food?', 'Rajma'),
(587, 'Ruchika', '0200210202', 'ruchika020mtcse20@igdtuw.ac.in', 9466775555, 'Ruchika@123', 'AI', 'MTech.', 2, '2020-2022', 'photo.jpg', 'What was the name of your primary school?', 'Kerala Public School'),
(588, 'Mehak Kataria', '1320102018', 'mehak140btcse18@igdtuw.ac.in', 9891303204, 'Mehak@132', 'CSE2', 'BTech.', 6, '2018-2022', 'SquareFit_20200324_14412538.jpg', 'What was the name of your primary school?', 'Vgs'),
(589, 'Shikha Maurya', '02102102020', 'shikha021mtcse20@igdtuw.ac.in', 9453246681, 'Tt90&rv7', 'AI', 'MTech.', 2, '2020-2022', 'DSC.JPG', 'What is your favorite food?', 'south indian'),
(590, 'Indu Rani', '00902102020', 'indu009mtcse20@igdtuw.ac.in', 8053151808, 'indu@3010', 'AI', 'MTech.', 2, '2020-2022', 'IMG20210114165034.jpg', 'What was the name of your primary school?', 'SK sen sec school'),
(591, 'Aafreen', '00202102020', 'aafreen002mtcse20@igdtuw.ac.in', 7011322344, 'Aafreen@123', 'AI', 'MTech.', 2, '2020-2022', 'aafreen photo.jpg', 'What is your favorite food?', 'biryani'),
(592, 'Rashmi Yadav', '01802102020', 'ras23yad@gmail.com', 9899798208, 'Rashmi@23', 'AI', 'MTech.', 2, '2020-2022', '1611645386370.jpg', 'What is your favorite food?', 'Pasta'),
(593, 'Romaisa Tariq', '01902102020', 'romaisa019mtcse20@igdtuw.ac.in', 9313976334, 'Number@24', 'AI', 'MTech.', 2, '2020-2022', '002.jpg', 'What was the name of your primary school?', 'Nps'),
(594, 'srishti tyagi', '02302102020', 'srishti023mtcse20@igdtuw.ac.in', 917011215595, '@Dada9654326967', 'AI', 'MTech.', 2, '2020-2022', 'photo.jpg', 'What was the name of your primary school?', 'rajdhani'),
(595, 'Arpita Rajpoot', '00602102020', 'arpita006mtcse20@igdtuw.ac.in', 918800982356, 'Arpi@1234', 'AI', 'MTech.', 2, '2020-2022', 'New Doc 2020-01-11 21.28.49.jpg', 'What is your favorite food?', 'pizza'),
(596, 'Isha Raina', '01002102020', 'isha010mtcse20@igdtuw.ac.in', 7042107401, 'Ir30041997*', 'AI', 'MTech.', 2, '2020-2022', 'IMG_20210203_141254.jpg', 'What is your favorite food?', 'Chicken'),
(597, 'Poulamee Thakur ', '01502102020', 'poulamee015mtcse20@igdtuw.ac.in ', 9674166036, '161212015009', 'AI', 'MTech.', 2, '2020-2022', '20180906_222652.jpg', 'What is your favorite food?', 'Biriyani'),
(598, 'Annu Pradhan', '00302102020', 'annu003mtcse20@igdtuw.ac.in', 9654408022, 'annu@amita26', 'AI', 'MTech.', 2, '2020-2022', 'annu.jpg', 'What is your favorite food?', 'idlidosa'),
(599, 'Sapna Vats', '03302102020', 'sapna026mtcse20@igdtuw.ac.in', 8130466868, '@123Drowssap', 'AI', 'MTech.', 2, '2020-2022', 'DA2A322F-D666-48BD-A19A-95D016A2241B.jpeg', 'What was the name of your primary school?', 'Ashok Hall'),
(600, 'Aarushi Thusu', '02702102020', 'aarushi027mtcse20@igdtuw.ac.in', 9419264611, 'Thusu@1998', 'AI', 'MTech.', 2, '2020-2022', 'Screenshot_20210203-141525.png', 'What was the name of your primary school?', 'Kids House'),
(601, 'Naaima Suroor', '01402102020', 'naaima014mtcse20@igdtuw.ac.in', 7838235157, 'ns@24igdtuw', 'AI', 'MTech.', 2, '2020-2022', 'IMG-20200123-WA0020.jpg', 'What was the name of your primary school?', 'College one'),
(602, 'Archana Bhati', '00502102020', 'archana005mtcse20@igdtuw.ac.in', 9319051985, 'Jaimatadi2018', 'AI', 'MTech.', 2, '2020-2022', 'IMG_20201225_162807.jpg', 'What was the name of your primary school?', 'Archana'),
(603, 'CHAHAK GAUTAM', '00702102020', 'Chahak007mtcse20@igdtuw.ac.in ', 8800503721, 'Cg@1234567', 'AI', 'MTech.', 2, '2020-2022', 'Polish_20210123_183628365.jpg', 'What was the name of your primary school?', 'Daps'),
(604, 'Pratibha Swami', '01702102020', 'pratibha.2902s@gmail.com', 7037100186, 'Prabhat@123', 'AI', 'MTech.', 2, '2020-2022', '136673E2-5B01-4421-BAE8-8009FD3C6029.jpeg', 'What was the name of your primary school?', 'Cjc'),
(605, 'Garima Saluja', '00802102020', 'garima008mtcse20@igdtuw.ac.in', 8178157787, 'Embeddedsystem@1', 'AI', 'MTech.', 2, '2020-2022', 'GATE_2020 (1).jpg', 'What was the name of your primary school?', 'Vivekanand School'),
(606, 'Anshi Srivastav', '00402102020', 'anshi004mtcse20@igdtuw.ac.in', 8765618931, 'Dtuw@004', 'AI', 'MTech.', 2, '2020-2022', 'Anshi image.jpeg', 'What is the name of the author of your favourite book ?', 'Jane Austen'),
(607, 'Medha Gulati', '01302102020', 'medha013mtcse20@igdtuw.ac.in', 9654579287, 'ComputerScience@21', 'AI', 'MTech.', 2, '2020-2022', '3565ec97-999d-4543-85a8-77b846ef5fb7.jpeg', '', ''),
(608, 'Priyanka Singh', '03002102020', 'psinghrath@gmail.com', 6389877217, 'singh2020', 'AI', 'MTech.', 2, '2020-2022', 'New Doc 2019-01-13 21.31.16_1.jpg', 'What is your favorite food?', 'Mango'),
(609, 'Vishakha Gautam', '00102102020', 'vishakha001mtcse20@igdtuw.ac.in', 8447105375, 'Kiran@21', 'AI', 'MTech.', 2, '2020-2022', 'PICTURE.jpg', 'What was the name of your primary school?', 'Faith Academy'),
(610, 'Anusha Bansal', '09701012018', 'anusha.bansal17@gmail.com', 9599536621, 'Anusha@0401', 'CSE2', 'BTech.', 6, '2018-2022', 'Anusha.jpg', 'What is your favorite food?', 'cholle bathure'),
(611, 'Soumya Rao', '10301012018', 'raosoumya1724@gmail.com', 918744910430, 'hi!thisissoumya17', 'CSE2', 'BTech.', 6, '2018-2022', 'Snapchat-1205218231.jpg', 'What is the name of the author of your favourite book ?', 'Ruskin Bond'),
(612, 'Prachi Poonia', '11701012018', 'pooniaprachi2000@gmail.com', 8130275575, 'MAPCLASS', 'CSE2', 'BTech.', 6, '2018-2022', '002.jpg', 'What is your favorite food?', 'Pasta'),
(613, 'Tamanna Verma', '13301012018', 'tamannaverma1912@gmail.com', 9958862320, 'Tam@1999', 'CSE2', 'BTech.', 6, '2018-2022', 'PicsArt_11-07-02.20.24~5.jpg', 'What is your favorite food?', 'Dosa'),
(614, 'Adya Bansal', '14601012018', 'adyabansal18@gmail.com', 9868978169, '9072196a', 'CSE2', 'BTech.', 6, '2018-2022', 'pic.jpg', 'What is the name of the author of your favourite book ?', 'Roald Dahl'),
(615, 'Yashika Kashyap', '02502102020', 'yashika025mtcse20@igdtuw.ac.in', 9891008308, 'Yashika@14', 'CSE1', 'MTech.', 1, '2020-2022', 'Photo.jpg', '', ''),
(616, 'Abhigya Kumawat ', '11001012018', 'anhigyakumawat0141@gmail.com ', 8529164601, 'Abhigya25', 'CSE2', 'BTech.', 6, '2018-2022', '16131266512171800640165073243579.jpg', 'What is the name of the author of your favourite book ?', 'paulo'),
(617, 'Abhigya', '11001012018', 'anhigyakumawat0141@gmail.com', 8529164601, 'Abhigya25', 'CSE2', 'BTech.', 6, '2018-2022', 'IMG_20180827_165844.jpg', 'What is the name of the author of your favourite book ?', 'paulo'),
(618, 'Anshita', '15801012018', 'anshitasharma157@gmail.com', 9818283848, 'sharma@420', 'CSE2', 'BTech.', 6, '2018-2022', 'anshita.jpg', 'What is your favorite food?', 'pizza');

-- --------------------------------------------------------

--
-- Table structure for table `ongoing_research`
--

CREATE TABLE `ongoing_research` (
  `orid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `research` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` int(255) NOT NULL,
  `option` varchar(1000) NOT NULL,
  `optionid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
(1901246, 'a', 428783),
(1901246, 'b', 1503971),
(1901246, 'c', 43937),
(1901246, 'd', 503296),
(1152707, 'a', 1007118),
(1152707, 'b', 977591),
(1152707, 'c', 5053),
(1152707, 'd', 1602366),
(241613, 'Cactus', 1671484),
(241613, 'Rat', 972717),
(241613, 'Mule', 375357),
(241613, 'Camel', 583204),
(1411439, '25', 1078372),
(1411439, '26', 1453311),
(1411439, '27', 1701619),
(1411439, '28', 572907),
(1782455, 'Hexagon', 1407416),
(1782455, 'Octagon', 124138),
(1782455, 'Quadrilateral', 424718),
(1782455, 'Pentagon', 69219),
(254387, 'calf', 879572),
(254387, 'pony', 892328),
(254387, 'tadpole', 1152301),
(254387, 'fish', 595139),
(296033, 'Human', 1853166),
(296033, 'Elephant', 449040),
(296033, 'Giraff', 763016),
(296033, 'Whale', 1818282),
(1900291, 'a', 139450),
(1900291, 'b', 444900),
(1900291, 'c', 63010),
(1900291, 'd', 1212263),
(184203, 'a', 1442769),
(184203, 'b', 1421099),
(184203, 'c', 1257618),
(184203, 'd', 1591824),
(595023, 'a', 157648),
(595023, 'b', 312519),
(595023, 'c', 1562586),
(595023, 'd', 957867),
(1239149, 'a', 1915308),
(1239149, 'b', 1951808),
(1239149, 'c', 1311382),
(1239149, 'd', 1423368),
(773804, 'a', 1719838),
(773804, 'b', 216337),
(773804, 'c', 53255),
(773804, 'd', 1099417),
(227548, 'Radcliffe Line', 1104066),
(227548, 'Mc Mohan line ', 261750),
(227548, 'Durand Line ', 233528),
(227548, 'NOTA', 964254),
(844614, '1', 1579906),
(844614, '2', 1508202),
(844614, '1&2', 1510256),
(844614, 'NOTA', 1094099),
(468428, 'a', 1451362),
(468428, 'b', 646351),
(468428, 'c', 1061030),
(468428, 'd', 59386),
(310888, 'a', 1410668),
(310888, 'b', 1590275),
(310888, 'c', 1280976),
(310888, 'd', 1847501),
(1849942, 'a', 1683012),
(1849942, 'b', 549690),
(1849942, 'c', 1419219),
(1849942, 'd', 1795251),
(76178, 'Intel Atom', 1642539),
(76178, 'TI OMAP', 47967),
(76178, 'Qualcomm  Sanpdragon ', 454537),
(76178, ' Intel I series', 894097),
(356677, 'Java', 259653),
(356677, 'C++', 476462),
(356677, 'Objective C', 1016151),
(356677, 'Python ', 1172398),
(835032, 'NAND Flash ', 207121),
(835032, 'NOR Flash', 779274),
(835032, 'PROM', 69404),
(835032, 'ROM', 1127124),
(399911, 'Native Tools', 774677),
(399911, 'Cross Platform development tools ', 1303457),
(399911, 'Emulator Platform development tools ', 1692832),
(399911, 'All ', 1911208),
(1364177, ' 8 6 4 2 0 -2 -4 -6 -8', 1118014),
(1364177, '10 8 6 4 2 0 -2 -4 -6 ', 1674208),
(1364177, '10 8 6 4 2 0 -2 -4 -6 -8', 28571),
(1364177, 'None of the above ', 977546),
(1819007, 'not executable ', 1086000),
(1819007, 'compiler error ', 1959961),
(1819007, 'not definable ', 631798),
(1819007, 'executable ', 1271020),
(1975901, 'GPIO. setmode(GPIO.RPIO)', 791566),
(1975901, 'GPIO. setmode(GPIO.BCMC)', 1615628),
(1975901, 'GPIO. setmode(GPIO.BCM)', 1980708),
(1975901, 'GPIO. setmode(GPIO.BCOMS)', 172355),
(1160134, '4, outpout, gnd, vcc, input', 140235),
(1160134, '3, input, gnd, vcc', 855666),
(1160134, '3, outpout, input, vcc', 210921),
(1160134, '3, outpout, gnd, vcc', 1511487),
(1461942, 'Anolog, 3', 246193),
(1461942, 'Anolog, 2', 1772649),
(1461942, 'digital, 3 ', 764136),
(1461942, 'digital, 4', 823798),
(433194, 'Both a and c', 240713),
(433194, 'except  a ', 44939),
(433194, 'Both a and b', 1052198),
(433194, 'Both b and c', 1338945),
(1360439, 'BCM2836', 905374),
(1360439, 'Node MCU', 1762372),
(1360439, 'Gen2 ', 1520078),
(1360439, 'RPi', 560050),
(1203722, 'C', 1111855),
(1203722, 'python', 1022632),
(1203722, 'Arduino ', 661113),
(1203722, 'Java', 1234632),
(45490, 'Analog only ', 959827),
(45490, 'Digital only ', 1824883),
(45490, 'Serial only ', 442150),
(45490, 'both analog and digital', 145290),
(1895210, 'only analog ', 1335003),
(1895210, 'Only digital ', 10152),
(1895210, ' c . Both a and b   ', 1600636),
(1895210, '   d.  none of these ', 1236587),
(1045279, '3, GND, VCC, OUT', 1675843),
(1045279, '3, GND, VCC, INPUT', 1190221),
(1045279, '3, IN, VCC, OUT', 487730),
(1045279, 'NOT DEFINED ', 1767245),
(348897, '4, TRIG, ECO, VCC, GPIO', 1239434),
(348897, '4, TRIG, ECO, VCC, GND', 257715),
(348897, '4, TRIG, ECO, VCC, GPIO', 1143616),
(348897, '3, TRIG, VCC, GPIO', 499239),
(556785, '1 minute', 1265154),
(556785, '1 second or  1 second ', 604678),
(556785, '10 minutes ', 456447),
(556785, '1 second ', 1061618),
(929567, 'IT GENERATES SQUARE WAVE ', 708143),
(929567, 'IT MAKE LED BLINK ', 1315551),
(929567, 'IT MAKES BUZZER TO BEEP ', 1934251),
(929567, 'IT CAN DO ALL ', 1664594),
(1351871, 'Has no error ', 815280),
(1351871, 'Has  error ', 729573),
(1684248, 'H/W   , Language', 1972313),
(1684248, 'H/W , Application ', 474895),
(1684248, 'S/W , Language', 1130802),
(1684248, 'None of these ', 1370441),
(1798867, 'Speed ', 1882336),
(1798867, 'Interfacing ', 1154940),
(1798867, 'OS support ', 1534718),
(1798867, 'ALL', 1878833),
(1624, 'contagious', 516),
(1624, 'non contagious', 965),
(1624, 'stride', 655),
(1624, 'randomly', 648),
(1772, '8', 690),
(1772, '7', 974),
(1772, '86', 720),
(1772, '0', 997),
(1448, '1', 964),
(1448, '2', 940),
(1448, '3', 885),
(1448, '5', 564),
(1994, 'a', 701),
(1994, '4', 737),
(1994, '5', 803),
(1994, 'e', 874),
(1591, 'pearl', 669),
(1591, 'adelina', 843),
(1591, 'nina', 501),
(1591, 'crow', 930),
(1451, '1', 923),
(1451, '2', 641),
(1451, '234', 556),
(1451, '4', 751),
(1122, 'g', 978),
(1122, 'r', 865),
(1122, 'e', 561),
(1122, 'w', 830),
(1449, 'virus', 986),
(1449, 'malware', 595),
(1449, 'worm', 905),
(1449, 'none of the above', 817),
(1817, 'spam', 615),
(1817, 'malware', 618),
(1817, 'virus', 729),
(1817, 'spyware', 848),
(1530, 'Phishing', 506),
(1530, 'Soliciting', 572),
(1530, 'DoS attacks', 619),
(1530, 'Stalking', 921),
(1694, 'Internet Messaging Application', 987),
(1694, 'Intranet Messaging Application', 817),
(1694, 'Internet Message Access Protocol', 743),
(1694, 'Intranet Message Access Protocol', 763),
(1165, 'virus', 847),
(1165, 'malware', 952),
(1165, 'worm', 573),
(1165, 'none of the above', 763),
(1101, 'virus', 980),
(1101, 'malware', 556),
(1101, 'worm', 535),
(1101, 'none of the above', 588),
(1107, 'Q', 943),
(1107, 'W', 676),
(1107, 'E', 769),
(1107, 'R', 777),
(1437, 'Q', 670),
(1437, 'W', 746),
(1437, 'E', 605),
(1437, 'R', 991),
(1320, 'tY', 739),
(1320, 'y', 632),
(1320, 'u', 802),
(1320, 'o', 998),
(1938, 'care', 708),
(1938, 'air', 676),
(1938, 'bear', 935),
(1938, 'dear', 609),
(1398, 'e', 668),
(1398, 'r', 622),
(1398, '', 630),
(1398, 'tu', 770),
(1755, '', 766),
(1755, '', 689),
(1755, '', 952),
(1755, '', 612),
(1926, '', 845),
(1926, '', 781),
(1926, '', 610),
(1926, '', 666),
(1476, 'a', 927),
(1476, 'b', 758),
(1476, 'c', 848),
(1476, 'd', 822),
(1031, 'a', 702),
(1031, 'b', 806),
(1031, 'c', 830),
(1031, 'd', 885),
(1661, 'a', 957),
(1661, 'b', 840),
(1661, 'c', 717),
(1661, 'd', 840),
(1363, 'a', 811),
(1363, 'b', 595),
(1363, 'c', 558),
(1363, 'd', 949);

-- --------------------------------------------------------

--
-- Table structure for table `ques`
--

CREATE TABLE `ques` (
  `qid` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `ques` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ques`
--

INSERT INTO `ques` (`qid`, `quizid`, `ques`, `image`) VALUES
(1901246, 233971, 'Q1', ''),
(1152707, 233971, 'Q2', ''),
(241613, 1115461, 'Which animal is known as the ‘Ship of the Desert?', ''),
(1411439, 1115461, 'How many letters are there in the English alphabet?', ''),
(1782455, 1115461, 'What do you call a type of shape that has five sides?', ''),
(254387, 1115461, 'What is a baby frog called?', ''),
(296033, 1115461, 'Which is the largest mammal?', ''),
(1900291, 1115461, 'For which of the following disciplines is Nobel Prize awarded?\r\n\r\nA.	Physics and Chemistry\r\nB.	Physiology or Medicine\r\nC.	Literature, Peace and Economics\r\nD.	All of the above', ''),
(184203, 1115461, 'Hitler party which came into power in 1933 is known as\r\n\r\nA.	Labour Party\r\nB.	Nazi Party\r\nC.	Ku-Klux-Klan\r\nD.	Democratic Party', ''),
(595023, 1115461, 'Famous sculptures depicting art of love built some time in 950 AD - 1050 AD are\r\n\r\nA.	Khajuraho temples\r\nB.	Jama Masjid\r\nC.	Sun temple\r\nD.	Mahabalipuram temples', ''),
(1239149, 1115461, 'Friction can be reduced by changing from\r\n\r\nA.	sliding to rolling\r\nB.	rolling to sliding\r\nC.	potential energy to kinetic energy\r\nD.	dynamic to static', ''),
(773804, 1115461, 'India has largest deposits of ____ in the world.\r\n\r\nA.	gold\r\nB.	copper\r\nC.	mica\r\nD.	None of the above', ''),
(227548, 1827397, 'India and China are divided by which of these imaginary lines?\r\n', ''),
(844614, 1827397, 'Which of the following statements are correct about the Budget?\r\ni) It is derived from Latin word Bougette\r\n\r\nii) This year the budget was paperless for the first time ', ''),
(468428, 1827397, 'What is blue jet lightning? \r\n\r\nLightning that is blue in colour\r\nNorthern lights \r\nLights from the flying jet planes\r\nUpward lights emitted from the thunderstorm clouds', ''),
(310888, 1827397, 'The tropic of cancer does not pass through which of these Indian states ?\r\n\r\nA) Madhya Pradesh	B) West Bengal\r\nC) Rajasthan	D) Odisha', ''),
(1849942, 1827397, 'Ctrl, Shift and Alt are called .......... keys.\r\n\r\nA) modifier	B) function\r\nC) alphanumeric	D) adjustment', ''),
(76178, 1723925, 'Which of the following is not a SoC/Processor for Smart Phones/ Phones  ', ''),
(356677, 1723925, 'Which of the programming language is best suited for Mobile Application development w.r.t ease of programming', ''),
(835032, 1723925, 'Which of the following Memory is non volatile and main memory can be used to store OS ', ''),
(399911, 1723925, 'To develop Mobile Applications, we use ', ''),
(1364177, 1723925, 'What is the output of the following code \r\nfor i in range(10, -10, -2):\r\n        print(i);\r\n        if i==6:\r\n                continue', ''),
(1819007, 1723925, 'Is the following code is \r\ndef cal( a, b):\r\n    return( a+b, a-b, a*b, a/b);\r\nx=int(input(\"enter the first no\"));\r\nxx=int(input(\"enter the second no\"));\r\na1, a1, a1, a1 =cal(x, xx);\r\nprint (a1);', ''),
(1975901, 1723925, 'Which of the following function is used to specify kind of SoC ', ''),
(1160134, 1723925, 'Touch sensor has the following no of pins with ', ''),
(1461942, 1723925, 'CDR used to interface with Rpi is a ..... Sensor and has --- pins ', ''),
(433194, 1723925, 'Intel Atom SoC supports  a. DVS(dynamic voltage Scaling), b. Hyper threading c. Sleep states. Which of the following feature ment for power saving ', ''),
(1203722, 1050324, 'Which of the following languages are used for IoT applications development for faster code ', ''),
(45490, 1050324, 'Which of the following interfaces are supported for sensor interfacing in Arduino  ', ''),
(1895210, 1050324, 'Which of the following interfaces are supported for IO interfacing in Arduino  ', ''),
(1045279, 1050324, 'Number of pins in touch sensor interfacing and the pins are ', ''),
(348897, 1050324, 'umber of pins in ultra sonic sensor interfacing and the pins are ', ''),
(556785, 1050324, 'delay(1000) will generate a delay .... ', ''),
(929567, 1050324, 'The output of the following code is AND select most appropriate one \r\nvoid loop() {\r\n  digitalWrite(D0, HIGH);   \r\n  delay(1000);                       \r\n  digitalWrite(D0, LOW);    \r\n  delay(1000);                       \r\n}\r\n', ''),
(1351871, 1050324, 'void loop() {\r\n  digitalWrite(D0, HIH);   \r\n  delay(1000);                       \r\n  digitalWrite(D0, LOW);    \r\n  delay(1000);                       \r\n}\r\n', ''),
(1684248, 1050324, 'Arduino is ..... and ...... ', ''),
(1798867, 1050324, 'The difference between Rpi and Node MCU is ', ''),
(1031, 619574, 'B', ''),
(1165, 105, 'Firewall', ''),
(1320, 173, 'image', 'hPLjH8C.jpg'),
(1363, 619574, 'D', ''),
(1398, 129, 'hgeugd', 'IMGP2899_Car_678x452.jpg'),
(1437, 141, 'TREE', '5923258-mac-wallpaper.jpg'),
(1448, 179, '5', ''),
(1476, 619574, 'A', ''),
(1624, 188, 'arrays are stored in ____ memory location', ''),
(1661, 619574, 'C', ''),
(1755, 187, '', 'download.jpg'),
(1772, 179, '8+0', ''),
(1926, 187, 'dgggggggggggg', ''),
(1938, 173, 'uuuuuuuuu', '');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quizid` int(255) NOT NULL,
  `subjcode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `totalques` int(100) NOT NULL,
  `correct` int(100) NOT NULL,
  `wrong` int(100) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `testkey` varchar(10) NOT NULL,
  `teacher_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quizid`, `subjcode`, `name`, `title`, `intro`, `totalques`, `correct`, `wrong`, `time`, `date`, `testkey`, `teacher_id`) VALUES
(105, 'BCS401', 'Cyber Security Management', 'CSM Test-1', 'this test is of unit1', 1, 4, 1, 2, '2020-01-25 16:49:56', 'csm1', 0),
(129, 'monk', 't', 'y', '123', 1, 2, 1, 3, '2020-01-26 19:23:12', '12', 0),
(141, 'BCS074', 'Mix', 'aa', 'Attepmt ALL', 3, 4, 1, 6, '2020-01-26 19:10:40', '123', 0),
(173, 'BCS104', 'ACA', 'ss', 'Q', 2, 2, 1, 2, '2020-01-26 19:20:36', '12', 0),
(177, 'BCS401', 'Cyber Security Management', 'CSM Test-1', 'abc', 1, 1, 0, 2, '2020-01-25 19:11:55', 'csm2', 0),
(179, 'bcs123', 'cn2', 'cn2', '', 2, 2, 0, 7, '2019-11-21 18:26:29', '123', 0),
(187, 'a', 'r', 'r', 'w', 2, 2, 1, 1, '2020-01-26 19:29:29', '11', 0),
(188, 'bcs208', 'c++', 'c++ programming', '', 2, 1, 0, 5, '2019-11-16 09:53:15', '', 0),
(619574, 'BCS111', 'ABC', 'Test', '', 4, 1, 0, 5, '2020-02-12 09:04:28', '123', 1),
(1050324, 'MCS 104', 'IoT and its Application in AI', 'Internal Assesment 1', 'Read the question completely and answer ', 10, 1, 0, 1, '11-02-2021', '2112M', 24),
(1115461, 'BCS 302', 'Mobile Architecture and Programming', 'Demo Test', '', 10, 2, 0, 10, '03-02-2021', 'demotest', 24),
(1632584, 'BCS104', 'ACA', 'aa', 'w', 1, 2, 1, 1, '2020-02-01 12:11:51', '12', 1),
(1723925, 'BCS 302', 'Mobile Architecture and Programming', 'Internal Assesment', 'Pls refer to the question and answer with in the time. \r\n', 10, 1, 0, 1, '11-02-2021', '2112B', 24),
(1827397, 'MCS 104', 'IoT and its Application in AI', 'Demo Test ', '', 5, 2, 0, 10, '04-02-2021', 'demotest', 24);

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`) VALUES
('rsmojha1997@gmail.com', -64),
('s@gmail.com', 135),
('', 3),
('n@gmail.com', 15),
('r@gmail.com', 14),
('an@gmail.com', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sname` varchar(100) NOT NULL,
  `srollno` varchar(15) NOT NULL,
  `semail` varchar(30) NOT NULL,
  `smob` varchar(12) NOT NULL,
  `program` varchar(15) NOT NULL,
  `semester` int(4) NOT NULL,
  `branch` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sname`, `srollno`, `semail`, `smob`, `program`, `semester`, `branch`) VALUES
('Monika ', '074', 'rsmojha1997@gmail.com', '8447583022', 'B.tech', 4, 'cse');

-- --------------------------------------------------------

--
-- Table structure for table `student_timetable`
--

CREATE TABLE `student_timetable` (
  `program` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `semester` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_timetable`
--

INSERT INTO `student_timetable` (`program`, `branch`, `semester`, `img`) VALUES
('BTech.', 'CSE1', 8, 'TT_BTech_8th_CSE2.png'),
('BTech.', 'CSE2', 8, 'TT_BTech_8th_CSE2.png'),
('BTech.', 'CSE1', 6, 'TT_BTech_6th_CSE1.png'),
('BTech.', 'CSE2', 6, 'TT_BTech_6th_CSE2.png'),
('BTech.', 'CSE1', 4, 'TT_BTech_4th_CSE1.png'),
('BTech.', 'CSE2', 4, 'TT_BTech_4th_CSE2.png'),
('MTech.', 'AI', 2, 'TT-MTech-2nd-AI.png'),
('MTech.', 'AI', 2, 'TT-MTech-2nd-AI.png'),
('BTech.', 'CSE1', 8, 'TT_BTech_8th_CSE2.png'),
('BTech.', 'CSE2', 8, 'TT_BTech_8th_CSE2.png'),
('BTech.', 'CSE1', 6, 'TT_BTech_6th_CSE1.png'),
('BTech.', 'CSE2', 6, 'TT_BTech_6th_CSE2.png'),
('BTech.', 'CSE1', 4, 'TT_BTech_4th_CSE1.png'),
('BTech.', 'CSE2', 4, 'TT_BTech_4th_CSE2.png');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subjid` int(11) NOT NULL,
  `subjcode` varchar(30) NOT NULL,
  `subjname` varchar(40) NOT NULL,
  `tid` varchar(12) NOT NULL,
  `tname` varchar(50) NOT NULL,
  `branch` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subjid`, `subjcode`, `subjname`, `tid`, `tname`, `branch`) VALUES
(1, 'BCS401', 'Cyber Security Management', '1', 'Tanya', ''),
(2, 'BCS402', 'Real Time Systems', '3', 'Ankita', ''),
(3, 'BCS201', 'Operating Systems', '1', 'Tanya', ''),
(4, 'MCS101', 'Natural Language Processing', '2', 'Monika', ''),
(37, 'BCS 302', 'Mobile Architecture and Programming', '24', 'SRN Reddy', 'CSE2'),
(38, 'MCS 104', 'IoT and its Application in AI', '24', 'SRN Reddy', 'AI');

-- --------------------------------------------------------

--
-- Table structure for table `subjective_history`
--

CREATE TABLE `subjective_history` (
  `hid` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quizid` int(11) NOT NULL,
  `date` varchar(10) NOT NULL,
  `stud_ans` longtext NOT NULL,
  `indiQues` longtext NOT NULL,
  `score` int(5) DEFAULT 0,
  `image` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective_history`
--

INSERT INTO `subjective_history` (`hid`, `email`, `quizid`, `date`, `stud_ans`, `indiQues`, `score`, `image`) VALUES
(5, 'shilpikri2000@gmail.com', 657592, '10-04-2021', 'geloo@suup@', 'what is`why`', 3, 'savedimages/shilpikri2000@gmail.com1618058749.jpg#savedimages/shilpikri2000@gmail.com1618058758.jpg#');

-- --------------------------------------------------------

--
-- Table structure for table `subjective_ques`
--

CREATE TABLE `subjective_ques` (
  `qid` int(11) NOT NULL,
  `quizid` int(11) NOT NULL,
  `ques` varchar(1000) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective_ques`
--

INSERT INTO `subjective_ques` (`qid`, `quizid`, `ques`, `image`) VALUES
(1901246, 1050324, 'Q1', ''),
(1152707, 1050324, 'Q2', ''),
(241613, 1115461, 'Which animal is known as the Ship of the Desert?', ''),
(241618, 1115461, 'Which city is Pink city of India', ''),
(1411439, 1115461, 'How many letters are there in the English alphabet?', ''),
(1901246, 1050324, 'Q1', ''),
(1152707, 1050324, 'Q2', ''),
(241613, 1115461, 'Which animal is known as the Ship of the Desert?', ''),
(241618, 1115461, 'Which city is Pink city of India', ''),
(1411439, 1115461, 'How many letters are there in the English alphabet?', ''),
(1070154, 657592, 'what is', ''),
(216897, 657592, 'why', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjective_quiz`
--

CREATE TABLE `subjective_quiz` (
  `subjective_quizid` int(255) NOT NULL,
  `subjcode` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `totalques` int(100) NOT NULL,
  `correct` int(100) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `testkey` varchar(10) NOT NULL,
  `teacher_id` int(255) NOT NULL,
  `duplicateTestKey` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjective_quiz`
--

INSERT INTO `subjective_quiz` (`subjective_quizid`, `subjcode`, `name`, `title`, `intro`, `totalques`, `correct`, `time`, `date`, `testkey`, `teacher_id`, `duplicateTestKey`) VALUES
(657592, 'BCS 302', 'Mobile Architecture and Programming', 'Demo Test', 'y', 2, 2, 8, '10-04-2021', 'd', 24, 'd'),
(1050324, 'MCS 104', 'IoT and its Application in AI', 'Subjective mtech Demo 1', 'Read the question completely and answer ', 2, 1, 600, '11-02-2021', '2112M', 24, NULL),
(1115461, 'BCS 302', 'Mobile Architecture and Programming', 'Subjective btech Demo 1', 'hello', 3, 2, 10, '03-02-2021', 'demotest', 24, 'demotest');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date` varchar(12) NOT NULL,
  `feedback` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `name`, `email`, `date`, `feedback`) VALUES
(1, 'Monika', 'rsmojha1997@gmail.com', '', 'dmwhvd'),
(48, 'Mehak Kataria', 'mehak06kataria@gmail.com', '04-02-2021', 'I am unable to view the schedules tests and classes although they\'ve been updated for other students. Kindly help.');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_fb`
--

CREATE TABLE `teacher_fb` (
  `f_id` int(11) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `s_name` varchar(100) NOT NULL,
  `s_rollno` varchar(15) NOT NULL,
  `f_subject` varchar(100) NOT NULL,
  `teaching_skill` decimal(10,0) NOT NULL,
  `personal_attributes` decimal(10,0) NOT NULL,
  `presentation_skills` decimal(10,0) NOT NULL,
  `Qoflecture` decimal(10,0) NOT NULL,
  `beyond_class` decimal(10,0) NOT NULL,
  `gq1` decimal(10,0) NOT NULL,
  `gq2` decimal(10,0) NOT NULL,
  `practical_section` decimal(10,0) NOT NULL,
  `suggestions` varchar(1000) NOT NULL,
  `date` varchar(12) NOT NULL,
  `response` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_fb`
--

INSERT INTO `teacher_fb` (`f_id`, `f_name`, `fac_id`, `s_name`, `s_rollno`, `f_subject`, `teaching_skill`, `personal_attributes`, `presentation_skills`, `Qoflecture`, `beyond_class`, `gq1`, `gq2`, `practical_section`, `suggestions`, `date`, `response`) VALUES
(28, 'Ankita', 3, 'Shree', '0876510108', 'csm', '4', '4', '3', '3', '3', '1', '1', '3', 'ABCDEFGH', '2020-01-23', ''),
(29, 'Tanya', 1, 'Shree', '0876510108', 'Cyber', '4', '4', '3', '5', '5', '0', '1', '5', 'hfhfyjfjugkgkj', '2020-01-30', ''),
(30, 'Tanya', 1, 'Nikunj', '09201012016', 'Cyber', '2', '4', '5', '3', '4', '1', '1', '2', 'nn', '2020-02-03', ''),
(31, 'Tanya', 1, 'Nikunj', '09201012016', 'Cyber', '5', '3', '5', '3', '2', '1', '0', '3', 'ss', '2020-01-30', ''),
(32, 'Tanya', 1, 'Nikunj', '09201012016', 'OS', '2', '4', '3', '5', '3', '1', '1', '2', '3d', '2020-02-03', ''),
(35, 'Tanya', 0, 'Shree', '0876510108', 'Operating Systems', '0', '5', '0', '0', '0', '0', '0', '5', '', '0000-00-00', ''),
(36, 'Tanya', 0, 'Shree', '0876510108', 'Operating Systems', '1', '5', '2', '3', '4', '0', '0', '0', '', '0000-00-00', ''),
(37, 'Ankita', 3, 'Shree', '0876510108', 'Real Time Systems', '0', '0', '0', '0', '5', '0', '0', '0', '', '0000-00-00', ''),
(38, 'Tanya', 3, 'Shree', '0876510108', 'Cyber Security Management', '0', '0', '3', '5', '0', '0', '0', '0', '', '0000-00-00', ''),
(39, 'Tanya', 3, 'Shree', '0876510108', 'Operating Systems', '0', '0', '0', '0', '0', '1', '0', '0', '', '0000-00-00', ''),
(40, 'Tanya', 3, 'Shree', '0876510108', 'Cyber Security Management', '0', '5', '0', '0', '0', '0', '0', '0', '', '21-02-2020', ''),
(41, 'Tanya', 3, 'Shree', '0876510108', 'Cyber Security Management', '3', '0', '0', '0', '4', '1', '1', '0', 'hjhgjgjvhj', '21-02-2020', ''),
(42, 'Tanya', 3, 'Shree', '0876510108', 'Cyber Security Management', '5', '0', '0', '0', '0', '0', '0', '0', '', '21-02-2020', ''),
(43, 'Tanya', 1, 'Shree', '0876510108', 'Cyber Security Management', '5', '4', '0', '0', '0', '1', '0', '0', '', '21-02-2020', ''),
(44, 'Monika', 2, 'Nikunj', '09201012018', 'Natural Language Processing', '0', '5', '0', '0', '0', '1', '1', '5', '', '21-02-2020', ''),
(74, 'SRN Reddy', 24, 'TestID', '10501012017', 'Mobile Architecture and Programming', '5', '5', '5', '5', '5', '1', '1', '5', '', '03-02-2021', 's:57:\"5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1\";'),
(75, 'SRN Reddy', 24, 'Prachi Poonia', '11701012018', 'Mobile Architecture and Programming', '4', '5', '5', '5', '5', '1', '1', '5', '', '05-02-2021', 's:57:\"4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,1,1\";'),
(76, 'SRN Reddy', 24, 'Monika Jha', '13101012018', 'Mobile Architecture and Programming', '2', '2', '2', '2', '2', '1', '0', '2', '', '05-02-2021', 's:57:\"2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,0\";'),
(77, 'SRN Reddy', 24, 'Pariksha Prajapati', '14901012018', 'Mobile Architecture and Programming', '5', '4', '5', '4', '4', '1', '1', '4', 'No', '05-02-2021', 's:57:\"4,5,5,5,4,5,4,4,5,4,4,4,5,5,4,4,4,5,4,4,4,4,5,4,4,4,5,1,1\";'),
(78, 'SRN Reddy', 24, 'Divyasha Singh ', '12201012018', 'Mobile Architecture and Programming', '2', '2', '2', '2', '2', '1', '1', '2', '', '05-02-2021', 's:57:\"2,2,2,2,2,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1\";'),
(79, 'SRN Reddy', 24, 'Swati Bhat', '09801012018', 'Mobile Architecture and Programming', '5', '5', '0', '5', '5', '1', '1', '5', '', '05-02-2021', 's:57:\"4,5,5,4,5,0,0,0,0,5,4,5,5,5,5,5,5,5,5,4,4,5,5,5,4,5,5,1,1\";');

-- --------------------------------------------------------

--
-- Table structure for table `test_fb`
--

CREATE TABLE `test_fb` (
  `id` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  `semail` varchar(200) NOT NULL,
  `q1` int(11) NOT NULL,
  `q2` int(11) NOT NULL,
  `q3` int(11) NOT NULL,
  `q4` int(11) NOT NULL,
  `q5` int(11) NOT NULL,
  `text` varchar(2500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_fb`
--

INSERT INTO `test_fb` (`id`, `tid`, `semail`, `q1`, `q2`, `q3`, `q4`, `q5`, `text`) VALUES
(87, 233971, 'b@gmail.com', 5, 5, 5, 5, 5, 'TESTED!'),
(88, 233971, 'pranatimittal10@gmail.com', 0, 0, 0, 0, 0, ''),
(89, 1827397, 'srishti023mtcse20@igdtuw.ac.in', 5, 5, 2, 3, 5, ''),
(90, 1827397, 'anshi004mtcse20@igdtuw.ac.in', 5, 4, 5, 4, 5, 'Excellent Portal!'),
(91, 1827397, 'kriti029mtcse20@igdtuw.ac.in', 0, 0, 0, 0, 0, 'nice'),
(92, 1827397, 'pragya016mtcse20@igdtuw.ac.in', 4, 3, 0, 0, 0, ''),
(93, 1827397, 'isha010mtcse20@igdtuw.ac.in', 5, 5, 5, 5, 5, ''),
(94, 1827397, 'shivangi022mtcse20@igdtuw.ac.in', 2, 2, 1, 2, 5, 'in last ques we dont have options like a, b, c,d....'),
(95, 1827397, 'ras23yad@gmail.com', 0, 0, 0, 0, 0, ''),
(96, 1827397, 'shivangi022mtcse20@igdtuw.ac.in', 2, 2, 1, 2, 5, 'in last ques we dont have options like a, b, c,d....'),
(97, 1115461, 'urvigoel26@gmail.com', 3, 4, 5, 3, 2, 'The alert should not appear on submitting every answer.'),
(98, 1115461, 'prernaa930@gmail.com', 5, 5, 2, 5, 5, ''),
(99, 1115461, 'anguralaginni@yahoo.in', 3, 3, 3, 3, 3, ''),
(100, 1115461, 'medha106btcse18@igdtuw.ac.in', 4, 3, 3, 3, 4, ''),
(101, 1115461, 'gautamdeeksha7098@gmail.com', 3, 4, 4, 4, 4, ''),
(102, 1115461, 'muskan.lalit18@gmail.com', 4, 5, 5, 5, 4, ''),
(103, 1115461, 'nehapandey2811@gmail.com', 4, 5, 5, 5, 5, ''),
(104, 1115461, 'shiavangisingh@gmail.com', 4, 4, 2, 4, 3, ''),
(105, 1115461, 'pooniaprachi2000@gmail.com', 3, 3, 2, 3, 4, ''),
(106, 1115461, 'shilpikri2000@gmail.com', 3, 3, 3, 3, 3, ''),
(107, 1115461, 'manyakumari044@gmail.com', 4, 4, 3, 4, 4, ''),
(108, 1115461, 'sanjana.celestron@gmail.com', 5, 5, 5, 5, 5, 'It was a very smooth experience. It would be good if you could incorporate the number of questions left.'),
(109, 1115461, 'twinklestar039@gmail.com', 5, 4, 5, 5, 4, 'Page was reloading again and time and time was restarting again'),
(110, 0, '', 0, 0, 0, 0, 0, ''),
(111, 1115461, 'pariksha.prajapati@gmail.com', 4, 4, 2, 3, 2, 'Timer is loading from start for every question.'),
(112, 1115461, 'raosoumya1724@gmail.com', 5, 5, 2, 5, 4, ''),
(113, 1115461, 'sakshivats2001@gmail.com', 4, 4, 5, 5, 4, ''),
(114, 1115461, 'muskanbhardwaj7126@gmail.com', 5, 5, 5, 5, 5, ''),
(115, 1115461, 'aditiverma0308@gmail.com', 3, 2, 4, 5, 5, ''),
(116, 1115461, 'ananyaautreja@gmail.com', 2, 3, 5, 3, 2, ''),
(117, 1115461, '', 4, 5, 5, 5, 4, ''),
(118, 1115461, 'simranaggarwal738@gmail.com', 0, 0, 0, 0, 0, 'Not able to navigate'),
(119, 1115461, 'anusha.bansal17@gmail.com', 3, 4, 2, 5, 3, '1. smooth transition in questions without submitting.2. Timer being initialized from the start again and again.3. Once submitted, no option to navigate back and change the answer.'),
(120, 1115461, 'sanjanadrall16@gmail.com', 3, 2, 1, 0, 0, ''),
(121, 1115461, 'aanya.195@gmail.com', 4, 4, 2, 4, 4, ''),
(122, 1115461, 'guptaquanta@gmail.com', 3, 3, 2, 2, 3, ''),
(123, 1115461, 'sukritisingh23600@gmail.com', 2, 3, 2, 3, 3, ''),
(124, 1115461, 'parulbeniwal435@gmail.com', 5, 5, 3, 5, 5, 'The portal is user friendly and with many such options.'),
(125, 1115461, 'singhchanchal950@gmail.com', 4, 3, 1, 4, 5, ''),
(126, 1115461, 'singhsakshi0623@gmail.com', 3, 3, 2, 2, 3, ''),
(127, 1115461, 'akanksha096btcse18@igdtuw.ac.in', 0, 0, 0, 0, 0, 'navigation between questions option is not there, please include it.Also if possible correct answer also be mentioned.'),
(128, 1115461, 'dakshitalal@gmail.com', 5, 5, 5, 5, 5, ''),
(129, 1115461, 'ananyajain721@gmail.com', 2, 2, 2, 1, 2, 'Please provide all the four options in a separate line.Ex- A) ...B) ...C) ...D) ...'),
(130, 1115461, 'dvitiarora14@gmail.com', 4, 4, 3, 4, 4, ''),
(131, 1115461, 'astha.jain99@gmail.com', 3, 5, 5, 5, 3, ''),
(132, 1115461, 'dhritiarora2000@gmail.com', 3, 3, 3, 3, 3, 'Please provide navigation !'),
(133, 1115461, 'nehasingh14010@gmail.com', 4, 3, 2, 4, 3, ''),
(134, 1115461, 'muskan.dav@gmail.com', 4, 4, 0, 5, 5, ''),
(135, 1115461, 'sanchibisht29@gmail.com', 0, 4, 5, 3, 4, 'Images were not visible.'),
(136, 1115461, 'sakshi097btcse18@igdtuw.ac.in', 4, 3, 1, 2, 3, ''),
(137, 1115461, 'adyabansal18@gmail.com', 2, 3, 4, 4, 2, ''),
(138, 1115461, 'parulbeniwal435@gmail.com', 5, 5, 3, 5, 5, 'The portal is user friendly and with many such options.'),
(139, 1115461, 'aastha131btcse18@igdtuw.ac.in', 3, 5, 3, 1, 2, 'I went to other tab to tell sir ., That questions are not visible. It showed not allowed to move afterwards it was all okay .just check because like that people will be locked out'),
(140, 1115461, 'divyasha.2013@gmail.com', 4, 4, 1, 3, 3, ''),
(141, 1115461, 'vanshikasingh1303@gmail.com', 3, 3, 3, 3, 3, ''),
(142, 1115461, 'haripriyavats@gmail.com', 4, 4, 4, 4, 4, 'There should be an option to go back to a question'),
(143, 1115461, 'ashmeenkaur1203@gmail.com', 3, 5, 2, 3, 5, 'Pictures were not visible, the option to re-review questions should be there. Time should be carry forwarded to the next question.'),
(144, 1115461, 'sanskalra23@gmail.com', 4, 4, 4, 4, 4, 'If the ability to revisit attempted questions can be incorporated, that will help us revise and reconfirm our answers'),
(145, 1115461, 'vermaaashi22@gmail.com', 3, 4, 3, 4, 3, ''),
(146, 1115461, 'minakshi14400@gmail.com', 2, 3, 2, 4, 2, 'it will be great if it is possible go to previous question even after submitting.'),
(147, 1115461, 'rastogibhavika@gmail.com', 3, 4, 3, 4, 3, ''),
(148, 1115461, 'guptaquanta@gmail.com', 3, 3, 2, 2, 3, ''),
(149, 1115461, 'ishika073btcse18@igdtuw.ac.in', 4, 4, 4, 5, 5, 'Maybe we could get an option of navigating in different questions and a total time together .'),
(150, 1115461, 'ayubiafshan03@gmail.com', 4, 4, 3, 3, 4, ''),
(151, 1115461, 'komal.15k1999@gmail.com', 3, 3, 2, 3, 3, ''),
(152, 1115461, 'tanjuljain19@gmail.com', 0, 0, 0, 0, 0, ''),
(153, 1115461, 'anvitabansal28@gmail.com', 5, 5, 5, 5, 5, ''),
(154, 1827397, 'pratibha.2902s@gmail.com', 0, 0, 0, 0, 0, ''),
(155, 1723925, 'hansikarajput1611@gmail.com', 3, 5, 3, 3, 1, ''),
(156, 1723925, 'pooniaprachi2000@gmail.com', 3, 4, 4, 4, 4, ''),
(157, 1723925, 'gautamdeeksha7098@gmail.com', 1, 1, 1, 1, 2, 'i was not able to understand how the timer was working as earlier it was showing 10 min after evry question nd later is got auto submitted and then the timer started with 1 min again. i am not satisfied with the app.'),
(158, 1723925, 'anguralaginni@yahoo.in', 1, 1, 1, 1, 1, ''),
(159, 1723925, 'minakshi14400@gmail.com', 3, 3, 3, 3, 3, ''),
(160, 1723925, 'dakshitalal@gmail.com', 1, 1, 4, 0, 5, ''),
(161, 1723925, 'pariksha.prajapati@gmail.com', 3, 3, 5, 4, 2, ''),
(162, 1723925, 'ananyaautreja@gmail.com', 1, 1, 5, 2, 2, 'no'),
(163, 1723925, 'anusha.bansal17@gmail.com', 3, 1, 3, 1, 1, '1. The time for the questions changed suddenly as a result the question could not be attempted, prior information must be given.'),
(164, 1723925, 'rastogibhavika@gmail.com', 0, 0, 0, 0, 0, ''),
(165, 1723925, 'komal.15k1999@gmail.com', 3, 2, 4, 3, 3, ''),
(166, 1723925, 'parulbeniwal435@gmail.com', 4, 4, 4, 4, 3, ''),
(167, 1723925, 'vermaaashi22@gmail.com', 3, 3, 3, 3, 3, ''),
(168, 1723925, 'shilpikri2000@gmail.com', 3, 3, 3, 3, 3, ''),
(169, 1723925, 'kkaurk2000@gmail.com', 1, 3, 1, 1, 3, 'Platform is alright. Problems faced with the questions and their presentation. Thank you for your efforts.'),
(170, 1723925, 'dhritiarora2000@gmail.com', 3, 3, 4, 3, 3, ''),
(171, 1723925, 'medha106btcse18@igdtuw.ac.in', 2, 2, 4, 2, 2, ''),
(172, 1723925, 'Imkannupriya5@gmail.com ', 3, 1, 2, 3, 2, ''),
(173, 1723925, 'simranaggarwal738@gmail.com', 0, 0, 0, 0, 0, 'It got hanged a lot. The clock time was also not stable.'),
(174, 1723925, 'haripriyavats@gmail.com', 3, 3, 4, 3, 5, 'One of my questions skipped automatically and is now marked unattempted. What should i do?'),
(175, 1723925, 'sakshi097btcse18@igdtuw.ac.in', 1, 1, 1, 1, 1, ''),
(176, 1723925, 'tanjuljain19@gmail.com', 4, 4, 4, 4, 4, ''),
(177, 1723925, 'soumya.kapsime@gmail.com', 4, 4, 4, 4, 4, ''),
(178, 1723925, 'ananyajain721@gmail.com', 2, 4, 4, 4, 2, 'The flow is not very clear. The questions display late on the screen but the timer starts early.'),
(179, 1723925, 'muskanbhardwaj7126@gmail.com', 4, 5, 4, 4, 4, ''),
(180, 1723925, 'nehasingh14010@gmail.com', 1, 2, 3, 0, 3, ''),
(181, 1723925, 'muskan.lalit18@gmail.com', 3, 5, 4, 3, 3, ''),
(182, 1723925, 'guptaquanta@gmail.com', 2, 2, 4, 1, 2, ''),
(183, 1723925, 'ishika073btcse18@igdtuw.ac.in', 3, 3, 4, 4, 3, 'Please provide an option of navigating to different questions.'),
(184, 1723925, 'shubhi150btcse18@igdtuw.ac.in ', 3, 3, 3, 3, 3, 'Indented Code'),
(185, 1723925, 'muskan.dav@gmail.com', 2, 3, 1, 1, 5, ''),
(186, 1723925, 'adyabansal18@gmail.com', 3, 3, 4, 3, 4, ''),
(187, 1723925, 'nehapandey2811@gmail.com', 3, 3, 3, 3, 2, ''),
(188, 1723925, 'dvitiarora14@gmail.com', 3, 2, 4, 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `counter` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `f_achievement`
--
ALTER TABLE `f_achievement`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `f_books`
--
ALTER TABLE `f_books`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `f_complete_funding`
--
ALTER TABLE `f_complete_funding`
  ADD PRIMARY KEY (`com_id`);

--
-- Indexes for table `f_conference`
--
ALTER TABLE `f_conference`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `f_cons_ass_funding`
--
ALTER TABLE `f_cons_ass_funding`
  ADD PRIMARY KEY (`cons_id`);

--
-- Indexes for table `f_current_funding`
--
ALTER TABLE `f_current_funding`
  ADD PRIMARY KEY (`cur_id`);

--
-- Indexes for table `f_equipment_funding`
--
ALTER TABLE `f_equipment_funding`
  ADD PRIMARY KEY (`equip_id`);

--
-- Indexes for table `f_journal`
--
ALTER TABLE `f_journal`
  ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `f_research`
--
ALTER TABLE `f_research`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `f_student`
--
ALTER TABLE `f_student`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `login_faculty`
--
ALTER TABLE `login_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_student`
--
ALTER TABLE `login_student`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `ongoing_research`
--
ALTER TABLE `ongoing_research`
  ADD PRIMARY KEY (`orid`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quizid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subjid`);

--
-- Indexes for table `subjective_history`
--
ALTER TABLE `subjective_history`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `subjective_quiz`
--
ALTER TABLE `subjective_quiz`
  ADD PRIMARY KEY (`subjective_quizid`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_fb`
--
ALTER TABLE `teacher_fb`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `test_fb`
--
ALTER TABLE `test_fb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `f_achievement`
--
ALTER TABLE `f_achievement`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `f_books`
--
ALTER TABLE `f_books`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `f_complete_funding`
--
ALTER TABLE `f_complete_funding`
  MODIFY `com_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `f_conference`
--
ALTER TABLE `f_conference`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `f_cons_ass_funding`
--
ALTER TABLE `f_cons_ass_funding`
  MODIFY `cons_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `f_current_funding`
--
ALTER TABLE `f_current_funding`
  MODIFY `cur_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `f_equipment_funding`
--
ALTER TABLE `f_equipment_funding`
  MODIFY `equip_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `f_journal`
--
ALTER TABLE `f_journal`
  MODIFY `jid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `f_research`
--
ALTER TABLE `f_research`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f_student`
--
ALTER TABLE `f_student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT for table `login_faculty`
--
ALTER TABLE `login_faculty`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `login_student`
--
ALTER TABLE `login_student`
  MODIFY `stu_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=619;

--
-- AUTO_INCREMENT for table `ongoing_research`
--
ALTER TABLE `ongoing_research`
  MODIFY `orid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subjid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subjective_history`
--
ALTER TABLE `subjective_history`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `teacher_fb`
--
ALTER TABLE `teacher_fb`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `test_fb`
--
ALTER TABLE `test_fb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
