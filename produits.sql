-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 12, 2024 at 10:59 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trouduncoup`
--

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Prix` float NOT NULL,
  `Qtte_stock` int NOT NULL,
  `Qtte_seuil_min` int NOT NULL,
  `idCategorie` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `idCategorie` (`idCategorie`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`Id`, `Nom`, `Description`, `Prix`, `Qtte_stock`, `Qtte_seuil_min`, `idCategorie`) VALUES
(38, 'Balle Control Master', 'Balle offrant un excellent contrôle sur les coups', 39.99, 80, 8, 2),
(36, 'Balle Distance Max', 'Balle conçue pour une distance maximale sur le parcours', 29.99, 150, 15, 2),
(37, 'Balle SoftFeel', 'Balle à compression douce pour une sensation agréable au toucher', 34.99, 120, 12, 2),
(33, 'Bâton ajustable ProFlex', 'Bâton ajustable en longueur pour s adapter à chaque golfeur', 349.99, 18, 2, 1),
(34, 'Wedge spécial bunkers', 'Wedge conçu spécialement pour les sorties de bunkers', 109.99, 30, 3, 1),
(32, 'Set de bâtons complet (14 pièces)', 'Ensemble complet pour couvrir toutes les situations sur le parcours', 899.99, 10, 1, 1),
(30, 'Bâton junior en graphite', 'Bâton adapté aux jeunes golfeurs en graphite léger', 79.99, 15, 2, 1),
(31, 'Bâton pour femme RoseGolf', 'Bâton spécialement conçu pour les golfeuses avec un design élégant', 249.99, 35, 3, 1),
(29, 'Wedge Spin Master', 'Wedge avec technologie de spin avancée pour les approches', 89.99, 50, 5, 1),
(27, 'Putter Tour Pro', 'Putter de qualité professionnelle pour les coups roulés', 129.99, 40, 4, 1),
(28, 'Hybride X-Factor', 'Hybride polyvalent pour les coups difficiles', 179.99, 25, 5, 1),
(26, 'Fers en acier forgé (ensemble de 8)', 'Ensemble de fers forgés pour une précision exceptionnelle', 599.99, 20, 2, 1),
(25, 'Driver Titan', 'Driver avec tête en titane pour des coups puissants', 299.99, 30, 3, 1),
(35, 'Balle Tour Pro V1', 'Balle haut de gamme pour des performances exceptionnelles', 49.99, 100, 10, 2),
(16, 'Polo de golf', 'Polo élégant pour le golf', 39.99, 100, 10, 3),
(17, 'Short de golf', 'Short confortable pour le golf', 29.99, 80, 8, 3),
(18, 'Casquette de golf', 'Casquette ajustable pour le soleil', 19.99, 50, 5, 3),
(19, 'Chariot standard', 'Chariot de golf standard avec support pour le sac', 129.99, 50, 5, 4),
(20, 'Chariot électrique', 'Chariot de golf électrique avec fonction de contrôle à distance', 299.99, 30, 3, 4),
(21, 'Chariot pliable', 'Chariot de golf pliable pour un rangement facile', 179.99, 40, 4, 4),
(39, 'Balle colorée NeonDrive', 'Balle colorée pour une meilleure visibilité sur le parcours', 19.99, 200, 20, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
