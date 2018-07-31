-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 26, 2018 at 02:26 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

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

DROP TABLE IF EXISTS `ca_selection_questions`;
CREATE TABLE IF NOT EXISTS `ca_selection_questions` (
  `question_id` varchar(3) NOT NULL,
  `question` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_selection_questions`
--

INSERT INTO `ca_selection_questions` (`question_id`, `question`) VALUES
('q1', 'Name'),
('q2', 'E-mail'),
('q3', 'Contact'),
('q4', 'Institution'),
('q5', 'Course'),
('q6', 'Year of study'),
('q7', 'Positions of responsibility held in college'),
('q8', 'Have you ever been to Innovision earlier? When?'),
('q9', 'Write in brief about what you know about Innovision.'),
('q10', 'How many students do you think you can convince into bringing to Innovision this year? What''s your strategy to promote Innovision?'),
('q11', 'Social Media platforms that you are active on?'),
('q12', 'Languages that you are fluent in'),
('q13', 'What makes you unique from others?');

-- --------------------------------------------------------

--
-- Table structure for table `ca_selection_responses`
--

DROP TABLE IF EXISTS `ca_selection_responses`;
CREATE TABLE IF NOT EXISTS `ca_selection_responses` (
  `ca_applicant_id` int(11) NOT NULL AUTO_INCREMENT,
  `q1` tinytext NOT NULL,
  `q2` varchar(50) NOT NULL,
  `q3` varchar(11) NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `q6` varchar(10) NOT NULL,
  `q7` mediumtext NOT NULL,
  `q8` mediumtext NOT NULL,
  `q9` mediumtext NOT NULL,
  `q10` mediumtext NOT NULL,
  `q11` mediumtext NOT NULL,
  `q12` mediumtext NOT NULL,
  `q13` mediumtext NOT NULL,
  `selected` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ca_applicant_id`),
  UNIQUE KEY `q2` (`q2`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ca_selection_responses`
--

INSERT INTO `ca_selection_responses` (`ca_applicant_id`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `selected`) VALUES
(1, 'Sudha', 'ugsbjn', 'TGVUBAJF', 'ATFGUYDHAF', 'fcvhvbjb gd', 'yfchgvjjb', 'tfcghvgj mn jhbhhkbk', 'hfchgjhjbk shdbhbjgbjc j', 'fgchgvbhjvgshbjd', 'fcfhvjbkjvgvjgv', 'hfchv', 'hfdyhg n', 'gdgchvh', 0),
(2, 'gfdcyhjb', 'yrfyhj', 'hfvj', 'ffyvyhjb', 'ytfguj', 'yrtfyv', 'ytfgyuj', 'gfghgjb', 'gch gb', 'fcgcb', 'rgfhcvh', 'rfdcgh', 'gdfxcgh', 1),
(3, 'tfcvbj', 'dcgvh', 'tfgvbujk', 'dfygbuj', 'dcvyh', 'tedfcyv', 'retcvy', 'rzxtcg', 'ttdxctyh', 'tdctvyh', 'dxtc', 'trdfy', 'gfcvh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
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
  `filled` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eid`, `title`, `description`, `rules`, `judging_criteria`, `date`, `venue`, `time`, `category`, `coordinatorName1`, `coordinatorContact1`, `coordinatorName2`, `coordinatorContact2`, `loginId`, `loginPassword`, `winner1`, `winner2`, `image_path`, `max_par`, `filled`) VALUES
(1, 'event1', 'uwudwwnj', 'dewee', 'gerggeegegege', '12/11/2018', 'rm hall', '12:00 AM', 'abcd', 'Mr. AAAAA', '9856321470', 'Mr. BBBB', '8547963210', 'abc@gmail.com', '123', 'PPPP', 'QQQQQQ', '../images/event1.jpeg', 0, 0),
(2, 'event2', 'cvbnm', 'fadhadgadhgad', 'dgygdugdgwyf', '3/11/2018', 'la lawns', '1:00 PM', 'qwerty', 'mr. FFFFF', '7854129630', 'mr. GGGGG', '7789654123', 'pqr@gmail.com', '123', 'Mr.QQQQ', 'Mr.WWWW', '../images/event2.jpeg', 0, 0),
(3, 'uohen', 'htgbuj', 'jyhbj', 'hfgcvjl', 'jghbj', 'trfcvtgv', 'yrfgu', 'ytywagbfja', 'yshbedf', 'tzsgvb ', 'utftyg', 'utfvbjhm', NULL, NULL, NULL, NULL, NULL, 1, 0),
(26, 'trdfugikhuhk', 'htgbuj', 'kdhghuihfain', 'hsgdbjabf', 'augbfujsf', 'trfcvtgv', 'agfbuyahnj ', 'autwgyrfb', 'trdfyug', 'tedsdryuy', 'utftyg', 'fgyuhio', NULL, NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events_registration`
--

DROP TABLE IF EXISTS `events_registration`;
CREATE TABLE IF NOT EXISTS `events_registration` (
  `inno_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events_registration`
--

INSERT INTO `events_registration` (`inno_id`, `event_id`) VALUES
(1, 3),
(1, 2),
(2, 1),
(2, 3),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `inno_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `college` varchar(100) NOT NULL,
  `accomodation` varchar(3) NOT NULL DEFAULT 'yes',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `checked_in` int(11) NOT NULL DEFAULT '0',
  `password` text NOT NULL,
  `token` text,
  `qr_code_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`inno_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`inno_id`, `name`, `gender`, `phone`, `email`, `address`, `college`, `accomodation`, `paid`, `checked_in`, `password`, `token`, `qr_code_path`) VALUES
(1, 'John', '', '2147483647', 'meJohn@gmail.com', '', 'abcd', '1', 0, 0, '17765d0e02d3455a5ae299e7091e9217', '', '../qrcodes/meJohn@gmail.com.png'),
(2, 'Peter', '', '2147483647', 'contactPeter@gmail.com', '', 'nit', '1', 0, 0, '17765d0e02d3455a5ae299e7091e9217', '', '../qrcodes/contactPeter@gmail.com.png'),
(5, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha3@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'sudhapriyadarshini', NULL, NULL),
(6, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha4@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'sudhapriyadarshini', NULL, NULL),
(7, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha5@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'sudhapriyadarshini', NULL, NULL),
(8, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'sudhapriyadarshini', NULL, NULL),
(9, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha1@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(10, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha2@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0MjYwNjEsImp0aSI6IjRTdyswdTdFSVhqdis0Y2wxdlUzQWNROHo5alVOcVZIVnRnemNXOFhac289IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0MjYwNzEsImV4cCI6MTUzMjQyOTY3MSwiZGF0YSI6eyJpbm5vX2lkIjoiSU5OT19JRCIsImVtYWlsIjoiRU1BSUwifX0.r0sDdlUa49bJn4iY1lV15A6_rM0-krgyQqwvWMUqiljTUtzZtj2z3-rpaaZqdz24HqHuccHUcUp5yA7q67l9GA', NULL),
(12, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha9@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(13, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha8@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(15, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha10@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(17, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha11@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(18, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha12@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(19, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha13@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(21, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha14@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(23, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha15@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(25, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha99@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(26, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha98@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(27, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha97@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(28, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha96@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(29, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha95@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', NULL, NULL),
(30, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha94@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0NTMzNzIsImp0aSI6ImY2cGxaRStWTGs2WjFIY1RMZUs1WkxBTUJYTFYybENGUnB2dkREemtcL1A4PSIsImlzcyI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvSW5ub3Zpc2lvbi0xOFwvIiwibmJmIjoxNTMyNDUzMzgyLCJleHAiOjE1MzI0NTY5ODIsImRhdGEiOnsiaW5ub19pZCI6IjMwIiwiZW1haWwiOiJwcml5YWRhcnNoaW5pLnN1ZGhhOTRAZ21haWwuY29tIn19.eWvZ8dV36G3fwMjbQ4U3LlRjF-FEYRRc1KfqL80BSIja5YaYCh0DvkdvMRfTANC6_p7476bhL9F3HQnc4n8vGQ', NULL),
(31, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha93@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTMzOTYsImp0aSI6ImdZWDIxdGtOc3NsRGFueWNCZ2JhQlVaVTRMMDZTbWlwT0NPZ2xMTmFYbDQ9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTM0MDYsImV4cCI6MTUzMjQ5NzAwNiwiZGF0YSI6eyJpbm5vX2lkIjoiMzEiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE5M0BnbWFpbC5jb20ifX0.4SE6Ajr7fWDDD32wdCS0AJxJ8PhOkmyfTA9m5LTJ9VLS6dIoDKvizKzJJrP7dSwaJ0AjeTujhA3yKlasWsSXVA', NULL),
(33, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha92@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTQ1NDUsImp0aSI6Ik5BUlo3WFpXV3hxRnpLRU0zdjFqYURkZVp3RVk5T25FWEt0TFlyVXk3Um89IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTQ1NTUsImV4cCI6MTUzMjQ5ODE1NSwiZGF0YSI6eyJpbm5vX2lkIjoiMzMiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE5MkBnbWFpbC5jb20ifX0.cU4kgoqiti-xvRXlrAGMep8IIg3ph3enzk6zPu3bNkw0heoBB9E7_7HxnV7-xURG0Aj00hPT0CPj3vYm6_fHdw', NULL),
(34, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha91@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTU3NDcsImp0aSI6ImtKcnFJTjY5Mm9UbDNoVmlHa0JLUkNOZDVuU2lMejVZTUJEckxiNVZMNWM9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTU3NTcsImV4cCI6MTUzMjQ5OTM1NywiZGF0YSI6eyJpbm5vX2lkIjoiMzQiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE5MUBnbWFpbC5jb20ifX0.Iip4_CUZJS2DX2ZpYebYd-RHr8-JyDLO20-KK52cYw9e7NqRxTBVyBQWI7zq4BY0z50CQr0xcXbb4VUhiaIwvg', '../../../images/qrcodes/34.png'),
(35, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha90@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTU3OTcsImp0aSI6ImpDNm9RWnMySmUzMVRqeWdjZ3EyMnBaV1YwZ29zSU5WXC8wblwvXC9vM0NQdnM9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTU4MDcsImV4cCI6MTUzMjQ5OTQwNywiZGF0YSI6eyJpbm5vX2lkIjoiMzUiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE5MEBnbWFpbC5jb20ifX0.QqN7X_9-h81zvNRjN4N6SGll_cKx5JWkVtWXD5ANt-fQk0YlN4WCO0sAnfYk2Ro3XuBu9AyTI-lnSxZl0shN3g', '35.png'),
(36, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha89@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTYwNDcsImp0aSI6IlpqbDlmdHBHTXBBR0M5QVc5SUxJUEgxaTFUb09tWDZyd05idm9tRld1ZjA9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTYwNTcsImV4cCI6MTUzMjQ5OTY1NywiZGF0YSI6eyJpbm5vX2lkIjoiMzYiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE4OUBnbWFpbC5jb20ifX0.yettiFCr0bm9JdGiQGUAWzCrbK5ifGs4xjneTGu1AuKk0G7NjVJKYRaJI5HAjGYBEzhuT0wuIS7pXsJNuoY4Cg', NULL),
(37, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha88@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTY2ODUsImp0aSI6IkM4dlAySXFucW1jY0EyZU5MRElmVFdtWVNIcXJ6TW9sRXVmRWNnQjNhbmM9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTY2OTUsImV4cCI6MTUzMjUwMDI5NSwiZGF0YSI6eyJpbm5vX2lkIjoiMzciLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE4OEBnbWFpbC5jb20ifX0.0nOlguWlAXXQ5CIZg8v0ZbJKmHz1fjJizuN42mT-y-voVPCe7Ow7niODtKpnLONRpTCkKzxT12h5OVHsqZjxEQ', '../images/qrcodes/37.png'),
(38, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha87@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTY3ODEsImp0aSI6ImhtUGhyS1g4NkhTN0ZtaHJTTllDWG8ySDNZUXJrTFFkczdRdmV4YjdVVXM9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTY3OTEsImV4cCI6MTUzMjUwMDM5MSwiZGF0YSI6eyJpbm5vX2lkIjoiMzgiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE4N0BnbWFpbC5jb20ifX0.WXLNWFsNRYKCStG9VaxGdEeT_mDISr5q_3fjlIg2HGDbkwxRpWZ6bcSBo75KbYs17F2Bw9c5q9T_76xjmV8_zw', '../38.png'),
(39, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha86@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTY4MDksImp0aSI6InVQSkI0TlJvVTc5S3VQbFREQjBNMTljREplSUZVU3cxRTdEdnFoNitPY0k9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTY4MTksImV4cCI6MTUzMjUwMDQxOSwiZGF0YSI6eyJpbm5vX2lkIjoiMzkiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE4NkBnbWFpbC5jb20ifX0.iWOhju3l6wkm6XN35lmMyIFISsWxs8DAGDWr6ZfTzdcGv9wzUhDs60MVYRS2lgZyi69oJkE8X2KTNwa4Oe2Tyw', '../../39.png'),
(41, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha85@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTY4NjEsImp0aSI6ImdpUTBSeXo2WDNUYzlxV1JiNXZrTzZScnNBSFBlcFwvc2lieTlKZ1UrSmE4PSIsImlzcyI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvSW5ub3Zpc2lvbi0xOFwvIiwibmJmIjoxNTMyNDk2ODcxLCJleHAiOjE1MzI1MDA0NzEsImRhdGEiOnsiaW5ub19pZCI6IjQxIiwiZW1haWwiOiJwcml5YWRhcnNoaW5pLnN1ZGhhODVAZ21haWwuY29tIn19.O4MRFOZ3K2cx2697K0K1X6eNhjcankA6PGVrlHMm3l6v5DrxF9pWR-Ew_g8Weda2ZZdUThiSdj_dGp1RpYAsEQ', '../../images/qrcodes41.png'),
(43, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha84@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTY5MTMsImp0aSI6Ilc1Zm1kbFBnV2RlTzhaYXV1MmZjcXhNSW12eFl5VHNmTnRlWHZTNzZ2QUE9IiwiaXNzIjoiaHR0cDpcL1wvbG9jYWxob3N0XC9Jbm5vdmlzaW9uLTE4XC8iLCJuYmYiOjE1MzI0OTY5MjMsImV4cCI6MTUzMjUwMDUyMywiZGF0YSI6eyJpbm5vX2lkIjoiNDMiLCJlbWFpbCI6InByaXlhZGFyc2hpbmkuc3VkaGE4NEBnbWFpbC5jb20ifX0.CR31326deXR4DQsak3GrsXKXBF6KHJmiXTcjxup-VuqP7MFEKpElm_l8pz5KombY5ZaA0vScLVh7V8dGCbGBVw', '../../images/qrcodes/43.png'),
(44, 'Sudha Priyadarshini', 'female', '9437938401', 'priyadarshini.sudha83@gmail.com', 'CVR Hall of Residence, NIT', 'NITR', 'yes', 0, 0, 'dce1e9593253bb30a7e875f0cdf27c7c', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE1MzI0OTY5NTcsImp0aSI6InJDME9rTjdvc0ZVN1ZVOFlKV2JcL1lBWE9uQXhvczgxVUVCMWhwTXR5TnVnPSIsImlzcyI6Imh0dHA6XC9cL2xvY2FsaG9zdFwvSW5ub3Zpc2lvbi0xOFwvIiwibmJmIjoxNTMyNDk2OTY3LCJleHAiOjE1MzI1MDA1NjcsImRhdGEiOnsiaW5ub19pZCI6IjQ0IiwiZW1haWwiOiJwcml5YWRhcnNoaW5pLnN1ZGhhODNAZ21haWwuY29tIn19.smcoqsfs6ck7l5Dlb87aD-X69wsDDCepnd3XF_tuYyAbwKRbLrdRFEEgYWantJ4bY4EKiGqXG95YvXlhBJJEXQ', '../../images/qrcodes/44.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
