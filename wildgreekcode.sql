-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 14 déc. 2021 à 19:17
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wildgreekcode`
--

-- --------------------------------------------------------

--
-- Structure de la table `papyrus`
--

CREATE TABLE `papyrus` (
  `id_argo` int(11) NOT NULL,
  `nom_argo` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `papyrus`
--

INSERT INTO `papyrus` (`id_argo`, `nom_argo`) VALUES
(1, 'Castor'),
(2, 'Pollux'),
(3, 'Heracles'),
(4, 'Erginos'),
(5, 'Euryale'),
(6, 'Hylas'),
(7, 'Lysimachos'),
(8, 'Charalampos'),
(9, 'Eleftheria'),
(10, 'Gennadios'),
(11, 'Acaste'),
(12, 'AdmÃ¨te'),
(13, 'Amphiaraos'),
(14, 'Amphidamas'),
(15, 'AncÃ©e'),
(16, 'Amphion '),
(17, 'Actor '),
(18, 'Argos'),
(19, 'Atalante'),
(20, 'ZÃ©tÃ¨s'),
(21, 'TydÃ©e'),
(22, 'Canthos'),
(23, 'Clytios'),
(24, 'Coronos'),
(25, 'ClymÃ©nos'),
(26, 'Deucalion'),
(27, 'Ã‰chion'),
(28, 'Erginos'),
(29, 'Ã‰ribotÃ¨s'),
(30, 'Ã‰thalidÃ¨s'),
(31, 'EuphÃ©mos'),
(32, 'Eurydamas'),
(33, 'EurymÃ©don'),
(34, 'Eurytion'),
(35, 'Hippalcimos'),
(36, 'IalmÃ¨ne'),
(37, 'Idas'),
(38, 'Idmon'),
(39, 'Iolaos'),
(40, 'IphiclÃ¨s'),
(41, 'Iphis'),
(42, 'Iphitos'),
(43, 'Lacoon'),
(44, 'LaÃ«rte'),
(45, 'LÃ©itos'),
(46, 'LÃ©odocos'),
(47, 'LyncÃ©e'),
(48, 'MÃ©lÃ©agre'),
(49, 'MÃ©nÃ©tios'),
(50, 'Mopsos ');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `papyrus`
--
ALTER TABLE `papyrus`
  ADD PRIMARY KEY (`id_argo`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `papyrus`
--
ALTER TABLE `papyrus`
  MODIFY `id_argo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
