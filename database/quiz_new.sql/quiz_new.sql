-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2019 at 12:49 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'Priyanshu', '123');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1),
(17, 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4),
(18, 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2),
(19, 9, 'HTML uses', 'user defined tags', 'pre-specified tags', 'fixed tags defined by the language', 'None of these', 2),
(20, 9, 'In which year HTML was first proposed', '1990', '1980', '2000', '1995', 1),
(22, 9, 'Fundamental HTML BLock is known  as___', 'HTML Body', 'HTML Tag', 'HTML attribute', 'HTML element', 2),
(23, 9, 'Apart from <b> tag,what other tag makes text bold', '<fat>', '<strong>', '<black>', '<dark>', 2),
(24, 9, 'What is the fullform HTML', 'HyperText Markup Language', 'Hyper Teach Markup Language', 'Hyper Tech Markup Language', 'None of this', 1),
(25, 10, 'What does PHP stand for?', 'Personal Home Page', ' Hypertext Preprocessor', ' Pretext Hypertext Processor', 'Both A and B', 4),
(26, 10, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', ' Drek Kolkevi', 'List Barely', 1),
(27, 10, 'A PHP script should start with ___ and end with ___:', '< php         / >', '< ? php      php ?>', '< ?           ? >', '< ? php       ? >', 4),
(28, 10, 'Which of the following command is use to display output in PHP', 'echo', 'cout', 'Printf', 'Print.Out', 1),
(29, 10, 'Which of the looping statements is/are supported by PHP?\r\ni) for loop\r\nii) while loop\r\niii) do-while loop\r\niv) foreach loop', '(i) and (ii)', '(i) and (iii)', '(i),(ii),(iii) and (iv)', '(i)', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('Devansh', 9, '0000-00-00', 3),
('Devansh', 8, '0000-00-00', 1),
('Devansh', 10, '0000-00-00', 2),
('Devansh', 9, '0000-00-00', 1),
('Devansh', 10, '0000-00-00', 1),
('Devansh', 8, '0000-00-00', 1),
('Devansh', 10, '0000-00-00', 4),
('Devansh', 8, '0000-00-00', 1),
('Devansh', 8, '0000-00-00', 2),
('Devansh', 9, '0000-00-00', 1),
('Devansh', 10, '0000-00-00', 4),
('Devansh', 8, '0000-00-00', 3),
('Devansh', 8, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB'),
(2, 'Oracle'),
(3, 'Java'),
(4, 'PHP'),
(5, 'Computer Fundamental'),
(6, 'Networking'),
(7, 'mysql');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'JAVAscript', '3'),
(9, 1, 'HTML', '5'),
(10, 1, 'PHP', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(16, 'Rishab', 'ASDFGHJ', 'UGASFUKG', 'HZLICIHLS', 'ZKLBJVDSJKB', 2147483647, '2@gmail.com'),
(18, 'Devansh', '321', 'Devansh Kumar', 'RCF,India', 'Kapurthala', 9999999, 'D@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('lka9k74c07k9reutrju23olkon', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 1),
('lka9k74c07k9reutrju23olkon', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 2),
('lka9k74c07k9reutrju23olkon', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 3),
('lka9k74c07k9reutrju23olkon', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('lka9k74c07k9reutrju23olkon', 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will r', 'It determines if the access key swquence can be us', 1, 4),
('lka9k74c07k9reutrju23olkon', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 1),
('lka9k74c07k9reutrju23olkon', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 4),
('lka9k74c07k9reutrju23olkon', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('lka9k74c07k9reutrju23olkon', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('lka9k74c07k9reutrju23olkon', 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will r', 'It determines if the access key swquence can be us', 1, 4),
('lka9k74c07k9reutrju23olkon', 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4, 1),
('lka9k74c07k9reutrju23olkon', 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4, 3),
('lka9k74c07k9reutrju23olkon', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('lka9k74c07k9reutrju23olkon', 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2, 4),
('lka9k74c07k9reutrju23olkon', 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will r', 'It determines if the access key swquence can be us', 1, 4),
('vl07frslq5bklalbis29u2to1e', 9, 'HTML uses', 'user defined tags', 'pre-specified tags', 'fixed tags defined by the language', 'None of these', 2, 4),
('vl07frslq5bklalbis29u2to1e', 9, 'In which year HTML was first proposed', '1990', '1980', '2000', '1995', 1, 4),
('vl07frslq5bklalbis29u2to1e', 9, 'Fundamental HTML BLock is known  as___', 'HTML Body', 'HTML Tag', 'HTML attribute', 'HTML element', 2, 4),
('vl07frslq5bklalbis29u2to1e', 9, 'Apart from <b> tag,what other tag makes text bold', '<fat>', '<strong>', '<black>', '<dark>', 2, 4),
('vl07frslq5bklalbis29u2to1e', 9, 'What is the fullform HTML', 'HyperText Markup Language', 'Hyper Teach Markup Language', 'Hyper Tech Markup Language', 'None of this', 1, 4),
('vl07frslq5bklalbis29u2to1e', 10, 'What does PHP stand for?', 'Personal Home Page', ' Hypertext Preprocessor', ' Pretext Hypertext Processor', 'Both A and B', 4, 4),
('vl07frslq5bklalbis29u2to1e', 10, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', ' Drek Kolkevi', 'List Barely', 1, 1),
('vl07frslq5bklalbis29u2to1e', 10, 'A PHP script should start with ___ and end with ___:', '< php         / >', '< ? php      php ?>', '< ?           ? >', '< ? php       ? >', 4, 4),
('vl07frslq5bklalbis29u2to1e', 10, 'Which of the following snippets of code will unload a form named frmFo0rm from memory?', 'Unload Form', 'Unload This', 'Unload Me', 'Unload', 3, 4),
('vl07frslq5bklalbis29u2to1e', 10, 'Which of the looping statements is/are supported by PHP?\r\ni) for loop\r\nii) while loop\r\niii) do-while loop\r\niv) foreach loop', '(i) and (ii)', '(i) and (iii)', '(i),(ii),(iii) and (iv)', '(i)', 3, 3),
('vl07frslq5bklalbis29u2to1e', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2, 4),
('ihmmt0db9jngb59unft1d67dob', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 1),
('ihmmt0db9jngb59unft1d67dob', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 4),
('vl07frslq5bklalbis29u2to1e', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 4),
('vl07frslq5bklalbis29u2to1e', 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2, 4),
('vl07frslq5bklalbis29u2to1e', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 1),
('vl07frslq5bklalbis29u2to1e', 9, 'Fundamental HTML BLock is known  as___', 'HTML Body', 'HTML Tag', 'HTML attribute', 'HTML element', 2, 1),
('vl07frslq5bklalbis29u2to1e', 9, 'Apart from <b> tag,what other tag makes text bold', '<fat>', '<strong>', '<black>', '<dark>', 2, 4),
('vl07frslq5bklalbis29u2to1e', 9, 'What is the fullform HTML', 'HyperText Markup Language', 'Hyper Teach Markup Language', 'Hyper Tech Markup Language', 'None of this', 1, 4),
('vl07frslq5bklalbis29u2to1e', 10, 'What does PHP stand for?', 'Personal Home Page', ' Hypertext Preprocessor', ' Pretext Hypertext Processor', 'Both A and B', 4, 1),
('vl07frslq5bklalbis29u2to1e', 10, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', ' Drek Kolkevi', 'List Barely', 1, 1),
('vl07frslq5bklalbis29u2to1e', 10, 'A PHP script should start with ___ and end with ___:', '< php         / >', '< ? php      php ?>', '< ?           ? >', '< ? php       ? >', 4, 4),
('vl07frslq5bklalbis29u2to1e', 10, 'Which of the following command is use to display output in PHP', 'echo', 'cout', 'Printf', 'Print.Out', 1, 1),
('vl07frslq5bklalbis29u2to1e', 10, 'Which of the looping statements is/are supported by PHP?\r\ni) for loop\r\nii) while loop\r\niii) do-while loop\r\niv) foreach loop', '(i) and (ii)', '(i) and (iii)', '(i),(ii),(iii) and (iv)', '(i)', 3, 3),
('ihmmt0db9jngb59unft1d67dob', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 2),
('ihmmt0db9jngb59unft1d67dob', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 3),
('ihmmt0db9jngb59unft1d67dob', 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2, 3),
('ihmmt0db9jngb59unft1d67dob', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 3),
('vl07frslq5bklalbis29u2to1e', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 4),
('vl07frslq5bklalbis29u2to1e', 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2, 2),
('vl07frslq5bklalbis29u2to1e', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2, 1),
('vl07frslq5bklalbis29u2to1e', 8, 'Javascript is _________ language.', 'Scripting', 'Programming', 'Application', 'All of these', 1, 4),
('vl07frslq5bklalbis29u2to1e', 8, 'JavaScript is ______ Side Scripting Language.', 'Browser', 'Client', 'Server', 'Both B and C', 4, 4),
('vl07frslq5bklalbis29u2to1e', 8, 'The script tag must be placed in?', 'Head', 'Head and body', 'Title and head', 'Head and Title', 2, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
