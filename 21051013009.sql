-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 10:57 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('charels@gmail.com', 1234),
('charels@gmail.com', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendace_id` int(11) NOT NULL,
  `Stud_id` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'Present',
  `Attendace_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendace_id`, `Stud_id`, `Status`, `Attendace_date`) VALUES
(1, 1, 'Absent', '2022-06-07'),
(2, 2, 'Absent', '2022-06-07'),
(3, 3, 'Present', '2022-06-07'),
(4, 4, 'Present', '2022-06-07'),
(5, 5, 'Present', '2022-06-07'),
(6, 1, 'Absent', '2022-06-09'),
(7, 2, 'Present', '2022-06-09'),
(8, 3, 'Present', '2022-06-09'),
(9, 4, 'Present', '2022-06-09'),
(10, 5, 'Present', '2022-06-09'),
(11, 6, 'Present', '2022-06-09'),
(12, 7, 'Present', '2022-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Stud_id` int(11) NOT NULL,
  `student_name` varchar(25) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT 'male',
  `email` varchar(25) NOT NULL,
  `dateofbirth` date NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Stud_id`, `student_name`, `gender`, `email`, `dateofbirth`, `teacher_id`) VALUES
(1, 'thomas', 'male', 'thomas@gmail.com', '2001-01-09', 1),
(2, 'thomas', 'male', 'thomas@gmail.com', '2001-01-09', 1),
(3, 'lugaganizya', 'male', 'lugaganizya@gmail.com', '2022-05-30', 1),
(4, 'Francis', 'male', 'allen', '2000-10-10', 1),
(5, 'daniel', 'male', 'chakupewa@gmail.com', '2000-12-10', 1),
(6, 'Francis', 'male', 'thobias@gmail.com', '1997-12-10', 1),
(7, 'salum mussa', 'male', 'salum@gmail.com', '2005-01-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Class` varchar(25) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `FirstName`, `LastName`, `Email`, `Class`, `Image`, `Password`) VALUES
(1, 'francis', 'thobias', 'charlesluguda6@gmail.com', 'Form 2', 'IMG-20220110-WA0001.jpg', '$2y$10$Crf7fPh3YLrYzxaiuo53C.YP9/bmlOTRl/0MVRILygbmuZGo1yDru'),
(2, '', '', '', 'Select your class', '', '$2y$10$VLYR9oWxOoe1dYtyRFTYweCzVmV5CF2kXZkCeJ4WN9Bz/Bz18EkhK'),
(3, '', '', '', 'Select your class', '', '$2y$10$QMH8Cfb0K85ygSECNZv4V.0zTWXsEI.wX22e17FekZIXg.9Z/N.kq'),
(4, '', '', '', 'Select your class', '', '$2y$10$gPgE4HmIelwGFVIdOvyEQuWDixIfk3SXjU1YX.WHvAgtClfafkaiq'),
(5, '', '', '', 'Select your class', '', '$2y$10$rfZDW5PEh4Sw3nfF4of3I.lk5AGp/O7sjgHh436SfqEv4.qH.6OxO'),
(6, '', '', '', 'Select your class', '', '$2y$10$QkNrGEqxSOQw597ct/NaReQpsd3PH293oNYtr2B8M4/WUQHaHP/Y6'),
(7, '', '', '', 'Select your class', '', '$2y$10$3u3hgx6x9i7l2p0ulv2xFuKxz.s0SgQUNcygwSjm1nzbaS7xZj47G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendace_id`),
  ADD KEY `Stud_id` (`Stud_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Stud_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `Attendace_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Stud_id`) REFERENCES `student` (`Stud_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
