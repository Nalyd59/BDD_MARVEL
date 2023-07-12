-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 12 juil. 2023 à 23:08
-- Version du serveur : 8.0.29
-- Version de PHP : 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `Acteurs`
--

CREATE TABLE `Acteurs` (
  `Acteur_id_Acteur` int NOT NULL,
  `Nom_Acteur` varchar(50) DEFAULT NULL,
  `Prenom_Acteur` varchar(50) DEFAULT NULL,
  `Birthday_Acteur` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Acteurs`
--

INSERT INTO `Acteurs` (`Acteur_id_Acteur`, `Nom_Acteur`, `Prenom_Acteur`, `Birthday_Acteur`) VALUES
(1, 'Maguire', 'Tobey', '1975-06-27'),
(2, 'Norton', 'Edward', '1969-08-18'),
(3, 'Pratt', 'Chris', '1979-06-21'),
(4, 'Cumberbatch', 'Benedict', '1976-07-19'),
(5, 'Boseman', 'Chadwick', '1976-11-29'),
(6, 'Chan', 'Gemma', '1982-11-29');

-- --------------------------------------------------------

--
-- Structure de la table `Acteur_film`
--

CREATE TABLE `Acteur_film` (
  `Film_id_Film` int NOT NULL,
  `Acteur_id_Acteur` int NOT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Acteur_film`
--

INSERT INTO `Acteur_film` (`Film_id_Film`, `Acteur_id_Acteur`, `Role`) VALUES
(1, 1, 'Peter Parker'),
(2, 2, 'Hulk'),
(3, 3, 'Peter Quill / Star-Lord'),
(4, 4, 'Dr. Stephen Strange'),
(5, 5, 'T\'Challa / Black Panther'),
(6, 6, 'Sersi');

-- --------------------------------------------------------

--
-- Structure de la table `Film`
--

CREATE TABLE `Film` (
  `Film_id_Film` int NOT NULL,
  `Titre_Film` varchar(50) DEFAULT NULL,
  `Durée_Film` time DEFAULT NULL,
  `Année_Film` year DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Film`
--

INSERT INTO `Film` (`Film_id_Film`, `Titre_Film`, `Durée_Film`, `Année_Film`) VALUES
(1, 'Spiderman', '02:02:00', 2002),
(2, 'HULK', '01:52:00', 2008),
(3, 'Les Gardiens de la Galaxie', '02:01:00', 2014),
(4, 'Doctor Strange', '01:55:00', 2016),
(5, 'Black Panther', '02:14:00', 2018),
(6, 'Les Éternels', '02:36:00', 2021),
(7, 'Les Avengers', '02:23:00', 2012);

-- --------------------------------------------------------

--
-- Structure de la table `Films_préféré`
--

CREATE TABLE `Films_préféré` (
  `Utilisateur_id_Utilisateurs` int NOT NULL,
  `Film_id_Film` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `Réalisateurs`
--

CREATE TABLE `Réalisateurs` (
  `Réalisateur_id_Réalisateurs` int NOT NULL,
  `Nom_Réalisateurs` varchar(50) DEFAULT NULL,
  `Prenom_Réalisateurs` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Réalisateurs`
--

INSERT INTO `Réalisateurs` (`Réalisateur_id_Réalisateurs`, `Nom_Réalisateurs`, `Prenom_Réalisateurs`) VALUES
(1, 'Raimi', 'Sam'),
(2, 'Leterrier', 'Louis'),
(3, 'Gunn', 'James'),
(4, 'Derrickson', 'Scott'),
(5, 'Coogler', 'Ryan'),
(6, 'Zhao', 'Chloé');

-- --------------------------------------------------------

--
-- Structure de la table `Réalisateur_film`
--

CREATE TABLE `Réalisateur_film` (
  `Film_id_Film` int NOT NULL,
  `Réalisateur_id_Réalisateurs` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Réalisateur_film`
--

INSERT INTO `Réalisateur_film` (`Film_id_Film`, `Réalisateur_id_Réalisateurs`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateurs`
--

CREATE TABLE `Utilisateurs` (
  `Utilisateur_id_Utilisateurs` int NOT NULL,
  `Nom_Utilisateurs` varchar(50) DEFAULT NULL,
  `Prenom_Utilisateurs` varchar(50) DEFAULT NULL,
  `Email_Utilisateurs` varchar(100) DEFAULT NULL,
  `Password_Utilisateurs` varchar(100) DEFAULT NULL,
  `RoleUser_Utilisateurs` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `Utilisateurs`
--

INSERT INTO `Utilisateurs` (`Utilisateur_id_Utilisateurs`, `Nom_Utilisateurs`, `Prenom_Utilisateurs`, `Email_Utilisateurs`, `Password_Utilisateurs`, `RoleUser_Utilisateurs`) VALUES
(1, 'Dupont', 'Patrick', 'Patrick.dupont@gmail.com', 'sautedupont', 'visiteur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Acteurs`
--
ALTER TABLE `Acteurs`
  ADD PRIMARY KEY (`Acteur_id_Acteur`);

--
-- Index pour la table `Acteur_film`
--
ALTER TABLE `Acteur_film`
  ADD PRIMARY KEY (`Film_id_Film`,`Acteur_id_Acteur`),
  ADD KEY `FK_Acteur_film_Acteur_id_Acteur` (`Acteur_id_Acteur`);

--
-- Index pour la table `Film`
--
ALTER TABLE `Film`
  ADD PRIMARY KEY (`Film_id_Film`);

--
-- Index pour la table `Films_préféré`
--
ALTER TABLE `Films_préféré`
  ADD PRIMARY KEY (`Utilisateur_id_Utilisateurs`,`Film_id_Film`),
  ADD KEY `FK_Films_préféré_Film_id_Film` (`Film_id_Film`);

--
-- Index pour la table `Réalisateurs`
--
ALTER TABLE `Réalisateurs`
  ADD PRIMARY KEY (`Réalisateur_id_Réalisateurs`);

--
-- Index pour la table `Réalisateur_film`
--
ALTER TABLE `Réalisateur_film`
  ADD PRIMARY KEY (`Film_id_Film`,`Réalisateur_id_Réalisateurs`),
  ADD KEY `FK_Réalisateur_film_Réalisateur_id_Réalisateurs` (`Réalisateur_id_Réalisateurs`);

--
-- Index pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  ADD PRIMARY KEY (`Utilisateur_id_Utilisateurs`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Acteurs`
--
ALTER TABLE `Acteurs`
  MODIFY `Acteur_id_Acteur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Acteur_film`
--
ALTER TABLE `Acteur_film`
  MODIFY `Film_id_Film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Film`
--
ALTER TABLE `Film`
  MODIFY `Film_id_Film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `Films_préféré`
--
ALTER TABLE `Films_préféré`
  MODIFY `Utilisateur_id_Utilisateurs` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Réalisateurs`
--
ALTER TABLE `Réalisateurs`
  MODIFY `Réalisateur_id_Réalisateurs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Réalisateur_film`
--
ALTER TABLE `Réalisateur_film`
  MODIFY `Film_id_Film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `Utilisateurs`
--
ALTER TABLE `Utilisateurs`
  MODIFY `Utilisateur_id_Utilisateurs` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Acteur_film`
--
ALTER TABLE `Acteur_film`
  ADD CONSTRAINT `FK_Acteur_film_Acteur_id_Acteur` FOREIGN KEY (`Acteur_id_Acteur`) REFERENCES `Acteurs` (`Acteur_id_Acteur`),
  ADD CONSTRAINT `FK_Acteur_film_Film_id_Film` FOREIGN KEY (`Film_id_Film`) REFERENCES `Film` (`Film_id_Film`);

--
-- Contraintes pour la table `Films_préféré`
--
ALTER TABLE `Films_préféré`
  ADD CONSTRAINT `FK_Films_préféré_Film_id_Film` FOREIGN KEY (`Film_id_Film`) REFERENCES `Film` (`Film_id_Film`),
  ADD CONSTRAINT `FK_Films_préféré_Utilisateur_id_Utilisateurs` FOREIGN KEY (`Utilisateur_id_Utilisateurs`) REFERENCES `Utilisateurs` (`Utilisateur_id_Utilisateurs`);

--
-- Contraintes pour la table `Réalisateur_film`
--
ALTER TABLE `Réalisateur_film`
  ADD CONSTRAINT `FK_Réalisateur_film_Film_id_Film` FOREIGN KEY (`Film_id_Film`) REFERENCES `Film` (`Film_id_Film`),
  ADD CONSTRAINT `FK_Réalisateur_film_Réalisateur_id_Réalisateurs` FOREIGN KEY (`Réalisateur_id_Réalisateurs`) REFERENCES `Réalisateurs` (`Réalisateur_id_Réalisateurs`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
