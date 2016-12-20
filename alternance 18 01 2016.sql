-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 18 Janvier 2016 à 22:56
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

CREATE TABLE `sheet` (
  `id` int(10) NOT NULL,
  `nom` varchar(40) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `poste` varchar(40) DEFAULT NULL,
  `etat` varchar(40) DEFAULT NULL,
  `date_modif` date DEFAULT NULL,
  `commentaires` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sheet`
--

INSERT INTO `sheet` (`id`, `nom`, `adresse`, `poste`, `etat`, `date_modif`, `commentaires`) VALUES
(1, 'CERISE', 'Tourcoing', 'Développeur Web', 'Refusé', '2015-08-18', 'Entretien effectué le 10 aout 14h30'),
(2, 'CCI GRAND HAINAUT', 'Valenciennes', 'Développeur Web', 'Relancé', '2015-10-26', ''),
(3, 'DPDO', 'saint amand', 'Développeur Web', 'Attente', '2015-08-03', NULL),
(4, 'CRISTAL ID', 'Lezennes', 'Développeur FrontEnd / Intégrateur', 'Relancé', '2015-10-27', ''),
(5, 'SARBACANE SOFTWARE', 'Lille', 'Développeur Web', 'Refusé', '2015-09-29', ''),
(6, 'LEMON INTERACTIVE', 'Lille', 'Développeur Web', 'Refusé', '2015-08-06', NULL),
(7, 'CHAPRISTI', 'Lille', 'Développeur Web', 'Refusé', '2015-08-31', 'Entretien effectué le 18 aout 11h'),
(8, 'OPEN', 'Lille', 'Développeur Web', 'Refusé', '2015-08-21', 'mdp : olivierROZAN59&'),
(9, 'IT RH CONCEPT', 'Lille', 'Développeur PHP', 'Relancé', '2015-09-07', ''),
(10, 'UNIS', 'Villeneuve d''Ascq', 'Développeur FontEnd', 'Refusé', '2015-08-03', NULL),
(11, 'LYNX RH', 'Lille', 'Développeur Web', 'Attente', '2015-07-29', NULL),
(12, 'SOGETI', 'Villeneuve d''Ascq', 'Développeur Web', 'Relancé', '2015-10-16', 'erreur mail'),
(13, 'ATEXWEB', 'Villeneuve d', 'Développeur Web', 'Relancé', '2015-10-16', 'mail envoyé à jlefebvre@atexweb.com'),
(14, 'MADE IN SURVEYS', 'Lille', 'Développeur Web', 'Relancé', '2015-10-05', ''),
(15, 'OS CONCEPT', 'Douai', 'Développeur Web / Symfony2', 'Refusé', '2015-07-21', NULL),
(16, 'ENACO EXCELLENCE', 'La Madeleine', 'Développeur Web PHP / MYSQL', 'Attente', '2015-08-16', 'Erreur Mail'),
(17, 'WEB-TRANSITION', 'Lille', 'Développeur / Intégrateur FrontEnd Web &', 'Refusé', '2015-09-07', ''),
(18, 'MAZEBERRY', 'Lille', 'Développeur Web / Support Client', 'Refusé', '2015-08-03', 'entretien effectué le 24 juillet'),
(19, 'CAILLE ASSOCIES', 'Lille', 'Développeur Web / App', 'Relancé', '2015-10-19', ''),
(20, 'ATECNA', 'Lille', 'Développeur / Intégrateur Web ', 'Relancé', '2015-10-19', ''),
(21, 'ITELIOS', 'Lille', 'Développeur Web E-Commerce', 'Refusé', '2015-08-17', NULL),
(22, 'INEAT CONSEIL', 'Lille', 'Développeur Symfony2', 'Refusé', '2015-07-09', NULL),
(23, 'ASMODINE', 'Lille', 'Développeur Web', 'Relancé', '2015-10-26', ''),
(24, 'DSDSYSTEM', 'Lille', 'Développeur PHP', 'Relancé', '2015-10-26', ''),
(25, 'EVERYSENS', 'Lille', 'Développeur Web FrontEnd', 'Relancé', '2015-10-16', ''),
(26, 'LES LUNETTES BLEUES', 'Plaine Images Tourcoing', 'Intégrateur / Développeur Web', 'Relancé', '2015-10-26', ''),
(27, 'GROUPAGORA', '20 Rue Joubert, 75009 Paris', 'Développeur Web', 'Relancé', '2016-01-18', NULL),
(28, 'EDF', '', 'Développeur', 'Refusé', '2015-09-29', ''),
(29, 'VSI INNOVATION', '2 rue Peclet, 59300 Valenciennes', 'Développeur PHP', 'Refusé', '2015-08-25', ''),
(30, 'MOBISKILL PARTNER', 'Lille', 'Développeur Web / Intégrateur', 'Refusé', '2015-07-20', NULL),
(31, 'ITALENT', 'Lille', 'Développeur Web', 'Refusé', '2015-07-15', NULL),
(32, 'GOTO GAMES', 'Lille', 'Développeur Web', 'Relancé', '2015-10-26', 'erreur mail'),
(33, 'B''DOM', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-07-09', NULL),
(34, 'CASTORAMA', 'Templemars', 'Web Master', 'Refusé', '2015-07-16', NULL),
(35, 'J2S', 'Lille', 'Développeur Applicatif PHP-JS / HTML5', 'Refusé', '2015-08-03', NULL),
(36, 'AVENIRHESEAU', 'Rue Becquerel, 59500 Douai', 'Développeur Web Symfony2', 'Relancé', '2015-10-12', ''),
(37, 'DPS & CO', '134 rue royale 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(38, 'ALTIMA', '33 rue dupleix 59100 Roubaix', 'Développeur Web', 'Relancé', '2015-10-12', ''),
(39, 'APOGGIA WEB', '', 'Développeur Front / Back', 'Refusé', '2015-08-17', NULL),
(40, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Mobilité', 'Attente', '2015-08-03', NULL),
(41, 'EASYTEAM', '43 rue Faidherbe 59800 Lille', 'Ingénieur Base de  données', 'Refusé', '2015-08-12', NULL),
(42, 'CONTEXEO', '165 avenue de Bretagne 59000 Lille', 'Développeur Java / Android', 'Relancé', '2015-06-15', NULL),
(43, 'PUMPKIN', 'euratechnologies lille', 'Développeur Android', 'Refusé', '2015-05-26', NULL),
(44, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Java / J2EE', 'Attente', '2015-08-03', NULL),
(45, 'ECOBUROTIC', 'Rue Marc Jodot, 59220 Rouvignies', 'Développeur Web', 'Relancé', '2015-10-12', ''),
(46, 'CYLANDE', '15 avenue André Diligent BP 354 59100 Roubaix', 'Concepteur - Développeur Web', 'Refusé', '2015-09-16', ''),
(47, 'RECISIO', '74 rue des Arts, 59800 Lille', 'Développeur PHP', 'Refusé', '2015-08-03', NULL),
(48, 'DECATHLON', '4 boulevard de Mons 59650 Villeneuve D', 'Développeur Web', 'Refusé', '2015-10-11', 'entretien le 6 octobre 2015 à 18h avec Mr ROSIN'),
(49, 'INSITACTION', 'Lille', 'Développeur Web', 'Refusé', '2015-08-27', 'Entretien effectué le 24 aout 15h30'),
(50, 'OFFICEEASY.FR', 'Marcq en Baroeul', 'Développeur', 'Relancé', '2015-10-16', ''),
(51, 'AXXIS', '60 rue Edouard Delesalle 59000 Lille', 'Développeur Web', 'Refusé', '2015-08-03', NULL),
(52, 'OXYGEM', '45 Boulevard du général Leclerc 59100 Roubaix', 'Développeur PHP', 'Relancé', '2015-10-26', ''),
(53, 'FITIZZI', '165 Avenue de Bretagne 59000 Lille', 'Développeur Web', 'Relancé', '2015-10-26', ''),
(54, 'AUCHAN', 'Villeneuve d''Ascq', 'Développeur Web', 'Refusé', '2015-08-10', ''),
(55, 'CAP GEMINI', '165 avenue de Bretagne 59000 Lille', 'Consultant Fonctionnel', 'Relancé', '2015-10-16', ''),
(56, 'COMPTOIR DU CODE', 'Lille', 'Développeur mobile/web H/F', 'Relancé', '2015-10-26', 'indeed'),
(57, 'NORAUTO', '511/589 rue des Seringats 59262 Sainghin-en-Mélantois ', 'Développeur Web', 'Attente', '2015-08-20', 'https://norauto-recrute.talent-soft.com/'),
(58, 'SSID', 'Villeneuve d''Ascq', 'Analyste Développeur', 'Relancé', '2015-10-12', 'indeed'),
(59, 'CESI', 'Lille', 'Développeur Web', 'Relancé', '2015-10-20', 'nordjob'),
(60, 'EFFISYS', 'Roubaix', 'Développeur PHP', 'Refusé', '2015-08-27', 'indeed - entretien tel effectué le 26 aout'),
(61, 'RANDSTAD INHOUSE SERVICES ', 'Lille', 'Développeur Web', 'Relancé', '2015-09-07', 'apec mdp : olivier59121'),
(62, 'OTTEO', 'nord', 'Développeur Web', 'Refusé', '2015-09-30', 'apec'),
(63, 'PICTIME GROUPE', 'Villeneuve d', 'Développeur FontEnd', 'Refusé', '2015-08-24', 'apec'),
(64, 'NIJI', 'Lille', 'Intégrateur FrontEnd', 'Relancé', '2015-10-16', 'apec'),
(65, 'COMETIK', 'Lille', 'Développeur Web', 'Relancé', '2015-10-26', 'linkedin'),
(66, 'CRITIZR', 'Lille', 'Développeur FrontEnd', 'Relancé', '2015-10-05', 'linkedin'),
(67, 'DERNIER CRI', 'Lille', 'Développeur Web', 'Refusé', '2015-10-06', 'linkedin'),
(68, 'ARTHUR WATSON', 'Lille', 'Développeur Web', 'Relancé', '2015-10-26', 'apec'),
(69, 'DAMARTEX', 'Lille', 'Développeur Web', 'Relancé', '2015-10-05', 'site web damartex'),
(70, 'CRETEZEO', 'Lille', 'Intégrateur HTML5/CSS3/JavaScript', 'Relancé', '2015-09-15', 'indeed'),
(71, 'START PEOPLE', 'Lille', 'Développeur Web', 'Attente', '2015-08-31', 'nordjob'),
(72, 'DAWAN', 'Lille', 'Développeur PHP', 'Refusé', '2015-09-07', 'entretien le 2 septembre'),
(73, 'OSKAB', 'Wasquehal', 'Développeur Web', 'Relancé', '2015-10-26', ''),
(74, 'FABRIK4WEB', 'Valenciennes', 'Développeur Web', 'Relancé', '2015-10-26', ''),
(75, 'MECATECHNIC', 'Tourcoing', 'Développeur Web', 'Relancé', '2016-01-18', ''),
(76, 'IZYLOC.COM', 'Lille', 'Développeur Web Symfony2', 'Attente', '2015-08-31', 'indeed'),
(77, 'CIAN', 'Lille', 'Développeur Web', 'Refusé', '2015-09-10', ''),
(78, 'AFFILIZR', 'Lille', 'Développeur Web full stack js', 'Relancé', '2015-10-16', 'idriss@affilizr.fr'),
(79, 'ASTON INTITUT', 'Lille', 'Développeur Web', 'Refusé', '2015-10-05', ''),
(80, 'TEMPORIS', 'Lille', 'Développeur Web', 'Attente', '2015-09-08', ''),
(81, 'COOPTALIS', 'Lille', 'Développeur Web', 'Attente', '2015-09-08', ''),
(82, 'FETTLE', 'Lille', 'Développeur Web', 'Relancé', '2015-10-16', 'droussel@fettle.fr'),
(83, 'PARLONS E-COMMERCE', 'Lille', 'Développeur PHP', 'Refusé', '2015-09-22', 'metro les pres'),
(84, 'SYLPHEO', 'saint quentin', 'Développeur Web full stack', 'Relancé', '2015-10-16', ''),
(85, 'CGI', 'Lille', 'Développeur PHP', 'Refusé', '2015-09-28', 'alexandra.viade@cgi.com'),
(86, 'INKOMEDIA', 'Lille', 'Développeur PHP/MYSQL', 'Relancé', '2015-10-16', ''),
(87, 'WEBDEALAUTO', 'Lille', 'Développeur Web', 'Relancé', '2015-10-16', ''),
(88, 'ALTAVIA ', 'Perenchies', 'Développeur PHP symfony2', 'Relancé', '2015-10-16', ''),
(89, 'MON AMENAGEMENT JARDIN', 'euratechnologies lille', 'Développeur Web', 'Refusé', '2015-10-05', ''),
(90, 'KREALID', '73 bis boulevard d', 'Développeur Web', 'Refusé', '2015-10-27', ''),
(91, 'CARREDAS COMMUNICATION', 'Roubaix', 'Développeur Web', 'Relancé', '2015-10-26', ''),
(92, 'BIGBEN INTERACTIVE', 'Lesquin', 'Développeur Web', 'Refusé', '2015-10-27', ''),
(93, 'H R TEAM', 'Lille', 'Développeur Web frontend', 'Refusé', '2015-09-15', ''),
(94, 'KELLY SERVICES', 'Lille', 'Développeur Web', 'Refusé', '2015-10-23', 'client de kelly services : identifiant : OROZAN2015 / mot de passe : 441437234'),
(95, 'KALYPTUS', 'Lille', 'Développeur Web', 'Attente', '2015-09-17', ''),
(96, 'HORIZONTAL SOFTWARE', 'Lille', 'Développeur PHP', 'Relancé', '2015-10-26', ''),
(97, 'GIROPTIC', '165 avenue de Bretagne 59000 Lille', 'Développeur Web', 'Relancé', '2015-10-12', ''),
(98, 'MLS TECHNOLOGIES', '542 Avenue F ROOSEVELT 62400 BÉTHUNE ', 'Développeur Web', 'Entretien', '2015-10-28', 'entretien le 30/10/15 à 10h'),
(99, 'NORDSYS', 'ennevelin', 'Développeur FontEnd', 'Relancé', '2015-10-12', ''),
(100, 'ANKAMA', 'Tourcoing', 'Développeur Web', 'Relancé', '2015-10-16', ''),
(101, 'NEXYLAN', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-16', ''),
(102, 'ALLOKIDS', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-16', ''),
(103, 'DRAEMDY', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-16', ''),
(104, 'WIDOP', '121 rue Chanzy 59800 Lille', 'Développeur Web', 'Attente', '2015-09-29', ''),
(105, 'ANNVA', 'euratech lille', 'développeur web', 'Refusé', '2015-10-19', ''),
(106, 'AROBAS MUSIC', 'euratech lille', 'développeur web', 'Relancé', '2015-10-12', ''),
(107, 'FOLLOW THE SUN', 'euratech lille', 'développeur web', 'Relancé', '2015-10-19', ''),
(108, 'IBM SERVICE CENTER', 'euratech lille', 'développeur web', 'Refusé', '2015-10-20', ''),
(109, 'INTENT TECHNOLOGIES', 'euratech lille', 'développeur web', 'Refusé', '2015-10-01', ''),
(110, 'JAGGER & LEWIS', 'euratech lille', 'développeur web', 'Relancé', '2016-01-18', ''),
(111, 'NO PARKING', 'euratech lille', 'développeur web', 'Refusé', '2015-10-05', ''),
(112, '4MEPRO', 'euratech lille', 'développeur web', 'Relancé', '2015-10-19', ''),
(113, 'APPIWAY', 'euratech lille', 'développeur web', 'Relancé', '2015-10-19', ''),
(114, 'CASSIOP', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-27', ''),
(115, 'ASPIC TECHNOLOGIES', 'Plaine Images Tourcoing', 'Développeur Web', 'Refusé', '2015-10-08', ''),
(116, 'CHEZ MARIE', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-27', ''),
(117, 'COMMANDDO', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-27', ''),
(118, 'GAME IN', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-27', ''),
(119, 'SA DESMAZIERES', 'Plaine Images Tourcoing', 'Développeur Web', 'Attente', '2015-10-07', ''),
(120, 'MEDIATIVY', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-27', ''),
(121, 'NINCHANESE', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-27', ''),
(122, 'PAOMA', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-23', ''),
(123, 'PICTANOVO', 'Plaine Images Tourcoing', 'Développeur Web', 'Relancé', '2015-10-23', ''),
(124, 'SITUVE', 'Plaine Images Tourcoing', 'Développeur Web', 'Refusé', '2015-10-09', ''),
(125, 'A-SIS', '50 rue des peigneurs 59200 Tourcoing', 'Développeur java/j2ee', 'Entretien', '2015-10-28', 'entretien le 29/10/15 à 17h'),
(126, 'PPG', 'marly', 'Développeur Web', 'Relancé', '2016-01-18', ''),
(127, 'GUTENBERG NETWORKS', 'plaine image tourcoing', 'développeur web', 'Attente', '2015-10-12', ''),
(128, 'HOLUSION', 'plaine image tourcoing', 'développeur web', 'Attente', '2015-10-12', ''),
(129, 'HORS FORMAT', 'plaine image tourcoing', 'développeur web', 'Attente', '2015-10-12', ''),
(130, 'ALTERWAY', 'euratech lille', 'développeur web', 'Refusé', '2015-10-13', ''),
(131, 'ADIX', 'euratech lille', 'développeur web', 'Refusé', '2015-10-13', ''),
(132, 'BEWE', 'euratech lille', 'développeur web', 'Refusé', '2015-10-16', ''),
(133, 'BORDER6', 'euratech lille', 'développeur web', 'Attente', '2015-10-12', ''),
(134, 'BUSINESS APTITUDE', ' 30 rue des Frères Danna 59300 Valenciennes', 'développeur web', 'Attente', '2015-10-13', ''),
(135, 'SOCIAL WOK', 'Chemin du Noir Mouton - Hôtel des entreprises 59300 Valenciennes', 'développeur web', 'Attente', '2015-10-13', ''),
(136, 'C''EST CARRE', '6 place de la gare - Valenciennes', 'développeur web', 'Attente', '2015-10-13', ''),
(137, 'WEFEEDTHETROLL', '02 rue Peclet 59300 Valenciennes', 'développeur web', 'Attente', '2015-10-13', ''),
(138, 'DIGITALWORKS', '21 rue Victor Renard - HASNON', 'développeur web', 'Refusé', '2015-10-13', ''),
(139, 'OVH', 'roubaix', 'développeur web', 'Refusé', '2015-10-16', ''),
(140, 'ADSPRING', 'lille', 'développeur web', 'Relancé', '2015-10-20', ''),
(141, 'ATOS', 'lille', 'développeur web', 'Attente', '2015-10-14', ''),
(142, 'C-PUB', '350, rue Arthur Brunet, 59220 DENAIN ', 'développeur web', 'Attente', '2015-10-15', ''),
(143, 'LA REDOUTE', 'roubaix', 'Assistant support technique Market Place', 'Attente', '2015-10-17', ''),
(144, 'NORDNET', 'lille', 'développeur web', 'Attente', '2015-10-19', ''),
(145, 'IMPALA WEB STUDIO', 'lille', 'développeur web', 'Attente', '2015-10-19', ''),
(146, 'VERISURE', 'villeneuve d''ascq', 'développeur web', 'Attente', '2015-10-20', ''),
(147, '14H28', '629, Avenue de la République 59000 Lille', 'développeur web', 'Attente', '2015-10-21', ''),
(148, 'MICRO PROXY', 'Parc d’activité du Moulin Chemin de Bois Bernard 62110 HÉNIN-BEAUMONT ', 'développeur web', 'Attente', '2015-10-21', ''),
(149, 'DECLIKWEB', 'valenciennes', 'développeur web', 'Attente', '2015-10-21', ''),
(150, 'EVEREST CONCEPT', '7 rue jean jaures 59192 Beuvrages', 'développeur web', 'Refusé', '2015-10-23', ''),
(151, 'INSITWEB', '14 rue Henri Barbusse - 59880 Saint-Saulve', 'développeur web', 'Attente', '2015-10-22', ''),
(152, 'ROUE COMMUNICATION', 'valenciennes', 'développeur web', 'Attente', '2015-10-22', ''),
(153, 'IT-FINANCE', 'Lille', 'Développeur Web', 'Attente', '2016-01-05', '');

-- --------------------------------------------------------

--
-- Structure de la table `todolist`
--

CREATE TABLE `todolist` (
  `id` tinyint(4) UNSIGNED NOT NULL,
  `task` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `todolist`
--

INSERT INTO `todolist` (`id`, `task`) VALUES
(1, 'refaire le code en MVC'),
(2, 'exporter en fichier');

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT pour la table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` tinyint(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
