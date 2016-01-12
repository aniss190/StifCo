-- phpMyAdmin SQL Dump
-- version 4.4.6.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 12 Janvier 2016 à 13:24
-- Version du serveur :  5.6.26-log
-- Version de PHP :  5.6.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `stifco`
--

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `codePostal` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`id`, `nom`, `codePostal`) VALUES
(1, 'Ozoir-la-Ferrière', 77350),
(2, 'Pontault-Combault', 77373),
(3, 'Mormant', 77317),
(4, 'Marles-en-Brie', 77229),
(5, 'Mortcerf', 77318),
(6, 'Pommeuse', 77371),
(7, 'La Ferté-Gaucher', 77182),
(8, 'Montry', 77315),
(9, 'Trilport', 77475),
(10, 'Changis-sur-Marne', 77084),
(11, 'La Ferté-sous-Jouarre', 77183),
(12, 'Melun', 77288),
(13, 'Moissy-Cramayel', 77296),
(14, 'Avon', 77014),
(15, 'Vernou-la-Celle-sur-Seine', 77494),
(16, 'Noisiel', 77337),
(17, 'Nangis', 77327),
(18, 'Tournan-en-Brie', 77470),
(19, 'Villiers-sur-Morin', 77142),
(20, 'Crécy-la-Chapelle', 77142),
(21, 'Saint-Mard', 77420),
(22, 'Combs-la-Ville', 77122),
(23, 'Le Mée-sur-Seine', 77285),
(24, 'Montereau-Fault-Yonne', 77305),
(25, 'Chartrettes', 77096),
(26, 'Samoreau', 77442),
(27, 'La Grande-Paroisse', 77210),
(28, 'Saint-Fargeau-Ponthierry', 77407),
(29, 'Bourron-Marlotte', 77048),
(30, 'Saint-Pierre-lès-Nemours', 77431),
(31, 'Bagneaux-sur-Loing', 77016),
(32, 'Souppes-sur-Loing', 77458),
(33, 'Lognes', 77258),
(34, 'Gretz-Armainvilliers', 77215),
(35, 'Verneuil-l''Etang', 77493),
(36, 'Provins', 77379),
(37, 'Sainte-Colombe', 77404),
(38, 'Esbly', 77171),
(39, 'Chailly-en-Brie', 77070),
(40, 'Saint-Rémy-la-Vanne', 77432),
(41, 'Jouy-sur-Morin', 77240),
(42, 'Livry-sur-Seine', 77255),
(43, 'Dammarie-les-Lys', 77152),
(44, 'Torcy', 77468),
(45, 'Longueville', 77260),
(46, 'Guérard', 77219),
(47, 'Coulommiers', 77131),
(48, 'Thorigny-sur-Marne', 77464),
(49, 'Saâcy-sur-Marne', 77397),
(50, 'Lizy-sur-Ourcq', 77257),
(51, 'Crouy-sur-Ourcq', 77148),
(52, 'La Ferté-Gaucher', 77182),
(53, 'Jouy-sur-Morin', 77240),
(54, 'Cesson', 77067),
(55, 'Veneux-les-Sablons', 77491),
(56, 'Saint-Mammès', 77419),
(57, 'Boissise-le-Roi', 77040),
(58, 'Montigny-sur-Loing', 77312),
(59, 'Serris', 77449),
(60, 'Poigny', 77368),
(61, 'Roissy-en-Brie', 77390),
(62, 'Meaux', 77284),
(63, 'Chelles', 77108),
(64, 'Mouroux', 77320),
(65, 'Vaires-sur-Marne', 77479),
(66, 'Saint-Siméon', 77436),
(67, 'Saint-Siméon', 77436),
(68, 'Isles-les-Meldeuses', 77231),
(69, 'Saint-Germain-sur-Morin', 77413),
(70, 'Mitry-Mory', 77294),
(71, 'Mitry-Mory', 77294),
(72, 'Compans', 77123),
(73, 'Thieux', 77462),
(74, 'Jouy-sur-Morin', 77240),
(75, 'Savigny-le-Temple', 77445),
(76, 'Bois-le-Roi', 77037),
(77, 'Thomery', 77463),
(78, 'Fontaine-le-Port', 77188),
(79, 'Héricy', 77226),
(80, 'Champagne-sur-Seine', 77079),
(81, 'Saint-Fargeau-Ponthierry', 77407),
(82, 'Bussy-Saint-Georges', 77058),
(83, 'Chessy', 77111);

-- --------------------------------------------------------

--
-- Structure de la table `deplacement`
--

CREATE TABLE IF NOT EXISTS `deplacement` (
  `id` int(11) NOT NULL,
  `idOffreur` int(11) NOT NULL,
  `semaine` int(2) NOT NULL,
  `nbPassagers` int(2) NOT NULL,
  `hDepart` time NOT NULL,
  `hRetour` time NOT NULL,
  `idGare` int(11) NOT NULL,
  `idCommune` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `deplacement`
--

INSERT INTO `deplacement` (`id`, `idOffreur`, `semaine`, `nbPassagers`, `hDepart`, `hRetour`, `idGare`, `idCommune`) VALUES
(1, 123456789, 15, 3, '14:13:39', '17:16:39', 18, 16);

-- --------------------------------------------------------

--
-- Structure de la table `gare`
--

CREATE TABLE IF NOT EXISTS `gare` (
  `id` int(10) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `codeUIC` int(10) NOT NULL,
  `zoneNavigo` int(1) NOT NULL,
  `idCommune` int(11) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `gare`
--

INSERT INTO `gare` (`id`, `libelle`, `codeUIC`, `zoneNavigo`, `idCommune`, `latitude`, `longitude`) VALUES
(1, 'OZOIR LA FERRIERE', 87116020, 5, 1, 48.770713265, 2.68993639666),
(2, 'EMERAINVILLE PONTAULT COMBAULT', 87116046, 5, 2, 48.806003599582, 2.61771918549),
(3, 'MORMANT', 87116087, 5, 3, 48.613224928007, 2.88948293637),
(4, 'MARLES EN BRIE', 87116228, 5, 4, 48.735413632348, 2.86932424041),
(5, 'MORTCERF', 87116244, 5, 5, 48.789345400504, 2.90770615404),
(6, 'FAREMOUTIERS POMMEUSE', 87116277, 5, 6, 48.808534903897, 2.99318415513),
(7, 'LA FERTE GAUCHER', 87116392, 5, 7, 48.782711030762, 3.29755777978),
(8, 'MONTRY CONDE', 87116400, 5, 8, 48.89081115651, 2.8262287351),
(9, 'TRILPORT', 87116491, 5, 9, 48.960072968113, 2.94935724218),
(10, 'CHANGIS SAINT-JEAN', 87116509, 5, 10, 48.959334023365, 3.0256113065),
(11, 'LA FERTE SOUS JOUARRE', 87116517, 5, 11, 48.950772086334, 3.12540966146),
(12, 'MELUN', 87682005, 5, 12, 48.52759663436, 2.65539176037),
(13, 'LIEUSAINT MOISSY', 87682153, 5, 13, 48.628476487595, 2.57006099644),
(14, 'FONTAINEBLEAU AVON', 87682211, 5, 14, 48.416373942976, 2.7264708082),
(15, 'VERNOU SUR SEINE', 87682468, 5, 15, 48.387191859407, 2.84237865621),
(16, 'NOISIEL', 87758359, 5, 16, 48.843575474899, 2.61635637918),
(17, 'NANGIS', 87116095, 5, 17, 48.561491415483, 3.01241107757),
(18, 'TOURNAN', 87116210, 5, 18, 48.739198716293, 2.7593959944),
(19, 'VILLIERS MONTBARBIN', 87116749, 5, 19, 48.863153028254, 2.88296287419),
(20, 'CRECY LA CHAPELLE', 87116772, 5, 20, 48.859541395845, 2.9057267856),
(21, 'DAMMARTIN JUILLY SAINT-MARD', 87271536, 5, 21, 49.031962478887, 2.6987299167),
(22, 'COMBS LA VILLE QUINCY', 87682146, 5, 22, 48.667197646272, 2.54769338184),
(23, 'LE MEE', 87682179, 5, 23, 48.539938708406, 2.62404631973),
(24, 'MONTEREAU', 87682302, 5, 24, 48.379831707534, 2.94290979682),
(25, 'CHARTRETTES', 87682419, 5, 25, 48.487109702293, 2.69505424001),
(26, 'VULAINES SUR SEINE SAMOREAU', 87682443, 5, 26, 48.4305611079, 2.75278446885),
(27, 'LA GRANDE PAROISSE', 87682476, 5, 27, 48.378644796314, 2.89744111747),
(28, 'SAINT-FARGEAU', 87682542, 5, 28, 48.564550875948, 2.54245766803),
(29, 'BOURRON MARLOTTE GREZ', 87684118, 5, 29, 48.33275133924, 2.69223391218),
(30, 'NEMOURS SAINT-PIERRE', 87684126, 5, 30, 48.26790887032, 2.68565411114),
(31, 'BAGNEAUX SUR LOING', 87684191, 5, 31, 48.230720823042, 2.70325251947),
(32, 'SOUPPES CHÂTEAU LANDON', 87684217, 5, 32, 48.181963174075, 2.7351551039),
(33, 'LOGNES', 87758367, 5, 33, 48.838930876179, 2.6341133067),
(34, 'GRETZ ARMAINVILLIERS', 87116012, 5, 34, 48.74542472537, 2.72874414729),
(35, 'VERNEUIL L''ETANG', 87116079, 5, 35, 48.644845507972, 2.82466540585),
(36, 'PROVINS', 87116160, 5, 36, 48.555694263025, 3.30284528743),
(37, 'SAINTE-COLOMBE SEPTVEILLES', 87116178, 5, 37, 48.530174825464, 3.257217473),
(38, 'ESBLY', 87116327, 5, 38, 48.903087070604, 2.81083070974),
(39, 'CHAILLY BOISSY LECHATEL', 87116343, 5, 39, 48.814345230751, 3.15249004519),
(40, 'SAINT-REMY LA VANNE', 87116376, 5, 40, 48.800156592518, 3.2462310892),
(41, 'JOUY SUR MORIN MONUMENT', 87430884, 5, 41, 48.790682533935, 3.27406177755),
(42, 'LIVRY SUR SEINE', 87682401, 5, 42, 48.510125878816, 2.67921963213),
(43, 'VOSVES', 87682500, 5, 43, 48.514978120444, 2.59909325048),
(44, 'TORCY', 87758375, 5, 44, 48.839345011649, 2.65474342419),
(45, 'LONGUEVILLE', 87116137, 5, 45, 48.513511149058, 3.24968452995),
(46, 'GUERARD LA CELLE SUR MORIN', 87116269, 5, 46, 48.81036682812, 2.95485878112),
(47, 'COULOMMIERS', 87116301, 5, 47, 48.807769201172, 3.08204722637),
(48, 'LAGNY THORIGNY', 87116319, 5, 48, 48.882010640317, 2.70410248006),
(49, 'NANTEUIL SAACY', 87116558, 5, 49, 48.97396545475, 3.21952329256),
(50, 'LIZY SUR OURCQ', 87116632, 5, 50, 49.021541840487, 3.03159105379),
(51, 'CROUY SUR OURCQ', 87116640, 5, 51, 49.091529730181, 3.06292161569),
(52, 'LA FERTE GAUCHER CENTRE', 87430819, 5, 52, 48.782311237762, 3.30694912567),
(53, 'JOUY SUR MORIN EUSTACHE', 87430900, 5, 53, 48.798278864452, 3.26705580779),
(54, 'CESSON', 87682161, 5, 54, 48.565664426018, 2.59376744623),
(55, 'MORET VENEUX LES SABLONS', 87682278, 5, 55, 48.37840376481, 2.79952521791),
(56, 'SAINT-MAMMES', 87682294, 5, 56, 48.382177671607, 2.8158628021),
(57, 'BOISSISE LE ROI', 87682518, 5, 57, 48.529668334659, 2.57299051053),
(58, 'MONTIGNY SUR LOING', 87684100, 5, 58, 48.3376736682, 2.7385490063),
(59, 'VAL D''EUROPE', 87730069, 5, 59, 48.856066846954, 2.77507058255),
(60, 'CHAMPBENOIST POIGNY', 87115873, 5, 60, 48.545357403499, 3.28705609292),
(61, 'ROISSY EN BRIE', 87116038, 5, 61, 48.795407677268, 2.64984936854),
(62, 'MEAUX', 87116103, 5, 62, 48.957488015755, 2.87398151191),
(63, 'CHELLES GOURNAY', 87116111, 4, 63, 48.874342186904, 2.58250078541),
(64, 'MOUROUX', 87116285, 5, 64, 48.813550995995, 3.04331621776),
(65, 'VAIRES TORCY', 87116293, 5, 65, 48.875235315237, 2.63968946902),
(66, 'CHAUFFRY', 87116350, 5, 66, 48.811287377085, 3.17476072409),
(67, 'SAINT-SIMEON', 87116368, 5, 67, 48.799683110159, 3.20860208784),
(68, 'ISLES ARMENTIERES CONGIS', 87116616, 5, 68, 48.998116504488, 3.00749816426),
(69, 'COUILLY SAINT-GERMAIN QUINCY', 87116731, 5, 69, 48.882650001947, 2.85406030652),
(70, 'VILLEPARISIS MITRY LE NEUF', 87271510, 5, 70, 48.953250387991, 2.60263346127),
(71, 'MITRY CLAYE', 87271528, 5, 71, 48.975765675333, 2.64247497956),
(72, 'COMPANS', 87272047, 5, 72, 48.991575737239, 2.66518220038),
(73, 'THIEUX NANTOUILLET', 87272054, 5, 73, 49.00870592297, 2.68045376536),
(74, 'JOUY SUR MORIN CHAMPGOULIN', 87430918, 5, 74, 48.791683575911, 3.25635379317),
(75, 'SAVIGNY LE TEMPLE NANDY', 87682187, 5, 75, 48.595468794622, 2.5831402916),
(76, 'BOIS LE ROI', 87682203, 5, 76, 48.47556667235, 2.69200060593),
(77, 'THOMERY', 87682252, 5, 77, 48.393109909444, 2.77909503945),
(78, 'FONTAINE LE PORT', 87682427, 5, 78, 48.487501323334, 2.75134395079),
(79, 'HERICY', 87682435, 5, 79, 48.442859651028, 2.76046271779),
(80, 'CHAMPAGNE SUR SEINE', 87682450, 5, 80, 48.406581718225, 2.79922050049),
(81, 'PONTHIERRY PRINGY', 87682526, 5, 81, 48.535007415165, 2.54460207204),
(82, 'BUSSY SAINT-GEORGES', 87754986, 5, 82, 48.836740917798, 2.70977301222),
(83, 'MARNE LA VALLEE CHESSY', 87754994, 5, 83, 48.870597692518, 2.78287721332);

-- --------------------------------------------------------

--
-- Structure de la table `proposition`
--

CREATE TABLE IF NOT EXISTS `proposition` (
  `idDeplacement` int(11) NOT NULL,
  `idOffreur` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL,
  `codeNavigo` int(10) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `cp` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `codeNavigo`, `password`, `nom`, `prenom`, `mail`, `cp`) VALUES
(5, 123456789, '32154987', 'madani', 'aniss', 'aniss.madani@live.fr', 77188);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commune`
--
ALTER TABLE `commune`
  ADD PRIMARY KEY (`id`),
  ADD KEY `codePostal` (`codePostal`);

--
-- Index pour la table `deplacement`
--
ALTER TABLE `deplacement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `idOffreur` (`idOffreur`),
  ADD KEY `idCommune` (`idCommune`);

--
-- Index pour la table `gare`
--
ALTER TABLE `gare`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCommune` (`idCommune`);

--
-- Index pour la table `proposition`
--
ALTER TABLE `proposition`
  ADD KEY `idDeplacement` (`idDeplacement`),
  ADD KEY `idOffreur` (`idOffreur`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cp` (`cp`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commune`
--
ALTER TABLE `commune`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `deplacement`
--
ALTER TABLE `deplacement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `gare`
--
ALTER TABLE `gare`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `deplacement`
--
ALTER TABLE `deplacement`
  ADD CONSTRAINT `deplacement_ibfk_1` FOREIGN KEY (`idCommune`) REFERENCES `commune` (`id`);

--
-- Contraintes pour la table `gare`
--
ALTER TABLE `gare`
  ADD CONSTRAINT `gare_ibfk_1` FOREIGN KEY (`idCommune`) REFERENCES `commune` (`id`);

--
-- Contraintes pour la table `proposition`
--
ALTER TABLE `proposition`
  ADD CONSTRAINT `proposition_ibfk_1` FOREIGN KEY (`idDeplacement`) REFERENCES `deplacement` (`id`),
  ADD CONSTRAINT `proposition_ibfk_2` FOREIGN KEY (`idOffreur`) REFERENCES `deplacement` (`idOffreur`);

--
-- Contraintes pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`cp`) REFERENCES `commune` (`codePostal`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
