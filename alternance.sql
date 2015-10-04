-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 17 Septembre 2015 à 14:39
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
  `nom` varchar(40) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `poste` varchar(40) DEFAULT NULL,
  `etat` varchar(40) DEFAULT NULL,
  `date_modif` date DEFAULT NULL,
  `commentaires` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sheet`
--

INSERT INTO `sheet` (`id`, `nom`, `adresse`, `poste`, `etat`, `date_modif`, `commentaires`) VALUES
(1, 'CERISE', 'Tourcoing', 'Développeur Web', 'Refusé', '2015-08-18', 'Entretien effectué le 10 aout 14h30'),
(2, 'CCI GRAND HAINAUT', 'Valenciennes', 'Développeur Web', 'Relancé', '2015-08-31', ''),
(3, 'DPDO', 'saint amand', 'Développeur Web', 'Attente', '2015-08-03', NULL),
(4, 'CRISTAL ID', 'Lezennes', 'Développeur FrontEnd / Intégrateur', 'Relancé', '2015-09-07', ''),
(5, 'SARBACANE SOFTWARE', 'Lille', 'Développeur Web', 'Relancé', '2015-09-07', ''),
(6, 'LEMON INTERACTIVE', 'Lille', 'Développeur Web', 'Refusé', '2015-08-06', NULL),
(7, 'CHAPRISTI', 'Lille', 'Développeur Web', 'Refusé', '2015-08-31', 'Entretien effectué le 18 aout 11h'),
(8, 'OPEN', 'Lille', 'Développeur Web', 'Refusé', '2015-08-21', 'mdp : olivierROZAN59&'),
(9, 'IT RH CONCEPT', 'Lille', 'Développeur PHP', 'Relancé', '2015-09-07', ''),
(10, 'UNIS', 'Villeneuve d''Ascq', 'Développeur FontEnd', 'Refusé', '2015-08-03', NULL),
(11, 'LYNX RH', 'Lille', 'Développeur Web', 'Attente', '2015-07-29', NULL),
(12, 'SOGETI', 'Villeneuve d', 'Développeur Web', 'Relancé', '2015-09-07', ''),
(13, 'ATEXWEB', 'Villeneuve d', 'Développeur Web', 'Relancé', '2015-09-07', 'mail envoyé à jlefebvre@atexweb.com'),
(14, 'MADE IN SURVEYS', 'Lille', 'Développeur Web', 'Relancé', '2015-08-31', ''),
(15, 'OS CONCEPT', 'Douai', 'Développeur Web / Symfony2', 'Refusé', '2015-07-21', NULL),
(16, 'ENACO EXCELLENCE', 'La Madeleine', 'Développeur Web PHP / MYSQL', 'Attente', '2015-08-16', 'Erreur Mail'),
(17, 'WEB-TRANSITION', 'Lille', 'Développeur / Intégrateur FrontEnd Web &', 'Refusé', '2015-09-07', ''),
(18, 'MAZEBERRY', 'Lille', 'Développeur Web / Support Client', 'Refusé', '2015-08-03', NULL),
(19, 'CAILLE ASSOCIES', 'Lille', 'Développeur Web / App', 'Relancé', '2015-09-07', ''),
(20, 'ATECNA', 'Lille', 'Développeur / Intégrateur Web ', 'Relancé', '2015-09-07', ''),
(21, 'ITELIOS', 'Lille', 'Développeur Web E-Commerce', 'Refusé', '2015-08-17', NULL),
(22, 'INEAT CONSEIL', 'Lille', 'Développeur Symfony2', 'Refusé', '2015-07-09', NULL),
(23, 'ASMODINE', 'Lille', 'Développeur Web', 'Relancé', '2015-09-14', ''),
(24, 'DSDSYSTEM', 'Lille', 'Développeur PHP', 'Relancé', '2015-09-14', ''),
(25, 'EVERYSENS', 'Lille', 'Développeur Web FrontEnd', 'Relancé', '2015-09-07', ''),
(26, 'LES LUNETTES BLEUES', 'Plaine Images Tourcoing', 'Intégrateur / Développeur Web', 'Relancé', '2015-09-14', ''),
(27, 'GROUPAGORA', '	20 Rue Joubert, 75009 Paris', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(28, 'EDF', '', 'Développeur', 'Attente', '2015-06-30', NULL),
(29, 'VSI INNOVATION', '2 rue Peclet, 59300 Valenciennes', 'Développeur PHP', 'Refusé', '2015-08-25', ''),
(30, 'MOBISKILL PARTNER', 'Lille', 'Développeur Web / Intégrateur', 'Refusé', '2015-07-20', NULL),
(31, 'ITALENT', 'Lille', 'Développeur Web', 'Refusé', '2015-07-15', NULL),
(32, 'GOTO GAMES', 'Lille', 'Développeur Web', 'Relancé', '2015-09-14', ''),
(33, 'B''DOM', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-07-09', NULL),
(34, 'CASTORAMA', 'Templemars', 'Web Master', 'Refusé', '2015-07-16', NULL),
(35, 'J2S', 'Lille', 'Développeur Applicatif PHP-JS / HTML5', 'Refusé', '2015-08-03', NULL),
(36, 'AVENIRHESEAU', 'Rue Becquerel, 59500 Douai', 'Développeur Web Symfony2', 'Relancé', '2015-09-03', ''),
(37, 'DPS & CO', '134 rue royale 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(38, 'ALTIMA', '33 rue dupleix 59100 Roubaix', 'Développeur Web', 'Relancé', '2015-09-03', ''),
(39, 'APOGGIA WEB', '', 'Développeur Front / Back', 'Refusé', '2015-08-17', NULL),
(40, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Mobilité', 'Attente', '2015-08-03', NULL),
(41, 'EASYTEAM', '43 rue Faidherbe 59800 Lille', 'Ingénieur Base de  données', 'Refusé', '2015-08-12', NULL),
(42, 'CONTEXEO', '165 avenue de Bretagne 59000 Lille', 'Développeur Java / Android', 'Relancé', '2015-06-15', NULL),
(43, 'PUMPKIN', 'euratechnologies lille', 'Développeur Android', 'Refusé', '2015-05-26', NULL),
(44, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Java / J2EE', 'Attente', '2015-08-03', NULL),
(45, 'ECOBUROTIC', 'Rue Marc Jodot, 59220 Rouvignies', 'Développeur Web', 'Relancé', '2015-09-03', ''),
(46, 'CYLANDE', '15 avenue André Diligent BP 354 59100 Roubaix', 'Concepteur - Développeur Web', 'Refusé', '2015-09-16', ''),
(47, 'RECISIO', '74 rue des Arts, 59800 Lille', 'Développeur PHP', 'Refusé', '2015-08-03', NULL),
(48, 'DECATHLON', '', 'Développeur Web', 'Relancé', '2015-07-20', NULL),
(49, 'INSITACTION', 'Lille', 'Développeur Web', 'Refusé', '2015-08-27', 'Entretien effectué le 24 aout 15h30'),
(50, 'OFFICEEASY.FR', 'Marcq en Baroeul', 'Développeur', 'Relancé', '2015-09-07', ''),
(51, 'AXXIS', '60 rue Edouard Delesalle 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(52, 'OXYGEM', '45 Boulevard du général Leclerc 59100 Roubaix', 'Développeur PHP', 'Relancé', '2015-09-14', ''),
(53, 'FITIZZI', '165 Avenue de Bretagne 59000 Lille', 'Développeur Web', 'Relancé', '2015-09-14', ''),
(54, 'AUCHAN', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-08-10', ''),
(55, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Fonctionnel', 'Relancé', '2015-09-07', ''),
(56, 'COMPTOIR DU CODE', 'Lille', 'Développeur mobile/web H/F', 'Relancé', '2015-09-14', 'indeed'),
(57, 'NORAUTO', '511/589 rue des Seringats 59262 Sainghin-en-Mélantois ', 'Développeur Web', 'Attente', '2015-08-20', 'https://norauto-recrute.talent-soft.com/'),
(58, 'SSID', 'Villeneuve d', 'Analyste Développeur', 'Relancé', '2015-09-07', 'indeed'),
(59, 'CESI', 'Lille', 'Développeur Web', 'Attente', '2015-08-20', 'nordjob'),
(60, 'EFFISYS', 'Roubaix', 'Développeur PHP', 'Refusé', '2015-08-27', 'indeed - entretien tel effectué le 26 aout'),
(61, ' RANDSTAD INHOUSE SERVICES ', 'Lille', 'Développeur Web', 'Relancé', '2015-09-07', 'apec mdp : olivier59121'),
(62, 'OTTEO', 'nord', 'Développeur Web', 'Relancé', '2015-09-07', 'apec'),
(63, 'PICTIME GROUPE', 'Villeneuve d', 'Développeur FontEnd', 'Refusé', '2015-08-24', 'apec'),
(64, 'NIJI', 'Lille', 'Intégrateur FrontEnd', 'Relancé', '2015-09-07', 'apec'),
(65, 'COMETIK', 'Lille', 'Développeur Web', 'Relancé', '2015-09-15', 'linkedin'),
(66, 'CRITIZR', 'Lille', 'Développeur Web', 'Attente', '2015-08-25', 'linkedin'),
(67, 'DERNIER CRI', 'Lille', 'Développeur Web', 'Attente', '2015-08-25', 'linkedin'),
(68, 'ARTHUR WATSON', 'Lille', 'Développeur Web', 'Relancé', '2015-09-14', 'apec'),
(69, 'DAMARTEX', 'Lille', 'Développeur Web', 'Attente', '2015-08-31', 'apec'),
(70, 'CRETEZEO', 'Lille', 'Intégrateur HTML5/CSS3/JavaScript', 'Relancé', '2015-09-15', 'indeed'),
(71, 'START PEOPLE', 'Lille', 'Développeur Web', 'Attente', '2015-08-31', 'nordjob'),
(72, 'DAWAN', 'Lille', 'Développeur PHP', 'Refusé', '2015-09-07', 'skype : jerome.merckling'),
(73, 'OSKAB', 'Wasquehal', 'Développeur Web', 'Attente', '2015-08-31', ''),
(74, 'FABRIK4WEB', 'Valenciennes', 'Développeur Web', 'Attente', '2015-08-31', ''),
(75, 'MECATECHNIC', 'Tourcoing', 'Développeur Web', 'Refusé', '2015-09-10', ''),
(76, 'IZYLOC.COM', 'Lille', 'Développeur Web Symfony2', 'Attente', '2015-08-31', 'indeed'),
(77, 'CIAN', 'Lille', 'Développeur Web', 'Refusé', '2015-09-10', ''),
(78, 'AFFILIZR', 'Lille', 'Développeur Web full stack js', 'Attente', '2015-09-08', 'idriss@affilizr.fr'),
(79, 'ASTON INTITUT', 'Lille', 'Développeur Web', 'Attente', '2015-09-08', ''),
(80, 'TEMPORIS', 'Lille', 'Développeur Web', 'Attente', '2015-09-08', ''),
(81, 'COOPTALIS', 'Lille', 'Développeur Web', 'Attente', '2015-09-08', ''),
(82, 'FETTLE', 'Lille', 'Développeur Web', 'Attente', '2015-09-08', 'droussel@fettle.fr'),
(83, 'PARLONS E-COMMERCE', 'Lille', 'Développeur PHP', 'Entretien', '2015-09-16', 'metro les pres'),
(84, 'SYLPHEO', 'saint quentin', 'Développeur Web full stack', 'Attente', '2015-09-09', ''),
(85, 'CGI', 'Lille', 'Développeur PHP', 'Attente', '2015-09-09', 'alexandra.viade@cgi.com'),
(86, 'INKOMEDIA', 'Lille', 'Développeur PHP/MYSQL', 'Attente', '2015-09-09', ''),
(87, 'WEBDEALAUTO', 'Lille', 'Développeur Web', 'Attente', '2015-09-09', ''),
(88, 'ALTAVIA ', 'Perenchies', 'Développeur PHP symfony2', 'Attente', '2015-09-09', ''),
(89, 'MON AMENAGEMENT JARDIN', 'euratechnologies lille', 'Développeur Web', 'Attente', '2015-09-15', ''),
(90, 'KREALID', '73 bis boulevard d''armentières, 59100 roubaix', 'Développeur Web', 'Attente', '2015-09-15', ''),
(91, 'CARREDAS COMMUNICATION', 'Roubaix', 'Développeur Web', 'Attente', '2015-09-15', ''),
(92, 'BIGBEN INTERACTIVE', 'Lesquin', 'Développeur Web', 'Attente', '2015-09-15', ''),
(93, 'H R TEAM', 'Lille', 'Développeur Web frontend', 'Refusé', '2015-09-15', ''),
(94, 'KELLY SERVICES', 'Lille', 'Développeur Web', 'Attente', '2015-09-17', 'client de kelly services : identifiant : OROZAN2015 / mot de passe : 441437234'),
(95, 'KALYPTUS', 'Lille', 'Développeur Web', 'Attente', '2015-09-17', '');

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

CREATE TABLE IF NOT EXISTS `todolist` (
  `id` tinyint(4) unsigned NOT NULL,
  `task` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `todolist`
--

INSERT INTO `todolist` (`id`, `task`) VALUES
(1, 'refaire le code en MVC'),
(2, 'exporter en fichier'),
(3, 'afficher le nombre de lignes pour chaque requete');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT pour la table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
