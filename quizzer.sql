-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 03:50 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'sonudoo', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(1, '58027e82e62e3', '58027e82f2412'),
(2, '58027e833dd54', '58027e8347514'),
(3, '58027e8371483', '58027e838f19a'),
(4, '61b45649dceb8', '61b45649dd892'),
(5, '61b45649df8b7', '61b45649e00d2'),
(6, '61b45649e3ac5', '61b45649e4440'),
(7, '61b45649e696b', '61b45649e710c'),
(8, '61b45649e93d3', '61b45649e99f0'),
(9, '61b45649eb476', '61b45649eb8d3'),
(10, '61b45649ed6ae', '61b45649edb58'),
(11, '61b45649efb6b', '61b45649f013a'),
(12, '61b45649f22ab', '61b45649f2a16'),
(13, '61b4564a00431', '61b4564a00a32'),
(17, '61b8a49a2f560', '61b8a49a300bf');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `username`, `subject`, `feedback`, `date`, `time`) VALUES
('61b461db39a95', 'vinodkumar', 'chinthala.vinod8@gmail.com', 'feed back pupose', 'good application for quizz purpose ', '2021-12-11', '09:31:23am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(1, 'sonudoo', '5802790f793b1', 12, 3, 3, 0, '2016-10-15 19:11:55', 1476558671, 'finished', 'false'),
(2, '9160919791', '5802790f793b1', 0, 0, 0, 0, '2021-12-11 08:10:52', 1639209765, 'finished', 'true'),
(3, '9160919791', '61b452d42782e', 0, 0, 0, 0, '2021-12-11 08:33:10', 1639210445, 'finished', 'true'),
(4, 'naveen', '61b452d42782e', 0, 0, 0, 0, '2021-12-11 08:23:47', 1639211013, 'finished', 'true'),
(5, 'lucky', '61b452d42782e', 0, 0, 0, 0, '2021-12-13 11:54:06', 1639396337, 'finished', 'true'),
(6, 'lucky', '5802790f793b1', 0, 0, 0, 0, '2021-12-13 12:01:20', 1639396657, 'finished', 'true'),
(7, '9160919791', '61b8a474d3e85', 0, 0, 0, 0, '2021-12-23 10:11:50', 1639490887, 'finished', 'true'),
(8, '9160919791', '61b866931a8d6', 0, 0, 0, 0, '2021-12-23 10:12:12', 1639498803, 'finished', 'true'),
(9, 'sonudoo', '61b866931a8d6', 0, 0, 0, 0, '2021-12-23 10:12:12', 1639500379, 'finished', 'true'),
(10, 'naveen', '61b866931a8d6', 0, 0, 0, 0, '2021-12-15 14:32:50', 1639578598, 'finished', 'true'),
(11, 'naveen', '5802790f793b1', 0, 0, 0, 0, '2021-12-15 14:38:22', 1639579089, 'finished', 'true'),
(12, 'naveen', '61b8a474d3e85', 0, 0, 0, 0, '2021-12-23 10:11:50', 1639579118, 'finished', 'true'),
(13, 'shaan', '61b452d42782e', 0, 0, 0, 0, '2021-12-23 10:13:07', 1640253746, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(1, '58027e82e62e3', 'Yes', '58027e82f2412'),
(2, '58027e82e62e3', 'No', '58027e82f2427'),
(3, '58027e82e62e3', 'Don\'t want to', '58027e82f2433'),
(4, '58027e82e62e3', 'Why should I', '58027e82f243d'),
(5, '58027e833dd54', 'sonudoo', '58027e8347505'),
(6, '58027e833dd54', 'sunnygkp10', '58027e8347514'),
(7, '58027e833dd54', 'markzuckerberg', '58027e834751b'),
(8, '58027e833dd54', 'me', '58027e8347521'),
(9, '58027e8371483', 'sonudoo', '58027e838f19a'),
(10, '58027e8371483', 'sunnygkp10', '58027e838f1b0'),
(11, '58027e8371483', 'me', '58027e838f1ba'),
(12, '58027e8371483', 'markzuckerberg', '58027e838f1c4'),
(13, '61b45649dceb8', 'hyper text mark up language', '61b45649dd892'),
(14, '61b45649dceb8', 'hyper next mark up language', '61b45649dd89a'),
(15, '61b45649dceb8', 'hyper text wake up language', '61b45649dd89c'),
(16, '61b45649dceb8', 'text mark up language', '61b45649dd89d'),
(17, '61b45649df8b7', 'cascading sheet', '61b45649e00c7'),
(18, '61b45649df8b7', 'cascading style sheet', '61b45649e00d2'),
(19, '61b45649df8b7', 'cascading style.sheet', '61b45649e00d4'),
(20, '61b45649df8b7', 'cascading styler sheet', '61b45649e00d6'),
(21, '61b45649e3ac5', 'heading', '61b45649e4440'),
(22, '61b45649e3ac5', 'paragraph', '61b45649e444b'),
(23, '61b45649e3ac5', 'element', '61b45649e444e'),
(24, '61b45649e3ac5', 'elements', '61b45649e4450'),
(25, '61b45649e696b', 'element', '61b45649e710c'),
(26, '61b45649e696b', 'tag', '61b45649e7117'),
(27, '61b45649e696b', 'paragraph', '61b45649e7119'),
(28, '61b45649e696b', 'header', '61b45649e711b'),
(29, '61b45649e93d3', 'coding', '61b45649e99f0'),
(30, '61b45649e93d3', 'programing', '61b45649e99f7'),
(31, '61b45649e93d3', 'paragraph', '61b45649e99f9'),
(32, '61b45649e93d3', 'eement', '61b45649e99fa'),
(33, '61b45649eb476', 'structured query language?', '61b45649eb8d3'),
(34, '61b45649eb476', 'structured language?', '61b45649eb8d9'),
(35, '61b45649eb476', 'structured query', '61b45649eb8da'),
(36, '61b45649eb476', ' query language?', '61b45649eb8dc'),
(37, '61b45649ed6ae', 'to store and retrive data', '61b45649edb58'),
(38, '61b45649ed6ae', 'nthg to use', '61b45649edb5f'),
(39, '61b45649ed6ae', 'useless', '61b45649edb61'),
(40, '61b45649ed6ae', 'server side ', '61b45649edb63'),
(41, '61b45649efb6b', 'yes', '61b45649f013a'),
(42, '61b45649efb6b', 'no', '61b45649f0144'),
(43, '61b45649efb6b', 'not used', '61b45649f0146'),
(44, '61b45649efb6b', 'used to', '61b45649f0148'),
(45, '61b45649f22ab', 'head section', '61b45649f2a16'),
(46, '61b45649f22ab', 'body section', '61b45649f2a1e'),
(47, '61b45649f22ab', 'head or body', '61b45649f2a20'),
(48, '61b45649f22ab', 'dont use', '61b45649f2a21'),
(49, '61b4564a00431', 'head', '61b4564a00a26'),
(50, '61b4564a00431', 'body', '61b4564a00a31'),
(51, '61b4564a00431', 'head or body', '61b4564a00a32'),
(52, '61b4564a00431', 'not used it', '61b4564a00a33'),
(65, '61b8a49a2f560', 'hyper text mark up language', '61b8a49a300bf'),
(66, '61b8a49a2f560', 'hyper next mark up language', '61b8a49a300c9'),
(67, '61b8a49a2f560', 'hyper text wake up language', '61b8a49a300cb'),
(68, '61b8a49a2f560', 'text mark up language', '61b8a49a300cc');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(1, '5802790f793b1', '58027e82e62e3', 'Have you read the README file?', 4, 1),
(2, '5802790f793b1', '58027e833dd54', 'Who is the Original creator of this quizzing site?', 4, 2),
(3, '5802790f793b1', '58027e8371483', 'Who improved the original version of this quizzing site?', 4, 3),
(4, '61b452d42782e', '61b45649dceb8', 'wat is html?', 4, 1),
(5, '61b452d42782e', '61b45649df8b7', 'wat is css?', 4, 2),
(6, '61b452d42782e', '61b45649e3ac5', 'which purpose <h1> tag is used', 4, 3),
(7, '61b452d42782e', '61b45649e696b', 'wat is attribute', 4, 4),
(8, '61b452d42782e', '61b45649e93d3', 'which purpose javascript used?', 4, 5),
(9, '61b452d42782e', '61b45649eb476', 'wat is sql?', 4, 6),
(10, '61b452d42782e', '61b45649ed6ae', 'which purpose database used?', 4, 7),
(11, '61b452d42782e', '61b45649efb6b', 'codeignator is a frame work?', 4, 8),
(12, '61b452d42782e', '61b45649f22ab', 'where the style class used?', 4, 9),
(13, '61b452d42782e', '61b4564a00431', 'where the script tag used ?', 4, 10),
(17, '61b8a474d3e85', '61b8a49a2f560', 'what is html', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(1, '5802790f793b1', 'Sample Quiz', 4, 1, 3, 3, '2021-12-23 10:16:16', 'disabled'),
(2, '61b452d42782e', 'Html', 10, 2, 10, 1, '2021-12-23 10:15:54', 'enabled'),
(5, '61b866931a8d6', 'Html', 10, 0, 2, 10, '2021-12-23 10:14:02', 'enabled'),
(6, '61b8a474d3e85', 'Html', 10, 0, 1, 5, '2021-12-23 10:14:10', 'enabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(1, 'sonudoo', 0, '2021-12-23 10:12:12'),
(2, '9160919791', 0, '2021-12-11 08:10:52'),
(3, 'naveen', 0, '2021-12-15 14:38:22'),
(4, 'lucky', 0, '2021-12-13 12:01:20'),
(5, 'shaan', 0, '2021-12-23 10:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(2, 'Vinodkumar', 'be/10002/2021', 'CSE', 'M', '9160919791', 9160919791, 'c65e467234aa429db94d508ace3160e5'),
(4, 'Lucky', 'be/10004/21', 'CSE', 'M', 'lucky', 9441106281, 'b3e8e9c16c68a5ded6921e702852858c'),
(3, 'Naveen', 'be/10003/2021', 'CSE', 'M', 'naveen', 9441106281, 'e691cb702f5d25642aa87009ef1948f8'),
(7, 'Shaankari', '76/57343/538', 'CSE', 'F', 'shaan', 878493557, 'dee7b534d171ad55b2f1e3bf4c9ba6bc'),
(1, 'Sushant Kumar Gupta', 'BE/10001/15', 'CSE', 'M', 'sonudoo', 1234567890, 'e807f1fcf82d132f9bb018ca6738a19f'),
(5, 'Vinod', 'be/10006/2021', 'CSE', 'M', 'vinod', 9160919791, 'c65e467234aa429db94d508ace3160e5');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
