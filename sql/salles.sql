-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 06 fév. 2018 à 17:26
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `salles`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_reservations`
--

CREATE TABLE `t_reservations` (
  `ID_RES` int(11) NOT NULL,
  `USER_NAME` varchar(125) DEFAULT NULL,
  `RES-HOUR` datetime DEFAULT NULL,
  `t_salles_ID_SALLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_salles`
--

CREATE TABLE `t_salles` (
  `ID_SALLE` int(11) NOT NULL,
  `SAL_NAME` varchar(45) DEFAULT NULL,
  `SAL_PLACES` int(11) DEFAULT NULL,
  `SAL_ELEC` int(11) DEFAULT NULL,
  `SAL_OPEN` datetime DEFAULT NULL,
  `SAL_CLOSE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_reservations`
--
ALTER TABLE `t_reservations`
  ADD PRIMARY KEY (`ID_RES`,`t_salles_ID_SALLE`),
  ADD KEY `fk_t_reservations_t_salles_idx` (`t_salles_ID_SALLE`);

--
-- Index pour la table `t_salles`
--
ALTER TABLE `t_salles`
  ADD PRIMARY KEY (`ID_SALLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_reservations`
--
ALTER TABLE `t_reservations`
  MODIFY `ID_RES` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_salles`
--
ALTER TABLE `t_salles`
  MODIFY `ID_SALLE` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_reservations`
--
ALTER TABLE `t_reservations`
  ADD CONSTRAINT `fk_t_reservations_t_salles` FOREIGN KEY (`t_salles_ID_SALLE`) REFERENCES `t_salles` (`ID_SALLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
