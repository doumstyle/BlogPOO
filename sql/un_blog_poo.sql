-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 31 mars 2025 à 09:41
-- Version du serveur : 8.0.30
-- Version de PHP : 8.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `un_blog_poo`
--
CREATE DATABASE IF NOT EXISTS `un_blog_poo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `un_blog_poo`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date_creation` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_modification` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `contenu`, `date_creation`, `date_modification`, `photo`) VALUES
(1, 'Découverte de la programmation PHP', 'La programmation PHP est un excellent moyen de créer des sites web dynamiques et interactifs.', '2025-01-01 00:00:00', NULL, 'image1.jpg'),
(2, 'Introduction à la programmation orientée objet', 'La POO est un concept clé dans le développement de logiciels modernes. Apprenez comment organiser votre code avec des objets.', '2025-01-02 00:00:00', NULL, 'image2.jpg'),
(3, 'Les bases du HTML et CSS', 'HTML et CSS sont les briques fondamentales pour construire des pages web modernes. Découvrez les bases pour commencer à créer votre site.', '2025-01-03 00:00:00', NULL, 'image3.jpg'),
(4, 'Les tendances du web en 2025', 'Le monde du web évolue rapidement. En 2025, le design responsive et l\'intelligence artificielle devraient dominer les sites web.', '2025-01-04 00:00:00', NULL, 'image4.jpg'),
(5, 'Comprendre le JavaScript pour les débutants', 'JavaScript est un langage puissant qui permet d\'ajouter de l\'interactivité à vos pages web. Voici comment débuter.', '2025-01-05 00:00:00', NULL, 'image5.jpg'),
(6, 'SEO : Optimiser votre site pour les moteurs de recherche', 'Le SEO est crucial pour améliorer la visibilité de votre site sur Google. Découvrez quelques stratégies efficaces pour optimiser votre site.', '2025-01-06 00:00:00', NULL, 'image6.jpg'),
(7, 'Introduction à la gestion des bases de données', 'Les bases de données sont essentielles pour stocker les informations de vos applications. Apprenez les bases du SQL et de la gestion des bases de données.', '2025-01-07 00:00:00', NULL, 'image7.jpg'),
(8, 'Les frameworks PHP populaires à connaître', 'Laravel, Symfony et CodeIgniter sont parmi les frameworks PHP les plus utilisés. Apprenez à choisir celui qui correspond à vos besoins.', '2025-01-08 00:00:00', NULL, 'image8.jpg'),
(9, 'Développer des applications web sécurisées', 'La sécurité est une priorité pour tout développeur web. Découvrez les meilleures pratiques pour sécuriser vos applications.', '2025-01-09 00:00:00', NULL, 'image9.jpg'),
(10, 'Le futur de l\'intelligence artificielle', 'L\'IA transforme le monde du développement web. Découvrez les dernières innovations et comment les intégrer dans vos projets.', '2025-01-10 00:00:00', '2025-01-25 19:20:42', 'image10.jpg'),
(11, 'Les bases de la programmation orientée objet', 'Découvrez les concepts fondamentaux de la POO, comme les classes, les objets, l\'héritage et l\'encapsulation.', '2025-01-26 13:40:07', '2025-01-26 13:41:04', 'image11.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
