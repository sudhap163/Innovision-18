-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2018 at 02:39 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innovision`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(11) NOT NULL,
  `college` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`college_id`, `college`) VALUES
(1, 'Attabira Degree College'),
(2, 'Attabira Degree College'),
(3, 'Birla Global University'),
(4, 'Bits Pilani'),
(5, 'Buxi Jagabandhu Bidyadhar Autonomous College'),
(6, 'C.V.Raman College of Engineering'),
(7, 'Central Institute of Plastics Engineering & Technology'),
(8, 'Central Institution of Plastic Engineering and Technology'),
(9, 'Centurion University of Technology and Management'),
(10, 'Charles Babbage College of Information Technology'),
(11, 'Christ College'),
(12, 'College of Engineering and Technology'),
(13, 'College of Pharmaceutical Sciences'),
(14, 'DAV School of Business Management'),
(15, 'Delhi Technological University'),
(16, 'Dhenkanal Autonomous College'),
(17, 'FIITJEE'),
(18, 'FIITJEE Junior College'),
(19, 'Future Institute of Engineering & Management'),
(20, 'Gandhi Engineering College'),
(21, 'Gandhi Institute for Education and Technology'),
(22, 'Gandhi Institute for Technological Advancement'),
(23, 'Gandhi Institute for Technology ( GIFT )'),
(24, 'GMR Institute of Technology '),
(25, 'Gopalan College of Engineering and Management'),
(26, 'Government Autonomous College'),
(27, 'Government College Of Engineering '),
(28, 'IIEST'),
(29, 'IIM Raipur'),
(30, 'Indian Institute of Management'),
(31, 'Indian Institute of Technology'),
(32, 'Indira Gandhi Institute of Technology'),
(33, 'Industrila Training Institute'),
(34, 'International Institiute of Information and Technology'),
(35, 'ITER'),
(36, 'Jharsugada Engineering School'),
(37, 'Kalam Institute of Technology'),
(38, 'Khallikote University'),
(39, 'KIIT University'),
(40, 'Lal Bahadur Shastri Institute of Management'),
(41, 'Little Angels'),
(42, 'Matrusri Engineering College'),
(43, 'Medicaps Institute of Science and Technology'),
(44, 'MNNIT '),
(45, 'Mother Teresa '),
(46, 'Naidu Science College'),
(47, 'Nalanda Institute of Technology'),
(48, 'National Institue of Science and Technology'),
(49, 'National Institute of Foundry and Forge Technology'),
(50, 'National Institute of Technology'),
(51, 'National Institute of Technology'),
(52, 'National Institute of Technology, Rourkela'),
(53, 'NIFT'),
(54, 'NISER'),
(55, 'Oxford College of Engineering and Technology'),
(56, 'Padmanava College of Engineering'),
(57, 'Piloo Modi College of Architecture '),
(58, 'PMEC'),
(59, 'Pondicherry University '),
(60, 'Prananath Autonomous College'),
(61, 'Raghu Institute of Technology'),
(62, 'Raja Rani College of High Tech Engineering'),
(63, 'Rajasthan Technical University'),
(64, 'Rajendra Institue of Medical Sciences'),
(65, 'Ravenshaw University'),
(66, 'Rourkela Institute Of Technology'),
(67, 'Ruparel College'),
(68, 'Sahyadri College of Engineering and Management'),
(69, 'Sambalpur University Institute of Information Technology'),
(70, 'Saraswati College of Engineering'),
(71, 'SCB Medical College'),
(72, 'Silicon Institute of Technology'),
(73, 'Sushi Ananta Mahavidyalaya'),
(74, 'Techno India Salt Lake '),
(75, 'The Law College'),
(76, 'Tolani Maritime Institute'),
(77, 'Trident Academy of Technology'),
(78, 'University Law College'),
(79, 'Utkal University'),
(80, 'Vellore Institute of Technology'),
(81, 'Vellore Institute of Technology'),
(82, 'Vikash Degree College'),
(83, 'Vikash Institute of Technology'),
(84, 'VSSUT'),
(85, 'Xavier Institue of Management'),
(86, 'Xavier University'),
(87, 'XLRI'),
(88, 'YMCA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;