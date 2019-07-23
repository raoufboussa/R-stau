-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le: Dim 21 Juillet 2019 à 17:47
-- Version du serveur: 5.6.11-log
-- Version de PHP: 5.4.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `restauration`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE IF NOT EXISTS `absence` (
  `ID_ABSENCE` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL,
  `DATE_ABSENCE` date DEFAULT NULL,
  `JUSTUFICATION` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_ABSENCE`),
  KEY `FK_ASSOCIATION_7` (`ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `achat_ingredient`
--

CREATE TABLE IF NOT EXISTS `achat_ingredient` (
  `ID_INGREDIENT` int(11) NOT NULL,
  `ID_FOURNISSEUR` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL,
  `DATE_ACHAT` date DEFAULT NULL,
  `QUANTITE_ACHAT` int(11) DEFAULT NULL,
  `PRIX_ACHAT` float DEFAULT NULL,
  PRIMARY KEY (`ID_INGREDIENT`,`ID_FOURNISSEUR`,`ID_PERSONNE`),
  KEY `FK_ACHAT_INGREDIENT` (`ID_FOURNISSEUR`),
  KEY `FK_ACHAT_INGREDIENT3` (`ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `demande`
--

CREATE TABLE IF NOT EXISTS `demande` (
  `ID_PERSONNE` int(11) NOT NULL,
  `ID_PLAT` int(11) NOT NULL,
  `ID_TABLE` int(11) NOT NULL,
  `DATE_DEMANDE` datetime DEFAULT NULL,
  `etat_demande` int(11) NOT NULL,
  PRIMARY KEY (`ID_PERSONNE`,`ID_PLAT`,`ID_TABLE`),
  KEY `FK_DEMANDE` (`ID_TABLE`),
  KEY `FK_DEMANDE3` (`ID_PLAT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE IF NOT EXISTS `fournisseur` (
  `ID_FOURNISSEUR` int(11) NOT NULL,
  `NOM_FOURNISSEUR` varchar(50) DEFAULT NULL,
  `PRENOM_FOURNISSUER` varchar(50) DEFAULT NULL,
  `NUM_TLFN` varchar(10) DEFAULT NULL,
  `ADRESSE_FOURNISSEUR` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_FOURNISSEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur_ingredient`
--

CREATE TABLE IF NOT EXISTS `fournisseur_ingredient` (
  `ID_INGREDIENT` int(11) NOT NULL,
  `ID_FOURNISSEUR` int(11) NOT NULL,
  `PRIX_FOURNISSEUR` float DEFAULT NULL,
  PRIMARY KEY (`ID_INGREDIENT`,`ID_FOURNISSEUR`),
  KEY `FK_FOURNISSEUR_INGREDIENT` (`ID_FOURNISSEUR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `ID_INGREDIENT` int(11) NOT NULL,
  `NOM_INGREDIENT` varchar(50) DEFAULT NULL,
  `QUANTITE_INGREDIANT` float DEFAULT NULL,
  `QUANTITE_MAX` float DEFAULT NULL,
  `QUANTITE_MIN` float DEFAULT NULL,
  `UNITE_INGREDIENT` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_INGREDIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ingredient_plat`
--

CREATE TABLE IF NOT EXISTS `ingredient_plat` (
  `ID_PLAT` int(11) NOT NULL,
  `ID_INGREDIENT` int(11) NOT NULL,
  `QUANTITE_INGREDIENT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PLAT`,`ID_INGREDIENT`),
  KEY `FK_INGREDIENT_PLAT` (`ID_INGREDIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `ID_MENU` date NOT NULL,
  `PARTICULARITE_MENU` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_MENU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `menu_plat`
--

CREATE TABLE IF NOT EXISTS `menu_plat` (
  `ID_PLAT` int(11) NOT NULL,
  `ID_MENU` date NOT NULL,
  `QUANTITE_PLAT` int(11) DEFAULT NULL,
  `REMISE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PLAT`,`ID_MENU`),
  KEY `FK_MENU_PLAT` (`ID_MENU`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `ID_PERSONNE` int(11) NOT NULL,
  `PER_ID_PERSONNE` int(11) NOT NULL,
  `MESSAGE` varchar(500) DEFAULT NULL,
  `TIME_MSG` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID_PERSONNE`,`PER_ID_PERSONNE`,`TIME_MSG`),
  KEY `FK_MESSAGE` (`PER_ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE IF NOT EXISTS `offre` (
  `ID_OFFRE` int(11) NOT NULL,
  `POINT_MIN` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_OFFRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE IF NOT EXISTS `paiement` (
  `ID_PAIEMENT` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL,
  `DATE_PAIEMENT` date DEFAULT NULL,
  `SOMME_PAIMENT` float DEFAULT NULL,
  `TYPE_PAIEMENT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_PAIEMENT`),
  KEY `FK_ASSOCIATION_8` (`ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE IF NOT EXISTS `personne` (
  `ID_PERSONNE` int(11) NOT NULL,
  `NOM_PERSONNE` varchar(50) DEFAULT NULL,
  `PRENOM_PERSONNE` varchar(50) DEFAULT NULL,
  `ADRESSE_PERSONNE` varchar(200) DEFAULT NULL,
  `ADRESSE_EMAIL` varchar(150) DEFAULT NULL,
  `NUM_TELEPHONE` varchar(10) DEFAULT NULL,
  `TYPE_PERSONNE` int(11) DEFAULT NULL,
  `POINT_GAGNE` int(11) DEFAULT NULL,
  `NOM_UTILISATEUR` varchar(50) DEFAULT NULL,
  `MOT_PASS` varchar(50) DEFAULT NULL,
  `SALIRE` float DEFAULT NULL,
  `IMAGE_PERSONNE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_PERSONNE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `plat`
--

CREATE TABLE IF NOT EXISTS `plat` (
  `ID_PLAT` int(11) NOT NULL,
  `ID_OFFRE` int(11) DEFAULT NULL,
  `NOM_PLAT` varchar(50) DEFAULT NULL,
  `PRIX_PLAT` float DEFAULT NULL,
  `TYPES_PLAT` varchar(50) DEFAULT NULL,
  `POINT_PLAT` int(11) DEFAULT NULL,
  `IMAGE_PLAT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_PLAT`),
  KEY `FK_ASSOCIATION_3` (`ID_OFFRE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tablee`
--

CREATE TABLE IF NOT EXISTS `tablee` (
  `ID_TABLE` int(11) NOT NULL,
  `NOMBRE_CHAISE` int(11) DEFAULT NULL,
  `PARTICULARITE_TABLE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_TABLE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `FK_ASSOCIATION_7` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `personne` (`ID_PERSONNE`);

--
-- Contraintes pour la table `achat_ingredient`
--
ALTER TABLE `achat_ingredient`
  ADD CONSTRAINT `FK_ACHAT_INGREDIENT3` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `personne` (`ID_PERSONNE`),
  ADD CONSTRAINT `FK_ACHAT_INGREDIENT` FOREIGN KEY (`ID_FOURNISSEUR`) REFERENCES `fournisseur` (`ID_FOURNISSEUR`),
  ADD CONSTRAINT `FK_ACHAT_INGREDIENT2` FOREIGN KEY (`ID_INGREDIENT`) REFERENCES `ingredient` (`ID_INGREDIENT`);

--
-- Contraintes pour la table `demande`
--
ALTER TABLE `demande`
  ADD CONSTRAINT `FK_DEMANDE` FOREIGN KEY (`ID_TABLE`) REFERENCES `tablee` (`ID_TABLE`),
  ADD CONSTRAINT `FK_DEMANDE2` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `personne` (`ID_PERSONNE`),
  ADD CONSTRAINT `FK_DEMANDE3` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`);

--
-- Contraintes pour la table `fournisseur_ingredient`
--
ALTER TABLE `fournisseur_ingredient`
  ADD CONSTRAINT `FK_FOURNISSEUR_INGREDIENT2` FOREIGN KEY (`ID_INGREDIENT`) REFERENCES `ingredient` (`ID_INGREDIENT`),
  ADD CONSTRAINT `FK_FOURNISSEUR_INGREDIENT` FOREIGN KEY (`ID_FOURNISSEUR`) REFERENCES `fournisseur` (`ID_FOURNISSEUR`);

--
-- Contraintes pour la table `ingredient_plat`
--
ALTER TABLE `ingredient_plat`
  ADD CONSTRAINT `FK_INGREDIENT_PLAT2` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`),
  ADD CONSTRAINT `FK_INGREDIENT_PLAT` FOREIGN KEY (`ID_INGREDIENT`) REFERENCES `ingredient` (`ID_INGREDIENT`);

--
-- Contraintes pour la table `menu_plat`
--
ALTER TABLE `menu_plat`
  ADD CONSTRAINT `FK_MENU_PLAT2` FOREIGN KEY (`ID_PLAT`) REFERENCES `plat` (`ID_PLAT`),
  ADD CONSTRAINT `FK_MENU_PLAT` FOREIGN KEY (`ID_MENU`) REFERENCES `menu` (`ID_MENU`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_MESSAGE2` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `personne` (`ID_PERSONNE`),
  ADD CONSTRAINT `FK_MESSAGE` FOREIGN KEY (`PER_ID_PERSONNE`) REFERENCES `personne` (`ID_PERSONNE`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `FK_ASSOCIATION_8` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `personne` (`ID_PERSONNE`);

--
-- Contraintes pour la table `plat`
--
ALTER TABLE `plat`
  ADD CONSTRAINT `FK_ASSOCIATION_3` FOREIGN KEY (`ID_OFFRE`) REFERENCES `offre` (`ID_OFFRE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
