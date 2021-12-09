-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 03:03 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_performancemonitoringsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_tbl`
--

CREATE TABLE `account_tbl` (
  `Account_list` int(11) NOT NULL,
  `Teacher_ID` varchar(15) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Usertype` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_tbl`
--

INSERT INTO `account_tbl` (`Account_list`, `Teacher_ID`, `Username`, `Password`, `Usertype`) VALUES
(1, 'LSH105', 'Liam', 'Smith', 'user'),
(2, 'NJL3', 'Noah', 'Johnson', 'user'),
(3, 'OWG101', 'Oliver', 'Williams', 'user'),
(4, 'EBW102', 'Elijah', 'Brown', 'user'),
(5, 'WJA104', 'William', 'Jones', 'user'),
(6, 'EGT104', 'Emma', 'Garcia', 'user'),
(7, 'AMT1', 'Ava', 'Miller', 'user'),
(10, '', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `grade_tbl`
--

CREATE TABLE `grade_tbl` (
  `Grade_list` int(11) NOT NULL,
  `Student_number` varchar(25) NOT NULL,
  `Subject_code` varchar(10) NOT NULL,
  `Quiz` int(3) NOT NULL,
  `Seatwork` int(3) NOT NULL,
  `Assignment` int(3) NOT NULL,
  `Exam` int(3) NOT NULL,
  `Project` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `section_tbl`
--

CREATE TABLE `section_tbl` (
  `Section_list` int(11) NOT NULL,
  `Section_name` varchar(10) NOT NULL,
  `Total_student` int(3) NOT NULL,
  `Teacher_ID` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section_tbl`
--

INSERT INTO `section_tbl` (`Section_list`, `Section_name`, `Total_student`, `Teacher_ID`) VALUES
(1, 'SBIT-2A', 43, 'LSH105'),
(2, 'SBIT-2B', 47, 'NJL3 '),
(3, 'SBIT-2C', 45, 'OWG101'),
(4, 'SBIT-2D', 41, 'EBW102'),
(5, 'SBIT-2E', 49, 'WJA104'),
(6, 'SBIT-2F', 44, 'EGT104');

-- --------------------------------------------------------

--
-- Table structure for table `student_tbl`
--

CREATE TABLE `student_tbl` (
  `Student_list` int(11) NOT NULL,
  `Student_number` varchar(25) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Year_level` varchar(15) NOT NULL,
  `School_year` varchar(15) NOT NULL,
  `Section_name` varchar(10) NOT NULL,
  `Gender` enum('Male','Female') NOT NULL,
  `Birthdate` date NOT NULL,
  `Age` int(2) NOT NULL,
  `Addres` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact_no` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_tbl`
--

INSERT INTO `student_tbl` (`Student_list`, `Student_number`, `Lname`, `Fname`, `Mname`, `Year_level`, `School_year`, `Section_name`, `Gender`, `Birthdate`, `Age`, `Addres`, `Email`, `Contact_no`) VALUES
(1, '20-1648', 'Bagacay', 'Genesis', 'Albos', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-07-21', 20, 'Blk 31 Lot 6', 'bagacay.genesis@gmail.com', '09083616386'),
(2, '20-1821', 'But-oy', 'Maejorie', 'Adao', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-10-13', 20, 'Liberty Building Quezon City\r\n', 'maejorie.but-oy@gmail.com', '0933-555-1537'),
(3, '20-1794', 'Campos', 'Mark Johanne', 'Villar', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-03-06', 20, '2/F Snc Building, 2110 Gil Puyat Avenue Quezon Cit', 'markjohanne.campos@gmail.com', '0929-555-4566'),
(4, '20-1933', 'Cañete', 'Judith', 'Santos', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-02-12', 20, '1c Liberty Street Camp Crame Cubao 1100 Quezon Cit', 'judith.cañete@gmail.com', '0929-555-4987'),
(5, '20-1826', 'Deocareza', 'Jose Memer', 'Molero', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '1998-04-11', 23, 'H B C Corporate Center 548 Mindanao Avenue Corner ', 'josememer.deocareza@gmail.com', '0929-555-0269'),
(6, '20-1676', 'Go', 'John Michael', 'Dimasangcai', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '1999-12-12', 21, 'Teresa Apartment 1200 Quezon City\r\n', 'johnmichael.go@gmail.com', '0933-555-6538'),
(7, '20-1631', 'Magante', 'Emil Joseph', 'Moldon', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '1999-10-06', 22, 'Alta Meco CompoundKM 15 Sun Valley Drive West Serv', 'emiljoseph.magante@gmail.com', '0908-555-3045'),
(8, '20-1701', 'Mendoza', 'Larby Jace', 'Silvestre', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-08-31', 20, '606 Quirino Avenue, Tambo  Quezon City\r\n', 'larbyjace.mendoza@gmail.com', '0921-555-4819'),
(9, '20-1677', 'Adriano', 'Annerie', 'Bautista', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2000-03-11', 21, '700-E Del Monte Avenue Quezon City', 'annerie.adriano@gmail.com', '0929-555-6146'),
(10, '20-2897', 'Antonio', 'Kristcia Mae', 'Perez', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '1998-05-12', 23, '85-A A Roces Avenue 1100 Quezon City\r\n', 'kristciamae.antonio@gmail.com', '0932-555-9418'),
(11, '20-1874', 'Avila', 'Aira Janine', 'Lambuson', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '1999-05-06', 22, 'Unit 15, Ug/F Diliman Commercial Center, Commonwea', 'airajanine.avila@gmail.com', '0928-555-1028'),
(12, '20-1678', 'Baluyo', 'Marlyn Anne', 'Celo ', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-02-23', 20, '204 AND 208 Arayat Mansion19 Pa Bernardo Street 11', 'marlynanne.baluyo@gmaill.com', '0921-555-5640'),
(13, '20-1941', 'Biay', 'Katrina Marbie', 'Marquita', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2000-06-06', 21, 'Rm. 502 P I E C O Building2300 Pasong Tamo Extensi', 'katrinamarbie.biay@gmail.com', '0907-555-5564'),
(14, '20-1760', 'Bulilan', 'Christian', 'Gustilo', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-07-06', 20, '114 Prague Street Manila 16001  Quezon City\r\n', 'christian.bulilan@gmail.com', '0919-555-0623'),
(15, '20-1675', 'Cayetano', 'Ryan Cesar', '', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-05-29', 21, '10 Dahlia Street, De Castro Subdivision Quezon Cit', 'ryancesar.cayetano@gmail.com', '0933-555-3742'),
(16, '20-1271', 'Cunanan', 'Jesse Anne', 'Silverio', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-07-01', 20, 'Unit 4 Amang Rodriguez Avenue, Barangay Mangahan Q', 'jesseanne.cunanan@gmail.com', '0923-555-5943'),
(17, '20-1625', 'De Guzman', 'Bernard Roderick', 'Sadicon', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '1998-03-09', 23, 'Agham Road Quezon City\r\n', 'bernardroderick.deguzman@gmail.com', '0907-555-5078'),
(18, '20-1749', 'Dela Cruz', 'Jaycee', 'Erasquin', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-04-11', 20, '106 Esteban Quezon City\r\n', 'jaycee.delacruz@gmail.com', '0932-555-7527'),
(19, '20-1748', 'Estoya', 'Aubrey Jhane', '', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '1999-07-08', 22, '3850 Gen. Macabulos Street Bangkal Quezon City\r\n', 'aubreyjhane.estoya@gmail.com', '0933-555-5077'),
(20, '19-0847', 'Faustino', 'Jerome', 'Gonzalvo', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-12-13', 20, '271 Edsa 1500 Quezon City\r\n', 'jerome.faustino@gmail.com', '0919-555-1937'),
(21, '20-1850', 'Garcia', 'Jhonil', 'Betinol', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-05-01', 21, 'Grepalife Building 1200 Quezon City\r\n', 'jhonil.garcia@gmail.com', '0933-555-4858'),
(22, '20-1848', 'Guevarra', 'Christine Joy', 'Querubin', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '1998-05-19', 23, '17 Calbayog Street Highway Hills 1550 Quezon City', 'christinejoy.guevarra@gmail.com', '0922-555-4886'),
(23, '20-1949', 'Herrera', 'Audrey Nicki', 'Agustin', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2000-12-26', 20, '225 D Tuazon 1100 Quezon City\r\n', 'audreynicki.herrera@gmail.com', '0933-555-3239'),
(24, '20-1955', 'Iñigo', 'Paulo Miguel', 'Bumagat', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '1999-04-26', 22, 'Pacific Bank Building 1200 Quezon City\r\n', 'paulomiguel.iñigo@gmail.com', '0919-555-1664'),
(25, '20-1645', 'Llaneta', 'Von Andrie ', 'Lizardo', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2000-06-25', 21, 'L2 Bridgeway, Pavilion Mall Quezon City\r\n', 'vonandrie.llaneta@gmail.com', '0907-555-3355'),
(26, '18-0616', 'Mallari', 'John Glenn', 'Quirante', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-03-07', 20, 'Timog Avenue, Corner Scout Santiago Street Quezon ', 'johnglenn.mallari@gmail.com', '0908-555-8412'),
(27, '20-1646', 'Matol', 'Mark Anthony', 'Belleza', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-09-19', 21, 'Diliman, 1128, NCR  Quezon City\r\n', 'markanthony.matol@gmail.com', '0932-555-2104'),
(28, '20-1657', 'Medina', 'Agatha Cyril', 'Fernandez', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-10-26', 20, 'Dona Julieta Building 112 K Street Corner Kamuning', 'agathacyril.medina@gmail.com', '0919-555-1929'),
(29, '20-1671', 'Moquete', 'Aldrin', 'Dinglasa', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-06-12', 21, '5/F Transphil House Chino Roces Avenue Corner Bagt', 'aldrin.moquete@gmail.com', '0921-555-0572'),
(30, '20-1632', 'Morallos', 'Shiela Mae', 'Dela cruz', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-04-23', 20, 'Guadalupe  Quezon City\r\n', 'shielamae.morallos@gmail.com', '0933-555-0510'),
(31, '20-1788', 'Navarro', 'Arvin Dwight ', 'Cayabyab ', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-01-03', 21, 'One Magnificent Mile-Citra  Quezon City\r\n', 'arvindwight.navarro@gmail.com', '0932-555-2393'),
(32, '20-1799', 'Pablo', 'Rodrigo', 'Dinong', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-08-10', 20, 'JTM Building, Regalado Avenue  Quezon City\r\n', 'rodrigo.pablo@gmail.com', '0932-555-4235'),
(33, '20-1751', 'Padilla', 'John Christopher', 'Mascenon', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-02-18', 21, 'Zone 1 Stall CMCV Plaza Gate II, Bagong Nayon  Que', 'johnchristopher.padilla@gmail.com', '0907-555-0387'),
(34, '20-1906', 'Paqueo', 'Jericho', 'Inot', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-05-07', 21, '816 Pasay Road 1200  Quezon City\r\n', 'jericho.paqueo@gmail.com', '0919-555-7946'),
(35, '20-1930', 'Pascua', 'Monique', 'Labayani', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2001-05-21', 20, 'G/F Ezm Building 37 Apo Street Barangka Ilaya 1550', 'monique.pascua@gmail.com', '0923-555-0072'),
(36, '20-2111', 'Perez Jr.', 'Joenarie', 'Sanchez', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-03-21', 20, '57 - D TIMOG AVENUE  Quezon City\r\n', 'joenarie.perez@gmail.com', '0933-555-8704'),
(37, '20-2052', '', 'Matt dencen', 'Sales', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-04-20', 21, '51 Dexter Street, Torohills  Quezon City\r\n', 'mattdencen.pesebre@gmail.com', '0923-555-4692'),
(38, '20-1863', 'Prima', 'John Remart', 'Agcol', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-10-14', 21, '10/F Felisa Building 108 Herrera Street Legaspi Vi', 'johnremart.prima@gmail.com', '0932-555-0913'),
(39, '20-1687', 'Quinto', 'Daniel', 'Torrente', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-03-23', 21, 'G/F SM Cubao, P. Tuazon Boulevard  Quezon City\r\n', 'daniel.quinto@gmail.com', '0919-555-2746'),
(40, '20-1806', 'Rondina', 'Justin', 'Ruaya', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-11-26', 20, 'Saville Building  Quezon City\r\n', 'justin.rondina@gmail.com', '0929-555-6873'),
(41, '20-1828', 'Sacyaten', 'Ana Cecilia', 'Lacwin', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2000-09-07', 21, '51 Paseo De Roxas Cor. Sen. Gil Puyat Ave.Urdaneta', 'anacecilia.sacyaten@gmail.com', '0929-555-5813'),
(42, '20-1713', 'Saguilot', 'Andrew', 'Daddy', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-11-05', 21, 'McArthur Highway, 234 Matina  Quezon City\r\n', 'andrew.saguilot@gmail.com', '0933-555-5641'),
(43, '20-2097', 'Samillano', 'Christian', 'Ladao', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-02-03', 20, '318-A 318-A Santolan Road 1100  Quezon City\r\n', 'christian.samillano@gmail.com', '0921-555-4127'),
(44, '20-1659', 'Sañez', 'Charlene', 'Castillo', '2nd Year', '2021-2022', 'SBIT-2E', 'Female', '2000-10-22', 21, 'GSIS Village, Proj. 8, Quezon City  Quezon City\r\n', 'charlene.sañez@gmail.com', '0922-555-0920'),
(45, '20-1934', 'Solitario', 'Elaijha Luis', 'Versoza', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-07-21', 20, '128 General Echavez Street  Quezon City\r\n', 'elaijhaluis.solitario@gmail.com', '0929-555-0380'),
(46, '20-1647', 'Soriano', 'John Ira', 'Calvan', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2001-03-11', 20, 'Cenacle quezon city 1100  Quezon City\r\n', 'johnira.soriano@gmail.com', '0928-555-3943'),
(47, '20-1831', 'Toledo', 'Jan Vincent Neal', 'Ramos', '2nd Year', '2021-2022', 'SBIT-2E', 'Male', '2000-03-17', 21, 'UNIT B2-A A & M Building 9 Commonwealth Avenue Cap', 'janvincentneal.toledo@gmail.com', '0919-555-7210'),
(74, '20-0026', 'Glison', 'Pennie', 'Farnill', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2003-05-15', 18, '78 Moland Court', 'pennie.glison@gmail.com', '0945 824 1066'),
(75, '20-0027', 'Winfindale', 'Cullie', 'Gullam', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2000-03-10', 21, '85 Merry Pass\r\n', 'neville.assiter@gmail.com', '0945 103 3930'),
(76, '20-0029', 'Odney', 'Ailina', 'Lillyman', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '1998-12-16', 22, '4 New Castle Road\r\n', 'ailina.odney@gmail.com', '0945 611 5113'),
(77, '20-0030', 'MacDearmaid', 'Thane', 'Andrea', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2002-05-02', 19, '71629 Bunting Trail\r\n', 'thane.macdearmaid@gmail.com', '0945 063 3917'),
(78, '20-0031', 'Dockery', 'Arron', 'Bisiker', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-02-18', 19, '54274 Eagle Crest Parkway\r\n', 'arron.dockery@gmail.com', '0945 990 9195'),
(79, '20-0032', 'McLachlan', 'Elsy', 'McNair', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2000-06-27', 21, '45752 Parkside Street\r\n', 'elsy.mclachlan@gmail.com', '0945 957 6771'),
(80, '20-0033', 'Poundford', 'Carlynne', 'Fellon', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '1999-07-21', 22, '95 Judy Place\r\n', 'carlynne.poundford@gmail.com', '0945 868 5462'),
(81, '20-0034', 'Edgington', 'Mommy', 'Crinage', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-10-24', 19, '72281 Anderson Center\r\n', 'mommy.edgington@gmail.com', '0945 951 3277'),
(82, '20-0035', 'Falco', 'Roseline', 'Buffey', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2001-03-04', 20, '43 Basil Avenue\r\n', 'roseline.falco@gmail.com', '0945 917 5834'),
(83, '20-0036', 'Giovannardi', 'Mariann', 'Cersey', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2002-01-03', 19, '200 Warbler Place\r\n', 'mariann.giovannardi@gmail.com', '0945 598 4565'),
(84, '20-0037', 'Darling', 'Rosita', 'Saxon', '2nd Year', '2002-02-20', 'SBIT-2A', 'Female', '2002-02-20', 19, '6 Sommers Way\r\n', 'rosita.darling@gmail.com', '0945 555 3112'),
(85, '20-0038', 'Jiggins', 'Franklyn', 'Loughrey', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-04-13', 19, '211 Roth Trail\r\n', 'franklyn.jiggins@gmail.com', '0945 332 5169'),
(86, '20-0039', 'Dashwood', 'Vicky', 'Latty', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2002-05-22', 19, '0 Stephen Way\r\n', 'vicky.dashwood@gmail.com', '0945 978 2051'),
(87, '20-0040', 'Sidwick', 'Bram', 'Bosch', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-11-30', 19, '6388 Judy Park\r\n', 'bram.sidwick@gmail.com', '0945 100 9282'),
(88, '20-0041', 'Cowley', 'Adella', 'Fozzard', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2003-06-16', 18, '29568 Kenwood Alley\r\n', 'adella.cowley@gmail.com', '0945 760 6402'),
(89, '20-0042', 'Woolmington', 'Corrina', 'Shemwell', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2003-06-11', 18, '9886 Ohio Terrace\r\n', 'corrina.woolmington@gmail.com', '0945 352 3301'),
(98, '20-0009', 'Chaimson', 'Holly', 'Flanders', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2000-01-19', 21, '1 Lawn Junction\r\n', 'holly.chaimson@gmail.com', '0945 686 0274'),
(99, '20-0010', 'Eick', 'Taylor', 'Kasper', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '1999-02-23', 22, '0987 Kensington Way\r\n', 'taylor.eick@gmail.com', '0945 501 5028'),
(100, '20-0011', 'Innocenti', 'Venus', 'Eliassen', '2nd Year', '2001-01-01', 'SBIT-2A', 'Male', '0000-00-00', 2001, '30494 West Plaza\r\n', 'venus.innocenti@gmail.com', '0945 258 6191'),
(101, '20-0012', 'Riccardi', 'Onida', 'Chesswas', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2003-03-25', 18, '4884 Londonderry Park\r\n', 'onida.riccardi@gmail.com', '0945 494 0162'),
(102, '20-0013', 'Lince', 'Herta', 'Ormes', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-09-24', 19, '91 Toban Way\r\n', 'herta.lince@gmail.com', '0945 806 5473'),
(103, '20-0014', 'Klisch', 'Keefer', 'Cheine', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2002-08-21', 19, '23 Arizona Plaza\r\n', 'keefer.klisch@gmail.com', '0945 2094719'),
(104, '20-0015', 'Heimes', 'Sher', 'Allsup', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '1999-12-06', 22, '153 Bluejay Plaza\r\n', 'sher.heimes@gmail.com', '0945 225 1958'),
(105, '20-0016', 'Blastock', 'Gabi', 'Gaine of England', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2000-03-12', 21, '466 Menomonie Alley\r\n', 'gabi.blastock@gmail.com', '0945 293 6638'),
(106, '20-0017', 'Groucock', 'Rivalee', 'Reckless', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2002-08-26', 19, '55802 Namekagon Road\r\n', 'rivalee.groucock@gmail.com', '0945 887 2306'),
(107, '20-0018', 'Wesson', 'Irita', 'Bilsland', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2002-07-10', 19, '5 Graedel Junction\r\n', 'irita.wesson@gmail.com', '0945 411 6845'),
(108, '20-0019', 'Giamitti', 'Michaelina', 'McKeating', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2001-12-14', 19, '5 Stuart Circle\r\n', 'michaelina.giamitti@gmail.com', '0945 627 1327'),
(109, '20-0020', 'Lightbody', 'Kelcie', 'Mathwin', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2003-10-25', 18, '1659 Aberg Park\r\n', 'kelcie.lightbody@gmail.com', '0945 736 9081'),
(110, '20-0021', 'Fountaine', 'Edna', 'Aggas', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2003-11-10', 18, '3200 Mitchell Crossing\r\n', 'edna.fountaine@gmail.com', '0945 236 9145'),
(111, '20-0022', 'Tonna', 'Rockie', 'Wroe', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '1999-11-26', 22, '711 Lotheville Place\r\n', 'rockie.tonna@gmail.com', '0945 403 3531'),
(112, '20-0023', 'Assiter', 'Neville', 'Hackinge', '1st Year', '2021-2022', 'SBIT-2A', 'Male', '2000-03-10', 21, '85 Merry Pass\r\n', 'neville.assiter@gmail.com', '0945 103 3930'),
(113, '20-0024', 'Dismore', 'Brigid', 'Shackle', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2001-03-16', 20, '191 Glacier Hill Crossing\r\n', 'brigid.dismore@gmail.com', '0945 303 8051'),
(114, '20-0025', 'Dampier', 'Hazel', 'Skellern', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-02-11', 19, '107 Rigney Circle\r\n', 'hazel.dampier@gmail.com', '0945 147 3570'),
(115, '20-0000', 'Knuckles', 'Sidonnie', 'Flatley', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-04-01', 19, '06371 Kings Street\r\n', 'sidonnie.knuckles@gmail.com', '0945 761 3816'),
(116, '20-0001', 'Considine', 'Aloysius', 'Oultram', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2001-04-11', 20, '69591 Logan Terrace\r\n', 'aloysius.considine@gmail.com', '0945 125 2950'),
(117, '20-0002', 'Fane', 'Kareem', 'Royl', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '1999-03-10', 22, '73 Westerfield Circle\r\n', 'kareem.fane@gmail.com', '0945 601 6734'),
(118, '20-0003', 'Moretto', 'Lucia', 'Liptrot', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '1999-09-21', 22, '075 Service Plaza\r\n', 'lucia.moretto@gmail.com', '0945 204 2975'),
(119, '20-0004', 'Francke', 'Rebekkah', 'Gillies', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '2000-03-03', 21, '12520 Reindahl Way\r\n', 'rebekkah.francke@gmail.com', '0945 264 0278'),
(120, '20-0005', 'Fullerlove', 'Billy', 'Berick', '2nd Year', '2021-2022', 'SBIT-2A', 'Male', '1999-06-02', 22, '7 7th Avenue\r\n', 'billy.fullerlove@gmail.com', '0945 772 0097'),
(121, '20-0006', 'Klehyn', 'Stephanus', 'McCabe', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2001-07-18', 20, '612 Cascade Trail\r\n', 'stephanus.klehyn@gmail.com', '0945 673 1455'),
(122, '20-0007', 'Corrison', 'Corrison', 'Rici', '2nd Year', '2021-2022', 'SBIT-2A', 'Female', '2002-05-16', 19, '92147 Lien Park\r\n', 'rici.corrison@gmail.com', '0945 865 4638'),
(123, '20-0008', 'Hardi', 'Silvester', 'McGloughlin', '2nd Year', '2nd Year', 'SBIT-2A', 'Female', '0000-00-00', 21, '620 Scofield Place\r\n', 'silvester.hardi@gmail.com', '0945 793 9385'),
(256, '20-0049', 'Canham', 'Larisa', 'Brasher', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2003-05-23', 18, '5675 Cambridge Place\r\n', 'theo.stannett@gmail.com', '0945 338 8965'),
(257, '20-0044', 'Shepcutt', 'Dacy', 'Killingworth', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2001-10-02', 20, '69 Pankratz Circle\r\n', 'dacy.shepcutt@gmail.com', '0945 437 7947'),
(258, '20-0045', 'Jerrold', 'Alano', 'Boch', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2003-05-06', 18, '03 Dapin Road\r\n', 'alano.jerrold@gmail.com', '0945 048 6048'),
(259, '20-0046', 'Skeemor', 'Malinda', 'Gori', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2000-07-01', 21, '95586 Jenna Drive\r\n', 'malinda.skeemor@gmail.com', '0945 531 1225'),
(260, '20-0047', 'Grimsdell', 'Quintana', 'Wilshire', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-08-17', 21, '1240 Ronald Regan Place\r\n', 'quintana.grimsdell@gmail.com', '0945 714 4617'),
(261, '20-0048', 'Fidian', 'Anallese', 'Gatling', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '1999-11-13', 22, '37 Eagle Crest Center\r\n', 'anallese.fidian@gmail.com', '0945 263 9779'),
(263, '20-0050', 'Whorlow', 'Seka', 'Gannicleff', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2002-09-21', 19, '9438 Drewry Crossing\r\n', 'seka.whorlow@gmail.com', '0945 060 5584'),
(264, '20-0051', 'Fauguel', 'Shep', 'Bernardeschi', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2001-08-03', 20, '16319 Surrey Plaza\r\n', 'shep.fauguel@gmail.com', '0945 708 0858'),
(265, '20-0052', 'Kinde', 'Edith', 'Widdup', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2003-03-02', 18, '13 Prairieview Street\r\n', 'edith.kinde@gmail.com', '0945 205 3717'),
(266, '20-0053', 'Dugue', 'Tore', 'Huntar', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2002-10-05', 19, '76061 Morrow Hill\r\n', 'tore.dugue@gmail.com', '0945 917 9353'),
(267, '20-0054', 'Roddam', 'Griffy', 'Cathery', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2003-12-01', 18, '33106 Warner Circle\r\n', 'griffy.roddam@gmail.com', '0945 757 3675'),
(268, '20-0055', 'Wingatt', 'Uta', 'Birchill', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2001-01-30', 20, '68 Havey Crossing\r\n', 'uta.wingatt@gmail.com', '0945 708 7183'),
(269, '20-0056', 'Benne', 'Lew', 'Richardes', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2000-09-07', 21, '78 Cambridge Junction\r\n', 'lew.benne@gmail.com', '0945 936 3876'),
(270, '20-0057', 'Southern', 'Carlee', 'Duinbleton', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2000-07-11', 21, '64 Thompson Terrace\r\n', 'carlee.southern@gmail.com', '0945 162 0257'),
(271, '20-0058', 'Amott', 'Marylin', 'Isakov', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2001-07-14', 20, '4271 Waxwing Place\r\n', 'marylin.amott@gmail.com', '0945 260 3510'),
(272, '20-0059', 'Brayley', 'Hale', 'Gindghill', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2001-04-27', 20, '872 Donald Trail\r\n', 'hale.brayley@gmail.com', '0945 089 3317'),
(273, '20-0060', 'Frisel', 'Dody', 'Stirton', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2003-06-19', 18, '840 Scofield Place\r\n', 'dody.frisel@gmail.com', '0945 228 9320'),
(274, '20-0061', 'Reddin', 'Emmalynne', 'Heam', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-02-29', 21, '5273 Harbort Plaza\r\n', 'emmalynne.reddin@gmail.com', '0945 465 4907'),
(275, '20-0062', 'Kellet', 'Boot', 'Caught', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2003-02-06', 18, '08192 Caliangt Park\r\n', 'boot.kellet@gmail.com', '0945 036 8894'),
(276, '20-0063', 'Aldrin', 'Roby', 'Caston', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '1999-05-27', 22, '6 Sundown Place\r\n', 'roby.aldrin@gmail.com', '0945 723 0534'),
(277, '20-0064', 'Semark', 'Emmett', 'Pennetta', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '1999-06-05', 22, '62 Anderson Terrace\r\n', 'emmett.semark@gmail.com', '0945 735 7510'),
(278, '20-0065', 'Peoples', 'Agatha', 'Skyppe', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2003-02-18', 18, '507 Nova Court\r\n', 'agatha.peoples@gmail.com', '0945 022 8526'),
(279, '20-0066', 'Cavie', 'Sibylle', 'Baldwin', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2002-12-07', 18, '89276 Daystar Center\r\n', 'sibylle.cavie@gmail.com', '0945 934 5983'),
(280, '20-0067', 'Mundow', 'Carolyne', 'Bullingham', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-02-29', 21, '176 Ryan Court\r\n', 'carolyne.mundow@gmail.com', '0945 206 4346'),
(281, '20-0068', 'Coolson', 'Miriam', 'Petrulis', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2002-07-15', 19, '77 Mesta Road\r\n', 'miriam.coolson@gmail.com', '0945 461 9122'),
(282, '20-0069', 'Gilliatt', 'Gardy', 'Whitelock', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2002-06-10', 19, '0 Pleasure Street\r\n', 'gardy.gilliatt@gmail.com', '0945 321 9305'),
(283, '20-0070', 'Merrifield', 'Miner', 'Southan', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-04-18', 21, '9 Homewood Alley\r\n', 'miner.merrifield@gmail.com', '0945 237 9924'),
(284, '20-0071', 'Maus', 'Dannie', 'Alden', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '1999-03-21', 22, '9952 Bashford Parkway\r\n', 'dannie.maus@gmail.com', '0945 939 2727'),
(285, '20-0072', 'McPhee', 'Thelma', 'Sudron', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2001-10-06', 20, '837 Park Meadow Lane\r\n', 'thelma.mcphee@gmail.com', '0945 502 6631'),
(286, '20-0073', 'Middleditch', 'Kipp', 'Chadwick', '2nd Year', '2003-11-29', 'SBIT-2B', 'Male', '2003-11-29', 18, '1 Golf View Junction\r\n', 'kipp.middleditch@gmail.com', '0945 715 1760'),
(287, '20-0074', 'de Chastelain', 'Alisha', 'Anthon', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-04-07', 21, '91514 Lotheville Plaza\r\n', 'alisha.de chastelain@gmail.com', '0945 255 0070'),
(288, '20-0075', 'Enever', 'Hildegarde', 'Shadrack', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '1999-12-10', 21, '53391 Brentwood Plaza\r\n', 'hildegarde.enever@gmail.com', '0945 644 1340'),
(289, '20-0076', 'Eddington', 'Everett', 'Portchmouth', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-04-28', 21, '6585 Grim Alley\r\n', 'everett.eddington@gmail.com', '0945 841 3464'),
(290, '20-0077', 'Dorking', 'Garner', 'Skace', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '1999-07-12', 22, '5 Dorton Street\r\n', 'garner.dorking@gmail.com', '0945 602 7454'),
(291, '20-0078', 'Gater', 'Danny', 'Bawme', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2000-03-07', 21, '50940 Rowland Place\r\n', 'danny.gater@gmail.com', '0945 003 2937'),
(292, '20-0079', 'Basillon', 'Evangelin', 'Cerman', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2000-07-23', 21, '771 Doe Crossing Drive\r\n', 'evangelin.basillon@gmail.com', '0945 600 4450'),
(293, '20-0080', 'Merry', 'Viviana', 'Haylock', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2001-07-23', 20, '45 Quincy Street\r\n', 'viviana.merry@gmail.com', '0945 825 6314'),
(294, '20-0081', 'Keller', 'Isaiah', 'Powner', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2001-07-23', 20, '82 Kensington Plaza\r\n', 'isaiah.keller@gmail.com', '0945 774 5672'),
(295, '20-0082', 'Grove', 'Agathe', 'Abrahamoff', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2003-07-28', 18, '0794 Lotheville Point\r\n', 'agathe.grove@gmail.com', '0945 396 8671'),
(296, '20-0083', 'Songist', 'Gay', 'Argrave', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2003-04-16', 18, '40 Cherokee Park\r\n', 'gay.songist@gmail.com', '0945 987 1580'),
(297, '20-0084', 'Kill', 'Herbert', 'Loren', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-07-03', 21, '55 Fair Oaks Point\r\n', 'herbert.kill@gmail.com', '0945 872 3901'),
(298, '20-0085', 'Mansel', 'Maible', 'Fautly', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2003-04-15', 18, '4 Morrow Trail\r\n', 'maible.mansel@gmail.com', '0945 320 6675'),
(299, '20-0086', 'Dunkirk', 'Kath', 'Bartram', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2000-08-06', 21, '9013 Monument Court\r\n', 'kath.dunkirk@gmail.com', '0945 744 3072'),
(300, '20-0087', 'Deakins', 'Jorge', 'Trangmar', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2002-05-23', 19, '7 Towne Junction\r\n', 'jorge.deakins@gmail.com', '0945 191 4457'),
(301, '20-0088', 'Yakovich', 'Ogdon', 'McMorran', '2nd Year', '2021-2022', 'SBIT-2B', 'Male', '2002-06-11', 19, '092 Corscot Plaza\r\n', 'ogdon.yakovich@gmail.com', '0945 097 5821'),
(302, '20-0089', 'Marron', 'Tedi', 'Scarlet', '2nd Year', '2021-2022', 'SBIT-2B', 'Female', '2000-03-20', 21, '38370 Mallory Terrace\r\n', 'tedi.marron@gmail.com', '0945 469 7232'),
(304, '20-0090', 'Lively', 'Bill', 'Flower', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2003-04-12', 18, '5293 Trailsway Drive', 'bill.lively@gmail.com', '0945 822 4681'),
(305, '20-0091', 'Hiorn', 'Birgit', 'Keri', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2002-05-02', 19, '54 Dixon Court', 'birgit.hiorn@gmail.com', '0945 006 4156'),
(306, '20-0092', 'Pringell', 'Alla', 'Mattschas', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '1999-05-15', 22, '4 Lunder Place', 'alla.pringell@gmail.com', '0945 113 0952'),
(307, '20-0093', 'Swabey', 'Isidro', 'Keysel', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-03-07', 20, '0 Golf Course Road', 'isidro.swabey@gmail.com', '0945 157 8866'),
(308, '20-0094', 'Dell \'Orto', 'Boothe', 'Ratter', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-08-16', 20, '857 Prentice Center', 'boothe.dellorto@gmail.com', '0945 726 9878'),
(309, '20-0095', 'Trodd', 'Joice', 'Tice', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-07-11', 20, '922 Northport Street', 'joice.trodd@gmail.com', '0945 566 4783'),
(310, '20-0096', 'Scandrick', 'Keen', 'Swaddle', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2000-07-31', 21, '7 Ridgeway Hill', 'keen.scandrick@gmail.com', '0945 304 1026'),
(311, '20-0097', 'MacHoste', 'Larisa', 'Kennan', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '1999-12-01', 22, '8 High Crossing Park', 'larisa.machoste@gmail.com', '0945 120 1470'),
(312, '20-0098', 'Osmund', 'Britteny', 'O\'Criane', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '1999-12-31', 21, '1530 Barnett Hill', 'britteny.osmund@gmail.com', '0945 523 8912'),
(313, '20-0099', 'Sprasen', 'Yanaton', 'Crates', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-07-22', 20, '1 Declaration Hill', 'yanaton.sprasen@gmail.com', '0945 665 3516'),
(314, '20-0100', 'Huffer', 'Mattias', 'Malbon', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2003-03-28', 18, '0010 Lawn Plaza', 'mattias.huffer@gmail.com', '0945 199 8518'),
(315, '20-0101', 'Wheelwright', 'Kelli', 'Frazier', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-06-06', 20, '407 Barnett Junction', 'kelli.wheelwright@gmail.com', '0945 700 5638'),
(316, '20-0102', 'Mc Caughen', 'Cthrine', 'Farrears', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2002-09-04', 19, '7213 Glendale Circle', 'cthrine.@gmail.com', '0945 279 6806'),
(317, '20-0103', 'Morena', 'Kary', 'Falla', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2003-03-08', 18, '97755 Canary Avenue', 'kary.morena@gmail.com', '0945 935 6176'),
(318, '20-0104', 'Dobie', 'Pooh', 'Beltzner', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2003-10-25', 18, '36 Barby Trail', 'pooh.dobie@gmail.com', '0945 225 1588'),
(319, '20-0105', 'Dumberrill', 'Ingar', 'Wonfar', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-10-06', 20, '07307 Forest Run Terrace', 'ingar.dumberrill@gmail.com', '0945 287 5480'),
(320, '20-0106', 'Spilsbury', 'Phedra', 'Giacobilio', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-08-27', 20, '645 Heath Way', 'phedra.spilsbury@gmail.com', '0945 863 9875'),
(321, '20-0107', 'Cuer', 'Lani', 'Paolazzi', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '1998-12-16', 22, '5 Westerfield Road', 'lani.cuer@gmail.com', '0945 194 8623'),
(322, '20-0108', 'Penniell', 'Skell', 'O\'Teague', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2000-01-26', 21, '012 Erie Terrace', 'skell.penniell@gmail.com', '0945 844 8696'),
(323, '20-0109', 'Jimenez', 'Ceciley', 'Bolderoe', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2003-04-04', 18, '0 Fremont Way', 'ceciley.jimenez@gmail.com', '0945 298 0434'),
(324, '20-0110', 'Chadney', 'Wilone', 'Lory', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-08-28', 20, '13 Cottonwood Plaza', 'wilone.chadney@gmail.com', '0945 331 5492'),
(325, '20-0111', 'Bausmann', 'Nathalia', 'Hackworthy', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '1999-11-05', 22, '18 Buena Vista Hill', 'nathalia.bausmann@gmail.com', '0945 219 0303'),
(326, '20-0112', 'Starr', 'Albertina', 'Simms', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '1999-03-23', 22, '25 Stone Corner Circle', 'albertina.starr@gmail.com', '0945 611 0428'),
(327, '20-0113', 'Polley', 'Neill', 'Bilton', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2003-03-29', 18, '4238 Forest Dale Drive', 'neill.polley@gmail.com', '0945 573 0257'),
(328, '20-0114', 'Fenton', 'Ilka', 'Whitlow', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2000-01-01', 21, '0276 Ruskin Lane', 'ilka.fenton@gmail.com', '0945 173 4195'),
(329, '20-0115', 'Muzzini', 'Lesli', 'Hurt', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-06-07', 20, '6 Warrior Alley', 'lesli.muzzini@gmail.com', '0945 012 3424'),
(330, '20-0116', 'Zeplin', 'Rupert', 'Dottridge', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2003-04-04', 18, '780 Kinsman Park', 'rupert.zeplin@gmail.com', '0945 176 4645'),
(331, '20-0117', 'Kirman', 'Lulu', 'Lodevick', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2003-10-15', 18, '05817 Farmco Plaza', 'lulu.kirman@gmail.com', '0945 071 4471'),
(332, '20-0118', 'Slimon', 'Donelle', 'Kornacki', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-09-01', 20, '8941 Maple Avenue', 'donelle.slimon@gmail.com', '0945 538 5091'),
(333, '20-0119', 'Byk', 'Doralin', 'Kiff', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2002-08-02', 19, '636 Manley Parkway', 'doralin.byk@gmail.com', '0945 343 0652'),
(334, '20-0120', 'Bushrod', 'Gannon', 'Gianetti', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2000-07-26', 21, '12 Johnson Avenue', 'gannon.bushrod@gmail.com', '0945 330 3500'),
(335, '20-0121', 'Collidge', 'Dukie', 'Casin', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-05-31', 20, '93 Dapin Park', 'dukie.collidge@gmail.com', '0945 603 8469'),
(336, '20-0122', 'Tchaikovsky', 'Franchot', 'Erskine', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2002-12-15', 18, '66739 Veith Crossing', 'franchot.tchaikovsky@gmail.com', '0945 559 1935'),
(337, '20-0123', 'Gartenfeld', 'Norrie', 'Dumphry', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2000-11-03', 21, '39275 Dryden Hill', 'norrie.gartenfeld@gmail.com', '0945 257 7871'),
(338, '20-0124', 'Tappington', 'Karly', 'Rosin', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2001-06-18', 20, '3489 Merchant Park', 'karly.tappington@gmail.com', '0945 436 6768'),
(339, '20-0125', 'Kohrsen', 'Ashlee', 'Greder', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2003-08-08', 18, '604 Doe Crossing Hill', 'ashlee.kohrsen@gmail.com', '0945 329 8474'),
(340, '20-0126', 'Petters', 'Patricio', 'Caldow', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2000-11-05', 21, '772 Packers Parkway', 'patricio.petters@gmail.com', '0945 101 5176'),
(341, '20-0127', 'Cossans', 'Georgena', 'Wenban', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '1999-08-29', 22, '7012 Lawn Junction', 'georgena.cossans@gmail.com', '0945 622 4046'),
(342, '20-0128', 'Adenet', 'Antone', 'Basden', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2002-03-16', 19, '67565 Kenwood Crossing', 'antone.adenet@gmail.com', '0945 380 3941'),
(343, '20-0129', 'Seckington', 'Prudence', 'Mariot', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2002-03-17', 19, '690 West Trail', 'prudence.seckington@gmail.com', '0945 718 2803'),
(344, '20-0130', 'Ranshaw', 'Kirbee', 'Burbridge', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-05-15', 20, '81 Badeau Trail', 'kirbee.ranshaw@gmail.com', '0945 406 4020'),
(345, '20-0131', 'Grills', 'Abraham', 'Bodemeaid', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2001-01-06', 20, '43 Lighthouse Bay Drive', 'abraham.grills@gmail.com', '0945 048 0653'),
(346, '20-0132', 'Kees', 'Gill', 'Siemons', '2nd Year', '2021-2022', 'SBIT-2C', 'Female', '2000-10-03', 21, '8238 David Lane', 'gill.kees@gmail.com', '0945 976 3204'),
(347, '20-0133', 'Moncreiffe', 'Cristian', 'Springthorpe', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '2000-03-21', 21, '08 Commercial Avenue', 'cristian.moncreiffe@gmail.com', '0945 575 6193'),
(348, '20-0134', 'Hatherill', 'Arman', 'Swainsbury', '2nd Year', '2021-2022', 'SBIT-2C', 'Male', '1999-06-29', 22, '9568 Pleasure Trail', 'arman.hatherill@gmail.com', '0945 416 8802'),
(349, '20-0135', 'Gebhardt', 'Obadias', 'MacCleod', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2000-01-02', 21, '10852 Rockefeller Junction', 'obadias.gebhardt@gmail.com', '0945 333 9786'),
(350, '20-0136', 'Ganforth', 'Catlaina', 'Bofield', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2000-03-06', 21, '79873 Forest Run Avenue', 'catlaina.ganforth@gmail.com', '0945 073 4668'),
(351, '20-0137', 'Cow', 'Marian', 'Jindracek', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2002-12-06', 19, '62671 Claremont Parkway', 'marian.cow@gmail.com', '0945 782 9093'),
(352, '20-0138', 'Swire', 'Adolpho', 'Godridge', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2002-01-20', 19, '8 Farmco Point', 'adolpho.swire@gmail.com', '0945 447 1181'),
(353, '20-0139', 'Revie', 'Bradford', 'Pinn', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2002-09-08', 19, '83283 Acker Parkway', 'bradford.revie@gmail.com', '0945 156 0454'),
(354, '20-0140', 'Cluett', 'Arvin', 'Butterfill', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-05-01', 20, '1 Schmedeman Center', 'arvin.cluett@gmail.com', '0945 650 5338'),
(355, '20-0141', 'Linnett', 'Raddie', 'Josephi', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2002-06-19', 19, '6031 Forest Dale Alley', 'raddie.linnett@gmail.com', '0945 850 1090'),
(356, '20-0142', 'Mullett', 'Bathsheba', 'Witard', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '1999-03-19', 22, '73 Jackson Way', 'bathsheba.mullett@gmail.com', '0945 016 7738'),
(357, '20-0143', 'Markussen', 'Virgil', 'Vallentin', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2000-06-01', 21, '7749 Michigan Circle', 'virgil.markussen@gmail.com', '0945 616 1878'),
(358, '20-0144', 'Yegorev', 'Skylar', 'Pynn', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-03-23', 20, '6 Melvin Point', 'skylar.yegorev@gmail.com', '0945 023 5479'),
(359, '20-0145', 'Durtnal', 'Gabbie', 'Pawley', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2003-05-12', 18, '2 Morning Terrace', 'gabbie.durtnal@gmail.com', '0945 819 4209'),
(360, '20-0146', 'Klimsch', 'Jareb', 'Avrahamoff', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-02-08', 20, '1 Sunfield Pass', 'jareb.klimsch@gmail.com', '0945 135 4340'),
(361, '20-0147', 'Skydall', 'Madelina', 'Belchambers', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-05-19', 20, '81 Lakewood Avenue', 'madelina.skydall@gmail.com', '0945 059 8295'),
(362, '20-0148', 'Lineham', 'Krisha', 'Garoghan', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2003-01-31', 18, '8 Sutherland Way', 'krisha.lineham@gmail.com', '0945 113 9375'),
(363, '20-0149', 'Pinnion', 'Boot', 'Farrer', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2002-09-12', 19, '528 Ruskin Park', 'boot.pinnion@gmail.com', '0945 195 1173'),
(364, '20-0150', 'Jeanneau', 'Caddric', 'Gooderridge', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2003-05-26', 18, '5617 Mariners Cove Point', 'caddric.jeanneau@gmail.com', '0945 387 9964'),
(365, '20-0151', 'Knibbs', 'Sutherland', 'Cornelis', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '1998-12-29', 22, '2435 Becker Court', 'sutherland.knibbs@gmail.com', '0945 920 3738'),
(366, '20-0152', 'Hinkins', 'Verene', 'Ryal', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2001-08-13', 20, '1 Waywood Pass', 'verene.hinkins@gmail.com', '0945 872 6006'),
(367, '20-0153', 'Hessing', 'Patty', 'Emby', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '1999-07-09', 22, '3 Thompson Hill', 'patty.hessing@gmail.com', '0945 897 0273'),
(368, '20-0154', 'Skeath', 'Mella', 'Wheelband', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '1999-08-17', 22, '0 Forest Run Crossing', 'mella.skeath@gmail.com', '0945 723 0616'),
(369, '20-0155', 'Wadlow', 'Simone', 'Eastbury', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2003-02-24', 18, '68 Valley Edge Street', 'simone.wadlow@gmail.com', '0945 410 3690'),
(370, '20-0156', 'Crackel', 'Jeth', 'Doorly', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-06-19', 20, '0404 Nelson Point', 'jeth.crackel@gmail.com', '0945 431 3963'),
(371, '20-0157', 'Chavez', 'Pietro', 'Girth', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2000-10-19', 21, '612 Lerdahl Place', 'pietro.chavez@gmail.com', '0945 475 0658'),
(372, '20-0158', 'Cartmell', 'Marena', 'Feldhuhn', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-07-23', 20, '7 Dayton Crossing', 'marena.cartmell@gmail.com', '0945 523 9346'),
(373, '20-0159', 'Eaden', 'Vaclav', 'Caberas', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2002-02-02', 19, '830 Forster Junction', 'vaclav.eaden@gmail.com', '0945 560 2221'),
(374, '20-0160', 'Peealess', 'Shawn', 'Kynaston', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '1999-01-15', 22, '05 Mcbride Plaza', 'shawn.peealess@gmail.com', '0945 523 6774'),
(375, '20-0161', 'Spurge', 'Sheri', 'Lattos', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2003-04-02', 18, '49875 Manitowish Trail', 'sheri.spurge@gmail.com', '0945 975 9108'),
(376, '20-0162', 'Passby', 'Perkin', 'Cuttle', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2001-10-13', 20, '0059 Reindahl Street', 'perkin.passby@gmail.com', '0945 825 0170'),
(377, '20-0163', 'Pashba', 'Clarice', 'Bridges', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2001-12-26', 19, '9392 Texas Park', 'clarice.pashba@gmail.com', '0945 094 3217'),
(378, '20-0164', 'Biggadike', 'Veronike', 'Menilove', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2001-02-22', 20, '4832 Vermont Center', 'veronike.biggadike@gmail.com', '0945 202 8017'),
(379, '20-0165', 'Lumby', 'Norri', 'Lippitt', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '1999-05-24', 22, '7 Sommers Street', 'norri.lumby@gmail.com', '0945 811 8374'),
(380, '20-0166', 'Foxcroft', 'Ermanno', 'Renals', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '1999-05-20', 22, '67 Carberry Trail', 'ermanno.foxcroft@gmail.com', '0945 190 7169'),
(381, '20-0167', 'Giovannetti', 'Emmalynn', 'Reeken', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-06-30', 20, '37 Knutson Trail', 'emmalynn.giovannetti@gmail.com', '0945 855 3685'),
(382, '20-0168', 'Eede', 'Ambrosio', 'Glen', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2003-04-12', 18, '20 Myrtle Hill', 'ambrosio.eede@gmail.com', '0945 312 1737'),
(383, '20-0169', 'Jessope', 'Roddie', 'Jordanson', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-10-14', 20, '528 International Place', 'roddie.jessope@gmail.com', '0945 097 3957'),
(384, '20-0170', 'Cersey', 'Bunni', 'Fardon', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '1999-04-21', 22, '2 Eastlawn Parkway', 'bunni.cersey@gmail.com', '0945 843 8836'),
(385, '20-0171', 'Bamford', 'Ronnie', 'Goulding', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '1999-08-06', 22, '3 Fuller Center', 'ronnie.bamford@gmail.com', '0945 313 9861'),
(386, '20-0172', 'Jansema', 'Ali', 'Heinle', '2nd Year', '2021-2022', 'SBIT-2D', 'Female', '2003-06-28', 18, '78 Forest Trail', 'ali.jansema@gmail.com', '0945 536 9221'),
(387, '20-0173', 'Levermore', 'Cheston', 'Cavy', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2003-06-15', 18, '22 Old Shore Hill', 'cheston.levermore@gmail.com', '0945 888 2017'),
(388, '20-0174', 'Bucksey', 'Theadora', 'Beebis', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2001-07-04', 20, '694 Briar Crest Hill', 'theadora.bucksey@gmail.com', '0945 524 4371'),
(389, '20-0175', 'Cundict', 'Lulu', 'Whyatt', '2nd Year', '2021-2022', 'SBIT-2D', 'Male', '2002-04-15', 19, '701 Fuller Pass', 'lulu.cundict@gmail.com', '0945 488 4794'),
(390, '20-0176', 'Kepling', 'Ad', 'Gossage', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '1999-11-11', 22, '24824 Meadow Vale Pass', 'ad.kepling@gmail.com', '0945 997 6626'),
(391, '20-0177', 'Rilings', 'Iris', 'Hukins', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2002-01-31', 19, '65 Elmside Park', 'iris.rilings@gmail.com', '0945 156 0609'),
(392, '20-0178', 'Jarvie', 'Liana', 'Wallworke', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-02-04', 18, '00939 International Alley', 'liana.jarvie@gmail.com', '0945 303 2402'),
(393, '20-0179', 'Scemp', 'Aldridge', 'Gateland', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2002-05-20', 19, '170 Lakeland Drive', 'aldridge.scemp@gfeil.com', '0945 121 7380'),
(394, '20-0180', 'Rochell', 'Jedd', 'Innes', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2001-01-29', 20, '30 Sycamore Circle', 'jedd.rochell@gmail.com', '0945 316 7066'),
(395, '20-0181', 'Krollman', 'Huntington', 'MacAree', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '1999-10-05', 22, '9609 Pond Trail', 'huntington.krollman@gmail.com', '0945 683 2421'),
(396, '20-0182', 'Dearnley', 'Owen', 'Esbrook', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-07-12', 18, '28 Myrtle Park', 'owen.dearnley@gmail.com', '0945 359 1813'),
(397, '20-0183', 'Ellaman', 'Vale', 'Gallienne', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2001-11-23', 20, '1441 Bonner Point', 'vale.ellaman@gfeil.com', '0945 479 5396'),
(398, '20-0184', 'Collicott', 'Tann', 'Cullrford', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-07-29', 21, '444 Fallview Place', 'tann.collicott@gmail.com', '0945 305 1829'),
(399, '20-0185', 'Ruscoe', 'Andrej', 'Errichi', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-11-17', 18, '37406 Main Road', 'andrej.ruscoe@gmail.com', '0945 893 7140'),
(400, '20-0186', 'Sneaker', 'Cheri', 'Forestall', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2003-08-23', 18, '94 Hazelcrest Alley', 'cheri.sneaker@gfeil.com', '0945 721 2877'),
(401, '20-0187', 'Barbey', 'Jarrod', 'Thunderman', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2000-08-31', 21, '53867 North Drive', 'jarrod.barbey@gfeil.com', '0945 338 2138'),
(402, '20-0188', 'Shearwood', 'Jasmin', 'Burger', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-08-22', 18, '74981 Chive Park', 'jasmin.shearwood@gmail.com', '0945 215 8578'),
(403, '20-0189', 'Swinnard', 'Glori', 'Orwin', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2002-05-29', 19, '89777 Crest Line Court', 'glori.swinnard@gmail.com', '0945 445 0402'),
(404, '20-0190', 'Sirett', 'Marie-ann', 'Clynmans', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2000-02-13', 21, '91 Burrows Point', 'marie-ann.sirett@gfeil.com', '0945 058 0874'),
(405, '20-0191', 'Oswal', 'Gan', 'Barnett', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2003-03-08', 18, '6 Bartelt Junction', 'gan.oswal@gfeil.com', '0945 431 9282'),
(406, '20-0192', 'Seebert', 'Leoline', 'MacKegg', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-07-25', 18, '9776 Canary Trail', 'leoline.seebert@gmail.com', '0945 133 0763'),
(407, '20-0193', 'Attridge', 'Corliss', 'Brigdale', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2001-10-23', 20, '08154 Esch Alley', 'corliss.attridge@gfeil.com', '0945 359 4074'),
(408, '20-0194', 'McGennis', 'Almeta', 'Loeber', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '1999-12-15', 21, '1769 Ludington Road', 'almeta.mcgennis@gfeil.com', '0945 746 5002'),
(409, '20-0195', 'Simester', 'Erv', 'Grieswood', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2001-04-29', 20, '6 Rigney Drive', 'erv.simester@gfeil.com', '0945 860 6997'),
(410, '20-0196', 'Castella', 'Sigismund', 'Lethibridge', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-09-24', 21, '9 Florence Park', 'sigismund.castella@gmail.com', '0945 065 8465'),
(411, '20-0197', 'Vasilischev', 'James', 'Kilmurry', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2001-02-16', 20, '87536 Myrtle Place', 'james.vasilischev@gfeil.com', '0945 342 8414'),
(412, '20-0198', 'Lotze', 'Reena', 'Baldelli', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2002-11-06', 19, '67188 Mesta Alley', 'reena.lotze@gmail.com', '0945 480 5372'),
(413, '20-0199', 'Sprionghall', 'Leah', 'Monkhouse', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2003-06-03', 18, '29 Butterfield Junction', 'leah.sprionghall@gfeil.com', '0945 369 6864'),
(414, '20-0200', 'Pigny', 'Inessa', 'Tokell', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-01-01', 21, '229 Anhalt Lane', 'inessa.pigny@gmail.com', '0945 119 3296'),
(415, '20-0201', 'Brierly', 'Marinna', 'Dietsche', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2002-08-13', 19, '94706 Spenser Road', 'marinna.brierly@gfeil.com', '0945 143 0063'),
(416, '20-0202', 'Gwilliam', 'Corbett', 'Auchterlony', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2001-09-29', 20, '52771 Hansons Hill', 'corbett.gwilliam@gmail.com', '0945 254 1425'),
(417, '20-0203', 'Unsworth', 'Gustaf', 'Alen', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-02-12', 21, '79962 Huxley Center', 'gustaf.unsworth@gmail.com', '0945 581 9669'),
(418, '20-0204', 'Waslin', 'Uri', 'Peagram', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-12-03', 21, '307 Red Cloud Center', 'uri.waslin@gmail.com', '0945 838 2548'),
(419, '20-0205', 'Michele', 'Missy', 'Baseley', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-01-04', 21, '436 Pepper Wood Lane', 'missy.michele@gmail.com', '0945 893 2988'),
(420, '20-0206', 'McCrackem', 'Jaquenette', 'Duns', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-10-10', 21, '5 Ridgeview Park', 'jaquenette.mccrackem@gmail.com', '0945 392 6105'),
(421, '20-0207', 'O\'Lennachain', 'Eleanor', 'Ciccetti', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2002-11-24', 19, '12 Schmedeman Pass', '', '0945 024 9995'),
(422, '20-0208', 'Growcott', 'Emlyn', 'Kirtland', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '1999-01-17', 22, '369 Tennessee Alley', 'emlyn.growcott@gmail.com', '0945 568 3762'),
(423, '20-0209', 'Doak', 'Jobi', 'Yukhtin', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2000-10-15', 21, '37 Tony Place', 'jobi.doak@gmail.com', '0945 470 6154'),
(424, '20-0210', 'Jacobovitz', 'Morgan', 'Ambrodi', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-07-24', 18, '03561 Ludington Hill', 'morgan.jacobovitz@gmail.com', '0945 041 5616'),
(425, '20-0211', 'Harbron', 'Aggi', 'Menlove', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2001-12-30', 19, '189 Sunbrook Road', 'aggi.harbron@gmail.com', '0945 620 6689'),
(426, '20-0212', 'Skerratt', 'Euphemia', 'Levecque', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-11-29', 18, '361 8th Drive', 'euphemia.skerratt@gmail.com', '0945 930 7903'),
(427, '20-0213', 'Brabbins', 'Jaymie', 'Remirez', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '1999-10-29', 22, '885 7th Center', 'jaymie.brabbins@gmail.com', '0945 252 3221'),
(428, '20-0214', 'Blunderfield', 'Yoshi', 'Cohn', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2001-03-04', 20, '85360 Quincy Pass', 'yoshi.blunderfield@gmail.com', '0945 949 2676'),
(429, '20-0215', 'Liddyard', 'Paddy', 'Fauning', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-09-07', 18, '4526 Artisan Circle', 'paddy.liddyard@gmail.com', '0945 775 8986'),
(430, '20-0216', 'Gurling', 'Rowen', 'Shmyr', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '1999-06-21', 22, '9397 Novick Court', 'rowen.gurling@gmail.com', '0945 264 3000'),
(431, '20-0217', 'Lismore', 'Alli', 'Daniaud', '2nd Year', '2021-2022', 'SBIT-2F', 'Male', '2003-05-05', 18, '283 Elka Drive', 'alli.lismore@gmail.com', '0945 230 8327'),
(432, '20-0218', 'Allison', 'Karoline', 'Salla', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2000-07-06', 21, '496 Logan Lane', 'karoline.allison@gfeil.com', '0945 441 3462'),
(433, '20-0219', 'Bladen', 'Siouxie', 'Baunton', '2nd Year', '2021-2022', 'SBIT-2F', 'Female', '2001-06-19', 20, '05 Holmberg Junction', 'siouxie.bladen@gfeil.com', '0945 179 0385');

-- --------------------------------------------------------

--
-- Table structure for table `subject_tbl`
--

CREATE TABLE `subject_tbl` (
  `Subject_list` int(11) NOT NULL,
  `Subject_code` varchar(10) NOT NULL,
  `Subject_name` varchar(50) NOT NULL,
  `Teacher_ID` varchar(15) NOT NULL,
  `Department_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_tbl`
--

INSERT INTO `subject_tbl` (`Subject_list`, `Subject_code`, `Subject_name`, `Teacher_ID`, `Department_name`) VALUES
(1, 'CC104', 'Data Structures and Algorithm', 'EGT104', 'IT Department'),
(2, 'CC105', 'Information Management', 'LSH105', 'IT Department'),
(3, 'HUMA1', 'Art Appreciation', 'AMT1', 'Art Department'),
(4, 'IS104', 'Systems Analysis and Design', 'WJA104', 'IT Department'),
(5, 'NET102', 'Networking 2', 'EBW102', 'IT Department'),
(6, 'PE3', 'Individual and Dual Sports', 'NJL3 ', 'Health Department'),
(7, 'PF101', 'Object-Oriented Programming', 'OWG101', 'IT Department');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tbl`
--

CREATE TABLE `teacher_tbl` (
  `Teacher_list` int(11) NOT NULL,
  `Teacher_ID` varchar(15) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Subject_code` varchar(10) NOT NULL,
  `Contact_no` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Teaching_duration` varchar(25) NOT NULL,
  `Department_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_tbl`
--

INSERT INTO `teacher_tbl` (`Teacher_list`, `Teacher_ID`, `Lname`, `Fname`, `Mname`, `Subject_code`, `Contact_no`, `Email`, `Teaching_duration`, `Department_name`) VALUES
(1, 'AMT1', 'Ava', 'Miller', 'Taylor', 'HUMA1', '09187972816', 'miller.ava@gmail.com', '3 years', 'Art Department'),
(2, 'EBW102', 'Elijah', 'Brown', 'Wilson', 'NET102', '09439988594', 'brown.elijah@gmail.com', '3 years', 'IT Department'),
(3, 'EGT104', 'Emma', 'Garcia', 'Thomas', 'CC104', '09396883523', 'garcia.emma@gmail.com', '2 years', 'IT Department'),
(4, 'LSH105', 'Liam', 'Smith', 'Hernandez', 'CC105', '09292349487', 'smith.liam@gmail.com', '2 years', 'IT Department'),
(5, 'NJL3 ', 'Noah', 'Johnson', 'Lopez', 'PE3', '09336669956', 'johnson.noah@gmail.com', '4 years', 'Health Department'),
(6, 'OWG101', 'Oliver', 'Williams', 'Gonzalez', 'PF101', '09295737292', 'williams.oliver@gmail.com', '3 years', 'IT Department'),
(7, 'WJA104', 'William', 'Jones', 'Anderson', 'IS104', '09299429921', 'jones.william@gmail.com', '3 years', 'IT Department');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_tbl`
--
ALTER TABLE `account_tbl`
  ADD PRIMARY KEY (`Account_list`),
  ADD KEY `Teacher_ID` (`Teacher_ID`);

--
-- Indexes for table `grade_tbl`
--
ALTER TABLE `grade_tbl`
  ADD PRIMARY KEY (`Grade_list`),
  ADD KEY `Student_number` (`Student_number`,`Subject_code`),
  ADD KEY `Fk_GradeSubject` (`Subject_code`);

--
-- Indexes for table `section_tbl`
--
ALTER TABLE `section_tbl`
  ADD PRIMARY KEY (`Section_list`),
  ADD UNIQUE KEY `Section_name` (`Section_name`),
  ADD KEY `Teacher_ID` (`Teacher_ID`);

--
-- Indexes for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD PRIMARY KEY (`Student_list`),
  ADD UNIQUE KEY `Student_number` (`Student_number`),
  ADD KEY `Section_name` (`Section_name`);

--
-- Indexes for table `subject_tbl`
--
ALTER TABLE `subject_tbl`
  ADD PRIMARY KEY (`Subject_list`),
  ADD UNIQUE KEY `Subject_code` (`Subject_code`),
  ADD KEY `Teacher_ID` (`Teacher_ID`);

--
-- Indexes for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD PRIMARY KEY (`Teacher_list`),
  ADD UNIQUE KEY `Teacher_ID` (`Teacher_ID`),
  ADD KEY `Subject_code` (`Subject_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_tbl`
--
ALTER TABLE `account_tbl`
  MODIFY `Account_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grade_tbl`
--
ALTER TABLE `grade_tbl`
  MODIFY `Grade_list` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_tbl`
--
ALTER TABLE `section_tbl`
  MODIFY `Section_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_tbl`
--
ALTER TABLE `student_tbl`
  MODIFY `Student_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `subject_tbl`
--
ALTER TABLE `subject_tbl`
  MODIFY `Subject_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  MODIFY `Teacher_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grade_tbl`
--
ALTER TABLE `grade_tbl`
  ADD CONSTRAINT `Fk_GradeStudent` FOREIGN KEY (`Student_number`) REFERENCES `student_tbl` (`Student_number`),
  ADD CONSTRAINT `Fk_GradeSubject` FOREIGN KEY (`Subject_code`) REFERENCES `subject_tbl` (`Subject_code`);

--
-- Constraints for table `section_tbl`
--
ALTER TABLE `section_tbl`
  ADD CONSTRAINT `Fk_SectionTeacher` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher_tbl` (`Teacher_ID`);

--
-- Constraints for table `student_tbl`
--
ALTER TABLE `student_tbl`
  ADD CONSTRAINT `Fk_StudentSection` FOREIGN KEY (`Section_name`) REFERENCES `section_tbl` (`Section_name`);

--
-- Constraints for table `subject_tbl`
--
ALTER TABLE `subject_tbl`
  ADD CONSTRAINT `Fk_SubjectTeacher` FOREIGN KEY (`Teacher_ID`) REFERENCES `teacher_tbl` (`Teacher_ID`);

--
-- Constraints for table `teacher_tbl`
--
ALTER TABLE `teacher_tbl`
  ADD CONSTRAINT `Fk_TeacherAccount` FOREIGN KEY (`Teacher_ID`) REFERENCES `account_tbl` (`Teacher_ID`),
  ADD CONSTRAINT `Fk_TeacherSubject` FOREIGN KEY (`Subject_code`) REFERENCES `subject_tbl` (`Subject_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
