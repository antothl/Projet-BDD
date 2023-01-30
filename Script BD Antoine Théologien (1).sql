-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 07 déc. 2022 à 15:28
-- Version du serveur : 5.7.36
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `info304`
--

-- --------------------------------------------------------

--
-- Structure de la table `constituer`
--

DROP TABLE IF EXISTS `constituer`;
CREATE TABLE IF NOT EXISTS `constituer` (
  `idStage` int(11) NOT NULL,
  `idModule` int(11) NOT NULL,
  PRIMARY KEY (`idStage`,`idModule`),
  KEY `idModule` (`idModule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `constituer`
--

INSERT INTO `constituer` (`idStage`, `idModule`) VALUES
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(3, 2),
(3, 3),
(4, 7),
(4, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `idCours` int(11) NOT NULL AUTO_INCREMENT,
  `dateCoursD` datetime DEFAULT NULL,
  `dateCoursF` datetime DEFAULT NULL,
  `idtypeCours` int(11) NOT NULL,
  `idP` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  PRIMARY KEY (`idCours`),
  KEY `idtypeCours` (`idtypeCours`),
  KEY `idP` (`idP`),
  KEY `idSalle` (`idSalle`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`idCours`, `dateCoursD`, `dateCoursF`, `idtypeCours`, `idP`, `idSalle`) VALUES
(1, '2022-11-14 10:00:00', '2022-11-14 12:00:00', 1, 2, 1),
(2, '2022-11-14 14:00:00', '2022-11-14 16:00:00', 1, 2, 1),
(3, '2022-12-11 08:00:00', '2022-12-11 12:00:00', 2, 1, 2),
(4, '2022-11-16 14:00:00', '2022-11-16 18:00:00', 3, 2, 6),
(5, '2022-11-17 14:00:00', '2022-11-17 18:00:00', 3, 2, 6),
(6, '2022-12-14 16:00:00', '2022-12-14 18:00:00', 1, 2, 1),
(7, '2022-12-15 10:00:00', '2022-12-15 12:00:00', 2, 2, 2),
(8, '2022-12-15 14:00:00', '2022-12-15 16:00:00', 3, 2, 4),
(9, '2022-12-15 16:00:00', '2022-12-15 18:00:00', 3, 2, 4),
(10, '2022-12-12 10:00:00', '2022-12-12 12:00:00', 3, 1, 2),
(11, '2022-12-12 14:00:00', '2022-12-12 16:00:00', 3, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `diplôme`
--

DROP TABLE IF EXISTS `diplôme`;
CREATE TABLE IF NOT EXISTS `diplôme` (
  `idDiplome` int(11) NOT NULL AUTO_INCREMENT,
  `mention` varchar(10) DEFAULT NULL,
  `idS` int(11) NOT NULL,
  PRIMARY KEY (`idDiplome`),
  KEY `idS` (`idS`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `diplôme`
--

INSERT INTO `diplôme` (`idDiplome`, `mention`, `idS`) VALUES
(1, 'Assez Bien', 1),
(2, '', 1),
(3, 'Assez Bien', 3),
(4, NULL, 4),
(5, 'Très Bien', 5),
(6, 'Très Bien', 5),
(7, 'Assez Bien', 6),
(8, 'Bien', 7),
(9, NULL, 10);

-- --------------------------------------------------------

--
-- Structure de la table `dépendre`
--

DROP TABLE IF EXISTS `dépendre`;
CREATE TABLE IF NOT EXISTS `dépendre` (
  `idModule` int(11) NOT NULL,
  `idCours` int(11) NOT NULL,
  PRIMARY KEY (`idModule`,`idCours`),
  KEY `idCours` (`idCours`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dépendre`
--

INSERT INTO `dépendre` (`idModule`, `idCours`) VALUES
(4, 1),
(4, 2),
(4, 4),
(4, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(7, 3),
(9, 10),
(9, 11);

-- --------------------------------------------------------

--
-- Structure de la table `employer`
--

DROP TABLE IF EXISTS `employer`;
CREATE TABLE IF NOT EXISTS `employer` (
  `idS` int(11) NOT NULL,
  `idEntreprise` int(11) NOT NULL,
  PRIMARY KEY (`idS`,`idEntreprise`),
  KEY `idEntreprise` (`idEntreprise`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employer`
--

INSERT INTO `employer` (`idS`, `idEntreprise`) VALUES
(1, 2),
(5, 1),
(8, 3);

-- --------------------------------------------------------

--
-- Structure de la table `enseigner`
--

DROP TABLE IF EXISTS `enseigner`;
CREATE TABLE IF NOT EXISTS `enseigner` (
  `idP` int(11) NOT NULL,
  `idModule` int(11) NOT NULL,
  PRIMARY KEY (`idP`,`idModule`),
  KEY `idModule` (`idModule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseigner`
--

INSERT INTO `enseigner` (`idP`, `idModule`) VALUES
(1, 7),
(1, 9),
(2, 4),
(2, 5),
(2, 6),
(3, 8),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `idEntreprise` int(11) NOT NULL AUTO_INCREMENT,
  `nomEntreprise` varchar(20) DEFAULT NULL,
  `secteurEntreprise` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idEntreprise`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`idEntreprise`, `nomEntreprise`, `secteurEntreprise`) VALUES
(1, 'Meca\'Now', 'Automobile'),
(2, 'Tiakor', 'Informatique'),
(3, 'Neviam', 'Livraison');

-- --------------------------------------------------------

--
-- Structure de la table `etre_de_types`
--

DROP TABLE IF EXISTS `etre_de_types`;
CREATE TABLE IF NOT EXISTS `etre_de_types` (
  `idStage` int(11) NOT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`idStage`,`idType`),
  KEY `idType` (`idType`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etre_de_types`
--

INSERT INTO `etre_de_types` (`idStage`, `idType`) VALUES
(1, 5),
(1, 7),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `etre_présent`
--

DROP TABLE IF EXISTS `etre_présent`;
CREATE TABLE IF NOT EXISTS `etre_présent` (
  `idS` int(11) NOT NULL,
  `idCours` int(11) NOT NULL,
  `présence` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idS`,`idCours`),
  KEY `idCours` (`idCours`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etre_présent`
--

INSERT INTO `etre_présent` (`idS`, `idCours`, `présence`) VALUES
(1, 1, 2),
(1, 2, 1),
(1, 4, 1),
(1, 5, 1),
(2, 1, 1),
(2, 2, 0),
(3, 5, 1),
(2, 4, 1),
(2, 5, 1),
(3, 1, 1),
(3, 2, 1),
(3, 4, 0),
(2, 6, 1),
(2, 7, 1),
(2, 8, 1),
(2, 9, 1);

-- --------------------------------------------------------

--
-- Structure de la table `examen`
--

DROP TABLE IF EXISTS `examen`;
CREATE TABLE IF NOT EXISTS `examen` (
  `idExamen` int(11) NOT NULL AUTO_INCREMENT,
  `dateExamenD` datetime DEFAULT NULL,
  `dateExamenF` datetime DEFAULT NULL,
  `idSession` int(11) NOT NULL,
  `idSalle` int(11) NOT NULL,
  PRIMARY KEY (`idExamen`),
  KEY `idSession` (`idSession`),
  KEY `idSalle` (`idSalle`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `examen`
--

INSERT INTO `examen` (`idExamen`, `dateExamenD`, `dateExamenF`, `idSession`, `idSalle`) VALUES
(1, '2022-11-24 08:00:00', '2022-11-24 12:00:00', 1, 2),
(2, '2022-12-02 08:00:00', '2022-12-02 12:00:00', 2, 1),
(5, '2022-11-24 08:00:00', '2022-11-24 12:00:00', 5, 1),
(3, '2022-12-02 08:00:00', '2022-12-02 12:00:00', 3, 2),
(4, '2022-12-22 08:00:00', '2022-12-22 12:00:00', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE IF NOT EXISTS `modules` (
  `idModule` int(11) NOT NULL AUTO_INCREMENT,
  `nomModule` varchar(50) DEFAULT NULL,
  `nbCm` int(11) DEFAULT NULL,
  `nbTd` int(11) DEFAULT NULL,
  `nbTP` int(11) DEFAULT NULL,
  `idType` int(11) NOT NULL,
  PRIMARY KEY (`idModule`),
  KEY `idType` (`idType`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`idModule`, `nomModule`, `nbCm`, `nbTd`, `nbTP`, `idType`) VALUES
(9, 'Entraînement Physique', 2, 2, 6, 2),
(8, 'Santé', 4, 4, 2, 4),
(7, 'Règlement sportif', 4, 4, 2, 2),
(6, 'Langage C', 2, 2, 6, 1),
(5, 'Algorithmique', 2, 4, 4, 3),
(4, 'Langage Java', 2, 2, 6, 1),
(3, 'Langage SQL', 2, 2, 6, 1),
(2, 'Algèbre Relationnelle', 2, 4, 4, 3),
(1, 'Méthode Merise', 2, 4, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

DROP TABLE IF EXISTS `niveau`;
CREATE TABLE IF NOT EXISTS `niveau` (
  `idNiveau` int(11) NOT NULL AUTO_INCREMENT,
  `niveau_stage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idNiveau`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`idNiveau`, `niveau_stage`) VALUES
(1, 'Bac'),
(2, 'Bac+1'),
(3, 'Bac+2'),
(4, 'Bac+3'),
(5, 'Bac+4'),
(6, 'Bac+5');

-- --------------------------------------------------------

--
-- Structure de la table `passer`
--

DROP TABLE IF EXISTS `passer`;
CREATE TABLE IF NOT EXISTS `passer` (
  `idS` int(11) NOT NULL,
  `idExamen` int(11) NOT NULL,
  `présence` tinyint(1) DEFAULT NULL,
  `note` double DEFAULT NULL,
  PRIMARY KEY (`idS`,`idExamen`),
  KEY `idExamen` (`idExamen`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `passer`
--

INSERT INTO `passer` (`idS`, `idExamen`, `présence`, `note`) VALUES
(1, 1, 1, 12.5),
(1, 4, 1, 12.5),
(2, 1, 1, 9.5),
(3, 1, 0, NULL),
(3, 4, 1, 12.5),
(4, 2, 1, 11.25),
(5, 2, 1, 17.5),
(5, 4, 1, 18),
(6, 2, 0, NULL),
(6, 4, 1, 12),
(7, 3, 0, NULL),
(7, 4, 1, 14.25),
(8, 3, 1, 8.25),
(9, 5, 1, 7.25),
(10, 5, 1, 10.5);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

DROP TABLE IF EXISTS `professeur`;
CREATE TABLE IF NOT EXISTS `professeur` (
  `idP` int(11) NOT NULL AUTO_INCREMENT,
  `NomP` varchar(20) DEFAULT NULL,
  `salaireP` int(11) DEFAULT NULL,
  `PrenomP` varchar(20) DEFAULT NULL,
  `SpécialitéP` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`idP`, `NomP`, `salaireP`, `PrenomP`, `SpécialitéP`) VALUES
(1, 'Mourinho', 2500, 'Jose', 'Sport'),
(2, 'Galtier', 2400, 'Christophe', 'Algorithmique'),
(3, 'Bonnet', 2500, 'Sophie', 'Biologie'),
(4, 'Molina ', 2400, 'Verónica ', 'Langues'),
(5, 'Duval', 2400, 'Antoine', 'Data');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `idSalle` int(11) NOT NULL AUTO_INCREMENT,
  `etageSalle` int(11) NOT NULL,
  PRIMARY KEY (`idSalle`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`idSalle`, `etageSalle`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(5, 0),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

DROP TABLE IF EXISTS `session`;
CREATE TABLE IF NOT EXISTS `session` (
  `idSession` int(11) NOT NULL AUTO_INCREMENT,
  `debutSession` date DEFAULT NULL,
  `finSession` date DEFAULT NULL,
  `nbplace` int(11) DEFAULT NULL,
  `idStage` int(11) NOT NULL,
  PRIMARY KEY (`idSession`),
  KEY `idStage` (`idStage`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`idSession`, `debutSession`, `finSession`, `nbplace`, `idStage`) VALUES
(1, '2022-11-14', '2022-11-25', 20, 2),
(2, '2022-11-21', '2022-12-02', 20, 2),
(3, '2022-11-28', '2022-12-02', 10, 1),
(4, '2022-12-11', '2022-12-22', 5, 4),
(5, '2022-11-21', '2022-11-25', 20, 3);

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

DROP TABLE IF EXISTS `stage`;
CREATE TABLE IF NOT EXISTS `stage` (
  `idStage` int(11) NOT NULL AUTO_INCREMENT,
  `intituléS` varchar(50) DEFAULT NULL,
  `idNiveau` int(11) NOT NULL,
  PRIMARY KEY (`idStage`),
  KEY `idNiveau` (`idNiveau`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`idStage`, `intituléS`, `idNiveau`) VALUES
(4, 'Arbitrage dans le football', 1),
(3, 'Base de données avancées', 4),
(2, 'Introduction à l\'algorithmique', 1),
(1, 'Littérature Anglaise', 2);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaire`
--

DROP TABLE IF EXISTS `stagiaire`;
CREATE TABLE IF NOT EXISTS `stagiaire` (
  `idS` int(11) NOT NULL AUTO_INCREMENT,
  `NomS` varchar(20) DEFAULT NULL,
  `PrénomS` varchar(20) DEFAULT NULL,
  `DatedeNaissanceS` date DEFAULT NULL,
  `professionStagiaire` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idS`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `stagiaire`
--

INSERT INTO `stagiaire` (`idS`, `NomS`, `PrénomS`, `DatedeNaissanceS`, `professionStagiaire`) VALUES
(1, 'Carpentier ', 'Lison ', '2003-09-05', 'Informaticienne'),
(2, 'Michel ', 'Cassandre ', '1992-02-05', NULL),
(3, 'Marie ', 'Corentin ', '1998-12-20', NULL),
(4, 'Guillaume ', 'Raphaëlle ', '1995-11-14', NULL),
(5, 'Lompech ', 'Julien ', '2000-08-09', 'Mécanicien'),
(6, 'Clavel ', 'Mathys ', '2002-11-13', NULL),
(7, 'Renaud ', 'Anatole ', '1992-05-26', NULL),
(8, 'Lemaire ', 'Paul', '2001-02-28', 'Livreur'),
(9, 'Caron ', 'Elina ', '2003-12-21', NULL),
(10, 'Garnier ', 'Iris ', '1994-05-09', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `s_inscrire`
--

DROP TABLE IF EXISTS `s_inscrire`;
CREATE TABLE IF NOT EXISTS `s_inscrire` (
  `idS` int(11) NOT NULL,
  `idSession` int(11) NOT NULL,
  `prixInscription` int(11) DEFAULT NULL,
  PRIMARY KEY (`idS`,`idSession`),
  KEY `idSession` (`idSession`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `s_inscrire`
--

INSERT INTO `s_inscrire` (`idS`, `idSession`, `prixInscription`) VALUES
(1, 1, 300),
(2, 1, 400),
(3, 1, 400),
(4, 2, 400),
(5, 2, 300),
(6, 2, 400),
(7, 3, 400),
(8, 3, 300),
(9, 5, 400),
(10, 5, 400),
(1, 4, 300),
(3, 4, 400),
(5, 4, 300),
(6, 4, 400),
(7, 4, 400),
(7, 1, 400),
(7, 5, 400),
(7, 2, 400);

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `idType` int(11) NOT NULL AUTO_INCREMENT,
  `typeStage` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idType`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `type`
--

INSERT INTO `type` (`idType`, `typeStage`) VALUES
(1, 'Informatique'),
(2, 'Sport'),
(3, 'Mathématiques'),
(4, 'Sciences Naturelles'),
(5, 'Littérature'),
(6, 'Mécanique'),
(7, 'Anglais'),
(8, 'Espagnol');

-- --------------------------------------------------------

--
-- Structure de la table `typecours`
--

DROP TABLE IF EXISTS `typecours`;
CREATE TABLE IF NOT EXISTS `typecours` (
  `idtypeCours` int(11) NOT NULL AUTO_INCREMENT,
  `typeCours` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idtypeCours`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typecours`
--

INSERT INTO `typecours` (`idtypeCours`, `typeCours`) VALUES
(1, 'CM'),
(2, 'TD'),
(3, 'TP');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
