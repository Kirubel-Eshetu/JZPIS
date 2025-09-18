-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2025 at 10:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jzpis`
--

-- --------------------------------------------------------

--
-- Table structure for table `cell_management`
--

CREATE TABLE `cell_management` (
  `#` int(255) NOT NULL,
  `cell_number` varchar(255) NOT NULL,
  `intake_capacity` int(255) NOT NULL,
  `allocated_prisoners` int(255) NOT NULL,
  `free_space` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cell_management`
--

INSERT INTO `cell_management` (`#`, `cell_number`, `intake_capacity`, `allocated_prisoners`, `free_space`) VALUES
(1, 'R0', 10, 2, 8),
(2, 'R1', 5, 1, 4),
(3, 'R2', 10, 2, 8),
(4, 'R3', 4, 1, 3),
(5, 'R4', 15, 5, 10),
(6, 'R5', 40, 30, 10);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `#` int(11) NOT NULL,
  `email_address` varchar(60) NOT NULL,
  `comments` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`#`, `email_address`, `comments`) VALUES
(1, 'ta.enfi2002@gmail.com', 'Your system was able to give me the information I was searching for about your facility. Keep up the good work.'),
(2, 'Kerimseidali@gmail.com', 'I can now look Jimma Zone Prison Administration from the comfort of my home.'),
(3, 'Melkamuabera@gmail.com', 'I wish I was part of the crew who designed and developed the system.'),
(4, 'Kirubelwinner@gmail.com', 'Hello.');

-- --------------------------------------------------------

--
-- Table structure for table `prisoners`
--

CREATE TABLE `prisoners` (
  `#` int(11) NOT NULL,
  `prisoner_id` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Sex` varchar(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Zone` varchar(100) DEFAULT NULL,
  `Wereda` varchar(100) DEFAULT NULL,
  `Medical_status` varchar(400) NOT NULL,
  `blood_type` varchar(5) DEFAULT NULL,
  `Reason_of_arrest` varchar(255) NOT NULL,
  `Criminal_record` varchar(1500) NOT NULL,
  `phone_of_contacting_people` varchar(150) NOT NULL,
  `prisoner_image` longblob DEFAULT NULL,
  `Entry_Date` date DEFAULT NULL,
  `Exit_Date` date DEFAULT NULL,
  `Cell_number` varchar(20) DEFAULT NULL,
  `Medical_appointment` date DEFAULT NULL,
  `Court_appointment` date DEFAULT NULL,
  `Material_Id` varchar(10) DEFAULT NULL,
  `parole_points` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prisoners`
--

INSERT INTO `prisoners` (`#`, `prisoner_id`, `fullname`, `Status`, `Sex`, `dob`, `Region`, `Zone`, `Wereda`, `Medical_status`, `blood_type`, `Reason_of_arrest`, `Criminal_record`, `phone_of_contacting_people`, `prisoner_image`, `Entry_Date`, `Exit_Date`, `Cell_number`, `Medical_appointment`, `Court_appointment`, `Material_Id`, `parole_points`) VALUES
(1, 'P00001', 'Adonai Desalegn Merga', 'In prison', 'M', '2001-10-09', 'Oromia', 'Nekemte', 'Shambo', '~Infected with Asthma.<br>\n~Underweight.', 'A+', '*Theft.', '-Charged with theft 2 years ago.', '+251708966963', 0x32303234303330325f3130323730392e6a7067, '2024-01-07', '2026-02-18', 'R0', '0000-00-00', '0000-00-00', 'M001', 100),
(2, 'P00002', 'Amanuel Daniel Mamo', 'In prison', 'F', '2004-03-10', 'Gambella', 'Gambella', '04', '~Good.', 'A+', '*Assault<br>\n*Hate Crime', '-No previous criminal records found.', '+251912356674<br>\n+251939806607', 0x32303234303330335f3136353935352e6a7067, '2024-02-25', '2024-07-04', 'R0', '0000-00-00', '0000-00-00', 'M002', 120),
(3, 'P00003', 'Chala Golicha Boru', 'In prison', 'M', '2002-08-23', 'Addis Abeba', 'Addis Abeba Bole', '09', '~Fair', 'A+', '*Burglary', '-Kidnapping.<br> \n-Fraud.<br>', '+251986212207', 0x32303234303330335f3137303634382e6a7067, '2022-04-20', '2025-04-20', 'R1', '0000-00-00', '0000-00-00', 'M003', 8),
(4, 'P00004', 'Kerim Seid Ali', 'In prison', 'M', '2000-05-11', 'Amhara', 'Gonder', '09', '~Excellent', 'AB-', '*Cyber crime', '-No previous criminal records found.', '+0984562213', 0x32303234303330335f3136353634342e6a7067, '2021-12-28', '2024-12-30', 'R2', '0000-00-00', '0000-00-00', '', 100),
(5, 'P00005', 'Kirubel Eshetu Tefera', 'In prison', 'M', '2002-02-12', 'Addis Abeba', 'Addis Abeba Akaki Kality', '09', '~Low insulin level.<br>\n~Low blood pressure.', 'B-', '*Nepotism ', '-No previous criminal records found.', '+0911146831<br>\n+0912741754', 0x32303234303330325f3130323633362e6a7067, '2023-06-06', '2027-05-20', 'R2', '0000-00-00', '0000-00-00', 'M004', 50),
(6, 'P00006', 'Sintayehu Desalegn Hadro', 'In prison', 'M', '2001-03-08', 'Southern Nations and', 'Kembata', '06', '~Infected with diabetes.', 'A+', '*Political crime <br>*Nepotism', '-Charged with corruption 7 years ago.<br>', '+251911226539<br>\n+251737306608', 0x32303234303330335f3137303732352e6a7067, '2023-02-28', '2028-04-11', 'R3', '0000-00-00', '0000-00-00', '0015', 2);

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `#` int(200) NOT NULL,
  `prisonerid` varchar(255) NOT NULL,
  `fullname` text NOT NULL,
  `report` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`#`, `prisonerid`, `fullname`, `report`) VALUES
(1, 'P00005', 'Kirubel Eshetu Tefera', 'The prisoner stated above is showing very good progress on the improvements of his character. He is becoming a hardworking individual. If he continues by the character he has right now, he may get years of mercy soon.'),
(2, 'P00001', 'Kirubel Eshetu Tefera', 'Good imperovements.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `#` int(11) NOT NULL,
  `id` varchar(6) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `role` char(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`#`, `id`, `fullname`, `username`, `password`, `phonenumber`, `role`, `status`) VALUES
(1, 'PI0114', 'Kirubel Eshetu Tefera', 'Kirubelwinner@gmail.com', 'F6$;:63]nQ(Th7^x,H@i5#p', '+251939806607', 'System Administrator', 1),
(2, 'PI0137', 'Hikma Sadik Kedir', 'Hikma5846@gmail.com', 'M[4zH$c9,oXcNCM]lGjmQ)', '+251921235647', 'Prison Inspector', 1),
(3, 'PI2129', 'Kalab Girma Abera', 'Kalabegirma49@gmail.com', 'X}<6$W*>%pC,B?u=qM(7!r~', '+251964342505', 'Security Manager', 1),
(4, 'PI3486', 'Habtamu Gelana Diriba', 'Habtamugelana5@gmail.com', 'M8i>-1$W3Sa)gJ!dVd8*,#', '+25183837365', 'Record Officer', 1),
(5, 'PI5421', 'Biruk Manaye Ula', 'bedadir4@gmail.com', 'AT6sdjD#:F#Ra9Zx=C4E5wH', '+251949411204', 'Discipline Officer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `#` int(11) NOT NULL,
  `visitor_id` varchar(10) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `visiting` varchar(700) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `photo_of_idcard` longblob NOT NULL,
  `material_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`#`, `visitor_id`, `fullname`, `visiting`, `phonenumber`, `email`, `photo_of_idcard`, `material_id`) VALUES
(1, 'V0001', 'Almaz Tesfamaryam Debalke', 'Kirubel Eshetu Tefera', '+251708966963', 'Almaztesfa231@gmail.com', 0x69645f416c6d617a5f54657366616d617279616d5f446562616c6b652e6a7067, 'MV01'),
(2, 'V0002', 'Beknesh Sleshi Tegene', 'Kirubel Eshetu Tefera', '+251912356674', 'Berkneshtegu125@gmail.com', 0x69645f4272656b6e6573685f536c657368695f546567656e652e6a7067, 'MV02'),
(3, 'V0003', 'Mubarek Alnaser Ali', 'Adonai Desalegn Merga', '+251986212207', 'Mubarekalnaser@gmail.com', 0x69645f636172645f4d75626172656b5f414e617369725f416c692e6a7067, ''),
(4, 'V0004', 'Elshalom Endrias Teriku', 'Amanuel Daniel Mamo', '+251788886622', 'ElshalomEndrias25@gmail.com', 0x69645f456c7368616c6f6d5f456e64726961735f546172696b752e6a7067, ''),
(5, 'V0005', 'Fikadu Mengesha Alemu', 'Sintayehu Desalegn Hadro', '+251911547620', 'Fikehappines@gmail.com', 0x69645f46696b6164755f4d656e61676573615f416c656d752e6a7067, ''),
(6, 'V0006', 'Teshome Abeba Teshager', 'Kirubel Eshetu Tefera', '+2519639806607', '', 0x69645f4b69727562656c5f4573686574755f5465666572612e6a7067, 'MV03'),
(7, 'V0007', 'Mella Gedda Feyesa', 'Adonai Desalegn Merga', '+251963541210', 'Geddaethiopia@gmail.com', 0x69645f4d656c6c615f476564615f466579657373612e6a7067, ''),
(8, 'V0008', 'Mihiret Tefera Aregahegn', 'Amanuel Daniel Mamo', '+251966231041', 'Mercy22334@gmail.com', 0x69645f4d6968697265745f5465666572615f41726567616865676e2e6a7067, ''),
(9, 'V0009', 'Yazew  Kebebew Dubale', 'Kerim Seid Ali	', '+251789912240', 'YazewKebe@gmail.com', 0x69645f59617a65775f4b6562656265775f447562616c652e6a7067, 'MV04'),
(10, 'V0010', 'Yirgu Teshome Techane', 'Kerim Seid Ali	', '+251983221140', 'Yirgutechane@gmail.com', 0x69645f59697267755f546573686f6d655f54656368616e652e6a7067, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cell_management`
--
ALTER TABLE `cell_management`
  ADD PRIMARY KEY (`#`),
  ADD UNIQUE KEY `cell_number` (`cell_number`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`#`);

--
-- Indexes for table `prisoners`
--
ALTER TABLE `prisoners`
  ADD PRIMARY KEY (`#`),
  ADD UNIQUE KEY `prisoner_id` (`prisoner_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`#`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`#`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`#`),
  ADD UNIQUE KEY `visitor_id` (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cell_management`
--
ALTER TABLE `cell_management`
  MODIFY `#` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prisoners`
--
ALTER TABLE `prisoners`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `#` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
