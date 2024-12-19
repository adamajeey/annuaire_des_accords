-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 19 déc. 2024 à 10:24
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `annuaire_accord_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `accords`
--

CREATE TABLE `accords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `but` text NOT NULL,
  `initiateur` varchar(255) NOT NULL,
  `signature` date NOT NULL,
  `demande_avis` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `etat` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `date_publication` timestamp NULL DEFAULT NULL,
  `direction_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accords`
--

INSERT INTO `accords` (`id`, `numero`, `titre`, `but`, `initiateur`, `signature`, `demande_avis`, `type`, `etat`, `file`, `duree`, `date_debut`, `date_fin`, `date_publication`, `direction_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ACC-001', 'Accord de coopération avec Université Islamique de Médine', 'Echanges d’expériences, développement académique et partage de méthodes pédagogiques.', 'Université de Dakar', '2015-05-04', 'En cours', 'Cadre', 'Actif', NULL, 5, '2015-05-04', '2020-05-04', '2023-01-15 00:00:00', 1, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(2, 'ACC-002', 'Accord avec Beijing Foreign Studies University', 'Échange d’étudiants, de professeurs et de documents académiques.', 'Ministère de l’Enseignement Supérieur', '2023-03-06', 'En cours', 'Convention', 'Actif', NULL, 5, '2023-03-06', '2028-03-06', '2023-02-16 00:00:00', 2, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(3, 'ACC-003', 'Coopération avec l’Université de Tokyo', 'Recherche collaborative en sciences environnementales et échanges d’étudiants.', 'Université de Dakar', '2019-09-12', 'En cours', 'Subvention', 'Actif', NULL, 3, '2019-09-12', '2022-09-12', '2023-03-17 00:00:00', 3, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(4, 'ACC-004', 'Accord avec Université de Sao Paulo', 'Partenariat en sciences sociales, partage de recherches et méthodologies.', 'Ministère de la Recherche', '2020-01-15', 'En cours', 'Cadre', 'Actif', NULL, 4, '2020-01-15', '2024-01-15', '2023-04-18 00:00:00', 4, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(5, 'ACC-005', 'Accord avec l’Université de Harvard', 'Échanges académiques, recherche et développement en santé publique.', 'Université de Dakar', '2021-06-20', 'En cours', 'Convention', 'Actif', NULL, 5, '2021-06-20', '2026-06-20', '2023-05-19 00:00:00', 5, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(6, 'ACC-006', 'Partenariat avec Université de Cambridge', 'Collaboration sur la recherche en technologie et innovation.', 'Ministère de la Science et Technologie', '2018-11-02', 'En cours', 'Subvention', 'Actif', NULL, 5, '2018-11-02', '2023-11-02', '2023-06-20 00:00:00', 6, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(7, 'ACC-007', 'Accord avec Université de Lagos', 'Échanges d’étudiants et programmes d’études en sciences politiques.', 'Université de Dakar', '2017-03-18', 'Terminé', 'Cadre', 'Terminé', NULL, 5, '2017-03-18', '2022-03-18', '2023-07-21 00:00:00', 7, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(8, 'ACC-008', 'Coopération avec Université de Nairobi', 'Partage de ressources pédagogiques en sciences de l’éducation.', 'Université de Dakar', '2019-05-14', 'En cours', 'Convention', 'Actif', NULL, 5, '2019-05-14', '2024-05-14', '2023-08-22 00:00:00', 8, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(9, 'ACC-009', 'Accord avec l’Université de Queensland', 'Recherche collaborative en agriculture durable.', 'Ministère de l’Agriculture', '2022-02-10', 'En cours', 'Subvention', 'Actif', NULL, 5, '2022-02-10', '2027-02-10', '2023-09-23 00:00:00', 9, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(10, 'ACC-010', 'Accord avec Université de Cape Town', 'Programme de double diplôme en commerce international.', 'Université de Dakar', '2021-08-28', 'En cours', 'Cadre', 'Actif', NULL, 4, '2021-08-28', '2025-08-28', '2023-10-24 00:00:00', 10, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(11, 'ACC-011', 'Accord avec Université de Pékin', 'Recherche collaborative en IA et échanges de professeurs.', 'Université de Dakar', '2023-05-17', 'En cours', 'Convention', 'Actif', NULL, 5, '2023-05-17', '2028-05-17', '2023-11-25 00:00:00', 11, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(12, 'ACC-012', 'Coopération avec Université d’Addis-Abeba', 'Échanges académiques en sciences de la santé.', 'Ministère de la Santé', '2018-07-22', 'Terminé', 'Subvention', 'Terminé', NULL, 3, '2018-07-22', '2021-07-22', '2023-12-26 00:00:00', 12, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(13, 'ACC-013', 'Partenariat avec l’Université de New York', 'Recherche en développement urbain et partage de pratiques éducatives.', 'Université de Dakar', '2020-12-05', 'En cours', 'Cadre', 'Actif', NULL, 4, '2020-12-05', '2024-12-05', '2024-01-27 00:00:00', 13, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(14, 'ACC-014', 'Accord avec Université de Montréal', 'Programme de double diplôme en génie civil.', 'Ministère des Travaux Publics', '2022-09-13', 'En cours', 'Convention', 'Actif', NULL, 4, '2022-09-13', '2026-09-13', '2024-02-28 00:00:00', 14, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(15, 'ACC-015', 'Accord avec Université de Munich', 'Recherche collaborative en biotechnologie et innovation.', 'Université de Dakar', '2019-03-11', 'Terminé', 'Subvention', 'Terminé', NULL, 3, '2019-03-11', '2022-03-11', '2024-03-29 00:00:00', 15, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(16, 'ACC-016', 'Accord avec Université d’Oxford', 'Programme d’échanges en droit international.', 'Ministère de la Justice', '2021-04-08', 'En cours', 'Cadre', 'Actif', NULL, 5, '2021-04-08', '2026-04-08', '2024-04-30 00:00:00', 16, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(17, 'ACC-017', 'Partenariat avec Université de Delhi', 'Recherche sur le changement climatique et impact social.', 'Université de Dakar', '2023-08-09', 'En cours', 'Convention', 'Actif', NULL, 5, '2023-08-09', '2028-08-09', '2024-05-01 00:00:00', 17, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(18, 'ACC-018', 'Coopération avec Université de Moscou', 'Partenariat académique en sciences politiques.', 'Ministère des Affaires Étrangères', '2020-02-21', 'En cours', 'Subvention', 'Actif', NULL, 5, '2020-02-21', '2025-02-21', '2024-06-02 00:00:00', 18, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(19, 'ACC-019', 'Accord avec Université d’Amsterdam', 'Recherche en sciences sociales et échanges de ressources pédagogiques.', 'Université de Dakar', '2017-10-14', 'Terminé', 'Cadre', 'Terminé', NULL, 4, '2017-10-14', '2021-10-14', '2024-07-03 00:00:00', 19, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56'),
(20, 'ACC-020', 'Accord avec Université de Séoul', 'Programme d’échange en ingénierie et technologie de l’information.', 'Université de Dakar', '2022-01-12', 'En cours', 'Convention', 'Actif', NULL, 4, '2022-01-12', '2026-01-12', '2024-08-04 00:00:00', 20, NULL, '2024-11-05 10:14:56', '2024-11-05 10:14:56');

-- --------------------------------------------------------

--
-- Structure de la table `accord_cible`
--

CREATE TABLE `accord_cible` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `cible_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_cible`
--

INSERT INTO `accord_cible` (`id`, `accord_id`, `cible_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(2, 1, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(3, 1, 3, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(4, 2, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(5, 2, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(6, 3, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(7, 3, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(8, 4, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(9, 4, 3, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(10, 5, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(11, 5, 3, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(12, 6, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(13, 7, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(14, 8, 3, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(15, 9, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(16, 10, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(17, 11, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(18, 12, 2, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(19, 13, 3, '2024-11-05 11:36:16', '2024-11-05 11:36:16'),
(20, 14, 1, '2024-11-05 11:36:16', '2024-11-05 11:36:16');

-- --------------------------------------------------------

--
-- Structure de la table `accord_domaines`
--

CREATE TABLE `accord_domaines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `domaine_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_domaines`
--

INSERT INTO `accord_domaines` (`id`, `accord_id`, `domaine_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(2, 1, 2, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(3, 2, 1, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(4, 2, 3, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(5, 3, 2, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(6, 4, 4, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(7, 4, 5, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(8, 5, 1, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(9, 5, 6, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(10, 6, 2, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(11, 7, 3, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(12, 8, 4, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(13, 9, 1, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(14, 10, 5, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(15, 11, 6, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(16, 12, 2, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(17, 13, 3, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(18, 14, 4, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(19, 15, 5, '2024-11-05 11:38:47', '2024-11-05 11:38:47'),
(20, 16, 6, '2024-11-05 11:38:47', '2024-11-05 11:38:47');

-- --------------------------------------------------------

--
-- Structure de la table `accord_partenaires`
--

CREATE TABLE `accord_partenaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `partenaire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_partenaires`
--

INSERT INTO `accord_partenaires` (`id`, `accord_id`, `partenaire_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(2, 2, 2, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(3, 3, 3, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(4, 4, 4, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(5, 5, 5, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(6, 6, 6, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(7, 7, 7, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(8, 8, 8, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(9, 9, 9, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(10, 10, 10, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(11, 11, 11, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(12, 12, 12, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(13, 13, 13, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(14, 14, 14, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(15, 15, 15, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(16, 16, 16, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(17, 17, 17, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(18, 18, 18, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(19, 19, 19, '2024-11-06 16:55:57', '2024-11-06 16:55:57'),
(20, 20, 20, '2024-11-06 16:55:57', '2024-11-06 16:55:57');

-- --------------------------------------------------------

--
-- Structure de la table `accord_point_focals`
--

CREATE TABLE `accord_point_focals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `point_focal_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_point_focals`
--

INSERT INTO `accord_point_focals` (`id`, `accord_id`, `point_focal_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(2, 1, 2, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(3, 2, 1, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(4, 2, 3, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(5, 3, 2, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(6, 4, 4, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(7, 4, 5, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(8, 5, 1, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(9, 5, 3, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(10, 6, 2, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(11, 7, 3, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(12, 8, 4, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(13, 9, 1, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(14, 10, 5, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(15, 11, 6, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(16, 12, 2, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(17, 13, 3, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(18, 14, 4, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(19, 15, 5, '2024-11-05 11:40:52', '2024-11-05 11:40:52'),
(20, 16, 6, '2024-11-05 11:40:52', '2024-11-05 11:40:52');

-- --------------------------------------------------------

--
-- Structure de la table `accord_signataires`
--

CREATE TABLE `accord_signataires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `signataire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_signataires`
--

INSERT INTO `accord_signataires` (`id`, `accord_id`, `signataire_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(2, 1, 2, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(3, 2, 1, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(4, 2, 3, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(5, 3, 2, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(6, 3, 4, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(7, 4, 3, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(8, 5, 1, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(9, 5, 5, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(10, 6, 2, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(11, 7, 3, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(12, 8, 4, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(13, 9, 1, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(14, 9, 5, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(15, 10, 2, '2024-11-06 16:51:11', '2024-11-06 16:51:11'),
(16, 10, 3, '2024-11-06 16:51:11', '2024-11-06 16:51:11');

-- --------------------------------------------------------

--
-- Structure de la table `accord_signataireucads`
--

CREATE TABLE `accord_signataireucads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `signataireucad_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_signataireucads`
--

INSERT INTO `accord_signataireucads` (`id`, `accord_id`, `signataireucad_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(2, 1, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(3, 2, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(4, 2, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(5, 3, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(6, 4, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(7, 5, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(8, 5, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(9, 6, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(10, 7, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(11, 8, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(12, 9, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(13, 10, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(14, 11, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(15, 12, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(16, 13, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(17, 14, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(18, 15, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(19, 16, 1, '2024-11-05 11:41:51', '2024-11-05 11:41:51'),
(20, 17, 2, '2024-11-05 11:41:51', '2024-11-05 11:41:51');

-- --------------------------------------------------------

--
-- Structure de la table `accord_structures`
--

CREATE TABLE `accord_structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `accord_id` bigint(20) UNSIGNED NOT NULL,
  `structure_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `accord_structures`
--

INSERT INTO `accord_structures` (`id`, `accord_id`, `structure_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(2, 1, 2, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(3, 2, 1, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(4, 2, 3, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(5, 3, 2, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(6, 4, 4, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(7, 5, 1, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(8, 5, 5, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(9, 6, 2, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(10, 7, 3, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(11, 8, 4, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(12, 9, 5, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(13, 10, 1, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(14, 11, 2, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(15, 12, 3, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(16, 13, 4, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(17, 14, 5, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(18, 15, 1, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(19, 16, 2, '2024-11-05 11:42:38', '2024-11-05 11:42:38'),
(20, 17, 3, '2024-11-05 11:42:38', '2024-11-05 11:42:38');

-- --------------------------------------------------------

--
-- Structure de la table `cible`
--

CREATE TABLE `cible` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cible`
--

INSERT INTO `cible` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Étudiant', '2024-11-05 10:23:52', '2024-11-05 10:23:52'),
(2, 'PER', '2024-11-05 10:23:52', '2024-11-05 10:23:52'),
(3, 'PATS', '2024-11-05 10:23:52', '2024-11-05 10:23:52');

-- --------------------------------------------------------

--
-- Structure de la table `continents`
--

CREATE TABLE `continents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `continents`
--

INSERT INTO `continents` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Afrique', '2024-11-05 10:20:27', '2024-11-05 10:20:27'),
(2, 'Amérique', '2024-11-05 10:20:27', '2024-11-05 10:20:27'),
(3, 'Asie', '2024-11-05 10:20:27', '2024-11-05 10:20:27'),
(4, 'Europe', '2024-11-05 10:20:27', '2024-11-05 10:20:27'),
(5, 'Océanie', '2024-11-05 10:20:27', '2024-11-05 10:20:27');

-- --------------------------------------------------------

--
-- Structure de la table `directions`
--

CREATE TABLE `directions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `sigle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `directions`
--

INSERT INTO `directions` (`id`, `nom`, `sigle`, `created_at`, `updated_at`) VALUES
(1, 'Direction de l\'Informatique et des Systèmes d\'Information', 'DISI', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(2, 'Direction de la Recherche et de l\'Innovation', 'DRI', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(3, 'Direction des Relations Internationales', 'DRI', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(4, 'Direction des Ressources Humaines', 'DRH', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(5, 'Direction des Affaires Financières', 'DAF', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(6, 'Direction de la Communication', 'DCOM', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(7, 'Direction de l\'Évaluation et de la Qualité', 'DEQ', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(8, 'Direction de la Formation et du Développement', 'DFD', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(9, 'Direction de la Coopération Scientifique', 'DCS', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(10, 'Direction de la Planification et des Statistiques', 'DPS', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(11, 'Direction de la Gestion des Projets', 'DGP', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(12, 'Direction de la Logistique et des Approvisionnements', 'DLA', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(13, 'Direction des Systèmes d\'Enseignement', 'DSE', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(14, 'Direction de la Stratégie et de la Prospective', 'DSP', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(15, 'Direction des Relations Publiques', 'DRP', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(16, 'Direction de la Recherche Biomédicale', 'DRB', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(17, 'Direction de l\'Innovation Technologique', 'DIT', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(18, 'Direction des Politiques Académiques', 'DPA', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(19, 'Direction de l\'Appui à la Recherche', 'DAR', '2024-11-05 10:14:08', '2024-11-05 10:14:08'),
(20, 'Direction des Études et des Projets Stratégiques', 'DEPS', '2024-11-05 10:14:08', '2024-11-05 10:14:08');

-- --------------------------------------------------------

--
-- Structure de la table `domaines`
--

CREATE TABLE `domaines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `domaines`
--

INSERT INTO `domaines` (`id`, `libelle`, `created_at`, `updated_at`) VALUES
(1, 'Sciences de l\'ingénieur', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(2, 'Sciences de la santé', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(3, 'Sciences sociales', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(4, 'Sciences économiques', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(5, 'Sciences de l\'éducation', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(6, 'Droit et sciences politiques', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(7, 'Lettres et sciences humaines', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(8, 'Mathématiques et informatique', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(9, 'Sciences de l\'environnement', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(10, 'Sciences agricoles', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(11, 'Architecture et urbanisme', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(12, 'Sciences physiques', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(13, 'Chimie et biotechnologie', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(14, 'Géologie et géophysique', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(15, 'Astronomie et astrophysique', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(16, 'Psychologie', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(17, 'Philosophie et éthique', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(18, 'Histoire et archéologie', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(19, 'Sciences des matériaux', '2024-11-05 10:44:47', '2024-11-05 10:44:47'),
(20, 'Gestion et administration des affaires', '2024-11-05 10:44:47', '2024-11-05 10:44:47');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_11_04_101134_direction', 2),
(11, '2024_11_04_130015_accords', 3),
(15, '2024_11_04_130552_cible', 4),
(16, '2024_11_04_130652_accord_cible', 4),
(19, '2024_11_04_141341_domaines', 5),
(20, '2024_11_04_141432_accord_domaines', 5),
(21, '2024_11_04_143816_partenaires', 6),
(22, '2024_11_04_144000_point_focals', 7),
(23, '2024_11_04_144134_accord_point_focals', 8),
(24, '2024_11_04_144935_signataires', 9),
(25, '2024_11_04_150326_signataireucads', 10),
(26, '2024_11_04_150457_accord_signataireucads', 11),
(27, '2024_11_04_150702_structures', 12),
(28, '2024_11_04_151036_accord_structures', 13),
(29, '2024_11_04_151502_continents', 14),
(30, '2024_11_04_151742_pays', 15),
(39, '2024_11_04_152203_villes', 16),
(40, '2024_11_06_103433_accord_signataires', 16),
(41, '2024_11_06_164947_accord_partenaires', 17),
(43, '2024_11_15_112156_ajout_colonne', 18);

-- --------------------------------------------------------

--
-- Structure de la table `partenaires`
--

CREATE TABLE `partenaires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `continent` varchar(255) NOT NULL,
  `url_site` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenaires`
--

INSERT INTO `partenaires` (`id`, `nom`, `adresse`, `pays`, `ville`, `continent`, `url_site`, `created_at`, `updated_at`) VALUES
(1, 'Université Islamique de Médine', '123 Rue du Savoir', 'Arabie Saoudite', 'Médine', 'Asie', 'https://www.iu.edu.sa', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(2, 'Beijing Foreign Studies University', '45 Scholar Ave', 'Chine', 'Beijing', 'Asie', 'https://www.bfsu.edu.cn', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(3, 'Université de Paris', '5 Boulevard Saint-Germain', 'France', 'Paris', 'Europe', 'https://www.u-paris.fr', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(4, 'University of Cape Town', '10 University Ave', 'Afrique du Sud', 'Cape Town', 'Afrique', 'https://www.uct.ac.za', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(5, 'Harvard University', '1350 Massachusetts Ave', 'États-Unis', 'Cambridge', 'Amérique', 'https://www.harvard.edu', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(6, 'Universidad Nacional Autónoma de México', 'Av. Universidad 3000', 'Mexique', 'Mexico', 'Amérique', 'https://www.unam.mx', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(7, 'Université Cheikh Anta Diop', 'Av. Cheikh Anta Diop', 'Sénégal', 'Dakar', 'Afrique', 'https://www.ucad.sn', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(8, 'Australian National University', '154 Canberra St', 'Australie', 'Canberra', 'Océanie', 'https://www.anu.edu.au', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(9, 'Université de Tokyo', '7-3-1 Hongo', 'Japon', 'Tokyo', 'Asie', 'https://www.u-tokyo.ac.jp', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(10, 'Université de Genève', '24 Rue du Rhône', 'Suisse', 'Genève', 'Europe', 'https://www.unige.ch', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(11, 'University of Nairobi', 'University Way', 'Kenya', 'Nairobi', 'Afrique', 'https://www.uonbi.ac.ke', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(12, 'University of Oxford', 'Wellington Square', 'Royaume-Uni', 'Oxford', 'Europe', 'https://www.ox.ac.uk', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(13, 'Pontifícia Universidade Católica do Rio de Janeiro', 'Rua Marquês de São Vicente', 'Brésil', 'Rio de Janeiro', 'Amérique', 'https://www.puc-rio.br', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(14, 'Université Mohammed V', 'Avenue des Nations Unies', 'Maroc', 'Rabat', 'Afrique', 'https://www.um5.ac.ma', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(15, 'Seoul National University', '1 Gwanak-ro', 'Corée du Sud', 'Séoul', 'Asie', 'https://www.snu.ac.kr', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(16, 'Université de Montréal', '2900 Edouard Montpetit', 'Canada', 'Montréal', 'Amérique', 'https://www.umontreal.ca', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(17, 'National University of Singapore', '21 Lower Kent Ridge Rd', 'Singapour', 'Singapour', 'Asie', 'https://www.nus.edu.sg', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(18, 'Université de Rome La Sapienza', 'Piazzale Aldo Moro', 'Italie', 'Rome', 'Europe', 'https://www.uniroma1.it', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(19, 'University of the South Pacific', 'Laucala Campus', 'Fidji', 'Suva', 'Océanie', 'https://www.usp.ac.fj', '2024-11-05 10:48:01', '2024-11-05 10:48:01'),
(20, 'Université Libre de Bruxelles', 'Avenue Franklin Roosevelt', 'Belgique', 'Bruxelles', 'Europe', 'https://www.ulb.be', '2024-11-05 10:48:01', '2024-11-05 10:48:01');

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `continent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `nom`, `continent_id`, `created_at`, `updated_at`) VALUES
(1, 'Arabie Saoudite', 3, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(2, 'Chine', 3, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(3, 'France', 4, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(4, 'Afrique du Sud', 1, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(5, 'États-Unis', 2, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(6, 'Mexique', 2, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(7, 'Sénégal', 1, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(8, 'Australie', 5, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(9, 'Japon', 3, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(10, 'Suisse', 4, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(11, 'Kenya', 1, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(12, 'Royaume-Uni', 4, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(13, 'Brésil', 2, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(14, 'Maroc', 1, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(15, 'Corée du Sud', 3, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(16, 'Canada', 2, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(17, 'Singapour', 3, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(18, 'Italie', 4, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(19, 'Fidji', 5, '2024-11-05 11:00:44', '2024-11-05 11:00:44'),
(20, 'Belgique', 4, '2024-11-05 11:00:44', '2024-11-05 11:00:44');

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `point_focals`
--

CREATE TABLE `point_focals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `partenaire_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `point_focals`
--

INSERT INTO `point_focals` (`id`, `nom`, `prenom`, `email`, `fonction`, `tel`, `partenaire_id`, `created_at`, `updated_at`) VALUES
(1, 'Diallo', 'Amadou', 'amadou.diallo@iu.edu.sa', 'Directeur des Relations Internationales', '+966123456789', 1, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(2, 'Zhang', 'Wei', 'wei.zhang@bfsu.edu.cn', 'Responsable des Échanges Académiques', '+8613912345678', 2, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(3, 'Dupont', 'Marie', 'marie.dupont@u-paris.fr', 'Chef de Département de Coopération', '+33123456789', 3, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(4, 'Smith', 'John', 'john.smith@uct.ac.za', 'Coordinateur des Programmes Internationaux', '+27123456789', 4, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(5, 'Johnson', 'Emily', 'emily.johnson@harvard.edu', 'Vice-Provost pour les Relations Internationales', '+16171234567', 5, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(6, 'Ramirez', 'Carlos', 'carlos.ramirez@unam.mx', 'Directeur des Échanges Académiques', '+521234567890', 6, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(7, 'Diop', 'Fatou', 'fatou.diop@ucad.sn', 'Responsable de la Coopération Internationale', '+221123456789', 7, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(8, 'Taylor', 'Olivia', 'olivia.taylor@anu.edu.au', 'Chef du Bureau des Relations Internationales', '+61234567890', 8, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(9, 'Sato', 'Kenji', 'kenji.sato@u-tokyo.ac.jp', 'Coordinateur des Partenariats', '+81312345678', 9, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(10, 'Dubois', 'Jean', 'jean.dubois@unige.ch', 'Directeur des Relations Extérieures', '+41223456789', 10, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(11, 'Mwangi', 'Alice', 'alice.mwangi@uonbi.ac.ke', 'Chef de la Coopération', '+254123456789', 11, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(12, 'Wilson', 'George', 'george.wilson@ox.ac.uk', 'Directeur des Partenariats', '+441234567890', 12, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(13, 'Silva', 'Ana', 'ana.silva@puc-rio.br', 'Directrice des Relations Internationales', '+552123456789', 13, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(14, 'El Fassi', 'Mohamed', 'mohamed.elfassi@um5.ac.ma', 'Coordinateur des Programmes', '+212123456789', 14, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(15, 'Kim', 'Min-Ji', 'minji.kim@snu.ac.kr', 'Directrice des Échanges Internationaux', '+821012345678', 15, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(16, 'Tremblay', 'Louis', 'louis.tremblay@umontreal.ca', 'Responsable des Relations Globales', '+15141234567', 16, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(17, 'Tan', 'Li Wei', 'liwei.tan@nus.edu.sg', 'Directeur des Programmes d\'Échange', '+6561234567', 17, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(18, 'Rossi', 'Luca', 'luca.rossi@uniroma1.it', 'Chef des Relations Internationales', '+390612345678', 18, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(19, 'Tagicakibau', 'Mere', 'mere.tagicakibau@usp.ac.fj', 'Coordinateur des Coopérations', '+6791234567', 19, '2024-11-05 11:06:10', '2024-11-05 11:06:10'),
(20, 'Verhaegen', 'Sophie', 'sophie.verhaegen@ulb.be', 'Directrice des Partenariats Internationaux', '+32123456789', 20, '2024-11-05 11:06:10', '2024-11-05 11:06:10');

-- --------------------------------------------------------

--
-- Structure de la table `signataires`
--

CREATE TABLE `signataires` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `signataires`
--

INSERT INTO `signataires` (`id`, `nom`, `prenom`, `email`, `fonction`, `telephone`, `created_at`, `updated_at`) VALUES
(1, 'Dupont', 'Jean', 'jean.dupont@example.com', 'Directeur', '+221 33 123 45 67', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(2, 'Martin', 'Alice', 'alice.martin@example.com', 'Responsable', '+221 33 234 56 78', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(3, 'Durand', 'Paul', 'paul.durand@example.com', 'Coordinateur', '+221 33 345 67 89', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(4, 'Leroy', 'Sophie', 'sophie.leroy@example.com', 'Gestionnaire', '+221 33 456 78 90', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(5, 'Moreau', 'Luc', 'luc.moreau@example.com', 'Assistant', '+221 33 567 89 01', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(6, 'Garnier', 'Isabelle', 'isabelle.garnier@example.com', 'Chef de projet', '+221 33 678 90 12', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(7, 'Fournier', 'Marc', 'marc.fournier@example.com', 'Analyste', '+221 33 789 01 23', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(8, 'Chevalier', 'Céline', 'celine.chevalier@example.com', 'Consultant', '+221 33 890 12 34', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(9, 'Lemoine', 'Romain', 'romain.lemoine@example.com', 'Spécialiste', '+221 33 901 23 45', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(10, 'Roussel', 'Emilie', 'emilie.roussel@example.com', 'Responsable de secteur', '+221 33 012 34 56', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(11, 'Bertrand', 'Thomas', 'thomas.bertrand@example.com', 'Technicien', '+221 33 123 45 67', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(12, 'Barbier', 'Laura', 'laura.barbier@example.com', 'Chargée de communication', '+221 33 234 56 78', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(13, 'Lemoine', 'François', 'francois.lemoine@example.com', 'Formateur', '+221 33 345 67 89', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(14, 'Benoit', 'Julien', 'julien.benoit@example.com', 'Agent administratif', '+221 33 456 78 90', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(15, 'Jacquet', 'Nathalie', 'nathalie.jacquet@example.com', 'Responsable RH', '+221 33 567 89 01', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(16, 'Guillaume', 'Patrice', 'patrice.guillaume@example.com', 'Directeur adjoint', '+221 33 678 90 12', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(17, 'Picard', 'Catherine', 'catherine.picard@example.com', 'Directeur de programme', '+221 33 789 01 23', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(18, 'Leroux', 'Eric', 'eric.leroux@example.com', 'Responsable qualité', '+221 33 890 12 34', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(19, 'Dumas', 'Vanessa', 'vanessa.dumas@example.com', 'Auditeur', '+221 33 901 23 45', '2024-11-05 11:26:14', '2024-11-05 11:26:14'),
(20, 'Bourgeois', 'Michel', 'michel.bourgeois@example.com', 'Chef de service', '+221 33 012 34 56', '2024-11-05 11:26:14', '2024-11-05 11:26:14');

-- --------------------------------------------------------

--
-- Structure de la table `signataireucads`
--

CREATE TABLE `signataireucads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom_complet` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `fonction` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `signataireucads`
--

INSERT INTO `signataireucads` (`id`, `nom`, `prenom`, `nom_complet`, `email`, `fonction`, `tel`, `created_at`, `updated_at`) VALUES
(1, 'NIANG', 'Aminata', 'Aminata Niang', 'aminata.niang@ucad.edu.sn', 'Recteur par interim', '+221 78 654 32 12', '2024-11-05 11:34:28', '2024-11-05 11:34:28'),
(2, 'GUEYE', 'Mor Talla', 'Mor Talla GUEYE', 'mortalla.gueye@ucad.edu.sn', 'Adjoint Recteur', '+221 78 178 44 36', '2024-11-05 11:34:28', '2024-11-05 11:34:28');

-- --------------------------------------------------------

--
-- Structure de la table `structures`
--

CREATE TABLE `structures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `sigle` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `structures`
--

INSERT INTO `structures` (`id`, `nom`, `sigle`, `created_at`, `updated_at`) VALUES
(1, 'Faculté des Lettres et Sciences Humaines', 'F.L.S.H.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(2, 'Ecole Nationale Supérieure des Mines et de la Géologie', 'E.N.S.M.G.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(3, 'Faculté de Médecine, de Pharmacie et d\'Odontologie', 'F.M.P.O.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(4, 'Faculté des Sciences et Techniques', 'F.S.T.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(5, 'Institut de Prévoyance Médico-Social', 'I.P.M.S.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(6, 'Institut Conficius', 'CONFICIUS', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(7, 'Institut Supérieure de Formation en Distance', 'I.S.F.A.D.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(8, 'Institut Supérieur Universitaire de Tourisme', 'I.S.U.T.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(9, 'Faculté des Sciences Juridiques et Politiques', 'F.S.J.P.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(10, 'Ecole Nationale de Developpement Saniataire et Social', 'E.N.D.S.S.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(11, 'Institut de Pédiatrie sociale', 'I.P.S.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(12, 'École Inter-Etats des Sciences et Médecine Vétérinaire', 'E.I.E.S.M.V.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(13, 'Faculté des Sciences Economiques et de Gestion', 'F.A.S.E.G.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(14, 'Centre d\'Etudes des Sciences et Techniques de l\'Information', 'C.E.S.T.I.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(15, 'Faculté des Sciences et Technologies de l\'Education et de la Formation', 'F.A.S.T.E.F.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(16, 'Ecole Supérieure Polytechnique', 'E.S.P.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(17, 'Institut National Supérieur de l\'Education Populaire et du Sport', 'I.N.S.E.P.S.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(18, 'Ecole des Bibliothécaires, Archivistes et Documentalistes', 'E.B.A.D.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(19, 'Institut de Formation et de Recherche en Population Développement et S. R.', 'I.F.R.P.D.S.R.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(20, 'Ecole Normale Supérieure d\'Enseignement Technique et Professionnel', 'E.N.S.E.T.P.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(21, 'Institut Universitaire de Pêche et d’Aquaculture', 'I.U.P.A.', '2024-11-05 11:22:54', '2024-11-05 11:22:54'),
(22, 'Ecole Supérieure d\'Economie Appliquée', 'E.S.E.A.', '2024-11-05 11:22:54', '2024-11-05 11:22:54');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL,
  `pays_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `pays_id`, `created_at`, `updated_at`) VALUES
(1, 'Médine', 1, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(2, 'Beijing', 2, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(3, 'Paris', 3, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(4, 'Cape Town', 4, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(5, 'Cambridge', 5, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(6, 'Mexico', 6, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(7, 'Dakar', 7, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(8, 'Canberra', 8, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(9, 'Tokyo', 9, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(10, 'Genève', 10, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(11, 'Nairobi', 11, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(12, 'Oxford', 12, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(13, 'Rio de Janeiro', 13, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(14, 'Rabat', 14, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(15, 'Séoul', 15, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(16, 'Montréal', 16, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(17, 'Singapour', 17, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(18, 'Rome', 18, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(19, 'Suva', 19, '2024-11-06 16:50:28', '2024-11-06 16:50:28'),
(20, 'Bruxelles', 20, '2024-11-06 16:50:28', '2024-11-06 16:50:28');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accords`
--
ALTER TABLE `accords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accords_direction_id_foreign` (`direction_id`);

--
-- Index pour la table `accord_cible`
--
ALTER TABLE `accord_cible`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_cible_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_cible_cible_id_foreign` (`cible_id`);

--
-- Index pour la table `accord_domaines`
--
ALTER TABLE `accord_domaines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_domaines_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_domaines_domaine_id_foreign` (`domaine_id`);

--
-- Index pour la table `accord_partenaires`
--
ALTER TABLE `accord_partenaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_partenaires_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_partenaires_partenaire_id_foreign` (`partenaire_id`);

--
-- Index pour la table `accord_point_focals`
--
ALTER TABLE `accord_point_focals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_point_focals_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_point_focals_point_focal_id_foreign` (`point_focal_id`);

--
-- Index pour la table `accord_signataires`
--
ALTER TABLE `accord_signataires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_signataires_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_signataires_signataire_id_foreign` (`signataire_id`);

--
-- Index pour la table `accord_signataireucads`
--
ALTER TABLE `accord_signataireucads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_signataireucads_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_signataireucads_signataireucad_id_foreign` (`signataireucad_id`);

--
-- Index pour la table `accord_structures`
--
ALTER TABLE `accord_structures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accord_structures_accord_id_foreign` (`accord_id`),
  ADD KEY `accord_structures_structure_id_foreign` (`structure_id`);

--
-- Index pour la table `cible`
--
ALTER TABLE `cible`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `domaines`
--
ALTER TABLE `domaines`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaires`
--
ALTER TABLE `partenaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pays_continent_id_foreign` (`continent_id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `point_focals`
--
ALTER TABLE `point_focals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `point_focals_email_unique` (`email`),
  ADD KEY `point_focals_partenaire_id_foreign` (`partenaire_id`);

--
-- Index pour la table `signataires`
--
ALTER TABLE `signataires`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `signataires_email_unique` (`email`);

--
-- Index pour la table `signataireucads`
--
ALTER TABLE `signataireucads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `signataireucads_email_unique` (`email`);

--
-- Index pour la table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villes_pays_id_foreign` (`pays_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accords`
--
ALTER TABLE `accords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `accord_cible`
--
ALTER TABLE `accord_cible`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `accord_domaines`
--
ALTER TABLE `accord_domaines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `accord_partenaires`
--
ALTER TABLE `accord_partenaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `accord_point_focals`
--
ALTER TABLE `accord_point_focals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `accord_signataires`
--
ALTER TABLE `accord_signataires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `accord_signataireucads`
--
ALTER TABLE `accord_signataireucads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `accord_structures`
--
ALTER TABLE `accord_structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `cible`
--
ALTER TABLE `cible`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `directions`
--
ALTER TABLE `directions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `domaines`
--
ALTER TABLE `domaines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `partenaires`
--
ALTER TABLE `partenaires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `point_focals`
--
ALTER TABLE `point_focals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `signataires`
--
ALTER TABLE `signataires`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `signataireucads`
--
ALTER TABLE `signataireucads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `structures`
--
ALTER TABLE `structures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accords`
--
ALTER TABLE `accords`
  ADD CONSTRAINT `accords_direction_id_foreign` FOREIGN KEY (`direction_id`) REFERENCES `directions` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_cible`
--
ALTER TABLE `accord_cible`
  ADD CONSTRAINT `accord_cible_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_cible_cible_id_foreign` FOREIGN KEY (`cible_id`) REFERENCES `cible` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_domaines`
--
ALTER TABLE `accord_domaines`
  ADD CONSTRAINT `accord_domaines_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_domaines_domaine_id_foreign` FOREIGN KEY (`domaine_id`) REFERENCES `domaines` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_partenaires`
--
ALTER TABLE `accord_partenaires`
  ADD CONSTRAINT `accord_partenaires_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_partenaires_partenaire_id_foreign` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaires` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_point_focals`
--
ALTER TABLE `accord_point_focals`
  ADD CONSTRAINT `accord_point_focals_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_point_focals_point_focal_id_foreign` FOREIGN KEY (`point_focal_id`) REFERENCES `point_focals` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_signataires`
--
ALTER TABLE `accord_signataires`
  ADD CONSTRAINT `accord_signataires_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_signataires_signataire_id_foreign` FOREIGN KEY (`signataire_id`) REFERENCES `signataires` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_signataireucads`
--
ALTER TABLE `accord_signataireucads`
  ADD CONSTRAINT `accord_signataireucads_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_signataireucads_signataireucad_id_foreign` FOREIGN KEY (`signataireucad_id`) REFERENCES `signataireucads` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `accord_structures`
--
ALTER TABLE `accord_structures`
  ADD CONSTRAINT `accord_structures_accord_id_foreign` FOREIGN KEY (`accord_id`) REFERENCES `accords` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accord_structures_structure_id_foreign` FOREIGN KEY (`structure_id`) REFERENCES `structures` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `pays_continent_id_foreign` FOREIGN KEY (`continent_id`) REFERENCES `continents` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `point_focals`
--
ALTER TABLE `point_focals`
  ADD CONSTRAINT `point_focals_partenaire_id_foreign` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaires` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `villes`
--
ALTER TABLE `villes`
  ADD CONSTRAINT `villes_pays_id_foreign` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
