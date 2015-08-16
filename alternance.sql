-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 16 Août 2015 à 17:15
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `alternance`
--

-- --------------------------------------------------------

--
-- Structure de la table `sheet`
--

CREATE TABLE IF NOT EXISTS `sheet` (
  `id` int(10) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `poste` varchar(255) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `date_modif` date DEFAULT NULL,
  `commentaires` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sheet`
--

INSERT INTO `sheet` (`id`, `nom`, `adresse`, `poste`, `etat`, `date_modif`, `commentaires`) VALUES
(1, 'CERISE', 'Tourcoing', 'Développeur Web', 'Relancé', '2015-08-16', 'Entretien effectué le 10 aout 14h30'),
(2, 'CCI', 'Valenciennes', 'Développeur Web', 'Attente', '2015-08-03', NULL),
(3, 'DPDO', 'saint amand', 'Développeur Web', 'Attente', '2015-08-03', NULL),
(4, 'CRISTAL ID', 'Lezennes', 'Développeur FontEnd / Intégrateur', 'Attente', '2015-08-03', NULL),
(5, 'SARBACANE SOFTWARE', 'Lille', 'Développeur Web', 'Attente', '2015-07-30', NULL),
(6, 'LEMON INTERACTIVE', 'Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(7, 'CHAPRISTI', 'Lille', 'Développeur Web', 'Entretien', '2015-08-16', 'entretien le 18 aout 11h'),
(8, 'OPEN', 'Lille', 'Développeur Web', 'Attente', '2015-07-30', NULL),
(10, 'IT RH CONCEPT', 'Lille', 'Développeur PHP', 'Attente', '2015-07-30', NULL),
(11, 'UNIS', 'Villeneuve d''Ascq', 'Développeur FontEnd', 'Refusé', '2015-08-03', NULL),
(12, 'LYNX RH', 'Lille', 'Développeur Web', 'Attente', '2015-07-29', NULL),
(13, 'SOGETI', 'Villeneuve d''Ascq', 'Développeur Web', 'Attente', '2015-07-24', NULL),
(14, 'ATEXWEB', 'Villeneuve d', 'Développeur Web', 'Attente', '2015-08-16', 'Erreur Mail'),
(15, 'MADE IN SURVEYS', 'Lille', 'Développeur Web', 'Attente', '2015-07-22', NULL),
(16, 'OS CONCEPT', 'Douai', 'Développeur Web / Symfony2', 'Refusé', '2015-08-03', NULL),
(17, 'ENACO EXCELLENCE', 'La Madeleine', 'Développeur Web PHP / MYSQL', 'Attente', '2015-08-16', 'Erreur Mail'),
(18, 'WEB-TRANSITION', 'Lille', 'Développeur / Intégrateur FrontEnd Web & Mobile Web', 'Attente', '2015-07-28', NULL),
(19, 'MAZEBERRY', 'Lille', 'Développeur Web / Support Client', 'Refusé', '2015-08-03', NULL),
(20, 'CAILLE ASSOCIES', 'Lille', 'Développeur Web / App', 'Attente', '2015-07-28', NULL),
(21, 'ATECNA', 'Lille', 'Développeur / Intégrateur Web ', 'Attente', '2015-07-28', NULL),
(22, 'ITELIOS', 'Lille', 'Développeur Web E-Commerce', 'Attente', '2015-07-28', NULL),
(23, 'INEAT CONSEIL', 'Lille', 'Développeur Symfony2', 'Refusé', '2015-08-03', NULL),
(24, 'ASMODINE', 'Lille', 'Développeur Web', 'Relancé', '2015-08-05', NULL),
(25, 'DSDSYSTEM', 'Lille', 'Développeur PHP', 'Relancé', '2015-08-05', NULL),
(26, 'EVERYSENS', 'Lille', 'Développeur Web FrontEnd', 'Relancé', '2015-08-05', NULL),
(27, 'LES LUNETTES BLEUES', 'Plaine Images Tourcoing', 'Intégrateur / Développeur Web', 'Relancé', '2015-08-05', NULL),
(28, 'GROUPAGORA', '', 'Développeur Web', 'Relancé', '2015-07-30', NULL),
(29, 'EDF', '', 'Développeur', 'Attente', '2015-06-30', NULL),
(30, 'VSI INNOVATION', '2 rue Peclet, 59300 Valenciennes', 'Développeur PHP', 'Relancé', '2015-08-05', NULL),
(31, 'MOBISKILL PARTNER', 'Lille', 'Développeur Web / Intégrateur', 'Refusé', '2015-08-03', NULL),
(32, 'ITALENT', 'Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(33, 'GOTO GAMES', 'Lille', 'Développeur Web', 'Relancé', '2015-08-05', NULL),
(34, 'B''DOM', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(35, 'CASTORAMA', 'Templemars', 'Web Master', 'Refusé', '2015-08-03', NULL),
(36, 'J2S', 'Lille', 'Développeur Applicatif PHP-JS / HTML5', 'Refusé', '2015-08-03', NULL),
(37, 'AVENIRHESEAU', '', 'Développeur Web Symfony2', 'Relancé', '2015-07-20', NULL),
(38, 'DPS & CO', '134 rue royale 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(39, 'ALTIMA', '33 rue dupleix 59100 Roubaix', 'Développeur Web', 'Relancé', '2015-07-20', NULL),
(40, 'APOGGIA WEB', '', 'Développeur Front / Back', 'Relancé', '2015-06-15', NULL),
(41, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Mobilité', 'Attente', '2015-08-03', NULL),
(42, 'EASYTEAM', '43 rue Faidherbe 59800 Lille', 'Ingénieur Base de  données', 'Relancé', '2015-07-08', NULL),
(43, 'CONTEXEO', '165 avenue de Bretagne 59000 Lille', 'Développeur Java / Android', 'Relancé', '2015-06-15', NULL),
(44, 'PUMPKIN', '', 'Développeur Android', 'Refusé', '2015-08-03', NULL),
(45, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Java / J2EE', 'Attente', '2015-08-03', NULL),
(46, 'ECOBUROTIC', '', 'Développeur Web', 'Relancé', '2015-07-20', NULL),
(47, 'CYLANDE C.S.', '15 avenue André Diligent BP 354 59100 Roubaix', 'Concepteur - Développeur Web', 'Relancé', '2015-08-05', NULL),
(48, 'RECISIO', '', 'Développeur PHP', 'Refusé', '2015-08-03', NULL),
(49, 'DECATHLON', '', 'Développeur Web', 'Relancé', '2015-07-20', NULL),
(50, 'INSITACTION', 'Lille', 'Développeur Web', 'Relancé', '2015-08-03', NULL),
(51, 'OFFICEEASY.FR', 'Marcq en Baroeul', 'Développeur', 'Attente', '2015-08-03', NULL),
(52, 'AXXIS', '60 rue Edouard Delesalle 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(53, 'OXYGEM', '45 Boulevard du général Leclerc 59100 Roubaix', 'Développeur PHP', 'Relancé', '2015-08-05', NULL),
(54, 'FITIZZI', '165 Avenue de Bretagne 59000 Lille', 'Développeur Web', 'Relancé', '2015-08-15', NULL),
(55, 'AUCHAN', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-08-16', '');

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

CREATE TABLE IF NOT EXISTS `todolist` (
  `id` tinyint(4) unsigned NOT NULL,
  `task` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `todolist`
--

INSERT INTO `todolist` (`id`, `task`) VALUES
(1, 'refaire le code en MVC'),
(2, 'exporter en fichier'),
(3, 'remplacer le bouton "tri par : " par "afficher seulement"');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `sheet`
--
ALTER TABLE `sheet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `sheet`
--
ALTER TABLE `sheet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
