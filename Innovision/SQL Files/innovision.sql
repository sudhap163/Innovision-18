-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2018 at 06:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `ca_selection_questions`
--

CREATE TABLE `ca_selection_questions` (
  `ques_id` varchar(3) NOT NULL,
  `ca_questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_selection_questions`
--

INSERT INTO `ca_selection_questions` (`ques_id`, `ca_questions`) VALUES
('q1', 'name'),
('q10', 'How many students do you think you can convince into bringing to Innovision this year?'),
('q11', 'Social media platforms that you are active on.'),
('q12', 'Languages that you are fluent in.'),
('q13', 'What makes you unique from others?'),
('q14', 'doc link'),
('q2', 'email'),
('q3', 'phone'),
('q4', 'institution'),
('q5', 'course'),
('q6', 'year of study'),
('q7', 'positions of responsibility held in college'),
('q8', 'Have you ever been to Innovision earlier? When?'),
('q9', 'Write in brief about what you know about Innovision.');

-- --------------------------------------------------------

--
-- Table structure for table `ca_selection_responses`
--

CREATE TABLE `ca_selection_responses` (
  `ca_applicant_id` int(11) NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` varchar(50) NOT NULL,
  `q3` varchar(11) NOT NULL,
  `q4` text NOT NULL,
  `q5` tinytext NOT NULL,
  `q6` varchar(10) NOT NULL,
  `q7` mediumtext NOT NULL,
  `q8` mediumtext NOT NULL,
  `q9` mediumtext NOT NULL,
  `q10` mediumtext NOT NULL,
  `q11` mediumtext NOT NULL,
  `q12` mediumtext NOT NULL,
  `q13` mediumtext NOT NULL,
  `q14` text,
  `selected` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
(3, 'Birla Global University'),
(4, 'Bits Pilani'),
(5, 'Buxi Jagabandhu Bidyadhar Autonomous College'),
(6, 'C.V.Raman College of Engineering'),
(8, 'Central Institution of Plastic Engineering and Technology'),
(9, 'Centurion University of Technology and Management'),
(10, 'Charles Babbage College of Information Technology'),
(11, 'Christ College'),
(12, 'College of Engineering and Technology'),
(13, 'College of Pharmaceutical Sciences'),
(14, 'DAV School of Business Management'),
(15, 'Delhi Technological University'),
(16, 'Dhenkanal Autonomous College'),
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

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `rules` longtext NOT NULL,
  `judging_criteria` longtext NOT NULL,
  `date` tinytext NOT NULL,
  `venue` mediumtext NOT NULL,
  `time` tinytext NOT NULL,
  `category` mediumtext NOT NULL,
  `coordinatorName1` tinytext NOT NULL,
  `coordinatorContact1` text NOT NULL,
  `coordinatorName2` tinytext NOT NULL,
  `coordinatorContact2` text NOT NULL,
  `loginId` varchar(20) DEFAULT NULL,
  `loginPassword` mediumtext,
  `winner1` mediumtext,
  `winner2` mediumtext,
  `image_path` mediumtext,
  `max_par` int(11) NOT NULL,
  `filled` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_registration`
--

CREATE TABLE `events_registration` (
  `eRID` int(11) NOT NULL,
  `inno_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `inno_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `college` varchar(100) NOT NULL,
  `paid` int(11) NOT NULL DEFAULT '0',
  `checked_in` int(11) NOT NULL DEFAULT '0',
  `user_password` varchar(100) NOT NULL,
  `qr_code` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ca_selection_questions`
--
ALTER TABLE `ca_selection_questions`
  ADD PRIMARY KEY (`ques_id`);

--
-- Indexes for table `ca_selection_responses`
--
ALTER TABLE `ca_selection_responses`
  ADD PRIMARY KEY (`ca_applicant_id`),
  ADD UNIQUE KEY `q2` (`q2`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `events_registration`
--
ALTER TABLE `events_registration`
  ADD PRIMARY KEY (`eRID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`inno_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ca_selection_responses`
--
ALTER TABLE `ca_selection_responses`
  MODIFY `ca_applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `events_registration`
--
ALTER TABLE `events_registration`
  MODIFY `eRID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `inno_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
