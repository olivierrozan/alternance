-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 08 Août 2015 à 17:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `alternance`
--

-- --------------------------------------------------------

--
-- Structure de la table `sheet`
--

CREATE TABLE IF NOT EXISTS `sheet` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `poste` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `date_modif` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=55 ;

--
-- Contenu de la table `sheet`
--

INSERT INTO `sheet` (`id`, `nom`, `adresse`, `poste`, `etat`, `date_modif`) VALUES
(1, 'CERISE', 'Tourcoing', 'Développeur Web', 'Entretien', '2015-08-03'),
(2, 'CCI', 'Valenciennes', 'Développeur Web', 'Attente', '2015-08-03'),
(3, 'DPDO', 'saint amand', 'Développeur Web', 'Attente', '2015-08-03'),
(4, 'CRISTAL ID', 'Lezennes', 'Développeur FontEnd / Intégrateur', 'Attente', '2015-08-03'),
(5, 'SARBACANE SOFTWARE', 'Lille', 'Développeur Web', 'Attente', '2015-07-30'),
(6, 'LEMON INTERACTIVE', 'Lille', 'Développeur Web', 'Refusé', '2015-08-03'),
(7, 'CHAPRISTI', 'Lille', 'Développeur Web', 'Entretien', '2015-08-03'),
(8, 'OPEN', 'Lille', 'Développeur Web', 'Attente', '2015-07-30'),
(9, 'AUCHAN', 'Villeneuve d''Ascq', 'Développeur FontEnd', 'Attente', '2015-07-30'),
(10, 'IT RH CONCEPT', 'Lille', 'Développeur PHP', 'Attente', '2015-07-30'),
(11, 'UNIS', 'Villeneuve d''Ascq', 'Développeur FontEnd', 'Refusé', '2015-08-03'),
(12, 'LYNX RH', 'Lille', 'Développeur Web', 'Attente', '2015-07-29'),
(13, 'SOGETI', 'Villeneuve d''Ascq', 'Développeur Web', 'Attente', '2015-07-24'),
(14, 'ATEXWEB', 'Villeneuve d''Ascq', 'Développeur Web', 'Attente', '2015-07-24'),
(15, 'MADE IN SURVEYS', 'Lille', 'Développeur Web', 'Attente', '2015-07-22'),
(16, 'OS CONCEPT', 'Douai', 'Développeur Web / Symfony2', 'Refusé', '2015-08-03'),
(17, 'ENACO EXCELLENCE', 'La Madeleine', 'Développeur Web PHP / MYSQL', 'Attente', '2015-07-28'),
(18, 'WEB-TRANSITION', 'Lille', 'Développeur / Intégrateur FrontEnd Web & Mobile Web', 'Attente', '2015-07-28'),
(19, 'MAZEBERRY', 'Lille', 'Développeur Web / Support Client', 'Refusé', '2015-08-03'),
(20, 'CAILLE ASSOCIES', 'Lille', 'Développeur Web / App', 'Attente', '2015-07-28'),
(21, 'ATECNA', 'Lille', 'Développeur / Intégrateur Web ', 'Attente', '2015-07-28'),
(22, 'ITELIOS', 'Lille', 'Développeur Web E-Commerce', 'Attente', '2015-07-28'),
(23, 'INEAT CONSEIL', 'Lille', 'Développeur Symfony2', 'Refusé', '2015-08-03'),
(24, 'ASMODINE', 'Lille', 'Développeur Web', 'Relancé', '2015-08-05'),
(25, 'DSDSYSTEM', 'Lille', 'Développeur PHP', 'Relancé', '2015-08-05'),
(26, 'EVERYSENS', 'Lille', 'Développeur Web FrontEnd', 'Relancé', '2015-08-05'),
(27, 'LES LUNETTES BLEUES', 'Plaine Images Tourcoing', 'Intégrateur / Développeur Web', 'Relancé', '2015-08-05'),
(28, 'GROUPAGORA', '', 'Développeur Web', 'Relancé', '2015-07-30'),
(29, 'EDF', '', 'Développeur', 'Attente', '2015-06-30'),
(30, 'VSI INNOVATION', '2 rue Peclet, 59300 Valenciennes', 'Développeur PHP', 'Relancé', '2015-08-05'),
(31, 'MOBISKILL PARTNER', 'Lille', 'Développeur Web / Intégrateur', 'Refusé', '2015-08-03'),
(32, 'ITALENT', 'Lille', 'Développeur Web', 'Refusé', '2015-08-03'),
(33, 'GOTO GAMES', 'Lille', 'Développeur Web', 'Relancé', '2015-08-05'),
(34, 'B''DOM', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-08-03'),
(35, 'CASTORAMA', 'Templemars', 'Web Master', 'Refusé', '2015-08-03'),
(36, 'J2S', 'Lille', 'Développeur Applicatif PHP-JS / HTML5', 'Refusé', '2015-08-03'),
(37, 'AVENIRHESEAU', '', 'Développeur Web Symfony2', 'Relancé', '2015-07-20'),
(38, 'DPS & CO', '134 rue royale 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03'),
(39, 'ALTIMA', '33 rue dupleix 59100 Roubaix', 'Développeur Web', 'Relancé', '2015-07-20'),
(40, 'APOGGIA WEB', '', 'Développeur Front / Back', 'Relancé', '2015-06-15'),
(41, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Mobilité', 'Attente', '2015-08-03'),
(42, 'EASYTEAM', '43 rue Faidherbe 59800 Lille', 'Ingénieur Base de  données', 'Relancé', '2015-07-08'),
(43, 'CONTEXEO', '165 avenue de Bretagne 59000 Lille', 'Développeur Java / Android', 'Relancé', '2015-06-15'),
(44, 'PUMPKIN', '', 'Développeur Android', 'Refusé', '2015-08-03'),
(45, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Java / J2EE', 'Attente', '2015-08-03'),
(46, 'ECOBUROTIC', '', 'Développeur Web', 'Relancé', '2015-07-20'),
(47, 'CYLANDE C.S.', '15 avenue André Diligent BP 354 59100 Roubaix', 'Concepteur - Développeur Web', 'Relancé', '2015-08-05'),
(48, 'RECISIO', '', 'Développeur PHP', 'Refusé', '2015-08-03'),
(49, 'DECATHLON', '', 'Développeur Web', 'Relancé', '2015-07-20'),
(50, 'INSITACTION', 'Lille', 'Développeur Web', 'Relancé', '2015-08-03'),
(51, 'OFFICEEASY.FR', 'Marcq en Baroeul', 'Développeur', 'Attente', '2015-08-03'),
(52, 'AXXIS', '60 rue Edouard Delesalle 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03'),
(53, 'OXYGEM', '45 Boulevard du général Leclerc 59100 Roubaix', 'Développeur PHP', 'Relancé', '2015-08-05'),
(54, 'FITIZZI', '165 Avenue de Bretagne 59000 Lille', 'Développeur Web', 'Relancé', '2015-08-15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
