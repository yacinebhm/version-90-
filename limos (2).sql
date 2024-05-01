-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 10:55 PM
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
-- Database: `limos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fn` varchar(22) NOT NULL,
  `sn` varchar(22) NOT NULL,
  `mail` varchar(22) NOT NULL,
  `pass` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fn`, `sn`, `mail`, `pass`) VALUES
(1, 'bouchelaghem', 'yacine', 'yacine@gmail.com', 'umbb2009'),
(2, 'Senani', 'Mohamed', 'mohamed@gmail.com', 'linim'),
(3, 'Laribi', 'Abderaouf', 'abderaouf@gmail.com', 'emphi1001'),
(4, 'Belkacemi', 'Abdelmoumen', 'moumen@gmail.com', 'mohk90');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(22) NOT NULL,
  `name` varchar(88) NOT NULL,
  `mail` varchar(88) NOT NULL,
  `ph` int(22) NOT NULL,
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mail`, `ph`, `msg`) VALUES
(1, 'yacine', 'yacine@gmail.com', 55601926, 'yagsdgcidndid duduhugdyudhsmsisnjsss sjsjsbsb');

-- --------------------------------------------------------

--
-- Table structure for table `demande_participation_equipe`
--

CREATE TABLE `demande_participation_equipe` (
  `id` int(11) NOT NULL,
  `id_util` int(11) DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `demande_participation_equipe`
--

INSERT INTO `demande_participation_equipe` (`id`, `id_util`, `id_equipe`, `grade`) VALUES
(1, 17, 1, 'Maître Assistant Classe B');

-- --------------------------------------------------------

--
-- Table structure for table `demande_participation_event`
--

CREATE TABLE `demande_participation_event` (
  `id` int(11) NOT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_universite` int(11) DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `demande_participation_event`
--

INSERT INTO `demande_participation_event` (`id`, `id_utilisateur`, `id_universite`, `id_event`) VALUES
(30, 17, 2, 1),
(31, 14, 1, 2),
(32, 14, 5, 1),
(33, 22, 1, 1),
(34, 24, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `equipe`
--

INSERT INTO `equipe` (`id`, `nom`, `description`) VALUES
(1, 'Barcelone', 'visa accorde'),
(2, 'madrid', 'on vas passer vers L3 inchallah'),
(4, 'inim', 'l2 ING2');

-- --------------------------------------------------------

--
-- Table structure for table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `titre` varchar(30) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `evenement`
--

INSERT INTO `evenement` (`id`, `titre`, `description`, `date_debut`, `date_fin`) VALUES
(1, 'jour de livre', 'event lajgpiozjg,v', '2024-04-23', '2024-04-30'),
(2, 'aergxcb', 'dfdfg', '2024-04-17', '2024-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `event_membre`
--

CREATE TABLE `event_membre` (
  `id_membre` int(11) DEFAULT NULL,
  `id_event` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `event_membre`
--

INSERT INTO `event_membre` (`id_membre`, `id_event`) VALUES
(NULL, NULL),
(1, 1),
(4, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `genre` enum('homme','femme') NOT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `grade` enum('Maître Assistant Classe « B »','Maître Assistant Classe « A »','Maître de Conférences Classe « B »','Maître de Conférences Classe « A »','Professeur') DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `membre`
--

INSERT INTO `membre` (`id`, `nom`, `prenom`, `date_naissance`, `genre`, `Email`, `grade`, `id_equipe`) VALUES
(1, 'moumen', 'wlid_alg', '2024-04-03', 'homme', 'moumo@gmail.com', 'Professeur', 2),
(4, 'arzgqfvagfv', 'aerdvc', '2004-11-21', 'homme', 'asdfgvzdf', 'Maître Assistant Classe « A »', NULL),
(5, 'senani', 'mohamed', '2014-04-09', 'homme', 'moham5@gmail.com', 'Maître Assistant Classe « B »', 1);

-- --------------------------------------------------------

--
-- Table structure for table `membre_prod`
--

CREATE TABLE `membre_prod` (
  `id_memb` int(11) DEFAULT NULL,
  `id_prod` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `production_scientifique`
--

CREATE TABLE `production_scientifique` (
  `id` int(11) NOT NULL,
  `titre` varchar(30) DEFAULT NULL,
  `fichie` longtext DEFAULT NULL,
  `desciption` text DEFAULT NULL,
  `date_pub` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `production_scientifique`
--

INSERT INTO `production_scientifique` (`id`, `titre`, `fichie`, `desciption`, `date_pub`) VALUES
(7, NULL, 'Solutions TP1.docx', NULL, NULL),
(8, NULL, 'Serie diag Sequence.pdf', NULL, NULL),
(9, NULL, 'SÃ©rie diag classe.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `universites`
--

CREATE TABLE `universites` (
  `id` int(11) NOT NULL,
  `nom_universite` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `universites`
--

INSERT INTO `universites` (`id`, `nom_universite`) VALUES
(1, 'UMBB'),
(2, 'USTHB'),
(5, 'Baba Ali');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur_ins`
--

CREATE TABLE `utilisateur_ins` (
  `id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `date de naissance` date NOT NULL,
  `ph` int(11) NOT NULL,
  `work` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `utilisateur_ins`
--

INSERT INTO `utilisateur_ins` (`id`, `fname`, `lname`, `date de naissance`, `ph`, `work`, `email`, `username`, `password`) VALUES
(14, 'kladjmf', 'ajlfkl', '2024-04-01', 558557879, 'box', 'mohamed@gmail.com', 'miod21', 'kkkkkk'),
(16, 'med', 'senani', '2004-11-21', 557532725, 'student', 'mohamezzzd@gmail.co', 'moh222', 'jkjjjj'),
(17, 'kladjmf', 'ajlfkl', '1998-02-21', 3333333, 'teacher', 'mohamedsenani5@gmail.com', 'kdklaio', 'JJJJ'),
(19, 'kladjmfssjj', 'senani', '1998-02-20', 33334, 'teacher', 'mohamedsessnani@gmail.com', 'mohamed', 'ssss'),
(20, 'dlldk', 'dkkdk', '2004-12-30', 23445, 'teacher', 'flfklgkl@gmail.com', 'dlldlk', 'DSDQF'),
(21, 'dkljg', 'lkjg', '2004-12-30', 33332, 'student', 'jhdkfjkh@gmail.com', 'klfjj', 'fgkjkjg'),
(22, 'yacine', 'bch', '2024-01-09', 74345676, 'student', 'yacine.bhm10@gmail.com', 'yacinoo', 'yacvmon'),
(23, 'yacine', 'bch', '2024-01-09', 2345678, 'student', 'yaxcine10@gmail.com', 'ffug', '1234'),
(24, 'abderaouf', 'larib', '2024-04-05', 2147483647, 'extern', 'belkacemimoumen235@gmail.com', 'abderaouf2004', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `demande_participation_equipe`
--
ALTER TABLE `demande_participation_equipe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_util` (`id_util`),
  ADD KEY `id_equipe` (`id_equipe`);

--
-- Indexes for table `demande_participation_event`
--
ALTER TABLE `demande_participation_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_universite` (`id_universite`),
  ADD KEY `fk_event` (`id_event`);

--
-- Indexes for table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_membre`
--
ALTER TABLE `event_membre`
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_event` (`id_event`);

--
-- Indexes for table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `fk_membre_equipe` (`id_equipe`);

--
-- Indexes for table `membre_prod`
--
ALTER TABLE `membre_prod`
  ADD KEY `id_memb` (`id_memb`),
  ADD KEY `id_prod` (`id_prod`);

--
-- Indexes for table `production_scientifique`
--
ALTER TABLE `production_scientifique`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universites`
--
ALTER TABLE `universites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateur_ins`
--
ALTER TABLE `utilisateur_ins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ph` (`ph`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `demande_participation_equipe`
--
ALTER TABLE `demande_participation_equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `demande_participation_event`
--
ALTER TABLE `demande_participation_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `production_scientifique`
--
ALTER TABLE `production_scientifique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `universites`
--
ALTER TABLE `universites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `utilisateur_ins`
--
ALTER TABLE `utilisateur_ins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `demande_participation_equipe`
--
ALTER TABLE `demande_participation_equipe`
  ADD CONSTRAINT `demande_participation_equipe_ibfk_1` FOREIGN KEY (`id_util`) REFERENCES `utilisateur_ins` (`id`),
  ADD CONSTRAINT `demande_participation_equipe_ibfk_2` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`);

--
-- Constraints for table `demande_participation_event`
--
ALTER TABLE `demande_participation_event`
  ADD CONSTRAINT `demande_participation_event_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur_ins` (`id`),
  ADD CONSTRAINT `demande_participation_event_ibfk_2` FOREIGN KEY (`id_universite`) REFERENCES `universites` (`id`),
  ADD CONSTRAINT `fk_event` FOREIGN KEY (`id_event`) REFERENCES `evenement` (`id`);

--
-- Constraints for table `event_membre`
--
ALTER TABLE `event_membre`
  ADD CONSTRAINT `event_membre_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`),
  ADD CONSTRAINT `event_membre_ibfk_2` FOREIGN KEY (`id_event`) REFERENCES `evenement` (`id`);

--
-- Constraints for table `membre`
--
ALTER TABLE `membre`
  ADD CONSTRAINT `fk_membre_equipe` FOREIGN KEY (`id_equipe`) REFERENCES `equipe` (`id`);

--
-- Constraints for table `membre_prod`
--
ALTER TABLE `membre_prod`
  ADD CONSTRAINT `membre_prod_ibfk_1` FOREIGN KEY (`id_memb`) REFERENCES `membre` (`id`),
  ADD CONSTRAINT `membre_prod_ibfk_2` FOREIGN KEY (`id_prod`) REFERENCES `production_scientifique` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
